uint64_t sub_10014E208(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10014E350(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  sub_1001005C4(88 * v2, a2);
  v15 = (88 * v2 + 88);
  v7 = a1[1];
  v8 = 88 * v2 + *a1 - v7;
  sub_10014E3E4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10014E3AC(&v13);
  return v12;
}

void sub_10014E33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10014E3AC(va);
  _Unwind_Resume(a1);
}

void sub_10014E350(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10014E3AC(uint64_t a1)
{
  sub_10014E4F0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10014E3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v10 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 32) = v8;
      v6 += 88;
      a4 += 88;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 88;
    }
  }

  return sub_10014E4B8(v12);
}

uint64_t sub_10014E4B8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038F860(a1);
  }

  return a1;
}

void sub_10014E4F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 88;
      *(a1 + 16) = v2 - 88;
      if (*(v2 - 57) < 0)
      {
        operator delete(*(v2 - 80));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_10014E54C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 88)
  {
    if (*(i - 57) < 0)
    {
      operator delete(*(i - 80));
    }
  }

  a1[1] = v2;
}

uint64_t sub_10014E5B0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_10014E5FC(&v6, v3);
  }

  return v2;
}

void sub_10014E5FC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10014E660(uint64_t a1, void *a2)
{
  v2 = *sub_100197070(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10014E704(uint64_t a1, void **a2)
{
  result = *sub_1000F2B3C(a1, &v3, a2);
  if (!result)
  {
    sub_10014E784();
  }

  return result;
}

void sub_10014E820(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10014E83C(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  v78 = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v4 + 40);
      if (v7 >= 0 && ((v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v7 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        if (v6 >= v78)
        {
          v14 = __src[0];
          v15 = v6 - __src[0];
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v6 - __src[0]) >> 5);
          v17 = v16 + 1;
          if (v16 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v78 - __src[0]) >> 5) > v17)
          {
            v17 = 0x5555555555555556 * ((v78 - __src[0]) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v78 - __src[0]) >> 5) >= 0x155555555555555)
          {
            v18 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_1001A1980(__src, v18);
          }

          v19 = (32 * ((v6 - __src[0]) >> 5));
          v20 = *(v4 + 16);
          *v19 = *v4;
          v19[1] = v20;
          v21 = *(v4 + 32);
          v22 = *(v4 + 48);
          v23 = *(v4 + 80);
          v19[4] = *(v4 + 64);
          v19[5] = v23;
          v19[2] = v21;
          v19[3] = v22;
          v6 = (96 * v16 + 96);
          v24 = (96 * v16 - v15);
          memcpy(v19 - v15, v14, v15);
          v25 = __src[0];
          __src[0] = v24;
          __src[1] = v6;
          v78 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          v10 = *(v4 + 16);
          *v6 = *v4;
          *(v6 + 1) = v10;
          v11 = *(v4 + 32);
          v12 = *(v4 + 48);
          v13 = *(v4 + 80);
          *(v6 + 4) = *(v4 + 64);
          *(v6 + 5) = v13;
          *(v6 + 2) = v11;
          *(v6 + 3) = v12;
          v6 += 96;
        }

        __src[1] = v6;
      }

      v4 += 96;
    }

    while (v4 != v5);
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F29C8();
  }

  v26 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v27 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
    *buf = 134218240;
    v84 = v27;
    v85 = 2048;
    v86 = 0xAAAAAAAAAAAAAAABLL * ((__src[1] - __src[0]) >> 5);
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, num input aps, %lu, num valid unc aps, %lu", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F29F0(buf);
    v71 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
    v79 = 134218240;
    v80 = v71;
    v81 = 2048;
    v82 = 0xAAAAAAAAAAAAAAABLL * ((__src[1] - __src[0]) >> 5);
    v72 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::vector<CLWifiAPLocation> CLLocationCalculator::filterWifiApsBasedOnVerticalUncCriteria(const std::vector<CLWifiAPLocation> &, BOOL &)", "%s\n", v72);
    if (v72 != buf)
    {
      free(v72);
    }
  }

  v28 = __src[0];
  v29 = __src[1];
  if (__src[0] == __src[1])
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v70 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, validUncApCollection is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      LOWORD(v79) = 0;
      v73 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static std::vector<CLWifiAPLocation> CLLocationCalculator::filterWifiApsBasedOnVerticalUncCriteria(const std::vector<CLWifiAPLocation> &, BOOL &)", "%s\n", v73);
      if (v73 != buf)
      {
        free(v73);
      }
    }

    *a2 = 1;
    *a3 = *__src;
    *(a3 + 16) = v78;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    do
    {
      v30 = v28[5];
      if (v30 < *(sub_1000F7F38() + 34))
      {
        v31 = *(a3 + 8);
        v32 = *(a3 + 16);
        if (v31 >= v32)
        {
          v38 = *a3;
          v39 = v31 - *a3;
          v40 = 0xAAAAAAAAAAAAAAABLL * (v39 >> 5) + 1;
          if (v40 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v41 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v38) >> 5);
          if (2 * v41 > v40)
          {
            v40 = 2 * v41;
          }

          if (v41 >= 0x155555555555555)
          {
            v40 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v40)
          {
            sub_1001A1980(a3, v40);
          }

          v42 = (32 * (v39 >> 5));
          v43 = *(v28 + 1);
          *v42 = *v28;
          v42[1] = v43;
          v44 = *(v28 + 2);
          v45 = *(v28 + 3);
          v46 = *(v28 + 5);
          v42[4] = *(v28 + 4);
          v42[5] = v46;
          v42[2] = v44;
          v42[3] = v45;
          v37 = v42 + 6;
          v47 = v42 - v39;
          memcpy(v42 - v39, v38, v39);
          v48 = *a3;
          *a3 = v47;
          *(a3 + 8) = v37;
          *(a3 + 16) = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          v33 = *(v28 + 1);
          *v31 = *v28;
          v31[1] = v33;
          v34 = *(v28 + 2);
          v35 = *(v28 + 3);
          v36 = *(v28 + 5);
          v31[4] = *(v28 + 4);
          v31[5] = v36;
          v31[2] = v34;
          v31[3] = v35;
          v37 = v31 + 6;
        }

        *(a3 + 8) = v37;
      }

      v28 += 12;
    }

    while (v28 != v29);
    if (*a3 == *(a3 + 8))
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v49 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, all aps were non-slam, add them back to yield a fix", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        LOWORD(v79) = 0;
        v74 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static std::vector<CLWifiAPLocation> CLLocationCalculator::filterWifiApsBasedOnVerticalUncCriteria(const std::vector<CLWifiAPLocation> &, BOOL &)", "%s\n", v74);
        if (v74 != buf)
        {
          free(v74);
        }
      }

      v50 = __src[0];
      v51 = __src[1];
      if (__src[0] != __src[1])
      {
        v52 = *(a3 + 8);
        do
        {
          v53 = *(a3 + 16);
          if (v52 >= v53)
          {
            v58 = *a3;
            v59 = v52 - *a3;
            v60 = 0xAAAAAAAAAAAAAAABLL * (v59 >> 5) + 1;
            if (v60 > 0x2AAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            v61 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v58) >> 5);
            if (2 * v61 > v60)
            {
              v60 = 2 * v61;
            }

            if (v61 >= 0x155555555555555)
            {
              v62 = 0x2AAAAAAAAAAAAAALL;
            }

            else
            {
              v62 = v60;
            }

            if (v62)
            {
              sub_1001A1980(a3, v62);
            }

            v63 = (32 * (v59 >> 5));
            v64 = v50[1];
            *v63 = *v50;
            v63[1] = v64;
            v65 = v50[2];
            v66 = v50[3];
            v67 = v50[5];
            v63[4] = v50[4];
            v63[5] = v67;
            v63[2] = v65;
            v63[3] = v66;
            v52 = v63 + 6;
            v68 = v63 - v59;
            memcpy(v63 - v59, v58, v59);
            v69 = *a3;
            *a3 = v68;
            *(a3 + 8) = v52;
            *(a3 + 16) = 0;
            if (v69)
            {
              operator delete(v69);
            }
          }

          else
          {
            v54 = v50[1];
            *v52 = *v50;
            v52[1] = v54;
            v55 = v50[2];
            v56 = v50[3];
            v57 = v50[5];
            v52[4] = v50[4];
            v52[5] = v57;
            v52[2] = v55;
            v52[3] = v56;
            v52 += 6;
          }

          *(a3 + 8) = v52;
          v50 += 6;
        }

        while (v50 != v51);
      }

      *a2 = 1;
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }
  }
}

void sub_10014F004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10014F0F4(uint64_t a1, uint64_t a2)
{
  sub_100021AFC(v13);
  v12 = 0;
  v4 = (*(*a1 + 128))(a1, &v12, v13);
  if (v4)
  {
    memcpy(a2, v14, 0x201uLL);
    v5 = v15;
    v6 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a2 + 520) = v5;
    v7 = *(a2 + 528);
    *(a2 + 528) = v6;
    if (v7)
    {
      sub_100008080(v7);
    }

    v8 = v22[0];
    *(a2 + 600) = v21;
    *(a2 + 616) = v8;
    *(a2 + 625) = *(v22 + 9);
    v9 = v18;
    *(a2 + 536) = v17;
    *(a2 + 552) = v9;
    v10 = v20;
    *(a2 + 568) = v19;
    *(a2 + 584) = v10;
  }

  if (v26)
  {
    sub_100008080(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v23)
  {
    sub_100008080(v23);
  }

  if (v16)
  {
    sub_100008080(v16);
  }

  return v4;
}

void sub_10014F220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

__n128 sub_10014F24C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (0x8E38E38E38E38E39 * ((*(a1 + 48) - v2) >> 4) <= a2)
  {
    sub_10046F324();
  }

  v5 = v2 + 144 * a2;
  if (sub_100028030(v5) && *(v5 + 136))
  {
    --*(a1 + 68);
  }

  v6 = *(a1 + 40) + 144 * a2;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v6 + 8) = _Q0;
  *(v6 + 24) = 0uLL;
  *(v6 + 40) = 0xBFF0000000000000;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0xBFF0000000000000;
  *(v6 + 64) = 0;
  *(v6 + 72) = _Q0;
  *(v6 + 88) = _Q0;
  *(v6 + 104) = 0xBFF0000000000000;
  result = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0xBFF0000000000000;
  *(v6 + 136) = 0x700000000;
  return result;
}

uint64_t sub_10014F328(char *a1, int a2, unsigned int *a3, __int128 *a4)
{
  v15 = a2;
  v7 = qword_1026372D0;
  if (qword_1026372D0 != qword_1026372D8)
  {
    while (*v7 != *a3)
    {
      if (++v7 == qword_1026372D8)
      {
        goto LABEL_10;
      }
    }
  }

  if (v7 == qword_1026372D8)
  {
LABEL_10:
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v13 = sub_100048D98(*a3);
      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "#cclp registering for un-supported notification: %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019505E4(a3);
    }

    return 0;
  }

  else
  {
    v8 = sub_100044404(a1, a2, a3, a4);
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = &v15;
      v10 = [sub_1000488C8((a1 + 80) &v15)[8]];
      v11 = sub_100048D98(*a3);
      *buf = 68289794;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v17 = 2050;
      v18 = a2;
      v19 = 2114;
      v20 = v10;
      v21 = 2082;
      v22 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp registration, client-id:%{public}ld, client:%{public, location:escape_only}@, notification:%{public, location:escape_only}s}", buf, 0x30u);
    }
  }

  return v8;
}

void sub_10014F5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014F5D8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 == 9)
  {

    sub_10014F8B8();
  }

  else if (!*a2 && (*(a3 + 792) & 0xFFFFFFFE) == 2)
  {
    v4 = *(a3 + 132);
    if (v4 == 2)
    {
      sub_10014F8B8();
    }

    else if (v4 == 1)
    {
      *(a1 + 24) = *(a3 + 504);
      sub_1001FC760(a1);
    }

    if (!off_1025D53B8)
    {
      operator new();
    }

    if ((*(off_1025D53B8 + 1) & 1) != 0 && *off_1025D53B8 == 1)
    {
      ++*(off_1025D53B8 + 2);
    }

    else
    {
      ++*(off_1025D53B8 + 1);
    }
  }
}

void sub_10014F6CC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(a1 + 4336);
  if (v3)
  {
    sub_10014F5D8(v3, a2, a3);
  }
}

void sub_10014F6DC(__int32 a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onAccessoryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onAccessoryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100150144(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10014F8B8()
{
  if (!off_1025D53B8)
  {
    operator new();
  }

  if ((*(off_1025D53B8 + 1) & 1) != 0 && *off_1025D53B8 == 1)
  {
    *(off_1025D53B8 + 1) = 0;
  }
}

void sub_10014F93C(uint64_t a1, char a2, double a3)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    sub_1001509AC(v5, a2, a3);
  }

  sub_10002452C(a1, a3);

  sub_10002492C(a1);
}

void sub_10014F998(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9)
{
  v12 = a5 & ~a3;
  v13 = a8 & a4 & a9 ^ 1;
  v14 = v13 | a2;
  if (v12 == 1 && v14)
  {
    v15 = *(a1 + 24);
    if (v15)
    {
      sub_10172C420(v15);
      v16 = *(a1 + 24);
      v17 = v16[2];
      sub_101130168(v16);
    }

    else
    {
      v17 = 0.0;
    }

    v21 = *(a1 + 8);
    if (!v21)
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        v22 = (v23 + 1952);
        goto LABEL_14;
      }

      v21 = *(a1 + 16);
      if (!v21)
      {
        goto LABEL_15;
      }
    }

    v22 = (v21 + 16);
LABEL_14:
    *v22 = v17;
LABEL_15:
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE80();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v25 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v25 = *v25;
      }

      *buf = 136315394;
      v59 = v25;
      v60 = 2050;
      v61 = v17;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,switching from Rhythmic to normal GNSS odometer,greatestDistance,%{public}.2lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B40ABC();
    }

    v18 = 0;
    goto LABEL_60;
  }

  v18 = 0;
  if (((v12 | v13) & 1) == 0 && (a2 & 1) == 0)
  {
    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = sub_1002A4ADC(v19);
      sub_101165740(*(a1 + 8));
    }

    else
    {
      v26 = *(a1 + 32);
      if (v26)
      {
        v20 = sub_101003F74(v26);
        sub_101003DC0(*(a1 + 32));
      }

      else
      {
        v27 = *(a1 + 16);
        if (v27)
        {
          v20 = sub_1002A4ADC(v27);
          sub_100FC0CF4(*(a1 + 16));
        }

        else
        {
          v20 = 0.0;
        }
      }
    }

    v28 = *(a1 + 24);
    if (v28 && ((v28[2] = v20, (v29 = *(v28 + 3)) == 0) ? (v30 = 1) : (v30 = *(v29 + 144) > 0.0), (v31 = *(v28 + 4)) == 0 ? (v32 = 1) : (v32 = *(v31 + 144) > 0.0), (!v30 || !v32) && (v33 = *(a1 + 336), v33 > 0.0) && vabdd_f64(v33, CFAbsoluteTimeGetCurrent()) <= 3.0 && !sub_10002807C(*(a1 + 376), *(a1 + 384)) && sub_100020608(*(a1 + 376), *(a1 + 384)) && sub_10010615C(*(a1 + 392))))
    {
      v34 = *(a1 + 24);
      buf[0] = 0;
      v63[8] = 0;
      sub_10172C320(v34, a1 + 320, buf);
      if (qword_1025D4650 != -1)
      {
        sub_101B3FE94();
      }

      v35 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v36 = (a1 + 624);
        if (*(a1 + 647) < 0)
        {
          v36 = *v36;
        }

        v37 = *(a1 + 336);
        v38 = *(a1 + 376);
        v39 = *(a1 + 384);
        v40 = *(a1 + 392);
        v41 = *(a1 + 496);
        v42 = *(a1 + 504);
        v43 = *(a1 + 472);
        v44 = *(a1 + 480);
        v46 = *(a1 + 416);
        v45 = *(a1 + 424);
        *buf = 136317699;
        v59 = v36;
        v60 = 2050;
        v61 = v37;
        v62 = 2053;
        *v63 = v38;
        *&v63[8] = 2053;
        *v64 = v39;
        *&v64[8] = 2050;
        *v65 = v41;
        *&v65[8] = 2050;
        *v66 = v40;
        *&v66[8] = 2050;
        *v67 = v43;
        *&v67[8] = 2050;
        v68 = v46;
        v69 = 2050;
        v70 = v42;
        v71 = 2050;
        v72 = v44;
        v73 = 2050;
        v74 = v45;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "GPSODOM-MM%s,%{public}.1lf,location sent to RhythmicOdometer for initializing when switching from 1Hz,LL,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.2lf,altitude,%{public}.2lf,speed,%{public}.2lf,hunc,%{public}.2lf,courseUnc,%{public}.2lf,speedUnc,%{public}.2lf,altUnc,%{public}.2lf", buf, 0x70u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101B3FE94();
        }

        v57 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGpsOdometryInterface::handleGNSSOperatingState(const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL)", "%s\n", v57);
        if (v57 != buf)
        {
          free(v57);
        }
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101B3FE94();
    }

    v47 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v48 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v48 = *v48;
      }

      v49 = *(a1 + 336);
      v50 = *(a1 + 376);
      v51 = *(a1 + 384);
      v52 = *(a1 + 392);
      *buf = 136316931;
      v59 = v48;
      v60 = 2050;
      v61 = v20;
      v62 = 1026;
      *v63 = a6;
      *&v63[4] = 1026;
      *&v63[6] = v18;
      *v64 = 2050;
      *&v64[2] = v49;
      *v65 = 2053;
      *&v65[2] = v50;
      *v66 = 2053;
      *&v66[2] = v51;
      *v67 = 2050;
      *&v67[2] = v52;
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,switching from normal to Rhythmic GNSS odometer,greatestDistance,%{public}.2lf,isRhythmicFixQualified,%{public}d,forceUpdateRhythmic,%{public}d,lastLocationTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf", buf, 0x4Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101B3FE94();
      }

      v56 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGpsOdometryInterface::handleGNSSOperatingState(const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL)", "%s\n", v56);
      if (v56 != buf)
      {
        free(v56);
      }
    }
  }

LABEL_60:
  if (v14)
  {
    v53 = 0;
  }

  else
  {
    v53 = a6 & ~a7;
  }

  if ((v18 | v53) == 1)
  {
    v54 = *(a1 + 24);
    if (v54)
    {
      sub_10172C420(v54);
      if (*(a1 + 304))
      {
        sub_100021AFC(buf);
        if (sub_1011304CC(*(a1 + 24)))
        {
          v55 = *(a1 + 304);
          if (!v55)
          {
            sub_1000CF05C();
          }

          (*(*v55 + 48))(v55, buf);
        }

        if (v79)
        {
          sub_100008080(v79);
        }

        if (v78 < 0)
        {
          operator delete(__p);
        }

        if (v76)
        {
          sub_100008080(v76);
        }

        if (v75)
        {
          sub_100008080(v75);
        }
      }
    }
  }
}

