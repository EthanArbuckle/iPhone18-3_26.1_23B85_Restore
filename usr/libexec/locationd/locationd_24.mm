void sub_10019E358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_100102BC8(&a32);
  sub_100102BC8(&a38);
  _Unwind_Resume(a1);
}

void sub_10019E42C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_10019E484(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100195A00(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_10019E6F8()
{
  if ((atomic_load_explicit(&qword_10265F370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265F370))
  {
    sub_10001CAF4(&v2);
    v4 = 0;
    if (sub_10005BBE4(v2, "maxNumApsToLog", &v4))
    {
      v1 = v4;
    }

    else
    {
      v1 = 50;
    }

    if (v3)
    {
      sub_100008080(v3);
    }

    dword_10265F368 = v1;
    __cxa_guard_release(&qword_10265F370);
  }

  return dword_10265F368;
}

void sub_10019E798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  __cxa_guard_abort(&qword_10265F370);
  _Unwind_Resume(a1);
}

uint64_t sub_10019E7C4(uint64_t result, double *a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    v3 = result;
    v4 = *a2 + -30.0;
    do
    {
      v5 = v3[5];
      if (*(*(v3[2] + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v5 + 8) >= v4)
      {
        break;
      }

      v3[5] = v5 + 1;
      v3[6] = v2 - 1;
      result = sub_100014444((v3 + 1), 1);
      v2 = v3[6];
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10019E848(uint64_t result, int a2, int a3, double a4)
{
  *(result + 72) = a2;
  *(result + 80) = a4;
  *(result + 52) = a3;
  return result;
}

void sub_10019E858(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10019E42C(a1, a2);
  }

  sub_10028C64C();
}

void sub_10019E920(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10019E93C(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100195A00(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_10019EC2C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_10019ED0C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v199 = v3;
  v4 = v0;
  v243 = 0;
  __src = 0;
  v244 = 0;
  v240 = 0;
  __p = 0;
  v241 = 0;
  for (i = *(v0 + 1208); i; i = *i)
  {
    if (sub_100103C94(v4 + 3312))
    {
      *v253 = sub_10018D3FC(v4 + 3312);
      v6 = !sub_100195A00(i + 2, v253);
    }

    else
    {
      v6 = 1;
    }

    v7 = vabdd_f64(*(v4 + 6440), *(i + 13));
    if (!v6 || v7 <= 5.0)
    {
      v8 = v243;
      if (v243 >= v244)
      {
        v14 = __src;
        v15 = v243 - __src;
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5);
        v17 = v16 + 1;
        if (v16 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          goto LABEL_374;
        }

        if (0x5555555555555556 * ((v244 - __src) >> 5) > v17)
        {
          v17 = 0x5555555555555556 * ((v244 - __src) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v244 - __src) >> 5) >= 0x155555555555555)
        {
          v17 = 0x2AAAAAAAAAAAAAALL;
        }

        if (v17)
        {
          sub_1001A1980(&__src, v17);
        }

        v18 = (32 * ((v243 - __src) >> 5));
        v19 = *(i + 5);
        *v18 = *(i + 3);
        v18[1] = v19;
        v20 = *(i + 7);
        v21 = *(i + 9);
        v22 = *(i + 13);
        v18[4] = *(i + 11);
        v18[5] = v22;
        v18[2] = v20;
        v18[3] = v21;
        v13 = 96 * v16 + 96;
        v23 = v18 - v15;
        memcpy(v18 - v15, v14, v15);
        v24 = __src;
        __src = v23;
        v243 = v13;
        v244 = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        v9 = *(i + 5);
        *v243 = *(i + 3);
        v8[1] = v9;
        v10 = *(i + 7);
        v11 = *(i + 9);
        v12 = *(i + 13);
        v8[4] = *(i + 11);
        v8[5] = v12;
        v8[2] = v10;
        v8[3] = v11;
        v13 = (v8 + 6);
      }

      v243 = v13;
    }

    if (v7 <= 30.0)
    {
      v25 = v240;
      if (v240 >= v241)
      {
        v31 = __p;
        v32 = v240 - __p;
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v240 - __p) >> 5);
        v34 = v33 + 1;
        if (v33 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
LABEL_374:
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v241 - __p) >> 5) > v34)
        {
          v34 = 0x5555555555555556 * ((v241 - __p) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v241 - __p) >> 5) >= 0x155555555555555)
        {
          v34 = 0x2AAAAAAAAAAAAAALL;
        }

        if (v34)
        {
          sub_1001A1980(&__p, v34);
        }

        v35 = (32 * ((v240 - __p) >> 5));
        v36 = *(i + 5);
        *v35 = *(i + 3);
        v35[1] = v36;
        v37 = *(i + 7);
        v38 = *(i + 9);
        v39 = *(i + 13);
        v35[4] = *(i + 11);
        v35[5] = v39;
        v35[2] = v37;
        v35[3] = v38;
        v30 = 96 * v33 + 96;
        v40 = v35 - v32;
        memcpy(v35 - v32, v31, v32);
        v41 = __p;
        __p = v40;
        v240 = v30;
        v241 = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        v26 = *(i + 5);
        *v240 = *(i + 3);
        v25[1] = v26;
        v27 = *(i + 7);
        v28 = *(i + 9);
        v29 = *(i + 13);
        v25[4] = *(i + 11);
        v25[5] = v29;
        v25[2] = v27;
        v25[3] = v28;
        v30 = (v25 + 6);
      }

      v240 = v30;
    }
  }

  v198 = v2;
  v238[1] = 0;
  v238[0] = 0;
  v237 = v238;
  v235 = 0;
  v234 = 0;
  v236 = 0;
  for (j = *(v4 + 1168); j; j = *j)
  {
    v43 = j[10];
    v44 = *(v4 + 6440);
    v45 = sub_10019D138((v4 + 1272), j + 2);
    v46 = vabdd_f64(v44, v43);
    if (v46 <= 30.0 && v45 == 0)
    {
      sub_10018F0D0(&v203);
      v48 = *(j + 14);
      *v253 = v203;
      memset(&v203, 0, sizeof(v203));
      *&v253[24] = v48;
      sub_10014E704(&v237, v253);
      if ((v253[23] & 0x80000000) != 0)
      {
        operator delete(*v253);
      }

      if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v203.__r_.__value_.__l.__data_);
      }
    }

    v49 = sub_100103C94(v4 + 3312);
    if (v49)
    {
      *v253 = sub_10018D3FC(v4 + 3312);
      v49 = sub_100195A00(j + 2, v253);
    }

    if (v46 <= 5.0 || v49 != 0)
    {
      sub_10018F0D0(&v203);
      v51 = v235;
      if (v235 >= v236)
      {
        v53 = 0xAAAAAAAAAAAAAAABLL * ((v235 - v234) >> 3);
        v54 = v53 + 1;
        if (v53 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v236 - v234) >> 3) > v54)
        {
          v54 = 0x5555555555555556 * ((v236 - v234) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v236 - v234) >> 3) >= 0x555555555555555)
        {
          v55 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v55 = v54;
        }

        *&v253[32] = &v234;
        if (v55)
        {
          sub_1001A19D8(&v234, v55);
        }

        v56 = 8 * ((v235 - v234) >> 3);
        v57 = *&v203.__r_.__value_.__l.__data_;
        *(v56 + 16) = *(&v203.__r_.__value_.__l + 2);
        *v56 = v57;
        memset(&v203, 0, sizeof(v203));
        v58 = 24 * v53 + 24;
        v59 = (24 * v53 - (v235 - v234));
        memcpy((v56 - (v235 - v234)), v234, v235 - v234);
        v60 = v234;
        v61 = v236;
        v234 = v59;
        v235 = v58;
        v236 = 0;
        *&v253[16] = v60;
        *&v253[24] = v61;
        *&v253[8] = v60;
        *v253 = v60;
        sub_100197A50(v253);
        v235 = v58;
        if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v203.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v52 = *&v203.__r_.__value_.__l.__data_;
        *(v235 + 2) = *(&v203.__r_.__value_.__l + 2);
        *v51 = v52;
        v235 = v51 + 24;
      }
    }
  }

  memset(&v203, 0, sizeof(v203));
  v62 = __src;
  v63 = v243;
  if (__src == v243)
  {
    v81 = 0;
  }

  else
  {
    do
    {
      if (sub_10019A2D4(v62) && v62[4] > 0.0)
      {
        size = v203.__r_.__value_.__l.__size_;
        if (v203.__r_.__value_.__l.__size_ >= v203.__r_.__value_.__r.__words[2])
        {
          v70 = v203.__r_.__value_.__r.__words[0];
          v71 = v203.__r_.__value_.__l.__size_ - v203.__r_.__value_.__r.__words[0];
          v72 = 0xAAAAAAAAAAAAAAABLL * ((v203.__r_.__value_.__l.__size_ - v203.__r_.__value_.__r.__words[0]) >> 5);
          v73 = v72 + 1;
          if (v72 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v203.__r_.__value_.__r.__words[2] - v203.__r_.__value_.__r.__words[0]) >> 5) > v73)
          {
            v73 = 0x5555555555555556 * ((v203.__r_.__value_.__r.__words[2] - v203.__r_.__value_.__r.__words[0]) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v203.__r_.__value_.__r.__words[2] - v203.__r_.__value_.__r.__words[0]) >> 5) >= 0x155555555555555)
          {
            v73 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v73)
          {
            sub_1001A1980(&v203, v73);
          }

          v74 = (32 * ((v203.__r_.__value_.__l.__size_ - v203.__r_.__value_.__r.__words[0]) >> 5));
          v75 = *(v62 + 1);
          *v74 = *v62;
          v74[1] = v75;
          v76 = *(v62 + 2);
          v77 = *(v62 + 3);
          v78 = *(v62 + 5);
          v74[4] = *(v62 + 4);
          v74[5] = v78;
          v74[2] = v76;
          v74[3] = v77;
          v69 = 96 * v72 + 96;
          v79 = 96 * v72 - v71;
          memcpy(v74 - v71, v70, v71);
          v80 = v203.__r_.__value_.__r.__words[0];
          v203.__r_.__value_.__r.__words[0] = v79;
          *&v203.__r_.__value_.__r.__words[1] = v69;
          if (v80)
          {
            operator delete(v80);
          }
        }

        else
        {
          v65 = *(v62 + 1);
          *v203.__r_.__value_.__l.__size_ = *v62;
          size[1] = v65;
          v66 = *(v62 + 2);
          v67 = *(v62 + 3);
          v68 = *(v62 + 5);
          size[4] = *(v62 + 4);
          size[5] = v68;
          size[2] = v66;
          size[3] = v67;
          v69 = (size + 6);
        }

        v203.__r_.__value_.__l.__size_ = v69;
      }

      v62 += 12;
    }

    while (v62 != v63);
    v81 = -1431655765 * ((v203.__r_.__value_.__l.__size_ - v203.__r_.__value_.__r.__words[0]) >> 5);
  }

  v82 = v2;
  v83 = v235;
  v84 = v234;
  HIDWORD(v85) = -1030792151 * rand() + 85899344;
  LODWORD(v85) = HIDWORD(v85);
  if ((v85 >> 2) <= 0x28F5C28)
  {
    *v253 = _NSConcreteStackBlock;
    *&v253[8] = 3221225472;
    *&v253[16] = sub_1008DEA5C;
    *&v253[24] = &unk_10247D368;
    *&v253[32] = -1431655765 * ((v83 - v84) >> 3);
    *&v253[36] = v81;
    *&v253[40] = (v81 * 100.0 / *&v253[32]);
    AnalyticsSendEventLazy();
  }

  if (v203.__r_.__value_.__r.__words[0])
  {
    v203.__r_.__value_.__l.__size_ = v203.__r_.__value_.__r.__words[0];
    operator delete(v203.__r_.__value_.__l.__data_);
  }

  v223 = 0;
  v224 = 0;
  v227 = 0;
  v228 = 0;
  memset(v221, 0, sizeof(v221));
  v222 = 0;
  v226 = 0;
  v225 = 0u;
  v229 = 0u;
  memset(v230, 0, sizeof(v230));
  v231 = 0xFFFFFFFFLL;
  *v232 = 0u;
  memset(v233, 0, sizeof(v233));
  v218 = 0;
  v217 = 0;
  v220 = 0;
  v219 = 0;
  sub_10019D234(&v237, &__src, &__p, v4 + 3432, v4 + 5064, v2 + 3120, *(v4 + 3296), &v217, v207, *(v4 + 6440), v221, *(v4 + 6428));
  *&v210[12] = *(v4 + 6440);
  LODWORD(v211) = 4;
  sub_1001A9A10(v4, v207);
  sub_1001A5BFC(&v203, &__src);
  sub_1001A655C(&v203);
  sub_1001AB570(&v203, v207);
  sub_1001A6EF8(&v203, (v4 + 3432), (v4 + 3592));
  sub_1001A6DF0(&v203, v207);
  sub_1001A6F7C(&v203, v207);
  sub_1001A9A10(v4, v207);
  v86 = HIDWORD(v214);
  if (v86 >= *sub_1001AB6A8() && sub_100072814(v207))
  {
    if (qword_1025D4620 != -1)
    {
      sub_10196A0D4();
    }

    v87 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_1001D78F4(v253);
      v88 = v253[23] >= 0 ? v253 : *v253;
      LODWORD(v262[0]) = 136642819;
      *(v262 + 4) = v88;
      _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, updating reference multi-AP wifi location to %{sensitive}s", v262, 0xCu);
      if ((v253[23] & 0x80000000) != 0)
      {
        operator delete(*v253);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A0FC(v253);
      sub_1001D78F4(v262);
      if ((SBYTE7(v263) & 0x80u) == 0)
      {
        v183 = v262;
      }

      else
      {
        v183 = v262[0];
      }

      *v252 = 136642819;
      *&v252[4] = v183;
      v184 = _os_log_send_and_compose_impl();
      if (SBYTE7(v263) < 0)
      {
        operator delete(v262[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v184);
      if (v184 != v253)
      {
        free(v184);
      }
    }

    v89 = v214;
    *(v2 + 5376) = v213;
    *(v2 + 5392) = v89;
    *(v2 + 5408) = v215;
    v90 = *&v210[16];
    *(v2 + 5312) = *v210;
    *(v2 + 5328) = v90;
    v91 = v212;
    *(v2 + 5344) = v211;
    *(v2 + 5360) = v91;
    v92 = v207[1];
    *(v2 + 5248) = v207[0];
    *(v2 + 5264) = v92;
    v93 = v209;
    *(v2 + 5280) = v208;
    *(v2 + 5424) = v216;
    *(v2 + 5296) = v93;
    sub_1001EAAC8(v207, v253);
    memcpy((v2 + 5432), v253, 0x201uLL);
    v94 = v254;
    v254 = 0u;
    v95 = *(v2 + 5960);
    *(v2 + 5952) = v94;
    if (v95)
    {
      sub_100008080(v95);
      v96 = v257;
      *(v2 + 6016) = v258;
      v97 = v260[0];
      *(v2 + 6032) = v259;
      *(v2 + 6048) = v97;
      *(v2 + 6057) = *(v260 + 9);
      v98 = v256;
      *(v2 + 5968) = v255;
      *(v2 + 5984) = v98;
      v99 = *(&v254 + 1);
      *(v2 + 6000) = v96;
      if (v99)
      {
        sub_100008080(v99);
      }
    }

    else
    {
      v100 = v257;
      *(v2 + 6016) = v258;
      v101 = v260[0];
      *(v2 + 6032) = v259;
      *(v2 + 6048) = v101;
      *(v2 + 6057) = *(v260 + 9);
      v102 = v256;
      *(v2 + 5968) = v255;
      *(v2 + 5984) = v102;
      *(v2 + 6000) = v100;
    }
  }

  sub_1001A7094(v253);
  v103 = sub_1001AB6B4(*v253);
  if (*&v253[8])
  {
    sub_100008080(*&v253[8]);
  }

  if (v103 && [v103 isValid])
  {
    [v103 submitMetricsIfPossible:sub_100103C94(v4 + 3312)];
  }

  v104 = sub_100100690();
  if (sub_1001AB710(v104))
  {
    if (sub_100103C94(v4 + 3312))
    {
      sub_1001A74F0(v253);
      v105 = *v253;
      v106 = nullsub_34(v4 + 3312);
      sub_1001A3F20(v105, v207, v106);
      if (*&v253[8])
      {
        sub_100008080(*&v253[8]);
      }
    }

    else if (sub_10001CF3C())
    {
      *v253 = 0xFFFFFFFFFFFFLL;
      memset(&v253[8], 0, 28);
      *&v253[36] = 0x270FFFFFFFFFLL;
      *&v253[48] = xmmword_101C75BF0;
      *&v253[64] = 0;
      *&v253[68] = 0;
      v253[72] = 0;
      *&v253[80] = 0;
      sub_1001A74F0(v262);
      sub_1001A3F20(v262[0], v207, v253);
      if (v262[1])
      {
        sub_100008080(v262[1]);
      }

      if ((v253[31] & 0x80000000) != 0)
      {
        operator delete(*&v253[8]);
      }
    }
  }

  v107 = sub_100103C94(v4 + 3312);
  LOBYTE(v201) = 0;
  v202 = 0;
  LOBYTE(v262[0]) = 0;
  v268 = 0;
  if (v107)
  {
    v202 = !v202;
    v201 = sub_10018D3FC(v4 + 3312);
    v108 = *(v4 + 1360);
    v109 = *(v4 + 1392);
    v266 = *(v4 + 1376);
    v267 = v109;
    v268 = *(v4 + 1408);
    v110 = *(v4 + 1328);
    *v262 = *(v4 + 1312);
    v263 = v110;
    v111 = *(v4 + 1344);
    v112 = 1;
    v265 = v108;
    v264 = v111;
  }

  else
  {
    v113 = sub_10001CF3C() ^ 1;
    if (!v103)
    {
      LOBYTE(v113) = 1;
    }

    if ((v113 & 1) != 0 || ![v103 isValid])
    {
      v112 = 0;
    }

    else
    {
      [v103 fetchAllEntries];
      sub_1008DE0E0(*(v4 + 3264), v252);
      v114 = sub_100FB1BBC(v252, v251);
      v112 = v115;
      v201 = v114;
      v202 = v115;
      if (v115)
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v116 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(v253);
          v117 = v253[23] >= 0 ? v253 : *v253;
          LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
          *(buf.__r_.__value_.__r.__words + 4) = v117;
          _os_log_impl(dword_100000000, v116, OS_LOG_TYPE_DEFAULT, "WifiCalc, selected associated AP %{private}s", &buf, 0xCu);
          if ((v253[23] & 0x80000000) != 0)
          {
            operator delete(*v253);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A0FC(v253);
          sub_10018F0D0(&buf);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v261 = 136380675;
          *&v261[4] = p_buf;
          v189 = _os_log_send_and_compose_impl();
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v189);
          if (v189 != v253)
          {
            free(v189);
          }

          v82 = v2;
        }

        ++*(*(v82 + 6480) + 228);
        if (v268 == 1)
        {
          v268 = 0;
        }
      }

      else
      {
        ++*(*(v2 + 6480) + 232);
      }

      AnalyticsSendEventLazy();
      sub_1004906DC(v252);
      *v253 = v251;
      sub_1002394D8(v253);
    }
  }

  v118 = sub_10001CF3C();
  v119 = v202;
  if (v112 & 1 | ((v118 & 1) == 0))
  {
    if ((v112 & 1) == 0)
    {
      if (v202)
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v120 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
        {
          *v253 = 0;
          _os_log_impl(dword_100000000, v120, OS_LOG_TYPE_FAULT, "WifiCalc, error, associated AP mac is available but unassociated", v253, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10196A0FC(v253);
          *v252 = 0;
          v121 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v121);
          if (v121 != v253)
          {
            free(v121);
          }

          v82 = v2;
        }
      }

      goto LABEL_166;
    }

    goto LABEL_149;
  }

  if (v202)
  {
    v201 = 0xFFFFFFFFFFFFLL;
    if ((v268 & 1) == 0)
    {
      v119 = 1;
LABEL_149:
      if ((v119 & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v122 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
        {
          *v253 = 0;
          _os_log_impl(dword_100000000, v122, OS_LOG_TYPE_FAULT, "WifiCalc, error, associated AP mac is unavailable but associated", v253, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10196A0FC(v253);
          *v252 = 0;
          v123 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v123);
          if (v123 != v253)
          {
            free(v123);
          }

          v82 = v2;
        }
      }

      goto LABEL_160;
    }
  }

  else
  {
    v202 = 1;
    v201 = 0xFFFFFFFFFFFFLL;
    if (v268 != 1)
    {
      goto LABEL_160;
    }
  }

  v268 = 0;
LABEL_160:
  if (v202)
  {
    sub_1001A7094(v251);
    sub_10000EC00(v252, "Wifi1");
    sub_1001AE1C8(v253, &v201, v262, v251, v4 + 6528, v252, v4 + 3432);
    if ((v252[23] & 0x80000000) != 0)
    {
      operator delete(*v252);
    }

    if (*(&v251[0] + 1))
    {
      sub_100008080(*(&v251[0] + 1));
    }

    sub_1001ABDBC(v253, v207);
    sub_1001E4D1C(v253);
    sub_1001E314C(v253);
  }

LABEL_166:
  if (sub_10001CF3C())
  {
    if (*(sub_1001A8F5C() + 121) == 1)
    {
      sub_10049138C(v253);
      sub_100491F04(*v253, v207);
      if (*&v253[8])
      {
        sub_100008080(*&v253[8]);
      }
    }
  }

  v124 = v243 - __src;
  if (v243 != __src)
  {
    v125 = HIDWORD(v214);
    v126 = *(v4 + 1136);
    if (v126)
    {
      v127 = (100 * HIDWORD(v214)) / v126;
    }

    else
    {
      LODWORD(v127) = -1;
    }

    if (qword_1025D4630 != -1)
    {
      sub_10196A140();
    }

    v128 = -1431655765 * (v124 >> 5) - v125;
    v129 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v130 = *(v4 + 1136);
      *v253 = 67241218;
      *&v253[4] = v130;
      *&v253[8] = 2082;
      *&v253[10] = v199;
      *&v253[18] = 1026;
      *&v253[20] = HIDWORD(v214);
      *&v253[24] = 1026;
      *&v253[26] = v128;
      *&v253[30] = 1026;
      *&v253[32] = v127;
      _os_log_impl(dword_100000000, v129, OS_LOG_TYPE_DEBUG, "WlpMetric, fixaps, %{public}d, trigger, %{public}s, used, %{public}d, out, %{public}d, pct, %{public}d", v253, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A168(v253);
      v177 = *(v4 + 1136);
      *v252 = 67241218;
      *&v252[4] = v177;
      *&v252[8] = 2082;
      *&v252[10] = v199;
      *&v252[18] = 1026;
      *&v252[20] = HIDWORD(v214);
      *&v252[24] = 1026;
      *&v252[26] = v128;
      *&v252[30] = 1026;
      *&v252[32] = v127;
      v178 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v178);
      if (v178 != v253)
      {
        free(v178);
      }
    }

    if ((*(v4 + 6496) & 0xF) == 0)
    {
      AnalyticsSendEventLazy();
    }

    if (HIDWORD(v214))
    {
      if (HIDWORD(v214) == 1)
      {
        v131 = "1AP";
      }

      else
      {
        v131 = "MultiAP";
      }

      if (sub_10002807C(*(v207 + 4), *(v207 + 12)))
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v132 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *v253 = 136380931;
          *&v253[4] = "wifi, null";
          *&v253[12] = 2081;
          *&v253[14] = v131;
          _os_log_impl(dword_100000000, v132, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", v253, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A0FC(v253);
          *v252 = 136380931;
          *&v252[4] = "wifi, null";
          *&v252[12] = 2081;
          *&v252[14] = v131;
          v185 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v185);
          if (v185 != v253)
          {
            free(v185);
          }

          v82 = v2;
        }

        AnalyticsSendEventLazy();
      }

      if (*(v207 + 4) == -1.0 && *(v207 + 12) == -1.0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v133 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *v253 = 136380931;
          *&v253[4] = "wifi, sentinel";
          *&v253[12] = 2081;
          *&v253[14] = v131;
          _os_log_impl(dword_100000000, v133, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", v253, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A0FC(v253);
          *v252 = 136380931;
          *&v252[4] = "wifi, sentinel";
          *&v252[12] = 2081;
          *&v252[14] = v131;
          v186 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v186);
          if (v186 != v253)
          {
            free(v186);
          }

          v82 = v2;
        }

        AnalyticsSendEventLazy();
      }
    }
  }

  *&v210[24] = *(v4 + 6288) * 1.5;
  LODWORD(v213) = sub_1001E4D24(v207, v82 + 5248, v82 + 5432, v4 + 4240, v4 + 4400);
  if (*(&v207[1] + 4) >= 0.0 && *(&v207[1] + 4) < 20.0)
  {
    *(&v207[1] + 4) = 0x4034000000000000;
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A140();
  }

  v134 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *v253 = 67241730;
    *&v253[4] = HIDWORD(v214);
    *&v253[8] = 2050;
    *&v253[10] = *(&v207[1] + 4);
    *&v253[18] = 1026;
    *&v253[20] = v215;
    *&v253[24] = 2050;
    *&v253[26] = *(&v208 + 4);
    *&v253[34] = 1026;
    *&v253[36] = *&v210[20];
    *&v253[40] = 2082;
    *&v253[42] = v199;
    *&v253[50] = 2050;
    *&v253[52] = *&v210[12];
    _os_log_impl(dword_100000000, v134, OS_LOG_TYPE_DEFAULT, "@WifiFlow, compute, %{public}u, hacc, %{public}.1f, vaps, %{public}u, vacc, %{public}.1f, conf, %{public}d, reason, %{public}s, time, %{public}.1f", v253, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A168(v253);
    *v252 = 67241730;
    *&v252[4] = HIDWORD(v214);
    *&v252[8] = 2050;
    *&v252[10] = *(&v207[1] + 4);
    *&v252[18] = 1026;
    *&v252[20] = v215;
    *&v252[24] = 2050;
    *&v252[26] = *(&v208 + 4);
    *&v252[34] = 1026;
    *&v252[36] = *&v210[20];
    *&v252[40] = 2082;
    *&v252[42] = v199;
    *&v252[50] = 2050;
    *&v252[52] = *&v210[12];
    v176 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v176);
    if (v176 != v253)
    {
      free(v176);
    }
  }

  if (!sub_100072814(v207))
  {
    goto LABEL_283;
  }

  v135 = *(v4 + 3436);
  v136 = *(v4 + 3444);
  v137 = *(v4 + 3452);
  v138 = *(v4 + 3476);
  v251[0] = *(v4 + 3460);
  v251[1] = v138;
  v251[2] = *(v4 + 3492);
  v139 = *(v4 + 3508);
  *v261 = *(v4 + 3516);
  *&v261[8] = *(v4 + 3524);
  v140 = *(v4 + 3528);
  v141 = *(v4 + 3532);
  v142 = *(v4 + 3548);
  v143 = *(v4 + 3564);
  *&v252[48] = *(v4 + 3580);
  *&v252[32] = v143;
  v144 = *(v4 + 6424) - 1;
  if (v144 >= 2)
  {
    v145 = "moving";
  }

  else
  {
    v145 = "static";
  }

  v146 = *&v210[12] - v139;
  *&v252[16] = v142;
  *v252 = v141;
  v147 = *(v4 + 6080);
  if (v137 > 0.0 && v140 <= 0xB && ((1 << v140) & 0xC02) != 0)
  {
    if (v144 >= 2)
    {
      v148 = v146 >= 1.25;
    }

    else
    {
      v148 = *&v210[12] <= v147;
    }

    if (!v148)
    {
      v152 = sub_100117154(*(v207 + 4), *(v207 + 12), v135, v136);
      if (*(&v207[1] + 4) > 0.0)
      {
        v153 = v152 / *(&v207[1] + 4);
      }

      else
      {
        v153 = -1.0;
      }

      if (v146 <= 1.25)
      {
        v154 = 1;
      }

      else if (v146 <= 3.0)
      {
        v154 = 3;
      }

      else if (v146 <= 10.0)
      {
        v154 = 10;
      }

      else if (v146 <= 30.0)
      {
        v154 = 30;
      }

      else if (v146 <= 60.0)
      {
        v154 = 600;
      }

      else if (v146 <= 1800.0)
      {
        v154 = 1800;
      }

      else if (v146 <= 3600.0)
      {
        v154 = 3600;
      }

      else if (v146 > 18000.0)
      {
        v154 = 3601;
      }

      else
      {
        v154 = 18000;
      }

      v192 = v154;
      v200 = HIDWORD(v214);
      v193 = v145;
      if (BYTE4(v216))
      {
        v155 = 1;
      }

      else
      {
        v155 = -1431655765 * ((v218 - v217) >> 3);
      }

      if (v155 != HIDWORD(v214))
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v156 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
        {
          *v253 = 67240448;
          *&v253[4] = v155;
          *&v253[8] = 1026;
          *&v253[10] = v200;
          _os_log_impl(dword_100000000, v156, OS_LOG_TYPE_ERROR, "Invalid apsUsedInCalculation, numberOfApsUsedInHorizontalCalculation. apsUsedInCalculation: %{public}u, numberOfApsUsedInHorizontalCalculation: %{public}u", v253, 0xEu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10196A168(v253);
          LODWORD(buf.__r_.__value_.__l.__data_) = 67240448;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v155;
          LOWORD(buf.__r_.__value_.__r.__words[1]) = 1026;
          *(&buf.__r_.__value_.__r.__words[1] + 2) = v200;
          v190 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v190);
          if (v190 != v253)
          {
            free(v190);
          }

          v82 = v2;
        }
      }

      v157 = v220;
      if (BYTE4(v216))
      {
        v158 = 0;
      }

      else
      {
        v158 = v220;
      }

      v196 = v158;
      v159 = v200 - v158;
      if (BYTE4(v216))
      {
        v160 = 0;
      }

      else
      {
        v160 = v200 - v158;
      }

      v197 = v160;
      if (!BYTE4(v216) && (v220 > v200 || v159 + v220 != v200))
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v161 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
        {
          *v253 = 67240704;
          *&v253[4] = v157;
          *&v253[8] = 1026;
          *&v253[10] = v159;
          *&v253[14] = 1026;
          *&v253[16] = v200;
          _os_log_impl(dword_100000000, v161, OS_LOG_TYPE_ERROR, "Invalid tile, ALS AP counts. numberOfTileApsUsedInHorizontalCalculation: %{public}u, numberOfAlsApsUsedInHorizontalCalculation: %{public}u, numberOfApsUsedInHorizontalCalculation: %{public}u", v253, 0x14u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10196A168(v253);
          LODWORD(buf.__r_.__value_.__l.__data_) = 67240704;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v157;
          LOWORD(buf.__r_.__value_.__r.__words[1]) = 1026;
          *(&buf.__r_.__value_.__r.__words[1] + 2) = v159;
          HIWORD(buf.__r_.__value_.__r.__words[1]) = 1026;
          LODWORD(buf.__r_.__value_.__r.__words[2]) = v200;
          v191 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v191);
          if (v191 != v253)
          {
            free(v191);
          }

          v82 = v2;
        }
      }

      sub_10031BA04(v197, v200, 100);
      sub_10031BA04(v196, v200, 100);
      v162 = *(v82 + 1256);
      v194 = *(v82 + 1216);
      v195 = *(v82 + 1296);
      v163 = v195 + v162 + v194;
      sub_10031BA04(v194, v163, 100);
      sub_10031BA04(v195 + v162, v163, 100);
      sub_10031BA04(v162, v163, 100);
      sub_10031BA04(v195, v163, 100);
      sub_10031BA04(v200, v163, 100);
      sub_10031BA04(v200, v194, 100);
      if (qword_1025D4630 != -1)
      {
        sub_10196A140();
      }

      v164 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        *v253 = 134350082;
        *&v253[4] = v152;
        *&v253[12] = 2082;
        *&v253[14] = v193;
        *&v253[22] = 2050;
        *&v253[24] = v146;
        *&v253[32] = 1026;
        *&v253[34] = v192;
        *&v253[38] = 2050;
        *&v253[40] = v153;
        _os_log_impl(dword_100000000, v164, OS_LOG_TYPE_DEBUG, "WlpMetric, fixerror, %{public}.1f, agetype, %{public}s, dt, %{public}.1f, %{public}d, horizontalErrorRatio, %{public}.1f", v253, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10196A168(v253);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134350082;
        *(buf.__r_.__value_.__r.__words + 4) = v152;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v193;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
        v246 = v146;
        v247 = 1026;
        v248 = v192;
        v249 = 2050;
        v250 = v153;
        v187 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v187);
        if (v187 != v253)
        {
          free(v187);
        }

        v82 = v198;
      }

      if ((*(v4 + 6496) & 0xF) == 0)
      {
        goto LABEL_282;
      }

      goto LABEL_283;
    }

    v149 = "timebad";
  }

  else
  {
    if (v144 >= 2)
    {
      v150 = v146 >= 1.25;
    }

    else
    {
      v150 = *&v210[12] <= v147;
    }

    if (v150)
    {
      v149 = "bothbad";
    }

    else
    {
      v149 = "placebad";
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A140();
  }

  v151 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *v253 = 136446210;
    *&v253[4] = v149;
    _os_log_impl(dword_100000000, v151, OS_LOG_TYPE_DEBUG, "WlpMetric, fixerror, %{public}s", v253, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A168(v253);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v149;
    v182 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v182);
    if (v182 != v253)
    {
      free(v182);
    }
  }

  if ((*(v4 + 6496) & 0xF) == 0)
  {
LABEL_282:
    AnalyticsSendEventLazy();
  }

