void sub_100026750(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_100024DD8(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100026820(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000268DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013A448;
  a2[1] = v2;
  return result;
}

void sub_100026908(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v3, 0x12u);
    }

    sub_100026A24(v1);
  }
}

uint64_t sub_1000269D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100026A24(uint64_t a1)
{
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 16) = _Q0;
  *(a1 + 160) = 0;
  v8 = *(a1 + 32);
  for (i = *(a1 + 40); i != v8; sub_100024724(i))
  {
    i -= 56;
  }

  *(a1 + 40) = v8;
}

uint64_t sub_100026AA4(uint64_t a1, double a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, char a8)
{
  *a1 = a8;
  v9 = a4[1];
  *(a1 + 8) = *a4;
  *(a1 + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  *(a1 + 24) = *a5;
  *(a1 + 32) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a6[1];
  *(a1 + 40) = *a6;
  *(a1 + 48) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v12 = a7[1];
  *(a1 + 80) = *a7;
  *(a1 + 88) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = a2;
  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 68289026;
    v15[1] = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEff,initialized}", v15, 0x12u);
  }

  return a1;
}

uint64_t sub_100026BD0(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289026;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEff,released}", v8, 0x12u);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_10002A838(v3);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_10002A838(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    sub_10002A838(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002A838(v6);
  }

  return a1;
}

void sub_100026CCC(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    v43 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v44 = "{msg%{public}.0s:#igEff,run,manifest nil}";
LABEL_48:
    v45 = v43;
    goto LABEL_49;
  }

  if ((*(v3 + 28) & 1) == 0)
  {
    v43 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v44 = "{msg%{public}.0s:#igEff,run,manifest invalid}";
    goto LABEL_48;
  }

  v7 = sub_100055C38(*(a1 + 24), *(a1 + 96));
  v8 = SALogObjectGeneral;
  v9 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v9)
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v44 = "{msg%{public}.0s:#igEff,collectEfficacyMetric,too soon to collect}";
    v45 = v8;
LABEL_49:
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v44, buf, 0x12u);
    return;
  }

  if (v9)
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEff,run}", buf, 0x12u);
  }

  v10 = *(a1 + 40);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 != v12)
  {
    v13 = "";
    v14 = &_mh_execute_header;
    do
    {
      v15 = *v11;
      if (*v11)
      {
        if (v15[13])
        {
          v16 = **v15;
          if (v17)
          {
            v18 = v17;
            v19 = v14;
            v20 = v13;
            v21 = *(v11 + 8);
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
              v15 = *v11;
            }

            v22 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              v23 = *(v15 + 5);
              *buf = 68289795;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = v20;
              *&buf[18] = 2049;
              *&buf[20] = v23;
              *&buf[28] = 2049;
              *&buf[30] = a2;
              v54 = 2049;
              v55 = a3;
              _os_log_impl(v19, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEff,run, effectiveTimeSeconds:%{private}0.1f, startTsSeconds:%{private}0.1f, endTsSeconds:%{private}0.1f}", buf, 0x30u);
              v15 = *v11;
            }

            v24 = v15[5];
            v13 = v20;
            if (v24 > a3)
            {
              v25 = SALogObjectGeneral;
              v14 = v19;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289026;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = v13;
                v26 = buf;
                v27 = v19;
                v28 = v25;
                v29 = "{msg%{public}.0s:#igEff,run,future entry,skipping}";
                goto LABEL_39;
              }

              goto LABEL_40;
            }

            v14 = v19;
            if (v24 >= a2)
            {
              memset(buf, 0, 32);
              v37 = *(v18 + 1);
              v38 = v18[5];
              v39 = v18[6];
              v40 = *(a1 + 88);
              v47 = *(a1 + 80);
              v48 = v40;
              if (v40)
              {
                atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              isLocInGeometryForGivenTime = SAGeometry::isLocInGeometryForGivenTime(v37, &v47, buf, v38, v39);
              if (v48)
              {
                sub_10002A838(v48);
              }

              if (isLocInGeometryForGivenTime)
              {
                v46[0] = v18;
                v46[1] = v21;
                if (v21)
                {
                  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_10002729C(a1, v46, buf, a2, a3);
                if (v21)
                {
                  sub_10002A838(v21);
                }

                goto LABEL_40;
              }

              v42 = SALogObjectGeneral;
              if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
LABEL_40:
                if (v21)
                {
                  sub_10002A838(v21);
                }

                goto LABEL_42;
              }

              *v49 = 68289026;
              v50 = 0;
              v51 = 2082;
              v52 = v13;
              v26 = v49;
              v27 = v19;
              v28 = v42;
              v29 = "{msg%{public}.0s:#igEff,run,not in polygon,skipping}";
            }

            else
            {
              v36 = SALogObjectGeneral;
              if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_40;
              }

              *buf = 68289026;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = v13;
              v26 = buf;
              v27 = v19;
              v28 = v36;
              v29 = "{msg%{public}.0s:#igEff,run,passed entry,skipping}";
            }

LABEL_39:
            _os_log_impl(v27, v28, OS_LOG_TYPE_DEFAULT, v29, v26, 0x12u);
            goto LABEL_40;
          }

          v35 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = v13;
            v31 = v14;
            v32 = v35;
            v33 = "{msg%{public}.0s:#igEff,run,entry not matched,skipping}";
            goto LABEL_24;
          }
        }

        else
        {
          v34 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = v13;
            v31 = v14;
            v32 = v34;
            v33 = "{msg%{public}.0s:#igEff,run,entry not valid,skipping}";
            goto LABEL_24;
          }
        }
      }

      else
      {
        v30 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = v13;
          v31 = v14;
          v32 = v30;
          v33 = "{msg%{public}.0s:#igEff,run,entry null,skipping}";
LABEL_24:
          _os_log_impl(v31, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0x12u);
        }
      }

LABEL_42:
      v11 += 16;
    }

    while (v11 != v12);
  }
}

void sub_100027264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    sub_10002A838(v18);
    sub_10002A838(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002729C(uint64_t a1, uint64_t *a2, double *a3, double a4, double a5)
{
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEff,collect}", buf, 0x12u);
  }

  v152 = 0u;
  v158 = -1.0;
  v160 = 0.0;
  v162 = 0;
  v164 = xmmword_1000DF110;
  v167 = 0;
  sub_1000060C4(&__p, "");
  __asm { FMOV            V0.2D, #-1.0 }

  v174 = _Q0;
  v175 = _Q0;
  v176 = _Q0;
  v177 = _Q0;
  v16 = *a2;
  v15 = a2[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEff,collectSystemMetrics}", buf, 0x12u);
  }

  v165 = *(sub_100002DB0() + 16);
  v166 = *(sub_100002DB0() + 17);
  v18 = sub_100002DB0();
  BYTE2(v152) = *(v18 + 151) & *(v18 + 150);
  BYTE3(v152) = *a1;
  v19 = sub_100002DB0();
  v155 = *(v19 + 109) & *(v19 + 108);
  v163 = (*(**(a1 + 8) + 160))(*(a1 + 8), *(v16 + 16));
  (*(**(a1 + 8) + 168))(*(a1 + 8), *(v16 + 16));
  v168 = v20;
  (*(**(a1 + 8) + 120))(*(a1 + 8), *(v16 + 16), *(v16 + 48));
  DWORD2(v164) = v21;
  v171 = (*(**(a1 + 8) + 112))(*(a1 + 8), *(v16 + 16), *(v16 + 48));
  v22 = sub_100002DB0();
  v154 = *(v22 + 125) & *(v22 + 124);
  BYTE14(v152) = *(SAPlatformInfo::instance(v22) + 11);
  v156 = (*(**(a1 + 8) + 64))(*(a1 + 8), *(v16 + 16), *(v16 + 48)) == 1;
  v157 = (*(**(a1 + 8) + 40))(*(a1 + 8), *(v16 + 16)) == 1;
  v153 = (*(**(a1 + 8) + 96))(*(a1 + 8), *(v16 + 16), *(v16 + 48)) - 1 < 2;
  BYTE12(v152) = sub_100055308(*(a1 + 24), *(v16 + 16), *(v16 + 48)) == 1;
  BYTE5(v152) = (*(**(a1 + 8) + 88))(*(a1 + 8), *(v16 + 16), *(v16 + 48)) - 1 < 2;
  if (v15)
  {
    sub_10002A838(v15);
  }

  v24 = *a2;
  v23 = a2[1];
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v148 = v23;
  if (*(v24 + 175) < 0)
  {
    sub_100004CEC(buf, *(v24 + 152), *(v24 + 160));
  }

  else
  {
    *buf = *(v24 + 152);
    *&buf[16] = *(v24 + 168);
  }

  if (SHIBYTE(v173) < 0)
  {
    operator delete(__p);
  }

  __p = *buf;
  v173 = *&buf[16];
  v169 = *(v24 + 144);
  v159 = *(v24 + 136);
  if (*(v24 + 79) < 0)
  {
    sub_100004CEC(buf, *(v24 + 56), *(v24 + 64));
  }

  else
  {
    *buf = *(v24 + 56);
    *&buf[16] = *(v24 + 72);
  }

  v25 = sub_10007EDE4(buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v161 = sub_10008BCD8(v25);
  v26 = SALogObjectGeneral;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if (v173 < 0)
    {
      p_p = __p;
    }

    *buf = 68290307;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = p_p;
    *&buf[28] = 1025;
    *&buf[30] = v169;
    *&buf[34] = 1025;
    *&buf[36] = v161;
    *v235 = 2049;
    *&v235[2] = 0;
    *&v235[10] = 2049;
    *&v235[12] = v159;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEff,collectAlertMetrics, bleAlertID:%{private, location:escape_only}s, senderID:%{private}d, purpose:%{private}d, mmi:%{private}0.1f, magnitude:%{private}0.1f}", buf, 0x3Cu);
  }

  __dst[1] = 0;
  __dst[0] = 0;
  v183 = 0;
  sub_100056940(*(a1 + 24), &__p, __dst, a4, a5);
  if (__dst[0] != __dst[1])
  {
    sub_100028F18(__dst[0], __dst[1], 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((__dst[1] - __dst[0]) >> 3)), 1);
    *&v187[8] = 0;
    *v186 = 0;
    *v187 = 0;
    sub_1000060C4(&v188, "{}");
    sub_100026200(buf, v186, &v188, -1.0);
    if (SHIBYTE(v189) < 0)
    {
      operator delete(v188);
    }

    if ((v187[15] & 0x80000000) != 0)
    {
      operator delete(*v186);
    }

    v181 = 0;
    v180 = 0uLL;
    sub_1000060C4(v178, "{}");
    sub_100026200(&v188, &v180, v178, -1.0);
    if (v179 < 0)
    {
      operator delete(v178[0]);
    }

    if (SHIBYTE(v181) < 0)
    {
      operator delete(v180);
    }

    v28 = __dst[0];
    v29 = __dst[1];
    if (__dst[0] == __dst[1])
    {
      v30 = 0;
    }

    else
    {
      v30 = 0;
      do
      {
        v31 = SACommonUtils::convertStringToDictionary(v28 + 4);
        v32 = v31;
        if (v31)
        {
          v33 = [v31 objectForKey:@"b"];
          v34 = v33 == 0;

          if (!v34)
          {
            v35 = [v32 objectForKey:@"b"];
            v36 = [v35 intValue];

            if (v36 == 2)
            {
              BYTE1(v152) = 1;
              ++v30;
              v38 = HIBYTE(v190);
              if (SHIBYTE(v190) < 0)
              {
                v38 = v189;
              }

              if (!v38)
              {
                *&v188 = *v28;
                std::string::operator=((&v188 + 8), (v28 + 8));
                std::string::operator=(&v191, (v28 + 32));
              }
            }

            else if (v36 == 1)
            {
              LOBYTE(v152) = 1;
              v37 = buf[31];
              if (buf[31] < 0)
              {
                v37 = *&buf[16];
              }

              if (!v37)
              {
                *buf = *v28;
                std::string::operator=(&buf[8], (v28 + 8));
                std::string::operator=(&buf[32], (v28 + 32));
              }
            }
          }
        }

        v28 += 56;
      }

      while (v28 != v29);
      v28 = __dst[0];
    }

    v40 = SACommonUtils::convertStringToDictionary(v28 + 4);
    v41 = v40;
    if (!v40)
    {
      goto LABEL_79;
    }

    v42 = [v40 objectForKey:@"8"];
    v43 = v42 == 0;

    if (!v43)
    {
      v44 = [v41 objectForKey:@"8"];
      [v44 doubleValue];
      v160 = v45;
    }

    v46 = [v41 objectForKey:@"1"];
    v47 = v46 == 0;

    if (!v47)
    {
      v48 = [v41 objectForKey:@"1"];
      BYTE9(v152) = [v48 BOOLValue];
    }

    v49 = [v41 objectForKey:@"b"];
    v50 = v49 == 0;

    if (!v50)
    {
      v51 = [v41 objectForKey:@"b"];
      v52 = [v51 intValue];

      if (v52 == 1)
      {
        v53 = 0;
        goto LABEL_63;
      }

      if (v52 == 2)
      {
        v53 = 1;
LABEL_63:
        HIDWORD(v164) = v53;
      }
    }

    v54 = [v41 objectForKey:@"a"];
    v55 = v54 == 0;

    if (!v55)
    {
      v56 = [v41 objectForKey:@"a"];
      v177.f64[0] = [v56 intValue] / 1000.0;
    }

    v57 = [v41 objectForKey:@"9"];
    v58 = v57 == 0;

    if (!v58)
    {
      v59 = [v41 objectForKey:@"9"];
      v60 = [v59 intValue];
      if (v60 > 5)
      {
        v61 = 4;
      }

      else
      {
        v61 = dword_1000DF13C[v60];
      }

      v170 = v61;
    }

    v62 = [v41 objectForKey:@"2"];
    v63 = v62 == 0;

    if (!v63)
    {
      v64 = [v41 objectForKey:@"2"];
      LODWORD(v164) = [v64 intValue];
    }

    v65 = [v41 objectForKey:@"7"];
    v66 = v65 == 0;

    if (!v66)
    {
      v67 = [v41 objectForKey:@"7"];
      HIBYTE(v152) = [v67 BOOLValue];
    }

    v68 = [v41 objectForKey:@"6"];
    v69 = v68 == 0;

    if (!v69)
    {
      v70 = [v41 objectForKey:@"6"];
      BYTE10(v152) = [v70 BOOLValue];
    }

    v71 = [v41 objectForKey:@"5"];
    v72 = v71 == 0;

    if (!v72)
    {
      v73 = [v41 objectForKey:@"5"];
      BYTE11(v152) = [v73 BOOLValue];

      BYTE13(v152) = BYTE11(v152);
    }

LABEL_79:
    if (fabs(a3[1]) <= 90.0 && fabs(a3[2]) <= 180.0 && a3[3] > 0.0)
    {
      v74 = *(v24 + 120);
      v75 = *(v24 + 128);
      CLClientGetDistanceCoordinates();
      v158 = v76 / 1000.0;
      v77 = *v28 - *(v24 + 32);
      v78 = v76 / 3600.0;
      BYTE8(v152) = v77 <= v78;
      v175.f64[1] = (v77 - v78) * 1000.0;
    }

    v79 = *v28;
    v80.f64[0] = *(v24 + 32);
    v80.f64[1] = *(v24 + 112);
    v176 = vmulq_f64(vsubq_f64(vdupq_lane_s64(*v28, 0), v80), vdupq_n_s64(0x408F400000000000uLL));
    v177.f64[1] = (v79 - *(v24 + 16)) * 1000.0;
    v175.f64[0] = (*(__dst[1] - 7) - v79) * 1000.0;
    if (v152 == 1 && BYTE1(v152) == 1)
    {
      v174.f64[1] = (*buf - *&v188) * 1000.0;
    }

    if (v41)
    {
      v81 = [v41 objectForKey:@"0"];
      v82 = v81 == 0;

      if (!v82)
      {
        v83 = [v41 objectForKey:@"0"];
        v174.f64[0] = [v83 intValue];
      }
    }

    v167 = v30;
    if (BYTE1(v152) == 1)
    {
      v84 = SACommonUtils::convertStringToDictionary(&v191);
      v85 = v84;
      if (v84)
      {
        v86 = [v84 objectForKey:@"3"];
        v87 = v86 == 0;

        if (!v87)
        {
          v88 = [v85 objectForKey:@"3"];
          DWORD1(v164) = [v88 intValue];
        }
      }
    }

    if (v152 == 1)
    {
      v89 = SACommonUtils::convertStringToDictionary(&buf[32]);
      v90 = v89;
      if (v89)
      {
        v91 = [v89 objectForKey:@"4"];
        v92 = v91 == 0;

        if (!v92)
        {
          v93 = [v90 objectForKey:@"4"];
          v162 = [v93 intValue];
        }
      }
    }

    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v191.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v190) < 0)
    {
      operator delete(*(&v188 + 1));
    }

    if ((v235[15] & 0x80000000) != 0)
    {
      operator delete(*&buf[32]);
    }

    if ((buf[31] & 0x80000000) != 0)
    {
      operator delete(*&buf[8]);
    }

    goto LABEL_107;
  }

  v39 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEff,collectAlertMetrics,no alert received}", buf, 0x12u);
  }