void sub_100150118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100150144(uint64_t a1, __int32 a2, int *a3, uint64_t a4)
{
  v47.i32[2] = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(buf);
  sub_10000B324(v7, buf);
  *buf = 18;
  v47.i32[0] = 18;
  v47.i32[1] = sub_10000AD98(buf);
  v8 = sub_10000AE98();
  *buf = 4;
  sub_10001E898(v8, buf, &v47, (a1 + 5220), &v47.i32[2], a3, a4);
  if (*a3 == 21)
  {
    *buf = 21;
    (*(*a1 + 152))(a1, buf, a4, 1, 0xFFFFFFFFLL, 0);
  }

  else if (*a3 == 20)
  {
    LOBYTE(v38) = 0;
    v39[0] = 0xBFF0000000000000;
    v9 = *(a1 + 280);
    if (v9)
    {
      (*(*v9 + 336))(v9, a4 + 856, a4 + 848, &v38, v39);
      if (v38)
      {
        sub_100021AFC(buf);
        v73 = v39[0];
        v74 = *(a4 + 856);
        v47.i32[3] = 20;
        (*(*a1 + 152))(a1, &v47.i8[12], buf, 1, 0xFFFFFFFFLL, 0);

        if (v77)
        {
          sub_100008080(v77);
        }

        if (v76 < 0)
        {
          operator delete(__p);
        }

        if (v72)
        {
          sub_100008080(v72);
        }

        if (v71)
        {
          sub_100008080(v71);
        }
      }
    }

    if (*(a4 + 848) >= 0.0 && sub_100DD3EAC((a1 + 2032), *(a4 + 864)))
    {
      sub_100021AFC(buf);
      v66 = *(a4 + 856);
      v65 = *(a4 + 848);
      v67 = 3;
      v70 = *(a4 + 864);
      v69 = *(a4 + 872);
      v68 = v66;
      sub_100284758(a1, buf);

      if (v77)
      {
        sub_100008080(v77);
      }

      if (v76 < 0)
      {
        operator delete(__p);
      }

      if (v72)
      {
        sub_100008080(v72);
      }

      if (v71)
      {
        sub_100008080(v71);
      }
    }

    sub_1003E0614(a1 + 800);
  }

  else
  {
    v10 = *(a1 + 280);
    if (v10)
    {
      (*(*v10 + 560))(v10, a3, a4);
    }

    sub_100022008(v39, a4);
    *buf = a1 + 336;
    if (*(sub_100109DF4(a1 + 232, (a1 + 336)) + 116) > 0.0)
    {
      v12 = sub_10000B1F8();
      *buf = 0;
      v13 = sub_10001A6B0(v12, buf);
      *buf = a1 + 336;
      v14 = v13 - *(sub_100109DF4(a1 + 232, (a1 + 336)) + 172);
      if (v14 >= 0.0 && v14 < 4.0)
      {
        *buf = a1 + 336;
        v38 = *(sub_100109DF4(a1 + 232, (a1 + 336)) + 100);
        *buf = a1 + 336;
        v37 = *(sub_100109DF4(a1 + 232, (a1 + 336)) + 108);
        *buf = a1 + 336;
        if (*(sub_100109DF4(a1 + 232, (a1 + 336)) + 148) > 0.0)
        {
          *buf = a1 + 336;
          if (*(sub_100109DF4(a1 + 232, (a1 + 336)) + 164) > 0.0)
          {
            *buf = a1 + 336;
            v16 = *(sub_100109DF4(a1 + 232, (a1 + 336)) + 100);
            *buf = a1 + 336;
            v17 = *(sub_100109DF4(a1 + 232, (a1 + 336)) + 108);
            *buf = a1 + 336;
            v18 = *(sub_100109DF4(a1 + 232, (a1 + 336)) + 140);
            *buf = a1 + 336;
            v19 = sub_100109DF4(a1 + 232, (a1 + 336));
            sub_1004E84E8(&v38, &v37, v16, v17, v14, v18, *(v19 + 156));
          }
        }

        v39[60] = v38;
        v39[61] = v37;
        *buf = a1 + 336;
        v40 = *(sub_100109DF4(a1 + 232, (a1 + 336)) + 116);
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v20 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v21 = v37;
          v22 = v38;
          v23 = v40;
          v24 = sub_10000B1F8();
          v25 = sub_100125220(v24);
          *buf = 134546689;
          *&buf[4] = v22;
          v58 = 2053;
          v59 = v21;
          v60 = 2050;
          v61 = v23;
          v62 = 2048;
          v63 = v14;
          v64 = 2050;
          v65 = v25;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "Accessory,propagated on-device GPS,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.1lf,dt,%.3f,propagation_us,%{public}.3f", buf, 0x34u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F8644(buf);
          v31 = v37;
          v32 = v38;
          v33 = v40;
          v34 = sub_10000B1F8();
          v35 = sub_100125220(v34);
          v47.i32[3] = 134546689;
          v48 = v32;
          v49 = 2053;
          v50 = v31;
          v51 = 2050;
          v52 = v33;
          v53 = 2048;
          v54 = v14;
          v55 = 2050;
          v56 = v35;
          v36 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::onAccessoryNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v36);
          if (v36 != buf)
          {
            free(v36);
          }
        }
      }
    }

    v26 = *a3;
    if (!*a3)
    {
      if ((*(a4 + 792) & 0xFFFFFFFE) == 2)
      {
        if (!off_1025D53B8)
        {
          operator new();
        }

        if ((*(off_1025D53B8 + 1) & 1) == 0 || (*off_1025D53B8 & 1) == 0)
        {
          v27 = *(a1 + 280);
          v28 = v27 ? (*(*v27 + 568))(v27) : 0x7FFFFFFF;
          v29 = *(a1 + 312);
          if (v29)
          {
            if (sub_100141988(v29) > v28)
            {
              sub_100DAB50C(*(a1 + 312), v28);
            }
          }
        }
      }

      v26 = *a3;
    }

    if (v26 == 9)
    {
      v30 = *(a1 + 312);
      if (v30)
      {
        sub_100DAB6C0(v30);
      }
    }

    sub_10010CA08(a1, *(a1 + 344), v11, a3, v39);

    if (v45)
    {
      sub_100008080(v45);
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }

    if (v42)
    {
      sub_100008080(v42);
    }

    if (v41)
    {
      sub_100008080(v41);
    }
  }
}

void sub_100150948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001509AC(uint64_t a1, char a2, double a3)
{
  *(a1 + 64) = a2;
  v3 = (a1 + 64);
  *(a1 + 72) = a3;
  v4 = (a1 + 72);
  if (qword_1025D4600 != -1)
  {
    sub_101A7F80C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v6 = *v4;
    v7 = *v3;
    v8 = 134349312;
    v9 = v6;
    v10 = 1026;
    v11 = v7;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#pbio CLProactiveInertialOdometrySubscription::onRhythmicStatus, fMachContinuousTimeOfLastActiveWakingRhythmicStatusChange_s, %{public}.3f s, fIsActiveWakingRhythmic, %{public}d", &v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7FF40(v4, v3);
  }
}

void sub_100150AAC(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4)
{
  sub_100150AFC();

  sub_100150B08(a4, v7, a2, a3);
}

void sub_100150B08(uint64_t a1, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  v4 = a4[1];
  v13 = *a4;
  v14 = v4;
  v5 = a4[3];
  v15 = a4[2];
  v16 = v5;
  if (!*a3)
  {
    v7 = sub_100011660();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v8[2] = sub_100150BB0;
    v8[3] = &unk_102485918;
    v8[4] = a1;
    sub_10017A794(v7, v8);
  }
}

uint64_t sub_100150BB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 96) > 0.0)
  {
    v2[28] = 1;
  }

  return (*(*v2 + 72))(v2, a1 + 40);
}

uint64_t sub_100150BF4(uint64_t result, double *a2)
{
  v2 = a2[7];
  if (v2 == -1.0)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
    v2 = -1.0;
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
  }

  *(result + 200) = v3;
  *(result + 216) = v4;
  *(result + 232) = v5;
  *(result + 248) = v6;
  *(result + 256) = v2;
  return result;
}

uint64_t sub_100150C60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_100150C80(uint64_t a1)
{
  result = IOHIDEventGetType();
  if (result == 21)
  {
    IOHIDEventGetFloatValue();
    *&v3 = v3;
    v8.i32[0] = LODWORD(v3);
    IOHIDEventGetFloatValue();
    *&v4 = v4;
    v8.i32[1] = LODWORD(v4);
    IOHIDEventGetFloatValue();
    *&v5 = v5;
    v9 = LODWORD(v5);
    TimeStamp = IOHIDEventGetTimeStamp();
    v7 = sub_1000080EC(TimeStamp);
    return sub_100150D2C(a1, &v8, &v7);
  }

  return result;
}

uint64_t sub_100150D2C(uint64_t a1, float32x2_t *a2, double *a3)
{
  v6 = *a3;
  if (*a3 > *(a1 + 64) + 1.0)
  {
    v7 = (*(**(a1 + 80) + 24))(*(a1 + 80), @"AppleVoltageDictionary", v6);
    [objc_msgSend(v7 objectForKeyedSubscript:{@"COMPASS_TEMP", "floatValue"}];
    *(a1 + 72) = v8 / 100.0;
    *(a1 + 64) = *a3;

    v6 = *a3;
  }

  v9 = vsub_f32(*a2, *(a1 + 48));
  *v31 = v6;
  v31[1] = v9;
  v9.i32[0] = *(a1 + 72);
  v32 = a2[1].f32[0] - *(a1 + 56);
  v33 = v9.i32[0];
  if (qword_1025D42D0 != -1)
  {
    sub_1002DDE14();
  }

  v10 = qword_1025D42D8;
  if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_DEBUG))
  {
    v11 = a2->f32[0];
    v12 = a2->f32[1];
    v13 = a2[1].f32[0];
    v14 = *a3;
    *buf = 136316162;
    v35 = "Magnetometer";
    v36 = 2048;
    v37 = v11;
    v38 = 2048;
    v39 = v12;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v14;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Type,%s,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42D0 != -1)
    {
      sub_1019D3708();
    }

    v26 = a2->f32[0];
    v27 = a2->f32[1];
    v28 = a2[1].f32[0];
    v29 = *a3;
    *v47 = 136316162;
    *&v47[4] = "Magnetometer";
    *&v47[12] = 2048;
    *&v47[14] = v26;
    v48 = 2048;
    v49 = v27;
    *v50 = 2048;
    *&v50[2] = v28;
    *&v50[10] = 2048;
    v51 = v29;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMagnetometer::onMagnetometerData(const CLMotionTypeMagneticField &, const CLMotionTypeTimestamp &)", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  if (*(a1 + 32) == 1)
  {
    *v47 = off_102490FF0;
    Current = CFAbsoluteTimeGetCurrent();
    v16 = *a3;
    *&v47[8] = Current;
    v17 = *a2;
    v49 = v16;
    *v50 = v17;
    *&v50[8] = a2[1].i32[0];
    v18 = sub_10015ADF4();
    sub_1010CF5BC(v18, v47);
    sub_10152D354(buf);
    sub_101555404(buf);
    v46 |= 1u;
    v44 = *&v47[8];
    v19 = v45;
    v20 = *a3;
    *(v45 + 36) |= 1u;
    *(v19 + 8) = v20;
    v21 = v45;
    LODWORD(v20) = a2->i32[0];
    *(v45 + 36) |= 8u;
    *(v21 + 24) = LODWORD(v20);
    v22 = v45;
    LODWORD(v20) = a2->i32[1];
    *(v45 + 36) |= 0x10u;
    *(v22 + 28) = LODWORD(v20);
    v23 = v45;
    LODWORD(v20) = a2[1].i32[0];
    *(v45 + 36) |= 0x20u;
    *(v23 + 32) = LODWORD(v20);
    v24 = v45;
    LODWORD(v20) = *(a1 + 72);
    *(v45 + 36) |= 4u;
    *(v24 + 20) = LODWORD(v20);
    if (qword_102637F48 != -1)
    {
      sub_1019D3A84();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  return sub_100061FD8(a1, 0, v31, 24);
}

void sub_100151138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

CFTypeRef sub_100151158(void *a1, const __CFString *a2)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    sub_101998844(a1);
  }

  if (!(*(*a1 + 40))(a1))
  {
    return 0;
  }

  v5 = a1[3];

  return IOHIDServiceClientCopyProperty(v5, a2);
}

float *sub_1001511FC(float *result, uint64_t a2)
{
  v2 = sqrtf(((result[3] * result[3]) + (result[2] * result[2])) + (result[4] * result[4]));
  if (*(a2 + 100) < v2)
  {
    *(a2 + 100) = v2;
  }

  if (*(a2 + 96) > v2)
  {
    *(a2 + 96) = v2;
  }

  return result;
}

uint64_t sub_100151240(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    sub_101999780();
  }

  sub_100178584(*(a1 + 40));
  if (*(a1 + 24))
  {
    return 1;
  }

  sub_1009B43BC(*(a1 + 40), 0);
  if (*(a1 + 24))
  {
    return 1;
  }

  if (qword_1025D4200 != -1)
  {
    sub_101995F5C();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 16);
    v5 = *(a1 + 20);
    v7[0] = 67240448;
    v7[1] = v5;
    v8 = 1026;
    v9 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Service for usage pair {%{public}d, %{public}d} is not ready", v7, 0xEu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019998E4();
    return 0;
  }

  return result;
}

void sub_10015136C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B9078;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001513C0(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67240192;
    v7[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "L5Context,SignalEnvironmentType,%{public}d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A650E8(a2);
  }

  v5 = *(a1 + 49);
  v6 = (a2 - 3) < 2;
  *(a1 + 49) = v6;
  if (v5 != v6)
  {
    sub_10017DC7C(a1);
  }
}

uint64_t sub_1001514CC(uint64_t result, int a2)
{
  if ((a2 - 1) > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_101CF4010[a2 - 1];
  }

  *(result + 204) = v2;
  return result;
}

uint64_t sub_1001514F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_100151514(uint64_t a1, uint64_t a2, char *a3)
{
  sub_1001518D0(*(a1 + 8), a2, a3);
  sub_1001FB6D0(*(*(a1 + 8) + 136), a2);
  v8 = v5;
  if (sub_1001518C0())
  {
    if (v8 == 1)
    {
      v6 = *(a1 + 8);
      if ((*(v6 + 144) & 1) == 0 && (*(v6 + 145) & 1) == 0)
      {
        sub_1001C7624(v6, v6 + 96);
      }
    }
  }

  return 1;
}

uint64_t sub_1001515B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(**(a1 + 128) + 24))(*(a1 + 128), a4, a4 + 160);
  if ((result & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: failed to handle location notification", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB7AE0();
    }

    return sub_1001C7624(a1, a1 + 80);
  }

  return result;
}

void sub_100151688(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BB7274();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGNSSPedometerAssistanceController::HandleLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BB7288();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGNSSPedometerAssistanceController::HandleLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001515B0(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001518D0(uint64_t a1, uint64_t a2, char *__src)
{
  v3 = *(a2 + 76);
  if (v3 == -1.0)
  {
    return 0;
  }

  v4 = v3 < 0.0 || ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v4 && (*&v3 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0;
  }

  if ((*(a2 + 96) & 0xFFFFFFF7) != 1)
  {
    return 0;
  }

  v7 = *(a2 + 44);
  if (v7 == -1.0)
  {
    return 0;
  }

  result = 0;
  v10 = *(a2 + 52);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10 > 0.0 && (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v7 >= 0.0 && v10 != -1.0)
  {
    v12 = *(__src + 4);
    if ((v12 < 0.0 || ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v12 - 1) > 0xFFFFFFFFFFFFELL)
    {
      return 0;
    }

    if (*(a1 + 1248) == 1)
    {
      v15 = *(a1 + 632);
      if (v12 <= v15)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101BB4D50();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v51 = v12;
          v52 = 2048;
          v53 = v15;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: encountered out-of-order GNSS notification time %.3lf vs. last seen notification time %.3lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BB5F48();
        }
      }
    }

    v17 = *(a2 + 112);
    v33[6] = *(a2 + 96);
    v33[7] = v17;
    v34[0] = *(a2 + 128);
    *(v34 + 12) = *(a2 + 140);
    v18 = *(a2 + 48);
    v33[2] = *(a2 + 32);
    v33[3] = v18;
    v19 = *(a2 + 80);
    v33[4] = *(a2 + 64);
    v33[5] = v19;
    v20 = *(a2 + 16);
    v33[0] = *a2;
    v33[1] = v20;
    memcpy(v35, __src, sizeof(v35));
    v36 = *(__src + 65);
    v21 = *(__src + 66);
    v37 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(__src + 616);
    v42 = *(__src + 600);
    v43[0] = v22;
    *(v43 + 9) = *(__src + 625);
    v23 = *(__src + 552);
    v38 = *(__src + 536);
    v39 = v23;
    v24 = *(__src + 584);
    v40 = *(__src + 568);
    v41 = v24;
    sub_10029278C(a1 + 440, v33);
    sub_100295220((a1 + 392), a1 + 440);
    if (*(a1 + 432) >= 0xDuLL)
    {
      sub_100295344((a1 + 392));
    }

    if (qword_1025D4650 != -1)
    {
      sub_101BB50D0();
    }

    v25 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a2 + 76);
      v27 = *(a2 + 44);
      v28 = *(a2 + 52);
      *buf = 134218496;
      v51 = v26;
      v52 = 2048;
      v53 = v27;
      v54 = 2048;
      v55 = v28;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: received GPS time,%.3lf,speed,%.3lf,speedSigma,%.3lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB51F8(buf);
      v29 = *(a2 + 76);
      v30 = *(a2 + 44);
      v31 = *(a2 + 52);
      v44 = 134218496;
      v45 = v29;
      v46 = 2048;
      v47 = v30;
      v48 = 2048;
      v49 = v31;
      v32 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGNSSPedometerAssistanceController::UpdateGPSLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    if (v37)
    {
      sub_100008080(v37);
    }

    return 1;
  }

  return result;
}

void sub_100151CF0(_Unwind_Exception *a1)
{
  if (STACK[0x2C0])
  {
    sub_100008080(STACK[0x2C0]);
  }

  _Unwind_Resume(a1);
}

void sub_100151D14(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = *a3;
  if (*a3 <= 3)
  {
    if (v6 < 3)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v8 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a3;
      v10[0] = 67109120;
      v10[1] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning received an unknown location notification %d", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101914DB4(a3);
    }

    return;
  }

  switch(v6)
  {
    case 0x1Bu:

      sub_1006F64F0(a1, a4);
      break;
    case 0xAu:
      sub_1001526E8(a1 + 1712, a4);
      sub_100181FF8((a1 + 1400), a4, *(a4 + 768) != 0);
      sub_100152194(a1 + 2056, a4);

      sub_1001529B8((a1 + 2664), a4);
      break;
    case 4u:
LABEL_3:
      if ((*(a1 + 2050) & 1) == 0)
      {

        sub_1006F5478(a1);
      }

      return;
    default:
      goto LABEL_10;
  }
}

void sub_100151F24(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 96);
  *a1 = *(a2 + 4);
  v4 = *(a2 + 184);
  *(a1 + 2) = v4;
  if (v4 <= 0.0)
  {
    a1[2] = *(a2 + 76);
  }

  *(a1 + 3) = fmax(*(a2 + 20), 0.0);
  *(a1 + 9) = *(a2 + 132);
  if (qword_1025D45E0 != -1)
  {
    sub_10191AC8C();
  }

  v5 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 96);
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = *(a1 + 9);
    v12 = *(a2 + 184);
    *buf = 67241729;
    v15 = v6;
    v16 = 2053;
    v17 = v7;
    v18 = 2053;
    v19 = v8;
    v20 = 2050;
    v21 = v9;
    v22 = 2050;
    v23 = v10;
    v24 = 1026;
    v25 = v11;
    v26 = 2050;
    v27 = v12;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLNmeaScreener,store,type,%{public}d,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,timestampGPS,%{public}.1lf,fHorizontalUncertainty,%{public}.1lf,refFrame,%{public}d,timestampGps,%{public}.1lf", buf, 0x40u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 != -1)
    {
      sub_10191ACA0();
    }

    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNmeaScreener::ExternalLocationData::fillData(const CLLocationProvider_Type::NotificationData &)", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }
}

void sub_100152194(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) != 1)
  {
    return;
  }

  if (*(a2 + 76) < 0.0 || *(a2 + 504) < 0.0 || sub_10002807C(*(a2 + 4), *(a2 + 12)))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v4 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a2 + 96);
      *buf = 136643075;
      v42 = v5;
      v43 = 1026;
      LODWORD(v44) = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLNMEAScreener,store,%{sensitive}s,invalid location input,type,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191B44C(a1, a2, v7, v8, v9, v10, v11, v12);
    }

    return;
  }

  v13 = *(a2 + 96);
  if ((v13 & 0xFFFFFFF7) == 1 && (*(a2 + 516) & 1) == 0)
  {
    if (*(a2 + 680))
    {
      v29 = 0xBFF0000000000000;
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
      v15 = sub_1000081AC();
      sub_1002A55A0(&v29, *(a2 + 680), v15);
      if (v30 <= 19 && DWORD1(v30) == v30)
      {
        *(a1 + 457) = 0;
        if (qword_1025D45E0 != -1)
        {
          sub_10191ACA0();
        }

        v16 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a2 + 4);
          v18 = *(a2 + 12);
          *buf = 134349825;
          v42 = v29;
          v43 = 2053;
          v44 = v17;
          v45 = 2053;
          v46 = v18;
          v47 = 1026;
          v48 = -1;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLNmeaScreener,store,validityTimeMCT,%{public}.1lf,lat,%{sensitive}.3f,lon,%{sensitive}.3f,goodGNSSTracking,%{public}d", buf, 0x26u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_45;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D45E0 != -1)
        {
          sub_10191ACA0();
        }

        v19 = *(a2 + 4);
        v20 = *(a2 + 12);
        v33 = 134349825;
        v34 = v29;
        v35 = 2053;
        v36 = v19;
        v37 = 2053;
        v38 = v20;
        v39 = 1026;
        v40 = -1;
      }

      else
      {
        *(a1 + 464) = v29;
        *(a1 + 457) = sub_1003029A0(&v29);
        if (qword_1025D45E0 != -1)
        {
          sub_10191ACA0();
        }

        v21 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(a2 + 4);
          v23 = *(a2 + 12);
          v24 = *(a1 + 457);
          *buf = 134349825;
          v42 = v29;
          v43 = 2053;
          v44 = v22;
          v45 = 2053;
          v46 = v23;
          v47 = 1026;
          v48 = v24;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLNmeaScreener,store,validityTimeMCT,%{public}.1lf,lat,%{sensitive}.3f,lon,%{sensitive}.3f,goodGNSSTracking,%{public}d", buf, 0x26u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_45;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D45E0 != -1)
        {
          sub_10191ACA0();
        }

        v25 = *(a2 + 4);
        v26 = *(a2 + 12);
        v27 = *(a1 + 457);
        v33 = 134349825;
        v34 = v29;
        v35 = 2053;
        v36 = v25;
        v37 = 2053;
        v38 = v26;
        v39 = 1026;
        v40 = v27;
      }

      v28 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNmeaScreener::updateExternalLocation(const CLLocationProvider_Type::NotificationData &)", "%s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

LABEL_45:
    sub_100151F24((a1 + 72), a2);
    sub_100151F24((a1 + 136), a2);
    return;
  }

  if (v13 <= 6)
  {
    if (v13 != 4)
    {
      if (v13 != 6)
      {
        return;
      }

      v14 = (a1 + 264);
      goto LABEL_37;
    }
  }

  else
  {
    if (v13 == 7)
    {
      v14 = (a1 + 328);
      goto LABEL_37;
    }

    if (v13 != 13 && v13 != 11)
    {
      return;
    }
  }

  v14 = (a1 + 200);