LABEL_283:
  *(v82 + 1592) = v216;
  v165 = v214;
  *(v82 + 1544) = v213;
  *(v82 + 1560) = v165;
  *(v82 + 1576) = v215;
  v166 = *&v210[16];
  *(v82 + 1480) = *v210;
  *(v82 + 1496) = v166;
  v167 = v212;
  *(v82 + 1512) = v211;
  *(v82 + 1528) = v167;
  v168 = v207[1];
  *(v82 + 1416) = v207[0];
  *(v82 + 1432) = v168;
  v169 = v209;
  *(v82 + 1448) = v208;
  *(v82 + 1464) = v169;
  if (!sub_100072814(v82 + 1416))
  {
    if (*(v82 + 1176))
    {
      if (__src == v243)
      {
        sub_1002D9AF0((v82 + 1600), "invalidComputedLocation_NoValidHorizontalAPs");
      }

      else if (HIDWORD(v214))
      {
        sub_1002D9AF0((v82 + 1600), "invalidComputedLocation_Other");
      }

      else
      {
        sub_1002D9AF0((v82 + 1600), "invalidComputedLocation_NoAPsUsedInHorizontalCalculation");
      }
    }

    else
    {
      sub_1002D9AF0((v82 + 1600), "invalidComputedLocation_EmptyScan");
    }
  }

  *(v82 + 1632) = sub_1001E36C0(v4, v82 + 1416);
  v170 = sub_100072814(v207);
  v171 = *(v82 + 6480);
  if (v170)
  {
    ++*(v171 + 236);
  }

  else
  {
    ++*(v171 + 240);
  }

  if (sub_100103C94(v4 + 3312))
  {
    if (qword_1025D4620 != -1)
    {
      sub_10196A0D4();
    }

    v172 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *&v251[0] = sub_10018D3FC(v4 + 3312);
      sub_10018F0D0(v253);
      v173 = v253[23] >= 0 ? v253 : *v253;
      *v252 = 136380675;
      *&v252[4] = v173;
      _os_log_impl(dword_100000000, v172, OS_LOG_TYPE_DEFAULT, "WifiCalc, associated AP set: YES, %{private}s", v252, 0xCu);
      if ((v253[23] & 0x80000000) != 0)
      {
        operator delete(*v253);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A0FC(v253);
      buf.__r_.__value_.__r.__words[0] = sub_10018D3FC(v4 + 3312);
      sub_10018F0D0(v252);
      if (v252[23] >= 0)
      {
        v180 = v252;
      }

      else
      {
        v180 = *v252;
      }

      LODWORD(v251[0]) = 136380675;
      *(v251 + 4) = v180;
      v181 = _os_log_send_and_compose_impl();
      if ((v252[23] & 0x80000000) != 0)
      {
        operator delete(*v252);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v181);
      if (v181 != v253)
      {
        free(v181);
      }
    }

    v174 = *(v82 + 6480);
    ++v174[54];
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10196A0D4();
    }

    v175 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *v253 = 0;
      _os_log_impl(dword_100000000, v175, OS_LOG_TYPE_DEFAULT, "WifiCalc, associated AP set: NO", v253, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A0FC(v253);
      *v252 = 0;
      v179 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v179);
      if (v179 != v253)
      {
        free(v179);
      }
    }

    v174 = *(v82 + 6480);
    ++v174[55];
  }

  if (*(v82 + 1596))
  {
    ++v174[56];
  }

  if (sub_100072814(v207))
  {
    ++*(*(v82 + 6480) + 288);
  }

  if (sub_1001E372C(&v203))
  {
    ++*(*(v82 + 6480) + 292);
  }

  if (sub_100D23684(&v203))
  {
    ++*(*(v82 + 6480) + 296);
  }

  if (v206)
  {
    sub_100008080(v206);
  }

  sub_1003C93BC(v205, v205[1]);
  if (v204)
  {
    sub_100008080(v204);
  }

  if (v203.__r_.__value_.__l.__size_)
  {
    sub_100008080(v203.__r_.__value_.__l.__size_);
  }

  *v253 = &v217;
  sub_1001E56E8(v253);
  *v253 = v233 + 8;
  sub_1001E56E8(v253);
  if (v232[0])
  {
    v232[1] = v232[0];
    operator delete(v232[0]);
  }

  *v253 = &v234;
  sub_1001E56E8(v253);
  sub_10001AF44(&v237, v238[0]);
  if (__p)
  {
    v240 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v243 = __src;
    operator delete(__src);
  }
}

void sub_1001A172C(_Unwind_Exception *a1)
{
  sub_1008DEB20(&STACK[0x408]);
  STACK[0x408] = &STACK[0x920];
  sub_1001E56E8(&STACK[0x408]);
  sub_1008DEA10(&STACK[0x940]);
  STACK[0x408] = &STACK[0xA10];
  sub_1001E56E8(&STACK[0x408]);
  sub_10001AF44(&STACK[0xA28], STACK[0xA30]);
  v2 = STACK[0xA40];
  if (STACK[0xA40])
  {
    STACK[0xA48] = v2;
    operator delete(v2);
  }

  v3 = STACK[0xA58];
  if (STACK[0xA58])
  {
    STACK[0xA60] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1001A1980(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1001A19D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1001A1A30(void *a1, uint64_t *a2, uint64_t *a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, int *a11, double *a12, uint64_t a13, uint64_t a14, int *a15, double *a16, BOOL *a17, int *a18, uint64_t a19, uint64_t a20, unsigned int a21)
{
  *a14 = 0xFFFF;
  *(a14 + 12) = 0;
  *(a14 + 4) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a14 + 36) = _Q0;
  *(a14 + 52) = _Q0;
  *(a14 + 68) = _Q0;
  *(a14 + 84) = 0;
  *(a14 + 96) = 0;
  *(a14 + 104) = 0;
  *(a14 + 88) = 0xBFF0000000000000;
  *(a14 + 112) = 0;
  *(a14 + 116) = 0xBFF0000000000000;
  *(a14 + 124) = 0x7FFFFFFF;
  *(a14 + 136) = 0;
  *(a14 + 144) = 0;
  *(a14 + 128) = 0;
  *(a14 + 152) = 0;
  *(a14 + 20) = xmmword_101C828F0;
  *a11 = -1;
  *a10 = -1;
  __src = 0;
  v73 = 0;
  v74 = 0;
  v26 = *a2;
  v27 = a2[1];
  if (*a2 != v27)
  {
    v70 = (a14 + 36);
    do
    {
      if (sub_10019A2D4(v26) && *(v26 + 32) > 0.0)
      {
        v30 = v73;
        if (v73 >= v74)
        {
          v36 = __src;
          v37 = v73 - __src;
          v38 = 0xAAAAAAAAAAAAAAABLL * ((v73 - __src) >> 5);
          v39 = v38 + 1;
          if (v38 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v74 - __src) >> 5) > v39)
          {
            v39 = 0x5555555555555556 * ((v74 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v74 - __src) >> 5) >= 0x155555555555555)
          {
            v39 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v39)
          {
            sub_1001A1980(&__src, v39);
          }

          v40 = (32 * ((v73 - __src) >> 5));
          v41 = *(v26 + 16);
          *v40 = *v26;
          v40[1] = v41;
          v42 = *(v26 + 32);
          v43 = *(v26 + 48);
          v44 = *(v26 + 80);
          v40[4] = *(v26 + 64);
          v40[5] = v44;
          v40[2] = v42;
          v40[3] = v43;
          v35 = 96 * v38 + 96;
          v45 = (96 * v38 - v37);
          memcpy(v40 - v37, v36, v37);
          v46 = __src;
          __src = v45;
          v73 = v35;
          v74 = 0;
          if (v46)
          {
            operator delete(v46);
          }
        }

        else
        {
          v31 = *(v26 + 16);
          *v73 = *v26;
          v30[1] = v31;
          v32 = *(v26 + 32);
          v33 = *(v26 + 48);
          v34 = *(v26 + 80);
          v30[4] = *(v26 + 64);
          v30[5] = v34;
          v30[2] = v32;
          v30[3] = v33;
          v35 = (v30 + 6);
        }

        v73 = v35;
      }

      v26 += 96;
    }

    while (v26 != v27);
    v47 = __src;
    if (__src != v73)
    {
      if (a1 && a1[2] < 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 5))
      {
        __assert_rtn("calculateWifiCentroidRssiMaxreach", "CLLocationCalculator.mm", 1149, "allScannedExcludingMovingWifiApsMacToRssiVertical->size() >= apCollectionVertical.size()");
      }

      v48 = (a14 + 36);
      sub_1001A2124(a1, a3, (a14 + 28), v70, a15, a16, a17, a18, a5, a20, a21);
      v49 = a11;
      if (sub_1001A4254((a14 + 28), v70))
      {
        v50 = sub_1000F7F38();
        v54 = *v70;
        if (*v70 < *(v50 + 27))
        {
          v54 = *(v50 + 27);
        }

        *v70 = v54;
        v55 = *(a14 + 28);
        *(a20 + 104) = 1;
        *a20 = v55;
        *(a20 + 8) = v54;
      }

      else
      {
        v56 = *v70;
        if ((*v70 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018F29C8();
          }

          v57 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_FAULT, "WifiCalc, zaxis, inf unc", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018F29F0(buf);
            LOWORD(v75) = 0;
            v66 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "static void CLLocationCalculator::calculateWifiCentroidRssiMaxreach(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, LatLonDebuggingData &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType, double)", "%s\n", v66);
            if (v66 != buf)
            {
              free(v66);
            }

            v48 = (a14 + 36);
            v49 = a11;
          }

          v56 = *v48;
        }

        if (v56 != -1.0)
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018F29C8();
          }

          v58 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
          {
            v59 = *(a14 + 28);
            v60 = *v48;
            *buf = 134283777;
            v80 = v59;
            v81 = 2049;
            v82 = v60;
            _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_FAULT, "WifiCalc, zaxis, invalid signleshot alt, %{private}.2f, unc, %{private}.2f", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018F29F0(buf);
            v63 = *(a14 + 28);
            v64 = *v48;
            v75 = 134283777;
            v76 = v63;
            v77 = 2049;
            v78 = v64;
            v65 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "static void CLLocationCalculator::calculateWifiCentroidRssiMaxreach(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, LatLonDebuggingData &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType, double)", "%s\n", v65);
            if (v65 != buf)
            {
              free(v65);
            }

            v48 = (a14 + 36);
            v49 = a11;
          }
        }

        if (qword_1025D4620 != -1)
        {
          sub_1018F29C8();
        }

        v61 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, invalid vertical accuracy!", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F29F0(buf);
          LOWORD(v75) = 0;
          v62 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidRssiMaxreach(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, LatLonDebuggingData &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType, double)", "%s\n", v62);
          if (v62 != buf)
          {
            free(v62);
          }

          v48 = (a14 + 36);
          v49 = a11;
        }

        *v48 = -1.0;
      }

      sub_1001A75DC(&__src, v54, a5, a6, v51, v52, v53, a10, v49, a12, a13, a14, a19);
      v47 = __src;
    }

    if (v47)
    {
      v73 = v47;
      operator delete(v47);
    }
  }
}