LABEL_107:
  *buf = __dst;
  sub_1000246A0(buf);
  if (v148)
  {
    sub_10002A838(v148);
  }

  *&v188 = @"apnsAlertReceived";
  v149 = [NSNumber numberWithBool:v152];
  *buf = v149;
  *(&v188 + 1) = @"bleAlertReceived";
  v147 = [NSNumber numberWithBool:BYTE1(v152)];
  *&buf[8] = v147;
  v189 = @"bleDiscoverable";
  v145 = [NSNumber numberWithBool:BYTE2(v152)];
  *&buf[16] = v145;
  v190 = @"bleSwitchEnabled";
  v144 = [NSNumber numberWithBool:BYTE3(v152)];
  *&buf[24] = v144;
  v191.__r_.__value_.__r.__words[0] = @"cellDataSwitchEnabled";
  v143 = [NSNumber numberWithBool:0];
  *&buf[32] = v143;
  v191.__r_.__value_.__l.__size_ = @"cellularInternetReachable";
  v142 = [NSNumber numberWithBool:BYTE5(v152)];
  *v235 = v142;
  v191.__r_.__value_.__r.__words[2] = @"channelSubscribed";
  v141 = [NSNumber numberWithBool:BYTE12(v152)];
  *&v235[8] = v141;
  v192 = @"displayOn";
  v140 = [NSNumber numberWithBool:0];
  *&v235[16] = v140;
  v193 = @"isAlertReceivedBeforeSWave";
  v139 = [NSNumber numberWithBool:BYTE8(v152)];
  v236 = v139;
  v194 = @"isAuthenticated";
  v138 = [NSNumber numberWithBool:BYTE9(v152)];
  v237 = v138;
  v195 = @"fIsFirstUnlocked";
  v137 = [NSNumber numberWithBool:BYTE10(v152)];
  v238 = v137;
  v196 = @"isGizmoNearby";
  v136 = [NSNumber numberWithBool:BYTE11(v152)];
  v239 = v136;
  v197 = @"isIgneousChannelSubscribed";
  v135 = [NSNumber numberWithBool:BYTE12(v152)];
  v240 = v135;
  v198 = @"isMagnetMode";
  v134 = [NSNumber numberWithBool:BYTE13(v152)];
  v241 = v134;
  v199 = @"isTinkerWatch";
  v133 = [NSNumber numberWithBool:BYTE14(v152)];
  v242 = v133;
  v200 = @"isUnlocked";
  v132 = [NSNumber numberWithBool:HIBYTE(v152)];
  v243 = v132;
  v201 = @"isWowAsserted";
  v131 = [NSNumber numberWithBool:v153];
  v244 = v131;
  v202 = @"localAwarenessEnabled";
  v130 = [NSNumber numberWithBool:v154];
  v245 = v130;
  v203 = @"locationAuthorized";
  v129 = [NSNumber numberWithBool:v155];
  v246 = v129;
  v204 = @"wifiAssociated";
  v128 = [NSNumber numberWithBool:v156];
  v247 = v128;
  v205 = @"wifiInternetReachable";
  v127 = [NSNumber numberWithBool:v156];
  v248 = v127;
  v206 = @"wifiSwitchEnabled";
  v126 = [NSNumber numberWithBool:v157];
  v249 = v126;
  v207 = @"distanceToEpicenter";
  v125 = [NSNumber numberWithDouble:v158];
  v250 = v125;
  v208 = @"magnitude";
  v124 = [NSNumber numberWithDouble:v159];
  v251 = v124;
  v209 = @"mmi";
  v123 = [NSNumber numberWithDouble:v160];
  v252 = v123;
  v210 = @"alertPurpose";
  v122 = [NSNumber numberWithInt:v161];
  v253 = v122;
  v211 = @"apnsInterface";
  v121 = [NSNumber numberWithInt:v162];
  v254 = v121;
  v212 = @"apsdConnectivityStatus";
  v120 = [NSNumber numberWithInt:v163];
  v255 = v120;
  v213 = @"batteryChargeLevel";
  v119 = [NSNumber numberWithInt:v164];
  v256 = v119;
  v214 = @"bleRSSI";
  v118 = [NSNumber numberWithInt:DWORD1(v164)];
  v257 = v118;
  v215 = @"cellularQuality";
  v117 = [NSNumber numberWithInt:DWORD2(v164)];
  v258 = v117;
  v216 = @"firstAlertTransport";
  v116 = [NSNumber numberWithInt:HIDWORD(v164)];
  v259 = v116;
  v217 = @"maCompatibilityVersion";
  v115 = [NSNumber numberWithInt:v165];
  v260 = v115;
  v218 = @"maContentVersion";
  v114 = [NSNumber numberWithInt:v166];
  v261 = v114;
  v219 = @"numBleAlerts";
  v113 = [NSNumber numberWithInt:v167];
  v262 = v113;
  v220 = @"rat";
  v112 = [NSNumber numberWithInt:v168];
  v263 = v112;
  v221 = @"senderID";
  v111 = [NSNumber numberWithInt:v169];
  v264 = v111;
  v222 = @"userMotionStatus";
  v110 = [NSNumber numberWithInt:v170];
  v265 = v110;
  v223 = @"wifiQuality";
  v108 = [NSNumber numberWithInt:v171];
  v266 = v108;
  v224 = @"bleAlertID";
  if (v173 >= 0)
  {
    v94 = &__p;
  }

  else
  {
    v94 = __p;
  }

  v95 = [NSString stringWithUTF8String:v94, v108];
  v267 = v95;
  v225 = @"advertiserToDiscovererLatency";
  v96 = [NSNumber numberWithDouble:v174.f64[0]];
  v268 = v96;
  v226 = @"apnsMinusBleTimestamp";
  v97 = [NSNumber numberWithDouble:v174.f64[1]];
  v269 = v97;
  v227 = @"firstToLastAlertInterval";
  v98 = [NSNumber numberWithDouble:v175.f64[0]];
  v270 = v98;
  v228 = @"latencyRelativeToSWave";
  v99 = [NSNumber numberWithDouble:v175.f64[1]];
  v271 = v99;
  v229 = @"originatorToDeviceLatency";
  v100 = [NSNumber numberWithDouble:v176.f64[0]];
  v272 = v100;
  v230 = @"originToDeviceLatency";
  v101 = [NSNumber numberWithDouble:v176.f64[1]];
  v273 = v101;
  v231 = @"secondsSinceDaemonStart";
  v102 = [NSNumber numberWithDouble:v177.f64[0]];
  v274 = v102;
  v232 = @"serverToDeviceLatency";
  v103 = [NSNumber numberWithDouble:v177.f64[1]];
  v275 = v103;
  v233 = @"environmentId";
  v104 = sub_100042820();
  if (*(v104 + 71) < 0)
  {
    sub_100004CEC(__dst, v104[6], v104[7]);
  }

  else
  {
    *__dst = *(v104 + 3);
    v183 = v104[8];
  }

  if (SHIBYTE(v183) >= 0)
  {
    v105 = __dst;
  }

  else
  {
    v105 = __dst[0];
  }

  v106 = [NSString stringWithUTF8String:v105];
  v276 = v106;
  v151 = [NSDictionary dictionaryWithObjects:buf forKeys:&v188 count:49];

  if (SHIBYTE(v183) < 0)
  {
    operator delete(__dst[0]);
  }

  __dst[0] = _NSConcreteStackBlock;
  __dst[1] = 3221225472;
  v183 = sub_100028F10;
  v184 = &unk_10013A520;
  v150 = v151;
  v185 = v150;
  AnalyticsSendEventLazy();
  v107 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v186 = 68289283;
    *&v186[4] = 0;
    *v187 = 2082;
    *&v187[2] = "";
    *&v187[10] = 2113;
    *&v187[12] = v150;
    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEff,submit, metrics:%{private, location:escape_only}@}", v186, 0x1Cu);
  }

  if (SHIBYTE(v173) < 0)
  {
    operator delete(__p);
  }
}

void sub_100028A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47, _Unwind_Exception *exception_objecta, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  sub_10002477C(&STACK[0x288]);
  sub_10002477C(&STACK[0x410]);
  STACK[0x410] = &STACK[0x230];
  sub_1000246A0(&STACK[0x410]);
  if (a47)
  {
    sub_10002A838(a47);
  }

  if (a67 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100028F18(unint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v6 = a2;
    v7 = a2 - 7;
    v165 = a2 - 21;
    v166 = a2 - 14;
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = v6 - v8;
          v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v8) >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v82 = *(a1 + 56);
                v83 = *(v6 - 7);
                v81 = v6 - 7;
                v84 = v83;
                if (v82 >= *a1)
                {
                  if (v84 >= v82)
                  {
                    return;
                  }

                  sub_10002A1C8((a1 + 56), v81);
                  if (*(a1 + 56) >= *a1)
                  {
                    return;
                  }

                  v80 = a1;
                  v79 = (a1 + 56);
                }

                else
                {
                  if (v84 < v82)
                  {
                    goto LABEL_128;
                  }

                  sub_10002A1C8(a1, (a1 + 56));
                  if (*v81 >= *(a1 + 56))
                  {
                    return;
                  }

                  v79 = v81;
                  v80 = (a1 + 56);
                }

LABEL_129:

                sub_10002A1C8(v80, v79);
                return;
              case 4:

                sub_10002A324(a1, (a1 + 56), (a1 + 112), v7);
                return;
              case 5:
                sub_10002A324(a1, (a1 + 56), (a1 + 112), (a1 + 168));
                v78 = *(v6 - 7);
                v77 = v6 - 7;
                if (v78 >= *(a1 + 168))
                {
                  return;
                }

                sub_10002A1C8((a1 + 168), v77);
                if (*(a1 + 168) >= *(a1 + 112))
                {
                  return;
                }

                sub_10002A1C8((a1 + 112), (a1 + 168));
                if (*(a1 + 112) >= *(a1 + 56))
                {
                  return;
                }

                sub_10002A1C8((a1 + 56), (a1 + 112));
                if (*(a1 + 56) >= *a1)
                {
                  return;
                }

                v79 = (a1 + 56);
                v80 = a1;
                goto LABEL_129;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            v6 = a2;
            if (v10 == 2)
            {
              v81 = a2 - 7;
              if (*(a2 - 7) >= *a1)
              {
                return;
              }

LABEL_128:
              v80 = a1;
              v79 = v81;
              goto LABEL_129;
            }
          }

          if (v9 <= 1343)
          {
            v85 = (a1 + 56);
            v87 = a1 == v6 || v85 == v6;
            if (a4)
            {
              if (!v87)
              {
                v88 = 0;
                v89 = a1;
                do
                {
                  v90 = v85;
                  v91 = *(v89 + 56);
                  if (v91 < *v89)
                  {
                    v92 = *(v89 + 64);
                    *v190 = *(v89 + 72);
                    *&v190[7] = *(v89 + 79);
                    v93 = *(v89 + 87);
                    *(v89 + 64) = 0;
                    *(v89 + 72) = 0;
                    v94 = *(v89 + 88);
                    *&v183[14] = *(v89 + 103);
                    *v183 = *(v89 + 89);
                    v95 = *(v89 + 111);
                    *(v89 + 80) = 0;
                    *(v89 + 88) = 0;
                    *(v89 + 96) = 0;
                    *(v89 + 104) = 0;
                    v96 = *v89;
                    v97 = v88;
                    while (1)
                    {
                      v98 = v97;
                      v99 = a1 + v97;
                      *(a1 + v97 + 56) = v96;
                      if (*(a1 + v97 + 87) < 0)
                      {
                        operator delete(*(v99 + 64));
                      }

                      *(v99 + 64) = *(v99 + 8);
                      *(v99 + 80) = *(v99 + 24);
                      *(v99 + 31) = 0;
                      *(v99 + 8) = 0;
                      if (*(v99 + 111) < 0)
                      {
                        operator delete(*(v99 + 88));
                      }

                      v100 = a1 + v98;
                      *(v99 + 88) = *(a1 + v98 + 32);
                      *(v99 + 104) = *(a1 + v98 + 48);
                      *(v100 + 55) = 0;
                      *(v100 + 32) = 0;
                      if (!v98)
                      {
                        break;
                      }

                      v96 = *(v100 - 56);
                      v97 = v98 - 56;
                      if (v91 >= v96)
                      {
                        v101 = a1 + v98;
                        goto LABEL_154;
                      }
                    }

                    v101 = a1;
LABEL_154:
                    *v101 = v91;
                    if (*(v101 + 31) < 0)
                    {
                      operator delete(*(v100 + 8));
                    }

                    *(v100 + 8) = v92;
                    v102 = a1 + v98;
                    *(v102 + 23) = *&v190[7];
                    *(v102 + 16) = *v190;
                    *(v100 + 31) = v93;
                    if (*(v101 + 55) < 0)
                    {
                      operator delete(*(v100 + 32));
                    }

                    *(v100 + 32) = v94;
                    *(v102 + 47) = *&v183[14];
                    *(v102 + 33) = *v183;
                    *(v100 + 55) = v95;
                  }

                  v85 = v90 + 7;
                  v88 += 56;
                  v89 = v90;
                }

                while (v90 + 7 != a2);
              }
            }

            else if (!v87)
            {
              v152 = (a1 + 111);
              do
              {
                v153 = v85;
                v154 = *(a1 + 56);
                if (v154 < *a1)
                {
                  v155 = *(a1 + 64);
                  *v193 = *(a1 + 72);
                  *&v193[7] = *(a1 + 79);
                  v156 = *(a1 + 87);
                  *(a1 + 64) = 0;
                  *(a1 + 72) = 0;
                  v157 = *(a1 + 88);
                  *&v186[14] = *(a1 + 103);
                  *v186 = *(a1 + 89);
                  v158 = *(a1 + 111);
                  *(a1 + 80) = 0;
                  *(a1 + 88) = 0;
                  *(a1 + 96) = 0;
                  *(a1 + 104) = 0;
                  v159 = *a1;
                  v160 = v152;
                  do
                  {
                    *(v160 - 55) = v159;
                    v161 = (v160 - 47);
                    if (*(v160 - 24) < 0)
                    {
                      operator delete(*v161);
                    }

                    *v161 = *(v160 - 103);
                    *(v160 - 31) = *(v160 - 87);
                    *(v160 - 80) = 0;
                    *(v160 - 103) = 0;
                    v162 = v160 - 23;
                    if (*v160 < 0)
                    {
                      operator delete(*v162);
                    }

                    v163 = *(v160 - 63);
                    *(v160 - 56) = 0;
                    v160 -= 56;
                    *(v162 + 2) = v163;
                    *v162 = *(v160 - 23);
                    *(v160 - 23) = 0;
                    v159 = *(v160 - 111);
                  }

                  while (v154 < v159);
                  *(v160 - 55) = v154;
                  if (*(v160 - 24) < 0)
                  {
                    operator delete(*(v160 - 47));
                    v164 = *v160;
                    *(v160 - 47) = v155;
                    *(v160 - 39) = *v193;
                    *(v160 - 4) = *&v193[7];
                    *(v160 - 24) = v156;
                    if (v164 < 0)
                    {
                      operator delete(*(v160 - 23));
                    }
                  }

                  else
                  {
                    *(v160 - 47) = v155;
                    *(v160 - 4) = *&v193[7];
                    *(v160 - 39) = *v193;
                    *(v160 - 24) = v156;
                  }

                  *(v160 - 23) = v157;
                  *(v160 - 1) = *&v186[14];
                  *(v160 - 22) = *v186;
                  *v160 = v158;
                }

                v85 = v153 + 7;
                v152 += 56;
                a1 = v153;
              }

              while (v153 + 7 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != v6)
            {
              v103 = v11 >> 1;
              v104 = v11 >> 1;
              do
              {
                v105 = v104;
                if (v103 >= v104)
                {
                  v106 = (2 * v104) | 1;
                  v107 = (a1 + 56 * v106);
                  if (2 * v105 + 2 < v10 && *v107 < v107[7])
                  {
                    v107 += 7;
                    v106 = 2 * v105 + 2;
                  }

                  v108 = (a1 + 56 * v105);
                  v109 = *v108;
                  if (*v107 >= *v108)
                  {
                    v168 = *(v108 + 1);
                    *&v191[7] = *(v108 + 23);
                    *v191 = v108[2];
                    v171 = *(v108 + 31);
                    v108[1] = 0.0;
                    v108[2] = 0.0;
                    v108[3] = 0.0;
                    v110 = *(v108 + 32);
                    *v184 = *(v108 + 33);
                    *&v184[14] = *(v108 + 47);
                    v174 = *(v108 + 55);
                    v108[4] = 0.0;
                    v108[5] = 0.0;
                    v108[6] = 0.0;
                    v111 = *v107;
                    do
                    {
                      v112 = v107;
                      *v108 = v111;
                      if (*(v108 + 31) < 0)
                      {
                        operator delete(*(v108 + 1));
                      }

                      v113 = *(v112 + 1);
                      v108[3] = v112[3];
                      *(v108 + 1) = v113;
                      *(v112 + 31) = 0;
                      *(v112 + 8) = 0;
                      if (*(v108 + 55) < 0)
                      {
                        operator delete(*(v108 + 4));
                      }

                      v114 = *(v112 + 2);
                      v108[6] = v112[6];
                      *(v108 + 2) = v114;
                      *(v112 + 55) = 0;
                      *(v112 + 32) = 0;
                      if (v103 < v106)
                      {
                        break;
                      }

                      v115 = 2 * v106;
                      v106 = (2 * v106) | 1;
                      v107 = (a1 + 56 * v106);
                      v116 = v115 + 2;
                      if (v116 < v10 && *v107 < v107[7])
                      {
                        v107 += 7;
                        v106 = v116;
                      }

                      v111 = *v107;
                      v108 = v112;
                    }

                    while (*v107 >= v109);
                    *v112 = v109;
                    if (*(v112 + 31) < 0)
                    {
                      operator delete(*(v112 + 1));
                      v118 = *(v112 + 55);
                      *(v112 + 1) = v168;
                      v112[2] = *v191;
                      *(v112 + 23) = *&v191[7];
                      *(v112 + 31) = v171;
                      v117 = v174;
                      if (v118 < 0)
                      {
                        operator delete(*(v112 + 4));
                      }
                    }

                    else
                    {
                      *(v112 + 1) = v168;
                      v112[2] = *v191;
                      *(v112 + 23) = *&v191[7];
                      *(v112 + 31) = v171;
                      v117 = v174;
                    }

                    *(v112 + 32) = v110;
                    *(v112 + 33) = *v184;
                    *(v112 + 47) = *&v184[14];
                    *(v112 + 55) = v117;
                  }
                }

                v104 = v105 - 1;
              }

              while (v105);
              v119 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 3);
              do
              {
                v120 = 0;
                v121 = *a1;
                v122 = *(a1 + 8);
                *&v179[7] = *(a1 + 23);
                *v179 = *(a1 + 16);
                v123 = *(a1 + 31);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                v172 = *(a1 + 32);
                *v178 = *(a1 + 40);
                *&v178[7] = *(a1 + 47);
                v175 = *(a1 + 55);
                *(a1 + 40) = 0;
                *(a1 + 48) = 0;
                v124 = a1;
                *(a1 + 24) = 0;
                *(a1 + 32) = 0;
                do
                {
                  v125 = v124 + 56 * v120;
                  v126 = (v125 + 56);
                  v127 = 2 * v120;
                  v120 = (2 * v120) | 1;
                  v128 = v127 + 2;
                  if (v128 < v119)
                  {
                    v130 = *(v125 + 112);
                    v129 = (v125 + 112);
                    if (*(v129 - 7) < v130)
                    {
                      v126 = v129;
                      v120 = v128;
                    }
                  }

                  v131 = (v126 + 1);
                  *v124 = *v126;
                  if (*(v124 + 31) < 0)
                  {
                    operator delete(*(v124 + 8));
                  }

                  v132 = *v131;
                  *(v124 + 24) = v126[3];
                  *(v124 + 8) = v132;
                  *(v126 + 31) = 0;
                  *(v126 + 8) = 0;
                  if (*(v124 + 55) < 0)
                  {
                    operator delete(*(v124 + 32));
                  }

                  v133 = *(v126 + 2);
                  *(v124 + 48) = v126[6];
                  *(v124 + 32) = v133;
                  *(v126 + 55) = 0;
                  *(v126 + 32) = 0;
                  v124 = v126;
                }

                while (v120 <= ((v119 - 2) >> 1));
                v134 = a2 - 7;
                if (v126 == (a2 - 7))
                {
                  *v126 = v121;
                  if (*(v126 + 31) < 0)
                  {
                    operator delete(*(v126 + 1));
                    v149 = *(v126 + 55);
                    *(v126 + 1) = v122;
                    v126[2] = *v179;
                    *(v126 + 23) = *&v179[7];
                    *(v126 + 31) = v123;
                    if (v149 < 0)
                    {
                      operator delete(*(v126 + 4));
                    }
                  }

                  else
                  {
                    *(v126 + 1) = v122;
                    v126[2] = *v179;
                    *(v126 + 23) = *&v179[7];
                    *(v126 + 31) = v123;
                  }

                  *(v126 + 4) = v172;
                  v126[5] = *v178;
                  *(v126 + 47) = *&v178[7];
                  *(v126 + 55) = v175;
                }

                else
                {
                  *v126 = *(a2 - 7);
                  if (*(v126 + 31) < 0)
                  {
                    operator delete(*v131);
                  }

                  v135 = *(a2 - 3);
                  *(v126 + 3) = *(a2 - 4);
                  *v131 = v135;
                  *(a2 - 25) = 0;
                  *(a2 - 48) = 0;
                  if (*(v126 + 55) < 0)
                  {
                    operator delete(*(v126 + 4));
                  }

                  v136 = *(a2 - 3);
                  *(v126 + 6) = *(a2 - 1);
                  *(v126 + 2) = v136;
                  *(a2 - 1) = 0;
                  *(a2 - 24) = 0;
                  *(a2 - 7) = v121;
                  if (*(a2 - 25) < 0)
                  {
                    operator delete(*(a2 - 6));
                    v137 = *(a2 - 1);
                    *(a2 - 6) = v122;
                    *(a2 - 5) = *v179;
                    *(a2 - 33) = *&v179[7];
                    *(a2 - 25) = v123;
                    if (v137 < 0)
                    {
                      operator delete(*(a2 - 3));
                    }
                  }

                  else
                  {
                    *(a2 - 6) = v122;
                    *(a2 - 33) = *&v179[7];
                    *(a2 - 5) = *v179;
                    *(a2 - 25) = v123;
                  }

                  *(a2 - 3) = v172;
                  *(a2 - 9) = *&v178[7];
                  *(a2 - 2) = *v178;
                  *(a2 - 1) = v175;
                  v138 = v126 - a1 + 56;
                  if (v138 >= 57)
                  {
                    v139 = (0x6DB6DB6DB6DB6DB7 * (v138 >> 3) - 2) >> 1;
                    v140 = (a1 + 56 * v139);
                    v141 = *v126;
                    if (*v140 < *v126)
                    {
                      v142 = *(v126 + 1);
                      *&v192[7] = *(v126 + 23);
                      *v192 = v126[2];
                      v143 = *(v126 + 31);
                      *v131 = 0;
                      v126[2] = 0.0;
                      v126[3] = 0.0;
                      v177 = *(v126 + 32);
                      *&v185[14] = *(v126 + 47);
                      *v185 = *(v126 + 33);
                      v144 = *(v126 + 55);
                      v126[5] = 0.0;
                      v126[6] = 0.0;
                      v126[4] = 0.0;
                      v145 = *v140;
                      do
                      {
                        v146 = v140;
                        *v126 = v145;
                        if (*(v126 + 31) < 0)
                        {
                          operator delete(*(v126 + 1));
                        }

                        v147 = *(v146 + 1);
                        v126[3] = v146[3];
                        *(v126 + 1) = v147;
                        *(v146 + 31) = 0;
                        *(v146 + 8) = 0;
                        if (*(v126 + 55) < 0)
                        {
                          operator delete(*(v126 + 4));
                        }

                        v148 = *(v146 + 2);
                        v126[6] = v146[6];
                        *(v126 + 2) = v148;
                        *(v146 + 55) = 0;
                        *(v146 + 32) = 0;
                        if (!v139)
                        {
                          break;
                        }

                        v139 = (v139 - 1) >> 1;
                        v140 = (a1 + 56 * v139);
                        v145 = *v140;
                        v126 = v146;
                      }

                      while (*v140 < v141);
                      *v146 = v141;
                      if (*(v146 + 31) < 0)
                      {
                        operator delete(*(v146 + 1));
                        v150 = *(v146 + 55);
                        *(v146 + 1) = v142;
                        v146[2] = *v192;
                        *(v146 + 23) = *&v192[7];
                        *(v146 + 31) = v143;
                        if (v150 < 0)
                        {
                          operator delete(*(v146 + 4));
                        }
                      }

                      else
                      {
                        *(v146 + 1) = v142;
                        v146[2] = *v192;
                        *(v146 + 23) = *&v192[7];
                        *(v146 + 31) = v143;
                      }

                      *(v146 + 32) = v177;
                      *(v146 + 33) = *v185;
                      *(v146 + 47) = *&v185[14];
                      *(v146 + 55) = v144;
                    }
                  }
                }

                a2 = v134;
              }

              while (v119-- > 2);
            }

            return;
          }

          v12 = v10 >> 1;
          v13 = a1 + 56 * (v10 >> 1);
          v14 = *v7;
          if (v9 >= 0x1C01)
          {
            v15 = *v13;
            if (*v13 >= *a1)
            {
              if (v14 >= v15 || (sub_10002A1C8(v13, v7), *v13 >= *a1))
              {
LABEL_26:
                v22 = a1 + 56 * v12;
                v24 = *(v22 - 56);
                v23 = (v22 - 56);
                v25 = v24;
                v26 = *v166;
                if (v24 >= *(a1 + 56))
                {
                  if (v26 >= v25 || (sub_10002A1C8(v23, v166), *v23 >= *(a1 + 56)))
                  {
LABEL_39:
                    v29 = a1 + 56 * v12;
                    v31 = *(v29 + 56);
                    v30 = (v29 + 56);
                    v32 = v31;
                    v33 = *v165;
                    if (v31 >= *(a1 + 112))
                    {
                      v19 = a2;
                      if (v33 >= v32 || (sub_10002A1C8(v30, v165), *v30 >= *(a1 + 112)))
                      {
LABEL_48:
                        v36 = *v13;
                        v37 = *v30;
                        if (*v13 >= *v23)
                        {
                          if (v37 >= v36)
                          {
                            goto LABEL_57;
                          }

                          sub_10002A1C8(v13, v30);
                          if (*v13 >= *v23)
                          {
                            goto LABEL_57;
                          }

                          v38 = v23;
                          v39 = v13;
                        }

                        else
                        {
                          v38 = v23;
                          if (v37 >= v36)
                          {
                            sub_10002A1C8(v23, v13);
                            if (*v30 >= *v13)
                            {
LABEL_57:
                              v40 = *a1;
                              v41 = *(a1 + 8);
                              *(&v180 + 7) = *(a1 + 23);
                              *&v180 = *(a1 + 16);
                              v42 = *(a1 + 31);
                              *(a1 + 8) = 0;
                              *(a1 + 16) = 0;
                              v43 = *(a1 + 32);
                              *&v187 = *(a1 + 40);
                              *(&v187 + 7) = *(a1 + 47);
                              v44 = *(a1 + 55);
                              *(a1 + 24) = 0;
                              *(a1 + 32) = 0;
                              *(a1 + 40) = 0;
                              *(a1 + 48) = 0;
                              *a1 = *v13;
                              v45 = *(v13 + 8);
                              *(a1 + 24) = *(v13 + 24);
                              *(a1 + 8) = v45;
                              *(v13 + 31) = 0;
                              v46 = *(v13 + 32);
                              *(a1 + 48) = *(v13 + 48);
                              *(a1 + 32) = v46;
                              *(v13 + 55) = 0;
                              *(v13 + 32) = 0;
                              *v13 = v40;
                              *(v13 + 8) = v41;
                              *(v13 + 23) = *(&v180 + 7);
                              *(v13 + 16) = v180;
                              *(v13 + 31) = v42;
                              *(v13 + 32) = v43;
                              *(v13 + 47) = *(&v187 + 7);
                              *(v13 + 40) = v187;
                              *(v13 + 55) = v44;
                              goto LABEL_58;
                            }

                            v38 = v13;
                          }

                          v39 = v30;
                        }

                        sub_10002A1C8(v38, v39);
                        goto LABEL_57;
                      }

                      v34 = (a1 + 112);
                      v35 = v30;
                    }

                    else
                    {
                      v19 = a2;
                      v34 = (a1 + 112);
                      if (v33 >= v32)
                      {
                        sub_10002A1C8(v34, v30);
                        if (*v165 >= *v30)
                        {
                          goto LABEL_48;
                        }

                        v34 = v30;
                      }

                      v35 = a2 - 21;
                    }

                    sub_10002A1C8(v34, v35);
                    goto LABEL_48;
                  }

                  v27 = (a1 + 56);
                  v28 = v23;
                }

                else
                {
                  v27 = (a1 + 56);
                  if (v26 >= v25)
                  {
                    sub_10002A1C8(v27, v23);
                    if (*v166 >= *v23)
                    {
                      goto LABEL_39;
                    }

                    v27 = v23;
                  }

                  v28 = a2 - 14;
                }

                sub_10002A1C8(v27, v28);
                goto LABEL_39;
              }

              v16 = a1;
              v17 = v13;
            }

            else
            {
              v16 = a1;
              if (v14 >= v15)
              {
                sub_10002A1C8(a1, v13);
                if (*v7 >= *v13)
                {
                  goto LABEL_26;
                }

                v16 = v13;
              }

              v17 = v7;
            }

            sub_10002A1C8(v16, v17);
            goto LABEL_26;
          }

          v18 = *a1;
          if (*a1 < *v13)
          {
            v19 = a2;
            v20 = v13;
            if (v14 >= v18)
            {
              sub_10002A1C8(v13, a1);
              if (*v7 >= *a1)
              {
                goto LABEL_58;
              }

              v20 = a1;
            }

            v21 = v7;
            goto LABEL_34;
          }

          v19 = a2;
          if (v14 < v18)
          {
            sub_10002A1C8(a1, v7);
            if (*a1 < *v13)
            {
              v20 = v13;
              v21 = a1;
LABEL_34:
              sub_10002A1C8(v20, v21);
            }
          }