LABEL_37:

  sub_100151F24(v14, a2);
}

__n128 sub_1001526E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 132) != 2)
  {
    v3 = (a2 + 96);
    if (*(a2 + 96) != 3 && !sub_10002807C(*(a2 + 4), *(a2 + 12)))
    {
      v13 = *(a2 + 96);
      v14 = *(a2 + 112);
      *v15 = *(a2 + 128);
      *&v15[12] = *(a2 + 140);
      v9 = *(a2 + 32);
      v10 = *(a2 + 48);
      v11 = *(a2 + 64);
      v12 = *(a2 + 80);
      v7 = *a2;
      v8 = *(a2 + 16);
      v6 = sub_100152A54((a1 + 232), v3);
      *(v6 + 17) = v14;
      *(v6 + 19) = *v15;
      *(v6 + 21) = *&v15[16];
      *(v6 + 23) = 0uLL;
      *(v6 + 9) = v10;
      *(v6 + 11) = v11;
      *(v6 + 13) = v12;
      *(v6 + 15) = v13;
      result = v7;
      *(v6 + 3) = v7;
      *(v6 + 5) = v8;
      *(v6 + 7) = v9;
      v6[25] = 0xBFF0000000000000;
    }
  }

  return result;
}

void sub_1001527EC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100151D14(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

_OWORD *sub_1001529B8(_OWORD *result, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    v18 = v2;
    v19 = v3;
    v4 = result;
    v11 = 0uLL;
    v12 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v13 = _Q0;
    v14 = _Q0;
    v15 = _Q0;
    v16 = _Q0;
    v17 = 0;
    sub_100302A54(&v11, a2);
    result = sub_100302D58(v4 + 385, *(v4 + 385), &v11);
    v10 = *(v4 + 386);
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - *(v4 + 385)) >> 5) >= 6)
    {
      *(v4 + 386) = v10 - 96;
    }
  }

  return result;
}

uint64_t *sub_100152A54(void *a1, unsigned int *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_100DC7250();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_100152C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100152C7C(const char *a1, uint64_t a2, int a3, uint64_t a4, const char *a5, char *a6, ...)
{
  va_start(va, a6);
  v12 = sub_10001CABC();
  if (a3)
  {
    result = sub_100A5A788(v12, a1, a2, a4, a5, a6, va);
  }

  else
  {
    result = sub_100A5A364(v12, a1, a2, a4, a5, a6, va);
  }

  if (off_102656760)
  {
    return off_102656760(qword_102656758, a1, a2, a4, a5, a6, va);
  }

  return result;
}

BOOL sub_100152D34()
{
  v1 = qword_1025D4628;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_100152D70()
{
  v2 = *(v0 + 584);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

uint64_t sub_100152D8C()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_100152DA4()
{
  v2 = *(v0 + 568);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_100152DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  bzero(&a11, 0x65CuLL);
}

uint64_t sub_100152DEC@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(v3 - 72) = a2;
  *(v2 + 10) = result;
  return result;
}

BOOL sub_100152E30()
{
  v1 = off_1025D4648;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

int *sub_100152E50()
{

  return __error();
}

void sub_100152E8C(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 80) = a2;
  *(v2 - 76) = a1;
  *(v2 - 72) = 1024;
}

uint64_t sub_100152EB0(uint64_t a1, int *a2, char a3)
{
  v6 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8);
  v7 = *a2;
  if (*a2 > 3)
  {
    if (v7 == 4)
    {
      *(a1 + 358) = a3;
    }

    else if (v7 == 5)
    {
      *(a1 + 357) = a3;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      *(a1 + 356) = a3;
    }
  }

  else
  {
    *(a1 + 355) = a3;
  }

  return (*(*v6 + 24))(v6);
}

uint64_t sub_100152F7C(uint64_t a1, int *a2, char a3)
{
  result = *(a1 + 3912);
  if (result)
  {
    return sub_100152EB0(result, a2, a3);
  }

  return result;
}

void sub_100152F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 3872);
  if (v6)
  {
    sub_100182360(v6, 0xFFFFFFFFLL, a2, a3);
  }

  v7 = *(a1 + 3880);
  if (v7)
  {

    sub_100182360(v7, 0xFFFFFFFFLL, a2, a3);
  }
}

uint64_t sub_100153008(uint64_t a1, double a2, double a3, double a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_1000CF05C();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

void sub_100153068(uint64_t a1, double a2, double a3, double a4)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      *v33 = a2;
      *&v33[8] = 2050;
      v34[0] = a3;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "#gpsd,Invalid,time,%{public}.3lf,timeUncertainty,%{public}.9lf", buf, 0x16u);
    }

    v11 = sub_10000A100(121, 0);
    if (v11)
    {
      sub_1017758B0(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    v25 = 0;
    sub_100153734(&v25 + 1, &v25, a2);
    v8 = HIDWORD(v25);
    if (HIDWORD(v25) >= dword_102655D48)
    {
      v19 = v25;
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *v33 = HIDWORD(v25);
        *&v33[4] = 1024;
        *&v33[6] = v25;
        LOWORD(v34[0]) = 1024;
        *(v34 + 2) = (a3 * 1000.0);
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#gpsd,feeding,timeAssistance,week,%u,towMs,%u,uncertaintyMs,%u", buf, 0x14u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_100154094();
        }

        v26 = 67109632;
        v27 = HIDWORD(v25);
        v28 = 1024;
        v29 = v25;
        v30 = 1024;
        v31 = (a3 * 1000.0);
        v24 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectTimeAssistance(CFAbsoluteTime, CFTimeInterval, double)", "%s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      sub_1001324C4(buf);
      if (!sub_100132484(9u))
      {
        __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
      }

      *(v34 + 6) = 9;
      v36 |= 0x14u;
      v21 = v35;
      if (!v35)
      {
        operator new();
      }

      v22 = 604800000000000 * v8 + 1000000 * v19;
      v23 = *(v35 + 36);
      *(v35 + 8) = v22;
      *(v21 + 16) = (a3 * 1000000000.0);
      *(v21 + 36) = v23 | 7;
      *(v21 + 24) = (a4 * 1000000000.0);
      sub_10013256C(a1, buf);
      sub_1001538F4(a1 + 2424, v22, (a4 * 1000000000.0));
      sub_100133DCC(buf);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        *v33 = HIDWORD(v25);
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#Warning,invalid,timeTravel,gpsWeek,%{public}u", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017757BC(&v25 + 1);
      }
    }
  }
}

void sub_1001534D4(id a1)
{
  v3 = 0;
  if (sub_1000206B4())
  {
    v1 = sub_1000206B4();
    if (sub_10005BBE4(v1, "gpsUtcLeapSeconds", &v3))
    {
      if (v3 >= 1)
      {
        v2 = v3 - 18;
        if (v3 - 18 < 0)
        {
          v2 = 18 - v3;
        }

        if (v2 <= 0x13)
        {
          dword_1025D6560 = v3;
        }
      }
    }
  }
}

uint64_t sub_100153544(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((*(a1 + 36) & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 36);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  }

LABEL_10:
  *(a1 + 32) = v4;
  return v4;
}

void sub_1001535C8(void *a1, double a2, double a3, double a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 68289794;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "Injecting time assistance to GNSS platform";
    v15 = 2050;
    v16 = a2;
    v17 = 2050;
    v18 = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, time:%{public}f, timeunc:%{public}f}", v10, 0x30u);
  }

  (*(**a1 + 128))(a2, a3, a4);
  v9 = a1[145];
  if (v9)
  {
    sub_100153904(v9, a2, a3, a4);
  }
}

double sub_100153734(int *a1, _DWORD *a2, double a3)
{
  if (qword_102656768 != -1)
  {
    sub_1001537D4();
  }

  v6 = a3 + 662342400.0 + dword_1025D6560;
  v7 = (v6 / 604800.0);
  *a1 = v7;
  result = (v6 - (604800 * v7)) * 1000.0;
  *a2 = result;
  return result;
}

double sub_1001537E8(uint64_t a1)
{
  *a1 = off_1024B8BC8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_100153814(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

void sub_1001538A0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B8BC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1001538F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  return result;
}

void sub_100153904(uint64_t a1, double a2, double a3, double a4)
{
  v29 = -1.0;
  v30 = -1.0;
  v8 = sub_1000081AC();
  v9 = off_102635868(&v30, &v29);
  v10 = v9;
  if (a3 <= 0.0 || (a2 > 0.0 ? (v11 = v9 == 0) : (v11 = 1), v11 || v30 <= 0.0 || v29 <= 0.0))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v20 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      LODWORD(v44) = v10 != 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#imag,gti unavailable,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016AE57C((v10 != 0));
    }
  }

  else
  {
    v12 = sub_1000081AC();
    v13 = v12 - v8;
    v14 = v8 + (v12 - v8) * 0.5;
    v29 = v29 + v13;
    v15 = (v30 - a2 - v14 + a4) * (v30 - a2 - v14 + a4);
    v16 = a3 * a3 + v29 * v29;
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v17 = qword_1025D4658;
    v18 = v15 / v16;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350336;
      v44 = v18;
      v45 = 2050;
      v46 = v30;
      v47 = 2050;
      v48 = a2;
      v49 = 2050;
      v50 = v29;
      v51 = 2050;
      v52 = a3;
      v53 = 2050;
      v54 = v13;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#imag,gti consistency,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,queryDelay,%{public}.4f", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1016ADE08();
      }

      v31 = 134350336;
      v32 = v18;
      v33 = 2050;
      v34 = v30;
      v35 = 2050;
      v36 = a2;
      v37 = 2050;
      v38 = v29;
      v39 = 2050;
      v40 = a3;
      v41 = 2050;
      v42 = v13;
      v26 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssSimulationAndSpoofingMonitor::injectTimeAssistance(CFAbsoluteTime, CFAbsoluteTime, double)", "%s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    if (v18 <= 5.0)
    {
      v21 = v18 * 10.0;
      v22 = a3 * 10.0;
      v23 = v29 * 10.0;
      if (a3 * 10.0 + v21 + v29 * 10.0 >= 120.0)
      {
        v24 = a3 * 10.0 + v21 + v29 * 10.0;
      }

      else
      {
        v24 = 120.0;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1016ADE08();
      }

      v25 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349824;
        v44 = v21;
        v45 = 2050;
        v46 = v22;
        v47 = 2050;
        v48 = v23;
        v49 = 2050;
        v50 = v24;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "#imag,gti inflation,%{public}.3f,%{public}.3f,%{public}.3f,result,%{public}.1f", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016ADE08();
        }

        v31 = 134349824;
        v32 = v21;
        v33 = 2050;
        v34 = v22;
        v35 = 2050;
        v36 = v23;
        v37 = 2050;
        v38 = v24;
        v28 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssSimulationAndSpoofingMonitor::injectTimeAssistance(CFAbsoluteTime, CFAbsoluteTime, double)", "%s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      *(a1 + 40) = v30;
      *(a1 + 48) = v24;
      *(a1 + 56) = v14;
      *(a1 + 64) = *(a1 + 74);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016ADE08();
      }

      v19 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        *buf = 134350336;
        v44 = v18;
        v45 = 2050;
        v46 = v30;
        v47 = 2050;
        v48 = a2;
        v49 = 2050;
        v50 = v29;
        v51 = 2050;
        v52 = a3;
        v53 = 2050;
        v54 = v13;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "#imag,gti inconsistent,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,queryDelay,%{public}.4f", buf, 0x3Eu);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016ADE08();
        }

        v31 = 134350336;
        v32 = v18;
        v33 = 2050;
        v34 = v30;
        v35 = 2050;
        v36 = a2;
        v37 = 2050;
        v38 = v29;
        v39 = 2050;
        v40 = a3;
        v41 = 2050;
        v42 = v13;
        v27 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLGnssSimulationAndSpoofingMonitor::injectTimeAssistance(CFAbsoluteTime, CFAbsoluteTime, double)", "%s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }

      sub_1016B1A70([objc_msgSend(*a1 "silo")], "imag", "gti inconsistent", 0);
    }
  }
}

uint64_t sub_100153F88(uint64_t a1, uint64_t a2)
{
  if (qword_102666B08 != -1)
  {
    sub_100153FFC();
  }

  v4 = dlsym(qword_102666B10, "TMGetTrustedInterval");
  off_102635868 = v4;

  return (v4)(a1, a2);
}

void sub_1001540BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 8284;
  v5 = a1 + 2396;
  if (*(a1 + 1577) != 1)
  {
    v16 = *(a2 + 96);
    if (*(a1 + 1578) == 1)
    {
      v17 = (v16 == 0) & *(a2 + 516);
      if (v16 > 0xB || ((1 << v16) & 0x850) == 0)
      {
        if (*(a1 + 11768) == 1)
        {
          if (!((v16 == 10) | (v16 == 0) & *(a2 + 516)))
          {
            goto LABEL_70;
          }
        }

        else if (((v16 == 0) & *(a2 + 516)) == 0)
        {
          goto LABEL_70;
        }
      }

      if (sub_100154FDC(a1, a2))
      {
        v18 = *(a2 + 96);
        if (v18 == 4 || v18 == 11 || (v18 == 10) | v17 & 1)
        {
          if (*(v4 + 3484) == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_100244280();
            }

            v19 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(a2 + 96);
              v21 = *(a2 + 4);
              v22 = *(a2 + 12);
              v23 = *(a2 + 28);
              v24 = *(a2 + 20);
              v25 = *(a2 + 36);
              v26 = *(a2 + 516);
              buf = 68290819;
              v171 = 2082;
              v172 = "";
              v173 = 1026;
              *v174 = v20;
              *&v174[4] = 2053;
              *&v174[6] = v21;
              v175 = 2053;
              v176 = v22;
              v177 = 2050;
              v178 = v23;
              v179 = 2050;
              v180 = v24;
              v181 = 2050;
              v182 = v25;
              v183 = 1026;
              v184 = v26;
              v27 = v19;
              v28 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
              _os_log_impl(dword_100000000, v27, v28, "{msg%{public}.0s:#GnssAssistancePosition, CPI: qualified location assistance to GPS, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, matcherPropagated:%{public}d}", &buf, 0x50u);
            }
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_100244280();
            }

            v29 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v30 = *(a2 + 96);
              v31 = *(a2 + 4);
              v32 = *(a2 + 12);
              v33 = *(a2 + 28);
              v34 = *(a2 + 20);
              v35 = *(a2 + 36);
              v36 = *(a2 + 516);
              buf = 68290819;
              v171 = 2082;
              v172 = "";
              v173 = 1026;
              *v174 = v30;
              *&v174[4] = 2053;
              *&v174[6] = v31;
              v175 = 2053;
              v176 = v32;
              v177 = 2050;
              v178 = v33;
              v179 = 2050;
              v180 = v34;
              v181 = 2050;
              v182 = v35;
              v183 = 1026;
              v184 = v36;
              v27 = v29;
              v28 = OS_LOG_TYPE_DEBUG;
              goto LABEL_29;
            }
          }
        }

        *(v4 + 820) = 1;
        if (*(v4 + 3484) == 1)
        {
          if ((*(v4 + 3485) & 1) == 0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v115 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              v116 = *(v4 + 3484);
              v117 = *(v4 + 3485);
              buf = 68289538;
              v171 = 2082;
              v172 = "";
              v173 = 1026;
              *v174 = v116;
              *&v174[4] = 1026;
              *&v174[6] = v117;
              v97 = "{msg%{public}.0s:#GnssAssistancePosition, Rejecting CPI, fInEmergency:%{public}d, fHeloEnabled:%{public}d}";
              v98 = v115;
              v99 = OS_LOG_TYPE_DEFAULT;
              v107 = 30;
              goto LABEL_68;
            }

            return;
          }

          if ((v17 & 1) == 0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v37 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_98;
            }

            v38 = *(a1 + 9088);
            buf = 68289282;
            v171 = 2082;
            v172 = "";
            v173 = 1026;
            *v174 = v38;
            v39 = v37;
            v40 = OS_LOG_TYPE_DEFAULT;
LABEL_97:
            _os_log_impl(dword_100000000, v39, v40, "{msg%{public}.0s:#GnssAssistancePosition, valid tightly coupled position, reliability:%{public}d}", &buf, 0x18u);
LABEL_98:
            v120 = 0;
            *(a1 + 9108) = 1;
            v121 = *(a1 + 8376);
            if (v121 <= 0xB && ((1 << v121) & 0xC10) != 0)
            {
              v120 = *(a1 + 8364) > 0x44u;
            }

            *(v4 + 3524) = v120;
            sub_1001BBE34(a1, a1 + 8280);
            goto LABEL_102;
          }
        }

        else if (!v17)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v118 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_98;
          }

          v119 = *(a1 + 9088);
          buf = 68289282;
          v171 = 2082;
          v172 = "";
          v173 = 1026;
          *v174 = v119;
          v39 = v118;
          v40 = OS_LOG_TYPE_DEBUG;
          goto LABEL_97;
        }

        *(a1 + 9108) = 2;
        sub_100E1077C(a1, a1 + 8280);
LABEL_102:
        v122 = *(a2 + 16);
        *(a1 + 4844) = *a2;
        *(a1 + 4860) = v122;
        v123 = *(a2 + 32);
        v124 = *(a2 + 48);
        v125 = *(a2 + 80);
        *(a1 + 4908) = *(a2 + 64);
        *(a1 + 4924) = v125;
        *(a1 + 4876) = v123;
        *(a1 + 4892) = v124;
        v126 = *(a2 + 96);
        v127 = *(a2 + 112);
        v128 = *(a2 + 128);
        *(a1 + 4984) = *(a2 + 140);
        *(a1 + 4956) = v127;
        *(a1 + 4972) = v128;
        *(a1 + 4940) = v126;
        memcpy((a1 + 5000), (a2 + 160), 0x201uLL);
        v129 = *(a2 + 680);
        v130 = *(a2 + 688);
        if (v130)
        {
          atomic_fetch_add_explicit((v130 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 5520) = v129;
        v131 = *(a1 + 5528);
        *(a1 + 5528) = v130;
        if (v131)
        {
          sub_100008080(v131);
        }

        v132 = *(a2 + 696);
        v133 = *(a2 + 712);
        *(a1 + 5568) = *(a2 + 728);
        *(a1 + 5552) = v133;
        *(a1 + 5536) = v132;
        v134 = *(a2 + 744);
        v135 = *(a2 + 760);
        v136 = *(a2 + 776);
        *(a1 + 5625) = *(a2 + 785);
        *(a1 + 5616) = v136;
        *(a1 + 5600) = v135;
        *(a1 + 5584) = v134;
        if (!sub_10018E7E0(a2))
        {
          return;
        }

        v137 = a1 + 2392;
        v138 = *(a2 + 16);
        *(a1 + 2392) = *a2;
        *(a1 + 2408) = v138;
        v139 = *(a2 + 32);
        v140 = *(a2 + 48);
        v141 = *(a2 + 80);
        *(a1 + 2456) = *(a2 + 64);
        *(a1 + 2472) = v141;
        *(a1 + 2424) = v139;
        *(a1 + 2440) = v140;
        v142 = *(a2 + 96);
        v143 = *(a2 + 112);
        v144 = *(a2 + 128);
        *(a1 + 2532) = *(a2 + 140);
        *(a1 + 2504) = v143;
        *(a1 + 2520) = v144;
        *(a1 + 2488) = v142;
        memcpy((a1 + 2552), (a2 + 160), 0x201uLL);
        v145 = *(a2 + 680);
        v146 = *(a2 + 688);
        if (v146)
        {
          atomic_fetch_add_explicit((v146 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 3072) = v145;
        v147 = *(a1 + 3080);
        *(a1 + 3080) = v146;
        if (v147)
        {
          sub_100008080(v147);
        }

        v148 = *(a2 + 696);
        v149 = *(a2 + 712);
        *(a1 + 3120) = *(a2 + 728);
        *(a1 + 3104) = v149;
        *(a1 + 3088) = v148;
        v150 = *(a2 + 744);
        v151 = *(a2 + 760);
        v152 = *(a2 + 776);
        *(a1 + 3177) = *(a2 + 785);
        *(a1 + 3168) = v152;
        *(a1 + 3152) = v151;
        *(a1 + 3136) = v150;
        v153 = vdupq_n_s64(0x408F400000000000uLL);
        *v5 = vdivq_f64(vrndaq_f64(vmulq_f64(*v5, v153)), v153);
        if (*(v4 + 3484) == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v108 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          sub_100072AFC(v137, __p);
          if (v157 >= 0)
          {
            v154 = __p;
          }

          else
          {
            v154 = __p[0];
          }

          buf = 68289283;
          v171 = 2082;
          v172 = "";
          v173 = 2085;
          *v174 = v154;
          v110 = "{msg%{public}.0s:#GnssAssistancePosition, Cached Tightly Coupled Position, location,:%{sensitive, location:escape_only}s}";
LABEL_78:
          v111 = v108;
          v112 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_87;
        }

        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v113 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        sub_100072AFC(v137, __p);
        if (v157 >= 0)
        {
          v155 = __p;
        }

        else
        {
          v155 = __p[0];
        }

        buf = 68289283;
        v171 = 2082;
        v172 = "";
        v173 = 2085;
        *v174 = v155;
        v110 = "{msg%{public}.0s:#GnssAssistancePosition, Cached Tightly Coupled Position, location,:%{sensitive, location:escape_only}s}";
        goto LABEL_86;
      }
    }

LABEL_70:
    if (*(v4 + 3484) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v108 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      sub_100072AFC(a2, __p);
      if (v157 >= 0)
      {
        v109 = __p;
      }

      else
      {
        v109 = __p[0];
      }

      buf = 68289283;
      v171 = 2082;
      v172 = "";
      v173 = 2085;
      *v174 = v109;
      v110 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not valid tightly coupled pos, location,:%{sensitive, location:escape_only}s}";
      goto LABEL_78;
    }

    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v113 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    sub_100072AFC(a2, __p);
    if (v157 >= 0)
    {
      v114 = __p;
    }

    else
    {
      v114 = __p[0];
    }

    buf = 68289283;
    v171 = 2082;
    v172 = "";
    v173 = 2085;
    *v174 = v114;
    v110 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not valid tightly coupled pos, location,:%{sensitive, location:escape_only}s}";