void sub_1001A20EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A2124(void *a1, uint64_t *a2, std::string::size_type *a3, double *a4, int *a5, double *a6, BOOL *a7, int *a8, double a9, uint64_t a10, unsigned int a11)
{
  v240 = 0;
  v238 = 0;
  *&v237 = 1.0;
  *a7 = 0;
  *a8 = 0;
  *a6 = -200.0;
  if (*a2 != a2[1])
  {
    v236 = 0;
    sub_10014E83C(a2, &v236, &v234);
    v13 = v234;
    v14 = v235;
    if (v236)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1431655765 * ((v235 - v234) >> 5);
    }

    *(a10 + 116) = -1431655765 * ((v235 - v234) >> 5);
    *(a10 + 152) = v15;
    if (v14 == v13)
    {
LABEL_184:
      if (v13)
      {
        v235 = v13;
        operator delete(v13);
      }

      return;
    }

    sub_100248EF4(&v234, &v236, a11, v233);
    v16 = *v233;
    v17 = v233[0];
    if (v233[0] == v233[1])
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v26 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, validRssiApCollection is empty", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        v27 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }

      goto LABEL_181;
    }

    for (i = v233[0] + 96; i != v233[1]; i += 24)
    {
      if (v17[18] < i[18])
      {
        v17 = i;
      }
    }

    v239 = v17[18];
    if (a1)
    {
      *(a10 + 112) = a1[2];
      sub_1002491E0(a1, &v227, a11, &__src);
      v20 = __src;
      if (__src == &v231)
      {
        v20 = &v231;
      }

      else
      {
        v21 = __src;
        while (1)
        {
          v22 = v21[1];
          v23 = v21;
          if (v22)
          {
            do
            {
              v21 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v21 = v23[2];
              v181 = *v21 == v23;
              v23 = v21;
            }

            while (!v181);
          }

          if (v21 == &v231)
          {
            break;
          }

          if (*(v20 + 55) < 0)
          {
            sub_100007244(buf, v20[4], v20[5]);
          }

          else
          {
            *buf = *(v20 + 2);
            *&buf[16] = v20[6];
          }

          v24 = *(v20 + 14);
          *&buf[24] = v24;
          if (*(v21 + 55) < 0)
          {
            sub_100007244(&__p, v21[4], v21[5]);
            v24 = *&buf[24];
          }

          else
          {
            __p = *(v21 + 4);
          }

          v25 = *(v21 + 14);
          LODWORD(v242) = v25;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v24 < v25)
          {
            v20 = v21;
          }
        }
      }

      v238 = *(v20 + 14);
      sub_10024993C(v233, &__src, &v239, &v238, &v240, &v237);
      sub_10001AF44(&__src, v231);
      v16 = *v233;
    }

    else
    {
      *&v237 = 1.0;
      v240 = 0;
    }

    __src = 0;
    v231 = 0;
    v232 = 0;
    v28 = *(&v16 + 1);
    for (j = v16; j != v28; j += 96)
    {
      sub_1001A8F68(j, buf);
      v30 = v231;
      if (v231 >= v232)
      {
        v36 = __src;
        v37 = v231 - __src;
        v38 = 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5);
        v39 = v38 + 1;
        if (v38 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v232 - __src) >> 5) > v39)
        {
          v39 = 0x5555555555555556 * ((v232 - __src) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v232 - __src) >> 5) >= 0x155555555555555)
        {
          v39 = 0x2AAAAAAAAAAAAAALL;
        }

        if (v39)
        {
          sub_1001A4428(&__src, v39);
        }

        v40 = (32 * ((v231 - __src) >> 5));
        v41 = *&buf[16];
        *v40 = *buf;
        v40[1] = v41;
        v42 = v247;
        v43 = v248;
        v44 = v250;
        v40[4] = v249;
        v40[5] = v44;
        v40[2] = v42;
        v40[3] = v43;
        v35 = (96 * v38 + 96);
        v45 = (96 * v38 - v37);
        memcpy(v40 - v37, v36, v37);
        v46 = __src;
        __src = v45;
        v231 = v35;
        v232 = 0;
        if (v46)
        {
          operator delete(v46);
        }
      }

      else
      {
        v31 = *&buf[16];
        *v231 = *buf;
        v30[1] = v31;
        v32 = v247;
        v33 = v248;
        v34 = v250;
        v30[4] = v249;
        v30[5] = v34;
        v30[2] = v32;
        v30[3] = v33;
        v35 = v30 + 6;
      }

      v231 = v35;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v47 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134283521;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5);
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "@WifiCalc, zaxis, num accessPointsToUseInCalculation, %{private}lu", buf, 0xCu);
    }

    v49 = a10;
    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      LODWORD(__p.__r_.__value_.__l.__data_) = 134283521;
      *(__p.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5);
      v204 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v204);
      if (v204 != buf)
      {
        free(v204);
      }

      v49 = a10;
    }

    v50 = v236;
    *a7 = v236 ^ 1;
    v217 = v50;
    if ((v50 & 1) == 0)
    {
      *a7 = 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5) >= sub_10024974C(a11);
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v51 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v52 = *a7;
        *buf = 67109120;
        *&buf[4] = v52;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "@WifiCalc, zaxis, hasSufficientData, %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        v205 = *a7;
        LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(__p.__r_.__value_.__r.__words[0]) = v205;
        v206 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v206);
        if (v206 != buf)
        {
          free(v206);
        }

        v49 = a10;
      }
    }

    v53 = __src;
    if (v231 - __src == 96)
    {
      *a3 = *(__src + 2);
      v54 = *(v53 + 5);
      v55 = v54 * *(sub_1000F7F38() + 32);
      *a4 = v55;
      if (v55 > 0.0 && !*a7)
      {
        v56 = sub_1000F7F38();
        v57 = *a4;
        if (*a4 < *(v56 + 28))
        {
          v57 = *(v56 + 28);
        }

        *a4 = v57;
      }

      v58 = __src;
      *a8 = -1431655765 * ((v231 - __src) >> 5);
      *a6 = v58[14];
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v59 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v60 = *a3;
        v61 = *a4;
        v62 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
        *buf = 134284545;
        *&buf[4] = v60;
        *&buf[12] = 2050;
        *&buf[14] = v61;
        *&buf[22] = 2048;
        *&buf[24] = v62;
        LOWORD(v247) = 2048;
        *(&v247 + 2) = 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5);
        WORD5(v247) = 1024;
        HIDWORD(v247) = v217 ^ 1;
        _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "WifiCalc, est, %{private}0.3f, vunc, %{public}0.1f, numInputAps, %lu, numApsUsed, %lu, isSLAM, %d", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        v207 = *a3;
        v208 = *a4;
        v209 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
        LODWORD(__p.__r_.__value_.__l.__data_) = 134284545;
        *(__p.__r_.__value_.__r.__words + 4) = v207;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v208;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
        v242 = v209;
        *v243 = 2048;
        *&v243[2] = 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5);
        v244 = 1024;
        v245 = v217 ^ 1;
        v210 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v210);
        if (v210 != buf)
        {
          free(v210);
        }

        v49 = a10;
      }

      *(__src + 21) = 1065353216;
      sub_10018F0D0(&__p);
      v64 = *(v49 + 192);
      v63 = *(v49 + 200);
      if (v64 >= v63)
      {
        v114 = *(v49 + 184);
        v115 = 0xAAAAAAAAAAAAAAABLL * ((v64 - v114) >> 3);
        v116 = v115 + 1;
        if (v115 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        v117 = 0xAAAAAAAAAAAAAAABLL * ((v63 - v114) >> 3);
        if (2 * v117 > v116)
        {
          v116 = 2 * v117;
        }

        if (v117 >= 0x555555555555555)
        {
          v118 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v118 = v116;
        }

        *&v247 = v49 + 184;
        if (v118)
        {
          sub_1001A19D8(v49 + 184, v118);
        }

        v142 = 24 * v115;
        v143 = *&__p.__r_.__value_.__l.__data_;
        *(v142 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v142 = v143;
        memset(&__p, 0, sizeof(__p));
        v144 = 24 * v115 + 24;
        v145 = *(v49 + 184);
        v146 = *(v49 + 192) - v145;
        v147 = (24 * v115 - v146);
        memcpy(v147, v145, v146);
        v148 = *(v49 + 184);
        *(v49 + 184) = v147;
        *(v49 + 192) = v144;
        v149 = *(v49 + 200);
        *(v49 + 200) = 0;
        *&buf[16] = v148;
        *&buf[24] = v149;
        *buf = v148;
        *&buf[8] = v148;
        sub_100197A50(buf);
        v150 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(v49 + 192) = v144;
        if (v150 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v65 = *&__p.__r_.__value_.__l.__data_;
        *(v64 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v64 = v65;
        *(v49 + 192) = v64 + 24;
      }

      if ((v49 + 160) != &__src)
      {
        sub_10024A16C((v49 + 160), __src, v231, 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5));
      }

      v151 = v239;
      v152 = *(v53 + 14);
      v153 = v240;
      v154 = *a8;
      v155 = *a7;
      *(v49 + 40) = v238;
      *(v49 + 44) = v151;
      *(v49 + 48) = v152;
      *(v49 + 56) = v152;
      *(v49 + 64) = 0;
      *(v49 + 72) = 0;
      *(v49 + 80) = v153;
      *(v49 + 108) = v154;
      *(v49 + 144) = v155;
LABEL_179:
      if (__src)
      {
        v231 = __src;
        operator delete(__src);
      }

LABEL_181:
      if (v233[0])
      {
        v233[1] = v233[0];
        operator delete(v233[0]);
      }

      v13 = v234;
      goto LABEL_184;
    }

    v66 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5));
    if (v231 == __src)
    {
      v67 = 0;
    }

    else
    {
      v67 = v66;
    }

    sub_1002EA134(__src, v231, v67, 1, v48);
    v68 = v231;
    while (1)
    {
      v69 = __src;
      if (0xAAAAAAAAAAAAAAABLL * ((v68 - v69) >> 5) <= *(sub_1000F7F38() + 52))
      {
        break;
      }

      v68 = (v231 - 96);
      v231 -= 96;
    }

    v70 = __src;
    v71 = v231;
    if (__src != v231)
    {
      do
      {
        v72 = *(v70 + 8);
        *(v70 + 21) = 0;
        v73 = *(v70 + 5);
        if (v73 > 0.0)
        {
          v75 = *(v70 + 13);
          v74 = *(v70 + 14);
          v76 = sub_1000F7F38();
          sub_1001A565C(v76 + 45, v74, v75, v73, a9 - v72);
          *&v77 = v77;
          *(v70 + 21) = LODWORD(v77);
        }

        v70 += 96;
      }

      while (v70 != v71);
      v70 = __src;
      v71 = v231;
    }

    if (v70 == v71)
    {
      goto LABEL_179;
    }

    v78 = 0.0;
    v79 = v70;
    do
    {
      v78 = v78 + v79[21];
      v79 += 24;
    }

    while (v79 != v71);
    if (v78 <= 0.0)
    {
      goto LABEL_179;
    }

    v80 = v70;
    do
    {
      v81 = v80[21] / v78;
      v80[21] = v81;
      v80 += 24;
    }

    while (v80 != v71);
    if ((a10 + 160) != &__src)
    {
      sub_10024A16C((a10 + 160), v70, v71, 0xAAAAAAAAAAAAAAABLL * ((v71 - v70) >> 5));
    }

    v82 = sub_1002EB388(&__src);
    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v83 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67174657;
      *&buf[4] = v82;
      _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, isMultimodal, %{private}d", buf, 8u);
    }

    v218 = v82;
    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      LODWORD(__p.__r_.__value_.__l.__data_) = 67174657;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v82;
      v211 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v211);
      if (v211 != buf)
      {
        free(v211);
      }
    }

    v227 = 0;
    v228 = 0;
    v229 = 0;
    sub_1002EC790(&__src, &v227);
    if (v227 != v228)
    {
      sub_10024A16C(&__src, v227, v228, 0xAAAAAAAAAAAAAAABLL * ((v228 - v227) >> 5));
    }

    v85 = __src;
    v84 = v231;
    if (__src != v231)
    {
      v86 = (a10 + 184);
      do
      {
        v87 = v85[1];
        *buf = *v85;
        *&buf[16] = v87;
        v88 = v85[2];
        v89 = v85[3];
        v90 = v85[5];
        v249 = v85[4];
        v250 = v90;
        v247 = v88;
        v248 = v89;
        sub_10018F0D0(&v226);
        v92 = *(a10 + 192);
        v91 = *(a10 + 200);
        if (v92 >= v91)
        {
          v94 = 0xAAAAAAAAAAAAAAABLL * ((v92 - *v86) >> 3);
          v95 = v94 + 1;
          if (v94 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v96 = 0xAAAAAAAAAAAAAAABLL * ((v91 - *v86) >> 3);
          if (2 * v96 > v95)
          {
            v95 = 2 * v96;
          }

          if (v96 >= 0x555555555555555)
          {
            v97 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v97 = v95;
          }

          *v243 = a10 + 184;
          if (v97)
          {
            sub_1001A19D8(v86, v97);
          }

          v98 = 24 * v94;
          v99 = *&v226.__r_.__value_.__l.__data_;
          *(v98 + 16) = *(&v226.__r_.__value_.__l + 2);
          *v98 = v99;
          memset(&v226, 0, sizeof(v226));
          v100 = 24 * v94 + 24;
          v101 = *(a10 + 184);
          v102 = *(a10 + 192) - v101;
          v103 = 24 * v94 - v102;
          memcpy((v98 - v102), v101, v102);
          v104 = *(a10 + 184);
          *(a10 + 184) = v103;
          *(a10 + 192) = v100;
          v105 = *(a10 + 200);
          *(a10 + 200) = 0;
          __p.__r_.__value_.__r.__words[2] = v104;
          v242 = v105;
          __p.__r_.__value_.__r.__words[0] = v104;
          __p.__r_.__value_.__l.__size_ = v104;
          sub_100197A50(&__p);
          v106 = SHIBYTE(v226.__r_.__value_.__r.__words[2]);
          *(a10 + 192) = v100;
          if (v106 < 0)
          {
            operator delete(v226.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v93 = *&v226.__r_.__value_.__l.__data_;
          *(v92 + 16) = *(&v226.__r_.__value_.__l + 2);
          *v92 = v93;
          *(a10 + 192) = v92 + 24;
        }

        v85 += 6;
      }

      while (v85 != v84);
    }

    if (qword_1025D4620 == -1)
    {
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    }

    else
    {
      sub_1018F29C8();
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v108 = v218;
    v109 = p_info[197];
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5);
      _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, num aps after outlier rejection, %lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5);
      v212 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v212);
      if (v212 != buf)
      {
        free(v212);
      }

      v108 = v218;
    }

    v110 = __src;
    v111 = 0.0;
    v112 = 0.0;
    while (v110 != v231)
    {
      v113 = v110[21];
      v112 = v112 + v113 * *(v110 + 2);
      v111 = v111 + v113;
      v110 += 24;
    }

    v119 = v112 / v111;
    if (v111 <= 0.0)
    {
      v120 = 0.0;
    }

    else
    {
      v120 = v119;
    }

    v121 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v122 = sub_1002F018C(&__src, v120);
    if (v122 < 0.0)
    {
LABEL_246:
      if (v227)
      {
        v228 = v227;
        operator delete(v227);
      }

      goto LABEL_179;
    }

    v123 = __src;
    v124 = v231;
    v125 = __src;
    if (__src != v231)
    {
      v126 = __src + 96;
      v125 = __src;
      if (__src + 96 != v231)
      {
        v125 = __src;
        do
        {
          if (v125[14] < *(v126 + 14))
          {
            v125 = v126;
          }

          v126 += 96;
        }

        while (v126 != v231);
      }
    }

    v127 = v125[14];
    *a5 = v127;
    v128 = 0.0;
    if (v123 != v124)
    {
      v129 = v123;
      do
      {
        v128 = v128 + *(v129 + 14);
        v129 += 6;
      }

      while (v129 != v124);
    }

    *a6 = v128 / (0xAAAAAAAAAAAAAAABLL * ((v124 - v123) >> 5));
    if (*sub_1000F7F38() >= v127 || (v130 = *a5, v131 = *a6, v130 - v131 > *(sub_1000F7F38() + 2)) && (v132 = *a6, v132 < *(sub_1000F7F38() + 1)))
    {
      *a7 = 0;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v133 = p_info[197];
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
    {
      v134 = *a5;
      *buf = 67109120;
      *&buf[4] = v134;
      _os_log_impl(dword_100000000, v133, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, maxRssi, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      v213 = *a5;
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v213;
      v214 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v214);
      if (v214 != buf)
      {
        free(v214);
      }

      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      v121 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      v108 = v218;
    }

    v135 = v239;
    if (*a5 != v239)
    {
      *a7 = 0;
    }

    v136 = __src;
    v137 = v231;
    if (__src == v231)
    {
      v141 = 0.0;
      v140 = __src;
    }

    else
    {
      v138 = 0;
      do
      {
        v139 = v136[5];
        if (v139 > *(sub_1000F7F38() + 45))
        {
          ++v138;
        }

        v136 += 12;
      }

      while (v136 != v137);
      v136 = __src;
      v140 = v231;
      v141 = v138;
      v121 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v156 = *(sub_1000F7F38() + 39);
    v157 = *(sub_1000F7F38() + 28);
    v158 = *&v237;
    v159 = sub_1000F7F38();
    v160 = v141 / (0xAAAAAAAAAAAAAAABLL * ((v140 - v136) >> 5));
    v161 = v122 * exp(v160 * v156);
    if (v122 >= v161)
    {
      v161 = v122;
    }

    if (v157 < v161)
    {
      v161 = v157;
    }

    v162 = v161 * v158;
    if (*(v159 + 28) >= v162)
    {
      v163 = v162;
    }

    else
    {
      v163 = *(v159 + 28);
    }

    if (!v108)
    {
      v166 = a10;
LABEL_235:
      v196 = *a7;
      if (v163 >= 0.0)
      {
        if (!*a7)
        {
          v197 = sub_1000F7F38();
          if (v163 < *(v197 + 28))
          {
            v163 = *(v197 + 28);
          }

          v196 = *a7;
        }

        *a4 = v163;
        *a3 = v120;
      }

      v198 = -1431655765 * ((v231 - __src) >> 5);
      *a8 = v198;
      v199 = *a5;
      v200 = *a6;
      v201 = v240;
      *(v166 + 40) = v238;
      *(v166 + 44) = v135;
      *(v166 + 48) = v199;
      *(v166 + 56) = v200;
      *(v166 + 64) = v108;
      *(v166 + 72) = v160;
      *(v166 + 80) = v201;
      *(v166 + 108) = v198;
      *(v166 + 144) = v196;
      if (v121[196] != -1)
      {
        sub_1018F29C8();
      }

      v202 = p_info[197];
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
      {
        v203 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
        *buf = 134284545;
        *&buf[4] = v120;
        *&buf[12] = 2050;
        *&buf[14] = v163;
        *&buf[22] = 2048;
        *&buf[24] = v203;
        LOWORD(v247) = 2048;
        *(&v247 + 2) = 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5);
        WORD5(v247) = 1024;
        HIDWORD(v247) = v217 ^ 1;
        _os_log_impl(dword_100000000, v202, OS_LOG_TYPE_DEBUG, "WifiCalc, est, %{private}0.3f, vunc, %{public}0.1f, numInputAps, %lu, numApsUsed, %lu, isSLAM, %d", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        v215 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
        LODWORD(__p.__r_.__value_.__l.__data_) = 134284545;
        *(__p.__r_.__value_.__r.__words + 4) = v120;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v163;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
        v242 = v215;
        *v243 = 2048;
        *&v243[2] = 0xAAAAAAAAAAAAAAABLL * ((v231 - __src) >> 5);
        v244 = 1024;
        v245 = v217 ^ 1;
        v216 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v216);
        if (v216 != buf)
        {
          free(v216);
        }
      }

      goto LABEL_246;
    }

    memset(buf, 0, 24);
    v164 = v233[0];
    v165 = v233[1];
    v166 = a10;
    if (v233[0] == v233[1])
    {
      v179 = 0;
    }

    else
    {
      v167 = 0;
      do
      {
        v168 = v164[3];
        if (v167 >= *&buf[16])
        {
          v169 = *buf;
          v170 = v167 - *buf;
          v171 = (v167 - *buf) >> 3;
          v172 = v171 + 1;
          if ((v171 + 1) >> 61)
          {
            sub_10028C64C();
          }

          v173 = *&buf[16] - *buf;
          if ((*&buf[16] - *buf) >> 2 > v172)
          {
            v172 = v173 >> 2;
          }

          if (v173 >= 0x7FFFFFFFFFFFFFF8)
          {
            v174 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v174 = v172;
          }

          if (v174)
          {
            sub_1000B9708(buf, v174);
          }

          v175 = v171;
          v176 = (8 * v171);
          v177 = &v176[-v175];
          *v176 = v168;
          v167 = v176 + 1;
          memcpy(v177, v169, v170);
          v178 = *buf;
          *buf = v177;
          *&buf[8] = v167;
          *&buf[16] = 0;
          if (v178)
          {
            operator delete(v178);
          }

          v166 = a10;
        }

        else
        {
          *v167++ = v168;
        }

        *&buf[8] = v167;
        v164 += 12;
      }

      while (v164 != v165);
      v179 = *buf;
      v180 = *buf + 8;
      v181 = *buf == v167 || v180 == v167;
      if (!v181)
      {
        v183 = **buf;
        v184 = **buf;
        v185 = *buf + 8;
        v186 = *buf;
        v187 = (*buf + 8);
        do
        {
          v188 = *v187++;
          v189 = v188;
          if (v184 < v188)
          {
            v184 = v189;
            v186 = v185;
          }

          v185 = v187;
        }

        while (v187 != v167);
        v182 = *v186;
        v190 = (*buf + 8);
        v121 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        do
        {
          v191 = *v190++;
          v192 = v191;
          if (v191 < v183)
          {
            v183 = v192;
            v179 = v180;
          }

          v180 = v190;
        }

        while (v190 != v167);
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        goto LABEL_229;
      }

      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      v121 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v182 = *v179;
LABEL_229:
    v193 = *v179;
    v194 = sub_1000F7F38();
    v195 = v182 - v193;
    if (*(v194 + 28) < v182 - v193)
    {
      v195 = *(v194 + 28);
    }

    if (v163 < v195)
    {
      v163 = v195;
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    goto LABEL_235;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F28B0();
  }

  v19 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, apCollection is empty", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F2EB8();
  }
}

void sub_1001A3A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

CFAbsoluteTime sub_1001A3B64(uint64_t a1, unint64_t a2)
{
  result = CFAbsoluteTimeGetCurrent() - *(a1 + 112);
  if (result >= a2 && *a1 + *(a1 + 4))
  {
    sub_10121C23C(a1);

    *&result = sub_10121C098(a1).n128_u64[0];
  }

  return result;
}

BOOL sub_1001A3BD4(sqlite3_stmt *a1, int a2, double a3)
{
  v6 = sqlite3_bind_double(a1, a2, a3);
  v11 = v6;
  if (v6)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2049;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private}f, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v9 = sqlite3_sql(a1);
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2049;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private}f, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
    }
  }

  return v6 == 0;
}

BOOL sub_1001A3DEC(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 16))(v4);
  v5 = sqlite3_step(a2);
  v6 = v5;
  v7 = v5 == 101;
  if (v5 != 101)
  {
    sub_10060A6E4(v5, "sqlite3_step()", v5, a2);
    sub_10060AF58(*(a1 + 8), (a1 + 96), *(a1 + 56), v6);
  }

  v8 = sqlite3_reset(a2);
  v9 = v8;
  if (v8)
  {
    sub_10060A6E4(v8, "sqlite3_reset()", v8, a2);
    sub_10060AF58(*(a1 + 8), (a1 + 96), *(a1 + 56), v9);
    v7 = 0;
  }

  (*(*v4 + 24))(v4);
  return v7;
}

void sub_1001A3F0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A3F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 76) - *a1;
  result = sub_100100690();
  if (v6 >= *(result + 32) && *(a2 + 180) == 0)
  {
    sub_10018F18C(&v11, a3, a2, -1);
    v9[6] = v18;
    v9[7] = v19;
    v10[0] = v20[0];
    *(v10 + 12) = *(v20 + 12);
    v9[2] = v14;
    v9[3] = v15;
    v9[4] = v16;
    v9[5] = v17;
    v9[0] = v12;
    v9[1] = v13;
    result = sub_100072814(v9);
    if (result)
    {
      sub_1001A400C(a1);
      result = sub_10018F858(*(a1 + 8), &v11);
      *a1 = *(a2 + 76);
    }
  }

  return result;
}