LABEL_58:
          v173 = --a3;
          if (a4)
          {
            break;
          }

          v47 = *a1;
          if (*(a1 - 56) < *a1)
          {
            goto LABEL_61;
          }

          v65 = (a1 + 8);
          v64 = *(a1 + 8);
          *&v189[7] = *(a1 + 23);
          *v189 = *(a1 + 16);
          v66 = *(a1 + 31);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          v67 = (a1 + 32);
          v170 = *(a1 + 32);
          *&v182[14] = *(a1 + 47);
          *v182 = *(a1 + 33);
          v68 = *(a1 + 55);
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          *(a1 + 32) = 0;
          if (v47 >= *v7)
          {
            v70 = a1 + 56;
            do
            {
              v8 = v70;
              if (v70 >= a2)
              {
                break;
              }

              v70 += 56;
            }

            while (v47 >= *v8);
          }

          else
          {
            v8 = a1;
            do
            {
              v69 = *(v8 + 56);
              v8 += 56;
            }

            while (v47 >= v69);
          }

          v71 = a2;
          if (v8 < a2)
          {
            v71 = a2;
            do
            {
              v72 = *(v71 - 7);
              v71 -= 7;
            }

            while (v47 < v72);
          }

          while (v8 < v71)
          {
            sub_10002A1C8(v8, v71);
            do
            {
              v73 = *(v8 + 56);
              v8 += 56;
            }

            while (v47 >= v73);
            do
            {
              v74 = *(v71 - 7);
              v71 -= 7;
            }

            while (v47 < v74);
          }

          v7 = a2 - 7;
          if (v8 - 56 != a1)
          {
            *a1 = *(v8 - 56);
            if (*(a1 + 31) < 0)
            {
              operator delete(*v65);
            }

            v75 = *(v8 - 48);
            *(a1 + 24) = *(v8 - 32);
            *v65 = v75;
            *(v8 - 25) = 0;
            *(v8 - 48) = 0;
            if (*(a1 + 55) < 0)
            {
              operator delete(*v67);
            }

            v76 = *(v8 - 24);
            *(a1 + 48) = *(v8 - 8);
            *v67 = v76;
            *(v8 - 1) = 0;
            *(v8 - 24) = 0;
          }

          *(v8 - 56) = v47;
          if (*(v8 - 25) < 0)
          {
            operator delete(*(v8 - 48));
          }

          *(v8 - 48) = v64;
          *(v8 - 33) = *&v189[7];
          *(v8 - 40) = *v189;
          *(v8 - 25) = v66;
          v6 = a2;
          if (*(v8 - 1) < 0)
          {
            operator delete(*(v8 - 24));
          }

          a4 = 0;
          *(v8 - 24) = v170;
          *(v8 - 9) = *&v182[14];
          *(v8 - 23) = *v182;
          *(v8 - 1) = v68;
        }

        v47 = *a1;
LABEL_61:
        v48 = 0;
        v49 = (a1 + 8);
        v50 = *(a1 + 8);
        *&v188[7] = *(a1 + 23);
        *v188 = *(a1 + 16);
        v51 = *(a1 + 31);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v52 = (a1 + 32);
        v169 = *(a1 + 32);
        *&v181[14] = *(a1 + 47);
        *v181 = *(a1 + 33);
        v53 = *(a1 + 55);
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 32) = 0;
        do
        {
          v54 = *(a1 + v48 + 56);
          v48 += 56;
        }

        while (v54 < v47);
        v55 = a1 + v48;
        if (v48 == 56)
        {
          v19 = a2;
          do
          {
            if (v55 >= v19)
            {
              break;
            }

            v57 = *(v19 - 7);
            v19 -= 7;
          }

          while (v57 >= v47);
        }

        else
        {
          do
          {
            v56 = *(v19 - 7);
            v19 -= 7;
          }

          while (v56 >= v47);
        }

        if (v55 >= v19)
        {
          v8 = a1 + v48;
        }

        else
        {
          v58 = v19;
          v8 = a1 + v48;
          do
          {
            sub_10002A1C8(v8, v58);
            do
            {
              v59 = *(v8 + 56);
              v8 += 56;
            }

            while (v59 < v47);
            do
            {
              v60 = *(v58 - 7);
              v58 -= 7;
            }

            while (v60 >= v47);
          }

          while (v8 < v58);
        }

        if (v8 - 56 != a1)
        {
          *a1 = *(v8 - 56);
          if (*(a1 + 31) < 0)
          {
            operator delete(*v49);
          }

          v61 = *(v8 - 48);
          *(a1 + 24) = *(v8 - 32);
          *v49 = v61;
          *(v8 - 25) = 0;
          *(v8 - 48) = 0;
          if (*(a1 + 55) < 0)
          {
            operator delete(*v52);
          }

          v62 = *(v8 - 24);
          *(a1 + 48) = *(v8 - 8);
          *v52 = v62;
          *(v8 - 1) = 0;
          *(v8 - 24) = 0;
        }

        *(v8 - 56) = v47;
        if (*(v8 - 25) < 0)
        {
          operator delete(*(v8 - 48));
        }

        *(v8 - 48) = v50;
        *(v8 - 33) = *&v188[7];
        *(v8 - 40) = *v188;
        *(v8 - 25) = v51;
        a3 = v173;
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 24));
        }

        *(v8 - 24) = v169;
        *(v8 - 9) = *&v181[14];
        *(v8 - 23) = *v181;
        *(v8 - 1) = v53;
        v6 = a2;
        v7 = a2 - 7;
        if (v55 >= v19)
        {
          break;
        }

LABEL_90:
        sub_100028F18(a1, v8 - 56, v173, a4 & 1);
        a4 = 0;
      }

      v63 = sub_10002A43C(a1, (v8 - 56));
      if (sub_10002A43C(v8, a2))
      {
        break;
      }

      if (!v63)
      {
        goto LABEL_90;
      }
    }

    a2 = (v8 - 56);
    if (!v63)
    {
      continue;
    }

    break;
  }
}

void sub_10002A1C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *v13 = a1[2];
  *&v13[7] = *(a1 + 23);
  v5 = *(a1 + 31);
  a1[2] = 0;
  a1[3] = 0;
  v7 = a1 + 4;
  v6 = a1[4];
  a1[1] = 0;
  *v12 = a1[5];
  *&v12[7] = *(a1 + 47);
  v8 = *(a1 + 55);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  *a1 = *a2;
  v9 = *(a2 + 1);
  a1[3] = a2[3];
  *(a1 + 1) = v9;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*v7);
  }

  v10 = *(a2 + 2);
  v7[2] = a2[6];
  *v7 = v10;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  *a2 = v3;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
    v11 = *(a2 + 55);
    a2[1] = v4;
    a2[2] = *v13;
    *(a2 + 23) = *&v13[7];
    *(a2 + 31) = v5;
    if (v11 < 0)
    {
      operator delete(a2[4]);
    }
  }

  else
  {
    a2[1] = v4;
    a2[2] = *v13;
    *(a2 + 23) = *&v13[7];
    *(a2 + 31) = v5;
  }

  a2[4] = v6;
  a2[5] = *v12;
  *(a2 + 47) = *&v12[7];
  *(a2 + 55) = v8;
}

void sub_10002A324(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      sub_10002A1C8(a2, a3);
      if (*a2 < *v7)
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
      sub_10002A1C8(a1, v10);
      goto LABEL_10;
    }

    sub_10002A1C8(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    sub_10002A1C8(a3, a4);
    if (*a3 < *a2)
    {
      sub_10002A1C8(a2, a3);
      if (*a2 < *v7)
      {

        sub_10002A1C8(v7, a2);
      }
    }
  }
}