LABEL_86:
    v111 = v113;
    v112 = OS_LOG_TYPE_DEBUG;
LABEL_87:
    _os_log_impl(dword_100000000, v111, v112, v110, &buf, 0x1Cu);
    if (v157 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  if (*(a1 + 1578) != 1 || *(a1 + 8300) <= 0.0 || *(a1 + 9088) < 1)
  {
    goto LABEL_49;
  }

  *(a1 + 8356) = CFAbsoluteTimeGetCurrent();
  *(a1 + 9096) = 0;
  if (*(v4 + 3484) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v6 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    v7 = *(a1 + 8376);
    v8 = *v4;
    v9 = *(v4 + 8);
    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    v12 = *(v4 + 32);
    v13 = *(a1 + 9088);
    buf = 68290819;
    v171 = 2082;
    v172 = "";
    v173 = 1026;
    *v174 = v7;
    *&v174[4] = 2053;
    *&v174[6] = v8;
    v175 = 2053;
    v176 = v9;
    v177 = 2050;
    v178 = v10;
    v179 = 2050;
    v180 = v11;
    v181 = 2050;
    v182 = v12;
    v183 = 1026;
    v184 = v13;
    v14 = v6;
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v41 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_44;
    }

    v42 = *(a1 + 8376);
    v43 = *v4;
    v44 = *(v4 + 8);
    v46 = *(v4 + 16);
    v45 = *(v4 + 24);
    v47 = *(v4 + 32);
    v48 = *(a1 + 9088);
    buf = 68290819;
    v171 = 2082;
    v172 = "";
    v173 = 1026;
    *v174 = v42;
    *&v174[4] = 2053;
    *&v174[6] = v43;
    v175 = 2053;
    v176 = v44;
    v177 = 2050;
    v178 = v45;
    v179 = 2050;
    v180 = v46;
    v181 = 2050;
    v182 = v47;
    v183 = 1026;
    v184 = v48;
    v14 = v41;
    v15 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(dword_100000000, v14, v15, "{msg%{public}.0s:#GnssAssistancePosition, forcing tightly-coupled location assistance, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, reliability:%{public}d}", &buf, 0x50u);
LABEL_44:
  *(v4 + 820) = 1;
  *(a1 + 9108) = 1;
  v49 = *(a1 + 8376);
  v50 = *(a1 + 8408);
  v158[7] = *(a1 + 8392);
  v159[0] = v50;
  *(v159 + 12) = *(a1 + 8420);
  v51 = *(a1 + 8328);
  v158[2] = *(a1 + 8312);
  v158[3] = v51;
  v52 = *(a1 + 8360);
  v158[4] = *(a1 + 8344);
  v158[5] = v52;
  v158[6] = v49;
  v53 = *(a1 + 8296);
  v158[0] = *(a1 + 8280);
  v158[1] = v53;
  memcpy(v160, (a1 + 8440), sizeof(v160));
  v161 = *(a1 + 8960);
  v54 = *(a1 + 8968);
  v162 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v55 = *(a1 + 9024);
  v56 = *(a1 + 9056);
  v167 = *(a1 + 9040);
  v168[0] = v56;
  v57 = *(a1 + 8992);
  v163 = *(a1 + 8976);
  v164 = v57;
  v165 = *(a1 + 9008);
  v166 = v55;
  *(v168 + 9) = *(a1 + 9065);
  v168[2] = *(a1 + 9088);
  v169 = *(a1 + 9104);
  v58 = *(a1 + 32);
  if (!v58)
  {
    sub_1000CF05C();
  }

  (*(*v58 + 48))(v58, v158);
  if (v162)
  {
    sub_100008080(v162);
  }

LABEL_49:
  v59 = *(a2 + 16);
  *(a1 + 4844) = *a2;
  *(a1 + 4860) = v59;
  v60 = *(a2 + 32);
  v61 = *(a2 + 48);
  v62 = *(a2 + 80);
  *(a1 + 4908) = *(a2 + 64);
  *(a1 + 4924) = v62;
  *(a1 + 4876) = v60;
  *(a1 + 4892) = v61;
  v63 = *(a2 + 96);
  v64 = *(a2 + 112);
  v65 = *(a2 + 128);
  *(a1 + 4984) = *(a2 + 140);
  *(a1 + 4956) = v64;
  *(a1 + 4972) = v65;
  *(a1 + 4940) = v63;
  memcpy((a1 + 5000), (a2 + 160), 0x201uLL);
  v66 = *(a2 + 680);
  v67 = *(a2 + 688);
  if (v67)
  {
    atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 5520) = v66;
  v68 = *(a1 + 5528);
  *(a1 + 5528) = v67;
  if (v68)
  {
    sub_100008080(v68);
  }

  v69 = *(a2 + 696);
  v70 = *(a2 + 712);
  *(a1 + 5568) = *(a2 + 728);
  *(a1 + 5552) = v70;
  *(a1 + 5536) = v69;
  v71 = *(a2 + 744);
  v72 = *(a2 + 760);
  v73 = *(a2 + 776);
  *(a1 + 5625) = *(a2 + 785);
  *(a1 + 5616) = v73;
  *(a1 + 5600) = v72;
  *(a1 + 5584) = v71;
  if (sub_10018E7E0(a2))
  {
    v74 = *(a2 + 16);
    *(a1 + 2392) = *a2;
    *(a1 + 2408) = v74;
    v75 = *(a2 + 32);
    v76 = *(a2 + 48);
    v77 = *(a2 + 80);
    *(a1 + 2456) = *(a2 + 64);
    *(a1 + 2472) = v77;
    *(a1 + 2424) = v75;
    *(a1 + 2440) = v76;
    v78 = *(a2 + 96);
    v79 = *(a2 + 112);
    v80 = *(a2 + 128);
    *(a1 + 2532) = *(a2 + 140);
    *(a1 + 2504) = v79;
    *(a1 + 2520) = v80;
    *(a1 + 2488) = v78;
    memcpy((a1 + 2552), (a2 + 160), 0x201uLL);
    v81 = *(a2 + 680);
    v82 = *(a2 + 688);
    if (v82)
    {
      atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 3072) = v81;
    v83 = *(a1 + 3080);
    *(a1 + 3080) = v82;
    if (v83)
    {
      sub_100008080(v83);
    }

    v84 = *(a2 + 696);
    v85 = *(a2 + 712);
    *(a1 + 3120) = *(a2 + 728);
    *(a1 + 3104) = v85;
    *(a1 + 3088) = v84;
    v86 = *(a2 + 744);
    v87 = *(a2 + 760);
    v88 = *(a2 + 776);
    *(a1 + 3177) = *(a2 + 785);
    *(a1 + 3168) = v88;
    *(a1 + 3152) = v87;
    *(a1 + 3136) = v86;
    v89 = vdupq_n_s64(0x408F400000000000uLL);
    *v5 = vdivq_f64(vrndaq_f64(vmulq_f64(*v5, v89)), v89);
    if (*(v4 + 3484) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v90 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v91 = *(a1 + 2488);
        v92 = *v5;
        v93 = *(v5 + 8);
        v95 = *(v5 + 16);
        v94 = *(v5 + 24);
        v96 = *(v5 + 32);
        buf = 68290563;
        v171 = 2082;
        v172 = "";
        v173 = 1026;
        *v174 = v91;
        *&v174[4] = 2053;
        *&v174[6] = v92;
        v175 = 2053;
        v176 = v93;
        v177 = 2050;
        v178 = v94;
        v179 = 2050;
        v180 = v95;
        v181 = 2050;
        v182 = v96;
        v97 = "{msg%{public}.0s:#GnssAssistancePosition, Cached Tightly Coupled Position, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}";
        v98 = v90;
        v99 = OS_LOG_TYPE_DEFAULT;
LABEL_67:
        v107 = 74;
LABEL_68:
        _os_log_impl(dword_100000000, v98, v99, v97, &buf, v107);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v100 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v101 = *(a1 + 2488);
        v102 = *v5;
        v103 = *(v5 + 8);
        v105 = *(v5 + 16);
        v104 = *(v5 + 24);
        v106 = *(v5 + 32);
        buf = 68290563;
        v171 = 2082;
        v172 = "";
        v173 = 1026;
        *v174 = v101;
        *&v174[4] = 2053;
        *&v174[6] = v102;
        v175 = 2053;
        v176 = v103;
        v177 = 2050;
        v178 = v104;
        v179 = 2050;
        v180 = v105;
        v181 = 2050;
        v182 = v106;
        v97 = "{msg%{public}.0s:#GnssAssistancePosition, Cached Tightly Coupled Position, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}";
        v98 = v100;
        v99 = OS_LOG_TYPE_DEBUG;
        goto LABEL_67;
      }
    }
  }
}

void sub_100154FBC(_Unwind_Exception *a1)
{
  if (STACK[0x2D0])
  {
    sub_100008080(STACK[0x2D0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100154FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CCA3C(a2, a2 + 160);
  v5 = sub_100155238(a1, a2, v4);
  if (v5)
  {
    v6 = *(a2 + 16);
    *(a1 + 8280) = *a2;
    *(a1 + 8296) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 80);
    *(a1 + 8344) = *(a2 + 64);
    *(a1 + 8360) = v9;
    *(a1 + 8312) = v7;
    *(a1 + 8328) = v8;
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    v12 = *(a2 + 128);
    *(a1 + 8420) = *(a2 + 140);
    *(a1 + 8392) = v11;
    *(a1 + 8408) = v12;
    *(a1 + 8376) = v10;
    memcpy((a1 + 8440), (a2 + 160), 0x201uLL);
    v13 = *(a2 + 680);
    v14 = *(a2 + 688);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 8960) = v13;
    v15 = *(a1 + 8968);
    *(a1 + 8968) = v14;
    if (v15)
    {
      sub_100008080(v15);
    }

    v16 = *(a2 + 696);
    v17 = *(a2 + 712);
    *(a1 + 9008) = *(a2 + 728);
    *(a1 + 8992) = v17;
    *(a1 + 8976) = v16;
    v18 = *(a2 + 744);
    v19 = *(a2 + 760);
    v20 = *(a2 + 776);
    *(a1 + 9065) = *(a2 + 785);
    *(a1 + 9056) = v20;
    *(a1 + 9040) = v19;
    *(a1 + 9024) = v18;
    *(a1 + 9092) = 0;
    *(a1 + 9092) = 4 * (*(a2 + 96) == 6);
    if (*(a2 + 84) > 0x44u)
    {
      if (*(a1 + 8364) > 0x4Eu)
      {
        v22 = 4;
      }

      else
      {
        v22 = 3;
      }

      *(a1 + 9088) = v22;
    }

    else
    {
      *(a1 + 9088) = 2;
      if (*(a1 + 8300) < 65.0)
      {
        *(a1 + 8300) = 0x4050400000000000;
      }
    }

    if (*(a1 + 8316) > 0.0)
    {
      v23 = *(a1 + 8364);
      if (v23 > 0x44)
      {
        if (v23 > 0x4E)
        {
          v24 = 4;
        }

        else
        {
          v24 = 3;
        }
      }

      else
      {
        v24 = 2;
      }

      *(a1 + 9092) = v24;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v21 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v26[0] = 68289026;
      v26[1] = 0;
      v27 = 2082;
      v28 = "";
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #GnssAssistancePosition CPI: invalid assistance location}", v26, 0x12u);
    }
  }

  return v5;
}

uint64_t sub_100155238(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 96);
  result = 1;
  v8 = v6 > 0xB || ((1 << v6) & 0x850) == 0;
  if (v8 && (v6 != 10 || (*(a1 + 11768) & 1) == 0) && (v6 || (*(a2 + 516) & 1) == 0))
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v14 = qword_1025D4658;
    v15 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v15)
    {
      v16 = *(a2 + 96);
      v17 = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 1026;
      LODWORD(v22) = v16;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #GnssAssistancePosition TIGHT-COUPLING: invalid assistance location, type:%{public}d}", &v17, 0x18u);
      result = 0;
    }
  }

  if (*(a2 + 20) > 10000.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v9 = qword_1025D4658;
    v10 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v10)
    {
      v11 = *(a2 + 20);
      v17 = 68289538;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = v11;
      v23 = 2050;
      v24 = 0x40C3880000000000;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #GnssAssistancePosition TIGHT-COUPLING: invalid assistance location, horizontal accuracy:%{public}f, maximum accuracy:%{public}f}", &v17, 0x26u);
      result = 0;
    }
  }

  if (a3 > 10.0 || a3 < 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v12 = qword_1025D4658;
    v13 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v13)
    {
      v17 = 68289538;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = a3;
      v23 = 2050;
      v24 = 0x4024000000000000;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #GnssAssistancePosition TIGHT-COUPLING: invalid assistance location, age:%{public}f, maxAge:%{public}f}", &v17, 0x26u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001554D4(uint64_t a1, int **a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v34[0]) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssband,build band vector", v34, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101946548();
  }

  v5 = *a2;
  a2[1] = *a2;
  if (*(a1 + 736))
  {
    v8 = *(a1 + 16);
    v6 = (a1 + 16);
    v7 = v8;
    v9 = v8 | 1;
    v10 = *(v6 - 1);
    v11 = a2[2];
    if (v5 >= v11)
    {
      v14 = (v11 - v5) >> 1;
      if (v14 <= 1)
      {
        v14 = 1;
      }

      if (v11 - v5 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      sub_1000B85D0(a2, v15);
    }

    *v5 = v9;
    v12 = v5 + 1;
    v16 = v7 | 4;
    a2[1] = v12;
    if (v12 >= v11)
    {
      v18 = *a2;
      v19 = v12 - *a2;
      v20 = v19 >> 2;
      v21 = (v19 >> 2) + 1;
      if (v21 >> 62)
      {
        sub_10028C64C();
      }

      if ((v11 - v18) >> 1 > v21)
      {
        v21 = (v11 - v18) >> 1;
      }

      if (v11 - v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        sub_1000B85D0(a2, v21);
      }

      v11 = 0;
      *(4 * v20) = v16;
      v17 = (4 * v20 + 4);
      memcpy(0, v18, v19);
      v22 = *a2;
      *a2 = 0;
      a2[1] = v17;
      a2[2] = 0;
      if (v22)
      {
        operator delete(v22);
        v11 = a2[2];
      }
    }

    else
    {
      *v12 = v16;
      v17 = v12 + 1;
    }

    v23 = v10 | 2;
    a2[1] = v17;
    if (v17 >= v11)
    {
      v25 = *a2;
      v26 = v17 - *a2;
      v27 = v26 >> 2;
      v28 = (v26 >> 2) + 1;
      if (v28 >> 62)
      {
        sub_10028C64C();
      }

      if ((v11 - v25) >> 1 > v28)
      {
        v28 = (v11 - v25) >> 1;
      }

      if (v11 - v25 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        sub_1000B85D0(a2, v28);
      }

      *(4 * v27) = v23;
      v24 = 4 * v27 + 4;
      memcpy(0, v25, v26);
      v29 = *a2;
      *a2 = 0;
      a2[1] = v24;
      a2[2] = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v17 = v23;
      v24 = (v17 + 1);
    }

    a2[1] = v24;
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v30 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *v6;
      v32 = *(v6 - 1);
      v34[0] = 67109376;
      v34[1] = v31;
      v35 = 1024;
      v36 = v32;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "#gnssband,getActiveGnssBands,L1,%d,L5,%d", v34, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194662C();
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34[0]) = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#gnssband,getActiveGnssBands,no active bands", v34, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194672C();
    }
  }

  return 1;
}