void sub_1001A400C(uint64_t a1)
{
  v2 = sub_10018E854(*(a1 + 8));
  sub_10019C594(a1 + 24, v2);
  sub_10019C558((a1 + 24));
  if (!sub_10018E854(*(a1 + 8)))
  {
    sub_1001AC420(buf);
    v3 = *buf;
    memset(buf, 0, sizeof(buf));
    v4 = *(a1 + 16);
    *(a1 + 8) = v3;
    if (v4)
    {
      sub_100008080(v4);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }
    }

    if (sub_10018E854(*(a1 + 8)))
    {
      v5 = "success";
    }

    else
    {
      v5 = "fail";
    }

    sub_10000EC00(__p, v5);
    if (qword_1025D4620 != -1)
    {
      sub_101A457CC();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __p;
      if (v11 < 0)
      {
        v7 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLWifiAssociatedApWifiHarvester, re-initialize database: %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A457F4(buf);
      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

      v12 = 136315138;
      v13 = v8;
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApWifiHarvester::reinitializeWifiAssociatedApHarvestDatabaseIfInvalid()", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1001A422C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A4254(double *a1, uint64_t *a2)
{
  v2 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
  if (*a2 > -1 && (v2 - 0x10000000000000) >> 53 < 0x3FF || (*a2 - 1) < 0xFFFFFFFFFFFFFLL || v2 == 0)
  {
    if (*a1 >= -450.0 && *a1 <= 8850.0)
    {
      return 1;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v12 = *a1;
      v13 = 134283521;
      v14 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, invalid altitude, %{private}0.3f", &v13, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B40FC4();
      return 0;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a2;
      v13 = 134349056;
      v14 = *&v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, invalid uncertainty, %{public}0.3f", &v13, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B40EE0();
      return 0;
    }
  }

  return result;
}

void sub_1001A4428(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

double sub_1001A4480(uint64_t a1, __int128 *a2, uint64_t a3, char a4, double result)
{
LABEL_1:
  v9 = a2 - 6;
  i = a1;
  while (1)
  {
    a1 = i;
    v11 = a2 - i;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 5);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v84 = *(a2 - 10);
      v85 = *(i + 56);
      if (v84 > v85 || v84 == v85 && ((v201 = *(a2 - 18), v202 = *(i + 24), v201 > v202) || v201 == v202 && (result = *(a2 - 8), result < *(i + 32))))
      {
        v245 = *i;
        v256 = *(i + 16);
        *v280 = *(i + 64);
        *&v280[16] = *(i + 80);
        v264 = *(i + 32);
        v272 = *(i + 48);
        v87 = *(a2 - 3);
        v86 = *(a2 - 2);
        v88 = *(a2 - 4);
        *(i + 73) = *(a2 - 23);
        *(i + 48) = v87;
        *(i + 64) = v86;
        *(i + 32) = v88;
        v89 = *(a2 - 5);
        *i = *v9;
        *(i + 16) = v89;
        *v9 = v245;
        *(a2 - 5) = v256;
        result = *&v264;
        *(a2 - 23) = *&v280[9];
        *(a2 - 3) = v272;
        *(a2 - 2) = *v280;
        *(a2 - 4) = v264;
      }

      return result;
    }

LABEL_9:
    if (v11 <= 2303)
    {
      v105 = (i + 96);
      v107 = i == a2 || v105 == a2;
      if (a4)
      {
        if (v107)
        {
          return result;
        }

        v108 = 0;
        v109 = i;
        while (2)
        {
          v110 = v109;
          v109 = v105;
          v111 = *(v110 + 152);
          v112 = *(v110 + 56);
          if (v111 > v112)
          {
            v113 = *(v110 + 120);
            goto LABEL_151;
          }

          if (v111 == v112)
          {
            v113 = *(v110 + 120);
            v125 = *(v110 + 24);
            if (v113 > v125 || v113 == v125 && (result = *(v110 + 128), result < *(v110 + 32)))
            {
LABEL_151:
              v227 = *(v109 + 16);
              v223 = *v109;
              v114 = *(v110 + 124);
              v115 = *(v110 + 128);
              v235 = *(v110 + 136);
              *v249 = *(v110 + 156);
              *&v249[16] = *(v110 + 172);
              v116 = *(v110 + 16);
              *v109 = *v110;
              *(v109 + 16) = v116;
              *(v109 + 73) = *(v110 + 73);
              v117 = *(v110 + 64);
              *(v109 + 48) = *(v110 + 48);
              *(v109 + 64) = v117;
              v118 = i;
              *(v109 + 32) = *(v110 + 32);
              if (v110 != i)
              {
                v119 = v108;
                while (1)
                {
                  v120 = (i + v119);
                  v121 = *(i + v119 - 40);
                  if (v111 <= v121)
                  {
                    if (v111 != v121)
                    {
                      v118 = i + v119;
                      goto LABEL_167;
                    }

                    v122 = *(i + v119 - 72);
                    if (v113 <= v122 && (v113 != v122 || v115 >= *(i + v119 - 64)))
                    {
                      break;
                    }
                  }

                  v110 -= 96;
                  v123 = *(v120 - 3);
                  v120[2] = *(v120 - 4);
                  v120[3] = v123;
                  v120[4] = *(v120 - 2);
                  *(v120 + 73) = *(v120 - 23);
                  v124 = *(v120 - 5);
                  *v120 = *(v120 - 6);
                  v120[1] = v124;
                  v119 -= 96;
                  if (!v119)
                  {
                    v118 = i;
                    goto LABEL_167;
                  }
                }

                v118 = v110;
              }

LABEL_167:
              *v118 = v223;
              *(v118 + 16) = v227;
              *(v118 + 24) = v113;
              *(v118 + 28) = v114;
              *(v118 + 32) = v115;
              *(v118 + 40) = v235;
              *(v118 + 56) = v111;
              *(v118 + 60) = *v249;
              result = *&v249[13];
              *(v118 + 73) = *&v249[13];
            }
          }

          v105 = (v109 + 96);
          v108 += 96;
          if ((v109 + 96) == a2)
          {
            return result;
          }

          continue;
        }
      }

      if (v107)
      {
        return result;
      }

      while (2)
      {
        v205 = a1;
        a1 = v105;
        v206 = *(v205 + 152);
        v207 = *(v205 + 56);
        if (v206 <= v207)
        {
          if (v206 == v207)
          {
            v208 = *(v205 + 120);
            v216 = *(v205 + 24);
            if (v208 > v216)
            {
              goto LABEL_250;
            }

            if (v208 == v216)
            {
              result = *(v205 + 128);
              if (result < *(v205 + 32))
              {
                goto LABEL_250;
              }
            }
          }
        }

        else
        {
          v208 = *(v205 + 120);
LABEL_250:
          v229 = *(a1 + 16);
          v226 = *a1;
          v209 = *(v205 + 124);
          v210 = *(v205 + 128);
          v238 = *(v205 + 136);
          *v252 = *(v205 + 156);
          *&v252[16] = *(v205 + 172);
          do
          {
            do
            {
              v211 = v205;
              v212 = *(v205 + 48);
              *(v205 + 128) = *(v205 + 32);
              *(v205 + 144) = v212;
              *(v205 + 160) = *(v205 + 64);
              *(v205 + 169) = *(v205 + 73);
              v213 = *(v205 + 16);
              *(v205 + 96) = *v205;
              *(v205 + 112) = v213;
              v205 -= 96;
              v214 = *(v211 - 40);
            }

            while (v206 > v214);
            if (v206 != v214)
            {
              break;
            }

            v215 = *(v211 - 72);
          }

          while (v208 > v215 || v208 == v215 && v210 < *(v211 - 64));
          *v211 = v226;
          *(v211 + 16) = v229;
          *(v211 + 24) = v208;
          *(v211 + 28) = v209;
          *(v211 + 32) = v210;
          *(v211 + 40) = v238;
          *(v211 + 56) = v206;
          *(v211 + 60) = *v252;
          result = *&v252[13];
          *(v211 + 73) = *&v252[13];
        }

        v105 = (a1 + 96);
        if ((a1 + 96) == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v126 = (v12 - 2) >> 1;
      v127 = v126;
      while (2)
      {
        v128 = v127;
        if (v126 >= v127)
        {
          v129 = (2 * v127) | 1;
          v130 = (i + 96 * v129);
          if (2 * v128 + 2 < v12)
          {
            v131 = *(v130 + 14);
            v132 = *(v130 + 38);
            if (v131 > v132 || v131 == v132 && ((v133 = *(v130 + 6), v134 = *(v130 + 30), v133 > v134) || v133 == v134 && *(v130 + 4) < *(v130 + 16)))
            {
              v130 += 6;
              v129 = 2 * v128 + 2;
            }
          }

          v135 = i + 96 * v128;
          v136 = *(v130 + 14);
          v137 = *(v135 + 56);
          if (v136 <= v137)
          {
            if (v136 == v137)
            {
              v138 = *(v130 + 6);
              v139 = *(v135 + 24);
              if (v138 <= v139)
              {
                if (v138 != v139)
                {
                  goto LABEL_186;
                }

                v139 = *(v130 + 6);
                if (*(v130 + 4) >= *(v135 + 32))
                {
                  goto LABEL_186;
                }
              }
            }

            else
            {
              v139 = *(v135 + 24);
LABEL_186:
              v228 = *(v135 + 16);
              v224 = *v135;
              v140 = *(v135 + 28);
              v141 = *(v135 + 32);
              v236 = *(v135 + 40);
              *v250 = *(v135 + 60);
              *&v250[16] = *(v135 + 76);
              v143 = v130[3];
              v142 = v130[4];
              v144 = v130[2];
              *(v135 + 73) = *(v130 + 73);
              *(v135 + 48) = v143;
              *(v135 + 64) = v142;
              *(v135 + 32) = v144;
              v145 = v130[1];
              *v135 = *v130;
              *(v135 + 16) = v145;
              while (1)
              {
                if (v126 < v129)
                {
                  goto LABEL_202;
                }

                v146 = v130;
                v147 = 2 * v129;
                v129 = (2 * v129) | 1;
                v130 = (i + 96 * v129);
                v148 = v147 + 2;
                if (v148 < v12)
                {
                  v149 = *(v130 + 14);
                  v150 = *(v130 + 38);
                  if (v149 > v150 || v149 == v150 && ((v151 = *(v130 + 6), v152 = *(v130 + 30), v151 > v152) || v151 == v152 && *(v130 + 4) < *(v130 + 16)))
                  {
                    v130 += 6;
                    v129 = v148;
                  }
                }

                v153 = *(v130 + 14);
                if (v153 > v137)
                {
                  break;
                }

                if (v153 == v137)
                {
                  v154 = *(v130 + 6);
                  if (v154 > v139 || v154 == v139 && *(v130 + 4) < v141)
                  {
                    break;
                  }
                }

                v155 = v130[1];
                *v146 = *v130;
                v146[1] = v155;
                v156 = v130[2];
                v157 = v130[3];
                v158 = v130[4];
                *(v146 + 73) = *(v130 + 73);
                v146[3] = v157;
                v146[4] = v158;
                v146[2] = v156;
              }

              v130 = v146;
LABEL_202:
              *v130 = v224;
              *(v130 + 2) = v228;
              *(v130 + 6) = v139;
              *(v130 + 7) = v140;
              *(v130 + 4) = v141;
              *(v130 + 40) = v236;
              *(v130 + 14) = v137;
              *(v130 + 60) = *v250;
              *(v130 + 73) = *&v250[13];
            }
          }
        }

        v127 = v128 - 1;
        if (v128)
        {
          continue;
        }

        break;
      }

      v159 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 5);
      while (2)
      {
        v160 = 0;
        v251 = *i;
        v260 = *(i + 16);
        *v284 = *(i + 64);
        *&v284[16] = *(i + 80);
        v268 = *(i + 32);
        v276 = *(i + 48);
        v161 = i;
        do
        {
          v162 = v161;
          v163 = v161 + 96 * v160;
          v161 = v163 + 96;
          v164 = 2 * v160;
          v160 = (2 * v160) | 1;
          v165 = v164 + 2;
          if (v165 < v159)
          {
            v166 = *(v163 + 152);
            v167 = *(v163 + 248);
            if (v166 > v167 || v166 == v167 && ((v168 = *(v163 + 120), v169 = *(v163 + 216), v168 > v169) || v168 == v169 && *(v163 + 128) < *(v163 + 224)))
            {
              v161 = v163 + 192;
              v160 = v165;
            }
          }

          v170 = *(v161 + 16);
          *v162 = *v161;
          v162[1] = v170;
          v171 = *(v161 + 32);
          v172 = *(v161 + 48);
          v173 = *(v161 + 64);
          *(v162 + 73) = *(v161 + 73);
          v162[3] = v172;
          v162[4] = v173;
          v162[2] = v171;
        }

        while (v160 <= ((v159 - 2) >> 1));
        a2 -= 6;
        if (v161 == a2)
        {
          *v161 = v251;
          *(v161 + 16) = v260;
          result = *&v268;
          *(v161 + 73) = *&v284[9];
          *(v161 + 48) = v276;
          *(v161 + 64) = *v284;
          *(v161 + 32) = v268;
        }

        else
        {
          v174 = a2[1];
          *v161 = *a2;
          *(v161 + 16) = v174;
          v175 = a2[2];
          v176 = a2[3];
          v177 = a2[4];
          *(v161 + 73) = *(a2 + 73);
          *(v161 + 48) = v176;
          *(v161 + 64) = v177;
          *(v161 + 32) = v175;
          *(a2 + 73) = *&v284[9];
          a2[3] = v276;
          a2[4] = *v284;
          a2[2] = v268;
          result = *&v251;
          *a2 = v251;
          a2[1] = v260;
          v178 = v161 - i + 96;
          if (v178 >= 97)
          {
            v179 = 0xAAAAAAAAAAAAAAABLL * (v178 >> 5) - 2;
            v180 = v179 >> 1;
            v181 = (i + 96 * (v179 >> 1));
            v182 = *(v181 + 14);
            v183 = *(v161 + 56);
            if (v182 > v183)
            {
              v184 = *(v161 + 24);
              goto LABEL_218;
            }

            if (v182 == v183)
            {
              v199 = *(v181 + 6);
              v184 = *(v161 + 24);
              if (v199 > v184 || v199 == v184 && (result = *(v181 + 4), v184 = *(v181 + 6), result < *(v161 + 32)))
              {
LABEL_218:
                v241 = *(v161 + 16);
                v185 = *(v161 + 28);
                v186 = *(v161 + 32);
                v232 = *(v161 + 40);
                v237 = *v161;
                *v225 = *(v161 + 60);
                *&v225[16] = *(v161 + 76);
                v187 = v181[1];
                *v161 = *v181;
                *(v161 + 16) = v187;
                v188 = v181[2];
                v189 = v181[3];
                v190 = v181[4];
                *(v161 + 73) = *(v181 + 73);
                *(v161 + 48) = v189;
                *(v161 + 64) = v190;
                *(v161 + 32) = v188;
                if (v179 >= 2)
                {
                  while (1)
                  {
                    v191 = v181;
                    v192 = v180 - 1;
                    v180 = (v180 - 1) >> 1;
                    v181 = (i + 96 * v180);
                    v193 = *(v181 + 14);
                    if (v193 <= v183)
                    {
                      if (v193 != v183)
                      {
                        break;
                      }

                      v194 = *(v181 + 6);
                      if (v194 <= v184 && (v194 != v184 || *(v181 + 4) >= v186))
                      {
                        break;
                      }
                    }

                    v195 = v181[1];
                    *v191 = *v181;
                    v191[1] = v195;
                    v196 = v181[2];
                    v197 = v181[3];
                    v198 = v181[4];
                    *(v191 + 73) = *(v181 + 73);
                    v191[3] = v197;
                    v191[4] = v198;
                    v191[2] = v196;
                    if (v192 <= 1)
                    {
                      goto LABEL_233;
                    }
                  }

                  v181 = v191;
                }

LABEL_233:
                *v181 = v237;
                *(v181 + 2) = v241;
                *(v181 + 6) = v184;
                *(v181 + 7) = v185;
                *(v181 + 4) = v186;
                *(v181 + 40) = v232;
                *(v181 + 14) = v183;
                *(v181 + 60) = *v225;
                result = *&v225[13];
                *(v181 + 73) = *&v225[13];
              }
            }
          }
        }

        if (v159-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v13 = v12 >> 1;
    v14 = (i + 96 * (v12 >> 1));
    if (v11 <= 0x3000)
    {
      sub_10064D3A8((a1 + 96 * v13), a1, a2 - 6);
    }

    else
    {
      sub_10064D3A8(a1, (a1 + 96 * v13), a2 - 6);
      v15 = 3 * v13;
      v16 = (a1 + 96 * v13 - 96);
      sub_10064D3A8((a1 + 96), v16, a2 - 12);
      v17 = (a1 + 96 + 32 * v15);
      sub_10064D3A8((a1 + 192), v17, a2 - 18);
      sub_10064D3A8(v16, v14, v17);
      v242 = *a1;
      v253 = *(a1 + 16);
      *v277 = *(a1 + 64);
      *&v277[16] = *(a1 + 80);
      v261 = *(a1 + 32);
      v269 = *(a1 + 48);
      v19 = v14[3];
      v18 = v14[4];
      v20 = v14[2];
      *(a1 + 73) = *(v14 + 73);
      *(a1 + 48) = v19;
      *(a1 + 64) = v18;
      *(a1 + 32) = v20;
      v21 = v14[1];
      *a1 = *v14;
      *(a1 + 16) = v21;
      *v14 = v242;
      v14[1] = v253;
      *(v14 + 73) = *&v277[9];
      v14[3] = v269;
      v14[4] = *v277;
      v14[2] = v261;
    }

    --a3;
    if (a4)
    {
      v22 = *(a1 + 56);
LABEL_23:
      v25 = 0;
      v239 = *(a1 + 16);
      v26 = *(a1 + 24);
      v27 = *(a1 + 32);
      v230 = *(a1 + 40);
      v233 = *a1;
      *v221 = *(a1 + 60);
      *&v221[16] = *(a1 + 76);
      while (1)
      {
        v28 = *(a1 + v25 + 152);
        if (v28 <= v22)
        {
          if (v28 != v22)
          {
            break;
          }

          v29 = *(a1 + v25 + 120);
          if (v29 <= v26 && (v29 != v26 || *(a1 + v25 + 128) >= v27))
          {
            break;
          }
        }

        v25 += 96;
      }

      v30 = a1 + v25 + 96;
      if (v25)
      {
        v31 = *(a2 - 10);
        v32 = (a2 - 4);
        v33 = (a2 - 6);
        if (v31 <= v22)
        {
          do
          {
            if (v31 == v22)
            {
              v34 = *(v32 - 2);
              if (v34 > v26)
              {
                goto LABEL_54;
              }

              if (v34 == v26 && *v32 < v27)
              {
                break;
              }
            }

            v33 -= 12;
            v31 = *(v32 - 18);
            v32 -= 12;
          }

          while (v31 <= v22);
LABEL_37:
          v33 = v32 - 4;
        }
      }

      else
      {
        v33 = a2;
        if (v30 < a2)
        {
          v35 = *(a2 - 10);
          v33 = (a2 - 6);
          if (v35 <= v22)
          {
            v32 = (a2 - 4);
            v33 = (a2 - 6);
            while (1)
            {
              v36 = v32 - 4;
              if (v35 != v22)
              {
                goto LABEL_50;
              }

              v37 = *(v32 - 2);
              if (v37 > v26)
              {
                break;
              }

              if (v37 == v26)
              {
                if (*v32 < v27 || v30 >= v36)
                {
                  break;
                }
              }

              else
              {
LABEL_50:
                if (v30 >= v36)
                {
                  v33 = v32 - 4;
                  break;
                }
              }

              v33 -= 12;
              v35 = *(v32 - 18);
              v32 -= 12;
              if (v35 > v22)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

LABEL_54:
      i = v30;
      if (v30 < v33)
      {
        v39 = v33;
        do
        {
          v243 = *i;
          v254 = *(i + 16);
          *v278 = *(i + 64);
          *&v278[16] = *(i + 80);
          v262 = *(i + 32);
          v270 = *(i + 48);
          v41 = v39[3];
          v40 = v39[4];
          v42 = v39[2];
          *(i + 73) = *(v39 + 73);
          *(i + 48) = v41;
          *(i + 64) = v40;
          *(i + 32) = v42;
          v43 = v39[1];
          *i = *v39;
          *(i + 16) = v43;
          *v39 = v243;
          v39[1] = v254;
          *(v39 + 73) = *&v278[9];
          v39[3] = v270;
          v39[4] = *v278;
          v39[2] = v262;
          do
          {
            do
            {
              i += 96;
              v44 = *(i + 56);
            }

            while (v44 > v22);
            if (v44 != v22)
            {
              break;
            }

            v45 = *(i + 24);
          }

          while (v45 > v26 || v45 == v26 && *(i + 32) < v27);
          v46 = (v39 - 6);
          v47 = *(v39 - 10);
          if (v47 <= v22)
          {
            v48 = (v39 - 4);
            do
            {
              if (v47 == v22)
              {
                v49 = *(v48 - 2);
                if (v49 > v26)
                {
                  break;
                }

                if (v49 == v26 && *v48 < v27)
                {
                  goto LABEL_70;
                }
              }

              v46 -= 12;
              v47 = *(v48 - 18);
              v48 -= 12;
            }

            while (v47 <= v22);
            v46 = v48 - 4;
          }

LABEL_70:
          v39 = v46;
        }

        while (i < v46);
      }

      v50 = (i - 96);
      if (i - 96 != a1)
      {
        v51 = *(i - 80);
        *a1 = *v50;
        *(a1 + 16) = v51;
        v52 = *(i - 64);
        v53 = *(i - 48);
        v54 = *(i - 32);
        *(a1 + 73) = *(i - 23);
        *(a1 + 48) = v53;
        *(a1 + 64) = v54;
        *(a1 + 32) = v52;
      }

      *v50 = v233;
      *(i - 80) = v239;
      *(i - 72) = v26;
      *(i - 64) = v27;
      *(i - 56) = v230;
      *(i - 40) = v22;
      *(i - 23) = *&v221[13];
      *(i - 36) = *v221;
      if (v30 < v33)
      {
        goto LABEL_76;
      }

      v55 = sub_10064DAC8(a1, i - 96);
      if (sub_10064DAC8(i, a2))
      {
        a2 = (i - 96);
        if (v55)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v55)
      {
LABEL_76:
        sub_1001A4480(a1, i - 96, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v22 = *(a1 - 40);
      v23 = *(a1 + 56);
      if (v22 > v23)
      {
        v22 = *(a1 + 56);
        goto LABEL_23;
      }

      if (v22 == v23)
      {
        v24 = *(a1 - 72);
        v56 = *(a1 + 24);
        if (v24 > v56)
        {
          goto LABEL_23;
        }

        if (v24 == v56)
        {
          if (*(a1 - 64) < *(a1 + 32))
          {
            goto LABEL_23;
          }

          v56 = *(a1 - 72);
        }
      }

      else
      {
        v56 = *(a1 + 24);
      }

      v240 = *(a1 + 16);
      v57 = *(a1 + 28);
      v58 = *(a1 + 32);
      v231 = *(a1 + 40);
      v234 = *a1;
      *v222 = *(a1 + 60);
      *&v222[16] = *(a1 + 76);
      v59 = *(a2 - 10);
      if (v23 > v59 || v23 == v59 && ((v66 = *(a2 - 18), v56 > v66) || v56 == v66 && v58 < *(a2 - 8)))
      {
        i = a1 + 96;
        v60 = *(a1 + 152);
        if (v23 <= v60)
        {
          v61 = a1 + 128;
          do
          {
            if (v23 == v60)
            {
              v62 = *(v61 - 8);
              if (v56 > v62)
              {
                goto LABEL_87;
              }

              if (v56 == v62 && v58 < *v61)
              {
                break;
              }
            }

            i += 96;
            v60 = *(v61 + 120);
            v61 += 96;
          }

          while (v23 <= v60);
          i = v61 - 32;
        }
      }

      else
      {
        for (i = a1 + 96; i < a2; i += 96)
        {
          v67 = *(i + 56);
          if (v23 > v67)
          {
            break;
          }

          if (v23 == v67)
          {
            v68 = *(i + 24);
            if (v56 > v68 || v56 == v68 && v58 < *(i + 32))
            {
              break;
            }
          }
        }
      }

LABEL_87:
      v63 = a2;
      if (i < a2)
      {
        for (j = (a2 - 4); ; j -= 12)
        {
          if (v23 <= v59)
          {
            if (v23 != v59)
            {
              break;
            }

            v65 = *(j - 2);
            if (v56 <= v65 && (v56 != v65 || v58 >= *j))
            {
              break;
            }
          }

          v59 = *(j - 18);
        }

        v63 = j - 4;
      }

      while (i < v63)
      {
        v244 = *i;
        v255 = *(i + 16);
        *v279 = *(i + 64);
        *&v279[16] = *(i + 80);
        v263 = *(i + 32);
        v271 = *(i + 48);
        v70 = *(v63 + 3);
        v69 = *(v63 + 4);
        v71 = *(v63 + 2);
        *(i + 73) = *(v63 + 73);
        *(i + 48) = v70;
        *(i + 64) = v69;
        *(i + 32) = v71;
        v72 = *(v63 + 1);
        *i = *v63;
        *(i + 16) = v72;
        *v63 = v244;
        *(v63 + 1) = v255;
        *(v63 + 73) = *&v279[9];
        *(v63 + 3) = v271;
        *(v63 + 4) = *v279;
        *(v63 + 2) = v263;
        v73 = i + 96;
        v74 = *(i + 152);
        if (v23 <= v74)
        {
          v75 = i + 128;
          do
          {
            if (v23 == v74)
            {
              v76 = *(v75 - 8);
              if (v56 > v76)
              {
                break;
              }

              if (v56 == v76 && v58 < *v75)
              {
                goto LABEL_109;
              }
            }

            v73 += 96;
            v74 = *(v75 + 120);
            v75 += 96;
          }

          while (v23 <= v74);
          i = v75 - 32;
        }

        else
        {
LABEL_109:
          i = v73;
        }

        do
        {
          do
          {
            v63 -= 12;
            v77 = *(v63 + 14);
          }

          while (v23 > v77);
          if (v23 != v77)
          {
            break;
          }

          v78 = *(v63 + 6);
        }

        while (v56 > v78 || v56 == v78 && v58 < v63[4]);
      }

      v79 = (i - 96);
      if (i - 96 != a1)
      {
        v80 = *(i - 80);
        *a1 = *v79;
        *(a1 + 16) = v80;
        v81 = *(i - 64);
        v82 = *(i - 48);
        v83 = *(i - 32);
        *(a1 + 73) = *(i - 23);
        *(a1 + 48) = v82;
        *(a1 + 64) = v83;
        *(a1 + 32) = v81;
      }

      a4 = 0;
      *(i - 80) = v240;
      *v79 = v234;
      *(i - 72) = v56;
      *(i - 68) = v57;
      *(i - 64) = v58;
      *(i - 56) = v231;
      *(i - 40) = v23;
      result = *v222;
      *(i - 23) = *&v222[13];
      *(i - 36) = *v222;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v90 = (i + 192);
      result = sub_10064D3A8(i, (i + 96), (i + 192));
      v91 = *(a2 - 10);
      v92 = *(i + 248);
      if (v91 > v92 || v91 == v92 && ((v203 = *(a2 - 18), v204 = *(i + 216), v203 > v204) || v203 == v204 && (result = *(a2 - 8), result < *(i + 224))))
      {
        v265 = *(i + 224);
        v273 = *(i + 240);
        *v281 = *(i + 256);
        *&v281[16] = *(i + 272);
        v246 = *v90;
        v257 = *(i + 208);
        v93 = *(a2 - 5);
        *v90 = *v9;
        *(i + 208) = v93;
        v95 = *(a2 - 3);
        v94 = *(a2 - 2);
        v96 = *(a2 - 4);
        *(i + 265) = *(a2 - 23);
        *(i + 240) = v95;
        *(i + 256) = v94;
        *(i + 224) = v96;
        *v9 = v246;
        *(a2 - 5) = v257;
        result = *&v265;
        *(a2 - 23) = *&v281[9];
        *(a2 - 3) = v273;
        *(a2 - 2) = *v281;
        *(a2 - 4) = v265;
        v97 = *(i + 248);
        v98 = *(i + 152);
        if (v97 > v98 || v97 == v98 && ((v217 = *(i + 216), v218 = *(i + 120), v217 > v218) || v217 == v218 && (result = *(i + 224), result < *(i + 128))))
        {
          v266 = *(i + 128);
          v274 = *(i + 144);
          *v282 = *(i + 160);
          *&v282[16] = *(i + 176);
          v247 = *(i + 96);
          v258 = *(i + 112);
          v99 = *(i + 240);
          *(i + 128) = *(i + 224);
          *(i + 144) = v99;
          *(i + 160) = *(i + 256);
          *(i + 169) = *(i + 265);
          v100 = *(i + 208);
          *(i + 96) = *v90;
          *(i + 112) = v100;
          *v90 = v247;
          *(i + 208) = v258;
          *(i + 265) = *&v282[9];
          result = *&v274;
          *(i + 240) = v274;
          *(i + 256) = *v282;
          *(i + 224) = v266;
          v101 = *(i + 152);
          v102 = *(i + 56);
          if (v101 > v102 || v101 == v102 && ((v219 = *(i + 120), v220 = *(i + 24), v219 > v220) || v219 == v220 && (result = *(i + 128), result < *(i + 32))))
          {
            v248 = *i;
            v259 = *(i + 16);
            *v283 = *(i + 64);
            *&v283[16] = *(i + 80);
            v267 = *(i + 32);
            v275 = *(i + 48);
            *(i + 73) = *(i + 169);
            v103 = *(i + 160);
            *(i + 48) = *(i + 144);
            *(i + 64) = v103;
            v104 = *(i + 128);
            *(i + 16) = *(i + 112);
            *(i + 32) = v104;
            *i = *(i + 96);
            *(i + 96) = v248;
            *(i + 112) = v259;
            result = *&v267;
            *(i + 169) = *&v283[9];
            *(i + 144) = v275;
            *(i + 160) = *v283;
            *(i + 128) = v267;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return sub_10064D670(i, i + 96, i + 192, (i + 288), a2 - 6);
    }

    goto LABEL_9;
  }

  return sub_10064D3A8(i, (i + 96), a2 - 6);
}

void sub_1001A565C(double *a1, double a2, double a3, double a4, double a5)
{
  if (a5 >= 0.0)
  {
    v5 = a5;
  }

  else
  {
    v5 = 0.0;
  }

  if (a1[8] > v5)
  {
    v7 = a1[2];
    if (v7 < a2)
    {
      a2 = a1[2];
    }

    if (a2 >= a1[3])
    {
      v8 = a2;
    }

    else
    {
      v8 = a1[3];
    }

    v9 = *a1;
    if (*a1 > a4)
    {
      a4 = *a1;
    }

    if (a1[1] <= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = a1[1];
    }

    exp(-(a4 - v9) / a1[4]);
    exp(-(v10 - v9) / a1[5]);
    v11 = -(v7 - v8);
    v12 = a1[6];
    v13 = a1[9];
    v14 = v11 / v12;
    if (v13 <= v5)
    {
      exp(-(v5 - v13) / a1[7]);
      exp(v14);
    }

    else
    {
      exp(v11 / v12);
    }
  }
}

uint64_t sub_1001A576C(double **a1, double a2, double a3, int a4)
{
  if (a4)
  {
    return sub_100A32690(a1, a2, a3);
  }

  else
  {
    return sub_1001A9098(a1, a2, a3);
  }
}

void sub_1001A5780(uint64_t a1, double *a2, double *a3, uint64_t *a4, uint64_t a5, double *a6, double *a7)
{
  v14 = sub_1001A4254(a3, a4);
  if (v14)
  {
    if (*(a1 + 120) == 1)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B40DE8();
      }

      v15 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, already initialized", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B40DFC();
      }
    }

    else if (sub_10024C148(v14, a2, a5, a4, a6, a7))
    {
      sub_1001A9800(buf, (a5 + 8));
      v16 = *(*(*&v27[4] + (((*(&v30 + 1) + v30 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (BYTE8(v30) + v30 - 1));
      sub_100102BC8(buf);
      sub_1001A9800(buf, (a5 + 8));
      v17 = *(*(*&v27[4] + (((*(&v30 + 1) + v30 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (BYTE8(v30) + v30 - 1) + 8);
      sub_100102BC8(buf);
      if (*a2 >= 0.0)
      {
        if (v17 >= 0.0)
        {
          *(a1 + 64) = *a2;
          *(a1 + 72) = *a2;
          *(a1 + 80) = v17;
          *a1 = *a3;
          v21 = *(sub_1000F7F38() + 7) * *a4;
          *(a1 + 8) = v21 * v21;
          *(a1 + 112) = v16;
          *(a1 + 120) = 1;
          if (qword_1025D4620 != -1)
          {
            sub_101B40BC4();
          }

          v22 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            v23 = *a2;
            v24 = *a3;
            *buf = 134284289;
            *v27 = v23;
            *&v27[8] = 2049;
            *&v27[10] = v17;
            v28 = 2049;
            v29 = v24;
            LOWORD(v30) = 2050;
            *(&v30 + 2) = v21;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, initialized, wifi timestamp, %{private}0.3f, relative altitude timestamp, %{private}0.3f, initial altitude, %{private}0.3f, initial uncertainty, %{public}0.3f.", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_101B40BC4();
            }

            v25 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAltitudeKalmanFilter::initializeKalmanFilter(const CFAbsoluteTime &, const double &, const double &, const CL::Wifi1::Types::ElevationHistory *, const double &, const double &)", "%s\n", v25);
            if (v25 != buf)
            {
              free(v25);
            }
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101B40BC4();
          }

          v20 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134283521;
            *v27 = v17;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, did not initialize, relative altitude timestamp %{private}0.3f was negative.", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B40BEC(v17);
          }
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B40BC4();
        }

        v18 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v19 = *a2;
          *buf = 134283521;
          *v27 = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, did not initialize, wifi measurement timestamp %{private}0.3f was negative.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B40CFC();
        }
      }
    }
  }
}

void *sub_1001A5C00(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024A9BC0;
  sub_1001A9C18(a1 + 3, a2);
  return a1;
}

void *sub_1001A5C5C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = 0;
  if (result[1] != *result)
  {
    v3 = result;
    do
    {
      result = sub_100D24284(a2, &v4);
      ++v4;
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 5));
  }

  return result;
}

uint64_t sub_1001A5D00(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001A5EAC((a1 + 16), a3);
  *(a1 + 40) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = sub_1001A5F04(a1, (a1 + 16));
  return a1;
}

void sub_1001A5D60(_Unwind_Exception *a1)
{
  sub_1003C93BC(v1 + 16, *(v1 + 24));
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001A5D8C(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_100D24350(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_1001A5E24(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1001A5D8C(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

void *sub_1001A5EAC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1001A5E24(a1, *a2, (a2 + 8));
  return a1;
}

double sub_1001A5F04(uint64_t **a1, void *a2)
{
  v4 = a2[2];
  if (!v4)
  {
    return 0.0;
  }

  if (v4 == 1)
  {
    return 1.0;
  }

  v27 = v2;
  v28 = v3;
  v7 = a2 + 1;
  v8 = *a2;
  if (*a2 == a2 + 1)
  {
    v10 = 0;
    v22 = (v4 - 1) * v4;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = v8[1];
      v12 = v11;
      v13 = v8;
      if (v11)
      {
        do
        {
          v14 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v14 = v13[2];
          v15 = *v14 == v13;
          v13 = v14;
        }

        while (!v15);
      }

      if (v14 != v7)
      {
        do
        {
          v16 = **a1;
          v17 = v16 + 96 * v8[4];
          v18 = v16 + 96 * v14[4];
          sub_10018D404(v26);
          if (sub_1002AB240(*(v17 + 8), *(v17 + 16), *(v18 + 8), *(v18 + 16)) <= (*(v18 + 48) + *(v17 + 48)))
          {
            ++v10;
          }

          v19 = v14[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v14[2];
              v15 = *v20 == v14;
              v14 = v20;
            }

            while (!v15);
          }

          v14 = v20;
        }

        while (v20 != v7);
        v11 = v8[1];
      }

      if (v11)
      {
        do
        {
          v21 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v21 = v8[2];
          v15 = *v21 == v8;
          v8 = v21;
        }

        while (!v15);
      }

      v8 = v21;
    }

    while (v21 != v7);
    v22 = (a2[2] - 1) * a2[2];
    if (v10 > v22 >> 1)
    {
      if (qword_1025D4630 != -1)
      {
        sub_101A66E94();
      }

      v23 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
      {
        *v26 = 0;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "[WifiReachIntersection] pairwise intersection count is more than the total possibility; something is wrong.", v26, 2u);
      }

      v24 = sub_10000A100(121, 0);
      result = 1.0;
      if (v24)
      {
        sub_101A66EBC();
        return 1.0;
      }

      return result;
    }
  }

  v25 = v22 >> 1;
  result = 1.0;
  if (v10 != v25)
  {
    return v10 / v25;
  }

  return result;
}

uint64_t sub_1001A612C(uint64_t a1)
{
  sub_10018D404(a1);
  *(v2 + 40) = 0xFFFF;
  *(v2 + 52) = 0;
  *(v2 + 44) = 0;
  *(v2 + 60) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v2 + 76) = _Q0;
  *(v2 + 92) = _Q0;
  *(v2 + 108) = _Q0;
  *(v2 + 124) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 128) = 0xBFF0000000000000;
  *(v2 + 152) = 0;
  *(v2 + 156) = 0xBFF0000000000000;
  *(v2 + 164) = 0x7FFFFFFF;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 168) = 0;
  *(v2 + 192) = 0;
  sub_100021ED8(v2 + 200);
  return a1;
}

double sub_1001A61B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a2 + 16) = 0u;
  *(a2 + 32) = _Q1;
  result = NAN;
  *(a2 + 48) = -1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 76) = -1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 92) = -1;
  return result;
}

uint64_t sub_1001A61F4(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return 1;
  }

  sub_10000EC00(&__p, "ff:ff:ff:ff:ff:ff");
  v3 = sub_100196E8C(&__p);
  sub_1001A61B8(v3, v44);
  v4 = *(a1 + 136);
  v5 = v44[1];
  *(a1 + 72) = v44[2];
  v6 = v44[4];
  *(a1 + 88) = v44[3];
  *(a1 + 104) = v6;
  *(a1 + 120) = v44[5];
  *(a1 + 40) = v44[0];
  *(a1 + 56) = v5;
  if ((v4 & 1) == 0)
  {
    *(a1 + 136) = 1;
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v42 = 0;
  v43 = 0;
  if (sub_1001A6564(a1, &__p))
  {
    __src = 0;
    v39 = 0;
    v40 = 0;
    v7 = __p;
    v8 = v42;
    if (__p == v42)
    {
      v27 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v10 = (**a1 + 96 * *v7);
        if (v9 >= v40)
        {
          v15 = __src;
          v16 = v9 - __src;
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __src) >> 5);
          v18 = v17 + 1;
          if (v17 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v40 - __src) >> 5) > v18)
          {
            v18 = 0x5555555555555556 * ((v40 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 5) >= 0x155555555555555)
          {
            v19 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            sub_1001A1980(&__src, v19);
          }

          v20 = 96 * v17;
          v21 = v10[1];
          *v20 = *v10;
          *(v20 + 16) = v21;
          v22 = v10[2];
          v23 = v10[3];
          v24 = v10[5];
          *(v20 + 64) = v10[4];
          *(v20 + 80) = v24;
          *(v20 + 32) = v22;
          *(v20 + 48) = v23;
          v9 = (96 * v17 + 96);
          v25 = (v20 - v16);
          memcpy((v20 - v16), v15, v16);
          v26 = __src;
          __src = v25;
          v39 = v9;
          v40 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          v11 = v10[1];
          *v9 = *v10;
          *(v9 + 1) = v11;
          v12 = v10[2];
          v13 = v10[3];
          v14 = v10[5];
          *(v9 + 4) = v10[4];
          *(v9 + 5) = v14;
          *(v9 + 2) = v12;
          *(v9 + 3) = v13;
          v9 += 96;
        }

        v39 = v9;
        ++v7;
      }

      while (v7 != v8);
      v27 = __src;
    }

    sub_1001A9D94(&__src, v37, v27[1], v27[2]);
    v35 = 0.0;
    v36 = 0.0;
    v34 = 0;
    if (sub_1002F0CDC(v37, &v35, &v34))
    {
      v32 = 0;
      v33 = 0;
      v31 = 0;
      sub_10018D404(v44);
      sub_1002AC7D4(v44, &v33, &v32, &v31, v27[1], v27[2], v27[3], v36, v35, 0.0);
      v29 = v32;
      *(a1 + 48) = v33;
      *(a1 + 56) = v29;
      *(a1 + 72) = v34;
    }

    if (v37[0])
    {
      v37[1] = v37[0];
      operator delete(v37[0]);
    }

    if (__src)
    {
      v39 = __src;
      operator delete(__src);
    }
  }

  else if (v42 - __p == 8)
  {
    v28 = **a1 + 96 * *__p;
    *(a1 + 48) = *(v28 + 8);
    *(a1 + 72) = *(v28 + 32);
  }

  v1 = sub_10019A2D4((a1 + 40));
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  return v1;
}

void sub_1001A64F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A6564(double *a1, uint64_t **a2)
{
  if (a1[18] == 0.0)
  {
    sub_100288420(buf, *(a1 + 2), (a1 + 3));
    v4 = *a2;
    if (*a2)
    {
      a2[1] = v4;
      operator delete(v4);
    }

    v5 = 0;
    *a2 = *buf;
    a2[2] = *&buf[16];
  }

  else
  {
    v41 = (a1 + 18);
    v6 = *(a1 + 2);
    v42 = (a1 + 3);
    if (v6 == (a1 + 3))
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v7 = v6[4];
        v8 = **a1;
        if (v7 >= 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 8) - v8) >> 5))
        {
          if (qword_1025D4630 != -1)
          {
            sub_101A66E94();
          }

          v21 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
          {
            v22 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 8) - **a1) >> 5);
            *buf = 134349312;
            *&buf[4] = v7;
            *&buf[12] = 2050;
            *&buf[14] = v22;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "[WifiReachIntersection] out of bound candidate index %{public}lu from %{public}lu input centroids", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4630 != -1)
            {
              sub_101A66E94();
            }

            v23 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiReachIntersection::ReachIntersection::removeCentroidIndicesWithNestedAps(std::vector<size_t> &)", "%s\n", v23);
            if (v23 != buf)
            {
              free(v23);
            }
          }
        }

        else
        {
          v10 = *a2;
          v9 = a2[1];
          if (*a2 == v9)
          {
LABEL_12:
            v19 = a2[1];
            v18 = a2[2];
            if (v19 >= v18)
            {
              v24 = *a2;
              v25 = v19 - *a2;
              v26 = (v25 >> 3) + 1;
              if (v26 >> 61)
              {
                sub_10028C64C();
              }

              v27 = v18 - v24;
              if (v27 >> 2 > v26)
              {
                v26 = v27 >> 2;
              }

              v28 = v27 >= 0x7FFFFFFFFFFFFFF8;
              v29 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v28)
              {
                v29 = v26;
              }

              if (v29)
              {
                sub_1000B9708(a2, v29);
              }

              v30 = (8 * (v25 >> 3));
              *v30 = v7;
              v20 = (v30 + 1);
              memcpy(0, v24, v25);
              v31 = *a2;
              *a2 = 0;
              a2[1] = v20;
              a2[2] = 0;
              if (v31)
              {
                operator delete(v31);
              }
            }

            else
            {
              *v19 = v7;
              v20 = (v19 + 1);
            }

            a2[1] = v20;
          }

          else
          {
            v11 = v8 + 96 * v7;
            while (1)
            {
              v12 = *v10;
              v13 = **a1;
              sub_10018D404(buf);
              v14 = v13 + 96 * v12;
              v15 = sub_1002AB240(*(v11 + 8), *(v11 + 16), *(v14 + 8), *(v14 + 16));
              v16 = *(v11 + 48);
              v17 = *(v14 + 48);
              v5 |= v15 <= (v17 + v16);
              if (v15 + v17 <= v16)
              {
                break;
              }

              if (++v10 == v9)
              {
                goto LABEL_12;
              }
            }
          }
        }

        v32 = v6[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v6[2];
            v34 = *v33 == v6;
            v6 = v33;
          }

          while (!v34);
        }

        v6 = v33;
      }

      while (v33 != v42);
    }

    v36 = *(a1 + 4);
    v35 = (a1 + 4);
    if (v36 >= 2 && (v5 & 1) == 0)
    {
      if (qword_1025D4630 != -1)
      {
        sub_101A66E94();
      }

      v37 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
      {
        v38 = *v35;
        v39 = *v41;
        *buf = 134349312;
        *&buf[4] = v38;
        *&buf[12] = 2050;
        *&buf[14] = v39;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "[WifiReachIntersection] no intersection for %{public}zu centroid(s) after passing pairwise intersection check %{public}f > 0; something is wrong", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A66FC4(v35, v41);
      }

      v5 = 0;
    }
  }

  return v5 & 1;
}