BOOL sub_10002A43C(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = *(a1 + 7);
        v5 = a2 - 7;
        v10 = *(a2 - 7);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          sub_10002A1C8(a1 + 7, v5);
          if (*(v3 + 7) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = v3 + 7;
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          sub_10002A1C8(a1, a1 + 7);
          if (*v5 >= *(v3 + 7))
          {
            return 1;
          }

          a1 = v3 + 7;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        sub_10002A1C8(a1, v8);
        return 1;
      case 4:
        sub_10002A324(a1, a1 + 7, a1 + 14, a2 - 7);
        return 1;
      case 5:
        sub_10002A324(a1, a1 + 7, a1 + 14, a1 + 21);
        v7 = *(a2 - 7);
        v6 = a2 - 7;
        if (v7 >= *(v3 + 21))
        {
          return 1;
        }

        sub_10002A1C8(v3 + 21, v6);
        if (*(v3 + 21) >= *(v3 + 14))
        {
          return 1;
        }

        sub_10002A1C8(v3 + 14, v3 + 21);
        if (*(v3 + 14) >= *(v3 + 7))
        {
          return 1;
        }

        sub_10002A1C8(v3 + 7, v3 + 14);
        if (*(v3 + 7) >= *v3)
        {
          return 1;
        }

        v8 = v3 + 7;
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 7;
      if (*(a2 - 7) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v11 = (a1 + 14);
  v12 = *(a1 + 14);
  v13 = *(a1 + 7);
  if (v13 < *a1)
  {
    if (v12 >= v13)
    {
      sub_10002A1C8(a1, a1 + 7);
      if (*(v3 + 14) >= *(v3 + 7))
      {
        goto LABEL_31;
      }

      a1 = v3 + 7;
    }

    v14 = v3 + 14;
    goto LABEL_30;
  }

  if (v12 < v13)
  {
    sub_10002A1C8(a1 + 7, a1 + 14);
    if (*(v3 + 7) < *v3)
    {
      a1 = v3;
      v14 = v3 + 7;
LABEL_30:
      sub_10002A1C8(a1, v14);
    }
  }

LABEL_31:
  v15 = v3 + 21;
  if (v3 + 21 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *v15;
    if (*v15 < *v11)
    {
      v19 = v15[1];
      *v30 = v15[2];
      *&v30[7] = *(v15 + 23);
      v20 = *(v15 + 31);
      v15[1] = 0;
      v15[2] = 0;
      *v29 = *(v15 + 33);
      *&v29[14] = *(v15 + 47);
      v27 = *(v15 + 55);
      v28 = *(v15 + 32);
      v15[3] = 0;
      v15[4] = 0;
      v15[5] = 0;
      v15[6] = 0;
      v21 = *v11;
      v22 = v16;
      while (1)
      {
        v23 = v3 + v22;
        *(v3 + v22 + 168) = v21;
        if (*(v3 + v22 + 199) < 0)
        {
          operator delete(*(v23 + 22));
        }

        *(v23 + 11) = *(v23 + 120);
        *(v23 + 24) = *(v23 + 17);
        v23[143] = 0;
        v23[120] = 0;
        if (v23[223] < 0)
        {
          operator delete(*(v23 + 25));
        }

        v24 = v3 + v22;
        *(v23 + 200) = *(v3 + v22 + 144);
        *(v23 + 27) = *(v3 + v22 + 160);
        v24[167] = 0;
        v24[144] = 0;
        if (v22 == -112)
        {
          break;
        }

        v21 = *(v24 + 7);
        v22 -= 56;
        if (v18 >= v21)
        {
          v25 = v3 + v22 + 168;
          goto LABEL_43;
        }
      }

      v25 = v3;
LABEL_43:
      *v25 = v18;
      if (*(v25 + 31) < 0)
      {
        operator delete(*(v24 + 15));
      }

      *(v24 + 15) = v19;
      *(v25 + 16) = *v30;
      *(v25 + 23) = *&v30[7];
      *(v25 + 31) = v20;
      if (*(v25 + 55) < 0)
      {
        operator delete(*(v24 + 18));
      }

      v24[144] = v28;
      *(v25 + 33) = *v29;
      *(v25 + 47) = *&v29[14];
      *(v25 + 55) = v27;
      if (++v17 == 8)
      {
        return v15 + 7 == a2;
      }
    }

    v11 = v15;
    v16 += 56;
    v15 += 7;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

void sub_10002A838(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

int *sub_10002A8A4(int *a1, int a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  a1[2] = a2;
  v4 = (a1 + 4);
  if (*(a3 + 23) < 0)
  {
    sub_100004CEC(a1 + 16, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 4) = *(a3 + 2);
    *v4 = v5;
  }

  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[2];
    v8 = v4;
    if (*(a1 + 39) < 0)
    {
      v8 = *v4;
    }

    v9 = *(a1 + 4);
    v10 = *a1;
    v25 = 68290050;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 1026;
    *v30 = v7;
    *&v30[4] = 2082;
    *&v30[6] = v8;
    v31 = 1026;
    v32 = v9;
    v33 = 1026;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAPA,SAPowerAssertion, fTimeoutSec:%{public}d, fAssertionIdentifier:%{public, location:escape_only}s, fHasAssertion:%{public}d, fAssertionId:%{public}d}", &v25, 0x2Eu);
    v6 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAPA,acquire}", &v25, 0x12u);
  }

  if (*(a1 + 39) < 0)
  {
    if (!*(a1 + 3))
    {
      goto LABEL_21;
    }

    v11 = *v4;
  }

  else
  {
    v11 = v4;
    if (!*(a1 + 39))
    {
LABEL_21:
      v19 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v25 = 68289026;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAPA,invalid assertion name}", &v25, 0x12u);
      }

      return a1;
    }
  }

  v12 = CFStringCreateWithCString(kCFAllocatorDefault, v11, 0x8000100u);
  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = v13;
  if (v13)
  {
    [v13 setObject:@"PreventUserIdleSystemSleep" forKeyedSubscript:@"AssertType"];
    [v14 setObject:v12 forKeyedSubscript:@"AssertName"];
    [v14 setObject:&off_100146600 forKeyedSubscript:@"Category"];
    v15 = [NSNumber numberWithUnsignedInt:a1[2]];
    [v14 setObject:v15 forKeyedSubscript:@"TimeoutSeconds"];

    [v14 setObject:@"TimeoutActionRelease" forKeyedSubscript:@"TimeoutAction"];
    v16 = IOPMAssertionCreateWithProperties(v14, a1);
    if (v12)
    {
      CFRelease(v12);
    }

    *(a1 + 4) = v16 == 0;
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        CStringPtr = CFStringGetCStringPtr(v12, 0);
      }

      else
      {
        CStringPtr = "nil";
      }

      v21 = *(a1 + 4);
      v22 = a1[2];
      v23 = *a1;
      if (*(a1 + 39) < 0)
      {
        v4 = *v4;
      }

      v25 = 68290562;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      *v30 = CStringPtr;
      *&v30[8] = 1026;
      *&v30[10] = v16;
      v31 = 1026;
      v32 = v21;
      v33 = 1026;
      v34 = v22;
      v35 = 1026;
      v36 = v23;
      v37 = 2082;
      v38 = v4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAPA,, assertionName:%{public, location:escape_only}s, result:%{public}d, fHasAssertion:%{public}d, fTimeoutSec:%{public}d, fAssertionId:%{public}d, fAssertionIdentifier:%{public, location:escape_only}s}", &v25, 0x3Eu);
    }
  }

  else
  {
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v25 = 68289026;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAPA,invalid properties}", &v25, 0x12u);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  return a1;
}

void sub_10002ACEC(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10002AD34(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAPA,~SAPowerAssertion}", v4, 0x12u);
  }

  if (*(a1 + 4) == 1)
  {
    sub_10002AE20(a1);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10002AE14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

uint64_t sub_10002AE20(uint64_t a1)
{
  v2 = IOPMAssertionRelease(*a1);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a1;
    v7 = 68289538;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = v2;
    v13 = 1026;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAPA,reset, result:%{public}d, fAssertionId:%{public}d}", &v7, 0x1Eu);
  }

  if (v2)
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 1026;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAPA,, result:%{public}d}", &v7, 0x18u);
    }
  }

  *a1 = 0;
  *(a1 + 4) = 0;
  return 1;
}

uint64_t sub_10002AF7C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_1000247C0(a1);
  sub_1000247C0(a1 + 200);
  sub_1000247C0(a1 + 400);
  v4 = v3;
  *(a1 + 600) = v4;
  v5 = SALogObjectGeneral;
  v6 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  v7 = v4;
  if (v6)
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,init}", &buf, 0x12u);
    v7 = *(a1 + 600);
  }

  sub_10002DBB0(&buf, v7);
  sub_10002B6A4(a1, &buf);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  sub_100024884(v30);
  sub_100024884(v29);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  v18 = v26;
  sub_1000246A0(&v18);

  sub_10002DBB0(&buf, *(a1 + 600));
  sub_10002B6A4(a1 + 400, &buf);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  sub_100024884(v30);
  sub_100024884(v29);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  v18 = v26;
  sub_1000246A0(&v18);

  sub_10002DBB0(&buf, *(a1 + 600));
  sub_10002B6A4(a1 + 200, &buf);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  sub_100024884(v30);
  sub_100024884(v29);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  v18 = v26;
  sub_1000246A0(&v18);

  sub_1000060C4(&buf, "igneous_received");
  std::string::operator=((a1 + 168), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 9) = 1;
  *(a1 + 144) = 2000;
  sub_10002B7E4(&buf, "igneous_received.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  v24[0] = off_10013A560;
  v24[3] = v24;
  v23[0] = off_10013A560;
  v23[3] = v23;
  v9 = sub_100023C34(a1, p_buf, 0x1388uLL, v24, v23);
  sub_100024884(v23);
  sub_100024884(v24);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v9)
    {
      goto LABEL_26;
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_26:
  sub_100024DD8(a1);
  *(a1 + 8) = 1;
  sub_1000060C4(&buf, "igneous_received_followup");
  std::string::operator=((a1 + 368), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 209) = 1;
  *(a1 + 344) = 2000;
  sub_10002B7E4(&buf, "igneous_received_followup.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &buf;
  }

  else
  {
    v11 = buf.__r_.__value_.__r.__words[0];
  }

  v22[0] = off_10013A560;
  v22[3] = v22;
  v21[0] = off_10013A560;
  v21[3] = v21;
  v12 = sub_100023C34(a1 + 200, v11, 0x1388uLL, v22, v21);
  sub_100024884(v21);
  sub_100024884(v22);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v12)
    {
      goto LABEL_37;
    }
  }

  else if (v12)
  {
    goto LABEL_37;
  }

  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_37:
  sub_100024DD8(a1 + 200);
  *(a1 + 208) = 1;
  sub_1000060C4(&buf, "ble_received");
  std::string::operator=((a1 + 568), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 409) = 1;
  *(a1 + 544) = 2000;
  sub_10002B7E4(&buf, "igneous_ble_received.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &buf;
  }

  else
  {
    v14 = buf.__r_.__value_.__r.__words[0];
  }

  v20[0] = off_10013A560;
  v20[3] = v20;
  v19[0] = off_10013A560;
  v19[3] = v19;
  v15 = sub_100023C34(a1 + 400, v14, 0x1388uLL, v20, v19);
  sub_100024884(v19);
  sub_100024884(v20);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v15)
    {
      goto LABEL_48;
    }
  }

  else if (v15)
  {
    goto LABEL_48;
  }

  v16 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_48:
  sub_100024DD8(a1 + 400);
  *(a1 + 408) = 1;

  return a1;
}

void sub_10002B5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_10002462C(v40 + 400);
  sub_10002462C(v40 + 200);
  sub_10002462C(v40);

  _Unwind_Resume(a1);
}

uint64_t sub_10002B6A4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = *(a2 + 1);
  v7 = (a1 + 32);
  v8 = *(a1 + 32);
  *(a1 + 24) = a2[3];
  *(a1 + 8) = v6;
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = v8;
    if (v9 != v8)
    {
      do
      {
        v9 -= 56;
        sub_100024724(v9);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 40) = v8;
    operator delete(v10);
    *v7 = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = a2[6];
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v11 = *(a2 + 7);
  *(a1 + 72) = a2[9];
  *(a1 + 56) = v11;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  sub_10002D678(a1 + 80, (a2 + 10));
  sub_10002D678(a1 + 112, (a2 + 14));
  v12 = *(a2 + 9);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v12;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v13 = *(a2 + 21);
  *(a1 + 184) = a2[23];
  *(a1 + 168) = v13;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = *(a2 + 96);
  return a1;
}

void sub_10002B7E4(std::string *a1, char *a2)
{
  sub_1000060C4(&v9, "/var/mobile/Library/com.apple.safetyalerts/");
  sub_1000060C4(__p, a2);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_10002B890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002B8C4(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 68289026;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,release}", &v4, 0x12u);
  }

  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  sub_100024884(a1 + 512);
  sub_100024884(a1 + 480);
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  v4 = a1 + 432;
  sub_1000246A0(&v4);

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  sub_100024884(a1 + 312);
  sub_100024884(a1 + 280);
  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  v4 = a1 + 232;
  sub_1000246A0(&v4);

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_100024884(a1 + 112);
  sub_100024884(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v4 = a1 + 32;
  sub_1000246A0(&v4);

  return a1;
}

uint64_t sub_10002BA64(uint64_t a1, double *a2)
{
  v16[0] = off_10013A5E0;
  v16[1] = a1;
  v16[3] = v16;
  v15[0] = off_10013A660;
  v15[1] = a1;
  v15[3] = v15;
  sub_1000104CC(v17, v16, v15);
  sub_10000F274(v15);
  sub_10000F274(v16);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v6 = *v6;
    }

    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2081;
    v12 = v5;
    v13 = 2081;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,update, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", v8, 0x26u);
  }

  sub_100025574(a1, a2);
  if ((*(a1 + 79) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 79))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*(a1 + 64))
  {
LABEL_11:
    sub_1000257EC(a1);
  }

LABEL_12:
  if ((*(a1 + 9) & 1) == 0 && (*(a1 + 193) & 1) == 0)
  {
    sub_100026A24(a1);
  }

  return sub_100011208(v17);
}

void sub_10002BC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_10000F274(va);
  sub_10000F274(va1);
  _Unwind_Resume(a1);
}

void sub_10002BC3C(uint64_t a1)
{
  memset(v10, 0, 48);
  __asm { FMOV            V1.2D, #-1.0 }

  v10[3] = _Q1;
  v11 = _Q1;
  v12 = -1.0;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  v7 = sub_10008E020();
  sub_10008F5B0(v7, v10);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10002E71C(a1 + 400, 1, Current - *&v11);
  sub_10002E71C(a1, 1, Current - *&v11);
  sub_10002E71C(a1 + 200, 1, Current - v12);
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v18 = 2082;
    v19 = "";
    v20 = 2050;
    v21 = Current;
    v22 = 2050;
    v23 = v11;
    v24 = 2050;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,cleanUpOldAlerts, curTime:%{public}0.3f, ThresholdTimeBetweenAlerts:%{public}0.3f, FollowUpMessageValidTime:%{public}0.3f}", buf, 0x30u);
  }

  sub_10002D804(v15);
  sub_10002DA28(v13);
  *buf = &v10[1] + 8;
  sub_100005208(buf);
  *buf = v10;
  sub_100005208(buf);
}

void **sub_10002BE00(void **a1)
{
  sub_10002D804((a1 + 16));
  sub_10002DA28((a1 + 11));
  v3 = a1 + 3;
  sub_100005208(&v3);
  v3 = a1;
  sub_100005208(&v3);
  return a1;
}

uint64_t sub_10002BE58(uint64_t a1, uint64_t *a2, double a3, double a4)
{
  v30[0] = off_10013A6E0;
  v30[1] = a1;
  v30[3] = v30;
  v29[0] = off_10013A760;
  v29[1] = a1;
  v29[3] = v29;
  sub_1000104CC(v31, v30, v29);
  sub_10000F274(v29);
  sub_10000F274(v30);
  v8 = *a2;
  for (i = a2[1]; i != v8; sub_100024724(i))
  {
    i -= 56;
  }

  a2[1] = v8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  if (v12 == v11 || (*(a1 + 8) & 1) == 0)
  {
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v21 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v21 = *v21;
      }

      v23 = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2081;
      v28[0] = v21;
      v17 = "{msg%{public}.0s:#saEventHistory,#warning,findAllEventsStrictlyWithin,skipping,notReady, history:%{private, location:escape_only}s}";
      v18 = v20;
      v19 = 28;
      goto LABEL_21;
    }
  }

  else
  {
    do
    {
      if (*v12 >= a3 && *v12 <= a4)
      {
        if (v8 >= a2[2])
        {
          v8 = sub_10002E570(a2, v12);
        }

        else
        {
          sub_10002DDEC(a2, v8, v12);
          v8 += 56;
          a2[1] = v8;
        }

        a2[1] = v8;
      }

      v12 += 7;
    }

    while (v12 != v11);
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v15 = -1227133513 * ((v8 - *a2) >> 3);
      v16 = -1227133513 * ((*(a1 + 40) - *(a1 + 32)) >> 3);
      v23 = 68289539;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 1025;
      LODWORD(v28[0]) = v15;
      WORD2(v28[0]) = 1025;
      *(v28 + 6) = v16;
      v17 = "{msg%{public}.0s:#saEventHistory,findAllEventsStrictlyWithin, responseSize:%{private}d, fEventHistorySize:%{private}d}";
      v18 = v14;
      v19 = 30;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v23, v19);
    }
  }

  return sub_100011208(v31);
}

void sub_10002C0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_10000F274(va);
  sub_10000F274(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10002C12C(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,onAlertReceived}", buf, 0x12u);
    v4 = SALogObjectGeneral;
  }

  v5 = *(a2 + 180);
  v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5 == 4)
  {
    if (v6)
    {
      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,onAlertReceived,followUp alert}", buf, 0x12u);
      v4 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,onFollowUpReceived}", buf, 0x12u);
    }

    v7 = *(a2 + 31);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 16);
    }

    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (*(a2 + 31) < 0)
      {
        sub_100004CEC(__dst, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        *__dst = *(a2 + 8);
        *&__dst[16] = *(a2 + 24);
      }

      if ((__dst[23] & 0x80000000) != 0)
      {
        sub_100004CEC(v41, *__dst, *&__dst[8]);
      }

      else
      {
        *v41 = *__dst;
        v42 = *&__dst[16];
      }

      sub_1000060C4(v39, "{}");
      sub_100026200(buf, v41, v39, Current);
      sub_10002BA64(a1 + 200, buf);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(*&buf[32]);
      }

      if (buf[31] < 0)
      {
        operator delete(*&buf[8]);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
      }

      v24 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      v25 = __dst;
      if (__dst[23] < 0)
      {
        v25 = *__dst;
      }

      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v25;
      *&buf[28] = 2049;
      *&buf[30] = Current;
      v26 = "{msg%{public}.0s:#igEventTracker,onFollowUpReceived,done, uidHash:%{private, location:escape_only}s, timestamp:%{private}0.1f}";