BOOL sub_1001558BC(CFDictionaryRef *a1, uint64_t a2)
{
  sub_100005548(v17, *a1);
  if (qword_102658388 != -1)
  {
    sub_1018E8CEC();
  }

  if (byte_102658390 == 1)
  {
    sub_1004FFDC0(v17, "nrCellFromCellMonitorDict");
  }

  *&__p[4] = 0uLL;
  *(a2 + 8) = -1;
  *a2 = -1;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *(a2 + 32) = -1;
  *(a2 + 80) = 0xFFFFFFFF00000000;
  v3 = *__p;
  *(a2 + 52) = *&__p[16];
  *(a2 + 56) = -1;
  *(a2 + 64) = -1;
  *(a2 + 36) = v3;
  *(a2 + 72) = -1;
  *(a2 + 88) = 0;
  sub_1000052CC(v17, kCTCellMonitorMCC, a2);
  sub_1000052CC(v17, kCTCellMonitorMNC, (a2 + 4));
  sub_1000052CC(v17, kCTCellMonitorTAC, (a2 + 8));
  sub_10016B550(v17, kCTCellMonitorCellId, (a2 + 16));
  sub_1000052CC(v17, kCTCellMonitorNRARFCN, (a2 + 24));
  cf1 = 0;
  sub_10006EB64(v17, kCTCellMonitorCellType, &cf1);
  if (CFEqual(cf1, kCTCellMonitorCellTypeServing))
  {
    sub_1000052CC(v17, kCTCellMonitorPID, (a2 + 28));
  }

  if (CFEqual(cf1, kCTCellMonitorCellTypeNeighbor))
  {
    sub_1000052CC(v17, kCTCellMonitorPCI, (a2 + 28));
  }

  sub_1000052CC(v17, kCTCellMonitorRSRP, (a2 + 56));
  sub_1000052CC(v17, kCTCellMonitorRSRQ, (a2 + 60));
  sub_1000052CC(v17, kCTCellMonitorBandInfo, (a2 + 32));
  sub_1000052CC(v17, kCTCellMonitorSCS, (a2 + 64));
  sub_1000052CC(v17, kCTCellMonitorGSCN, (a2 + 68));
  sub_1000052CC(v17, kCTCellMonitorBandwidth, (a2 + 72));
  sub_1000052CC(v17, kCTCellMonitorNeighborType, (a2 + 84));
  sub_1000052CC(v17, kCTCellMonitorPMax, (a2 + 76));
  sub_1000052CC(v17, kCTCellMonitorThroughput, (a2 + 80));
  v15 = 0;
  sub_1004FB850(v17, kCTCellMonitorNRFrequencyType, &v15 + 1);
  sub_1004FB850(v17, kCTCellMonitorNRRedCapInfo, &v15);
  *(a2 + 88) = BYTE4(v15) | (v15 << 16);
  v14 = 0;
  if (sub_1000052CC(v17, kCTCellMonitorSectorLat, &v14 + 1))
  {
    if (sub_1000052CC(v17, kCTCellMonitorSectorLong, &v14))
    {
      v4 = v14;
      if (v14)
      {
        *(a2 + 40) = SHIDWORD(v14) * 0.0000694444444;
        *(a2 + 48) = v4 * 0.0000694444444;
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_100161554();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_10062233C(__p);
    v6 = v23 >= 0 ? __p : *__p;
    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "nrCell populated from CT: %s", buf, 0xCu);
    if (v23 < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D80(__p);
    sub_10062233C(buf);
    if (v19 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    v20 = 136315138;
    v21 = v11;
    v12 = _os_log_send_and_compose_impl();
    if (v19 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::nrCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::NrCell &)", "%s\n", v12);
    if (v12 != __p)
    {
      free(v12);
    }
  }

  v8 = *a2 > 0 && *(a2 + 4) >= 0;
  if (qword_1025D4620 != -1)
  {
    sub_100161554();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *__p = 67109120;
    *&__p[4] = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "nrCell is valid from CT: %d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D80(__p);
    *buf = 67109120;
    *&buf[4] = v8;
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::nrCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::NrCell &)", "%s\n", v13);
    if (v13 != __p)
    {
      free(v13);
    }
  }

  sub_100005DA4(v17);
  return v8;
}

void sub_100155F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_100155F78(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 5;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xCCCCCCCCCCCCCCCDLL * (a2 - v10);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v100 = *a3;
      v119 = *(a2 - 5);
      v101 = *(a2 - 4);
      v102 = *(a2 - 3);
      v103 = *(a2 - 1);
      v122 = *(a2 - 2);
      v123 = v103;
      v120 = v101;
      v121 = v102;
      v114 = *v10;
      v104 = v10[1];
      v105 = v10[2];
      v106 = v10[4];
      v117 = v10[3];
      v118 = v106;
      v115 = v104;
      v116 = v105;
      if (v100(&v119, &v114))
      {
        v119 = *v10;
        v108 = v10[1];
        v109 = v10[2];
        v110 = v10[4];
        v122 = v10[3];
        v123 = v110;
        v120 = v108;
        v121 = v109;
        v111 = *(a2 - 1);
        v113 = *(a2 - 4);
        v112 = *(a2 - 3);
        v10[3] = *(a2 - 2);
        v10[4] = v111;
        v10[1] = v113;
        v10[2] = v112;
        *v10 = *v9;
        *(a2 - 4) = v120;
        *(a2 - 3) = v121;
        *(a2 - 2) = v122;
        *(a2 - 1) = v123;
        *v9 = v119;
      }

      return;
    }

LABEL_10:
    if (v13 <= 1919)
    {
      if (a5)
      {
        sub_1004E01F4(v10, a2, a3);
      }

      else
      {
        sub_1004E038C(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {
        sub_1004E1494(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[5 * (v14 >> 1)];
    if (v13 < 0x2801)
    {
      sub_1004DFA14(v16, v10, a2 - 5, a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1004DFA14(v10, v16, a2 - 5, a3);
      v17 = 5 * v15;
      v18 = &v10[5 * v15 - 5];
      sub_1004DFA14(v10 + 5, v18, a2 - 10, a3);
      v19 = &v10[v17 + 5];
      sub_1004DFA14(a1 + 10, v19, a2 - 15, a3);
      sub_1004DFA14(v18, v16, v19, a3);
      v119 = *a1;
      v20 = a1[1];
      v21 = a1[2];
      v22 = a1[4];
      v122 = a1[3];
      v123 = v22;
      v120 = v20;
      v121 = v21;
      v23 = v16[4];
      v25 = v16[1];
      v24 = v16[2];
      a1[3] = v16[3];
      a1[4] = v23;
      a1[1] = v25;
      a1[2] = v24;
      *a1 = *v16;
      v26 = v123;
      v28 = v120;
      v27 = v121;
      v16[3] = v122;
      v16[4] = v26;
      v16[1] = v28;
      v16[2] = v27;
      *v16 = v119;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v29 = *a3;
    v119 = *(a1 - 5);
    v30 = *(a1 - 4);
    v31 = *(a1 - 3);
    v32 = *(a1 - 1);
    v122 = *(a1 - 2);
    v123 = v32;
    v120 = v30;
    v121 = v31;
    v114 = *a1;
    v33 = a1[1];
    v34 = a1[2];
    v35 = a1[4];
    v117 = a1[3];
    v118 = v35;
    v115 = v33;
    v116 = v34;
    if ((v29(&v119, &v114) & 1) == 0)
    {
      v10 = sub_1004E04F8(a1, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v36 = sub_1004E07E8(a1, a2, a3);
    if ((v37 & 1) == 0)
    {
      goto LABEL_20;
    }

    v38 = sub_1004E0AB0(a1, v36, a3);
    v10 = v36 + 5;
    if (sub_1004E0AB0(v36 + 5, a2, a3))
    {
      a4 = -v12;
      a2 = v36;
      if (v38)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v38)
    {
LABEL_20:
      sub_100155F78(a1, v36, a3, -v12, a5 & 1);
      v10 = v36 + 5;
LABEL_22:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 == 3)
  {
    sub_1004DFA14(v10, v10 + 5, a2 - 5, a3);
    return;
  }

  if (v14 == 4)
  {
    sub_1004DFD34(v10, v10 + 5, v10 + 10, a2 - 5, a3);
    return;
  }

  if (v14 != 5)
  {
    goto LABEL_10;
  }

  sub_1004DFD34(v10, v10 + 5, v10 + 10, v10 + 15, a3);
  v39 = *a3;
  v119 = *(a2 - 5);
  v40 = *(a2 - 4);
  v41 = *(a2 - 3);
  v42 = *(a2 - 1);
  v122 = *(a2 - 2);
  v123 = v42;
  v120 = v40;
  v121 = v41;
  v43 = v10[18];
  v116 = v10[17];
  v117 = v43;
  v118 = v10[19];
  v44 = v10[16];
  v114 = v10[15];
  v115 = v44;
  if (v39(&v119, &v114))
  {
    v45 = v10[18];
    v121 = v10[17];
    v122 = v45;
    v123 = v10[19];
    v46 = v10[16];
    v119 = v10[15];
    v120 = v46;
    v10[15] = *v9;
    v47 = *(a2 - 1);
    v49 = *(a2 - 4);
    v48 = *(a2 - 3);
    v10[18] = *(a2 - 2);
    v10[19] = v47;
    v10[16] = v49;
    v10[17] = v48;
    *v9 = v119;
    *(a2 - 1) = v123;
    *(a2 - 2) = v122;
    *(a2 - 3) = v121;
    *(a2 - 4) = v120;
    v50 = *a3;
    v51 = v10[16];
    v52 = v10[18];
    v53 = v10[19];
    v121 = v10[17];
    v122 = v52;
    v123 = v53;
    v54 = v10[14];
    v119 = v10[15];
    v120 = v51;
    v55 = v10[13];
    v116 = v10[12];
    v117 = v55;
    v118 = v54;
    v56 = v10[11];
    v114 = v10[10];
    v115 = v56;
    if (v50(&v119, &v114))
    {
      v57 = v10[16];
      v59 = v10[9];
      v58 = v10[10];
      v10[10] = v10[15];
      v61 = v10[10];
      v60 = v10[11];
      v10[11] = v57;
      v62 = v10[18];
      v64 = v10[11];
      v63 = v10[12];
      v10[12] = v10[17];
      v66 = v10[12];
      v65 = v10[13];
      v121 = v63;
      v122 = v65;
      v10[13] = v62;
      v67 = v10[13];
      v123 = v10[14];
      v119 = v58;
      v120 = v60;
      v68 = v58;
      v69 = v120;
      v10[14] = v10[19];
      v10[15] = v68;
      v70 = v121;
      v71 = v123;
      v10[18] = v122;
      v10[19] = v71;
      v10[16] = v69;
      v10[17] = v70;
      v72 = *a3;
      v121 = v66;
      v122 = v67;
      v123 = v10[14];
      v119 = v61;
      v120 = v64;
      v73 = v10[8];
      v116 = v10[7];
      v117 = v73;
      v118 = v59;
      v74 = v10[6];
      v114 = v10[5];
      v115 = v74;
      if (v72(&v119, &v114))
      {
        v75 = v10[8];
        v121 = v10[7];
        v122 = v75;
        v76 = v10[10];
        v123 = v10[9];
        v77 = v10[6];
        v119 = v10[5];
        v120 = v77;
        v78 = v10[11];
        v79 = v10[13];
        v80 = v10[14];
        v10[7] = v10[12];
        v10[8] = v79;
        v10[5] = v76;
        v10[6] = v78;
        v81 = v119;
        v82 = v120;
        v10[9] = v80;
        v10[10] = v81;
        v83 = v121;
        v84 = v123;
        v10[13] = v122;
        v10[14] = v84;
        v10[11] = v82;
        v10[12] = v83;
        v85 = *a3;
        v86 = v10[8];
        v121 = v10[7];
        v122 = v86;
        v123 = v10[9];
        v87 = v10[6];
        v119 = v10[5];
        v120 = v87;
        v114 = *v10;
        v88 = v10[1];
        v89 = v10[2];
        v90 = v10[4];
        v117 = v10[3];
        v118 = v90;
        v115 = v88;
        v116 = v89;
        if (v85(&v119, &v114))
        {
          v119 = *v10;
          v91 = v10[1];
          v92 = v10[2];
          v93 = v10[4];
          v122 = v10[3];
          v123 = v93;
          v120 = v91;
          v121 = v92;
          v94 = v10[9];
          v10[3] = v10[8];
          v10[4] = v94;
          v95 = v10[7];
          v10[1] = v10[6];
          v10[2] = v95;
          *v10 = v10[5];
          v96 = v119;
          v97 = v120;
          v98 = v123;
          v10[8] = v122;
          v10[9] = v98;
          v99 = v121;
          v10[6] = v97;
          v10[7] = v99;
          v10[5] = v96;
        }
      }
    }
  }
}

void sub_1001565B0(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = sub_100011660();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015AE2C;
  v4[3] = &unk_10245D2F0;
  v4[4] = a1;
  sub_100042800(v3, v4);
}

void sub_1001566A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245EE70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001566F4(uint64_t a1, int a2)
{
  sub_10000EC00(__p, "");
  sub_101366AB4(a1, "CLStepCountRecorderDb", a2, __p, 1, 2.56);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_1024E23A8;
  *(a1 + 72) = off_1024E2470;
  *(a1 + 504) = off_1024E24C0;
  sub_100DD42E4((a1 + 512), 0, 0);
  sub_100DD42E4((a1 + 528), 0, 0);
  *(a1 + 544) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 568) = -1;
  *(a1 + 576) = -1;
  *(a1 + 584) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
  *(a1 + 620) = xmmword_101D80C10;
  *(a1 + 636) = 0;
  LODWORD(__p[0]) = 8500;
  sub_10183C2FC((a1 + 644), "StepCounterAnalyticsEpochTrigger", __p, 0);
  *(a1 + 704) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 740) = 0;
  *(a1 + 708) = 0u;
  *(a1 + 724) = 0u;
  (*(*a1 + 112))(a1);
  return a1;
}

void *sub_1001568D0(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245EE70;
  sub_1001568CC(a1 + 3, *a2);
  return a1;
}

void sub_100156930(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245EE20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100156984(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245EDD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1001569D8(uint64_t *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1004D47C8;
  v3[3] = &unk_102459600;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_1001623C8(&__p, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6));
  v1 = [v3 copy];
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return v1;
}

void sub_100156A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100156AA8(uint64_t a1, uint64_t *a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_1001623C8(&v15, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 856);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v9 = 0;
        v10 = 0;
        __p = 0;
        sub_1001623C8(&__p, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 6));
        [v7 onCyclingDistanceUpdate:sub_1001569D8(&__p)];
        if (__p)
        {
          v9 = __p;
          operator delete(__p);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v4);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_100156C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100156D20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void *sub_100156D50(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245EEE0;
  sub_10000FF38(a1 + 3, *a2, 0);
  return a1;
}

void *sub_100156DB4(void *a1, int a2)
{
  sub_10000EC00(__p, "");
  sub_1007B7F38(a1, "VO2MaxRetrocomputeHistory", a2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_102471000;
  a1[9] = off_1024710B0;
  sub_100DD42E4(a1 + 59, 0, 0);
  sub_100DD42E4(a1 + 61, 0, 0);
  sub_100DD42E4(a1 + 63, 0, 0);
  (*(*a1 + 112))(a1);
  return a1;
}

void sub_100156EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100157534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100157570(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v163 = 0;
  v161 = 0uLL;
  v162 = 0;
  v160 = 0;
  v5 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageRegionTypeKey"];
  if (v5 && (sub_100005EEC(v5, &v163) & 1) != 0)
  {
    v6 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageNameKey"];
    if (v6 && sub_100005A24(v6, &v161))
    {
      v7 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageNotifyOnEntryKey"];
      if (v7 && (sub_1000700DC(v7, &v160 + 1) & 1) != 0)
      {
        v8 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageNotifyOnExitKey"];
        if (v8 && (sub_1000700DC(v8, &v160) & 1) != 0)
        {
          v159 = 0;
          v9 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageConservativeEntry"];
          if (v9 && (sub_1000700DC(v9, &v159 + 1) & 1) != 0)
          {
            v10 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageEmergencyKey"];
            if (v10 && (sub_1000700DC(v10, &v159) & 1) != 0)
            {
              if (v159 != 1 || (sub_1004BC7F8(a1) & 1) != 0)
              {
                sub_10000EC00(&__src, [objc_msgSend(*(a1 + 24) "legacyClientKey")]);
                __p = 0uLL;
                v156 = 0;
                v11 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageOnBehalfOfKey"];
                if (v11)
                {
                  sub_10000EC00(&__str, [v11 UTF8String]);
                  sub_100034EE4(&__str, buf);
                  sub_100037ACC(buf, v164);
                  if (SHIBYTE(v156) < 0)
                  {
                    operator delete(__p);
                  }

                  __p = *v164;
                  v156 = v164[2];
                  HIBYTE(v164[2]) = 0;
                  LOBYTE(v164[0]) = 0;
                  sub_100039BE8(buf);
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  if (qword_1025D4640 != -1)
                  {
                    sub_101896970();
                  }

                  v19 = off_1025D4648;
                  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
                  {
                    p_src = &__src;
                    if (v158 < 0)
                    {
                      p_src = __src;
                    }

                    v21 = &v161;
                    if (v162 < 0)
                    {
                      v21 = v161;
                    }

                    *buf = 136381187;
                    *&buf[4] = "kCLConnectionMessageOnBehalfOfKey";
                    *&buf[12] = 2082;
                    *&buf[14] = p_src;
                    *&buf[22] = 2081;
                    *&buf[24] = v21;
                    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't get value for key %{private}s, %{public}s/%{private}s", buf, 0x20u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_101896998(buf);
                    v104 = &__src;
                    if (v158 < 0)
                    {
                      v104 = __src;
                    }

                    v105 = &v161;
                    if (v162 < 0)
                    {
                      v105 = v161;
                    }

                    LODWORD(v164[0]) = 136381187;
                    *(v164 + 4) = "kCLConnectionMessageOnBehalfOfKey";
                    WORD2(v164[1]) = 2082;
                    *(&v164[1] + 6) = v104;
                    HIWORD(v164[2]) = 2081;
                    v165 = v105;
                    v106 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v106);
                    if (v106 != buf)
                    {
                      free(v106);
                    }
                  }
                }

                v22 = HIBYTE(v156);
                if (SHIBYTE(v156) < 0)
                {
                  v22 = *(&__p + 1);
                }

                if (v22 && (sub_1004BC690(a1) & 1) == 0)
                {
                  if (qword_1025D4640 != -1)
                  {
                    sub_101896970();
                  }

                  v33 = off_1025D4648;
                  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
                  {
                    v34 = *(a1 + 24);
                    p_p = &__p;
                    if (SHIBYTE(v156) < 0)
                    {
                      p_p = __p;
                    }

                    *buf = 138543618;
                    *&buf[4] = v34;
                    *&buf[12] = 2082;
                    *&buf[14] = p_p;
                    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to act as a proxy service to %{public}s", buf, 0x16u);
                  }

                  if (sub_10000A100(121, 0))
                  {
                    sub_101896998(buf);
                    v36 = *(a1 + 24);
                    v37 = &__p;
                    if (SHIBYTE(v156) < 0)
                    {
                      v37 = __p;
                    }

                    LODWORD(v164[0]) = 138543618;
                    *(v164 + 4) = v36;
                    WORD2(v164[1]) = 2082;
                    *(&v164[1] + 6) = v37;
                    v38 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v38);
                    if (v38 != buf)
                    {
                      free(v38);
                    }
                  }

                  goto LABEL_430;
                }

                Dictionary = CLConnectionMessage::getDictionary(*a2);
                sub_100005548(v153, Dictionary);
                sub_10000EC00(&__str, "");
                sub_10000EC00(&v151, "");
                sub_100175094(v153, "kCLConnectionMessageDeviceIDKey", &__str);
                size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  size = __str.__r_.__value_.__l.__size_;
                }

                if (size)
                {
                  if ((sub_1004BC8E8(a1) & 1) == 0)
                  {
                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v40 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                    {
                      v41 = *(a1 + 24);
                      *buf = 138543362;
                      *&buf[4] = v41;
                      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_FAULT, "#Warning #FenceHandoff %{public}@ does not have the appropriate entitlement for fence handoff service", buf, 0xCu);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_425;
                    }

                    goto LABEL_112;
                  }

                  sub_100175094(v153, "kCLConnectionMessageHandoffTagKey", &v151);
                  v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v25 = __str.__r_.__value_.__l.__size_;
                  }

                  if (v25)
                  {
                    v26 = HIBYTE(v152);
                    if (v152 < 0)
                    {
                      v26 = *(&v151 + 1);
                    }

                    if (!v26)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v80 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        v81 = &v161;
                        if (v162 < 0)
                        {
                          v81 = v161;
                        }

                        *buf = 68289282;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2082;
                        *&buf[20] = v81;
                        _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#FenceHandoff handleMessageRegionState HandoffTag is empty for handed off region, fenceName:%{public, location:escape_only}s}", buf, 0x1Cu);
                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }
                      }

                      v82 = qword_1025D4798;
                      if (os_signpost_enabled(qword_1025D4798))
                      {
                        v83 = &v161;
                        if (v162 < 0)
                        {
                          v83 = v161;
                        }

                        *buf = 68289282;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2082;
                        *&buf[20] = v83;
                        _os_signpost_emit_with_name_impl(dword_100000000, v82, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#FenceHandoff handleMessageRegionState HandoffTag is empty for handed off region", "{msg%{public}.0s:#FenceHandoff handleMessageRegionState HandoffTag is empty for handed off region, fenceName:%{public, location:escape_only}s}", buf, 0x1Cu);
                      }

                      goto LABEL_425;
                    }
                  }

                  v27 = [NSUUID alloc];
                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_str = &__str;
                  }

                  else
                  {
                    p_str = __str.__r_.__value_.__r.__words[0];
                  }

                  v29 = [v27 initWithUUIDString:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", p_str)}];
                }

                else
                {
                  v29 = 0;
                }

                v39 = v163;
                if (v163 <= 1)
                {
                  if (v163)
                  {
                    if (v163 != 1)
                    {
                      goto LABEL_424;
                    }

LABEL_115:
                    if (qword_1025D4640 != -1)
                    {
                      sub_101896970();
                    }

                    v44 = off_1025D4648;
                    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
                    {
                      v45 = "kCLClientRegionCircular";
                      if (v39 == 3)
                      {
                        v45 = "kCLClientRegionSignificant";
                      }

                      v46 = &__p;
                      if (SHIBYTE(v156) < 0)
                      {
                        v46 = __p;
                      }

                      v47 = &__src;
                      if (v158 < 0)
                      {
                        v47 = __src;
                      }

                      v48 = &v161;
                      *buf = 136446978;
                      if (v162 < 0)
                      {
                        v48 = v161;
                      }

                      *&buf[4] = v45;
                      *&buf[12] = 2080;
                      *&buf[14] = v46;
                      *&buf[22] = 2080;
                      *&buf[24] = v47;
                      v171 = 2080;
                      v172 = v48;
                      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "Fence: requesting, %{public}s for, [%s]/%s/%s", buf, 0x2Au);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101896998(buf);
                      v110 = "kCLClientRegionCircular";
                      if (v39 == 3)
                      {
                        v110 = "kCLClientRegionSignificant";
                      }

                      v111 = &__p;
                      if (SHIBYTE(v156) < 0)
                      {
                        v111 = __p;
                      }

                      v112 = &__src;
                      if (v158 < 0)
                      {
                        v112 = __src;
                      }

                      v113 = &v161;
                      if (v162 < 0)
                      {
                        v113 = v161;
                      }

                      LODWORD(v164[0]) = 136446978;
                      *(v164 + 4) = v110;
                      WORD2(v164[1]) = 2080;
                      *(&v164[1] + 6) = v111;
                      HIWORD(v164[2]) = 2080;
                      v165 = v112;
                      v166 = 2080;
                      v167 = v113;
                      v114 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v114);
                      if (v114 != buf)
                      {
                        free(v114);
                      }
                    }

                    *v169 = 0;
                    v150 = 0;
                    v149 = 0;
                    v148 = 0;
                    v49 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageLatitudeKey"];
                    if (!v49 || (sub_1000B8430(v49, v169) & 1) == 0)
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v56 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageLatitudeKey";
                        _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v164[0]) = 136446210;
                      *(v164 + 4) = "kCLConnectionMessageLatitudeKey";
                      v43 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v43);
                      goto LABEL_335;
                    }

                    v50 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageLongitudeKey"];
                    if (!v50 || (sub_1000B8430(v50, &v150) & 1) == 0)
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v86 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageLongitudeKey";
                        _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v164[0]) = 136446210;
                      *(v164 + 4) = "kCLConnectionMessageLongitudeKey";
                      v43 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v43);
                      goto LABEL_335;
                    }

                    v51 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageRadiusKey"];
                    if (!v51 || (sub_1000B8430(v51, &v149) & 1) == 0)
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v89 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageRadiusKey";
                        _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v164[0]) = 136446210;
                      *(v164 + 4) = "kCLConnectionMessageRadiusKey";
                      v43 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v43);
                      goto LABEL_335;
                    }

                    v52 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageDesiredAccuracyKey"];
                    if (!v52 || (sub_1000B8430(v52, &v148) & 1) == 0)
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v92 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageDesiredAccuracyKey";
                        _os_log_impl(dword_100000000, v92, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v164[0]) = 136446210;
                      *(v164 + 4) = "kCLConnectionMessageDesiredAccuracyKey";
                      v43 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v43);
                      goto LABEL_335;
                    }

                    v147 = 0;
                    v53 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageReferenceFrameKey"];
                    if (!v53 || (sub_100005EEC(v53, &v147) & 1) == 0)
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v95 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageReferenceFrameKey";
                        _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v164[0]) = 136446210;
                      *(v164 + 4) = "kCLConnectionMessageReferenceFrameKey";
                      v43 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v43);
                      goto LABEL_335;
                    }

                    v146 = 0;
                    v54 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageMonitoringNearby"];
                    if (v54 && (sub_1000700DC(v54, &v146) & 1) != 0)
                    {
                      v145 = 0;
                      v55 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageLowPowerFenceKey"];
                      if (v55 && (sub_1000700DC(v55, &v145) & 1) != 0)
                      {
                        if (SHIBYTE(v158) < 0)
                        {
                          sub_100007244(&v143, __src, *(&__src + 1));
                        }

                        else
                        {
                          v143 = __src;
                          v144 = v158;
                        }

                        if (SHIBYTE(v162) < 0)
                        {
                          sub_100007244(&v141, v161, *(&v161 + 1));
                        }

                        else
                        {
                          v141 = v161;
                          v142 = v162;
                        }

                        if (SHIBYTE(v156) < 0)
                        {
                          sub_100007244(&v139, __p, *(&__p + 1));
                        }

                        else
                        {
                          v139 = __p;
                          v140 = v156;
                        }

                        if (SHIBYTE(v152) < 0)
                        {
                          sub_100007244(&v137, v151, *(&v151 + 1));
                        }

                        else
                        {
                          v137 = v151;
                          v138 = v152;
                        }

                        sub_100BC8698(buf);
                        if (SHIBYTE(v138) < 0)
                        {
                          operator delete(v137);
                        }

                        if (SHIBYTE(v140) < 0)
                        {
                          operator delete(v139);
                        }

                        if (SHIBYTE(v142) < 0)
                        {
                          operator delete(v141);
                        }

                        if (SHIBYTE(v144) < 0)
                        {
                          operator delete(v143);
                        }

                        if (HIBYTE(v160) == 1)
                        {
                          v173 |= 1uLL;
                        }

                        if (v160 == 1)
                        {
                          v173 |= 2uLL;
                        }

                        if (v145)
                        {
                          v173 |= 0x20uLL;
                        }

                        if (v39 == 3)
                        {
                          v173 |= 0x80uLL;
                        }

                        if (HIBYTE(v159) == 1)
                        {
                          v173 |= 4uLL;
                        }

                        if (v146)
                        {
                          v173 |= 0x40uLL;
                        }

                        if (v159 == 1)
                        {
                          v173 |= 0x10uLL;
                        }

                        v174 = v147;
                        v124 = *(*sub_10005BA08(a1) + 16);
                        sub_1004BF718(v136, buf);
                        [v124 requestRegionState:sub_1004BCF74(v136)];
                        sub_1004BF9B8(v136);
                        sub_1004BF9B8(buf);
                        goto LABEL_424;
                      }

                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v109 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageLowPowerFenceKey";
                        _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v164[0]) = 136446210;
                      *(v164 + 4) = "kCLConnectionMessageLowPowerFenceKey";
                      v43 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v43);