void sub_1001A6A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, double a8)
{
  v16 = rand();
  if (!(v16 % *sub_1001A7088()))
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100AD218C;
    v24 = &unk_102493508;
    v25 = a1;
    v26 = a2;
    v27 = a4;
    v28 = a8;
    v29 = a3;
    v30 = a5;
    v31 = a6;
    v32 = a7;
    AnalyticsSendEventLazy();
  }

  if (sub_100072814(a1 + 40) && sub_100072814(a2))
  {
    if (sub_100072814(a3) || sub_100072814(a5))
    {
      if (vabdd_f64(*(a1 + 116), *(a2 + 76)) <= 1.0)
      {
        v19 = rand();
        if (!(v19 % *sub_1001A7088()))
        {
          v21 = _NSConcreteStackBlock;
          v22 = 3221225472;
          v23 = sub_100AD1AC8;
          v24 = &unk_102493508;
          v25 = a1;
          v26 = a2;
          v27 = a4;
          v28 = a8;
          v29 = a3;
          v30 = a5;
          v31 = a6;
          v32 = a7;
          AnalyticsSendEventLazy();
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_1019E6664();
        }

        v17 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v21) = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "[WifiPositionCalculatorWithReachIntersectionAnalytics] aborted due to deltaTimeFromRef is greater than maximum threshold", &v21, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019E6854();
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019E6664();
      }

      v20 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v21) = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "[WifiPositionCalculatorWithReachIntersectionAnalytics] aborted due to invalid afterLocation and afterLocationConservative.", &v21, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019E6770();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019E6664();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "[WifiPositionCalculatorWithReachIntersectionAnalytics] aborted due to invalid fRefLocation or invalid beforeLocation.", &v21, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019E668C();
    }
  }
}

void sub_1001A6D2C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 152) == 1 && sub_10019A2D4((a1 + 56)))
  {
    if ((*(a1 + 152) & 1) == 0)
    {
      sub_100173BA0();
    }

    v4 = *(a1 + 104);
    a2[2] = *(a1 + 88);
    a2[3] = v4;
    v5 = *(a1 + 136);
    a2[4] = *(a1 + 120);
    a2[5] = v5;
    v6 = *(a1 + 72);
    *a2 = *(a1 + 56);
    a2[1] = v6;
  }

  else
  {
    sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
    v7 = sub_100196E8C(__p);
    sub_1001A61B8(v7, a2);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1001A6DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1001A6DF0(uint64_t a1, _OWORD *a2)
{
  v4 = a2[7];
  v29 = a2[6];
  v30 = v4;
  v31[0] = a2[8];
  *(v31 + 12) = *(a2 + 140);
  v5 = a2[3];
  v25 = a2[2];
  v26 = v5;
  v6 = a2[5];
  v27 = a2[4];
  v28 = v6;
  v7 = a2[1];
  *v24 = *a2;
  *&v24[16] = v7;
  sub_1001A6D2C(a1, &v21);
  *&v24[4] = v22;
  *&v24[20] = v23;
  v8 = a2[5];
  v16 = a2[4];
  v17 = v8;
  v9 = a2[3];
  v14 = a2[2];
  v15 = v9;
  *&v20[12] = *(a2 + 140);
  v10 = a2[8];
  v19 = a2[7];
  *v20 = v10;
  v18 = a2[6];
  v11 = a2[1];
  *v13 = *a2;
  *&v13[16] = v11;
  *&v13[4] = *(a1 + 176);
  *&v13[20] = *(a1 + 200);
  sub_1001A6A1C(a1 + 272, a2, v24, 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 8) - **a1) >> 5), v13, *(a1 + 264), *(a1 + 265), *(a1 + 160));
  return result;
}

void sub_1001A6EF8(uint64_t a1, __int128 *a2, char *a3)
{
  if (sub_1001A6F60(a2))
  {

    sub_100AD1884(a1 + 272, a2, a3);
  }
}

BOOL sub_1001A6F7C(uint64_t a1, uint64_t a2)
{
  v4 = *sub_1001A6A10();
  if (v4 == 2)
  {
    result = sub_10019A2D4((a1 + 168));
    if (result)
    {
      *(a2 + 4) = *(a1 + 176);
      sub_100027CA8(a2);
      *(a2 + 20) = *(a1 + 200);
      *(a2 + 182) = 2;
      if ((*(a1 + 264) & 1) == 0)
      {
        *(a2 + 156) = -1431655765 * ((*(*a1 + 8) - **a1) >> 5);
      }

      return 1;
    }
  }

  else if (v4 == 1 && *(a1 + 152) == 1)
  {
    result = sub_10019A2D4((a1 + 56));
    if (result)
    {
      sub_1001A6D2C(a1, v6);
      *(a2 + 4) = *&v6[8];
      sub_100027CA8(a2);
      *(a2 + 20) = v7;
      *(a2 + 156) = -1431655765 * ((*(*a1 + 8) - **a1) >> 5);
      result = 1;
      *(a2 + 182) = 1;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1001A7094(void *a1@<X8>)
{
  if ((atomic_load_explicit(qword_102664AB0, memory_order_acquire) & 1) == 0)
  {
    sub_101B82524();
  }

  if (qword_102664AA0 != -1)
  {
    sub_101B82594();
  }

  v2 = *(&xmmword_102664AC0 + 1);
  *a1 = xmmword_102664AC0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

BOOL sub_1001A7210()
{
  HIDWORD(v0) = -1030792151 * rand() + 85899344;
  LODWORD(v0) = HIDWORD(v0);
  return (v0 >> 2) < 0x28F5C29;
}

void sub_1001A7250(uint64_t a1, uint64_t a2)
{
  if (sub_1001A7210())
  {
    sub_1002393EC(a1, __p);
    sub_100239484(v12, __p);
    *buf = __p;
    sub_1002394D8(buf);
    if (qword_1025D4620 != -1)
    {
      sub_101A4C50C();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_100239658(v12, __p);
      v5 = v18 >= 0 ? __p : __p[0];
      *buf = 136380675;
      *&buf[4] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLWifiAssociatedApCentroidDatabase, metrics, %{private}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C3EC(__p);
      sub_100239658(v12, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136380675;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApCentroidDatabase::submitMetricsIfPossible(const BOOL)", "%s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }

    v6 = sub_100ADEA50(v12);
    sub_100243270(v12);
    v8 = v7;
    v9 = sub_100243328(v12);
    sub_101186360(v8, v9, a1 + 256, v6, a2);
    __p[0] = v12;
    sub_1002394D8(__p);
  }
}

void sub_1001A74B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a12;
  sub_1002394D8(&a22);
  _Unwind_Resume(a1);
}

void sub_1001A74F0(void *a1@<X8>)
{
  if ((atomic_load_explicit(qword_10265D960, memory_order_acquire) & 1) == 0)
  {
    sub_101A45748();
  }

  if (qword_10265D950 != -1)
  {
    sub_101A457B8();
  }

  v2 = *(&xmmword_10265D970 + 1);
  *a1 = xmmword_10265D970;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

__n128 sub_1001A75A8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

void sub_1001A75DC(uint64_t *a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, int *a9, double *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = a10;
  if ((atomic_load_explicit(&qword_102658508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658508))
  {
    sub_10018D404(xmmword_1026584E0);
    __cxa_guard_release(&qword_102658508);
    v16 = a10;
  }

  v17 = *(a12 + 28);
  __src = 0;
  v219 = 0;
  v220 = 0;
  v18 = *(a11 + 76);
  v19 = *(a11 + 20);
  *v16 = -1.0;
  if (v19 >= 0.0 && v19 < *(sub_1001A8F5C() + 12))
  {
    v19 = *(sub_1001A8F5C() + 12);
  }

  v21 = *a1;
  v20 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 5) > *(sub_1001A8F5C() + 26) || v19 < 0.0)
  {
    if (*(a11 + 96) != 4)
    {
      goto LABEL_53;
    }

    v25 = 0;
LABEL_12:
    v26 = *(a11 + 84);
    if (v26 <= *(sub_1001A8F5C() + 27) || !v25)
    {
      goto LABEL_53;
    }

    goto LABEL_13;
  }

  v23 = sub_1001A8F5C();
  *&v22 = a3 - v18;
  v24 = *(v23 + 14);
  v25 = a3 - v18 <= v24;
  if (*(a11 + 96) == 4)
  {
    goto LABEL_12;
  }

  if (*&v22 > v24)
  {
LABEL_53:
    v59 = *a1;
    v58 = a1[1];
    if (*a1 != v58)
    {
      do
      {
        sub_1001A8F68(v59, v237);
        v60 = v219;
        if (v219 >= v220)
        {
          v65 = __src;
          v66 = v219 - __src;
          v67 = 0xAAAAAAAAAAAAAAABLL * ((v219 - __src) >> 5);
          v68 = v67 + 1;
          if (v67 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v220 - __src) >> 5) > v68)
          {
            v68 = 0x5555555555555556 * ((v220 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v220 - __src) >> 5) >= 0x155555555555555)
          {
            v68 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v68)
          {
            sub_1001A4428(&__src, v68);
          }

          v69 = (32 * ((v219 - __src) >> 5));
          v70 = *&v237[16];
          *v69 = *v237;
          v69[1] = v70;
          v71 = *v238;
          v72 = *&v238[16];
          v73 = v240;
          v69[4] = v239;
          v69[5] = v73;
          v69[2] = v71;
          v69[3] = v72;
          v64 = (96 * v67 + 96);
          v74 = (96 * v67 - v66);
          memcpy(v69 - v66, v65, v66);
          v75 = __src;
          __src = v74;
          v219 = v64;
          v220 = 0;
          if (v75)
          {
            operator delete(v75);
          }
        }

        else
        {
          v61 = *&v237[16];
          *v219 = *v237;
          *(v60 + 1) = v61;
          v22 = *v238;
          v62 = *&v238[16];
          v63 = v240;
          *(v60 + 4) = v239;
          *(v60 + 5) = v63;
          *(v60 + 2) = v22;
          *(v60 + 3) = v62;
          v64 = (v60 + 96);
        }

        v219 = v64;
        v59 += 96;
      }

      while (v59 != v58);
    }

LABEL_66:
    v76 = 0;
    goto LABEL_71;
  }

LABEL_13:
  v27 = *a1;
  v28 = a1[1];
  if (*a1 == v28)
  {
    v77 = *a1;
  }

  else
  {
    do
    {
      v29 = sub_100109D18(xmmword_1026584E0, *(a11 + 4), *(a11 + 12), *(v27 + 8), *(v27 + 16), 0.0);
      v30 = *(v27 + 48);
      if (*(v27 + 32) >= v30)
      {
        v30 = *(v27 + 32);
      }

      if (v29 - v30 - v19 <= 0.0)
      {
        sub_1001A8F68(v27, v237);
        v41 = v219;
        if (v219 >= v220)
        {
          v47 = __src;
          v48 = v219 - __src;
          v49 = 0xAAAAAAAAAAAAAAABLL * ((v219 - __src) >> 5);
          v50 = v49 + 1;
          if (v49 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v220 - __src) >> 5) > v50)
          {
            v50 = 0x5555555555555556 * ((v220 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v220 - __src) >> 5) >= 0x155555555555555)
          {
            v50 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v50)
          {
            sub_1001A4428(&__src, v50);
          }

          v51 = (32 * ((v219 - __src) >> 5));
          v52 = *&v237[16];
          *v51 = *v237;
          v51[1] = v52;
          v53 = *v238;
          v54 = *&v238[16];
          v55 = v240;
          v51[4] = v239;
          v51[5] = v55;
          v51[2] = v53;
          v51[3] = v54;
          v46 = (96 * v49 + 96);
          v56 = (96 * v49 - v48);
          memcpy(v51 - v48, v47, v48);
          v57 = __src;
          __src = v56;
          v219 = v46;
          v220 = 0;
          if (v57)
          {
            operator delete(v57);
          }
        }

        else
        {
          v42 = *&v237[16];
          *v219 = *v237;
          *(v41 + 1) = v42;
          v43 = *v238;
          v44 = *&v238[16];
          v45 = v240;
          *(v41 + 4) = v239;
          *(v41 + 5) = v45;
          *(v41 + 2) = v43;
          *(v41 + 3) = v44;
          v46 = (v41 + 96);
        }

        v219 = v46;
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018F2B38();
        }

        v31 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
        {
          CFAbsoluteTimeGetCurrent();
          sub_100EFF768(v27, v237);
          v32 = v237[23];
          v33 = *v237;
          sub_100072AFC(a11, &__p);
          v34 = v237;
          if (v32 < 0)
          {
            v34 = v33;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315395;
          *&buf[4] = v34;
          v230 = 2085;
          v231 = p_p;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#Warning WIFI_LOC: filtered by location hint, ap, %s, hint, %{sensitive}s", buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if ((v237[23] & 0x80000000) != 0)
          {
            operator delete(*v237);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F2B60(v237);
          CFAbsoluteTimeGetCurrent();
          sub_100EFF768(v27, &__p);
          v36 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v37 = __p.__r_.__value_.__r.__words[0];
          sub_100072AFC(a11, buf);
          v38 = &__p;
          if (v36 < 0)
          {
            v38 = v37;
          }

          v39 = buf;
          if (v232 < 0)
          {
            v39 = *buf;
          }

          v233 = 136315395;
          v234 = v38;
          v235 = 2085;
          v236 = v39;
          v40 = _os_log_send_and_compose_impl();
          if (v232 < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v40);
          if (v40 != v237)
          {
            free(v40);
          }
        }
      }

      v27 += 96;
    }

    while (v27 != v28);
    v27 = *a1;
    v77 = a1[1];
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v77 - v27) >> 5) >= *(sub_1001A8F5C() + 22) && __src == v219)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F2B38();
    }

    v175 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v176 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
      *v237 = 134218240;
      *&v237[4] = v176;
      *&v237[12] = 2048;
      *&v237[14] = 0xAAAAAAAAAAAAAAABLL * ((v219 - __src) >> 5);
      _os_log_impl(dword_100000000, v175, OS_LOG_TYPE_DEFAULT, "#Warning WIFI_LOC: revert hint, %lu, %lu", v237, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F2B60(v237);
      v209 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
      LODWORD(__p.__r_.__value_.__l.__data_) = 134218240;
      *(__p.__r_.__value_.__r.__words + 4) = v209;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = 0xAAAAAAAAAAAAAAABLL * ((v219 - __src) >> 5);
      v210 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v210);
      if (v210 != v237)
      {
        free(v210);
      }
    }

    v178 = *a1;
    v177 = a1[1];
    if (*a1 != v177)
    {
      do
      {
        sub_1001A8F68(v178, v237);
        v179 = v219;
        if (v219 >= v220)
        {
          v184 = __src;
          v185 = v219 - __src;
          v186 = 0xAAAAAAAAAAAAAAABLL * ((v219 - __src) >> 5);
          v187 = v186 + 1;
          if (v186 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v220 - __src) >> 5) > v187)
          {
            v187 = 0x5555555555555556 * ((v220 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v220 - __src) >> 5) >= 0x155555555555555)
          {
            v187 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v187)
          {
            sub_1001A4428(&__src, v187);
          }

          v188 = (32 * ((v219 - __src) >> 5));
          v189 = *&v237[16];
          *v188 = *v237;
          v188[1] = v189;
          v190 = *v238;
          v191 = *&v238[16];
          v192 = v240;
          v188[4] = v239;
          v188[5] = v192;
          v188[2] = v190;
          v188[3] = v191;
          v183 = (96 * v186 + 96);
          v193 = (96 * v186 - v185);
          memcpy(v188 - v185, v184, v185);
          v194 = __src;
          __src = v193;
          v219 = v183;
          v220 = 0;
          if (v194)
          {
            operator delete(v194);
          }
        }

        else
        {
          v180 = *&v237[16];
          *v219 = *v237;
          *(v179 + 1) = v180;
          v22 = *v238;
          v181 = *&v238[16];
          v182 = v240;
          *(v179 + 4) = v239;
          *(v179 + 5) = v182;
          *(v179 + 2) = v22;
          *(v179 + 3) = v181;
          v183 = (v179 + 96);
        }

        v219 = v183;
        v178 += 96;
      }

      while (v178 != v177);
    }

    goto LABEL_66;
  }

  v76 = 1;