LABEL_55:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x26u);
LABEL_56:
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      return 1;
    }

    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v16 = "{msg%{public}.0s:#igEventTracker,onFollowUpReceived,not updating,empty uid}";
LABEL_64:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x12u);
      return 1;
    }

    return 1;
  }

  if (v6)
  {
    v9 = *(a2 + 384);
    *buf = 68289283;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1025;
    *&buf[20] = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,onAlertReceived, transport:%{private}d}", buf, 0x18u);
  }

  v10 = *(a2 + 384);
  if (v10 == 2)
  {
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,onBleReceived}", buf, 0x12u);
    }

    v18 = sub_10008DE00();
    if (sub_10008DE80(v18))
    {
      v19 = *(a2 + 175);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a2 + 160);
      }

      if (v19)
      {
        v20 = CFAbsoluteTimeGetCurrent();
        if (*(a2 + 175) < 0)
        {
          sub_100004CEC(__dst, *(a2 + 152), *(a2 + 160));
        }

        else
        {
          *__dst = *(a2 + 152);
          *&__dst[16] = *(a2 + 168);
        }

        if ((__dst[23] & 0x80000000) != 0)
        {
          sub_100004CEC(v41, *__dst, *&__dst[8]);
        }

        else
        {
          *v41 = *__dst;
          v42 = *&__dst[16];
        }

        sub_1000060C4(v39, "{}");
        sub_100026200(buf, v41, v39, v20);
        sub_10002BA64(a1 + 400, buf);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(*&buf[32]);
        }

        if (buf[31] < 0)
        {
          operator delete(*&buf[8]);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39[0]);
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41[0]);
        }

        v24 = SALogObjectGeneral;
        if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v27 = __dst;
        if (__dst[23] < 0)
        {
          v27 = *__dst;
        }

        *buf = 68289539;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v27;
        *&buf[28] = 2049;
        *&buf[30] = v20;
        v26 = "{msg%{public}.0s:#igEventTracker,onBleReceived,done, bleUID:%{private, location:escape_only}s, timestamp:%{private}0.1f}";
        goto LABEL_55;
      }

      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v16 = "{msg%{public}.0s:#igEventTracker,onBleReceived,not updating,empty uid}";
        goto LABEL_64;
      }
    }

    else
    {
      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v16 = "{msg%{public}.0s:#igEventTracker,onBleReceived,not updating,relay not supported}";
        goto LABEL_64;
      }
    }

    return 1;
  }

  if (v10 == 1)
  {
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,onAPNSReceived}", buf, 0x12u);
    }

    v12 = *(a2 + 31);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 16);
    }

    if (!v12)
    {
      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v16 = "{msg%{public}.0s:#igEventTracker,onAPNSReceived,uid empty}";
        goto LABEL_64;
      }

      return 1;
    }

    buf[0] = 0;
    memset(&buf[8], 0, 32);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    memset(v58, 0, sizeof(v58));
    v59 = 5;
    v65 = 0u;
    v66 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v67 = 0;
    v68 = -1;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v76 = 0;
    v74 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v77 = 0;
    v78 = 0;
    v13 = sub_10008DE00();
    if (sub_10008DE80(v13) && *(a2 + 176) == 1)
    {
      if (*(a2 + 175) < 0)
      {
        if (*(a2 + 160))
        {
          v48 = @"BleUIDKeyString";
          v14 = *(a2 + 152);
LABEL_83:
          v28 = [NSString stringWithUTF8String:v14];
          v49 = v28;
          v29 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];

          v30 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 31) >= 0)
            {
              v31 = a2 + 8;
            }

            else
            {
              v31 = *(a2 + 8);
            }

            if (*(a2 + 175) >= 0)
            {
              v32 = a2 + 152;
            }

            else
            {
              v32 = *(a2 + 152);
            }

            *__dst = 68289795;
            *&__dst[8] = 2082;
            *&__dst[10] = "";
            *&__dst[18] = 2081;
            *&__dst[20] = v31;
            v44 = 2081;
            *v45 = v32;
            *&v45[8] = 2113;
            v46 = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,onAPNSReceived, uid:%{private, location:escape_only}s, bleAlertUID:%{private, location:escape_only}s, bleUID:%{private, location:escape_only}@}", __dst, 0x30u);
          }

          goto LABEL_92;
        }
      }

      else if (*(a2 + 175))
      {
        v48 = @"BleUIDKeyString";
        v14 = a2 + 152;
        goto LABEL_83;
      }
    }

    v29 = 0;
LABEL_92:
    v33 = CFAbsoluteTimeGetCurrent();
    SACommonUtils::convertDictionaryToString(v29, v41);
    if (*(a2 + 31) < 0)
    {
      sub_100004CEC(v39, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      *v39 = *(a2 + 8);
      v40 = *(a2 + 24);
    }

    if (SHIBYTE(v40) < 0)
    {
      sub_100004CEC(v37, v39[0], v39[1]);
    }

    else
    {
      *v37 = *v39;
      v38 = v40;
    }

    sub_100026200(__dst, v37, v41, v33);
    sub_10002BA64(a1, __dst);
    if (v47 < 0)
    {
      operator delete(*&v45[2]);
    }

    if ((v45[1] & 0x80000000) != 0)
    {
      operator delete(*&__dst[8]);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37[0]);
    }

    v34 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v39;
      if (v40 < 0)
      {
        v35 = v39[0];
      }

      v36 = v41;
      if (v42 < 0)
      {
        v36 = v41[0];
      }

      *__dst = 68289795;
      *&__dst[4] = 0;
      *&__dst[8] = 2082;
      *&__dst[10] = "";
      *&__dst[18] = 2081;
      *&__dst[20] = v35;
      v44 = 2049;
      *v45 = v33;
      *&v45[8] = 2081;
      v46 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,onAPNSReceived,done, uidHash:%{private, location:escape_only}s, timestamp:%{private}0.1f, metaValueStr:%{private, location:escape_only}s}", __dst, 0x30u);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41[0]);
    }

    sub_10002D754(buf);
    return 1;
  }

  v21 = SALogObjectGeneral;
  v22 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v22)
  {
    *buf = 68289026;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,onAlertReceived,invalid transport}", buf, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_10002CCEC(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,isDuplicateAlert}", buf, 0x12u);
  }

  if (*(a2 + 180) == 4)
  {
    memset(buf, 0, sizeof(buf));
    __asm { FMOV            V1.2D, #-1.0 }

    v61 = 0uLL;
    v62 = _Q1;
    v63 = _Q1;
    v64 = 0xBFF0000000000000;
    v65 = 0uLL;
    v66 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v67 = 1065353216;
    v70 = 1065353216;
    v10 = sub_10008E020();
    sub_10008F5B0(v10, buf);
    sub_10002BC3C(a1);
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a2 + 8;
      if (*(a2 + 31) < 0)
      {
        v12 = *(a2 + 8);
      }

      *v57 = 68289283;
      *&v57[4] = 0;
      *&v57[8] = 2082;
      *&v57[10] = "";
      *&v57[18] = 2081;
      *&v57[20] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,isFollowUpReceived, uid:%{private, location:escape_only}s}", v57, 0x1Cu);
    }

    v56 = 0;
    memset(&v55, 0, sizeof(v55));
    v13 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v20 = *(a2 + 16);
      if (!v20)
      {
        goto LABEL_33;
      }

      sub_100004CEC(__p, *v13, v20);
    }

    else
    {
      if (!*(a2 + 31))
      {
        goto LABEL_33;
      }

      *__p = *v13;
      v54 = *(a2 + 24);
    }

    v21 = sub_100023EF4(a1, __p, &v56, &v55);
    v22 = v21;
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
      if (v22)
      {
        goto LABEL_24;
      }
    }

    else if (v21)
    {
LABEL_24:
      v49 = 0;
      memset(&v52, 0, sizeof(v52));
      if (*(a2 + 31) < 0)
      {
        sub_100004CEC(__dst, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        *__dst = *v13;
        v51 = *(a2 + 24);
      }

      v31 = sub_100023EF4(a1 + 200, __dst, &v49, &v52);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v31)
      {
        v47 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *v57 = 68289282;
          *&v57[4] = 0;
          *&v57[8] = 2082;
          *&v57[10] = "";
          *&v57[18] = 2050;
          *&v57[20] = v49;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,isFollowUpReceived, lastIgneousReceivedTs:%{public}0.3f}", v57, 0x1Cu);
        }
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      goto LABEL_83;
    }

LABEL_33:
    v29 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 31) >= 0)
      {
        v30 = a2 + 8;
      }

      else
      {
        v30 = *(a2 + 8);
      }

      *v57 = 68289282;
      *&v57[4] = 0;
      *&v57[8] = 2082;
      *&v57[10] = "";
      *&v57[18] = 2082;
      *&v57[20] = v30;
      v27 = "{msg%{public}.0s:#igEventTracker,isFollowUpReceived,actual alert not received, uid:%{public, location:escape_only}s}";
      v28 = v29;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  memset(buf, 0, sizeof(buf));
  __asm { FMOV            V1.2D, #-1.0 }

  v61 = 0uLL;
  v62 = _Q1;
  v63 = _Q1;
  v64 = 0xBFF0000000000000;
  v65 = 0uLL;
  v66 = 0uLL;
  v68 = 0uLL;
  v69 = 0uLL;
  v67 = 1065353216;
  v70 = 1065353216;
  v15 = sub_10008E020();
  sub_10008F5B0(v15, buf);
  sub_10002BC3C(a1);
  v16 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a2 + 8);
    if (*(a2 + 31) >= 0)
    {
      v17 = a2 + 8;
    }

    v18 = a2 + 152;
    if (*(a2 + 175) < 0)
    {
      v18 = *(a2 + 152);
    }

    *v57 = 68289539;
    *&v57[4] = 0;
    *&v57[8] = 2082;
    *&v57[10] = "";
    *&v57[18] = 2081;
    *&v57[20] = v17;
    v58 = 2081;
    v59 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,isIgneousReceived, uid:%{private, location:escape_only}s, bleUid:%{private, location:escape_only}s}", v57, 0x26u);
  }

  v56 = 0;
  memset(&v55, 0, sizeof(v55));
  v19 = (a2 + 152);
  if (*(a2 + 175) < 0)
  {
    v23 = *(a2 + 160);
    if (v23)
    {
      sub_100004CEC(__p, *v19, v23);
LABEL_28:
      v24 = sub_100023EF4(a1 + 400, __p, &v56, &v55);
      v25 = v24;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
        if (v25)
        {
LABEL_30:
          v26 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *v57 = 68289282;
            *&v57[4] = 0;
            *&v57[8] = 2082;
            *&v57[10] = "";
            *&v57[18] = 2050;
            *&v57[20] = v56;
            v27 = "{msg%{public}.0s:#igEventTracker,isIgneousReceived,dup ble alert, lastBleReceivedTs:%{public}0.3f}";
            v28 = v26;
LABEL_38:
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, v57, 0x1Cu);
          }

LABEL_39:
          v31 = 1;
          goto LABEL_83;
        }
      }

      else if (v24)
      {
        goto LABEL_30;
      }
    }
  }

  else if (*(a2 + 175))
  {
    *__p = *v19;
    v54 = *(a2 + 168);
    goto LABEL_28;
  }

  memset(&v52, 0, sizeof(v52));
  Current = CFAbsoluteTimeGetCurrent();
  sub_10002BE58(a1, &v52, Current - *&v63, Current);
  size = v52.__r_.__value_.__l.__size_;
  v34 = v52.__r_.__value_.__r.__words[0];
  if (v52.__r_.__value_.__r.__words[0] == v52.__r_.__value_.__l.__size_)
  {
LABEL_73:
    v31 = 0;
    goto LABEL_74;
  }

  while (1)
  {
    v35 = SACommonUtils::convertStringToDictionary(v34 + 4);
    if (!v35 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v38 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v57 = 68289026;
        *&v57[4] = 0;
        *&v57[8] = 2082;
        *&v57[10] = "";
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,isDupAPNSReceivedForBle,dictionary Invalid}", v57, 0x12u);
      }

      goto LABEL_69;
    }

    __dst[0] = 0;
    __dst[1] = 0;
    v51 = 0;
    v36 = [v35 objectForKey:@"BleUIDKeyString"];
    if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      SACommonUtils::getStringValue(v36, v57);
      v51 = *&v57[16];
      *__dst = *v57;
      v37 = HIBYTE(*&v57[16]);
    }

    else
    {
      v37 = 0;
    }

    v39 = *(a2 + 175);
    v40 = v39 >= 0 ? *(a2 + 175) : *(a2 + 160);
    if (!v40)
    {
      goto LABEL_65;
    }

    v41 = __dst[1];
    if (v37 >= 0)
    {
      v41 = v37;
    }

    if (v41 == v40 && (v37 >= 0 ? (v42 = __dst) : (v42 = __dst[0]), v39 >= 0 ? (v43 = (a2 + 152)) : (v43 = *v19), !memcmp(v42, v43, v40)))
    {
      v45 = SALogObjectGeneral;
      v44 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *v34;
        *v57 = 68289282;
        *&v57[4] = 0;
        *&v57[8] = 2082;
        *&v57[10] = "";
        *&v57[18] = 2050;
        *&v57[20] = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,isDupBleReceived,dup ble alert, lastBleReceivedTs:%{public}0.3f}", v57, 0x1Cu);
        v44 = 0;
      }
    }

    else
    {
LABEL_65:
      v44 = 1;
    }

    if ((v37 & 0x80) != 0)
    {
      operator delete(__dst[0]);
    }

    if (!v44)
    {
      break;
    }

LABEL_69:
    v34 += 7;
    if (v34 == size)
    {
      goto LABEL_73;
    }
  }

  v31 = 1;
LABEL_74:
  *v57 = &v52;
  sub_1000246A0(v57);
LABEL_83:
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  sub_10002D804(&v68);
  sub_10002DA28(&v65);
  *v57 = &buf[24];
  sub_100005208(v57);
  *v57 = buf;
  sub_100005208(v57);
  return v31;
}

void sub_10002D4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_10002BE00(&a47);
  _Unwind_Resume(a1);
}

void sub_10002D5A8(_BYTE *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igEventTracker,onFirstUnlock}", v3, 0x12u);
  }

  sub_100023D90(a1);
  sub_100023D90(a1 + 200);
  sub_100023D90(a1 + 400);
}