LABEL_335:
                      if (v43 != buf)
                      {
                        free(v43);
                      }

                      goto LABEL_425;
                    }

                    if (qword_1025D47A0 != -1)
                    {
                      sub_1018969DC();
                    }

                    v98 = off_1025D47A8;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136446210;
                      *&buf[4] = "kCLConnectionMessageMonitoringNearby";
                      _os_log_impl(dword_100000000, v98, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_425;
                    }

LABEL_259:
                    sub_101896A04(buf);
                    LODWORD(v164[0]) = 136446210;
                    *(v164 + 4) = "kCLConnectionMessageMonitoringNearby";
                    v43 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v43);
                    goto LABEL_335;
                  }

                  if (qword_1025D4790 != -1)
                  {
                    sub_101896904();
                  }

                  v57 = qword_1025D4798;
                  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
                  {
                    v58 = &__p;
                    if (SHIBYTE(v156) < 0)
                    {
                      v58 = __p;
                    }

                    v59 = &__src;
                    if (v158 < 0)
                    {
                      v59 = __src;
                    }

                    v60 = &v161;
                    if (v162 < 0)
                    {
                      v60 = v161;
                    }

                    *buf = 136315650;
                    *&buf[4] = v58;
                    *&buf[12] = 2080;
                    *&buf[14] = v59;
                    *&buf[22] = 2080;
                    *&buf[24] = v60;
                    _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "iB: requesting, kCLClientRegionBeacon for, [%s]/%s/%s", buf, 0x20u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_10189692C(buf);
                    v116 = &__p;
                    if (SHIBYTE(v156) < 0)
                    {
                      v116 = __p;
                    }

                    v117 = &__src;
                    if (v158 < 0)
                    {
                      v117 = __src;
                    }

                    v118 = &v161;
                    if (v162 < 0)
                    {
                      v118 = v161;
                    }

                    LODWORD(v164[0]) = 136315650;
                    *(v164 + 4) = v116;
                    WORD2(v164[1]) = 2080;
                    *(&v164[1] + 6) = v117;
                    HIWORD(v164[2]) = 2080;
                    v165 = v118;
                    v119 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v119);
                    if (v119 != buf)
                    {
                      free(v119);
                    }
                  }

                  sub_1004BFB14(v164, &__src, &v161, &__p);
                  v61 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageProximityUUIDKey"];
                  if (v61 && sub_100005A24(v61, &v164[1]))
                  {
                    v62 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageMajorKey"];
                    if (v62 && (sub_1004FC28C(v62, &v166) & 1) != 0)
                    {
                      v63 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageMinorKey"];
                      if (v63 && (sub_1004FC28C(v63, &v167) & 1) != 0)
                      {
                        LODWORD(v150) = 0;
                        v64 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageRegionDefinitionKey"];
                        if (v64 && (sub_100005EEC(v64, &v150) & 1) != 0)
                        {
                          *(&v167 + 2) = v150 & 7;
                          LOBYTE(v149) = 0;
                          v65 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageNotifyEntryStateOnDisplayKey"];
                          if (v65 && (sub_1000700DC(v65, &v149) & 1) != 0)
                          {
                            if (HIBYTE(v160) == 1)
                            {
                              v168 |= 1u;
                            }

                            if (v160 == 1)
                            {
                              v168 |= 2u;
                            }

                            if (v149 == 1)
                            {
                              v168 |= 4u;
                            }

                            if (HIBYTE(v159) == 1)
                            {
                              v168 |= 4u;
                            }

                            v66 = *(*sub_10005B860(a1) + 16);
                            v125[0] = _NSConcreteStackBlock;
                            v125[1] = 3321888768;
                            v125[2] = sub_1004BD18C;
                            v125[3] = &unk_102457600;
                            sub_1004C04F8(v126, v164);
                            [v66 doAsync:v125];
                            sub_10005DB2C(v126);
                            sub_10005DB2C(v164);
                            goto LABEL_424;
                          }

                          if (qword_1025D47A0 != -1)
                          {
                            sub_1018969DC();
                          }

                          v97 = off_1025D47A8;
                          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 136446210;
                            *&buf[4] = "kCLConnectionMessageNotifyEntryStateOnDisplayKey";
                            _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_304;
                          }

                          sub_101896A04(buf);
                          *v169 = 136446210;
                          *&v169[4] = "kCLConnectionMessageNotifyEntryStateOnDisplayKey";
                          v79 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v79);
                        }

                        else
                        {
                          if (qword_1025D47A0 != -1)
                          {
                            sub_1018969DC();
                          }

                          v94 = off_1025D47A8;
                          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 136446210;
                            *&buf[4] = "kCLConnectionMessageRegionDefinitionKey";
                            _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_304;
                          }

                          sub_101896A04(buf);
                          *v169 = 136446210;
                          *&v169[4] = "kCLConnectionMessageRegionDefinitionKey";
                          v79 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v79);
                        }
                      }

                      else
                      {
                        if (qword_1025D47A0 != -1)
                        {
                          sub_1018969DC();
                        }

                        v91 = off_1025D47A8;
                        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 136446210;
                          *&buf[4] = "kCLConnectionMessageMinorKey";
                          _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                        }

                        if (!sub_10000A100(121, 0))
                        {
                          goto LABEL_304;
                        }

                        sub_101896A04(buf);
                        *v169 = 136446210;
                        *&v169[4] = "kCLConnectionMessageMinorKey";
                        v79 = _os_log_send_and_compose_impl();
                        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v79);
                      }
                    }

                    else
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v88 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageMajorKey";
                        _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_304;
                      }

                      sub_101896A04(buf);
                      *v169 = 136446210;
                      *&v169[4] = "kCLConnectionMessageMajorKey";
                      v79 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v79);
                    }
                  }

                  else
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_1018969DC();
                    }

                    v78 = off_1025D47A8;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136446210;
                      *&buf[4] = "kCLConnectionMessageProximityUUIDKey";
                      _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_304;
                    }

                    sub_101896A04(buf);
                    *v169 = 136446210;
                    *&v169[4] = "kCLConnectionMessageProximityUUIDKey";
                    v79 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v79);
                  }

                  if (v79 != buf)
                  {
                    free(v79);
                  }

LABEL_304:
                  sub_10005DB2C(v164);
                  goto LABEL_425;
                }

                if (v163 != 2)
                {
                  if (v163 != 3)
                  {
LABEL_424:

                    goto LABEL_425;
                  }

                  goto LABEL_115;
                }

                if (sub_1004BC780(a1))
                {
                  if (qword_1025D4640 != -1)
                  {
                    sub_101896970();
                  }

                  v67 = off_1025D4648;
                  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
                  {
                    v68 = &__p;
                    if (SHIBYTE(v156) < 0)
                    {
                      v68 = __p;
                    }

                    v69 = &__src;
                    if (v158 < 0)
                    {
                      v69 = __src;
                    }

                    v70 = &v161;
                    if (v162 < 0)
                    {
                      v70 = v161;
                    }

                    *buf = 136315650;
                    *&buf[4] = v68;
                    *&buf[12] = 2080;
                    *&buf[14] = v69;
                    *&buf[22] = 2080;
                    *&buf[24] = v70;
                    _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEBUG, "Fence: requesting, kCLClientRegionPolygonal for, [%s]/%s/%s", buf, 0x20u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_101896998(buf);
                    v120 = &__p;
                    if (SHIBYTE(v156) < 0)
                    {
                      v120 = __p;
                    }

                    v121 = &__src;
                    if (v158 < 0)
                    {
                      v121 = __src;
                    }

                    v122 = &v161;
                    if (v162 < 0)
                    {
                      v122 = v161;
                    }

                    LODWORD(v164[0]) = 136315650;
                    *(v164 + 4) = v120;
                    WORD2(v164[1]) = 2080;
                    *(&v164[1] + 6) = v121;
                    HIWORD(v164[2]) = 2080;
                    v165 = v122;
                    v123 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v123);
                    if (v123 != buf)
                    {
                      free(v123);
                    }
                  }

                  LODWORD(v148) = 0;
                  v147 = 0;
                  v146 = 0;
                  v71 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageReferenceFrameKey"];
                  if (!v71 || (sub_100005EEC(v71, &v148) & 1) == 0)
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_1018969DC();
                    }

                    v87 = off_1025D47A8;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136446210;
                      *&buf[4] = "kCLConnectionMessageReferenceFrameKey";
                      _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_425;
                    }

                    sub_101896A04(buf);
                    LODWORD(v164[0]) = 136446210;
                    *(v164 + 4) = "kCLConnectionMessageReferenceFrameKey";
                    v43 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v43);
                    goto LABEL_335;
                  }

                  v72 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageMonitoringNearby"];
                  if (!v72 || (sub_1000700DC(v72, &v146) & 1) == 0)
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_1018969DC();
                    }

                    v90 = off_1025D47A8;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136446210;
                      *&buf[4] = "kCLConnectionMessageMonitoringNearby";
                      _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_425;
                    }

                    goto LABEL_259;
                  }

                  v73 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessagePolygonalVerticesCountKey"];
                  if (!v73 || (sub_100005EEC(v73, &v147) & 1) == 0)
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_1018969DC();
                    }

                    v93 = off_1025D47A8;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136446210;
                      *&buf[4] = "kCLConnectionMessagePolygonalVerticesCountKey";
                      _os_log_impl(dword_100000000, v93, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_425;
                    }

                    sub_101896A04(buf);
                    LODWORD(v164[0]) = 136446210;
                    *(v164 + 4) = "kCLConnectionMessagePolygonalVerticesCountKey";
                    v43 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v43);
                    goto LABEL_335;
                  }

                  v74 = CLConnectionMessage::getDictionary(*a2);
                  sub_100005548(v169, v74);
                  v150 = 0;
                  if (sub_1004FC7C8(v169, @"kCLConnectionMessagePolygonalVerticesKey", &v150))
                  {
                    v149 = 0;
                    v75 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v150 error:&v149];
                    if (v149)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v76 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 68289282;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2114;
                        *&buf[20] = v149;
                        _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to get vertices from data in handleMessageRegionState, error:%{public, location:escape_only}@}", buf, 0x1Cu);
                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }
                      }

                      v77 = qword_1025D4798;
                      if (os_signpost_enabled(qword_1025D4798))
                      {
                        *buf = 68289282;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2114;
                        *&buf[20] = v149;
                        _os_signpost_emit_with_name_impl(dword_100000000, v77, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to get vertices from data in handleMessageRegionState", "{msg%{public}.0s:Unable to get vertices from data in handleMessageRegionState, error:%{public, location:escape_only}@}", buf, 0x1Cu);
                      }

LABEL_298:
                      sub_100005DA4(v169);
LABEL_425:
                      if (SHIBYTE(v152) < 0)
                      {
                        operator delete(v151);
                      }

                      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__str.__r_.__value_.__l.__data_);
                      }

                      sub_100005DA4(v153);
LABEL_430:
                      if (SHIBYTE(v156) < 0)
                      {
                        operator delete(__p);
                      }

                      if (SHIBYTE(v158) < 0)
                      {
                        operator delete(__src);
                      }

                      goto LABEL_55;
                    }

                    v99 = v75;
                    v100 = [(NSArray *)v75 count];
                    if (v147 == v100)
                    {
                      memset(v164, 0, sizeof(v164));
                      sub_1004BD074(v164, v147);
                      if (v147 >= 1)
                      {
                        for (i = 0; i < v147; ++i)
                        {
                          [-[NSArray objectAtIndexedSubscript:](v99 objectAtIndexedSubscript:{i), "coordinate"}];
                          *buf = v102;
                          [-[NSArray objectAtIndexedSubscript:](v99 objectAtIndexedSubscript:{i), "coordinate"}];
                          *&buf[8] = v103;
                          sub_1004BFA38(v164, buf);
                        }
                      }

                      if (SHIBYTE(v158) < 0)
                      {
                        sub_100007244(&__dst, __src, *(&__src + 1));
                      }

                      else
                      {
                        __dst = __src;
                        v135 = v158;
                      }

                      if (SHIBYTE(v162) < 0)
                      {
                        sub_100007244(&v132, v161, *(&v161 + 1));
                      }

                      else
                      {
                        v132 = v161;
                        v133 = v162;
                      }

                      if (SHIBYTE(v156) < 0)
                      {
                        sub_100007244(&v130, __p, *(&__p + 1));
                      }

                      else
                      {
                        v130 = __p;
                        v131 = v156;
                      }

                      sub_10000EC00(v128, "");
                      sub_100BC869C(buf, &__dst, &v132, &v130, v164, -1, v128, 0, 0);
                      if (v129 < 0)
                      {
                        operator delete(v128[0]);
                      }

                      if (SHIBYTE(v131) < 0)
                      {
                        operator delete(v130);
                      }

                      if (SHIBYTE(v133) < 0)
                      {
                        operator delete(v132);
                      }

                      if (SHIBYTE(v135) < 0)
                      {
                        operator delete(__dst);
                      }

                      if (HIBYTE(v160) == 1)
                      {
                        v173 |= 1uLL;
                      }

                      if (v160 == 1)
                      {
                        v173 |= 2uLL;
                      }

                      if (HIBYTE(v159) == 1)
                      {
                        v173 |= 4uLL;
                      }

                      if (v146)
                      {
                        v173 |= 8uLL;
                      }

                      if (v159 == 1)
                      {
                        v173 |= 0x10uLL;
                      }

                      v174 = v148;
                      v115 = *(*sub_10005BA08(a1) + 16);
                      sub_1004BF718(v127, buf);
                      [v115 requestRegionState:sub_1004BCF74(v127)];
                      sub_1004BF9B8(v127);
                      sub_1004BF9B8(buf);
                      if (v164[0])
                      {
                        v164[1] = v164[0];
                        operator delete(v164[0]);
                      }

                      sub_100005DA4(v169);
                      goto LABEL_424;
                    }

                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v107 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 67240448;
                      *&buf[4] = v147;
                      *&buf[8] = 2050;
                      *&buf[10] = v100;
                      _os_log_impl(dword_100000000, v107, OS_LOG_TYPE_FAULT, "Number of vertices received doesn't match stored, %{public}d, %{public}lu", buf, 0x12u);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_298;
                    }

                    sub_10189692C(buf);
                    LODWORD(v164[0]) = 67240448;
                    HIDWORD(v164[0]) = v147;
                    LOWORD(v164[1]) = 2050;
                    *(&v164[1] + 2) = v100;
                    v108 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v108);
                  }

                  else
                  {
                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v96 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136446210;
                      *&buf[4] = "kCLConnectionMessagePolygonalVerticesKey";
                      _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_298;
                    }

                    sub_10189692C(buf);
                    LODWORD(v164[0]) = 136446210;
                    *(v164 + 4) = "kCLConnectionMessagePolygonalVerticesKey";
                    v108 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v108);
                  }

                  if (v108 != buf)
                  {
                    free(v108);
                  }

                  goto LABEL_298;
                }

                if (qword_1025D4790 != -1)
                {
                  sub_101896904();
                }

                v84 = qword_1025D4798;
                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                {
                  v85 = *(a1 + 24);
                  *buf = 138543362;
                  *&buf[4] = v85;
                  _os_log_impl(dword_100000000, v84, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to use polygonal regions", buf, 0xCu);
                }

                if (!sub_10000A100(121, 0))
                {
                  goto LABEL_425;
                }

LABEL_112:
                sub_10189692C(buf);
                v42 = *(a1 + 24);
                LODWORD(v164[0]) = 138543362;
                *(v164 + 4) = v42;
                v43 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v43);
                goto LABEL_335;
              }

              if (qword_1025D4790 != -1)
              {
                sub_101896904();
              }

              v30 = qword_1025D4798;
              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
              {
                v31 = *(a1 + 24);
                *buf = 138543362;
                *&buf[4] = v31;
                _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have the appropriate entitlement to act as an emergency service", buf, 0xCu);
              }

              if (sub_10000A100(121, 0))
              {
                sub_10189692C(buf);
                v32 = *(a1 + 24);
                LODWORD(v164[0]) = 138543362;
                *(v164 + 4) = v32;
                v13 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v13);
                goto LABEL_285;
              }
            }

            else
            {
              if (qword_1025D47A0 != -1)
              {
                sub_1018969DC();
              }

              v18 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
              {
                *buf = 136446210;
                *&buf[4] = "kCLConnectionMessageEmergencyKey";
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
              }

              if (sub_10000A100(121, 0))
              {
                sub_101896A04(buf);
                LODWORD(v164[0]) = 136446210;
                *(v164 + 4) = "kCLConnectionMessageEmergencyKey";
                v13 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v13);
LABEL_285:
                if (v13 != buf)
                {
                  free(v13);
                }
              }
            }
          }

          else
          {
            if (qword_1025D47A0 != -1)
            {
              sub_1018969DC();
            }

            v17 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
            {
              *buf = 136446210;
              *&buf[4] = "kCLConnectionMessageConservativeEntry";
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 0))
            {
              sub_101896A04(buf);
              LODWORD(v164[0]) = 136446210;
              *(v164 + 4) = "kCLConnectionMessageConservativeEntry";
              v13 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v13);
              goto LABEL_285;
            }
          }
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_1018969DC();
          }

          v16 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446210;
            *&buf[4] = "kCLConnectionMessageNotifyOnExitKey";
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101896A04(buf);
            LODWORD(v164[0]) = 136446210;
            *(v164 + 4) = "kCLConnectionMessageNotifyOnExitKey";
            v13 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v13);
            goto LABEL_285;
          }
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1018969DC();
        }

        v15 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "kCLConnectionMessageNotifyOnEntryKey";
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101896A04(buf);
          LODWORD(v164[0]) = 136446210;
          *(v164 + 4) = "kCLConnectionMessageNotifyOnEntryKey";
          v13 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v13);
          goto LABEL_285;
        }
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018969DC();
      }

      v14 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "kCLConnectionMessageNameKey";
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101896A04(buf);
        LODWORD(v164[0]) = 136446210;
        *(v164 + 4) = "kCLConnectionMessageNameKey";
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v13);
        goto LABEL_285;
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018969DC();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "kCLConnectionMessageRegionTypeKey";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101896A04(buf);
      LODWORD(v164[0]) = 136446210;
      *(v164 + 4) = "kCLConnectionMessageRegionTypeKey";
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v13);
      goto LABEL_285;
    }
  }