LABEL_71:
  v78 = a13;
  v79 = 0xAAAAAAAAAAAAAAABLL * ((v219 - __src) >> 5);
  v80 = 126 - 2 * __clz(v79);
  if (v219 == __src)
  {
    v81 = 0;
  }

  else
  {
    v81 = v80;
  }

  sub_1001A4480(__src, v219, v81, 1, *&v22);
  v82 = v219;
  while (1)
  {
    v83 = sub_1001A8F5C();
    v84 = 0xAAAAAAAAAAAAAAABLL * ((v82 - __src) >> 5);
    v85 = v219;
    if (v84 <= *(v83 + 21))
    {
      break;
    }

    v82 = (v219 - 96);
    v219 -= 96;
  }

  v86 = __src;
  v87 = v219 - __src;
  if (v219 != __src)
  {
    do
    {
      v88 = *(v86 + 8);
      v90 = *(v86 + 13);
      v89 = *(v86 + 14);
      v91 = *(v86 + 4);
      v92 = sub_1001A8F5C();
      sub_1001A565C(v92, v89, v90, v91, a3 - v88);
      *&v93 = v93;
      *(v86 + 20) = LODWORD(v93);
      v86 += 96;
    }

    while (v86 != v85);
    v86 = __src;
    v85 = v219;
  }

  if (v86 == v85)
  {
    v213 = 1;
  }

  else
  {
    v94 = 360.0;
    v95 = -360.0;
    do
    {
      v96 = *(v86 + 1);
      if (v96 > v95)
      {
        v95 = *(v86 + 1);
      }

      if (v96 < v94)
      {
        v94 = *(v86 + 1);
      }

      v86 += 96;
    }

    while (v86 != v85);
    v213 = 1;
    if (v95 > 179.9 && v94 < -179.9)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v97 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *v237 = 134349312;
        *&v237[4] = v94;
        *&v237[12] = 2050;
        *&v237[14] = v95;
        _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_DEBUG, "WifiCalc, b360repr, min, %{public}.1lf, max, %{public}.1lf", v237, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(v237);
        LODWORD(__p.__r_.__value_.__l.__data_) = 134349312;
        *(__p.__r_.__value_.__r.__words + 4) = v94;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v95;
        v206 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v206);
        if (v206 != v237)
        {
          free(v206);
        }
      }

      v98 = __src;
      v99 = v219;
      if (__src != v219)
      {
        do
        {
          v98[1] = fmod(v98[1] + 360.0, 360.0);
          v98 += 12;
        }

        while (v98 != v99);
      }

      v213 = 0;
    }
  }

  v100 = sub_1001A8F5C();
  v214 = sub_1001A576C(&__src, v17, a4, *(v100 + 120));
  v102 = __src;
  v101 = v219;
  if (qword_1025D4620 != -1)
  {
    sub_1018F29C8();
  }

  v103 = 0xAAAAAAAAAAAAAAABLL * (v87 >> 5);
  v104 = 0xAAAAAAAAAAAAAAABLL * ((v101 - v102) >> 5);
  v105 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v106 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
    v107 = *(a11 + 20);
    *v237 = 134350592;
    *&v237[4] = v106;
    *&v237[12] = 2050;
    *&v237[14] = v79;
    *&v237[22] = 2050;
    *&v237[24] = v103;
    *v238 = 2050;
    *&v238[2] = v104;
    *&v238[10] = 1026;
    *&v238[12] = v214;
    *&v238[16] = 2050;
    *&v238[18] = v107;
    *&v238[26] = 1026;
    *&v238[28] = v76;
    _os_log_impl(dword_100000000, v105, OS_LOG_TYPE_DEBUG, "WifiCalc, counts, %{public}ld, %{public}ld, %{public}ld, %{public}ld, verified, %{public}d, hint, %{public}.1f, %{public}d", v237, 0x40u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F29F0(v237);
    v195 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
    v196 = *(a11 + 20);
    LODWORD(__p.__r_.__value_.__l.__data_) = 134350592;
    *(__p.__r_.__value_.__r.__words + 4) = v195;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v79;
    HIWORD(__p.__r_.__value_.__r.__words[2]) = 2050;
    v222 = *&v103;
    v223 = 2050;
    v224 = *&v104;
    v225 = 1026;
    *v226 = v214;
    *&v226[4] = 2050;
    *&v226[6] = v196;
    v227 = 1026;
    v228 = v76;
    v197 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v197);
    if (v197 != v237)
    {
      free(v197);
    }
  }

  if ((atomic_load_explicit(&qword_102658538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658538))
  {
    sub_10018D404(xmmword_102658510);
    __cxa_guard_release(&qword_102658538);
  }

  v108 = __src;
  v109 = 0xAAAAAAAAAAAAAAABLL * ((v219 - __src) >> 5);
  if (v219 == __src)
  {
    v120 = 0.0;
  }

  else
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = v109 - 1;
    if (v109 <= 1)
    {
      v114 = 1;
    }

    else
    {
      v114 = 0xAAAAAAAAAAAAAAABLL * ((v219 - __src) >> 5);
    }

    v217 = v114;
    do
    {
      v115 = v112 + 1;
      v116 = v109;
      if (v112 + 1 < v109)
      {
        v117 = v110;
        v118 = v113;
        do
        {
          v119 = sub_100109D18(xmmword_102658510, v108[12 * v112], v108[12 * v112 + 1], *(v108 + v117 + 96), *(v108 + v117 + 104), 0.0);
          v108 = __src;
          if (v119 <= (*(__src + v117 + 148) + *(__src + 24 * v112 + 13)))
          {
            ++v111;
          }

          v117 += 96;
          --v118;
        }

        while (v118);
      }

      --v113;
      v110 += 96;
      ++v112;
      v109 = v116;
    }

    while (v115 != v217);
    v120 = v111 * 100.0;
    v78 = a13;
  }

  v121 = (v109 - 1) * v109;
  if (v121 >= 2)
  {
    v122 = v120 / (v121 >> 1);
  }

  else
  {
    v122 = 100.0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F29C8();
  }

  v123 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *v237 = 134283521;
    *&v237[4] = v122;
    _os_log_impl(dword_100000000, v123, OS_LOG_TYPE_DEBUG, "WifiCalc, apReachOverlapPercentage, %{private}f", v237, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F29F0(v237);
    LODWORD(__p.__r_.__value_.__l.__data_) = 134283521;
    *(__p.__r_.__value_.__r.__words + 4) = v122;
    v198 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void analyzeApCentroidReachOverlap(const std::vector<CLWifiAccessPoint> &)", "%s\n", v198);
    if (v198 != v237)
    {
      free(v198);
    }
  }

  HIDWORD(v124) = -1775253149 * rand() + 28633112;
  LODWORD(v124) = HIDWORD(v124);
  if ((v124 >> 2) <= 0xDA740C)
  {
    *v237 = _NSConcreteStackBlock;
    *&v237[8] = 3221225472;
    *&v237[16] = sub_10064DF84;
    *&v237[24] = &unk_102451C38;
    *v238 = v122;
    *&v238[8] = v109;
    AnalyticsSendEventLazy();
  }

  v125 = v219;
  if (__src != v219)
  {
    v126 = __src + 72;
    do
    {
      sub_10018F0D0(&__p);
      v128 = *(v78 + 8);
      v127 = *(v78 + 16);
      if (v128 >= v127)
      {
        v130 = 0xAAAAAAAAAAAAAAABLL * ((v128 - *v78) >> 3);
        v131 = v130 + 1;
        if (v130 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        v132 = 0xAAAAAAAAAAAAAAABLL * ((v127 - *v78) >> 3);
        if (2 * v132 > v131)
        {
          v131 = 2 * v132;
        }

        if (v132 >= 0x555555555555555)
        {
          v133 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v133 = v131;
        }

        *v238 = v78;
        if (v133)
        {
          sub_1001A19D8(v78, v133);
        }

        v134 = 24 * v130;
        v135 = *&__p.__r_.__value_.__l.__data_;
        *(v134 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v134 = v135;
        memset(&__p, 0, sizeof(__p));
        v136 = 24 * v130 + 24;
        v137 = *(v78 + 8) - *v78;
        v138 = 24 * v130 - v137;
        memcpy((v134 - v137), *v78, v137);
        v139 = *v78;
        *v78 = v138;
        *(v78 + 8) = v136;
        v140 = *(v78 + 16);
        *(v78 + 16) = 0;
        *&v237[16] = v139;
        *&v237[24] = v140;
        *v237 = v139;
        *&v237[8] = v139;
        sub_100197A50(v237);
        v141 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(v78 + 8) = v136;
        if (v141 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v129 = *&__p.__r_.__value_.__l.__data_;
        *(v128 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v128 = v129;
        *(v78 + 8) = v128 + 24;
      }

      if (v126[16] == 1)
      {
        ++*(v78 + 24);
      }

      v142 = v126 + 24;
      v126 += 96;
    }

    while (v142 != v125);
  }

  if (v214)
  {
    v143 = __src;
    v144 = v219;
    if (__src == v219)
    {
      v153 = 0.0;
      v154 = 1.79769313e308;
      v152 = 0.0;
      v147 = 0.0;
    }

    else
    {
      v145 = 0.0;
      v146 = 0.0;
      v147 = 0.0;
      v148 = __src;
      do
      {
        v149 = *(v148 + 20);
        v150 = *v148;
        v151 = *(v148 + 1);
        v148 += 96;
        v145 = v145 + v149 * v150;
        v146 = v146 + v149 * v151;
        v147 = v147 + v149;
      }

      while (v148 != v219);
      v152 = 0.0;
      v153 = 0.0;
      if (v147 > 0.0)
      {
        v153 = v145 / v147;
        v152 = v146 / v147;
      }

      v154 = 1.79769313e308;
      if (__src != v219)
      {
        do
        {
          if (v143[4] > 0.0)
          {
            v155 = sub_100109D18(xmmword_1026584E0, v153, v152, *v143, v143[1], v17);
            v156 = v143[4];
            if (v156 < v155)
            {
              v156 = v155;
            }

            if (v156 < v154)
            {
              v154 = v156;
            }

            v157 = v155 + *(v143 + 13);
            if (v157 >= *a10 && *a10 != -1.0)
            {
              v157 = *a10;
            }

            *a10 = v157;
          }

          v143 += 12;
        }

        while (v143 != v144);
        v143 = __src;
        v159 = v219;
        goto LABEL_171;
      }
    }

    v159 = __src;
LABEL_171:
    if (v154 >= 1.79769313e308)
    {
      v163 = -1.0;
    }

    else
    {
      v163 = v154;
    }

    *(a12 + 20) = v163;
    *(a12 + 4) = v153;
    *(a12 + 12) = v152;
    *(a12 + 132) = 1;
    *a9 = -1431655765 * ((v159 - v143) >> 5);
    *a8 = 0;
    if (*a10 < v163)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v164 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v165 = *a10;
        *v237 = 134349312;
        *&v237[4] = v165;
        *&v237[12] = 2050;
        *&v237[14] = v163;
        _os_log_impl(dword_100000000, v164, OS_LOG_TYPE_DEBUG, "WifiCalc, invalid estimatedWorstCaseErrorMeters, estimatedWorstCaseErrorMeters, %{public}0.1f, hunc, %{public}0.1f, #Warning", v237, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(v237);
        v207 = *a10;
        LODWORD(__p.__r_.__value_.__l.__data_) = 134349312;
        *(__p.__r_.__value_.__r.__words + 4) = v207;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v163;
        v208 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v208);
        if (v208 != v237)
        {
          free(v208);
        }
      }

      *a10 = -1.0;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v166 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v167 = *a10;
      v168 = *a9;
      v169 = *a8;
      *v237 = 134350593;
      *&v237[4] = v147;
      *&v237[12] = 2053;
      *&v237[14] = v153;
      *&v237[22] = 2053;
      *&v237[24] = v152;
      *v238 = 2050;
      *&v238[2] = v163;
      *&v238[10] = 2050;
      *&v238[12] = v167;
      *&v238[20] = 1026;
      *&v238[22] = v168;
      *&v238[26] = 1026;
      *&v238[28] = v169;
      _os_log_impl(dword_100000000, v166, OS_LOG_TYPE_DEBUG, "WifiCalc, est, %{public}.1f, %{sensitive}0.3f, %{sensitive}0.3f, hunc, %{public}0.1f, estWorstError, %{public}0.1f, n, %{public}d, x, %{public}d", v237, 0x40u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(v237);
      v202 = *a10;
      v203 = *a9;
      v204 = *a8;
      LODWORD(__p.__r_.__value_.__l.__data_) = 134350593;
      *(__p.__r_.__value_.__r.__words + 4) = v147;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2053;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v153;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2053;
      v222 = v152;
      v223 = 2050;
      v224 = v163;
      v225 = 2050;
      *v226 = v202;
      *&v226[8] = 1026;
      *&v226[10] = v203;
      v227 = 1026;
      v228 = v204;
      v205 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v205);
      if (v205 != v237)
      {
        free(v205);
      }
    }

    goto LABEL_186;
  }

  v160 = *a1;
  if (a1[1] - *a1 == 96)
  {
    *(a12 + 4) = *(v160 + 8);
    *(a12 + 132) = 1;
    v161 = *(v160 + 32);
    v162 = *(v160 + 48);
    if (v161 < v162 / 3.0)
    {
      v161 = v162 / 3.0;
    }

    *(a12 + 20) = v161;
    *a10 = v162;
    *a9 = 1;
    *a8 = 1;
  }

  else
  {
    *a9 = 0;
    *a8 = 0;
  }

LABEL_186:
  sub_100027CA8(a12);
  v170 = v213;
  if (*(a12 + 20) < 180.0)
  {
    v170 = 1;
  }

  if ((v170 & 1) == 0)
  {
    v171 = *(a12 + 12);
    if (v171 > 180.0)
    {
      do
      {
        v171 = v171 + -360.0;
      }

      while (v171 > 180.0);
      *(a12 + 12) = v171;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v172 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v173 = *(a12 + 4);
      v174 = *(a12 + 12);
      *v237 = 134545921;
      *&v237[4] = v173;
      *&v237[12] = 2053;
      *&v237[14] = v174;
      _os_log_impl(dword_100000000, v172, OS_LOG_TYPE_DEBUG, "WifiCalc, b360repr, %{sensitive}14.8lf, %{sensitive}14.8lf", v237, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(v237);
      v199 = *(a12 + 4);
      v200 = *(a12 + 12);
      LODWORD(__p.__r_.__value_.__l.__data_) = 134545921;
      *(__p.__r_.__value_.__r.__words + 4) = v199;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2053;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v200;
      v201 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v201);
      if (v201 != v237)
      {
        free(v201);
      }
    }
  }

  if (__src)
  {
    v219 = __src;
    operator delete(__src);
  }
}

void sub_1001A8E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  __cxa_guard_abort(&qword_102658538);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

int32x2_t sub_1001A8F68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1001A4418(a1))
  {
    v4 = sub_1001A8FF0(a1);
  }

  else
  {
    v4 = -1;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *a1;
  v9 = *(a1 + 88) & 1;
  *a2 = *(a1 + 8);
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  result = vrev64_s32(*(a1 + 48));
  *(a2 + 48) = result;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  *(a2 + 88) = v9;
  return result;
}

uint64_t sub_1001A8FF0(uint64_t a1)
{
  if (*(a1 + 76) == -1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AC7B8C();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "fScore is not initialized!", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AC7BA0();
    }
  }

  return *(a1 + 76);
}

uint64_t sub_1001A9098(uint64_t *a1, double a2, long double a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  if (v6 < *(sub_1001A8F5C() + 22))
  {
    return 0;
  }

  v113 = 0;
  v114 = 0;
  v115 = 0;
  sub_1002F08F0(&v113, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5));
  v8 = sub_1002F096C(&v113, a2, a3);
  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  if (!v8)
  {
    return 1;
  }

  v10 = *a1;
  v9 = a1[1];
  if ((v9 - *a1) == 192)
  {
    if (v10 != v9)
    {
      for (i = v10 + 24; i != v9; i += 24)
      {
        if (i[20] < v10[20])
        {
          v10 = i;
        }
      }
    }

    v86 = v9 - (v10 + 24);
    if (v9 != v10 + 24)
    {
      memmove(v10, v10 + 24, v86 - 7);
    }

    v7 = 0;
    a1[1] = v10 + v86;
  }

  else
  {
    v110 = 0;
    v111 = 0;
    v12 = 4;
    v89 = -1.0;
    v112 = 0;
    do
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
      if (v13 >= v12)
      {
        v88 = v12;
        sub_100A32A88(v13, v12, &v108);
        v15 = v108;
        v14 = v109;
        v90 = v109;
        while (v15 != v14)
        {
          v105 = 0;
          v106 = 0;
          v107 = 0;
          sub_10038EB38(&v105, *v15, v15[1], (v15[1] - *v15) >> 2);
          __src = 0;
          v103 = 0;
          v104 = 0;
          v16 = v105;
          v17 = v106;
          if (v105 == v106)
          {
            v18 = 0;
            v36 = 0;
          }

          else
          {
            v18 = 0;
            do
            {
              v19 = (*a1 + 96 * *v16);
              if (v18 >= v104)
              {
                v24 = __src;
                v25 = v18 - __src;
                v26 = 0xAAAAAAAAAAAAAAABLL * ((v18 - __src) >> 5);
                v27 = v26 + 1;
                if (v26 + 1 > 0x2AAAAAAAAAAAAAALL)
                {
                  sub_10028C64C();
                }

                if (0x5555555555555556 * ((v104 - __src) >> 5) > v27)
                {
                  v27 = 0x5555555555555556 * ((v104 - __src) >> 5);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v104 - __src) >> 5) >= 0x155555555555555)
                {
                  v28 = 0x2AAAAAAAAAAAAAALL;
                }

                else
                {
                  v28 = v27;
                }

                if (v28)
                {
                  sub_1001A4428(&__src, v28);
                }

                v29 = 96 * v26;
                v30 = v19[1];
                *v29 = *v19;
                *(v29 + 16) = v30;
                v31 = v19[2];
                v32 = v19[3];
                v33 = v19[5];
                *(v29 + 64) = v19[4];
                *(v29 + 80) = v33;
                *(v29 + 32) = v31;
                *(v29 + 48) = v32;
                v18 = (96 * v26 + 96);
                v34 = (v29 - v25);
                memcpy((v29 - v25), v24, v25);
                v35 = __src;
                __src = v34;
                v103 = v18;
                v104 = 0;
                if (v35)
                {
                  operator delete(v35);
                }
              }

              else
              {
                v20 = v19[1];
                *v18 = *v19;
                *(v18 + 1) = v20;
                v21 = v19[2];
                v22 = v19[3];
                v23 = v19[5];
                *(v18 + 4) = v19[4];
                *(v18 + 5) = v23;
                *(v18 + 2) = v21;
                *(v18 + 3) = v22;
                v18 += 96;
              }

              v103 = v18;
              ++v16;
            }

            while (v16 != v17);
            v36 = __src;
          }

          __p = 0;
          v100 = 0;
          v101 = 0;
          sub_1002F08F0(&__p, v36, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v36) >> 5));
          v37 = sub_1002F096C(&__p, a2, a3);
          if (__p)
          {
            v100 = __p;
            operator delete(__p);
          }

          if (!v37)
          {
            v38 = __src;
            v39 = (__src + 96);
            v40 = *__src;
            if (__src == v103 || v39 == v103)
            {
              v56 = *(__src + 1);
              v53 = *__src;
            }

            else
            {
              v41 = *__src;
              v42 = (__src + 96);
              v43 = __src;
              v44 = (__src + 96);
              do
              {
                v45 = *v44;
                v44 += 12;
                v46 = v45;
                if (v41 < v45)
                {
                  v41 = v46;
                  v43 = v42;
                }

                v42 = v44;
              }

              while (v44 != v103);
              v47 = *v43;
              v48 = (__src + 96);
              v49 = __src;
              v50 = (__src + 96);
              do
              {
                v51 = *v50;
                v50 += 12;
                v52 = v51;
                if (v51 < v40)
                {
                  v40 = v52;
                  v49 = v48;
                }

                v48 = v50;
              }

              while (v50 != v103);
              v53 = *v49;
              v54 = (__src + 96);
              v55 = __src;
              do
              {
                if (v55[1] < v54[1])
                {
                  v55 = v54;
                }

                v54 += 12;
              }

              while (v54 != v103);
              v56 = v55[1];
              do
              {
                if (v39[1] < v38[1])
                {
                  v38 = v39;
                }

                v39 += 12;
              }

              while (v39 != v103);
              v40 = v47;
            }

            v57 = v38[1];
            v96 = 0;
            v97 = 0;
            v98 = 0;
            v59 = *a1;
            v58 = a1[1];
            if (*a1 == v58)
            {
              v80 = 0;
              v60 = 0;
              v79 = *a1;
            }

            else
            {
              v60 = 0;
              do
              {
                v61 = *v59;
                v62 = *(v59 + 8);
                v63 = *(v59 + 48);
                v92 = *(v59 + 32);
                v93 = v63;
                v64 = *(v59 + 80);
                v94 = *(v59 + 64);
                v95 = v64;
                v91 = *(v59 + 16);
                v65 = v61 > v40 || v61 < v53;
                if (!v65 && v62 <= v56 && v62 >= v57)
                {
                  if (v60 >= v98)
                  {
                    v71 = v96;
                    v72 = v60 - v96;
                    v73 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v96) >> 5);
                    v74 = v73 + 1;
                    if (v73 + 1 > 0x2AAAAAAAAAAAAAALL)
                    {
                      sub_10028C64C();
                    }

                    if (0x5555555555555556 * ((v98 - v96) >> 5) > v74)
                    {
                      v74 = 0x5555555555555556 * ((v98 - v96) >> 5);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v98 - v96) >> 5) >= 0x155555555555555)
                    {
                      v75 = 0x2AAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v75 = v74;
                    }

                    if (v75)
                    {
                      sub_1001A4428(&v96, v75);
                    }

                    v76 = 32 * ((v60 - v96) >> 5);
                    *v76 = v61;
                    *(v76 + 8) = v62;
                    *(v76 + 32) = v92;
                    *(v76 + 48) = v93;
                    *(v76 + 64) = v94;
                    *(v76 + 80) = v95;
                    *(v76 + 16) = v91;
                    v60 = 96 * v73 + 96;
                    v77 = (96 * v73 - v72);
                    memcpy((v76 - v72), v71, v72);
                    v78 = v96;
                    v96 = v77;
                    v97 = v60;
                    v98 = 0;
                    if (v78)
                    {
                      operator delete(v78);
                    }
                  }

                  else
                  {
                    *v60 = v61;
                    *(v60 + 8) = v62;
                    v69 = v94;
                    v68 = v95;
                    *(v60 + 48) = v93;
                    *(v60 + 64) = v69;
                    *(v60 + 80) = v68;
                    v70 = v92;
                    *(v60 + 16) = v91;
                    *(v60 + 32) = v70;
                    v60 += 96;
                  }

                  v97 = v60;
                }

                v59 += 96;
              }

              while (v59 != v58);
              v59 = *a1;
              v79 = a1[1];
              v80 = v96;
            }

            v81 = sub_1001A8F5C();
            v82 = v96;
            if (-1431655765 * ((v79 - v59) >> 5) + 1431655765 * ((v60 - v80) >> 5) <= *(v81 + 20))
            {
              v83 = 0.0;
              if (v96 != v97)
              {
                v84 = v96;
                do
                {
                  v83 = v83 + v84[20];
                  v84 += 24;
                }

                while (v84 != v97);
              }

              if (v83 > v89)
              {
                sub_10024A16C(&v110, v96, v97, 0xAAAAAAAAAAAAAAABLL * ((v97 - v96) >> 5));
                v82 = v96;
                v89 = v83;
              }
            }

            if (v82)
            {
              v97 = v82;
              operator delete(v82);
            }
          }

          if (__src)
          {
            v103 = __src;
            operator delete(__src);
          }

          if (v105)
          {
            v106 = v105;
            operator delete(v105);
          }

          v15 += 3;
          v14 = v90;
        }

        *&v91 = &v108;
        sub_1002EC52C(&v91);
        v12 = v88;
      }

      v65 = v12-- > 2;
    }

    while (v65);
    v85 = v110;
    v7 = v110 != v111;
    if (&v110 != a1 && v110 != v111)
    {
      sub_10024A16C(a1, v110, v111, 0xAAAAAAAAAAAAAAABLL * ((v111 - v110) >> 5));
      v85 = v110;
    }

    if (v85)
    {
      v111 = v85;
      operator delete(v85);
    }
  }

  return v7;
}