uint64_t sub_10002D678(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10002D754(uint64_t a1)
{
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  v2 = *(a1 + 344);
  if (v2)
  {
    sub_10002A838(v2);
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

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

uint64_t sub_10002D804(uint64_t a1)
{
  sub_10002D840(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10002D840(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = v2 + 12;
      sub_10002D8AC(&v4);
      sub_10002D950((v2 + 7));
      if (*(v2 + 55) < 0)
      {
        operator delete(v2[4]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10002D8AC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10002D900(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10002D900(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

uint64_t sub_10002D950(uint64_t a1)
{
  sub_10002D98C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10002D98C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10002D9D0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10002D9D0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10002DA28(uint64_t a1)
{
  sub_10002DA64(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10002DA64(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10002DAA8((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10002DAA8(uint64_t a1)
{
  sub_10002DAF8(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10002DAF8(uint64_t a1)
{
  sub_10002DB34(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10002DB34(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 111) < 0)
      {
        operator delete(v2[11]);
      }

      if (*(v2 + 87) < 0)
      {
        operator delete(v2[8]);
      }

      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10002DBB0(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 256;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 144) = xmmword_1000DD6E0;
  *(a1 + 160) = 0;
  sub_1000060C4((a1 + 168), "Unknown");
  *(a1 + 192) = 0;

  return a1;
}

void sub_10002DC44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100024884(v2 + 112);
  sub_100024884(v2 + 80);
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  sub_1000246A0(va);

  _Unwind_Resume(a1);
}

uint64_t sub_10002DD10(int a1, uint64_t a2, std::string *this)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::string::operator=(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_10002DD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002DDA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10002DDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    result = sub_100004CEC(v5, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *v5 = v6;
  }

  if (*(a3 + 55) < 0)
  {
    return sub_100004CEC((a2 + 32), *(a3 + 32), *(a3 + 40));
  }

  v8 = *(a3 + 32);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 32) = v8;
  return result;
}

void sub_10002DE74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002DF00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013A5E0;
  a2[1] = v2;
  return result;
}

void sub_10002DF2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_100024DD8(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_10002DFFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E0B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013A660;
  a2[1] = v2;
  return result;
}

void sub_10002E0E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v3, 0x12u);
    }

    sub_100026A24(v1);
  }
}

uint64_t sub_10002E1B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E270(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013A6E0;
  a2[1] = v2;
  return result;
}

void sub_10002E29C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_100024DD8(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_10002E36C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E428(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013A760;
  a2[1] = v2;
  return result;
}

void sub_10002E454(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v3, 0x12u);
    }

    sub_100026A24(v1);
  }
}

uint64_t sub_10002E524(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E570(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_10000509C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_100026154(a1, v6);
  }

  v17 = 0;
  v18 = 56 * v2;
  v20 = 0;
  sub_10002DDEC(a1, 56 * v2, a2);
  v7 = 56 * v2 + 56;
  v19 = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = v18 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v18 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v14 = *(v11 + 32);
      *(v12 + 48) = *(v11 + 48);
      *(v12 + 32) = v14;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 32) = 0;
      v11 += 56;
      v12 += 56;
    }

    while (v11 != v9);
    do
    {
      sub_100024724(v8);
      v8 += 56;
    }

    while (v8 != v9);
    v8 = *a1;
    v7 = v19;
  }

  *a1 = v10;
  a1[1] = v7;
  v15 = a1[2];
  a1[2] = v20;
  v19 = v8;
  v20 = v15;
  v17 = v8;
  v18 = v8;
  sub_1000261B0(&v17);
  return v7;
}

void sub_10002E708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000261B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10002E71C(uint64_t a1, char a2, double a3)
{
  v26[0] = off_10013A7E0;
  v26[1] = a1;
  v26[3] = v26;
  v25[0] = off_10013A860;
  v25[1] = a1;
  v25[3] = v25;
  sub_1000104CC(v27, v26, v25);
  sub_10000F274(v25);
  sub_10000F274(v26);
  v24 = 0;
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v21 = 0xBFF0000000000000;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v15 = a1;
  v16 = *&a3;
  v17 = &v24;
  v18 = v22;
  __p = &v21;
  v8 = sub_10002EA3C(v6, v7, &v15);
  sub_10002E9BC(a1 + 32, v8, *(a1 + 40));
  if ((a2 & 1) == 0 && *(a1 + 32) == *(a1 + 40))
  {
    v9 = *&v21;
    if (SHIBYTE(v23) < 0)
    {
      sub_100004CEC(__dst, v22[0], v22[1]);
    }

    else
    {
      *__dst = *v22;
      v14 = v23;
    }

    sub_1000060C4(v11, "{}");
    sub_100026200(&v15, __dst, v11, v9);
    sub_10002EB30((a1 + 32), &v15);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (v24 == 1)
  {
    if ((*(a1 + 79) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 64))
      {
        goto LABEL_20;
      }
    }

    else if (!*(a1 + 79))
    {
      goto LABEL_20;
    }

    sub_1000257EC(a1);
  }

LABEL_20:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return sub_100011208(v27);
}

void sub_10002E934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_100011208(v37 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_10002E9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_100025B0C(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 56;
        sub_100024724(v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t sub_10002EA3C(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (!sub_10002EF18(a3, v3))
    {
      v3 += 56;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 56; i != a2; i += 56)
      {
        if (!sub_10002EF18(a3, i))
        {
          *v3 = *i;
          if (*(v3 + 31) < 0)
          {
            operator delete(*(v3 + 8));
          }

          v8 = *(i + 8);
          *(v3 + 24) = *(i + 24);
          *(v3 + 8) = v8;
          *(i + 31) = 0;
          *(i + 8) = 0;
          if (*(v3 + 55) < 0)
          {
            operator delete(*(v3 + 32));
          }

          v9 = *(i + 32);
          *(v3 + 48) = *(i + 48);
          *(v3 + 32) = v9;
          *(i + 55) = 0;
          *(i + 32) = 0;
          v3 += 56;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_10002EB30(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10002F118(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 32) = v5;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_10002EC18(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013A7E0;
  a2[1] = v2;
  return result;
}

void sub_10002EC44(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_100024DD8(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_10002ED14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002EDD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013A860;
  a2[1] = v2;
  return result;
}

void sub_10002EDFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v3, 0x12u);
    }

    sub_100026A24(v1);
  }
}

uint64_t sub_10002EECC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10002EF18(double *a1, uint64_t a2)
{
  v3 = *a1;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v4 = *(*&v3 + 104);
  if (!v4)
  {
    sub_1000053C4();
  }

  (*(*v4 + 48))(v4, a2 + 8, &__p);
  v6 = *a2;
  v7 = a1[1];
  if (*a2 < v7)
  {
    **(a1 + 2) = 1;
  }

  v8 = *(a1 + 4);
  if (*v8 < v6)
  {
    *v8 = v6;
    std::string::operator=(*(a1 + 3), (a2 + 8));
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v10 = (*&v3 + 168);
    if (*(*&v3 + 191) < 0)
    {
      v10 = *v10;
    }

    v11 = *(a1 + 1);
    v12 = *a2;
    if (SHIBYTE(v17) < 0)
    {
      if (v16)
      {
        p_p = __p;
      }

      else
      {
        p_p = "";
      }
    }

    else
    {
      p_p = &__p;
      if (!HIBYTE(v17))
      {
        p_p = "";
      }
    }

    *buf = 68290307;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2081;
    v23 = v10;
    v24 = 2049;
    v25 = v11;
    v26 = 2049;
    v27 = v12;
    v28 = 2081;
    v29 = p_p;
    v30 = 1025;
    v31 = v6 < v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,cleanup, history:%{private, location:escape_only}s, before:%{private}0.1f, ts:%{private}0.1f, value:%{private, location:escape_only}s, remove:%{private}hhd}", buf, 0x40u);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  return v6 < v7;
}

void sub_10002F0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002F118(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_10000509C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v20[4] = a1;
  if (v6)
  {
    sub_100026154(a1, v6);
  }

  v7 = 56 * v2;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v9 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v10 = *a1;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v7 + *a1 - v11;
    do
    {
      *v14 = *v13;
      v15 = *(v13 + 8);
      *(v14 + 24) = *(v13 + 24);
      *(v14 + 8) = v15;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = 0;
      v16 = *(v13 + 32);
      *(v14 + 48) = *(v13 + 48);
      *(v14 + 32) = v16;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = 0;
      v13 += 56;
      v14 += 56;
    }

    while (v13 != v11);
    do
    {
      sub_100024724(v10);
      v10 += 56;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  v17 = v7 + 56;
  *a1 = v12;
  a1[1] = v17;
  v18 = a1[2];
  a1[2] = 0;
  v20[2] = v10;
  v20[3] = v18;
  v20[0] = v10;
  v20[1] = v10;
  sub_1000261B0(v20);
  return v17;
}

uint64_t sub_10002F2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002F838(a1, a3);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,SASystemTestNotification}", v6, 0x12u);
  }

  return a1;
}

void sub_10002F3A0(uint64_t a1, int a2, const char *a3, uint64_t a4, double a5, double a6)
{
  v12 = *(sub_100042820() + 328);
  v13 = SALogObjectGeneral;
  v14 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,isIgneousTestEnabled}", buf, 0x12u);
    }

    v15 = CFAbsoluteTimeGetCurrent() - a5;
    v16 = CFAbsoluteTimeGetCurrent() - a6;
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (a3[23] < 0)
      {
        if (*(a3 + 1))
        {
          v18 = *a3;
        }

        else
        {
          v18 = "";
        }
      }

      else if (a3[23])
      {
        v18 = a3;
      }

      else
      {
        v18 = "";
      }

      v19 = *a4;
      if (!*a4)
      {
        v19 = "";
      }

      if (*(a4 + 23) >= 0)
      {
        v20 = a4;
      }

      else
      {
        v20 = v19;
      }

      *buf = 68290307;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v18;
      *&buf[28] = 1026;
      *&buf[30] = a2;
      *&buf[34] = 2050;
      *&buf[36] = v15;
      *&buf[44] = 2050;
      *&buf[46] = v16;
      *&buf[54] = 2081;
      *&buf[56] = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,sendIgneousTestNotification, channelName:%{public, location:escape_only}s, errorCode:%{public}d, oriLatencyDiff:%{public}0.3f, ingressLatencyDiff:%{public}0.3f, uid:%{private, location:escape_only}s}", buf, 0x40u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kSAIgneousAlertReceived", 0, 0, 1u);
    v29 = 0;
    memset(buf, 0, sizeof(buf));
    if (a3[23] < 0)
    {
      if (!*(a3 + 1))
      {
LABEL_34:
        v24 = *(a4 + 23);
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(a4 + 8);
        }

        if (v24)
        {
          std::string::operator=(&buf[24], a4);
        }

        v33 = a2;
        v30 = v15;
        v31 = v16;
        Current = CFAbsoluteTimeGetCurrent();
        v25 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 68289026;
          *&v27[8] = 2082;
          *&v27[10] = "";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,SASystemTestNotification}", v27, 0x12u);
        }

        v26 = *(a1 + 24);
        if (v26)
        {
          (*(*v26 + 48))(v26, buf);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(*&buf[48]);
        }

        if ((buf[47] & 0x80000000) != 0)
        {
          operator delete(*&buf[24]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        return;
      }

      a3 = *a3;
    }

    else if (!a3[23])
    {
      goto LABEL_34;
    }

    v22 = strlen(a3);
    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100004D90();
    }

    v23 = v22;
    if (v22 >= 0x17)
    {
      operator new();
    }

    v27[23] = v22;
    if (v22)
    {
      memmove(v27, a3, v22);
    }

    v27[v23] = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    *buf = *v27;
    *&buf[16] = *&v27[16];
    goto LABEL_34;
  }

  if (v14)
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,not in Igneous test}", buf, 0x12u);
  }
}

void sub_10002F7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002F7E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10002F7E4(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10002F838(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002F8D0(uint64_t a1)
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

void sub_10002F950(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  *a1 = v9;
  sub_1000319FC((a1 + 1), a3);
  sub_10000F1DC((a1 + 5), a6);
  v11[0] = off_10013A920;
  v11[1] = a1;
  v11[3] = v11;
  v10[0] = off_10013A9B0;
  v10[1] = &stru_10013A8F0;
  v10[3] = v10;
  SACloudChannel::create(v9);
}

void sub_10002FCF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_1000451DC(v35 + 128);
  sub_100031918(v38, *(v35 + 112));
  if (*(v35 + 103) < 0)
  {
    operator delete(*v39);
  }

  v41 = *(v35 + 72);
  *(v35 + 72) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  sub_10000F274(v35 + 40);
  sub_100031C34(v37);

  _Unwind_Resume(a1);
}

uint64_t sub_10002FE54(uint64_t a1)
{
  sub_100032850(a1 + 648);
  sub_100031918(a1 + 624, *(a1 + 632));
  sub_100093830((a1 + 464));
  v2 = *(a1 + 456);
  if (v2)
  {
    sub_10002A838(v2);
  }

  sub_1000332BC(a1 + 416);
  sub_1000451DC(a1 + 128);
  sub_100031918(a1 + 104, *(a1 + 112));
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10000F274(a1 + 40);
  sub_100031C34(a1 + 8);

  return a1;
}

void sub_10002FF14(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 68289282;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onParticipationChange, isParticipating:%{public}hhd}", &v5, 0x18u);
  }

  sub_100045268(a1 + 128, a2);
}

void sub_10002FFEC(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3, double a4, double a5)
{
  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 68289795;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2053;
    v15 = a2;
    v16 = 2053;
    v17 = a3;
    v18 = 2049;
    v19 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onLocationChanged, lat:%{sensitive}0.6f, lon:%{sensitive}0.6f, unc:%{private}0.2f}", v11, 0x30u);
  }

  sub_100046554(a1 + 128, a2, a3, a4, a5);
}

void sub_10003011C(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 68289282;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onLocationAuthorized, isAuthorized:%{public}d}", &v5, 0x18u);
  }

  sub_100046670(a1 + 128, a2);
}

void sub_1000301F8(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 68289282;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onInexpensiveNetworkConnected, isConnected:%{public}hhd}", &v5, 0x18u);
  }

  sub_100046778(a1 + 128, a2);
}

__int128 *sub_1000302D0(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 68289282;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onCellNetworkConnected, isConnected:%{public}hhd}", &v6, 0x18u);
  }

  return sub_10004683C(a1 + 128, a2);
}

uint64_t sub_1000303A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 16);
    v10 = *(a2 + 16);
    *buf = 68289538;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v43 = 2050;
    v44 = v9;
    v45 = 2050;
    v46 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,isChannelListSame, channelSet1.size():%{public}lu, channelSet2.size():%{public}lu}", buf, 0x26u);
  }

  v11 = *a1;
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (v11 == a1 + 8)
    {
      return 1;
    }

    v12 = *a2;
    v13 = *a2;
    v14 = *a1;
    while (1)
    {
      v15 = *(v14 + 55);
      if (v15 >= 0)
      {
        v16 = *(v14 + 55);
      }

      else
      {
        v16 = v14[5];
      }

      v17 = *(v13 + 55);
      v18 = v17;
      if (v17 < 0)
      {
        v17 = v13[5];
      }

      if (v16 != v17)
      {
        break;
      }

      v19 = v15 >= 0 ? v14 + 4 : v14[4];
      v20 = v13[4];
      v21 = v18 >= 0 ? v13 + 4 : v13[4];
      v22 = !memcmp(v19, v21, v16) && *(v14 + 14) == *(v13 + 14);
      if (!v22)
      {
        break;
      }

      v23 = v14[1];
      v24 = v14;
      if (v23)
      {
        do
        {
          v14 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v14 = v24[2];
          v22 = *v14 == v24;
          v24 = v14;
        }

        while (!v22);
      }

      v25 = v13[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v13[2];
          v22 = *v26 == v13;
          v13 = v26;
        }

        while (!v22);
      }

      v13 = v26;
      if (v14 == (a1 + 8))
      {
        return 1;
      }
    }
  }

  else
  {
    v12 = *a2;
  }

  v37 = a1 + 8;
  v38 = v11;
  v35 = (a2 + 8);
  v36 = v12;
  *&v34 = a4;
  *(&v34 + 1) = a4 + 8;
  sub_100031064(buf, &v38, &v37, &v36, &v35, &v34);
  v28 = *a2;
  v29 = *a1;
  v37 = a2 + 8;
  v38 = v28;
  v35 = (a1 + 8);
  v36 = v29;
  *&v34 = a3;
  *(&v34 + 1) = a3 + 8;
  sub_100031064(buf, &v38, &v37, &v36, &v35, &v34);
  v30 = SALogObjectGeneral;
  v31 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v31)
  {
    v32 = *(a3 + 16);
    v33 = *(a4 + 16);
    *buf = 68289538;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v43 = 2050;
    v44 = v32;
    v45 = 2050;
    v46 = v33;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,isChannelListSame, addList:%{public}llu, removeList:%{public}llu}", buf, 0x26u);
    return 0;
  }

  return result;
}

void sub_1000306B4(uint64_t a1, void *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,removeChannel}", buf, 0x12u);
  }

  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      if (*(v6 + 55) < 0)
      {
        sub_100004CEC(__p, v6[4], v6[5]);
      }

      else
      {
        *__p = *(v6 + 2);
        v16 = v6[6];
      }

      v8 = *(v6 + 14);
      v17 = v8;
      v9 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v10 = __p;
        if (v16 < 0)
        {
          v10 = __p[0];
        }

        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v10;
        v19 = 1025;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,removeChannel, channelId:%{private, location:escape_only}s, channelType:%{private}d}", buf, 0x22u);
        v8 = v17;
      }

      if (SHIBYTE(v16) < 0)
      {
        sub_100004CEC(buf, __p[0], __p[1]);
        v11 = v17;
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v16;
        v11 = v8;
      }

      *&buf[24] = v11;
      if ((v8 & 0xFFFFFFFD) == 0)
      {
        (*(**(a1 + 72) + 16))(*(a1 + 72), buf);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }

      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v5);
  }
}

void sub_100030928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100030964(uint64_t a1, void *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,addChannel}", buf, 0x12u);
  }

  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      if (*(v6 + 55) < 0)
      {
        sub_100004CEC(__p, v6[4], v6[5]);
      }

      else
      {
        *__p = *(v6 + 2);
        v16 = v6[6];
      }

      v8 = *(v6 + 14);
      v17 = v8;
      v9 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v10 = __p;
        if (v16 < 0)
        {
          v10 = __p[0];
        }

        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v10;
        v19 = 1025;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,addChannel, channelId:%{private, location:escape_only}s, channelType:%{private}d}", buf, 0x22u);
        v8 = v17;
      }

      if (SHIBYTE(v16) < 0)
      {
        sub_100004CEC(buf, __p[0], __p[1]);
        v11 = v17;
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v16;
        v11 = v8;
      }

      *&buf[24] = v11;
      if ((v8 & 0xFFFFFFFD) == 0)
      {
        (*(**(a1 + 72) + 24))(*(a1 + 72), buf);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }

      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v5);
  }
}

void sub_100030BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100030C14(uint64_t a1)
{
  v1 = a1;
  sub_100031838(v6, a1 + 208);
  v2 = v7;
  sub_100031838(v4, v1 + 256);
  LODWORD(v1) = v5;
  sub_100031918(v4, v4[1]);
  sub_100031918(v6, v6[1]);
  return (v1 + v2);
}

void sub_100030C90(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v14);
  if (v15)
  {
    sub_10002A838(v15);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = a2[1];
    v12 = *a2;
    v13 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 88))(v5, &v12);
    if (v13)
    {
      sub_10002A838(v13);
    }
  }

  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100046C90(a1 + 128, v11);
  if (v7)
  {
    sub_10002A838(v7);
  }

  v8 = a2[1];
  v9 = *a2;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v9);
  if (v10)
  {
    sub_10002A838(v10);
  }
}

void sub_100030DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    sub_10002A838(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100030DE8(void *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    if (*(*a1 + 23) < 0)
    {
      v3 = *v3;
    }

    v4 = a1[1];
    if (v4)
    {
      v4 = *(v4 + 8) + 1;
    }

    v5[0] = 68289539;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2081;
    v9 = v3;
    v10 = 2050;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sharedobj,status, id:%{private, location:escape_only}s, users:%{public}lld}", v5, 0x26u);
  }
}

void sub_100030ED8(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 68289282;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onEnhancedDeliveryEnabled,, isEnabled,:%{public}hhd}", &v5, 0x18u);
  }

  sub_100046CF8(a1 + 128, a2);
}

uint64_t sub_100030FB0(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000053C4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_10003100C(uint64_t a1, int a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    sub_1000053C4();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t sub_100031064(uint64_t result, uint64_t *a2, void *a3, void ***a4, void ***a5, __int128 *a6)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_48:
    v34 = *a6;
    v9 = v8;
    goto LABEL_49;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    if (((v15 = sub_100031320(v8 + 4, i + 4)) != 0 || ((v16 = *(v8 + 14), v17 = *(i + 14), v16 < v17) ? (v15 = -1) : (v15 = 1), v16 != v17)) && v15 < 0)
    {
      result = sub_1000312B4(a6, *a2 + 32);
      v29 = *a2;
      v30 = *(*a2 + 8);
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v29[2];
          v25 = *v31 == v29;
          v29 = v31;
        }

        while (!v25);
      }

      *a2 = v31;
    }

    else
    {
      if (((v18 = *a4, v19 = *a2, result = sub_100031320(*a4 + 4, (*a2 + 32)), result) || ((v20 = *(v18 + 14), v21 = *(v19 + 56), v20 < v21) ? (result = 0xFFFFFFFFLL) : (result = 1), v20 != v21)) && (result & 0x80) != 0)
      {
        v32 = *a4;
        v33 = (*a4)[1];
        if (v33)
        {
          do
          {
            v28 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v28 = v32[2];
            v25 = *v28 == v32;
            v32 = v28;
          }

          while (!v25);
        }
      }

      else
      {
        v22 = *a2;
        v23 = *(*a2 + 8);
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v22[2];
            v25 = *v24 == v22;
            v22 = v24;
          }

          while (!v25);
        }

        *a2 = v24;
        v26 = *a4;
        v27 = (*a4)[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v26[2];
            v25 = *v28 == v26;
            v26 = v28;
          }

          while (!v25);
        }
      }

      *a4 = v28;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_48;
    }
  }

  v34 = *a6;
  v37 = *a6;
  if (v8 != v9)
  {
    do
    {
      result = sub_1000312B4(&v37, (v8 + 4));
      v35 = v8[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v8[2];
          v25 = *v36 == v8;
          v8 = v36;
        }

        while (!v25);
      }

      v8 = v36;
    }

    while (v36 != v9);
    v34 = v37;
  }