LABEL_55:
  if (SHIBYTE(v162) < 0)
  {
    operator delete(v161);
  }
}

void sub_10015A85C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  sub_100005DA4(&STACK[0x3C8]);
  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10015AB7C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = sub_10053C624(a1);
  (*(*v3 + 16))(&v5);
  *(a2 + 8) = (*(*v5 + 16))(v5);
  *a2 = 1;
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void sub_10015AC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1018B7390(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10015AC4C(uint64_t a1)
{
  *a1 = off_10245EFA0;
  if (qword_1025D42C0 != -1)
  {
    sub_10015EEF4();
  }

  v2 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 12);
    *buf = 67240192;
    v7 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Stopping device motion service %{public}#x", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C27B4(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLSensorFusionService::~CLSensorFusionService()", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  return a1;
}

void sub_10015ADE8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10015ADF4()
{
  if (qword_1026638F0 != -1)
  {
    sub_101B28788();
  }

  return qword_102638350;
}

uint64_t sub_10015AE2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_1025D4330 != -1)
  {
    sub_10015659C();
  }

  v3 = qword_1025D4338;
  if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 49) != 0;
    v6 = *(a1 + 50);
    v7 = *(a1 + 51) != 0;
    v8 = *(a1 + 52) != 0;
    v9 = *(a1 + 40);
    v11[0] = 68290563;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1025;
    v15 = v4;
    v16 = 1025;
    v17 = v5;
    v18 = 1025;
    v19 = v6;
    v20 = 1025;
    v21 = v7;
    v22 = 1025;
    v23 = v8;
    v24 = 2049;
    v25 = v9;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Configuration sent, fFallStatsMode:%{private}d, fSensorRecordingActive:%{private}hhd, fSimulateEvent:%{private}d, fUserStudyPressureDataCollection:%{private}hhd, fDetectorEnabled:%{private}hhd, fLastReplyAopTimestamp:%{private}llu}", v11, 0x3Au);
  }

  *(v2 + 247) = *(a1 + 40);
  return (*(*v2 + 552))(v2, 0);
}

uint64_t sub_10015CF34(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102459640;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

uint64_t sub_10015D01C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (sub_100023B68(a1))
  {
    if (a3 < 2)
    {
      v8 = sub_100BC97B0(a2);
      if (qword_1025D4640 != -1)
      {
        sub_1018E918C();
      }

      v9 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        sub_100BC8988(a2, __p);
        v10 = SBYTE3(v25) >= 0 ? __p : *__p;
        *buf = 134284035;
        *&buf[4] = v8;
        v29 = 1025;
        v30 = a3;
        v31 = 2081;
        v32 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Fence: state store, %{private}lld, %{private}d, %{private}s", buf, 0x1Cu);
        if (SBYTE3(v25) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4640 != -1)
        {
          sub_1018E92C0();
        }

        sub_100BC8988(a2, &v26);
        if (v27 >= 0)
        {
          v19 = &v26;
        }

        else
        {
          v19 = v26;
        }

        *__p = 134284035;
        *&__p[4] = v8;
        v22 = 1025;
        v23 = a3;
        v24 = 2081;
        v25 = v19;
        v20 = _os_log_send_and_compose_impl();
        if (v27 < 0)
        {
          operator delete(v26);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitorDatabase::storeFenceState(const CLFenceManager_Type::Fence &, CLFenceManager_Type::FenceStatus)", "%s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      sub_10003848C(__p);
      v11 = sub_100038730((&v23 + 2), "INSERT OR REPLACE INTO ", 23);
      v12 = sub_100038730(v11, "Status", 6);
      v13 = sub_100038730(v12, " (", 2);
      v14 = sub_100038730(v13, "Key", 3);
      v15 = sub_100038730(v14, ", ", 2);
      v16 = sub_100038730(v15, "State", 5);
      sub_100038730(v16, ") VALUES (?, ?)", 15);
      sub_100073518(__p, buf);
      if (SBYTE3(v32) >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      sub_1000388D8(a1, v17);
    }

    if (qword_1025D4640 != -1)
    {
      sub_1018E918C();
    }

    v6 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Fence: state Invalid for DB", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E92E8();
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E918C();
    }

    v7 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Fence: state No access to DB", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E91E4();
    }
  }

  return 0;
}

void sub_10015D740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10015D7C4()
{
  sub_100147E1C(__stack_chk_guard, v5, v6, v7, *v8, v8[4]);
  if (qword_1025D4640 != -1)
  {
    dispatch_once(&qword_1025D4640, &stru_102464610);
  }

  sub_100147CF0();
  v1 = sub_10014AC74();
  sub_100147EC4("Generic", v2, v3, v4, "void CLFenceMonitorDatabase::clearLocationData()", "%s\n");
  if (v1 != v0)
  {
    free(v1);
  }
}

uint64_t sub_10015D8A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000166A8(result, a4);
  }

  return result;
}

void sub_10015D8F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015D914(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018900F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLStreamedLocationProvider::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10189010C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStreamedLocationProvider::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10048C3D4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10015DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, ...)
{
  va_start(va, a13);
  if (a13)
  {
    sub_100008080(a13);
  }

  sub_10001A420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015DF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 248) != 1)
  {
    return a2;
  }

  v5 = sub_1001732D0(a2, 2u);
  if (qword_1025D4230 != -1)
  {
    sub_1018C28EC();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a3 + 16);
    *buf = 134218496;
    v11 = v7;
    v12 = 1026;
    v13 = v3;
    v14 = 1026;
    v15 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Overriding youth type for generic workout, beginTime, %f, before, %{public}d, after, %{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018C2900();
    }

    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMotionActivity::TypeYouth CLFitnessYouthGenericWorkoutOverride::doOverride(CLMotionActivity::TypeYouth, const CLNatalieModelInput &)", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  return v5;
}

void sub_10015E168(uint64_t a1)
{
  *a1 = off_10249F4F8;
  sub_1001FB750((a1 + 32));
  sub_1003C93BC(a1 + 8, *(a1 + 16));

  operator delete();
}

uint64_t sub_10015E1D8(uint64_t result, void *a2)
{
  *(result + 48) = *a2;
  v2 = (result + 48);
  if (*(result + 72))
  {
    v3 = result;
    if (qword_1025D42C0 != -1)
    {
      sub_10015EEF4();
    }

    v4 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
    {
      v5 = *v2;
      v6 = 134349056;
      v7 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Set device motion sensor status %{public}ld", &v6, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C27F8(v2);
    }

    return (*(v3 + 72))(v2, *(v3 + 80));
  }

  return result;
}

void sub_10015E2D8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  if (*(v1 + 96) <= 0.0)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else if (((*(v1 + 178) ^ *(v2 + 82)) >> 8))
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  v6 = sub_1000137E0();
  v7 = *v3;
  if (qword_1025D42C0 != -1)
  {
    sub_10015EEF4();
  }

  v8 = v6 - v7;
  v9 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, v5))
  {
    v10 = *(v3 + 8);
    v11 = *(v3 + 12);
    v12 = *(v3 + 16);
    v13 = *(v3 + 20);
    v14 = *(v3 + 24);
    v15 = *(v3 + 28);
    v16 = *(v3 + 32);
    v17 = (*(v3 + 36) * 57.296);
    v18 = (*(v3 + 40) * 57.296);
    v19 = (*(v3 + 44) * 57.296);
    v20 = *(v3 + 48);
    v21 = *(v3 + 52);
    v22 = *(v3 + 56);
    v23 = *(v3 + 68);
    v24 = *(v3 + 72);
    v25 = *(v3 + 76);
    v26 = *(v3 + 60);
    v27 = *(v3 + 64);
    v28 = *(v3 + 80);
    v29 = *(v3 + 84);
    v30 = *(v3 + 81);
    v31 = *(v3 + 82);
    v32 = *(v3 + 96);
    v33 = *v3;
    *buf = 134224384;
    v93 = v10;
    v94 = 2048;
    v95 = v11;
    v96 = 2048;
    v97 = v12;
    v98 = 2048;
    v99 = v13;
    v100 = 2048;
    v101 = v14;
    v102 = 2048;
    v103 = v15;
    v104 = 2048;
    v105 = v16;
    v106 = 2048;
    v107 = v17;
    v108 = 2048;
    v109 = v18;
    v110 = 2048;
    v111 = v19;
    v112 = 2048;
    v113 = v20;
    v114 = 2048;
    v115 = v21;
    v116 = 2048;
    v117 = v22;
    v118 = 2048;
    v119 = v23;
    v120 = 2048;
    v121 = v24;
    v122 = 2048;
    v123 = v25;
    v124 = 2048;
    v125 = v26;
    v126 = 2048;
    v127 = v27;
    v128 = 1026;
    v129 = v28;
    v130 = 1026;
    v131 = v29;
    v132 = 1026;
    v133 = v30;
    v134 = 1026;
    v135 = v31;
    v136 = 2050;
    v137 = v32;
    v138 = 2050;
    v139 = v33;
    v140 = 2050;
    v141 = v6;
    v142 = 2050;
    v143 = v8;
    _os_log_impl(dword_100000000, v9, v5, "[CLSensorFusionService] q.x,%10.10f,q.y,%10.10f,q.z,%10.10f,q.w,%10.10f,userAccel.x,%10.10f,userAccel.y,%10.10f,userAccel.z,%10.10f,rotationRate.x,%10.10f,rotationRate.y,%10.10f,rotationRate.z,%10.10f,magneticField.x,%10.10f,magneticField.y,%10.10f,magneticField.z,%10.10f,magBiasEstVar.x,%10.10f,magBiasEstVar.y,%10.10f,magBiasEstVar.z,%10.10f,heading,%.3f,accuracy,%.3f,level,%{public}d,variant,%{public}d,mode,%{public}d,status,%{public}#02x,clientID,%{public}llu,timestamp,%{public}lf,now,%{public}lf,latency,%{public}lf", buf, 0xF6u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42C0 != -1)
    {
      sub_1018C2544();
    }

    v67 = *(v3 + 8);
    v68 = *(v3 + 12);
    v69 = *(v3 + 16);
    v70 = *(v3 + 20);
    v71 = *(v3 + 24);
    v72 = *(v3 + 28);
    v73 = *(v3 + 32);
    v74 = (*(v3 + 36) * 57.296);
    v75 = (*(v3 + 40) * 57.296);
    v76 = (*(v3 + 44) * 57.296);
    v77 = *(v3 + 48);
    v78 = *(v3 + 52);
    v79 = *(v3 + 56);
    v80 = *(v3 + 68);
    v81 = *(v3 + 72);
    v82 = *(v3 + 76);
    v83 = *(v3 + 60);
    v84 = *(v3 + 64);
    v85 = *(v3 + 80);
    v86 = *(v3 + 84);
    v87 = *(v3 + 81);
    v88 = *(v3 + 82);
    v89 = *(v3 + 96);
    v90 = *v3;
    *v147 = 134224384;
    *&v147[4] = v67;
    *&v147[12] = 2048;
    *&v147[14] = v68;
    v148 = 2048;
    v149 = v69;
    *v150 = 2048;
    *&v150[2] = v70;
    *&v150[10] = 2048;
    *&v150[12] = v71;
    *&v150[20] = 2048;
    *&v150[22] = v72;
    *&v150[30] = 2048;
    *&v150[32] = v73;
    *v151 = 2048;
    *&v151[2] = v74;
    *&v151[10] = 2048;
    v152 = v75;
    v153 = 2048;
    *v154 = v76;
    *&v154[8] = 2048;
    v155 = v77;
    v156 = 2048;
    v157 = v78;
    v158 = 2048;
    v159 = v79;
    v160 = 2048;
    v161 = v80;
    v162 = 2048;
    v163 = v81;
    v164 = 2048;
    v165 = v82;
    v166 = 2048;
    v167 = v83;
    v168 = 2048;
    v169 = v84;
    v170 = 1026;
    v171 = v85;
    v172 = 1026;
    v173 = v86;
    v174 = 1026;
    v175 = v87;
    v176 = 1026;
    v177 = v88;
    v178 = 2050;
    v179 = v89;
    v180 = 2050;
    v181 = v90;
    v182 = 2050;
    v183 = v6;
    v184 = 2050;
    v185 = v8;
    v91 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLSensorFusionService::logSample(const CLSensorFusionService::Sample *)", "%s\n", v91);
    if (v91 != buf)
    {
      free(v91);
    }
  }

  if (*(v4 + 8) == 1)
  {
    *v147 = off_102491258;
    Current = CFAbsoluteTimeGetCurrent();
    v35 = *v3;
    *&v147[8] = Current;
    v149 = v35;
    *v150 = *(v3 + 8);
    *&v150[16] = *(v3 + 24);
    LODWORD(Current) = *(v3 + 32);
    *&v150[28] = vmul_f32(*(v3 + 36), vdup_n_s32(0x42652EE1u));
    *&v35 = *(v3 + 44) * 57.296;
    *&v150[24] = LODWORD(Current);
    *&v150[36] = LODWORD(v35);
    *v151 = *(v3 + 48);
    LOBYTE(v152) = *(v3 + 80);
    LODWORD(v35) = *(v3 + 60);
    *&v151[8] = *(v3 + 56);
    HIDWORD(v152) = LODWORD(v35);
    *&v154[2] = *(v3 + 64);
    v36 = *(v3 + 81);
    *&v154[6] = *(v3 + 84);
    LODWORD(v155) = v36;
    HIDWORD(v155) = *(v3 + 96);
    v156 = *(v3 + 82);
    v37 = sub_10015ADF4();
    sub_1010CF5BC(v37, v147);
    sub_10152D354(buf);
    sub_101555764(buf);
    v146 |= 1u;
    v144 = *&v147[8];
    v38 = v145;
    v39 = *v3;
    *(v145 + 124) |= 0x10u;
    *(v38 + 40) = v39;
    v40 = v145;
    v41 = *(v3 + 8);
    *(v145 + 124) |= 2u;
    *(v40 + 16) = v41;
    v42 = v145;
    v43 = *(v3 + 12);
    *(v145 + 124) |= 4u;
    *(v42 + 24) = v43;
    v44 = v145;
    v45 = *(v3 + 16);
    *(v145 + 124) |= 8u;
    *(v44 + 32) = v45;
    v46 = v145;
    v47 = *(v3 + 20);
    *(v145 + 124) |= 1u;
    *(v46 + 8) = v47;
    v48 = v145;
    LODWORD(v47) = *(v3 + 24);
    *(v145 + 124) |= 0x40000u;
    *(v48 + 100) = LODWORD(v47);
    v49 = v145;
    LODWORD(v47) = *(v3 + 28);
    *(v145 + 124) |= 0x80000u;
    *(v49 + 104) = LODWORD(v47);
    v50 = v145;
    LODWORD(v47) = *(v3 + 32);
    *(v145 + 124) |= 0x100000u;
    *(v50 + 108) = LODWORD(v47);
    v51 = v145;
    *&v47 = *(v3 + 36) * 57.296;
    *(v145 + 124) |= 0x2000u;
    *(v51 + 80) = LODWORD(v47);
    v52 = v145;
    *&v47 = *(v3 + 40) * 57.296;
    *(v145 + 124) |= 0x4000u;
    *(v52 + 84) = LODWORD(v47);
    v53 = v145;
    *&v47 = *(v3 + 44) * 57.296;
    *(v145 + 124) |= 0x8000u;
    *(v53 + 88) = LODWORD(v47);
    v54 = v145;
    LODWORD(v47) = *(v3 + 48);
    *(v145 + 124) |= 0x100u;
    *(v54 + 60) = LODWORD(v47);
    v55 = v145;
    LODWORD(v47) = *(v3 + 52);
    *(v145 + 124) |= 0x200u;
    *(v55 + 64) = LODWORD(v47);
    v56 = v145;
    LODWORD(v47) = *(v3 + 56);
    *(v145 + 124) |= 0x400u;
    *(v56 + 68) = LODWORD(v47);
    v57 = v145;
    v58 = *(v3 + 80);
    *(v145 + 124) |= 0x80u;
    *(v57 + 56) = v58;
    v59 = v145;
    LODWORD(v47) = *(v3 + 60);
    *(v145 + 124) |= 0x800u;
    *(v59 + 72) = LODWORD(v47);
    v60 = v145;
    LODWORD(v47) = *(v3 + 64);
    *(v145 + 124) |= 0x20u;
    *(v60 + 48) = LODWORD(v47);
    v61 = v145;
    v62 = *(v3 + 81);
    *(v145 + 124) |= 0x1000u;
    *(v61 + 76) = v62;
    v63 = v145;
    v64 = *(v3 + 96);
    *(v145 + 124) |= 0x40u;
    *(v63 + 52) = v64;
    v65 = v145;
    LODWORD(v64) = *(v3 + 82);
    *(v145 + 124) |= 0x10000u;
    *(v65 + 92) = v64;
    v66 = v145;
    LODWORD(v64) = *(v3 + 84);
    *(v145 + 124) |= 0x200000u;
    *(v66 + 112) = v64;
    if (qword_102637F48 != -1)
    {
      sub_1018C2698();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }
}

void sub_10015EAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

void sub_10015EB18(uint64_t a1, __int128 *a2)
{
  sub_10015E2D8(a1);
  v4 = *(a1 + 56);
  if (v4)
  {
    v4(a2, *(a1 + 12), *(a1 + 64));
  }

  os_unfair_lock_lock((a1 + 88));
  v5 = *a2;
  v6 = a2[2];
  *(a1 + 112) = a2[1];
  *(a1 + 128) = v6;
  *(a1 + 96) = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(a1 + 192) = *(a2 + 12);
  *(a1 + 160) = v8;
  *(a1 + 176) = v9;
  *(a1 + 144) = v7;

  os_unfair_lock_unlock((a1 + 88));
}

void *sub_10015EB9C(void *a1, int a2)
{
  sub_10000EC00(__p, "");
  sub_1012C9F34(a1, "MaxMetsHistory", a2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_1024DDA68;
  a1[9] = off_1024DDB20;
  sub_100DD42E4(a1 + 44, 0, 0);
  (*(*a1 + 112))(a1);
  return a1;
}

void sub_10015EC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015EF08(uint64_t a1)
{
  if (qword_1025D42C0 != -1)
  {
    sub_10015EEF4();
  }

  v2 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Dumped gyro cal database with id %@", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C26C0(a1);
  }
}