void sub_1001A974C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char a35)
{
  v37 = *(v35 - 200);
  if (v37)
  {
    *(v35 - 192) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A9800(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 8));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 8));
  }

  else
  {
    v8 = (*v7 + 16 * v4);
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 8));
    v11 = (*v10 + 16 * v9);
  }

  sub_1001A99DC(a1, v7, v8, v10, v11);
  return a1;
}

void *sub_1001A98A4(void *a1, void *a2, __int128 *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 32 * (v9 - v8) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_1001AED40(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 8));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 16 * v11;
    v15 = v14;
  }

  v23[0] = v13;
  v23[1] = v15;
  result = sub_100014378(v23, a4);
  while (v14 != v17)
  {
    v18 = (v13 == result ? v17 : *v13 + 4096);
    if (v14 == v18)
    {
      v18 = v14;
    }

    else
    {
      v19 = v14;
      do
      {
        v20 = *a3++;
        *v19 = v20;
        if ((a3 - *a2) == 4096)
        {
          v21 = a2[1];
          ++a2;
          a3 = v21;
        }

        ++v19;
      }

      while (v19 != v18);
    }

    a1[5] += (v18 - v14) >> 4;
    if (v13 == result)
    {
      break;
    }

    v22 = v13[1];
    ++v13;
    v14 = v22;
  }

  return result;
}

void *sub_1001A99DC(void *a1, char *a2, __int128 *a3, char *a4, __int128 *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
  }

  return sub_1001A98A4(a1, a2, a3, v5);
}

void sub_1001A9A10(uint64_t a1, uint64_t a2)
{
  v3 = 2 * *(a2 + 156) + 63;
  *(a2 + 84) = v3;
  if (*(a1 + 3452) >= 0.0 && *(a2 + 20) >= 0.0)
  {
    sub_10018D404(v7);
    sub_1001097CC(v7, a1 + 3432, a2);
    v6 = v5 <= 35000.0 && *(a2 + 156) == 1;
    v3 = *(a2 + 84);
    if (v6)
    {
      ++v3;
    }
  }

  if (v3 >= 80)
  {
    v3 = 80;
  }

  *(a2 + 84) = v3;
}

void sub_1001A9B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100D24248(v16);
  v18 = *(v15 + 8);
  if (v18)
  {
    sub_100008080(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1001A9C18(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001A9D18(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  v4 = *a1;
  v5 = a1[1];
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5));
  a1[3] = 0;
  v7 = (a1 + 3);
  a1[4] = 0;
  a1[5] = 0;
  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  sub_1001A9F5C(v4, v5, v8, 1, v3);
  if (*a1 != a1[1])
  {
    sub_1001A9D94(a1, &v11, *(*a1 + 8), *(*a1 + 16));
    v9 = *v7;
    if (*v7)
    {
      a1[4] = v9;
      operator delete(v9);
      *v7 = 0;
      a1[4] = 0;
      a1[5] = 0;
    }

    *(a1 + 3) = v11;
    a1[5] = v12;
  }

  return a1;
}

void sub_1001A9CE8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A9D18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001B3C78(result, a4);
  }

  return result;
}

void sub_1001A9D78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A9D94(uint64_t *a1@<X0>, const void **a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      sub_10018D404(v22);
      sub_1001063B0(v22, &v25, &v24, &v23, a3, a4, 0.0, *(v4 + 8), *(v4 + 16), 0.0);
      v9 = v25;
      v10 = *(v4 + 48);
      v12 = a2[1];
      v11 = a2[2];
      if (v12 >= v11)
      {
        v14 = *a2;
        v15 = v12 - *a2;
        v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3) + 1;
        if (v16 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0x555555555555555)
        {
          v18 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          sub_1001AB518(a2, v18);
        }

        v19 = 8 * (v15 >> 3);
        *v19 = v24;
        *(v19 + 8) = v9;
        *(v19 + 16) = v10;
        v13 = v19 + 24;
        v20 = v19 - v15;
        memcpy((v19 - v15), v14, v15);
        v21 = *a2;
        *a2 = v20;
        a2[1] = v13;
        a2[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = v24;
        *(v12 + 1) = v9;
        v13 = (v12 + 24);
        *(v12 + 2) = v10;
      }

      a2[1] = v13;
      v4 += 96;
    }

    while (v4 != v5);
  }
}