LABEL_49:
  *v7 = v9;
  *(v7 + 8) = v34;
  return result;
}

uint64_t sub_1000312B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000313B8(*a1, *(a1 + 8), a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t sub_100031320(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_100031358(a1, v2, v5, v6);
}

uint64_t sub_100031358(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void *sub_1000313B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = *sub_10003143C(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100031650();
  }

  return result;
}

void **sub_10003143C(void *a1, uint64_t a2, void ***a3, uint64_t *a4, uint64_t a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || ((v11 = sub_100031320(a5, (a2 + 32))) != 0 || ((v12 = *(a5 + 24), v13 = *(a2 + 56), v12 < v13) ? (v11 = -1) : (v11 = 1), v12 != v13)) && v11 < 0)
  {
    if (*a1 == a2)
    {
      v18 = a2;
    }

    else
    {
      v17 = *a2;
      if (*a2)
      {
        do
        {
          v18 = v17;
          v17 = v17[1];
        }

        while (v17);
      }

      else
      {
        v19 = a2;
        do
        {
          v18 = v19[2];
          v20 = *v18 == v19;
          v19 = v18;
        }

        while (v20);
      }

      v21 = sub_100031320(v18 + 4, a5);
      if (!v21)
      {
        v22 = *(v18 + 14);
        v23 = *(a5 + 24);
        v21 = v22 < v23 ? -1 : 1;
        if (v22 == v23)
        {
          goto LABEL_28;
        }
      }

      if ((v21 & 0x80) == 0)
      {
        goto LABEL_28;
      }
    }

    if (*a2)
    {
      *a3 = v18;
      return (v18 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v14 = sub_100031320((a2 + 32), a5);
  if (!v14 && ((v15 = *(a2 + 56), v16 = *(a5 + 24), v15 < v16) ? (v14 = -1) : (v14 = 1), v15 == v16) || (v14 & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v25 = *(a2 + 8);
  if (v25)
  {
    v26 = *(a2 + 8);
    do
    {
      v27 = v26;
      v26 = *v26;
    }

    while (v26);
  }

  else
  {
    v28 = a2;
    do
    {
      v27 = v28[2];
      v20 = *v27 == v28;
      v28 = v27;
    }

    while (!v20);
  }

  if (v27 == v9)
  {
LABEL_49:
    if (v25)
    {
      *a3 = v27;
      return v27;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  v29 = sub_100031320(a5, v27 + 4);
  if (v29 || ((v30 = *(a5 + 24), v31 = *(v27 + 14), v30 < v31) ? (v29 = -1) : (v29 = 1), v30 != v31))
  {
    if (v29 < 0)
    {
      v25 = *a4;
      goto LABEL_49;
    }
  }

LABEL_28:

  return sub_100031708(a1, a3, a5);
}

void sub_1000316EC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000317D4(v3, v2);
  _Unwind_Resume(a1);
}

void **sub_100031708(uint64_t a1, void ***a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = sub_100031320(a3, v4 + 4);
        if (!v8)
        {
          v9 = *(a3 + 24);
          v10 = *(v7 + 14);
          v8 = v9 < v10 ? -1 : 1;
          if (v9 == v10)
          {
            break;
          }
        }

        if ((v8 & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_19;
        }
      }

      v11 = sub_100031320(v7 + 4, a3);
      if (!v11)
      {
        v12 = *(v7 + 14);
        v13 = *(a3 + 24);
        v11 = v12 < v13 ? -1 : 1;
        if (v12 == v13)
        {
          break;
        }
      }

      if ((v11 & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_19:
  *a2 = v7;
  return v5;
}

void sub_1000317D4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_100031838(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100031890(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100031890(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000313B8(v5, (v5 + 1), (v4 + 4));
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

void sub_100031918(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100031918(a1, *a2);
    sub_100031918(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_10003197C(uint64_t a1)
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

uint64_t sub_1000319FC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100031B04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013A920;
  a2[1] = v2;
  return result;
}

uint64_t sub_100031B44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100031B90(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_1000053C4();
  }

  (*(*v5 + 48))(v5, &v7, &v6);
}

uint64_t sub_100031C34(uint64_t a1)
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

void sub_100031CE0(uint64_t a1)
{

  operator delete();
}

id sub_100031D34(uint64_t a1, void *a2)
{
  *a2 = off_10013A9B0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_100031D7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_100031DA0(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013AA20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100031E5C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013AA40;
  a2[1] = v2;
  return result;
}

void sub_100031E88(uint64_t a1, void **a2, unsigned __int8 *a3)
{
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    *v25 = 2082;
    *&v25[2] = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onChannelChanged}", &buf, 0x12u);
  }

  if (a2[2])
  {
    v22 = 0;
    v23 = 0;
    v20 = 0;
    v21 = &v22;
    v18 = &v19;
    v19 = 0;
    if (sub_1000303A8(v5 + 104, a2, &v21, &v18))
    {
      v7 = sub_100030C14(v5);
      sub_100031838(&buf, v5 + 232);
      v8 = *&v25[8];
      sub_100031918(&buf, *v25);
      *(sub_100002DB0() + 18) = v7;
      *(sub_100002DB0() + 19) = v8;
      sub_10003100C(*(v5 + 440), v7, v8);
      v9 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289026;
        *v25 = 2082;
        *&v25[2] = "";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onChannelChanged,SameAsBefore,DoNothing}", &buf, 0x12u);
      }
    }

    else
    {
      v13 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v5 + 616);
        buf = 68289538;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 1026;
        v26 = v14;
        v27 = 1026;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onChannelChanged, fIsFirstRunAfterBoot:%{public}hhd, forceOrDeferChannelUpdate:%{public}hhd}", &buf, 0x1Eu);
      }

      if (v4 & 1) != 0 || (*(v5 + 616))
      {
        *(v5 + 616) = 0;
        sub_100093B2C(v5 + 464);
        v15 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289026;
          *v25 = 2082;
          *&v25[2] = "";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onChannelChanged,ReplaceActiveChannel}", &buf, 0x12u);
        }

        sub_100031918(v5 + 104, *(v5 + 112));
        *(v5 + 112) = 0;
        *(v5 + 120) = 0;
        *(v5 + 104) = v5 + 112;
        if ((v5 + 104) != a2)
        {
          sub_10003333C((v5 + 104), *a2, a2 + 1);
        }

        if (v20)
        {
          sub_1000306B4(v5, &v18);
        }

        if (v23)
        {
          sub_100030964(v5, &v21);
        }

        v16 = sub_100030C14(v5);
        sub_100031838(&buf, v5 + 232);
        v17 = *&v25[8];
        sub_100031918(&buf, *v25);
        *(sub_100002DB0() + 18) = v16;
        *(sub_100002DB0() + 19) = v17;
        sub_10003100C(*(v5 + 440), v16, v17);
      }

      else
      {
        if ((v5 + 624) != a2)
        {
          sub_10003333C((v5 + 624), *a2, a2 + 1);
        }

        sub_10009386C(v5 + 464);
      }
    }

    sub_100031918(&v18, v19);
    sub_100031918(&v21, v22);
  }

  else
  {
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      *v25 = 2082;
      *&v25[2] = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onChannelChanged,ChannelIsEmpty,ClearAll}", &buf, 0x12u);
      v10 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      *v25 = 2082;
      *&v25[2] = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,clearAllChannels}", &buf, 0x12u);
    }

    sub_1000306B4(v5, (v5 + 104));
    sub_100031918(v5 + 104, *(v5 + 112));
    *(v5 + 104) = v5 + 112;
    *(v5 + 120) = 0;
    *(v5 + 112) = 0;
    v11 = sub_100030C14(v5);
    sub_100031838(&buf, v5 + 232);
    v12 = *&v25[8];
    sub_100031918(&buf, *v25);
    *(sub_100002DB0() + 18) = v11;
    *(sub_100002DB0() + 19) = v12;
    sub_10003100C(*(v5 + 440), v11, v12);
  }
}

uint64_t sub_10003235C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000323A8(uint64_t a1)
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

uint64_t sub_100032498(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013AAD0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000324C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 68289026;
    LOWORD(v8[0]) = 2082;
    *(v8 + 2) = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onInitComplete}", &v7, 0x12u);
  }

  v3 = *(v1 + 72);
  v7 = off_10013AD30;
  v8[0] = v1;
  v8[2] = &v7;
  (*(*v3 + 72))(v3, &v7);
  sub_10000F274(&v7);
  v4 = *(v1 + 64);
  if (!v4)
  {
    sub_1000053C4();
  }

  v5 = *(*v4 + 48);

  return v5();
}

uint64_t sub_100032624(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000326E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013AB50;
  a2[1] = v2;
  return result;
}

void sub_10003270C(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = v3;
    v12 = 1026;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onBLERelayStateUpdateCB,, isIgenousCapable,:%{public}d, isIgenousEnabled,:%{public}d}", v7, 0x1Eu);
  }

  if (*(v5 + 672))
  {
    sub_100030FB0(v5 + 648, v3, v4);
  }
}

uint64_t sub_100032804(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100032850(uint64_t a1)
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

void sub_1000328F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013ABE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

char *sub_100032950(char *__dst, const std::string *a2, uint64_t a3)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100004CEC(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = *&a2->__r_.__value_.__l.__data_;
    *(__dst + 2) = *(&a2->__r_.__value_.__l + 2);
    *__dst = v6;
  }

  sub_10000F1DC((__dst + 24), a3);
  sub_100032AA4((__dst + 56), a2);
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8 = __dst;
    if (__dst[23] < 0)
    {
      v8 = *__dst;
    }

    v10[0] = 68289283;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2081;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sharedobj,create, id:%{private, location:escape_only}s}", v10, 0x1Cu);
  }

  return __dst;
}

void sub_100032A78(_Unwind_Exception *a1)
{
  sub_10000F274(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100032AA4(uint64_t a1, const std::string *a2)
{
  v4 = (a1 + 8);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = a2->__r_.__value_.__r.__words[0];
  }

  v6 = os_transaction_create();
  v7 = *a1;
  *a1 = v6;

  std::string::operator=(v4, a2);
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 31) < 0)
    {
      v4 = v4->__r_.__value_.__r.__words[0];
    }

    v10[0] = 68289283;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2081;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sharedobj,createdOsTransaction, identifier:%{private, location:escape_only}s}", v10, 0x1Cu);
  }

  return a1;
}

void sub_100032BBC(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void **sub_100032BE0(void **a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1;
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sharedobj,release, id:%{private, location:escape_only}s}", v6, 0x1Cu);
  }

  v4 = a1[6];
  if (!v4)
  {
    sub_1000053C4();
  }

  (*(*v4 + 48))(v4);
  sub_100032D18((a1 + 7));
  sub_10000F274((a1 + 3));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100032D0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

uint64_t sub_100032D18(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;

  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v4 = *v4;
    }

    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sharedobj,releasedOsTransaction, identifier:%{private, location:escape_only}s}", v6, 0x1Cu);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100032EA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100032F5C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013ACB0;
  a2[1] = v2;
  return result;
}

void sub_100032F88(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    LOWORD(v13[0]) = 2082;
    *(v13 + 2) = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onChannelSelectBgSysTaskTriggered}", &buf, 0x12u);
  }

  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = &v10;
  v6 = &v7;
  v7 = 0;
  if (sub_1000303A8(v1 + 104, v1 + 624, &v9, &v6))
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      LOWORD(v13[0]) = 2082;
      *(v13 + 2) = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,onChannelSelectBgSysTaskTriggered,SameAsBefore,DoNothing}", &buf, 0x12u);
    }
  }

  else
  {
    sub_100031918(v1 + 104, *(v1 + 112));
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    *(v1 + 104) = v1 + 112;
    sub_10003333C((v1 + 104), *(v1 + 624), (v1 + 632));
    sub_100031918(v1 + 624, *(v1 + 632));
    *(v1 + 624) = v1 + 632;
    *(v1 + 632) = 0u;
    if (v8)
    {
      sub_1000306B4(v1, &v6);
    }

    if (v11)
    {
      sub_100030964(v1, &v9);
    }

    v4 = sub_100030C14(v1);
    sub_100031838(&buf, v1 + 232);
    v5 = v13[1];
    sub_100031918(&buf, v13[0]);
    *(sub_100002DB0() + 18) = v4;
    *(sub_100002DB0() + 19) = v5;
    sub_10003100C(*(v1 + 440), v4, v5);
    sub_100093B2C(v1 + 464);
  }

  sub_100031918(&v6, v7);
  sub_100031918(&v9, v10);
}

void sub_1000331B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12, char *a13)
{
  sub_100031918(&a9, a10);
  sub_100031918(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1000331D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100033224(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000332BC(uint64_t a1)
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

uint64_t **sub_10003333C(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100033560(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          *(v8 + 14) = *(v9 + 14);
          v10 = sub_1000334C8(v5, &v16, (v15 + 4));
          sub_100015ED8(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_100033560(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_1000335B4(&v13);
  }

  if (a2 != a3)
  {
    sub_10003360C();
  }

  return result;
}

void **sub_1000334C8(uint64_t a1, void ***a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        v7 = sub_100031320(a3, v4 + 4);
        if (!v7)
        {
          v8 = *(a3 + 24);
          v9 = *(v5 + 14);
          v7 = v8 < v9 ? -1 : 1;
          if (v8 == v9)
          {
            break;
          }
        }

        if ((v7 & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_13;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_13:
  *a2 = v5;
  return result;
}

void *sub_100033560(uint64_t a1)
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

uint64_t sub_1000335B4(uint64_t a1)
{
  sub_100031918(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100031918(*a1, v2);
  }

  return a1;
}

void sub_100033664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000317D4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000336F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013AD30;
  a2[1] = v2;
  return result;
}

void sub_100033724(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 456);
  *(v1 + 448) = 0;
  *(v1 + 456) = 0;
  if (v2)
  {
    sub_10002A838(v2);
  }
}

uint64_t sub_10003373C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100033788(void ****a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = mach_continuous_time();
    v5 = sub_1000B1880(v4);
    sub_100033C1C(a1, v5);
    v6 = v3;
    v7 = mach_continuous_time();
    v8 = sub_1000B1880(v7);
    sub_100033C1C(a1, v8);
    v10 = *a1;
    v9 = a1[1];
    v11 = v6;
    if (v10 != v9)
    {
      while ((sub_100076D18(*v10, v11) & 1) == 0)
      {
        if (++v10 == v9)
        {
          v10 = v9;
          break;
        }
      }
    }

    v12 = a1[1];
    v13 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      LODWORD(v25) = v10 != v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#currentAlerts,isSAFound, result:%{public}hhd}", buf, 0x18u);
    }

    if (v10 == v12)
    {
      operator new();
    }

    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      SACommonUtils::getAnyCmam(v11, __p);
      if (v20 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 68289283;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2081;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#currentAlerts,addFailed, cmam:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v17 = v10 == v12;
  }

  else
  {
    v16 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#currentAlerts,addFailed,emptyDictionary}", buf, 0x12u);
    }

    v17 = 0;
  }

  return v17;
}

uint64_t sub_100033C1C(uint64_t result, double a2)
{
  v2 = result;
  v3 = *result;
  v4 = *(result + 8);
  v8 = a2;
  if (v3 != v4)
  {
    while (1)
    {
      result = sub_100033FCC(&v8, v3);
      if (result)
      {
        break;
      }

      if (++v3 == v4)
      {
        v3 = v4;
        goto LABEL_11;
      }
    }

    if (v3 != v4)
    {
      for (i = v3 + 1; i != v4; ++i)
      {
        result = sub_100033FCC(&v8, i);
        if ((result & 1) == 0)
        {
          v6 = *i;
          *i = 0;
          result = sub_100033F80(v3++, v6);
        }
      }
    }
  }

LABEL_11:
  v7 = *(v2 + 8);
  if (v3 != v7)
  {
    while (v7 != v3)
    {
      result = sub_100033F80(--v7, 0);
    }

    *(v2 + 8) = v3;
  }

  return result;
}

BOOL sub_100033D18(void ****a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = SALogObjectGeneral;
  result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (result)
    {
      v8 = *a2;
      if (v4 >= 0)
      {
        v8 = a2;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2081;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#currentAlerts,isHashFoundRequested, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v9 = mach_continuous_time();
    v10 = sub_1000B1880(v9);
    sub_100033C1C(a1, v10);
    v11 = *a1;
    v12 = a1[1];
    if (*(a2 + 23) < 0)
    {
      sub_100004CEC(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v16 = *(a2 + 16);
    }

    if (v11 != v12)
    {
      while ((SACommonUtils::isHashMatch(__p, **v11) & 1) == 0)
      {
        if (++v11 == v12)
        {
          v11 = v12;
          break;
        }
      }
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    v13 = a1[1];
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v18 = 2082;
      v19 = "";
      v20 = 1026;
      LODWORD(v21) = v11 != v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#currentAlerts,isHashFound, result:%{public}hhd}", buf, 0x18u);
      v13 = a1[1];
    }

    return v11 != v13;
  }

  else if (result)
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v18 = 2082;
    v19 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#currentAlerts,#warning,isHashFoundFailed,emptyHash}", buf, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_100033F80(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100076CD4(result);

    operator delete();
  }

  return result;
}

BOOL sub_100033FCC(double *a1, SACommonUtils ***a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    SACommonUtils::getAnyCmam(**a2, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 68289283;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2081;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#currentAlerts,purge, cmam:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return *a1 - *(*a2 + 1) > 600.0;
}

double sub_100034110(double a1)
{
  v1 = a1 - CFAbsoluteTimeGetCurrent();
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289283;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2049;
    v8 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleRelayDM,alertExpiryDurationSeconds, duration:%{private}0.2f}", v4, 0x1Cu);
  }

  return v1;
}

double sub_1000341E8(uint64_t a1, uint64_t a2)
{
  sub_100017378(v18);
  v3 = sub_10008E020();
  sub_10008FEA0(v3, v18);
  sub_10003443C(v16, v19, a2);
  sub_100034638(v16);
  sub_10003443C(v14, v20, HIDWORD(a2));
  sub_100034638(v14);
  v4 = v15 + v17;
  if (v15 + v17)
  {
    v5 = (*v14 * v15 + v17 * *v16) / v4;
    v6 = (*&v14[1] * v15 + v17 * *&v16[1]) / v4;
    v7 = (v5 + arc4random_uniform((v6 - v5))) / 1000.0;
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289795;
      v22 = 2082;
      v23 = "";
      v24 = 2049;
      v25 = v5;
      v26 = 2049;
      v27 = v6;
      v28 = 2049;
      v29 = v7;
      v9 = "{msg%{public}.0s:#bleRelayDM,waitForAdvDurationSeconds, minDelayMS:%{private}0.2f, maxDelayMS:%{private}0.2f, waitTimeSec:%{private}0.2f}";
      v10 = v8;
      v11 = 48;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &buf, v11);
    }
  }

  else
  {
    v12 = SALogObjectGeneral;
    v7 = 0.0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v22 = 2082;
      v23 = "";
      v9 = "{msg%{public}.0s:#bleRelayDM,waitForAdvDurationSeconds,weightSum0,waitTime0}";
      v10 = v12;
      v11 = 18;
      goto LABEL_6;
    }
  }

  sub_100017590(v20);
  sub_100017590(v19);
  return v7;
}