uint64_t sub_10015EFE0(uint64_t a1, int a2)
{
  *a1 = off_10245EFA0;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 12) = a2;
  v4 = (a1 + 12);
  *(a1 + 16) = xmmword_101C7EEA0;
  v5 = (a1 + 16);
  *(a1 + 32) = xmmword_101C7EEA0;
  v6 = (a1 + 32);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  sub_10011E648((a1 + 104), 0);
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 156) = xmmword_101C79540;
  *(a1 + 172) = 0x1FF00000000;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (qword_1025D42C0 != -1)
  {
    sub_10015EEF4();
  }

  v7 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v4;
    *buf = 67240192;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Starting device motion service %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C2440();
  }

  v9 = sub_100011660();
  sub_100185AC0(v9, buf);
  v10 = sub_10001CB4C(*buf, "LogDeviceMotion", v3);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v10 & 1) == 0)
  {
    *v3 = 0;
  }

  sub_100011660();
  v37 = sub_100974B5C();
  v11 = sub_100011660();
  sub_100185AC0(v11, buf);
  sub_10001CB4C(*buf, "DeviceMotionUseThrottledInterval", &v37);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v12 = sub_100011660();
  sub_100185AC0(v12, buf);
  v13 = sub_1000B9370(*buf, "DeviceMotionAccelerometerUpdateInterval", v5);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v13 & 1) == 0)
  {
    v14 = 0.01;
    if (v37)
    {
      v14 = 0.02;
    }

    *v5 = v14;
  }

  v15 = sub_100011660();
  sub_100185AC0(v15, buf);
  v16 = sub_1000B9370(*buf, "DeviceMotionGyroUpdateInterval", (a1 + 24));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v16 & 1) == 0)
  {
    v17 = 0.005;
    if (v37)
    {
      v17 = 0.02;
    }

    *(a1 + 24) = v17;
  }

  v18 = sub_100011660();
  sub_100185AC0(v18, buf);
  v19 = sub_1000B9370(*buf, "DeviceMotionCompassUpdateInterval", v6);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v19 & 1) == 0)
  {
    *v6 = 0x3F847AE147AE147BLL;
  }

  v20 = sub_10098EAD4();
  v21 = sub_10098F674(v20, (a1 + 24));
  if (qword_1025D42C0 != -1)
  {
    sub_1018C2544();
  }

  v22 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v23 = *v5;
    *buf = 134349312;
    *&buf[4] = v21;
    *&buf[12] = 2050;
    *&buf[14] = v23;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "GyroUpdateInterval,%{public}.4f,AccelerometerUpdateInterval,%{public}.4f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C256C(v5, v21);
  }

  if (*v3)
  {
    v34 = off_102490F98;
    Current = CFAbsoluteTimeGetCurrent();
    v24 = v21;
    v36 = v24;
    v25 = sub_10015ADF4();
    sub_1010CF5BC(v25, &v34);
    sub_10152D354(buf);
    sub_101555374(buf);
    v41 |= 1u;
    v39 = Current;
    v26 = v40;
    *(v40 + 12) |= 1u;
    *(v26 + 8) = v24;
    if (qword_102637F48 != -1)
    {
      sub_1018C2698();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  sub_100011660();
  if (sub_100974B5C())
  {
    v27 = sub_100011660();
    sub_100185AC0(v27, buf);
    LOBYTE(v34) = 0;
    v28 = sub_10001CB4C(*buf, "DumpGyroCalibrationDatabaseOnDeviceMotionStart", &v34);
    v29 = (v28 & v34);
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (v29)
    {
      [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10015EF08;
      v32[3] = &unk_10245EFE8;
      v33 = [NSString stringWithFormat:@"%.0f", v30];
      [objc_msgSend(objc_msgSend(sub_1000133C4() "vendor")];
    }
  }

  return a1;
}

void sub_10015F52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015F578()
{
  sub_10000EC00(byte_102656DB8, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, byte_102656DB8, dword_100000000);
  qword_102656DD0 = off_10245EB80;
  qword_102656DE8 = &qword_102656DD0;
  __cxa_atexit(sub_1003EE78C, &qword_102656DD0, dword_100000000);
  qword_102656DF0 = off_10245EC00;
  qword_102656E08 = &qword_102656DF0;
  __cxa_atexit(sub_1003EE78C, &qword_102656DF0, dword_100000000);
  qword_102656E10 = off_10245EC80;
  qword_102656E28 = &qword_102656E10;
  __cxa_atexit(sub_1003EE790, &qword_102656E10, dword_100000000);
  qword_102656E30 = off_10245ED00;
  qword_102656E48 = &qword_102656E30;

  return __cxa_atexit(sub_1003EE790, &qword_102656E30, dword_100000000);
}

uint64_t sub_10016122C(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018C2348();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C235C();
    }
  }

  return v7;
}

void *sub_100161330(void *a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  *a1 = off_1024A6C20;
  a1[1] = off_1024A6D28;
  v12 = *a2;
  v11 = a2[1];
  a1[2] = off_1024A6DB0;
  a1[3] = v12;
  a1[4] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  sub_101279154((a1 + 5));
  v13 = a3[1];
  a1[11] = *a3;
  a1[12] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  a1[13] = *a4;
  a1[14] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a5[1];
  a1[15] = *a5;
  a1[16] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  a1[17] = a6;
  return a1;
}

void sub_10016143C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100161458(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[1];
  v16 = *a2;
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  v15 = 0;
  v7 = a4[1];
  v12 = *a4;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a5[1];
  v10 = *a5;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100161454(a1, &v16, &v14, &v12, &v10, 0);
  if (v11)
  {
    sub_100008080(v11);
  }

  if (v13)
  {
    sub_100008080(v13);
  }

  if (v15)
  {
    sub_100008080(v15);
  }

  if (v17)
  {
    sub_100008080(v17);
  }

  return a1;
}

void sub_10016152C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    sub_100008080(a3);
  }

  sub_1018C2300((v6 + 8), va, (v5 + 8));
  _Unwind_Resume(a1);
}

void sub_100161590(void *a1)
{
  sub_100147E00(__stack_chk_guard, v6, v7, *v8, v8[4]);
  if (qword_1025D4620 != -1)
  {
    dispatch_once(&qword_1025D4620, &stru_102464560);
  }

  v2 = sub_100148394();
  sub_100147DD8("Generic", v3, v4, v5, "void CLCellLocationMetrics::alsReply(int, CFAbsoluteTime)", "%s\n");
  if (v2 != a1)
  {
    free(v2);
  }
}

void sub_1001616A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 36) = 0;
  v70 = 0;
  v71 = 0;
  v5 = sub_100622F8C(a1, a2, &v71, &v70);
  v6 = *&v5;
  v7 = (*(*a2 + 16))(a2);
  v8 = *(a2 + 4544);
  v9 = *(a2 + 4548);
  v11 = 1.0;
  if (v9 > v8)
  {
    v12 = *(a2 + 352);
    v11 = (v9 - v12) / (v9 - v8);
  }

  v10 = *(a2 + 4536);
  v13 = v10 * sub_100161F00(v11, *(a2 + 4540));
  v14 = v5 & dword_100000000;
  v15 = (v5 & dword_100000000) >> 32;
  v16 = 0.0;
  if ((v5 & dword_100000000) != 0)
  {
    v17 = *&v5;
  }

  else
  {
    v17 = 0.0;
  }

  if (v7)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0.0;
  }

  *a3 = v18;
  *(a3 + 4) = v17;
  v19 = *(a2 + 352);
  v20 = 1.0 - (*(a2 + 4548) - v19) / (*(a2 + 4548) - *(a2 + 4544));
  v21 = 2.0;
  if (v20 <= 2.0)
  {
    v21 = v20;
  }

  if (v20 >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = v22;
  if ((v15 | v7))
  {
    v24 = (*(*a2 + 8))(a2);
    if (v14)
    {
      if (*&v5 > 4.4021)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (v25 == 1)
      {
        v26 = 0;
        v27 = *&v5 - (v23 * -3.9000001 + 2.25);
        v28 = fmaxf(v27, 2.1);
        if ((*(a2 + 1048) < 0.4 || *(a2 + 1052) == 0.0) && *(a2 + 1056) < 40.0)
        {
          v31 = 2.1;
        }

        else
        {
          v31 = v28;
        }

        *(a3 + 28) = v31;
        *(a3 + 32) = 0;
        *(a3 + 20) = v31;
        *(a3 + 24) = 0;
        v67 = v31;
        v32 = 1;
        v16 = v31;
      }

      else
      {
        v26 = 0;
        v67 = 0.0;
        v32 = 0;
        *(a3 + 28) = v5;
        *(a3 + 32) = 0;
        v31 = *&v5;
        v16 = *&v5;
        *(a3 + 20) = v5;
        *(a3 + 24) = 0;
      }
    }

    else
    {
      v67 = 0.0;
      v32 = 0;
      if (v24)
      {
        *(a3 + 28) = v13;
        v26 = 1;
        *(a3 + 32) = 1;
        *(a3 + 20) = v13;
        *(a3 + 24) = 1;
        v31 = v13;
        v16 = v13;
      }

      else
      {
        *(a3 + 28) = 0x300000000;
        *(a3 + 20) = 0x340900000;
        v26 = 3;
        v31 = 4.5;
      }
    }
  }

  else
  {
    v67 = 0.0;
    v32 = 0;
    *(a3 + 28) = 0x500000000;
    *(a3 + 20) = 0x500000000;
    v26 = 5;
    v31 = 0.0;
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018E8DC4();
  }

  v33 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219776;
    *v102 = v31;
    *&v102[8] = 1024;
    v34 = v6;
    *&v102[10] = v26;
    v103 = 2048;
    if (!v14)
    {
      v34 = 0.0;
    }

    v104 = v16;
    v105 = 1024;
    *v106 = v26;
    *&v106[4] = 1024;
    *&v106[6] = v7;
    *v107 = 2048;
    *&v107[2] = v13;
    LOWORD(v108) = 1024;
    *(&v108 + 2) = v15;
    HIWORD(v108) = 2048;
    *v109 = v34;
    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "Rowing Model, METS, %f, userMetsSource, %d, truthMETS, %f, truthMetsSource, %d, hrAvail, %d, hrMets, %f, wrAvail, %d, wrMets, %f", buf, 0x42u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018E8DD8();
    }

    v72 = 134219776;
    *v73 = v31;
    v50 = v6;
    *&v73[8] = 1024;
    if (!v14)
    {
      v50 = 0.0;
    }

    *&v73[10] = v26;
    v74 = 2048;
    v75 = v16;
    v76 = 1024;
    *v77 = v26;
    *&v77[4] = 1024;
    *&v77[6] = v7;
    *v78 = 2048;
    *&v78[2] = v13;
    LOWORD(v79) = 1024;
    *(&v79 + 2) = v15;
    HIWORD(v79) = 2048;
    *v80 = v50;
    v51 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCalorieRowingModelPhone::computeMETS(const CLNatalieModelInput &)", "%s\n", v51);
    if (v51 != buf)
    {
      free(v51);
    }
  }

  v69 = v13;
  v68 = v15;
  v35 = v6;
  if (qword_1025D4230 != -1)
  {
    sub_1018E8DD8();
  }

  v36 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v37 = v7;
    v38 = *(a2 + 1024);
    v39 = *(a2 + 1032);
    v40 = *(a2 + 1044);
    v41 = *(a2 + 1052);
    v42 = v23;
    v43 = *(a2 + 1048);
    v44 = *(a2 + 1056);
    v45 = v70;
    v46 = v71;
    v66 = v32;
    if (v32)
    {
      v47 = v67;
    }

    else
    {
      v47 = 0.0;
    }

    v48 = (*(*a2 + 8))(a2);
    *buf = 67113216;
    v49 = v35;
    *v102 = v68;
    *&v102[4] = 2048;
    if (!v14)
    {
      v49 = 0.0;
    }

    *&v102[6] = v38;
    v7 = v37;
    v103 = 2048;
    v104 = v39;
    v105 = 2048;
    *v106 = v40;
    *&v106[8] = 2048;
    *v107 = v41;
    *&v107[8] = 2048;
    v108 = v43;
    v23 = v42;
    *v109 = 2048;
    *&v109[2] = v44;
    v110 = 2048;
    v111 = v46;
    v112 = 2048;
    v113 = v45;
    v114 = 2048;
    v115 = v42;
    v116 = 2048;
    v117 = v47;
    v32 = v66;
    v118 = 1024;
    v119 = v66;
    v120 = 1024;
    v121 = v37;
    v122 = 1024;
    v123 = v48;
    v124 = 2048;
    v125 = v69;
    v126 = 2048;
    v127 = v49;
    v128 = 2048;
    v129 = v31;
    _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "Rowing Model, work rate, available, %d, data startTime, %f, inertialAccelZMean, %f, horizontalRotationMagMean, %f, freq, %f, amp, %f, power, %f, speed, %f, amplitude, %f, fhr, %f, adjustedWR, %f, hasAdjustedWR, %d, hrAvail, %d, hrGood, %d, hrMets, %f, wrMets, %f, METs, %f", buf, 0x9Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    v52 = v32;
    if (qword_1025D4230 != -1)
    {
      sub_1018E8DD8();
    }

    v53 = v70;
    v54 = *(a2 + 1024);
    v55 = *(a2 + 1032);
    v56 = *(a2 + 1044);
    v57 = *(a2 + 1052);
    v58 = *(a2 + 1048);
    v59 = *(a2 + 1056);
    v60 = v71;
    if (v52)
    {
      v61 = v67;
    }

    else
    {
      v61 = 0.0;
    }

    v62 = (*(*a2 + 8))(a2);
    v63 = *(a3 + 20);
    v64 = v35;
    v72 = 67113216;
    if (!v14)
    {
      v64 = 0.0;
    }

    *v73 = v68;
    *&v73[4] = 2048;
    *&v73[6] = v54;
    v74 = 2048;
    v75 = v55;
    v76 = 2048;
    *v77 = v56;
    *&v77[8] = 2048;
    *v78 = v57;
    *&v78[8] = 2048;
    v79 = v58;
    *v80 = 2048;
    *&v80[2] = v59;
    v81 = 2048;
    v82 = v60;
    v83 = 2048;
    v84 = v53;
    v85 = 2048;
    v86 = v23;
    v87 = 2048;
    v88 = v61;
    v89 = 1024;
    v90 = v52;
    v91 = 1024;
    v92 = v7;
    v93 = 1024;
    v94 = v62;
    v95 = 2048;
    v96 = v69;
    v97 = 2048;
    v98 = v64;
    v99 = 2048;
    v100 = v63;
    v65 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCalorieRowingModelPhone::computeMETS(const CLNatalieModelInput &)", "%s\n", v65);
    if (v65 != buf)
    {
      free(v65);
    }
  }
}

float sub_100161F00(float a1, float a2)
{
  v4 = 0.8856;
  if (a1 > 0.0)
  {
    v4 = (a1 * -0.7123) + 0.8856;
  }

  v5 = 0.88649;
  if (a1 > 0.0)
  {
    v5 = (a1 * -0.71301) + 0.88649;
  }

  if (a2 <= 18.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (qword_1025D4230 != -1)
  {
    sub_10189393C();
  }

  v7 = fmaxf(v6, 0.0);
  v8 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134284033;
    v12 = a1;
    v13 = 2049;
    v14 = a2;
    v15 = 2049;
    v16 = v7;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "HR,fhr,%{private}0.2f,userAge,%{private}0.2f,normalizedMets,%{private}0.2f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101893950();
    }

    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static float CLHeartRateUtility::computeNormMETS(float, float)", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return v7;
}

uint64_t sub_100162124(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1.n128_u64[0];
  if (!sub_1000CCE3C(a3 + 3296, a1))
  {
    return 0;
  }

  v5.n128_u64[0] = v4;
  if (!sub_10016C1DC(a3 + 4304, v5))
  {
    return 0;
  }

  v6.n128_u64[0] = v4;
  if (!sub_100623538(a3 + 4448, v6))
  {
    return 0;
  }

  v7.n128_u64[0] = v4;

  return sub_100553694(a3 + 4376, v7);
}

void sub_1001621B4(__n128 a1, uint64_t a2, void *a3)
{
  v4 = a1.n128_f64[0];
  if (sub_1000CD414((a3 + 466), a1))
  {
    sub_1004A2080((a3 + 466), v5, v4);
    if (v5[208] == 1)
    {
      sub_1004A243C((a3 + 412));
      sub_100553D28(a3 + 538);
      sub_1006233DC(a3 + 556);
      sub_100553BCC(a3 + 547);
    }
  }
}

void sub_100162268(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_3;
  }

  v5 = CFGetUserName();
  sub_1000238CC(v5, &v16);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v16.__r_.__value_.__l.__data_;
  v6 = v16.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v16.__r_.__value_.__l + 2);
  v4 = HIBYTE(v6);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!*(a1 + 8))
  {
    return;
  }

LABEL_11:
  sub_1005654AC(&v15);
  v7 = std::string::append(&v15, "/private/var/Managed Preferences/", 0x21uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  size = v12->__r_.__value_.__l.__size_;
  *a2 = v12->__r_.__value_.__r.__words[0];
  *(a2 + 8) = size;
  *(a2 + 15) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  LOBYTE(size) = *(&v12->__r_.__value_.__s + 23);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a2 + 23) = size;
  if (v14 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_100162394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1001623C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004D3DD4(result, a4);
  }

  return result;
}

void sub_100162428(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100162444(_BYTE *a1, void *a2)
{
  v9 = a2;
  if ((a1[108] & 1) == 0)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 80);
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_10189A8E4();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = a1 + 8;
        if (a1[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189AC68(a1, a2);
      }
    }
  }
}

void *sub_1001625E8(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245EDD0;
  sub_10015D018(a1 + 3, *a2);
  return a1;
}

void *sub_100162648(void *a1, int a2)
{
  sub_10000EC00(__p, "");
  sub_1006551BC(a1, "VO2MaxHistory", a2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_102465800;
  a1[9] = off_1024658C0;
  a1[59] = off_102465910;
  sub_100656900(a1);
  return a1;
}

void sub_100162748(uint64_t a1)
{
  if (sub_100023B68(a1))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v8, "DELETE FROM ", 12);
    sub_100038730(v2, "Status", 6);
    sub_100073518(buf, __p);
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    sub_1000388D8(a1, v3);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E918C();
  }

  v4 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Fence: state No access to DB", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10015D7C4();
  }
}

void sub_1001629EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100162A44()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C75C20;
      v0[3] = unk_101C75C30;
      v0[4] = xmmword_101C75C40;
      v0[0] = xmmword_101C75C00;
      v0[1] = unk_101C75C10;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100162B3C()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100162BB4()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C76BA8;
      v0[3] = unk_101C76BB8;
      v0[4] = xmmword_101C76BC8;
      v0[0] = xmmword_101C76B88;
      v0[1] = unk_101C76B98;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100162CAC()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100162D70()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C79200;
      v0[3] = unk_101C79210;
      v0[4] = xmmword_101C79220;
      v0[0] = xmmword_101C791E0;
      v0[1] = unk_101C791F0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100162E68()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100162F2C()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100162FF0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C7A440;
      v0[3] = unk_101C7A450;
      v0[4] = xmmword_101C7A460;
      v0[0] = xmmword_101C7A420;
      v0[1] = unk_101C7A430;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001630E8()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_1001631AC()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100163224()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C7D860;
      v0[3] = unk_101C7D870;
      v0[4] = xmmword_101C7D880;
      v0[0] = xmmword_101C7D840;
      v0[1] = unk_101C7D850;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016331C()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_1001633E0()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100163458()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_1001634D0()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100163548()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C7F100;
      v0[3] = unk_101C7F110;
      v0[4] = xmmword_101C7F120;
      v0[0] = xmmword_101C7F0E0;
      v0[1] = unk_101C7F0F0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100163640()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_1001636B8()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100163730()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_1001637F4()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10016386C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C807B0;
      v0[3] = unk_101C807C0;
      v0[4] = xmmword_101C807D0;
      v0[0] = xmmword_101C80790;
      v0[1] = unk_101C807A0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100163964()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100163A28()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100163AEC()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100163BB0()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100163C74()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100163D38()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100163DFC()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100163EC0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C898B0;
      v0[3] = unk_101C898C0;
      v0[4] = xmmword_101C898D0;
      v0[0] = xmmword_101C89890;
      v0[1] = unk_101C898A0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100163FB8()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C89CB0;
      v0[3] = unk_101C89CC0;
      v0[4] = xmmword_101C89CD0;
      v0[0] = xmmword_101C89C90;
      v0[1] = unk_101C89CA0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001640B0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8A1C8;
      v0[3] = unk_101C8A1D8;
      v0[4] = xmmword_101C8A1E8;
      v0[0] = xmmword_101C8A1A8;
      v0[1] = unk_101C8A1B8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001641A8()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8C720;
      v0[3] = unk_101C8C730;
      v0[4] = xmmword_101C8C740;
      v0[0] = xmmword_101C8C700;
      v0[1] = unk_101C8C710;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001642A0()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100164364()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8D3F0;
      v0[3] = unk_101C8D400;
      v0[4] = xmmword_101C8D410;
      v0[0] = xmmword_101C8D3D0;
      v0[1] = unk_101C8D3E0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016445C()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100164520()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8DDE8;
      v0[3] = unk_101C8DDF8;
      v0[4] = xmmword_101C8DE08;
      v0[0] = xmmword_101C8DDC8;
      v0[1] = unk_101C8DDD8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164618()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8DE8C;
      v0[3] = unk_101C8DE9C;
      v0[4] = xmmword_101C8DEAC;
      v0[0] = xmmword_101C8DE6C;
      v0[1] = unk_101C8DE7C;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164710()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8E158;
      v0[3] = unk_101C8E168;
      v0[4] = xmmword_101C8E178;
      v0[0] = xmmword_101C8E138;
      v0[1] = unk_101C8E148;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164808()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CA7238;
      v0[3] = unk_101CA7248;
      v0[4] = xmmword_101CA7258;
      v0[0] = xmmword_101CA7218;
      v0[1] = unk_101CA7228;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164900()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100164978()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100164A3C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB0C40;
      v0[3] = unk_101CB0C50;
      v0[4] = xmmword_101CB0C60;
      v0[0] = xmmword_101CB0C20;
      v0[1] = unk_101CB0C30;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164B34()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB0D64;
      v0[3] = unk_101CB0D74;
      v0[4] = xmmword_101CB0D84;
      v0[0] = xmmword_101CB0D44;
      v0[1] = unk_101CB0D54;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}