void sub_1001A9F38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1001A9F5C(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 6;
  v10 = a2 - 12;
  v11 = a2 - 18;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 5);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (a2[-3].n128_u32[0] < *(v12 + 48))
        {
          v303 = *v12;
          v342 = *(v12 + 16);
          v456 = *(v12 + 64);
          v492 = *(v12 + 80);
          v381 = *(v12 + 32);
          v420 = *(v12 + 48);
          v168 = a2[-1];
          v170 = a2[-4];
          v169 = a2[-3];
          *(v12 + 64) = a2[-2];
          *(v12 + 80) = v168;
          *(v12 + 32) = v170;
          *(v12 + 48) = v169;
          v171 = a2[-5];
          *v12 = a2[-6];
          *(v12 + 16) = v171;
          a2[-6] = v303;
          a2[-5] = v342;
          result = v381;
          a2[-2] = v456;
          a2[-1] = v492;
          a2[-4] = v381;
          a2[-3] = v420;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v178 = *(v12 + 144);
      v179 = *(v12 + 240);
      if (v178 >= *(v12 + 48))
      {
        if (v179 < v178)
        {
          v388 = *(v12 + 128);
          v425 = *(v12 + 144);
          v461 = *(v12 + 160);
          v497 = *(v12 + 176);
          v310 = *(v12 + 96);
          v349 = *(v12 + 112);
          v245 = *(v12 + 240);
          *(v12 + 128) = *(v12 + 224);
          *(v12 + 144) = v245;
          v246 = *(v12 + 272);
          *(v12 + 160) = *(v12 + 256);
          *(v12 + 176) = v246;
          v247 = *(v12 + 208);
          *(v12 + 96) = *(v12 + 192);
          *(v12 + 112) = v247;
          *(v12 + 192) = v310;
          *(v12 + 208) = v349;
          *(v12 + 256) = v461;
          *(v12 + 272) = v497;
          result = v425;
          *(v12 + 224) = v388;
          *(v12 + 240) = v425;
          if (*(v12 + 144) < *(v12 + 48))
          {
            v311 = *v12;
            v350 = *(v12 + 16);
            v462 = *(v12 + 64);
            v498 = *(v12 + 80);
            v389 = *(v12 + 32);
            v426 = *(v12 + 48);
            v248 = *(v12 + 176);
            *(v12 + 64) = *(v12 + 160);
            *(v12 + 80) = v248;
            v249 = *(v12 + 144);
            *(v12 + 32) = *(v12 + 128);
            *(v12 + 48) = v249;
            v250 = *(v12 + 112);
            *v12 = *(v12 + 96);
            *(v12 + 16) = v250;
            *(v12 + 96) = v311;
            *(v12 + 112) = v350;
            result = v389;
            *(v12 + 160) = v462;
            *(v12 + 176) = v498;
            *(v12 + 128) = v389;
            *(v12 + 144) = v426;
          }
        }
      }

      else if (v179 >= v178)
      {
        v314 = *v12;
        v353 = *(v12 + 16);
        v464 = *(v12 + 64);
        v500 = *(v12 + 80);
        v392 = *(v12 + 32);
        v428 = *(v12 + 48);
        v264 = *(v12 + 176);
        *(v12 + 64) = *(v12 + 160);
        *(v12 + 80) = v264;
        v265 = *(v12 + 144);
        *(v12 + 32) = *(v12 + 128);
        *(v12 + 48) = v265;
        v266 = *(v12 + 112);
        *v12 = *(v12 + 96);
        *(v12 + 16) = v266;
        *(v12 + 96) = v314;
        *(v12 + 112) = v353;
        result = v392;
        *(v12 + 160) = v464;
        *(v12 + 176) = v500;
        *(v12 + 128) = v392;
        *(v12 + 144) = v428;
        if (v179 < *(v12 + 144))
        {
          v393 = *(v12 + 128);
          v429 = *(v12 + 144);
          v465 = *(v12 + 160);
          v501 = *(v12 + 176);
          v315 = *(v12 + 96);
          v354 = *(v12 + 112);
          v267 = *(v12 + 240);
          *(v12 + 128) = *(v12 + 224);
          *(v12 + 144) = v267;
          v268 = *(v12 + 272);
          *(v12 + 160) = *(v12 + 256);
          *(v12 + 176) = v268;
          v269 = *(v12 + 208);
          *(v12 + 96) = *(v12 + 192);
          *(v12 + 112) = v269;
          *(v12 + 192) = v315;
          *(v12 + 208) = v354;
          *(v12 + 256) = v465;
          *(v12 + 272) = v501;
          result = v429;
          *(v12 + 224) = v393;
          *(v12 + 240) = v429;
        }
      }

      else
      {
        v305 = *v12;
        v344 = *(v12 + 16);
        v458 = *(v12 + 64);
        v494 = *(v12 + 80);
        v383 = *(v12 + 32);
        v422 = *(v12 + 48);
        v180 = *(v12 + 272);
        *(v12 + 64) = *(v12 + 256);
        *(v12 + 80) = v180;
        v181 = *(v12 + 240);
        *(v12 + 32) = *(v12 + 224);
        *(v12 + 48) = v181;
        v182 = *(v12 + 208);
        *v12 = *(v12 + 192);
        *(v12 + 16) = v182;
        *(v12 + 192) = v305;
        *(v12 + 208) = v344;
        result = v383;
        *(v12 + 256) = v458;
        *(v12 + 272) = v494;
        *(v12 + 224) = v383;
        *(v12 + 240) = v422;
      }

      if (a2[-3].n128_u32[0] >= *(v12 + 240))
      {
        return result;
      }

      v394 = *(v12 + 224);
      v430 = *(v12 + 240);
      v466 = *(v12 + 256);
      v502 = *(v12 + 272);
      v316 = *(v12 + 192);
      v355 = *(v12 + 208);
      v270 = a2[-5];
      *(v12 + 192) = *v9;
      *(v12 + 208) = v270;
      v271 = a2[-1];
      v273 = a2[-4];
      v272 = a2[-3];
      *(v12 + 256) = a2[-2];
      *(v12 + 272) = v271;
      *(v12 + 224) = v273;
      *(v12 + 240) = v272;
      *v9 = v316;
      a2[-5] = v355;
      result = v394;
      a2[-2] = v466;
      a2[-1] = v502;
      a2[-4] = v394;
      a2[-3] = v430;
      if (*(v12 + 240) >= *(v12 + 144))
      {
        return result;
      }

      v395 = *(v12 + 128);
      v431 = *(v12 + 144);
      v467 = *(v12 + 160);
      v503 = *(v12 + 176);
      v317 = *(v12 + 96);
      v356 = *(v12 + 112);
      v274 = *(v12 + 240);
      *(v12 + 128) = *(v12 + 224);
      *(v12 + 144) = v274;
      v275 = *(v12 + 272);
      *(v12 + 160) = *(v12 + 256);
      *(v12 + 176) = v275;
      v276 = *(v12 + 208);
      *(v12 + 96) = *(v12 + 192);
      *(v12 + 112) = v276;
      *(v12 + 192) = v317;
      *(v12 + 208) = v356;
      *(v12 + 256) = v467;
      *(v12 + 272) = v503;
      result = v431;
      *(v12 + 224) = v395;
      *(v12 + 240) = v431;
LABEL_192:
      if (*(v12 + 144) < *(v12 + 48))
      {
        v318 = *v12;
        v357 = *(v12 + 16);
        v468 = *(v12 + 64);
        v504 = *(v12 + 80);
        v396 = *(v12 + 32);
        v432 = *(v12 + 48);
        v277 = *(v12 + 176);
        *(v12 + 64) = *(v12 + 160);
        *(v12 + 80) = v277;
        v278 = *(v12 + 144);
        *(v12 + 32) = *(v12 + 128);
        *(v12 + 48) = v278;
        v279 = *(v12 + 112);
        *v12 = *(v12 + 96);
        *(v12 + 16) = v279;
        *(v12 + 96) = v318;
        *(v12 + 112) = v357;
        result = v396;
        *(v12 + 160) = v468;
        *(v12 + 176) = v504;
        *(v12 + 128) = v396;
        *(v12 + 144) = v432;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_100D2368C(v12, (v12 + 96), (v12 + 192), (v12 + 288), a2 - 6).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 2303)
    {
      v183 = (v12 + 96);
      v185 = v12 == a2 || v183 == a2;
      if (a4)
      {
        if (!v185)
        {
          v186 = 0;
          v187 = v12;
          do
          {
            v188 = v183;
            v189 = *(v187 + 36);
            if (v189 < *(v187 + 12))
            {
              v345 = v188[1];
              v384 = v188[2];
              v306 = *v188;
              v513 = *(v187 + 148);
              v519 = *(v187 + 164);
              result = *(v187 + 11);
              v190 = v186;
              HIDWORD(v519) = result.n128_u32[0];
              while (1)
              {
                v191 = (v12 + v190);
                v192 = *(v12 + v190 + 48);
                v191[8] = *(v12 + v190 + 32);
                v191[9] = v192;
                v193 = *(v12 + v190 + 80);
                v191[10] = *(v12 + v190 + 64);
                v191[11] = v193;
                v194 = *(v12 + v190 + 16);
                v191[6] = *(v12 + v190);
                v191[7] = v194;
                if (!v190)
                {
                  break;
                }

                v190 -= 96;
                if (v189 >= *(v191 - 12))
                {
                  v195 = v12 + v190 + 96;
                  goto LABEL_129;
                }
              }

              v195 = v12;
LABEL_129:
              *v195 = v306;
              *(v195 + 16) = v345;
              *(v195 + 32) = v384;
              *(v195 + 48) = v189;
              *(v195 + 52) = v513;
              *(v195 + 68) = v519;
              *(v195 + 80) = result;
            }

            v183 = v188 + 6;
            v186 += 96;
            v187 = v188;
          }

          while (&v188[6] != a2);
        }
      }

      else if (!v185)
      {
        do
        {
          v251 = v183;
          v252 = *(a1 + 144);
          if (v252 < *(a1 + 48))
          {
            v351 = v183[1];
            v390 = v183[2];
            v312 = *v183;
            v516 = *(a1 + 148);
            *v522 = *(a1 + 164);
            *&v522[12] = *(a1 + 176);
            do
            {
              v253 = v183[-3];
              v183[2] = v183[-4];
              v183[3] = v253;
              v254 = v183[-1];
              v183[4] = v183[-2];
              v183[5] = v254;
              v255 = v183[-5];
              *v183 = v183[-6];
              v183[1] = v255;
              v256 = v183[-9].n128_i32[0];
              v183 -= 6;
            }

            while (v252 < v256);
            *v183 = v312;
            v183[1] = v351;
            v183[2] = v390;
            v183[3].n128_u32[0] = v252;
            result = v516;
            v183[5] = *&v522[12];
            *(v183 + 68) = *v522;
            *(v183 + 52) = v516;
          }

          v183 = v251 + 6;
          a1 = v251;
        }

        while (&v251[6] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v196 = (v14 - 2) >> 1;
        v197 = v196;
        do
        {
          v198 = v197;
          if (v196 >= v197)
          {
            v199 = (2 * v197) | 1;
            v200 = v12 + 96 * v199;
            if (2 * v197 + 2 < v14)
            {
              v201 = *(v200 + 48);
              v202 = *(v200 + 144);
              v203 = v201 < v202;
              v204 = v201 >= v202 ? 0 : 96;
              v200 += v204;
              if (v203)
              {
                v199 = 2 * v197 + 2;
              }
            }

            v205 = v12 + 96 * v197;
            v206 = *(v205 + 48);
            if (*(v200 + 48) >= v206)
            {
              v346 = *(v205 + 16);
              v385 = *(v205 + 32);
              v307 = *v205;
              *&v520[12] = *(v205 + 80);
              v514 = *(v205 + 52);
              *v520 = *(v205 + 68);
              do
              {
                v207 = v205;
                v205 = v200;
                v208 = *(v200 + 16);
                *v207 = *v200;
                v207[1] = v208;
                v209 = *(v200 + 32);
                v210 = *(v200 + 48);
                v211 = *(v200 + 80);
                v207[4] = *(v200 + 64);
                v207[5] = v211;
                v207[2] = v209;
                v207[3] = v210;
                if (v196 < v199)
                {
                  break;
                }

                v212 = (2 * v199) | 1;
                v200 = v12 + 96 * v212;
                v213 = 2 * v199 + 2;
                if (v213 < v14)
                {
                  v214 = *(v200 + 48);
                  v215 = *(v200 + 144);
                  v216 = v214 < v215;
                  v217 = v214 >= v215 ? 0 : 96;
                  v200 += v217;
                  if (v216)
                  {
                    v212 = v213;
                  }
                }

                v199 = v212;
              }

              while (*(v200 + 48) >= v206);
              *v205 = v307;
              *(v205 + 16) = v346;
              *(v205 + 32) = v385;
              *(v205 + 48) = v206;
              *(v205 + 52) = v514;
              *(v205 + 68) = *v520;
              *(v205 + 80) = *&v520[12];
            }
          }

          v197 = v198 - 1;
        }

        while (v198);
        v218 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 5);
        do
        {
          v219 = 0;
          v308 = *v12;
          v347 = *(v12 + 16);
          v459 = *(v12 + 64);
          v495 = *(v12 + 80);
          v386 = *(v12 + 32);
          v423 = *(v12 + 48);
          v220 = v12;
          do
          {
            v221 = &v220[6 * v219];
            v222 = v221 + 6;
            v223 = (2 * v219) | 1;
            v219 = 2 * v219 + 2;
            if (v219 >= v218)
            {
              v219 = v223;
            }

            else if (v221[9].n128_u32[0] >= v221[15].n128_u32[0])
            {
              v219 = v223;
            }

            else
            {
              v222 = v221 + 12;
            }

            v224 = v222[1];
            *v220 = *v222;
            v220[1] = v224;
            v225 = v222[2];
            v226 = v222[3];
            v227 = v222[5];
            v220[4] = v222[4];
            v220[5] = v227;
            v220[2] = v225;
            v220[3] = v226;
            v220 = v222;
          }

          while (v219 <= ((v218 - 2) >> 1));
          a2 -= 6;
          if (v222 == a2)
          {
            *v222 = v308;
            v222[1] = v347;
            result = v386;
            v222[4] = v459;
            v222[5] = v495;
            v222[2] = v386;
            v222[3] = v423;
          }

          else
          {
            v228 = a2[1];
            *v222 = *a2;
            v222[1] = v228;
            v229 = a2[2];
            v230 = a2[3];
            v231 = a2[5];
            v222[4] = a2[4];
            v222[5] = v231;
            v222[2] = v229;
            v222[3] = v230;
            a2[4] = v459;
            a2[5] = v495;
            a2[2] = v386;
            a2[3] = v423;
            result = v308;
            *a2 = v308;
            a2[1] = v347;
            v232 = &v222[6] - v12;
            if (v232 >= 97)
            {
              v233 = (-2 - 0x5555555555555555 * (v232 >> 5)) >> 1;
              v234 = (v12 + 96 * v233);
              v235 = v222[3].n128_i32[0];
              if (v234[3].n128_u32[0] < v235)
              {
                v521 = v222[1];
                v525 = v222[2];
                v515 = *v222;
                v507 = *(v222 + 52);
                *v510 = *(v222 + 68);
                *&v510[12] = v222[5];
                do
                {
                  v236 = v222;
                  v222 = v234;
                  v237 = v234[1];
                  *v236 = *v234;
                  v236[1] = v237;
                  v238 = v234[2];
                  v239 = v234[3];
                  v240 = v234[5];
                  v236[4] = v234[4];
                  v236[5] = v240;
                  v236[2] = v238;
                  v236[3] = v239;
                  if (!v233)
                  {
                    break;
                  }

                  v233 = (v233 - 1) >> 1;
                  v234 = (v12 + 96 * v233);
                }

                while (v234[3].n128_u32[0] < v235);
                *v222 = v515;
                v222[1] = v521;
                v222[2] = v525;
                v222[3].n128_u32[0] = v235;
                *(v222 + 52) = v507;
                *(v222 + 68) = *v510;
                result = *&v510[12];
                v222[5] = *&v510[12];
              }
            }
          }

          v203 = v218-- <= 2;
        }

        while (!v203);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 96 * (v14 >> 1);
    v17 = a2[-3].n128_i32[0];
    if (v13 > 0x3000)
    {
      v18 = *(v16 + 48);
      if (v18 >= *(v12 + 48))
      {
        if (v17 < v18)
        {
          v282 = *v16;
          v321 = *(v16 + 16);
          v435 = *(v16 + 64);
          v471 = *(v16 + 80);
          v360 = *(v16 + 32);
          v399 = *(v16 + 48);
          v28 = a2[-1];
          v30 = a2[-4];
          v29 = a2[-3];
          *(v16 + 64) = a2[-2];
          *(v16 + 80) = v28;
          *(v16 + 32) = v30;
          *(v16 + 48) = v29;
          v31 = a2[-5];
          *v16 = *v9;
          *(v16 + 16) = v31;
          *v9 = v282;
          a2[-5] = v321;
          a2[-2] = v435;
          a2[-1] = v471;
          a2[-4] = v360;
          a2[-3] = v399;
          if (*(v16 + 48) < *(v12 + 48))
          {
            v283 = *v12;
            v322 = *(v12 + 16);
            v436 = *(v12 + 64);
            v472 = *(v12 + 80);
            v361 = *(v12 + 32);
            v400 = *(v12 + 48);
            v32 = *(v16 + 80);
            v34 = *(v16 + 32);
            v33 = *(v16 + 48);
            *(v12 + 64) = *(v16 + 64);
            *(v12 + 80) = v32;
            *(v12 + 32) = v34;
            *(v12 + 48) = v33;
            v35 = *(v16 + 16);
            *v12 = *v16;
            *(v12 + 16) = v35;
            *v16 = v283;
            *(v16 + 16) = v322;
            *(v16 + 64) = v436;
            *(v16 + 80) = v472;
            *(v16 + 32) = v361;
            *(v16 + 48) = v400;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v280 = *v12;
          v319 = *(v12 + 16);
          v433 = *(v12 + 64);
          v469 = *(v12 + 80);
          v358 = *(v12 + 32);
          v397 = *(v12 + 48);
          v19 = a2[-1];
          v21 = a2[-4];
          v20 = a2[-3];
          *(v12 + 64) = a2[-2];
          *(v12 + 80) = v19;
          *(v12 + 32) = v21;
          *(v12 + 48) = v20;
          v22 = a2[-5];
          *v12 = *v9;
          *(v12 + 16) = v22;
          goto LABEL_26;
        }

        v286 = *v12;
        v325 = *(v12 + 16);
        v439 = *(v12 + 64);
        v475 = *(v12 + 80);
        v364 = *(v12 + 32);
        v403 = *(v12 + 48);
        v44 = *(v16 + 80);
        v46 = *(v16 + 32);
        v45 = *(v16 + 48);
        *(v12 + 64) = *(v16 + 64);
        *(v12 + 80) = v44;
        *(v12 + 32) = v46;
        *(v12 + 48) = v45;
        v47 = *(v16 + 16);
        *v12 = *v16;
        *(v12 + 16) = v47;
        *v16 = v286;
        *(v16 + 16) = v325;
        *(v16 + 64) = v439;
        *(v16 + 80) = v475;
        *(v16 + 32) = v364;
        *(v16 + 48) = v403;
        if (a2[-3].n128_u32[0] < *(v16 + 48))
        {
          v280 = *v16;
          v319 = *(v16 + 16);
          v433 = *(v16 + 64);
          v469 = *(v16 + 80);
          v358 = *(v16 + 32);
          v397 = *(v16 + 48);
          v48 = a2[-1];
          v50 = a2[-4];
          v49 = a2[-3];
          *(v16 + 64) = a2[-2];
          *(v16 + 80) = v48;
          *(v16 + 32) = v50;
          *(v16 + 48) = v49;
          v51 = a2[-5];
          *v16 = *v9;
          *(v16 + 16) = v51;
LABEL_26:
          *v9 = v280;
          a2[-5] = v319;
          a2[-2] = v433;
          a2[-1] = v469;
          a2[-4] = v358;
          a2[-3] = v397;
        }
      }

      v52 = v12 + 96 * v15;
      v53 = (v52 - 96);
      v54 = *(v52 - 48);
      v55 = a2[-9].n128_i32[0];
      if (v54 >= *(v12 + 144))
      {
        if (v55 < v54)
        {
          v288 = *v53;
          v327 = v53[1];
          v441 = v53[4];
          v477 = v53[5];
          v366 = v53[2];
          v405 = v53[3];
          v60 = a2[-7];
          v62 = a2[-10];
          v61 = a2[-9];
          v53[4] = a2[-8];
          v53[5] = v60;
          v53[2] = v62;
          v53[3] = v61;
          v63 = a2[-11];
          *v53 = *v10;
          v53[1] = v63;
          *v10 = v288;
          a2[-11] = v327;
          a2[-8] = v441;
          a2[-7] = v477;
          a2[-10] = v366;
          a2[-9] = v405;
          if (v53[3].n128_u32[0] < *(v12 + 144))
          {
            v367 = *(v12 + 128);
            v406 = *(v12 + 144);
            v442 = *(v12 + 160);
            v478 = *(v12 + 176);
            v289 = *(v12 + 96);
            v328 = *(v12 + 112);
            v64 = v53[1];
            *(v12 + 96) = *v53;
            *(v12 + 112) = v64;
            v65 = v53[5];
            v67 = v53[2];
            v66 = v53[3];
            *(v12 + 160) = v53[4];
            *(v12 + 176) = v65;
            *(v12 + 128) = v67;
            *(v12 + 144) = v66;
            *v53 = v289;
            v53[1] = v328;
            v53[4] = v442;
            v53[5] = v478;
            v53[2] = v367;
            v53[3] = v406;
          }
        }
      }

      else
      {
        if (v55 < v54)
        {
          v365 = *(v12 + 128);
          v404 = *(v12 + 144);
          v440 = *(v12 + 160);
          v476 = *(v12 + 176);
          v287 = *(v12 + 96);
          v326 = *(v12 + 112);
          v56 = a2[-11];
          *(v12 + 96) = *v10;
          *(v12 + 112) = v56;
          v57 = a2[-7];
          v59 = a2[-10];
          v58 = a2[-9];
          *(v12 + 160) = a2[-8];
          *(v12 + 176) = v57;
          *(v12 + 128) = v59;
          *(v12 + 144) = v58;
          goto LABEL_38;
        }

        v369 = *(v12 + 128);
        v408 = *(v12 + 144);
        v444 = *(v12 + 160);
        v480 = *(v12 + 176);
        v291 = *(v12 + 96);
        v330 = *(v12 + 112);
        v76 = v53[1];
        *(v12 + 96) = *v53;
        *(v12 + 112) = v76;
        v77 = v53[5];
        v79 = v53[2];
        v78 = v53[3];
        *(v12 + 160) = v53[4];
        *(v12 + 176) = v77;
        *(v12 + 128) = v79;
        *(v12 + 144) = v78;
        *v53 = v291;
        v53[1] = v330;
        v53[4] = v444;
        v53[5] = v480;
        v53[2] = v369;
        v53[3] = v408;
        if (a2[-9].n128_u32[0] < v53[3].n128_u32[0])
        {
          v287 = *v53;
          v326 = v53[1];
          v440 = v53[4];
          v476 = v53[5];
          v365 = v53[2];
          v404 = v53[3];
          v80 = a2[-7];
          v82 = a2[-10];
          v81 = a2[-9];
          v53[4] = a2[-8];
          v53[5] = v80;
          v53[2] = v82;
          v53[3] = v81;
          v83 = a2[-11];
          *v53 = *v10;
          v53[1] = v83;
LABEL_38:
          *v10 = v287;
          a2[-11] = v326;
          a2[-8] = v440;
          a2[-7] = v476;
          a2[-10] = v365;
          a2[-9] = v404;
        }
      }

      v84 = v12 + 96 * v15;
      v85 = *(v84 + 144);
      v86 = a2[-15].n128_i32[0];
      if (v85 >= *(v12 + 240))
      {
        if (v86 < v85)
        {
          v293 = *(v84 + 96);
          v332 = *(v84 + 112);
          v446 = *(v84 + 160);
          v482 = *(v84 + 176);
          v371 = *(v84 + 128);
          v410 = *(v84 + 144);
          v91 = a2[-13];
          v93 = a2[-16];
          v92 = a2[-15];
          *(v84 + 160) = a2[-14];
          *(v84 + 176) = v91;
          *(v84 + 128) = v93;
          *(v84 + 144) = v92;
          v94 = a2[-17];
          *(v84 + 96) = *v11;
          *(v84 + 112) = v94;
          *v11 = v293;
          a2[-17] = v332;
          a2[-14] = v446;
          a2[-13] = v482;
          a2[-16] = v371;
          a2[-15] = v410;
          if (*(v84 + 144) < *(v12 + 240))
          {
            v372 = *(v12 + 224);
            v411 = *(v12 + 240);
            v447 = *(v12 + 256);
            v483 = *(v12 + 272);
            v294 = *(v12 + 192);
            v333 = *(v12 + 208);
            v95 = *(v84 + 112);
            *(v12 + 192) = *(v84 + 96);
            *(v12 + 208) = v95;
            v96 = *(v84 + 176);
            v98 = *(v84 + 128);
            v97 = *(v84 + 144);
            *(v12 + 256) = *(v84 + 160);
            *(v12 + 272) = v96;
            *(v12 + 224) = v98;
            *(v12 + 240) = v97;
            *(v84 + 96) = v294;
            *(v84 + 112) = v333;
            *(v84 + 160) = v447;
            *(v84 + 176) = v483;
            *(v84 + 128) = v372;
            *(v84 + 144) = v411;
          }
        }
      }

      else
      {
        if (v86 < v85)
        {
          v370 = *(v12 + 224);
          v409 = *(v12 + 240);
          v445 = *(v12 + 256);
          v481 = *(v12 + 272);
          v292 = *(v12 + 192);
          v331 = *(v12 + 208);
          v87 = a2[-17];
          *(v12 + 192) = *v11;
          *(v12 + 208) = v87;
          v88 = a2[-13];
          v90 = a2[-16];
          v89 = a2[-15];
          *(v12 + 256) = a2[-14];
          *(v12 + 272) = v88;
          *(v12 + 224) = v90;
          *(v12 + 240) = v89;
          goto LABEL_47;
        }

        v373 = *(v12 + 224);
        v412 = *(v12 + 240);
        v448 = *(v12 + 256);
        v484 = *(v12 + 272);
        v295 = *(v12 + 192);
        v334 = *(v12 + 208);
        v99 = *(v84 + 112);
        *(v12 + 192) = *(v84 + 96);
        *(v12 + 208) = v99;
        v100 = *(v84 + 176);
        v102 = *(v84 + 128);
        v101 = *(v84 + 144);
        *(v12 + 256) = *(v84 + 160);
        *(v12 + 272) = v100;
        *(v12 + 224) = v102;
        *(v12 + 240) = v101;
        *(v84 + 96) = v295;
        *(v84 + 112) = v334;
        *(v84 + 160) = v448;
        *(v84 + 176) = v484;
        *(v84 + 128) = v373;
        *(v84 + 144) = v412;
        if (a2[-15].n128_u32[0] < *(v84 + 144))
        {
          v292 = *(v84 + 96);
          v331 = *(v84 + 112);
          v445 = *(v84 + 160);
          v481 = *(v84 + 176);
          v370 = *(v84 + 128);
          v409 = *(v84 + 144);
          v103 = a2[-13];
          v105 = a2[-16];
          v104 = a2[-15];
          *(v84 + 160) = a2[-14];
          *(v84 + 176) = v103;
          *(v84 + 128) = v105;
          *(v84 + 144) = v104;
          v106 = a2[-17];
          *(v84 + 96) = *v11;
          *(v84 + 112) = v106;
LABEL_47:
          *v11 = v292;
          a2[-17] = v331;
          a2[-14] = v445;
          a2[-13] = v481;
          a2[-16] = v370;
          a2[-15] = v409;
        }
      }

      v107 = *(v16 + 48);
      v108 = *(v84 + 144);
      if (v107 >= v53[3].n128_u32[0])
      {
        if (v108 < v107)
        {
          v297 = *v16;
          v336 = *(v16 + 16);
          v450 = *(v16 + 64);
          v486 = *(v16 + 80);
          v375 = *(v16 + 32);
          v414 = *(v16 + 48);
          v112 = *(v84 + 176);
          *(v16 + 64) = *(v84 + 160);
          *(v16 + 80) = v112;
          v113 = *(v84 + 144);
          *(v16 + 32) = *(v84 + 128);
          *(v16 + 48) = v113;
          v114 = *(v84 + 112);
          *v16 = *(v84 + 96);
          *(v16 + 16) = v114;
          *(v84 + 96) = v297;
          *(v84 + 112) = v336;
          *(v84 + 160) = v450;
          *(v84 + 176) = v486;
          *(v84 + 128) = v375;
          *(v84 + 144) = v414;
          if (*(v16 + 48) < v53[3].n128_u32[0])
          {
            v298 = *v53;
            v337 = v53[1];
            v451 = v53[4];
            v487 = v53[5];
            v376 = v53[2];
            v415 = v53[3];
            v115 = *(v16 + 80);
            v53[4] = *(v16 + 64);
            v53[5] = v115;
            v116 = *(v16 + 48);
            v53[2] = *(v16 + 32);
            v53[3] = v116;
            v117 = *(v16 + 16);
            *v53 = *v16;
            v53[1] = v117;
            *v16 = v298;
            *(v16 + 16) = v337;
            *(v16 + 64) = v451;
            *(v16 + 80) = v487;
            *(v16 + 32) = v376;
            *(v16 + 48) = v415;
          }
        }
      }

      else
      {
        if (v108 < v107)
        {
          v296 = *v53;
          v335 = v53[1];
          v449 = v53[4];
          v485 = v53[5];
          v374 = v53[2];
          v413 = v53[3];
          v109 = *(v84 + 176);
          v53[4] = *(v84 + 160);
          v53[5] = v109;
          v110 = *(v84 + 144);
          v53[2] = *(v84 + 128);
          v53[3] = v110;
          v111 = *(v84 + 112);
          *v53 = *(v84 + 96);
          v53[1] = v111;
          goto LABEL_56;
        }

        v299 = *v53;
        v338 = v53[1];
        v452 = v53[4];
        v488 = v53[5];
        v377 = v53[2];
        v416 = v53[3];
        v118 = *(v16 + 80);
        v53[4] = *(v16 + 64);
        v53[5] = v118;
        v119 = *(v16 + 48);
        v53[2] = *(v16 + 32);
        v53[3] = v119;
        v120 = *(v16 + 16);
        *v53 = *v16;
        v53[1] = v120;
        *v16 = v299;
        *(v16 + 16) = v338;
        *(v16 + 64) = v452;
        *(v16 + 80) = v488;
        *(v16 + 32) = v377;
        *(v16 + 48) = v416;
        if (*(v84 + 144) < *(v16 + 48))
        {
          v296 = *v16;
          v335 = *(v16 + 16);
          v449 = *(v16 + 64);
          v485 = *(v16 + 80);
          v374 = *(v16 + 32);
          v413 = *(v16 + 48);
          v121 = *(v84 + 176);
          *(v16 + 64) = *(v84 + 160);
          *(v16 + 80) = v121;
          v122 = *(v84 + 144);
          *(v16 + 32) = *(v84 + 128);
          *(v16 + 48) = v122;
          v123 = *(v84 + 112);
          *v16 = *(v84 + 96);
          *(v16 + 16) = v123;
LABEL_56:
          *(v84 + 96) = v296;
          *(v84 + 112) = v335;
          *(v84 + 160) = v449;
          *(v84 + 176) = v485;
          *(v84 + 128) = v374;
          *(v84 + 144) = v413;
        }
      }

      v300 = *v12;
      v339 = *(v12 + 16);
      v453 = *(v12 + 64);
      v489 = *(v12 + 80);
      v378 = *(v12 + 32);
      v417 = *(v12 + 48);
      v124 = *(v16 + 80);
      v126 = *(v16 + 32);
      v125 = *(v16 + 48);
      *(v12 + 64) = *(v16 + 64);
      *(v12 + 80) = v124;
      *(v12 + 32) = v126;
      *(v12 + 48) = v125;
      v127 = *(v16 + 16);
      *v12 = *v16;
      *(v12 + 16) = v127;
      *v16 = v300;
      *(v16 + 16) = v339;
      *(v16 + 64) = v453;
      *(v16 + 80) = v489;
      *(v16 + 32) = v378;
      *(v16 + 48) = v417;
      goto LABEL_58;
    }

    v23 = *(v12 + 48);
    if (v23 >= *(v16 + 48))
    {
      if (v17 < v23)
      {
        v284 = *v12;
        v323 = *(v12 + 16);
        v437 = *(v12 + 64);
        v473 = *(v12 + 80);
        v362 = *(v12 + 32);
        v401 = *(v12 + 48);
        v36 = a2[-1];
        v38 = a2[-4];
        v37 = a2[-3];
        *(v12 + 64) = a2[-2];
        *(v12 + 80) = v36;
        *(v12 + 32) = v38;
        *(v12 + 48) = v37;
        v39 = a2[-5];
        *v12 = *v9;
        *(v12 + 16) = v39;
        *v9 = v284;
        a2[-5] = v323;
        a2[-2] = v437;
        a2[-1] = v473;
        a2[-4] = v362;
        a2[-3] = v401;
        if (*(v12 + 48) < *(v16 + 48))
        {
          v285 = *v16;
          v324 = *(v16 + 16);
          v438 = *(v16 + 64);
          v474 = *(v16 + 80);
          v363 = *(v16 + 32);
          v402 = *(v16 + 48);
          v40 = *(v12 + 80);
          v42 = *(v12 + 32);
          v41 = *(v12 + 48);
          *(v16 + 64) = *(v12 + 64);
          *(v16 + 80) = v40;
          *(v16 + 32) = v42;
          *(v16 + 48) = v41;
          v43 = *(v12 + 16);
          *v16 = *v12;
          *(v16 + 16) = v43;
          *v12 = v285;
          *(v12 + 16) = v324;
          *(v12 + 64) = v438;
          *(v12 + 80) = v474;
          *(v12 + 32) = v363;
          *(v12 + 48) = v402;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v23)
    {
      v281 = *v16;
      v320 = *(v16 + 16);
      v434 = *(v16 + 64);
      v470 = *(v16 + 80);
      v359 = *(v16 + 32);
      v398 = *(v16 + 48);
      v24 = a2[-1];
      v26 = a2[-4];
      v25 = a2[-3];
      *(v16 + 64) = a2[-2];
      *(v16 + 80) = v24;
      *(v16 + 32) = v26;
      *(v16 + 48) = v25;
      v27 = a2[-5];
      *v16 = *v9;
      *(v16 + 16) = v27;
LABEL_35:
      *v9 = v281;
      a2[-5] = v320;
      a2[-2] = v434;
      a2[-1] = v470;
      a2[-4] = v359;
      a2[-3] = v398;
      goto LABEL_58;
    }

    v290 = *v16;
    v329 = *(v16 + 16);
    v443 = *(v16 + 64);
    v479 = *(v16 + 80);
    v368 = *(v16 + 32);
    v407 = *(v16 + 48);
    v68 = *(v12 + 80);
    v70 = *(v12 + 32);
    v69 = *(v12 + 48);
    *(v16 + 64) = *(v12 + 64);
    *(v16 + 80) = v68;
    *(v16 + 32) = v70;
    *(v16 + 48) = v69;
    v71 = *(v12 + 16);
    *v16 = *v12;
    *(v16 + 16) = v71;
    *v12 = v290;
    *(v12 + 16) = v329;
    *(v12 + 64) = v443;
    *(v12 + 80) = v479;
    *(v12 + 32) = v368;
    *(v12 + 48) = v407;
    if (a2[-3].n128_u32[0] < *(v12 + 48))
    {
      v281 = *v12;
      v320 = *(v12 + 16);
      v434 = *(v12 + 64);
      v470 = *(v12 + 80);
      v359 = *(v12 + 32);
      v398 = *(v12 + 48);
      v72 = a2[-1];
      v74 = a2[-4];
      v73 = a2[-3];
      *(v12 + 64) = a2[-2];
      *(v12 + 80) = v72;
      *(v12 + 32) = v74;
      *(v12 + 48) = v73;
      v75 = a2[-5];
      *v12 = *v9;
      *(v12 + 16) = v75;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v128 = *(v12 + 48);
LABEL_61:
      v129 = 0;
      v517 = *(v12 + 16);
      v523 = *(v12 + 32);
      v511 = *v12;
      v505 = *(v12 + 52);
      *v508 = *(v12 + 68);
      *&v508[12] = *(v12 + 80);
      do
      {
        v130 = *(v12 + v129 + 144);
        v129 += 96;
      }

      while (v130 < v128);
      v131 = v12 + v129;
      v132 = a2;
      if (v129 == 96)
      {
        v135 = a2;
        while (v131 < v135)
        {
          v133 = v135 - 6;
          v136 = v135[-3].n128_i32[0];
          v135 -= 6;
          if (v136 < v128)
          {
            goto LABEL_71;
          }
        }

        v133 = v135;
      }

      else
      {
        do
        {
          v133 = v132 - 6;
          v134 = v132[-3].n128_i32[0];
          v132 -= 6;
        }

        while (v134 >= v128);
      }

LABEL_71:
      v12 = v131;
      if (v131 < v133)
      {
        v137 = v133;
        do
        {
          v301 = *v12;
          v340 = *(v12 + 16);
          v454 = *(v12 + 64);
          v490 = *(v12 + 80);
          v379 = *(v12 + 32);
          v418 = *(v12 + 48);
          v138 = v137[5];
          v140 = v137[2];
          v139 = v137[3];
          *(v12 + 64) = v137[4];
          *(v12 + 80) = v138;
          *(v12 + 32) = v140;
          *(v12 + 48) = v139;
          v141 = v137[1];
          *v12 = *v137;
          *(v12 + 16) = v141;
          *v137 = v301;
          v137[1] = v340;
          v137[4] = v454;
          v137[5] = v490;
          v137[2] = v379;
          v137[3] = v418;
          do
          {
            v142 = *(v12 + 144);
            v12 += 96;
          }

          while (v142 < v128);
          do
          {
            v143 = v137[-3].n128_i32[0];
            v137 -= 6;
          }

          while (v143 >= v128);
        }

        while (v12 < v137);
      }

      v144 = (v12 - 96);
      if (v12 - 96 != a1)
      {
        v145 = *(v12 - 80);
        *a1 = *v144;
        *(a1 + 16) = v145;
        v146 = *(v12 - 64);
        v147 = *(v12 - 48);
        v148 = *(v12 - 16);
        *(a1 + 64) = *(v12 - 32);
        *(a1 + 80) = v148;
        *(a1 + 32) = v146;
        *(a1 + 48) = v147;
      }

      *v144 = v511;
      *(v12 - 80) = v517;
      *(v12 - 64) = v523;
      *(v12 - 48) = v128;
      *(v12 - 16) = *&v508[12];
      *(v12 - 28) = *v508;
      *(v12 - 44) = v505;
      if (v131 < v133)
      {
        goto LABEL_82;
      }

      v149 = sub_100D23A9C(a1, v12 - 96);
      if (sub_100D23A9C(v12, a2))
      {
        a2 = (v12 - 96);
        if (!v149)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v149)
      {
LABEL_82:
        sub_1001A9F5C(a1, v12 - 96, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v128 = *(v12 + 48);
      if (*(v12 - 48) < v128)
      {
        goto LABEL_61;
      }

      v518 = *(v12 + 16);
      v524 = *(v12 + 32);
      v512 = *v12;
      v506 = *(v12 + 52);
      *v509 = *(v12 + 68);
      *&v509[12] = *(v12 + 80);
      if (v128 >= a2[-3].n128_u32[0])
      {
        v152 = v12 + 96;
        do
        {
          v12 = v152;
          if (v152 >= a2)
          {
            break;
          }

          v153 = *(v152 + 48);
          v152 += 96;
        }

        while (v128 >= v153);
      }

      else
      {
        v150 = v12;
        do
        {
          v12 = v150 + 96;
          v151 = *(v150 + 144);
          v150 += 96;
        }

        while (v128 >= v151);
      }

      v154 = a2;
      if (v12 < a2)
      {
        v155 = a2;
        do
        {
          v154 = v155 - 6;
          v156 = v155[-3].n128_i32[0];
          v155 -= 6;
        }

        while (v128 < v156);
      }

      while (v12 < v154)
      {
        v302 = *v12;
        v341 = *(v12 + 16);
        v455 = *(v12 + 64);
        v491 = *(v12 + 80);
        v380 = *(v12 + 32);
        v419 = *(v12 + 48);
        v157 = v154[5];
        v159 = v154[2];
        v158 = v154[3];
        *(v12 + 64) = v154[4];
        *(v12 + 80) = v157;
        *(v12 + 32) = v159;
        *(v12 + 48) = v158;
        v160 = v154[1];
        *v12 = *v154;
        *(v12 + 16) = v160;
        *v154 = v302;
        v154[1] = v341;
        v154[4] = v455;
        v154[5] = v491;
        v154[2] = v380;
        v154[3] = v419;
        do
        {
          v161 = *(v12 + 144);
          v12 += 96;
        }

        while (v128 >= v161);
        do
        {
          v162 = v154[-3].n128_i32[0];
          v154 -= 6;
        }

        while (v128 < v162);
      }

      v163 = (v12 - 96);
      if (v12 - 96 != a1)
      {
        v164 = *(v12 - 80);
        *a1 = *v163;
        *(a1 + 16) = v164;
        v165 = *(v12 - 64);
        v166 = *(v12 - 48);
        v167 = *(v12 - 16);
        *(a1 + 64) = *(v12 - 32);
        *(a1 + 80) = v167;
        *(a1 + 32) = v165;
        *(a1 + 48) = v166;
      }

      a4 = 0;
      *v163 = v512;
      *(v12 - 80) = v518;
      *(v12 - 64) = v524;
      *(v12 - 48) = v128;
      result = v506;
      *(v12 - 16) = *&v509[12];
      *(v12 - 28) = *v509;
      *(v12 - 44) = v506;
    }
  }

  v172 = *(v12 + 144);
  v173 = a2[-3].n128_i32[0];
  if (v172 >= *(v12 + 48))
  {
    if (v173 >= v172)
    {
      return result;
    }

    v387 = *(v12 + 128);
    v424 = *(v12 + 144);
    v460 = *(v12 + 160);
    v496 = *(v12 + 176);
    v309 = *(v12 + 96);
    v348 = *(v12 + 112);
    v241 = a2[-5];
    *(v12 + 96) = *v9;
    *(v12 + 112) = v241;
    v242 = a2[-1];
    v244 = a2[-4];
    v243 = a2[-3];
    *(v12 + 160) = a2[-2];
    *(v12 + 176) = v242;
    *(v12 + 128) = v244;
    *(v12 + 144) = v243;
    *v9 = v309;
    a2[-5] = v348;
    result = v387;
    a2[-2] = v460;
    a2[-1] = v496;
    a2[-4] = v387;
    a2[-3] = v424;
    goto LABEL_192;
  }

  if (v173 >= v172)
  {
    v313 = *v12;
    v352 = *(v12 + 16);
    v463 = *(v12 + 64);
    v499 = *(v12 + 80);
    v391 = *(v12 + 32);
    v427 = *(v12 + 48);
    v257 = *(v12 + 176);
    *(v12 + 64) = *(v12 + 160);
    *(v12 + 80) = v257;
    v258 = *(v12 + 144);
    *(v12 + 32) = *(v12 + 128);
    *(v12 + 48) = v258;
    v259 = *(v12 + 112);
    *v12 = *(v12 + 96);
    *(v12 + 16) = v259;
    *(v12 + 96) = v313;
    *(v12 + 112) = v352;
    result = v391;
    *(v12 + 160) = v463;
    *(v12 + 176) = v499;
    *(v12 + 128) = v391;
    *(v12 + 144) = v427;
    if (a2[-3].n128_u32[0] >= *(v12 + 144))
    {
      return result;
    }

    v382 = *(v12 + 128);
    v421 = *(v12 + 144);
    v457 = *(v12 + 160);
    v493 = *(v12 + 176);
    v304 = *(v12 + 96);
    v343 = *(v12 + 112);
    v260 = a2[-5];
    *(v12 + 96) = *v9;
    *(v12 + 112) = v260;
    v261 = a2[-1];
    v263 = a2[-4];
    v262 = a2[-3];
    *(v12 + 160) = a2[-2];
    *(v12 + 176) = v261;
    *(v12 + 128) = v263;
    *(v12 + 144) = v262;
  }

  else
  {
    v304 = *v12;
    v343 = *(v12 + 16);
    v457 = *(v12 + 64);
    v493 = *(v12 + 80);
    v382 = *(v12 + 32);
    v421 = *(v12 + 48);
    v174 = a2[-1];
    v176 = a2[-4];
    v175 = a2[-3];
    *(v12 + 64) = a2[-2];
    *(v12 + 80) = v174;
    *(v12 + 32) = v176;
    *(v12 + 48) = v175;
    v177 = a2[-5];
    *v12 = *v9;
    *(v12 + 16) = v177;
  }

  *v9 = v304;
  a2[-5] = v343;
  result = v382;
  a2[-2] = v457;
  a2[-1] = v493;
  a2[-4] = v382;
  a2[-3] = v421;
  return result;
}