void sub_100034408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100017590(&a27);
  sub_100017590(&a22);
  _Unwind_Resume(a1);
}

double sub_10003443C(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *a1 = _Q0;
  *(a1 + 16) = 0;
  v10 = a2[2];
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = 0;
  v12 = *a2;
  v13 = a2[1];
  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  do
  {
    v15 = *(v10 + 4);
    if (v15 <= a3 && v11 <= v15)
    {
      if (!*&v13)
      {
        goto LABEL_35;
      }

      if (v14.u32[0] > 1uLL)
      {
        v17 = *(v10 + 4);
        if (*&v13 <= v15)
        {
          v17 = v15 % v13.i32[0];
        }
      }

      else
      {
        v17 = (*&v13 + 0xFFFFFFFFLL) & v15;
      }

      v18 = *(v12 + 8 * v17);
      if (!v18)
      {
LABEL_35:
        sub_100004E6C("unordered_map::at: key not found");
      }

      do
      {
        while (1)
        {
          v18 = *v18;
          if (!v18)
          {
            goto LABEL_35;
          }

          v19 = v18[1];
          if (v19 == v15)
          {
            break;
          }

          if (v14.u32[0] > 1uLL)
          {
            if (v19 >= *&v13)
            {
              v19 %= *&v13;
            }
          }

          else
          {
            v19 &= *&v13 - 1;
          }

          if (v19 != v17)
          {
            goto LABEL_35;
          }
        }
      }

      while (*(v18 + 4) != v15);
      *a1 = *(v18 + 3);
      *(a1 + 16) = *(v18 + 10);
      v11 = v15;
    }

    v10 = *v10;
  }

  while (v10);
  if (*(a1 + 16) > 0x64u || (result = *a1, *a1 < 0.0) || ((v21 = *(a1 + 8), v21 >= 0.0) ? (v22 = result > v21) : (v22 = 1), v22))
  {
LABEL_31:
    v23 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v24[0] = 68289283;
      v24[1] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 1025;
      v28 = a3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleRelayDM,delayRangeAndWeightForValue,no bucket found, value:%{private}d}", v24, 0x18u);
    }

    result = 0.0;
    *a1 = xmmword_1000E0550;
    *(a1 + 16) = 50;
  }

  return result;
}

void sub_100034638(uint64_t *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *(a1 + 4);
    v6[0] = 68289795;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2049;
    v10 = v3;
    v11 = 2049;
    v12 = v4;
    v13 = 1025;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SACommon_Types::DelayRangeAndWeight, minDelayMS:%{private}.2f, maxDelayMS:%{private}.2f, weightPercentage:%{private}d}", v6, 0x2Cu);
  }
}

double sub_100034718(uint64_t a1, unsigned int a2)
{
  sub_100017378(v7);
  v3 = sub_10008E020();
  sub_10008FEA0(v3, v7);
  v4 = v9[5] * a2 / 1000.0;
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289283;
    v11 = 2082;
    v12 = "";
    v13 = 2049;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleRelayDM,backOffDurationSeconds, backOffTimeSec:%{private}0.2f}", &buf, 0x1Cu);
  }

  sub_100017590(v9);
  sub_100017590(&v8);
  return v4;
}

double sub_100034854()
{
  sub_100017378(v4);
  v1 = sub_10008E020();
  sub_10008FEA0(v1, v4);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289283;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleRelayDM,advertisingDurationSeconds, advertiseDurationSeconds:%{private}d}", &buf, 0x18u);
  }

  LODWORD(v0) = v5;
  sub_100017590(&v7);
  sub_100017590(&v6);
  return v0;
}

double sub_100034978(double a1)
{
  sub_100017378(v11);
  v2 = sub_10008E020();
  sub_10008FEA0(v2, v11);
  v3 = *&v13[6];
  v4 = mach_continuous_time();
  v5 = sub_1000B1880(v4);
  v6 = v3 / 1000.0;
  v7 = a1 - v5;
  if (v7 < v3 / 1000.0)
  {
    v6 = v7;
  }

  if (v7 <= 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289283;
    v15 = 2082;
    v16 = "";
    v17 = 2049;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleRelayDM,gracePeriodDurationSeconds, gracePeriodSec:%{private}0.2f}", &buf, 0x1Cu);
  }

  sub_100017590(v13);
  sub_100017590(&v12);
  return v8;
}

uint64_t sub_100034AD0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  sub_1000353E8(v15, a3);
  *a1 = off_10013AE08;
  sub_1000353E8(a1 + 8, v15);
  sub_100035480(v15);
  *a1 = off_10013ADB0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 5;
  *(a1 + 136) = 0xBFF0000000000000;
  *(a1 + 144) = 257;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v7 = v6;
  *(a1 + 176) = v7;
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,init}", buf, 0x12u);
  }

  sub_10001D128((a1 + 56), [@"com.apple.safetyalerts.batteryService" UTF8String]);
  objc_storeStrong((a1 + 80), a2);
  v10[0] = off_10013AE38;
  v10[1] = a1;
  v10[3] = v10;
  sub_10001CBD0((a1 + 88), v10);
  *(a1 + 128) = 4;
  *(a1 + 136) = sub_100042820()[31];
  *(a1 + 144) = 257;
  *(a1 + 120) = 1;
  sub_100060DE4(a1 + 56);
  sub_10000F274(v10);

  return a1;
}

void sub_100034CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100035480(va);

  _Unwind_Resume(a1);
}

void sub_100034D48(IONotificationPortRef *a1)
{
  v2 = SAPlatformInfo::instance(a1);
  v3 = sub_100035358(v2);
  v4 = SALogObjectGeneral;
  v5 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 68289026;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,registering for battery status changed}", buf, 0x12u);
    }

    notification = 0;
    v6 = IONotificationPortCreate(kIOMainPortDefault);
    a1[5] = v6;
    if (v6)
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v6);
      if (RunLoopSource)
      {
        v8 = RunLoopSource;
        RunLoop = SACommonUtils::SACommonGetRunLoop(RunLoopSource);
        CFRunLoopAddSource(RunLoop, v8, kCFRunLoopDefaultMode);
        v10 = a1[5];
        v11 = IOServiceMatching("IOPMPowerSource");
        if (!IOServiceAddMatchingNotification(v10, "IOServiceFirstMatch", v11, sub_1000350D4, a1, &notification))
        {
          v12 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            v15 = 0;
            v16 = 2082;
            v17 = "";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,read battery status}", buf, 0x12u);
          }

          sub_100035220(a1, notification);
        }

        IOObjectRelease(notification);
      }

      else
      {
        IONotificationPortDestroy(a1[5]);
        a1[5] = 0;
      }
    }
  }

  else if (v5)
  {
    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,no battery}", buf, 0x12u);
  }
}

uint64_t sub_100034F68(uint64_t a1)
{
  *a1 = off_10013ADB0;

  sub_10001CB38(a1 + 56);
  *a1 = off_10013AE08;
  sub_100035480(a1 + 8);
  return a1;
}

void sub_100034FE0(uint64_t a1)
{
  sub_100034F68(a1);

  operator delete();
}

void sub_100035018(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v3);
  if (v4)
  {
    sub_10002A838(v4);
  }
}

void sub_100035068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100035080(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000053C4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1000350D4(uint64_t a1, io_iterator_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 68289026;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,onMatchedBatteryStatusCb}", &v7, 0x12u);
  }

  if (a1)
  {
    sub_100035220(a1, a2);
  }

  else
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,pthis is null}", &v7, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100035220(uint64_t a1, io_iterator_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,onMatchedBatteryStatus}", v7, 0x12u);
  }

  IONotificationPortSetDispatchQueue(*(a1 + 40), *(a1 + 176));
  result = IOIteratorNext(a2);
  if (result)
  {
    v6 = result;
    do
    {
      if (!IOServiceAddInterestNotification(*(a1 + 40), v6, "IOGeneralInterest", sub_100002298, a1, (a1 + 48)))
      {
        sub_1000023E8(a1, v6);
      }

      IOObjectRelease(v6);
      result = IOIteratorNext(a2);
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100035358(id *a1)
{
  if ([*a1 isEqualToString:@"iPad"] & 1) != 0 || (objc_msgSend(*a1, "isEqualToString:", @"Watch") & 1) != 0 || (objc_msgSend(*a1, "isEqualToString:", @"iPhone"))
  {
    return 1;
  }

  v3 = *a1;

  return [v3 isEqualToString:@"Mac"];
}

uint64_t sub_1000353E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100035480(uint64_t a1)
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

uint64_t sub_100035570(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013AE38;
  a2[1] = v2;
  return result;
}

void sub_10003559C()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,bgSysTaskCallback}", v1, 0x12u);
  }
}

uint64_t sub_100035650(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10003577C(uint64_t a1)
{

  operator delete();
}

void sub_1000357C8(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = a2;
  *a1 = 0;
  *(a1 + 8) = v9;
  sub_100038AF0(a1 + 16, a3);
  *(a1 + 408) = 0xBFF0000000000000;
  *(a1 + 416) = 0;
  *(a1 + 420) = a4;
  sub_100038D88(a1 + 424, a5);
  sub_100038D88(a1 + 456, a5 + 32);
  sub_100038D88(a1 + 488, a5 + 64);
  *(a1 + 520) = 0;
  *(a1 + 524) = 0;
  sub_1000060C4((a1 + 528), "");
  *(a1 + 552) = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 560) = _Q0;
  *(a1 + 576) = 0;
  *(a1 + 580) = 0;
  sub_1000060C4(&__p, "SaBleRelaySm");
  operator new();
}

void sub_1000365A8(_Unwind_Exception *a1)
{
  v5 = *(v1 + 728);
  if (v5)
  {
    sub_10002A838(v5);
  }

  v6 = *(v1 + 712);
  *(v1 + 712) = 0;
  if (v6)
  {
    operator delete();
  }

  sub_1000390B8(v1 + 584);
  if (*(v1 + 551) < 0)
  {
    operator delete(*v3);
  }

  sub_100038EA0(v1 + 424);
  sub_10002D754(v1 + 16);

  _Unwind_Resume(a1);
}

void sub_1000365E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_10003660C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000DB70(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10003661C()
{
  if (*(v0 + 551) < 0)
  {
    operator delete(*v2);
  }

  sub_100038EA0(v0 + 424);
  sub_10002D754(v0 + 16);

  JUMPOUT(0x1000366E0);
}

void sub_10003662C()
{
  sub_100038E20(v0 + 456);
  sub_100038E20(v0 + 424);
  JUMPOUT(0x1000366C4);
}

void sub_10003665C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 + 703) < 0)
  {
    operator delete(*v25);
  }

  sub_100038FF0(*(v20 + 648));
  v26 = *(v20 + 624);
  if (v26)
  {
    sub_10002A838(v26);
  }

  sub_10003906C(*v24);
  sub_10002A838(v23);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 551) < 0)
  {
    operator delete(*v22);
  }

  sub_100038EA0(v20 + 424);
  sub_10002D754(v20 + 16);

  JUMPOUT(0x1000366E0);
}

uint64_t sub_1000366E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 448);
  if (result)
  {
    return (*(*result + 48))(result, v1 + 16);
  }

  return result;
}

uint64_t *sub_100036720(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v4 = SALogObjectGeneral;
  if (!(a4 & 1 | a3))
  {
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v4 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2081;
      v21 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v22 = 2081;
      *v23 = "setStateHandler";
      *&v23[8] = 1026;
      *&v23[10] = 93;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("setStateHandler", "SAStateMachine.h", 93, "false && Assertion failed");
  }

  v9 = SALogObjectGeneral;
  v10 = *(a1 + 120);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v11 = *v11;
    }

    sub_100038AE0(__p, a2);
    if (v15 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 68289794;
    *&buf[4] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = v11;
    v22 = 1026;
    *v23 = a2;
    *&v23[4] = 2082;
    *&v23[6] = v12;
    _os_log_impl(&_mh_execute_header, v9, v10, "{msg%{public}.0s:StateMachine,SetState, name:%{public, location:escape_only}s, stateInt:%{public}d, stateStr:%{public, location:escape_only}s}", buf, 0x2Cu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = &v16;
  result = sub_100039170(a1 + 8, a2);
  result[5] = a3;
  result[6] = a4;
  return result;
}

uint64_t sub_1000369B4(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 3)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 2)
      {
        result = 0;
        ++*(a1 + 416);
        return result;
      }
    }

    else
    {
      v5 = *(a1 + 712);
      v6 = sub_100034110(*(a1 + 232));
      sub_1000382B0(a1 + 584, 4, v6);
    }

    return 0;
  }
}

uint64_t sub_100036A38(uint64_t a1, int a2)
{
  result = 1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_100036E78(a1 + 584, 5);
    }

    else
    {
      v6 = sub_100002DB0();
      v7 = sub_1000341E8(*(a1 + 712), *(v6 + 20) | (*(a1 + 420) << 32));
      sub_1000382B0(a1 + 584, 5, v7);
    }

    return 1;
  }

  switch(a2)
  {
    case 2:
      ++*(a1 + 416);
      return result;
    case 4:
      return 3;
    case 5:
      v4 = *(a1 + 416);
      if (!v4)
      {
        return 2;
      }

      v5 = sub_100034718(*(a1 + 712), v4);
      sub_1000382B0(a1 + 584, 5, v5);
      *(a1 + 416) = 0;
      return 1;
  }

  return result;
}

uint64_t sub_100036B08(uint64_t a1, int a2)
{
  result = 2;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(a1 + 8);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000389D8;
      v8[3] = &unk_1001390D0;
      v8[4] = a1;
      v5 = v8;
    }

    else
    {
      v4 = *(a1 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100038930;
      block[3] = &unk_1001390D0;
      block[4] = a1;
      v5 = block;
    }

    dispatch_async(v4, v5);
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 == 4)
      {
        if (*(a1 + 580))
        {
          return 3;
        }

        *(a1 + 576) = 2;
      }

      else
      {
        if (a2 != 6)
        {
          return result;
        }

        if (*(a1 + 580))
        {
          return 3;
        }

        *(a1 + 576) = 0;
      }

      *(a1 + 580) = 1;
      return 3;
    }

    if (!*(a1 + 416))
    {
      sub_100036E78(a1 + 584, 6);
      v6 = *(a1 + 712);
      v7 = sub_100034978(*(a1 + 408));
      sub_1000382B0(a1 + 584, 6, v7);
      ++*(a1 + 416);
    }

    if ((*(a1 + 580) & 1) == 0)
    {
      *(a1 + 576) = 1;
      *(a1 + 580) = 1;
    }
  }

  return 2;
}

uint64_t sub_100036C8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    v2 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100038A4C;
    block[3] = &unk_1001390D0;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  return 3;
}

uint64_t sub_100036D0C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleRelaySM,released}", v6, 0x12u);
  }

  sub_100036E78(a1 + 584, 4);
  *(a1 + 524) = *(a1 + 416);
  if ((*(a1 + 580) & 1) == 0)
  {
    *(a1 + 576) = 3;
    *(a1 + 580) = 1;
  }

  sub_100040604(*(a1 + 720), (a1 + 520));
  v3 = *(a1 + 728);
  if (v3)
  {
    sub_10002A838(v3);
  }

  v4 = *(a1 + 712);
  *(a1 + 712) = 0;
  if (v4)
  {
    operator delete();
  }

  sub_1000390B8(a1 + 584);
  if (*(a1 + 551) < 0)
  {
    operator delete(*(a1 + 528));
  }

  sub_100038E20(a1 + 488);
  sub_100038E20(a1 + 456);
  sub_100038E20(a1 + 424);
  sub_10002D754(a1 + 16);

  return a1;
}

void sub_100036E6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

void sub_100036E78(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = a1 + 64;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 != a1 + 64 && *(v5 + 32) <= a2 && (v6 = *(v5 + 40)) != 0)
  {
    (*(*v6 + 40))(v6);
    v7 = SALogObjectGeneral;
    v8 = *(a1 + 120);
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_25;
    }

    v9 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v9 = *v9;
    }

    sub_100038AD0(__p, a2);
    if (v15 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 68289538;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = v9;
    v22 = 2082;
    v23 = v10;
    v11 = "{msg%{public}.0s:StateMachine,CancelTimeout, name:%{public, location:escape_only}s, event:%{public, location:escape_only}s}";
  }

  else
  {
LABEL_16:
    v7 = SALogObjectGeneral;
    v8 = *(a1 + 120);
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_25;
    }

    v12 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v12 = *v12;
    }

    sub_100038AD0(__p, a2);
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 68289538;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = v12;
    v22 = 2082;
    v23 = v13;
    v11 = "{msg%{public}.0s:StateMachine,CancelTimeout,TimerNotRunning, name:%{public, location:escape_only}s, event:%{public, location:escape_only}s}";
  }

  _os_log_impl(&_mh_execute_header, v7, v8, v11, buf, 0x26u);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_25:
}