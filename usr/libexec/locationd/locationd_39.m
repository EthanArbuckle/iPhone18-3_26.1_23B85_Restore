void sub_10029C62C(_BYTE *a1, uint64_t a2)
{
  v52 = 0;
  sub_100153734(&v52 + 1, &v52, *(a2 + 16));
  sub_10000EC00(__p, "TTF");
  if ((a1[2721] & 1) == 0)
  {
    if (fabs(*(a2 + 96)) < 30.0)
    {
      *(*a1 + 1232) = *(a2 + 56);
    }

    a1[2721] = 1;
  }

  if (a1[2720])
  {
    v4 = -1.0;
    v5 = 0.0;
    if (a1[80] == 1)
    {
      v5 = *(a2 + 8) - *(a1 + 5);
      v6 = *(a1 + 143);
      if (v6)
      {
        v4 = sub_100109D18(v6, *(a2 + 56), *(a2 + 64), *(a1 + 11), *(a1 + 12), *(a2 + 72));
      }
    }
  }

  else
  {
    a1[2720] = 1;
    v7 = sub_1000081AC();
    v8 = *(a1 + 341);
    if (v51 < 0)
    {
      __p[1] = 4;
      v9 = __p[0];
    }

    else
    {
      v51 = 4;
      v9 = __p;
    }

    strcpy(v9, "TTFF");
    v5 = v7 - v8;
    *(*a1 + 208) = (v7 - v8);
    v4 = -1.0;
  }

  if (qword_1025D48C0 != -1)
  {
    sub_101943BE0();
  }

  v10 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a2 + 56);
    v12 = *(a2 + 64);
    if (v51 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = *(a2 + 80);
    v15 = *(a2 + 72) - v14;
    v17 = *(a2 + 96);
    v16 = *(a2 + 104);
    v18 = *(a2 + 152);
    v19 = *(a2 + 160);
    v20 = *(a2 + 176);
    v21 = *(a2 + 184);
    v22 = *(a2 + 112);
    v23 = *(a2 + 120);
    v24 = *(a2 + 128);
    v25 = *(a2 + 44);
    v27 = *(a2 + 200);
    v26 = *(a2 + 208);
    v28 = *(a2 + 292);
    *buf = 136324355;
    v116 = "CL-GPSsa";
    *v117 = 1024;
    *&v117[2] = 1;
    v118 = 2053;
    v119 = v11;
    v120 = 2053;
    v121 = v12;
    v122 = 2048;
    v123 = v17;
    v124 = 2080;
    v125 = v13;
    v126 = 2048;
    v127 = v5;
    v128 = 2048;
    v129 = v18;
    v130 = 2048;
    v131 = v20;
    v132 = 2048;
    v133 = v15;
    v134 = 2048;
    v135 = v16;
    v136 = 2048;
    v137 = v4;
    v138 = 1024;
    v139 = HIDWORD(v52);
    v140 = 1024;
    v141 = v52;
    v142 = 2048;
    v143 = v14;
    v144 = 2048;
    v145 = v19;
    v146 = 2048;
    v147 = v21;
    *v148 = 2048;
    *&v148[2] = v22;
    *&v148[10] = 2048;
    *&v148[12] = v23;
    v149 = 2048;
    *v150 = v24;
    *&v150[8] = 2048;
    v151 = 0xBFF0000000000000;
    v152 = 2048;
    v153 = 0xBFF0000000000000;
    v154 = 2048;
    v155 = 0xBFF0000000000000;
    v156 = 1024;
    v157 = -1;
    v158 = 1024;
    v159 = -1;
    v160 = 1024;
    v161 = -1;
    v162 = 1024;
    v163 = -1;
    v164 = 1024;
    v165 = -1;
    v166 = 2048;
    v167 = v25;
    v168 = 1024;
    v169 = -1;
    v170 = 1024;
    v171 = -1;
    v172 = 2048;
    v173 = 0xBFF0000000000000;
    v174 = 1024;
    v175 = -1;
    v176 = 1024;
    v177 = 75;
    v178 = 2048;
    v179 = v27;
    v180 = 2048;
    v181 = v26;
    v182 = 1024;
    v183 = v28;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,%s,%.2lf,Speed,%.3lf,Course,%.4lf,Altitude,%.3lf,VerticalAccuracy,%.3lf,Distance,%.3lf,Week,%u,TowMs,%u,Undulation,%.3f,SpeedAccuracy,%.3lf,CourseAccuracy,%.4lf,A,%.3f,B,%.3f,AZ,%.4f,HDOP,%.1f,VDOP,%.1f,ODOM,%.3f,LP,%d,SA,%d,R,%d,VTOW,%d,CTOW,%d,TUNC,%.3f,NS,%d,MS,%d,AgeOfPowerMode,%.1lf,SQI,%d,integrity,%d,VerticalSpeed,%.3lf,VerticalSpeedAccuracy,%.3lf,imag,%d", buf, 0x140u);
  }

  v29 = sub_10000A100(123, 2);
  if (v29)
  {
    sub_101943C08(buf);
    v31 = *(a2 + 56);
    v32 = *(a2 + 64);
    v33 = v51 >= 0 ? __p : __p[0];
    v34 = *(a2 + 80);
    v35 = *(a2 + 72) - v34;
    v36 = *(a2 + 96);
    v37 = *(a2 + 104);
    v38 = *(a2 + 152);
    v39 = *(a2 + 160);
    v40 = *(a2 + 176);
    v41 = *(a2 + 184);
    v42 = *(a2 + 112);
    v43 = *(a2 + 120);
    v44 = *(a2 + 128);
    v45 = *(a2 + 44);
    v47 = *(a2 + 200);
    v46 = *(a2 + 208);
    v48 = *(a2 + 292);
    *v53 = 136324355;
    *v54 = "CL-GPSsa";
    *&v54[8] = 1024;
    *&v54[10] = 1;
    v55 = 2053;
    *v56 = v31;
    *&v56[8] = 2053;
    v57 = v32;
    *v58 = 2048;
    *&v58[2] = v36;
    v59 = 2080;
    *v60 = v33;
    *&v60[8] = 2048;
    v61 = v5;
    *v62 = 2048;
    *&v62[2] = v38;
    v63 = 2048;
    *v64 = v40;
    *&v64[8] = 2048;
    *&v64[10] = v35;
    *&v64[18] = 2048;
    *&v64[20] = v37;
    *&v64[28] = 2048;
    *v65 = v4;
    *&v65[8] = 1024;
    v66 = HIDWORD(v52);
    v67 = 1024;
    v68 = v52;
    v69 = 2048;
    v70 = v34;
    v71 = 2048;
    v72 = v39;
    v73 = 2048;
    v74 = v41;
    v75 = 2048;
    v76 = v42;
    v77 = 2048;
    v78 = v43;
    v79 = 2048;
    v80 = v44;
    v81 = 2048;
    v82 = 0xBFF0000000000000;
    v83 = 2048;
    v84 = 0xBFF0000000000000;
    v85 = 2048;
    v86 = 0xBFF0000000000000;
    v87 = 1024;
    v88 = -1;
    v89 = 1024;
    v90 = -1;
    v91 = 1024;
    v92 = -1;
    v93 = 1024;
    v94 = -1;
    v95 = 1024;
    v96 = -1;
    v97 = 2048;
    v98 = v45;
    v99 = 1024;
    v100 = -1;
    v101 = 1024;
    v102 = -1;
    v103 = 2048;
    v104 = 0xBFF0000000000000;
    v105 = 1024;
    v106 = -1;
    v107 = 1024;
    v108 = 75;
    v109 = 2048;
    v110 = v47;
    v111 = 2048;
    v112 = v46;
    v113 = 1024;
    v114 = v48;
    v49 = _os_log_send_and_compose_impl();
    v29 = sub_100152C7C("LOCATION", 1, 0, 2, "void CLGnssController::logGPS(const GNSS::PerEpochData &)", "%s\n", v49);
    if (v49 != buf)
    {
      free(v49);
    }
  }

  *buf = 0;
  CLMotionActivity::getInit((&v116 + 4), v29);
  *&v150[2] = 0;
  *(&v145 + 2) = 0;
  LODWORD(v147) = 0;
  memset(v148, 0, 17);
  sub_10029CD7C(a1, buf);
  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v30 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v53 = 68292866;
    *v54 = 0;
    *&v54[4] = 2082;
    *&v54[6] = "";
    v55 = 1026;
    *v56 = *buf;
    *&v56[4] = 1026;
    *&v56[6] = HIDWORD(v116);
    LOWORD(v57) = 1026;
    *(&v57 + 2) = *v117;
    HIWORD(v57) = 1026;
    *v58 = v119;
    *&v58[4] = 1026;
    *&v58[6] = HIDWORD(v119);
    v59 = 1026;
    *v60 = BYTE3(v145);
    *&v60[4] = 1026;
    *&v60[6] = BYTE4(v145);
    LOWORD(v61) = 1026;
    *(&v61 + 2) = v147;
    HIWORD(v61) = 1026;
    *v62 = BYTE1(v147);
    *&v62[4] = 1026;
    *&v62[6] = BYTE2(v147);
    v63 = 1026;
    *v64 = BYTE3(v147);
    *&v64[4] = 2050;
    *&v64[6] = *v148;
    *&v64[14] = 2050;
    *&v64[16] = *&v148[8];
    *&v64[24] = 1026;
    *&v64[26] = v148[16];
    *v65 = 2050;
    *&v65[2] = *&v150[2];
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:PerEpoch, signalEnvironment:%{public}d, motionState:%{public}d, motionConfidence:%{public}d, mountedState:%{public}d, mountedConfidence:%{public}d, isRecentlyStepping:%{public}d, allowGnssIns:%{public}d, wasAccelSent:%{public}d, wasGyroSent:%{public}d, wasPressureSent:%{public}d, wasDemSent:%{public}d, demAlt:%{public}f, demAltUnc:%{public}f, wasMapDotSent:%{public}d, mapDot:%{public}f}", v53, 0x78u);
  }

  if (v51 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10029CD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029CD7C(void *a1, _DWORD *a2)
{
  v4 = a1[130];
  if (v4)
  {
    sub_10029CE14(v4, a2);
  }

  v5 = a1[127];
  if (v5)
  {
    sub_1002A81E0(v5, a2);
  }

  v6 = a1[132];
  if (v6)
  {
    sub_10029FAE8(v6, a2, 1.0);
  }

  v7 = a1[138];
  if (v7)
  {
    sub_10029CE20(v7, a2, 1.0);
  }

  v8 = a1[126];
  if (v8)
  {

    sub_1002A9464(v8, a2, 1.0);
  }
}

void sub_10029CE20(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1000137E0();
  if (vabdd_f64(v6, *(a1 + 8)) < a3)
  {
    *(a2 + 152) = 1;
  }

  if (vabdd_f64(v6, *(a1 + 32)) < a3)
  {
    *(a2 + 153) = 1;
  }
}

uint64_t sub_10029CE84(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10029CEFC(a1, i + 4);
  }

  return a1;
}

uint64_t *sub_10029CEFC(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

void sub_10029D128(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = (*(**a1 + 56))(*a1);
  sub_1001752AC(*(v4 + 8), v5);
  *(a1 + 40) = *(a2 + 292) != 0;
  if (a1[2] != 0x8000000000000000 && *(a1 + 3) != 0.0 && *(a1 + 8) > 0.0)
  {
    v6 = sub_1000137E0();
    v7 = *(a1 + 3);
    v8 = *(a2 + 8);
    v9 = (a1[2] - (v7 * 1000000000.0)) * 0.000000001;
    v10 = 0.0;
    if (v6 - v7 > 0.0 && v6 - v7 < 1200.0)
    {
      v11 = *(a1 + 8);
      if (v11 > 0.0 && v11 < 2000000.0)
      {
        v12 = *(a2 + 16) - v9;
        if (v12 > 0.0 && v12 < v6)
        {
          v10 = v6 - v12;
          if (v6 - v12 >= 10.0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_10168BBC0();
            }

            v15 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
            {
              *buf = 134349056;
              v25 = v6 - v12;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#Warning,#tt,excessive mach time delay,%{public}.4lf", buf, 0xCu);
            }

            if (sub_10000A100(121, 0))
            {
              sub_10168BF3C();
            }
          }

          else
          {
            *(a2 + 8) = CFAbsoluteTimeGetCurrent() - v10;
            *(a2 + 24) = v12;
            *(a2 + 32) = sub_1000081AC() - v10;
          }
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_10168BBC0();
          }

          v14 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v25 = v12;
            v26 = 2048;
            v27 = v6;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning, #tt out of bounds estimatedMachTimeOfFix,%.4lf,machNow,%.4lf,possible bb time adjusted", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10168BE28(v12, v6);
          }

          a1[2] = 0x8000000000000000;
          a1[3] = 0;
          *(a1 + 8) = 2143289344;
        }
      }
    }

    if (qword_1025D4650 != -1)
    {
      sub_10168BCB8();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a2 + 8);
      v18 = *(a2 + 16);
      v19 = *(a1 + 8);
      v20 = *(a2 + 24);
      v21 = *(a2 + 32);
      v22 = *(a1 + 40);
      *buf = 134220288;
      v25 = v20;
      v26 = 2048;
      v27 = v6;
      v28 = 2048;
      v29 = v10;
      v30 = 2048;
      v31 = v8;
      v32 = 2048;
      v33 = v17;
      v34 = 2048;
      v35 = v18;
      v36 = 2048;
      v37 = v9;
      v38 = 2048;
      v39 = v19;
      v40 = 2048;
      v41 = v21;
      v42 = 1024;
      v43 = v22;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#tt,TimestampAdjust,machTimeOfFix,%.4lf,machNow,%.4lf,delay,%.9lf,priorCfTime,%.4lf,adjustedCfTime,%.4lf,locationTimestampGps,%.4lf,bbTimeMinusMachtime,%.9lf,bbTimeUnc_ns,%lld,machContinuousTimeOfFix,%.4lf,imag,%d", buf, 0x62u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10168BCB8();
      }

      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssTimeTransfer::adjustLocationTimestamps(GNSS::PerEpochData &)", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }
}

void sub_10029D5D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 112);
  v12[6] = *(a2 + 96);
  v12[7] = v4;
  v13[0] = *(a2 + 128);
  *(v13 + 12) = *(a2 + 140);
  v5 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v5;
  v6 = *(a2 + 80);
  v12[4] = *(a2 + 64);
  v12[5] = v6;
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  memcpy(v14, (a2 + 160), sizeof(v14));
  v15 = *(a2 + 680);
  v8 = *(a2 + 688);
  v16 = v8;
  *(a2 + 680) = 0u;
  v9 = *(a2 + 776);
  v21 = *(a2 + 760);
  v22[0] = v9;
  *(v22 + 9) = *(a2 + 785);
  v10 = *(a2 + 712);
  v17 = *(a2 + 696);
  v18 = v10;
  v11 = *(a2 + 744);
  v19 = *(a2 + 728);
  v20 = v11;
  if (*(*(a1 + 8) + 992))
  {
    sub_10029C554(*(*(a1 + 8) + 992), v12);
    v8 = v16;
  }

  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10029D6B4(_Unwind_Exception *a1)
{
  if (STACK[0x2B0])
  {
    sub_100008080(STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

_UNKNOWN **sub_10029D6E0(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10168BBC0();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = (*(*a1 + 16))(a1);
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tt, timer event, state:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  if (*(a1 + 16) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BCB8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#tt, did not receive a response to the previous pulse.  Stopping.", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10168CB44();
    }

    sub_10168A93C(*(a1 + 8));
  }

  else
  {
    sub_10029D890(a1);
    return *(***(a1 + 8) - 8);
  }
}

id sub_10029D890(uint64_t a1)
{
  v2 = a1 + 8;
  v1 = *(a1 + 8);
  ++*(a1 + 20);
  *(a1 + 16) = 1;
  v3 = *(v1 + 84);
  v12 = off_1024F9860;
  v13 = v3;
  v14 = &v12;
  v4 = *(v1 + 120);
  if (!v4)
  {
    sub_1000CF05C();
  }

  v5 = (*(*v4 + 48))(v4, &v12);
  sub_1001767B8(&v12);
  if ((v5 & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BCB8();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#tt, failed to send command to pulse", &v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10168C948();
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_10168BCB8();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*v2 + 64) + 0.5;
    v10 = 134217984;
    v11 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#tt, timer setNextFireDelay, %f", &v10, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10168CA34(v2);
  }

  return [*(*v2 + 48) setNextFireDelay:*(*v2 + 64) + 0.5];
}

void sub_10029DA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001767B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029DAA4(uint64_t result, uint64_t a2)
{
  *a2 = off_1024F9860;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_10029DB0C(uint64_t a1)
{
  v1 = *(a1 + 8);
  ++*(v1 + 80);
  return *(**v1 - 8);
}

uint64_t sub_10029DB38(uint64_t a1)
{
  if (*(a1 + 304) == 1)
  {
    sub_100134860(a1 + 248);
  }

  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 152) = _Q1;
  *(a1 + 176) = _Q1;
  *(a1 + 192) = 0u;
  *(a1 + 200) = _Q1;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0x100000005;
  *(a1 + 296) = 0;
  *(a1 + 304) = 1;
  return a1;
}

uint64_t sub_10029DBE0(void *a1)
{
  if (a1 <= 24)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 == 10)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x19:
        return 2;
      case 0x32:
        return 3;
      case 0x4B:
        return 4;
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101621394();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Reliability", v4, 8u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101622A74(a1);
    return 0;
  }

  return result;
}

void sub_10029DD04(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1680) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,Warning,Simulator mode,not updating leap second", &v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101775AF0();
    }
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 1720) = v4 < 250000000.0;
    if (*(a2 + 20) == 1 && v4 < 250000000.0)
    {
      v5 = *(a2 + 64);
      if (sub_10029E3E8() != v5)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1002981B4();
        }

        v6 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(a2 + 8) * 0.000001;
          v8 = 134218240;
          v9 = v7;
          v10 = 1024;
          v11 = v5;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,GPS_TIME,UpdateLeapSeconds,gpsMs,%f,leapS,%d", &v8, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1017759D4(a2, v5);
        }

        sub_1004E5E64(v5);
      }
    }
  }
}

uint64_t sub_10029DEC4(uint64_t a1, double *a2, double *a3)
{
  if ((*(a1 + 269) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10170CF60();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#imag,al,cross check disabled", &v9, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10170CF74();
    return 0;
  }

  v4 = sub_100109D18((a1 + 40), *a2, *a3, *(a1 + 84), *(a1 + 92), 0.0);
  if (v4 <= fmin(*(a1 + 100) * 5.0, 1500.0))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10170CF60();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134217984;
      v10 = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#imag,al,locations match, separated by,%.1f,m", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10170D164();
    }

    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10170CF60();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = v4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#imag,al,locations mismatch, separated by,%.1f,m", &v9, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10170D064();
    return 0;
  }

  return result;
}

uint64_t *sub_10029E0DC(uint64_t a1, unsigned __int8 *a2)
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

void sub_10029E1C0(void *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 15)
  {
    if (a1 <= 63)
    {
      if (a1 == 16)
      {
        v7 = 4;
        goto LABEL_26;
      }

      if (a1 != 32)
      {
        goto LABEL_25;
      }
    }

    else if (a1 != 64 && a1 != 128)
    {
      v6 = a1 == 256;
      v7 = 5;
      goto LABEL_9;
    }

LABEL_19:
    if (qword_1025D4650 != -1)
    {
      sub_101A3A9C4();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67240192;
      v12[1] = a1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "unexpected SatSystem to convert to client type,%{public}d", v12, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A3AC94(a1);
    }

LABEL_25:
    v7 = 0;
    goto LABEL_26;
  }

  if (a1 <= 3)
  {
    if (a1)
    {
      v6 = a1 == 2;
      v7 = 1;
LABEL_9:
      if (!v6)
      {
        v7 = 0;
      }

      goto LABEL_26;
    }

    goto LABEL_19;
  }

  if (a1 == 8)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (a1 == 4)
  {
    v7 = 2;
  }

  else
  {
    v7 = v8;
  }

LABEL_26:
  *(a3 + 24) = 0;
  v10 = *a2;
  *a3 = v7;
  *(a3 + 4) = v10;
  v11 = *(a2 + 1);
  *(a3 + 8) = vextq_s8(v11, v11, 8uLL);
  *(a3 + 24) = fmaxf(*v11.i32, *&v11.i32[1]) > 0.0;
  *(a3 + 25) = (a2[6] & 3) != 0;
}

uint64_t sub_10029E360(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v3 < 0.0 || v2 < 0.0)
  {
    v4 = 0;
    *(a2 + 8) = 0xBFF0000000000000;
  }

  else
  {
    v4 = 1;
  }

  *a2 = v4;
  v6 = *(result + 40);
  v5 = *(result + 48);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  if (v6 < 0.0 || v6 > 360.0 || v5 < 0.0)
  {
    v7 = 0;
    *(a2 + 32) = 0xBFF0000000000000;
  }

  else
  {
    v7 = 1;
  }

  *(a2 + 24) = v7;
  v8 = *(result + 32);
  *(a2 + 56) = *(result + 24);
  *(a2 + 64) = v8;
  *(a2 + 48) = v8 >= 0.0;
  return result;
}

uint64_t sub_10029E3E8()
{
  if (qword_102656768 != -1)
  {
    sub_1001537D4();
  }

  return dword_1025D6560;
}

void sub_10029E488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002A8894(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029E4A4(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_1024A2728;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  sub_10028E850(a1 + 24, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 2));
  return a1;
}

uint64_t sub_10029E530(uint64_t a1)
{
  if (*(a1 + 488) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 488);
      *buf = 67240192;
      LODWORD(v12) = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "DEM,isUseOfDemInappropriate,true,fIsAirborne,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AF6198((a1 + 488));
    }

    return 1;
  }

  if (*(a1 + 496) > 0.0)
  {
    v5 = sub_1000081AC();
    if (vabdd_f64(v5, *(a1 + 496)) < 10.0 && ((*(a1 + 538) & 1) != 0 || (*(a1 + 539) & 1) != 0 || (*(a1 + 536) & 1) != 0 || *(a1 + 537) == 1))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 496);
        v8 = *(a1 + 512);
        v9 = *(a1 + 520);
        *buf = 134350081;
        v12 = v5;
        v13 = 2050;
        v14 = v7;
        v15 = 1026;
        v16 = 1;
        v17 = 2053;
        v18 = v8;
        v19 = 2053;
        v20 = v9;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "DEM,isUseOfDemInappropriate,true,TBA,currentTime,%{public}.1lf,TBA machContinuousTime,%{public}.1lf,isCloseToOrAtTunnelBridge,%{public}d,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101AF5990();
        }

        v10 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::isUseOfDemInappropriate() const", "%s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_10029E824(uint64_t a1, double *a2, double *a3, double a4, long double a5)
{
  v5 = *(a1 + 80);
  *a2 = -9999.0;
  *a3 = 9999.0;
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#Warning,DEM,current tile is not valid", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101AF6388();
      return 0;
    }

    return result;
  }

  if (*(a1 + 136) == 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#Warning,DEM,cellsize == 0", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101AF6D1C();
      return 0;
    }

    return result;
  }

  if (fabs(a4) <= 90.0)
  {
    sub_10002DB04(a5);
    v16 = (a1 + 128);
    v17 = *(a1 + 128);
    if (v17 > a4)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v18 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v19 = *v16;
        *buf = 134545921;
        v87 = a4;
        v88 = 2053;
        v89 = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.9lf,lessThanMin,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF6B24();
        return 0;
      }

      return result;
    }

    v20 = v14;
    v21 = *(a1 + 136);
    v22 = *(a1 + 108);
    v23 = v17 + v21 * v22;
    if (v23 < a4)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v24 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 134545921;
        v87 = a4;
        v88 = 2053;
        v89 = v23;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.9lf,exceedsMax,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF6A2C();
        return 0;
      }

      return result;
    }

    v25 = (a1 + 120);
    v26 = *(a1 + 120);
    if (v14 < v26)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v27 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v28 = *v25;
        *buf = 134545921;
        v87 = v20;
        v88 = 2053;
        v89 = v28;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "#Warning,DEM,longitude,%{sensitive}.9lf,lessThanMin,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF6930();
        return 0;
      }

      return result;
    }

    v29 = *(a1 + 110);
    v30 = v26 + v21 * v29;
    if (v14 > v30)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v31 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 134545921;
        v87 = v20;
        v88 = 2053;
        v89 = v30;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#Warning,DEM,longitude,%{sensitive}.9lf,exceedsMax,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF6838();
        return 0;
      }

      return result;
    }

    v32 = *(a1 + 156);
    v33 = *(a1 + 104);
    if (v32 > v33)
    {
      v33 = *(a1 + 156);
    }

    v34 = v33;
    v35 = *(a1 + 148);
    if (v35 == *(a1 + 144))
    {
      v36 = v35;
      goto LABEL_54;
    }

    v37 = (v20 - v26) / v21;
    v38 = (floor(v37) + 0.5);
    if ((v38 & 0x80000000) != 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v54 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v55 = *v25;
        *buf = 134545921;
        v87 = v20;
        v88 = 2053;
        v89 = v55;
        _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_INFO, "#Warning,DEM,longitude,%{sensitive}.9lf,invalid,minLongitude,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF673C();
        return 0;
      }

      return result;
    }

    v39 = (a4 - v17) / v21;
    v40 = (floor(v39) + 0.5);
    if ((v40 & 0x80000000) != 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v56 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v57 = *v16;
        *buf = 134545921;
        v87 = a4;
        v88 = 2053;
        v89 = v57;
        _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.9lf,invalid,minLatitude,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101AF6640();
        return 0;
      }

      return result;
    }

    if (v38 >= v29)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v58 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        LOWORD(v59) = *(a1 + 110);
        v60 = *(a1 + 120) + v59 * *(a1 + 136);
        *buf = 134545921;
        v87 = v20;
        v88 = 2053;
        v89 = v60;
        _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_INFO, "#Warning,DEM,longitude,%{sensitive}.9lf,invalid,maxLongitude,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (!result)
      {
        return result;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 == -1)
      {
        goto LABEL_96;
      }
    }

    else
    {
      if (v40 < v22)
      {
        v41 = v29 * v40;
        *&v42 = v41 + v38;
        v43 = *(a1 + 24);
        if (!v43 || (v44 = *(a1 + 112), v44 <= LODWORD(v42)))
        {
          if (qword_1025D4650 != -1)
          {
            sub_101AF5938();
          }

          v65 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            v87 = v42;
            _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
          }

          result = sub_10000A100(121, 2);
          if (!result)
          {
            return result;
          }

          goto LABEL_186;
        }

        v45 = v5;
        v46 = v38 + 1;
        v47 = v40 + 1;
        v48 = *(v43 + *&v42);
        if (v38 + 1 == v29 && v47 == v22)
        {
          v51 = *(v43 + *&v42);
          v52 = v51;
        }

        else
        {
          if (v46 == v29)
          {
            v50 = v47 * v29 + v38;
            if (v44 > v50)
            {
              v51 = *(v43 + v50);
              v52 = v48;
              v53 = v51;
LABEL_106:
              v66 = v48 != v45;
              v67 = 2;
              if (v48 != v45)
              {
                v67 = 3;
              }

              if (v52 != v45)
              {
                v66 = v67;
              }

              if (v53 != v45)
              {
                v66 |= 4uLL;
              }

              if (v51 != v45)
              {
                v66 |= 8uLL;
              }

              v68 = 1;
              v69 = 0.0;
              v70 = 0.0;
              v71 = 0.0;
              v72 = 0.0;
              switch(v66)
              {
                case 1:
                  v73 = v48;
                  goto LABEL_172;
                case 2:
                  v73 = v52;
                  goto LABEL_172;
                case 3:
                  v68 = 0;
                  v71 = v48;
                  goto LABEL_154;
                case 4:
                  v73 = v53;
                  goto LABEL_172;
                case 5:
                  v68 = 0;
                  v69 = v53;
                  goto LABEL_151;
                case 6:
                  v68 = 0;
                  v71 = v53;
LABEL_154:
                  v69 = v52;
                  goto LABEL_155;
                case 7:
                  v68 = 0;
                  v69 = v53;
                  v72 = v48;
                  v70 = v52;
                  v71 = v53;
                  break;
                case 8:
                  v73 = v51;
LABEL_172:
                  v36 = (v35 + (v73 * v32));
                  goto LABEL_54;
                case 9:
                  v68 = 0;
                  v69 = v51;
LABEL_151:
                  v70 = v48;
                  goto LABEL_158;
                case 10:
                  v68 = 0;
                  v69 = v51;
                  v70 = v52;
LABEL_158:
                  v71 = v69;
                  goto LABEL_159;
                case 11:
                  v68 = 0;
                  v71 = v48;
                  v69 = v51;
                  v70 = v52;
                  goto LABEL_156;
                case 12:
                  v68 = 0;
                  v71 = v53;
                  v69 = v51;
LABEL_155:
                  v70 = v69;
LABEL_156:
                  v72 = v71;
                  break;
                case 13:
                  v68 = 0;
                  v71 = v53;
                  v69 = v51;
                  v70 = v48;
                  goto LABEL_159;
                case 14:
                  v68 = 0;
                  v71 = v53;
                  v69 = v51;
                  v70 = v52;
LABEL_159:
                  v72 = v70;
                  break;
                case 15:
                  v68 = 0;
                  v71 = v53;
                  v69 = v51;
                  v72 = v48;
                  v70 = v52;
                  break;
                default:
                  break;
              }

              LOBYTE(v15) = *(a1 + 80);
              v82 = v15;
              if (vabdd_f64(v72, v82) < 1.0e-12 || vabdd_f64(v71, v82) < 1.0e-12 || vabdd_f64(v70, v82) < 1.0e-12 || vabdd_f64(v69, v82) < 1.0e-12)
              {
                if (qword_1025D4650 != -1)
                {
                  sub_101AF5938();
                }

                v83 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_INFO, "#Warning,DEM,unexpected noData", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101AF655C();
                }

                result = 0;
                *a2 = -9999.0;
                *a3 = 9999.0;
                return result;
              }

              *a2 = -9999.0;
              *a3 = 9999.0;
              if (v68)
              {
                return 1;
              }

              v36 = v35 + ((v47 - v39) * ((v37 - v38) * v70) + (v46 - v37) * v72 * (v47 - v39) + (v46 - v37) * v71 * (v39 - v40) + (v37 - v38) * v69 * (v39 - v40)) / ((v47 - v40) * (v46 - v38)) * v32;
LABEL_54:
              *a2 = v36;
              *a3 = v34;
              return 1;
            }

            if (qword_1025D4650 != -1)
            {
              sub_101AF5938();
            }

            v75 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
            {
              *buf = 134349056;
              v87 = *&v50;
              _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
            }

            result = sub_10000A100(121, 2);
            if (!result)
            {
              return result;
            }

LABEL_186:
            sub_101AF646C();
            return 0;
          }

          if (v47 != v22)
          {
            v76 = v47 * v29;
            *&v77 = v76 + v38;
            if (v44 <= LODWORD(v77))
            {
              if (qword_1025D4650 != -1)
              {
                sub_101AF5938();
              }

              v81 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
              {
                *buf = 134349056;
                v87 = v77;
                _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
              }

              result = sub_10000A100(121, 2);
              if (!result)
              {
                return result;
              }
            }

            else
            {
              *&v78 = v41 + v46;
              if (v44 <= LODWORD(v78))
              {
                if (qword_1025D4650 != -1)
                {
                  sub_101AF5938();
                }

                v84 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                {
                  *buf = 134349056;
                  v87 = v78;
                  _os_log_impl(dword_100000000, v84, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
                }

                result = sub_10000A100(121, 2);
                if (!result)
                {
                  return result;
                }
              }

              else
              {
                *&v79 = v76 + v46;
                if (v44 > LODWORD(v79))
                {
                  v53 = *(v43 + *&v77);
                  v52 = *(v43 + *&v78);
                  v51 = *(v43 + *&v79);
                  goto LABEL_106;
                }

                if (qword_1025D4650 != -1)
                {
                  sub_101AF5938();
                }

                v85 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                {
                  *buf = 134349056;
                  v87 = v79;
                  _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
                }

                result = sub_10000A100(121, 2);
                if (!result)
                {
                  return result;
                }
              }
            }

            goto LABEL_186;
          }

          *&v74 = v41 + v46;
          if (v44 <= LODWORD(v74))
          {
            if (qword_1025D4650 != -1)
            {
              sub_101AF5938();
            }

            v80 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
            {
              *buf = 134349056;
              v87 = v74;
              _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_INFO, "#Warning,DEM,invalidIndex,%{public}zu", buf, 0xCu);
            }

            result = sub_10000A100(121, 2);
            if (!result)
            {
              return result;
            }

            goto LABEL_186;
          }

          v51 = *(v43 + *&v74);
          v52 = v51;
        }

        v53 = v48;
        goto LABEL_106;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v61 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        LOWORD(v62) = *(a1 + 108);
        v63 = *(a1 + 128) + v62 * *(a1 + 136);
        *buf = 134545921;
        v87 = a4;
        v88 = 2053;
        v89 = v63;
        _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.9lf,invalid,maxLatitude,%{sensitive}.9lf", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (!result)
      {
        return result;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 == -1)
      {
LABEL_96:
        v64 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLDigitalElevationModel::getAltitude(CLDEMTile &, double, double, double &, double &)", "%s\n", v64);
        if (v64 != buf)
        {
          free(v64);
        }

        return 0;
      }
    }

    sub_101AF5990();
    goto LABEL_96;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101AF5938();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *buf = 134545665;
    v87 = a4;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.9lf,out of range", buf, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101AF6C20();
    return 0;
  }

  return result;
}

uint64_t *sub_10029F7AC(void *a1, unsigned int *a2)
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
    sub_10029F9E4();
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

void sub_10029F9D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002A8894(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_10029FA6C(uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x79435E50D79435E5 * ((result[1] - **result) >> 4);
    if (v3 < 1)
    {
      v7 = 15 - v3;
      v8 = &v2[-(v7 >> 4)];
      *result = v8;
      v5 = *v8;
      v6 = ~v7 & 0xF;
    }

    else
    {
      v4 = (v2 + ((v3 >> 1) & 0x7FFFFFFFFFFFFFF8));
      *result = v4;
      v5 = *v4;
      v6 = v3 & 0xF;
    }

    result[1] = (v5 + 304 * v6);
  }

  return result;
}

void sub_10029FAE8(uint64_t a1, uint64_t a2, double a3)
{
  if (vabdd_f64(sub_1000137E0(), *(a1 + 120)) < a3)
  {
    *(a2 + 155) = 1;
    v5 = *(a1 + 136);
    *(a2 + 160) = *(a1 + 128) + *(a1 + 144);
    *(a2 + 168) = v5;
  }
}

uint64_t sub_10029FB44(uint64_t a1)
{
  sub_10029FBBC(a1 + 8);
  sub_1002AAB18((a1 + 104));
  sub_1002AAB6C((a1 + 1168));
  sub_10029FD1C(a1 + 2032);
  sub_1002AAD1C(a1);
  return a1;
}

uint64_t sub_10029FBBC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  CNTimeSpan::SetTimeSpan(a1, 0, 0.0);
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 24), 0, 0.0);
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 48), 0, 0.0);
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 72), 0, 0.0);
  *(a1 + 88) = 0x7FF8000000000000;
  return a1;
}

void sub_10029FC4C(uint64_t a1)
{
  *a1 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  sub_10029FBBC(&v5);
  v2 = v8;
  *(a1 + 40) = v7;
  *(a1 + 56) = v2;
  v3 = v10;
  *(a1 + 72) = v9;
  *(a1 + 88) = v3;
  v4 = v6;
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v5, 0, 0.0);
  *(a1 + 120) = v5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 960) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 976) = 0;
  *(a1 + 984) = 0x7FF8000000000000;
  bzero((a1 + 164), 0x318uLL);
}

uint64_t sub_10029FD1C(uint64_t a1)
{
  v2 = sub_10029FBBC(a1);
  *(v2 + 96) = 0;
  *(v2 + 104) = 0x3FF0000000000000;
  *(v2 + 192) = 0;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 392) = 0;
  *(v2 + 400) = 0;
  *(v2 + 496) = 0;
  *(v2 + 504) = 0;
  *(v2 + 512) = 0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 170) = 0u;
  *(v2 + 520) = 0x3FF0000000000000;
  *(v2 + 528) = 0;
  *(v2 + 536) = 0u;
  *(v2 + 552) = 0;
  *(v2 + 560) = 0x3FF0000000000000;
  *(v2 + 584) = 0;
  *(v2 + 568) = 0u;
  *(v2 + 592) = 0;
  *(v2 + 600) = 0x3FE0000000000000;
  *(v2 + 608) = 0x3FE0000000000000;
  *(v2 + 616) = 0;
  sub_1002AAC48(v2);
  return a1;
}

uint64_t sub_10029FDBC(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, v7, a3);
}

uint64_t sub_10029FE48(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 28), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v7 = *(v5 + 33);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, v7, a2, a4);
}

float64_t sub_10029FF60(uint64_t a1, uint64_t a2)
{
  v3 = 0.0;
  if ((*(a1 + 912) & 1) == 0)
  {
    v4 = 0.0;
    if (*(a1 + 904) == 1)
    {
      v4 = *(a1 + 896);
    }

    v3 = *(a2 + 8) - v4;
  }

  v5 = fabs(v3) > 10.0;
  if (*(a1 + 1137) == 1 && (*(a1 + 1136) & 1) != 0)
  {
    v5 = 0;
  }

  if (*(a1 + 659) & 1) == 0 && (*(a1 + 752) - 5) < 0xFFFFFFFE || ((*(a1 + 1138) ^ 1 | v5))
  {
    if (*(a1 + 1096) == 1)
    {
      *(a1 + 1096) = 0;
    }

    *(a1 + 657) = 0;
    v9 = *(a1 + 944);
    v10 = *(a1 + 952);
    *(a1 + 976) = 0;
    v11 = (v10 - v9) >> 3;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v9);
        v9 = (*(a1 + 944) + 8);
        *(a1 + 944) = v9;
        v11 = (*(a1 + 952) - v9) >> 3;
      }

      while (v11 > 2);
    }

    if (v11 == 1)
    {
      v12 = 18;
    }

    else
    {
      if (v11 != 2)
      {
LABEL_96:
        *(a1 + 1128) = 0;
        v40.f64[0] = 0.0;
        *(a1 + 1112) = 0u;
        return v40.f64[0];
      }

      v12 = 36;
    }

    *(a1 + 968) = v12;
    goto LABEL_96;
  }

  v6 = (a1 + 968);
  v7 = *(a1 + 976);
  if (*(a1 + 660) == 1 && *(a1 + 657) == 1 && *(a1 + 1096) == 1)
  {
    *(a1 + 1112) = vsubq_f64(*(a1 + 1112), vcvtq_f64_f32(*(a1 + 1012)));
    *(a1 + 1128) = *(a1 + 1128) - *(a1 + 1020);
    *(a1 + 657) = 0;
    *(a1 + 1096) = 0;
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  v42 = v7;
  if (v7)
  {
    v13 = 0;
    v44 = (a1 + 1144);
    v14 = (a1 + 984);
    while (v8 < 1 || *(a1 + 1108) == 1 && *(a1 + 1104) >= 2)
    {
      v15 = *(*(a1 + 944) + 8 * (*(a1 + 968) / 0x24uLL)) + 112 * (*(a1 + 968) % 0x24uLL);
      if ((~*(v15 + 110) & 0x11) != 0)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10197D0E4();
        }

        v21 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v22 = v44;
          if (*(a1 + 1167) < 0)
          {
            v22 = *v44;
          }

          v23 = *(v15 + 110);
          *buf = 136315650;
          *&buf[4] = v22;
          *&buf[12] = 1024;
          *&buf[14] = v23 & 1;
          *&buf[18] = 1024;
          *&buf[20] = (v23 >> 4) & 1;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "GPSODOM%s,CLIO,rejecting IO,isDeltaPositionValid,%d,isDeltaPositionScaleFactorValid,%d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_10197D0E4();
          }

          v24 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssOdometer::setInputLocationUsingCalibratedIO(GNSS::PerEpochData &)", "%s\n", v24);
          if (v24 != buf)
          {
            free(v24);
          }
        }
      }

      else
      {
        *(a1 + 1112) = vaddq_f64(*(a1 + 1112), vcvtq_f64_f32(*(v15 + 28)));
        *(a1 + 1128) = *(a1 + 1128) + *(v15 + 36);
        v16 = *v15;
        v17 = *(v15 + 32);
        if (*(a1 + 1096) == 1)
        {
          *(a1 + 1000) = *(v15 + 16);
          *(a1 + 1016) = v17;
          *v14 = v16;
          v18 = *(v15 + 48);
          v19 = *(v15 + 64);
          v20 = *(v15 + 80);
          *(a1 + 1079) = *(v15 + 95);
          *(a1 + 1048) = v19;
          *(a1 + 1064) = v20;
          *(a1 + 1032) = v18;
          v13 = 1;
        }

        else
        {
          *(a1 + 1000) = *(v15 + 16);
          *(a1 + 1016) = v17;
          *v14 = v16;
          v25 = *(v15 + 48);
          v26 = *(v15 + 64);
          v27 = *(v15 + 96);
          *(a1 + 1064) = *(v15 + 80);
          *(a1 + 1080) = v27;
          *(a1 + 1032) = v25;
          *(a1 + 1048) = v26;
          v13 = 1;
          *(a1 + 1096) = 1;
        }
      }

      *v6 = vaddq_s64(*v6, xmmword_101C66230);
      sub_10093188C(a1 + 936, 1);
      ++v8;
      v28 = v13;
      if (!*(a1 + 976))
      {
        goto LABEL_47;
      }
    }

    v28 = v13;
  }

  else
  {
    v28 = 0;
    v13 = 1;
  }

LABEL_47:
  *(a1 + 1104) = v8;
  *(a1 + 1108) = 1;
  if (qword_1025D4600 != -1)
  {
    sub_10197D0E4();
  }

  v29 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "GPSODOM,CLIO,processedIOSampleCount,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10197D10C();
  }

  if (v13)
  {
    if (*(a1 + 660) == 1 && !v42 && *(a1 + 1096) == 1 && *(a2 + 8) - *(a1 + 984) <= 5.0)
    {
      *(a1 + 1112) = vaddq_f64(*(a1 + 1112), vcvtq_f64_f32(*(a1 + 1012)));
      *(a1 + 1128) = *(a1 + 1128) + *(a1 + 1020);
      *(a1 + 657) = 1;
      if (qword_1025D4600 != -1)
      {
        sub_10197D0E4();
      }

      v30 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v31 = (a1 + 1144);
        if (*(a1 + 1167) < 0)
        {
          v31 = *v31;
        }

        *buf = 136315138;
        *&buf[4] = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,CLIO,applied last IO sample since there are no current samples to process", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10197D30C();
      }

      v28 = 1;
      goto LABEL_85;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_10197D0E4();
    }

    v32 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v33 = (a1 + 1144);
      if (*(a1 + 1167) < 0)
      {
        v33 = *v33;
      }

      *buf = 136315138;
      *&buf[4] = v33;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "GPSODOM%s,CLIO,cannot use IO,all IO samples are invalid", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197D20C();
    }
  }

  if (!((v42 != 0) | v28 & 1))
  {
    if (qword_1025D4600 != -1)
    {
      sub_10197D0E4();
    }

    v34 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v35 = (a1 + 1144);
      if (*(a1 + 1167) < 0)
      {
        v35 = *v35;
      }

      *buf = 136315138;
      *&buf[4] = v35;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,CLIO,cannot use IO,noIOSamplesAvailableToProcess", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197D40C();
    }

    v28 = 0;
  }

LABEL_85:
  v36 = *(a1 + 944);
  v37 = *(a1 + 952);
  *(a1 + 976) = 0;
  v38 = (v37 - v36) >> 3;
  if (v38 >= 3)
  {
    do
    {
      operator delete(*v36);
      v36 = (*(a1 + 944) + 8);
      *(a1 + 944) = v36;
      v38 = (*(a1 + 952) - v36) >> 3;
    }

    while (v38 > 2);
  }

  if (v38 == 1)
  {
    v39 = 18;
  }

  else
  {
    if (v38 != 2)
    {
      goto LABEL_94;
    }

    v39 = 36;
  }

  *(a1 + 968) = v39;
LABEL_94:
  if ((v28 & 1) == 0)
  {
    goto LABEL_96;
  }

  memset(buf, 0, 24);
  cnnavigation::ENUToECEF();
  cnnavigation::ECEFToLLA();
  v40 = vmulq_f64(v45, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  *(a2 + 56) = v40;
  return v40.f64[0];
}

void sub_1002A07E4(int a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  CLProfilingIdentify();
  if (a4)
  {
    v8 = a4[1];
    if (v8)
    {
      v9 = *a4;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v10 = std::__shared_weak_count::lock(v8);
      if (v10 && v9)
      {
        [objc_msgSend(*(v9 + 16) "silo")];
        if (qword_1025D47F0 != -1)
        {
          sub_101A215FC();
        }

        if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
        {
          v17 = 1;
          v11 = _os_activity_create(dword_100000000, "CL: CLRavenController::HandleVendorLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v11, &state);

          if (qword_1025D47F0 != -1)
          {
            sub_101A21610();
          }

          v12 = qword_1025D47F8;
          if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289538;
            v19 = 0;
            v20 = 2082;
            v21 = "";
            v22 = 2082;
            v23 = "activity";
            v24 = 2050;
            v25 = v9;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRavenController::HandleVendorLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
          }
        }

        else
        {
          v17 = 0;
        }

        sub_1002C34B4(v9, a1, a2, a3);
        if (v17 == 1)
        {
          os_activity_scope_leave(&state);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v10 = 0;
    }

    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v14 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called after controller deletion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      LOWORD(state.opaque[0]) = 0;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLRavenController::HandleVendorLocationNotification_bounce(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void *)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    if (!v10)
    {
      if (!v8)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_31:
    sub_100008080(v10);
    if (!v8)
    {
      return;
    }

LABEL_26:
    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v13 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called with null ctxExpr", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A22478();
  }
}

void sub_1002A0B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state, char a12)
{
  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002A0BA8(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 60);
  if (v3 >= 0.0 && v3 < 360.0)
  {
    return *(a1 + 68) > 0.0;
  }

  return result;
}

void sub_1002A0BDC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018AD8B4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMonitorGpsExternal::onGpsNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018AD8C8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMonitorGpsExternal::onGpsNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  (*(**(a4 + 40) + 32))(*(a4 + 40), a1, *a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002A0DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100022008(v51, a4);
  *(a1 + 248) = 1;
  v7 = v58;
  if (v58 != 1)
  {
    goto LABEL_8;
  }

  *(a1 + 248) = 0;
  if (a3 == 47)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10197B91C();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Server side location can be harvested", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197B944(buf);
      LOWORD(v66) = 0;
      v39 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }

LABEL_8:
    if (sub_100072814(v51))
    {
      if (a3 == 12)
      {
        *(a1 + 67) = v61;
        if (qword_1025D47D0 != -1)
        {
          sub_10197B91C();
        }

        v9 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          if (*(a1 + 67))
          {
            v10 = "enabled";
          }

          else
          {
            v10 = "disabled";
          }

          *buf = 4.8149e-34;
          *v71 = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Got GPS location simulation %s notification", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10197B944(buf);
          v40 = *(a1 + 67) ? "enabled" : "disabled";
          v66 = 136315138;
          *v67 = v40;
          v41 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v41);
          if (v41 != buf)
          {
            free(v41);
          }
        }

        (*(**(a1 + 32) + 40))(*(a1 + 32));
        goto LABEL_38;
      }

      v14 = (*(**(a1 + 32) + 160))(*(a1 + 32));
      v15.n128_u64[0] = *&v51[20];
      if (*&v51[20] >= 0.0)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      if (v16 != 1)
      {
        goto LABEL_38;
      }

      v17 = (*(**(a1 + 32) + 64))(*(a1 + 32), v15);
      if (v17 - *&v52[12] > 5.0)
      {
        goto LABEL_38;
      }

      if (*&v55[4] != 1 && *&v55[8] != 1)
      {
        if (qword_1025D47D0 != -1)
        {
          sub_10197B91C();
        }

        v18 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          *buf = 1.7163e-36;
          *v71 = 0;
          *&v71[4] = 2082;
          *&v71[6] = "";
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:We have no WGS84, anywhere! Only Chinese Stark}", buf, 0x12u);
        }

        goto LABEL_38;
      }

      v19 = *&v51[28];
      if (v56 == 2)
      {
        *buf = 0.0;
        if (sub_1001D381C(buf, *&v51[4], *&v51[12]))
        {
          v19 = v19 + v57 - *buf;
        }
      }

      if (v7)
      {
        v19 = *(&unk_101CB6290 + (~(v19 >> 60) & 8)) + v19;
      }

      *&v51[28] = v19;
      if (qword_1025D47D0 != -1)
      {
        sub_10197B91C();
      }

      v20 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 1.7164e-36;
        *v71 = 0;
        *&v71[4] = 2082;
        *&v71[6] = "";
        *&v71[14] = 1040;
        *&v71[16] = 156;
        *&v71[20] = 2097;
        *&v71[22] = v51;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onGps, location:%{private, location:CLDaemonLocation}.*P}", buf, 0x22u);
      }

      if (a3 <= 0x2F && ((1 << a3) & 0x800000000011) != 0)
      {
        v21 = *&v52[12];
        if (*&v52[12] - *(a1 + 168) > 180.0)
        {
          if (*&v52[12] - *(a1 + 80) > 180.0)
          {
            if (qword_1025D47D0 != -1)
            {
              sub_10197B91C();
            }

            v22 = qword_1025D47D8;
            if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
            {
              v23 = *&v52[12] - *(a1 + 80);
              v24 = *(a1 + 72);
              *buf = 3.8521e-34;
              *v71 = v23;
              *&v71[8] = 1024;
              *&v71[10] = v24;
              _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "GPS dropped out for %.3fs while warming - resetting count (from %d)", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10197B944(buf);
              v43 = *&v52[12] - *(a1 + 80);
              v44 = *(a1 + 72);
              v66 = 134218240;
              *v67 = v43;
              *&v67[8] = 1024;
              *&v67[10] = v44;
              v45 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v45);
              if (v45 != buf)
              {
                free(v45);
              }
            }

            *(a1 + 72) = 0;
            (*(*a1 + 112))(a1, 0);
            v21 = *&v52[12];
          }

          *(a1 + 80) = v21;
          ++*(a1 + 72);
        }

        v25 = sub_100932EC8(a1 + 264, v51, v7);
        if (v25)
        {
          if (qword_1025D47D0 != -1)
          {
            sub_10197B91C();
          }

          v27 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "Anomalous GPS jump detected - distance/speed thresholds exceeded", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10197B944(buf);
            LOWORD(v66) = 0;
            v42 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v42);
            if (v42 != buf)
            {
              free(v42);
            }
          }
        }

        if (*(a1 + 96) == *&v51[4] && *(a1 + 104) == *&v51[12] && ((v28 = *(a1 + 112), v28 <= 50.0) || v28 <= *&v51[20]))
        {
          if (qword_1025D47D0 != -1)
          {
            sub_10197B91C();
          }

          v34 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
          {
            v35 = *(a1 + 96);
            v36 = *(a1 + 104);
            v37 = *(a1 + 112);
            v38 = *(a1 + 88);
            *buf = 4.0028e-34;
            *v71 = v35;
            *&v71[8] = 2053;
            *&v71[10] = v36;
            *&v71[18] = 2048;
            *&v71[20] = v37;
            *&v71[28] = 1024;
            v72 = v38;
            _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "location is clamped at <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f - count %d", buf, 0x26u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10197B944(buf);
            v46 = *(a1 + 96);
            v47 = *(a1 + 104);
            v48 = *(a1 + 112);
            v49 = *(a1 + 88);
            v66 = 134546433;
            *v67 = v46;
            *&v67[8] = 2053;
            *&v67[10] = v47;
            *&v67[18] = 2048;
            *&v67[20] = v48;
            v68 = 1024;
            v69 = v49;
            v50 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v50);
            if (v50 != buf)
            {
              free(v50);
            }
          }

          ++*(a1 + 88);
        }

        else
        {
          *(a1 + 88) = 0;
        }

        v26.n128_u64[0] = *&v51[44];
        (*(*a1 + 112))(a1, *&v51[44] >= 6.7, v26);
        (*(**(a1 + 48) + 16))(*(a1 + 48), v51);
        if ((*(**(a1 + 32) + 184))(*(a1 + 32), v51))
        {
          v29 = *v52;
          *(a1 + 172) = *&v52[16];
          *(a1 + 156) = v29;
          v30 = *&v51[32];
          *(a1 + 140) = *&v51[48];
          *(a1 + 124) = v30;
          *(a1 + 232) = *&v55[12];
          *(a1 + 220) = *v55;
          v31 = v53;
          *(a1 + 204) = v54;
          *(a1 + 188) = v31;
          v32 = *&v51[16];
          *(a1 + 92) = *v51;
          *(a1 + 108) = v32;
          (*(**(a1 + 48) + 24))(*(a1 + 48), a2, a3, v51, v25);
          goto LABEL_38;
        }

        if (qword_1025D47D0 != -1)
        {
          sub_10197B91C();
        }

        v33 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "on gps notification. Pos harvesting not eligible", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_10197B91C();
      }

      v11 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        *buf = 1.5283e-36;
        *v71 = v53;
        *&v71[4] = 2053;
        *&v71[6] = *&v51[4];
        *&v71[14] = 2053;
        *&v71[16] = *&v51[12];
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#Warning,invalid,type,%{public}d,lat,%{sensitive}.7f,lon,%{sensitive}.7f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10197B944(buf);
        v66 = 67240705;
        *v67 = v53;
        *&v67[4] = 2053;
        *&v67[6] = *&v51[4];
        *&v67[14] = 2053;
        *&v67[16] = *&v51[12];
        v12 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v12);
        goto LABEL_31;
      }
    }

    goto LABEL_38;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_10197B91C();
  }

  v13 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Location is from test equipment, do not harvest", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
LABEL_30:
    sub_10197B944(buf);
    LOWORD(v66) = 0;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMonitorGps::onGpsNotification(int, const CLLocationProvider_Type::Notification, const CLLocationProvider_Type::NotificationData &)", "%s\n", v12);
LABEL_31:
    if (v12 != buf)
    {
      free(v12);
    }
  }

LABEL_38:

  if (v64)
  {
    sub_100008080(v64);
  }

  if (v63 < 0)
  {
    operator delete(__p);
  }

  if (v60)
  {
    sub_100008080(v60);
  }

  if (v59)
  {
    sub_100008080(v59);
  }
}

void sub_1002A1C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A1C88(uint64_t result, int a2)
{
  if (*(result + 68) != a2)
  {
    v2 = result;
    *(result + 68) = a2;
    if (qword_1025D47D0 != -1)
    {
      sub_10197B988();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v4 = *(v2 + 68);
      v5[0] = 68289283;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 1025;
      v9 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:vehicular speed achieved, vehicularSpeedAchieved:%{private}hhd}", v5, 0x18u);
    }

    return (*(**(v2 + 32) + 40))(*(v2 + 32));
  }

  return result;
}

__n128 sub_1002A1DA4(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 352);
  (*(**(a1 + 136) + 80))(*(a1 + 136));
  if (sub_1002A21A8(a1 + 1080))
  {
    v4 = *(a2 + 76) - *(a1 + 892);
    if (v4 < 3.0)
    {
      sub_1002A21B8(a1 + 1080, v4);
    }

    if ((sub_1002AC764(a1 + 1080) & 1) == 0 && (*(**(a1 + 48) + 96))(*(a1 + 48)))
    {
      sub_1004F4C70(a1 + 1080);
    }
  }

  v5 = *(a2 + 16);
  *(a1 + 816) = *a2;
  *(a1 + 832) = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 80);
  *(a1 + 880) = *(a2 + 64);
  *(a1 + 896) = v8;
  *(a1 + 848) = v6;
  *(a1 + 864) = v7;
  result = *(a2 + 96);
  v10 = *(a2 + 112);
  v11 = *(a2 + 128);
  *(a1 + 956) = *(a2 + 140);
  *(a1 + 928) = v10;
  *(a1 + 944) = v11;
  *(a1 + 912) = result;
  return result;
}

uint64_t sub_1002A1EA0(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    result = sub_1002CE758(a1);
    if (*(a1 + 192) < 0.0 || (result = (*(**(a1 + 80) + 104))(*(a1 + 80)), result))
    {
      v5 = *(a2 + 16);
      *(a1 + 172) = *a2;
      *(a1 + 188) = v5;
      v6 = *(a2 + 32);
      v7 = *(a2 + 48);
      v8 = *(a2 + 80);
      *(a1 + 236) = *(a2 + 64);
      *(a1 + 252) = v8;
      *(a1 + 204) = v6;
      *(a1 + 220) = v7;
      v9 = *(a2 + 96);
      v10 = *(a2 + 112);
      v11 = *(a2 + 128);
      *(a1 + 312) = *(a2 + 140);
      *(a1 + 284) = v10;
      *(a1 + 300) = v11;
      *(a1 + 268) = v9;
    }

    else if (*(a2 + 76) - *(a1 + 160) > 900.0)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101AEEF1C();
      }

      v12 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 176);
        v14 = *(a1 + 184);
        v15 = *(a2 + 76) - *(a1 + 160);
        *buf = 134546177;
        v20 = v13;
        v21 = 2053;
        v22 = v14;
        v23 = 2048;
        v24 = v15;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#proactive Did not achieve vehicular speed from <%{sensitive}+.8f,%{sensitive}+.8f> in %.3fs, turning off proactive harvesting", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D47D0 != -1)
        {
          sub_101AEEEF4();
        }

        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLPolicyProactive::updatePolicyProactiveFromGps(const CLDaemonLocation &)", "%s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      sub_10003F6B0(a1, 0);
      v16 = *(a1 + 328);
      v17 = (*(**(a1 + 48) + 64))(*(a1 + 48));
      return (*(*v16 + 24))(v16, v17 + 3600.0);
    }
  }

  return result;
}

double sub_1002A21B8(uint64_t a1, double result)
{
  if (*(a1 + 8) > 0.0)
  {
    result = *(a1 + 56) + result;
    *(a1 + 56) = result;
  }

  return result;
}

void sub_1002A21D4(uint64_t a1, int *a2, int *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLPipelineLocationProvider::onGpsControllerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPipelineLocationProvider::onGpsControllerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1002A23A0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002A23A0(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  if ([*(a1 + 152) indoord])
  {
    if (*a3 > 5 || ((1 << *a3) & 0x39) == 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B1AC14();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v9 = *a3;
        v10[0] = 67240192;
        v10[1] = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Unexpected notification %{public}d from gps", v10, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B1D41C(a3);
      }
    }

    else
    {

      sub_1010A350C(a1, a4, (a4 + 40));
    }
  }
}

uint64_t sub_1002A24FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  if (*a3 >= 0.0)
  {
    v4 = *(a3 + 8);
    if (v4 >= 0.0)
    {
      v5 = *(a3 + 16);
      if (v5 >= 0.0)
      {
        v25 = 0u;
        *&v24[16] = 0u;
        *v24 = 0u;
        *&v23[32] = 0u;
        *&v23[16] = 0u;
        *v23 = 0u;
        v14[0] = *(a2 + 76);
        *&v14[1] = v4;
        v6 = *(a2 + 28);
        *&v14[2] = v5;
        v14[3] = v6;
        v15 = *(a2 + 44);
        v16 = v15;
        v7 = *(a2 + 52);
        v17 = v3;
        v18 = v7;
        v8 = *(a3 + 344);
        v19 = *(a3 + 24);
        v20 = v8;
        v9 = *(a3 + 352);
        v21 = 0;
        v22 = v9;
        *v23 = *(a2 + 96);
        v10 = *(a3 + 496);
        v11 = *(a3 + 360);
        *&v23[8] = *(a3 + 376);
        *&v23[24] = v10;
        v12 = *(a2 + 68);
        *&v23[40] = *(a2 + 60) * 0.0174532924;
        *v24 = v12;
        *&v24[8] = v11;
        v13 = *(a3 + 276);
        *&v24[28] = *(result + 948);
        DWORD2(v25) = v13;
        v26 = *(a3 + 280);
        sub_1002A2FA4(result, v14);
      }
    }
  }

  return result;
}

uint64_t sub_1002A2864(uint64_t a1, _OWORD *a2)
{
  v2 = a2[9];
  v9[8] = a2[8];
  v9[9] = v2;
  v3 = a2[11];
  v9[10] = a2[10];
  v9[11] = v3;
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v5 = a2[7];
  v9[6] = a2[6];
  v9[7] = v5;
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = a2[3];
  v9[2] = a2[2];
  v9[3] = v7;
  return sub_1000CE87C(a1, 1, v9);
}

uint64_t sub_1002A28BC(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[16] assertInside];
  v8 = *(*a4 + 12);

  return v8(a4, a1, a2, a3);
}

void sub_1002A2938(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 648);
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  *(a1 + 432) = *(a2 + 32);
  *(a1 + 448) = v6;
  *(a1 + 400) = v4;
  *(a1 + 416) = v5;
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  v9 = *(a2 + 112);
  *(a1 + 496) = *(a2 + 96);
  *(a1 + 512) = v9;
  *(a1 + 464) = v7;
  *(a1 + 480) = v8;
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 176);
  *(a1 + 560) = *(a2 + 160);
  *(a1 + 576) = v12;
  *(a1 + 528) = v10;
  *(a1 + 544) = v11;
  *(a1 + 592) = *(a2 + 164);
  sub_1002A2CD4(a1, a2);
  if (*(a1 + 648) >= 21)
  {
    v13 = *(a2 + 120);
    if (v13 > 0.0 && v13 <= 20.0)
    {
      v14 = *(a1 + 592);
      if (v14 > 4 || ((1 << v14) & 0x19) == 0)
      {
        v15 = *(a2 + 112);
        if (v15 < *(a1 + 608))
        {
          *(a1 + 608) = v15;
        }

        if (v15 > *(a1 + 616))
        {
          *(a1 + 616) = v15;
        }
      }
    }
  }
}

void sub_1002A2A10(uint64_t a1, uint64_t a2, int *a3, __int128 *a4)
{
  if (*a3 == 4 || *a3 == 2)
  {
    sub_1002A2FF8(a1 + 5240, a4);

    sub_1002A2B60(a1 + 6648, a4);
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v9 = *a3;
      v10[0] = 67109120;
      v10[1] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "MotionStateMediator received unhandled odometer notification, %d", v10, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019037D8(a3);
    }
  }
}

uint64_t *sub_1002A2B60(uint64_t a1, __int128 *a2)
{
  sub_1002A2BAC((a1 + 32), a2);
  result = *(a1 + 472);
  if (result)
  {

    return sub_1007467C4(result);
  }

  return result;
}

void sub_1002A2BAC(void *a1, __int128 *a2)
{
  v3 = (*(**a1 + 120))(*a1);

  sub_1002A2FF8(v3, a2);
}

uint64_t sub_1002A2C08(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x40000000FLL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024C4B80;
  if (a2 > 0xF)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 5)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_1002A2CD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136);
  if (v4 >= 0x19)
  {
    v5 = *(a1 + 128);
    v6 = *(*(*(a1 + 104) + 8 * (v5 / 0x15)) + 192 * (v5 % 0x15) + 120);
    if (v6 > 0.0 && v6 <= 20.0)
    {
      --*(a1 + 600);
    }

    *(a1 + 128) = v5 + 1;
    *(a1 + 136) = v4 - 1;
    sub_10023F9C4(a1 + 96, 1);
  }

  sub_1002BFE4C((a1 + 96), a2);
  v8 = *(a2 + 120);
  if (v8 > 0.0 && v8 <= 20.0)
  {
    ++*(a1 + 600);
  }
}

void *sub_1002A2DA4(void *result)
{
  if (qword_102637C10 != result)
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

    result = v1[10];
    if (result)
    {
      v11 = *(*result + 8);

      return v11();
    }
  }

  return result;
}

void sub_1002A2FF8(uint64_t a1, __int128 *a2)
{
  v3 = a2[9];
  v33 = a2[8];
  v34 = v3;
  v4 = a2[11];
  v35 = a2[10];
  v36 = v4;
  v5 = a2[5];
  v29 = a2[4];
  v30 = v5;
  v6 = a2[7];
  v31 = a2[6];
  v32 = v6;
  v7 = a2[1];
  v25 = *a2;
  v26 = v7;
  v8 = a2[3];
  v27 = a2[2];
  v28 = v8;
  v9 = *(a1 + 312);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v25);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = v10 + *(a1 + 48) - 1;
    v12 = *(a1 + 24);
    v13 = *(v12[v11 / 0x15] + 24 * (v11 % 0x15));
    if (v13 > *&v25)
    {
      v14 = *(a1 + 32);
      *(a1 + 56) = 0;
      v15 = (v14 - v12) >> 3;
      if (v15 >= 3)
      {
        do
        {
          operator delete(*v12);
          v16 = *(a1 + 32);
          v12 = (*(a1 + 24) + 8);
          *(a1 + 24) = v12;
          v15 = (v16 - v12) >> 3;
        }

        while (v15 > 2);
      }

      if (v15 == 1)
      {
        v17 = 10;
      }

      else
      {
        if (v15 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v18 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v38 = v25;
            v39 = 2048;
            v40 = v13;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019038CC();
          }

          goto LABEL_18;
        }

        v17 = 21;
      }

      *(a1 + 48) = v17;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1002BFE4C((a1 + 16), &v25);
  v19 = v34;
  *(a1 + 224) = v33;
  *(a1 + 240) = v19;
  v20 = v36;
  *(a1 + 256) = v35;
  *(a1 + 272) = v20;
  v21 = v30;
  *(a1 + 160) = v29;
  *(a1 + 176) = v21;
  v22 = v32;
  *(a1 + 192) = v31;
  *(a1 + 208) = v22;
  v23 = v26;
  *(a1 + 96) = v25;
  *(a1 + 112) = v23;
  v24 = v28;
  *(a1 + 128) = v27;
  *(a1 + 144) = v24;
}

uint64_t sub_1002A324C(void *a1)
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

uint64_t sub_1002A3274(uint64_t a1, uint64_t a2, char *a3)
{
  sub_1002A3330(a2, v8);
  if (*(a1 + 1138) == 1)
  {
    sub_10029FF60(a1, v8);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  sub_1002A3400(a1, v8, a1 + 760, a3);
  if (v8[216] == 1)
  {
    *(a2 + 160) = v9;
    *(a2 + 176) = v10;
  }

  return sub_100134860(&v11);
}

double sub_1002A3330@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 184);
  *a2 = (v2 * 1000000000.0);
  *(a2 + 8) = *(a1 + 76);
  *(a2 + 16) = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = *(a1 + 4);
  v3 = *(a1 + 476);
  *(a2 + 72) = *(a1 + 28) + v3;
  *(a2 + 80) = v3;
  *(a2 + 88) = *(a1 + 472);
  v4 = *(a1 + 36);
  *(a2 + 96) = *(a1 + 20);
  *(a2 + 104) = v4;
  *(a2 + 112) = vcvtq_f64_f32(*(a1 + 200));
  *(a2 + 128) = *(a1 + 208);
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  *(a2 + 152) = *(a1 + 44);
  *(a2 + 168) = 1;
  *(a2 + 176) = *(a1 + 60);
  *(a2 + 192) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 200) = _Q0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0;
  *(a2 + 280) = 1065353216;
  *&result = 0x100000005;
  *(a2 + 288) = 0x100000005;
  *(a2 + 296) = 0;
  return result;
}

void sub_1002A3400(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v49 = a1 + 336;
  (*(*(a1 + 336) + 16))();
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = (a1 + 32);
    v10 = a1 + 352;
    if (*(a1 + 665) == 1)
    {
      v11 = *(a1 + 664) ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v15 = sub_1002A3998(v8, a2, a1 + 32, a3, (a1 + 920), *(a1 + 656), a1 + 352, (a1 + 752), (a1 + 756), v11 & 1, (a1 + 672), *a4);
    if (!v15)
    {
      v10 = a2;
    }

    v16 = *v10;
    v17 = *(v10 + 16);
    v18 = *(v10 + 48);
    *(a1 + 64) = *(v10 + 32);
    *(a1 + 80) = v18;
    *v9 = v16;
    *(a1 + 48) = v17;
    v19 = *(v10 + 64);
    v20 = *(v10 + 80);
    v21 = *(v10 + 112);
    *(a1 + 128) = *(v10 + 96);
    *(a1 + 144) = v21;
    *(a1 + 96) = v19;
    *(a1 + 112) = v20;
    v22 = *(v10 + 128);
    v23 = *(v10 + 144);
    v24 = *(v10 + 176);
    *(a1 + 192) = *(v10 + 160);
    *(a1 + 208) = v24;
    *(a1 + 160) = v22;
    *(a1 + 176) = v23;
    v25 = *(v10 + 192);
    v26 = *(v10 + 208);
    v27 = *(v10 + 224);
    *(a1 + 272) = *(v10 + 240);
    *(a1 + 240) = v26;
    *(a1 + 256) = v27;
    *(a1 + 224) = v25;
    if (v9 != v10)
    {
      *(a1 + 312) = *(v10 + 280);
      sub_100294BE4((a1 + 280), *(v10 + 264), 0);
    }

    *(a1 + 320) = *(v10 + 288);
    if (*(a1 + 658) != 1)
    {
      goto LABEL_25;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10197D50C();
    }

    v28 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v31 = *(a1 + 48);
      v47 = *(a1 + 64);
      v48 = *(a1 + 56);
      v46 = *(a1 + 80);
      v32 = LocationLogEncryptionDataSize();
      v33 = LocationLogEncryptionEncryptData();
      v34 = LocationLogEncryptionDataSize();
      v35 = LocationLogEncryptionEncryptData();
      v69 = v33;
      v37 = *(a1 + 104);
      v36 = *(a1 + 112);
      v71 = v34;
      v73 = v35;
      v38 = *(a1 + 128);
      v39 = *(a1 + 136);
      v75 = v37;
      v79 = v38;
      v41 = *(a1 + 144);
      v40 = *(a1 + 152);
      v81 = v39;
      v42 = *(a1 + 160);
      v83 = v41;
      LODWORD(v41) = *(a1 + 176);
      v87 = v42;
      v43 = *(a1 + 192);
      v91 = v41;
      v95 = v43;
      v44 = *(a1 + 216);
      v99 = *(a1 + 208);
      v101 = v44;
      v103 = *(a1 + 320);
      v45 = *(a2 + 232);
      v107 = *(a2 + 224);
      v109 = v45;
      v111 = *(a2 + 240);
      *&v51[6] = "";
      *&v51[4] = 2082;
      v52 = 2082;
      v53 = "PerEpochData";
      v55 = v29;
      v57 = v30;
      v59 = v31;
      v61 = v48;
      v63 = v47;
      v65 = v46;
      v67 = v32;
      v66 = 1040;
      v70 = 1040;
      v68 = 2098;
      v72 = 2098;
      v74 = 2049;
      v77 = v36;
      v85 = v40;
      v89 = *(a1 + 172);
      v93 = *(a1 + 184);
      v97 = *(a1 + 200);
      v105 = v15;
      v54 = 2050;
      v56 = 2050;
      v58 = 2050;
      v60 = 2050;
      v62 = 2050;
      v76 = 2050;
      v78 = 2050;
      v80 = 2050;
      v82 = 2050;
      v84 = 2050;
      v86 = 2050;
      v92 = 2050;
      v94 = 2050;
      v98 = 2050;
      v100 = 2050;
      v106 = 2050;
      v108 = 2050;
      v110 = 2050;
      v64 = 1026;
      v88 = 1026;
      v90 = 1026;
      v96 = 1026;
      v102 = 1026;
      v104 = 1026;
      v112 = 1026;
      v113 = *(a2 + 216);
      *buf = 68296963;
      *v51 = 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GPSODOM, event:%{public, location:escape_only}s, gpsNs:%{public}lld, cfTime:%{public}f, cfTimeGps:%{public}f, machTime:%{public}f, machContinuousTime:%{public}f, posValid:%{public}hhd, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, altitude:%{private}f, undulation:%{public}f, hunc:%{public}f, vunc:%{public}f, semiMaj:%{public}f, semiMin:%{public}f, semiMajAz:%{public}f, reliability:%{public}d, speedValid:%{public}hhd, speed:%{public}f, speedUnc:%{public}f, courseValid:%{public}hhd, course:%{public}f, courseUnc:%{public}f, gnssContent:%{public}d, ravenPosUsed:%{public}hhd, odometry:%{public}f, deltaDist:%{public}f, deltaDistUnc:%{public}f, odometryValid:%{public}hhd}", buf, 0x124u);
      *(a1 + 656) = 0;
    }

    else
    {
LABEL_25:
      *(a1 + 656) = 0;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10197D50C();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v13 = (a1 + 1144);
      if (*(a1 + 1167) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315138;
      *v51 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "GPSODOM%s,no odometer interface object", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10197CEB8();
      }

      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLGnssOdometer::updateOdometer(GNSS::PerEpochData &, const CLMotionActivity &, const BOOL &)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  (*(*v49 + 24))(v49);
}

void sub_1002A3960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1002A3998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, int *a8, int *a9, char a10, __int128 *a11, char a12)
{
  v19 = a1 + 48;
  if (*a4 != *(a1 + 48) || *a8 != *(a1 + 312) || *a9 != *(a1 + 316) || *a5 != *(a1 + 184))
  {
    sub_1002C9350(a1, a4, a8, a9, a5);
    *v19 = *a4;
    v20 = *(a4 + 16);
    v21 = *(a4 + 32);
    v22 = *(a4 + 64);
    *(v19 + 48) = *(a4 + 48);
    *(v19 + 64) = v22;
    *(v19 + 16) = v20;
    *(v19 + 32) = v21;
    v23 = *(a4 + 80);
    v24 = *(a4 + 96);
    v25 = *(a4 + 112);
    *(v19 + 128) = *(a4 + 128);
    *(v19 + 96) = v24;
    *(v19 + 112) = v25;
    *(v19 + 80) = v23;
    *(a1 + 312) = *a8;
    *(a1 + 316) = *a9;
    *(a1 + 184) = *a5;
  }

  __asm { FMOV            V2.2D, #-1.0 }

  *(a2 + 224) = _Q2;
  *(a2 + 240) = 0xBFF0000000000000;
  *(a2 + 216) = 0;
  if (!a6)
  {
    v38 = *(a2 + 96);
    if (v38 >= 0 && ((v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v38 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v41 = *(a2 + 104);
      if (v41 > 0.0)
      {
        v29 = 0;
        if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(a2 + 96) > 100.0)
        {
          return v29;
        }

        v112 = _Q2;
        if (!sub_10002807C(*(a2 + 56), *(a2 + 64)))
        {
          goto LABEL_27;
        }

        if (qword_1025D4650 != -1)
        {
          sub_101B3FE80();
        }

        v42 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          v43 = (a1 + 624);
          if (*(a1 + 647) < 0)
          {
            v43 = *v43;
          }

          buf = 136315138;
          v122 = v43;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_ERROR, "GPSODOM%s,Null Island not allowed, epochData", &buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B402AC();
        }
      }
    }

    return 0;
  }

  v112 = _Q2;
  v29 = *(a1 + 16) != 0;
  v30 = *(a7 + 96);
  v32 = (v30 < 0 || ((v30 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v30 - 1) > 0xFFFFFFFFFFFFELL;
  if (v32 || (v33 = *(a7 + 104), v33 <= 0.0) || (*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(a7 + 96) > 100.0)
  {
    v29 = 0;
  }

  if (sub_10002807C(*(a7 + 56), *(a7 + 64)))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE80();
    }

    v34 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v35 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v35 = *v35;
      }

      buf = 136315138;
      v122 = v35;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_ERROR, "GPSODOM%s,Null Island not allowed, ravenPos", &buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B403AC();
    }

LABEL_27:
    v29 = 0;
  }

  v117 = -1.0;
  v36 = (a2 + 16);
  if (sub_1002A47A0(a1, &v117, *(a2 + 16)))
  {
    if (*(a1 + 184) == 19 || CLMotionActivity::isTypeSwimming())
    {
      v111 = 1;
      v37 = 600.0;
    }

    else
    {
      v111 = 0;
      v37 = 180.0;
    }

    if (a10)
    {
      v44 = v117;
      if (*(a1 + 24) && v117 > 600.0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101B3FE94();
        }

        v45 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v46 = (a1 + 624);
          if (*(a1 + 647) < 0)
          {
            v46 = *v46;
          }

          buf = 136315394;
          v122 = v46;
          v123 = 2050;
          v124 = v44;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "#Warning GPSODOM%s,rhythmic mode exceeded max interval,%{public}lf", &buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B405B4();
        }

        sub_101130168(*(a1 + 24));
      }

LABEL_76:
      if (*(a3 + 48) == 1)
      {
        sub_1002A467C(a3, v116);
      }

      v115 = 0.0;
      if (a6 && *(a1 + 16))
      {
        sub_1002A467C(a7, &buf);
        v36 = (a7 + 16);
      }

      else
      {
        sub_1002A467C(a2, &buf);
      }

      v115 = vabdd_f64(*v36, *(a3 + 16));
      v55 = (a1 + 320);
      v56 = *(a2 + 48);
      v58 = *a2;
      v57 = *(a2 + 16);
      *(a1 + 352) = *(a2 + 32);
      *(a1 + 368) = v56;
      *(a1 + 320) = v58;
      *(a1 + 336) = v57;
      v59 = *(a2 + 112);
      v61 = *(a2 + 64);
      v60 = *(a2 + 80);
      *(a1 + 416) = *(a2 + 96);
      *(a1 + 432) = v59;
      *(a1 + 384) = v61;
      *(a1 + 400) = v60;
      v62 = *(a2 + 176);
      v64 = *(a2 + 128);
      v63 = *(a2 + 144);
      *(a1 + 480) = *(a2 + 160);
      *(a1 + 496) = v62;
      *(a1 + 448) = v64;
      *(a1 + 464) = v63;
      v66 = *(a2 + 208);
      v65 = *(a2 + 224);
      v67 = *(a2 + 192);
      *(a1 + 560) = *(a2 + 240);
      *(a1 + 528) = v66;
      *(a1 + 544) = v65;
      *(a1 + 512) = v67;
      if (a1 + 320 != a2)
      {
        *(a1 + 600) = *(a2 + 280);
        sub_100294BE4((a1 + 568), *(a2 + 264), 0);
      }

      *(a1 + 608) = *(a2 + 288);
      v68 = *(a1 + 32);
      if (v68 && (a10 & 1) == 0)
      {
        if (sub_10100405C(v68, &buf))
        {
          *(a2 + 224) = sub_101003F74(*(a1 + 32));
          v69 = sub_101003F84(*(a1 + 32));
          *(a2 + 232) = v69;
          if (v69 < 0.0 || *(a3 + 48) != 1)
          {
LABEL_92:
            if (v69 >= 0.0 && !sub_1002A4AEC(a1, v44, v69))
            {
              if (qword_1025D4650 != -1)
              {
                sub_101B3FE94();
              }

              v70 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                v71 = (a1 + 624);
                if (*(a1 + 647) < 0)
                {
                  v71 = *v71;
                }

                LODWORD(v118) = 136315138;
                *(&v118 + 4) = v71;
                _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "#Warning GPSODOM%s,maximium speed exceeded resetting smoother", &v118, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101B406BC();
              }

              sub_101003DC0(*(a1 + 32));
LABEL_121:
              v29 = 0;
LABEL_122:
              *(a2 + 224) = v112;
              *(a2 + 240) = 0xBFF0000000000000;
              return v29;
            }

            goto LABEL_185;
          }

          v114 = 0;
          sub_10000EC00(&v118, "");
          *(a2 + 240) = sub_100F32780(v116, &buf, &v115, &v114 + 1, &v114);
          if (SBYTE7(v119) < 0)
          {
            operator delete(v118);
          }
        }

        v69 = *(a2 + 232);
        goto LABEL_92;
      }

      if (*(a1 + 8) && (a10 & 1) == 0)
      {
        sub_101164CD4();
        *(a2 + 224) = sub_1002A4ADC(*(a1 + 8));
        v72 = sub_100062F5C(*(a1 + 8));
        *(a2 + 232) = v72;
        if (v72 >= 0.0 && *(a3 + 48) == 1)
        {
          v114 = 0;
          sub_10000EC00(&v118, "");
          *(a2 + 240) = sub_100F32780(v116, &buf, &v115, &v114 + 1, &v114);
          if (SBYTE7(v119) < 0)
          {
            operator delete(v118);
          }

          v72 = *(a2 + 232);
        }

        if (v72 >= 0.0 && !sub_1002A4AEC(a1, v44, v72))
        {
          if (qword_1025D4650 != -1)
          {
            sub_101B3FE94();
          }

          v73 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            v74 = (a1 + 624);
            if (*(a1 + 647) < 0)
            {
              v74 = *v74;
            }

            LODWORD(v118) = 136315138;
            *(&v118 + 4) = v74;
            _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEFAULT, "#Warning,GPSODOM%s,maximium speed exceeded resetting subsampler", &v118, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B407BC();
          }

          sub_101165740(*(a1 + 8));
          goto LABEL_121;
        }

LABEL_185:
        *(a2 + 216) = *(a2 + 240) > 0.0;
        return v29;
      }

      v75 = *(a1 + 16);
      if (v75 && (a10 & 1) == 0)
      {
        if (a6)
        {
          sub_100FBFC54(v75, 1, v111, v50, v51, v52, v53, v54, *(a7 + 56), *(a7 + 64), *(a7 + 72), *(a7 + 96), *(a7 + 104), *(a7 + 152), *(a7 + 160), *(a7 + 176), *(a7 + 184), *(a7 + 16));
          v76 = *a7;
          v77 = *(a7 + 16);
          v78 = *(a7 + 48);
          *(a1 + 352) = *(a7 + 32);
          *(a1 + 368) = v78;
          *v55 = v76;
          *(a1 + 336) = v77;
          v79 = *(a7 + 64);
          v80 = *(a7 + 80);
          v81 = *(a7 + 112);
          *(a1 + 416) = *(a7 + 96);
          *(a1 + 432) = v81;
          *(a1 + 384) = v79;
          *(a1 + 400) = v80;
          v82 = *(a7 + 128);
          v83 = *(a7 + 144);
          v84 = *(a7 + 176);
          *(a1 + 480) = *(a7 + 160);
          *(a1 + 496) = v84;
          *(a1 + 448) = v82;
          *(a1 + 464) = v83;
          v85 = *(a7 + 192);
          v86 = *(a7 + 208);
          v87 = *(a7 + 224);
          *(a1 + 560) = *(a7 + 240);
          *(a1 + 528) = v86;
          *(a1 + 544) = v87;
          *(a1 + 512) = v85;
          if (v55 != a7)
          {
            *(a1 + 600) = *(a7 + 280);
            sub_100294BE4((a1 + 568), *(a7 + 264), 0);
          }

          v88 = 0;
          *(a1 + 608) = *(a7 + 288);
        }

        else
        {
          v88 = a12;
          if (a12)
          {
            v96 = 2;
          }

          else
          {
            v96 = 1;
          }

          sub_100FBFC54(v75, v96, v111, v50, v51, v52, v53, v54, *(a2 + 56), *(a2 + 64), *(a2 + 72), *(a2 + 96), *(a2 + 104), *(a2 + 152), *(a2 + 160), *(a2 + 176), *(a2 + 184), *(a2 + 16));
        }

        *(a2 + 224) = sub_1002A4ADC(*(a1 + 16));
        v97 = sub_100062F5C(*(a1 + 16));
        *(a2 + 232) = v97;
        if (v97 >= 0.0 && *(a3 + 48) == 1)
        {
          if (CLMotionActivity::isWalking(v19))
          {
            v98 = 1;
          }

          else
          {
            v106 = *(a1 + 184);
            v98 = v106 == 15 || v106 == 24;
          }

          LOBYTE(v118) = v98;
          HIBYTE(v114) = v88;
          *(a2 + 240) = sub_100F32780(v116, &buf, &v115, &v114 + 1, &v118);
          v97 = *(a2 + 232);
        }

        if (v97 >= 0.0 && !sub_1002A4AEC(a1, v44, v97))
        {
          if (qword_1025D4650 != -1)
          {
            sub_101B3FE94();
          }

          v109 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            v110 = (a1 + 624);
            if (*(a1 + 647) < 0)
            {
              v110 = *v110;
            }

            LODWORD(v118) = 136315138;
            *(&v118 + 4) = v110;
            _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_DEFAULT, "#Warning,GPSODOM%s,maximium speed exceeded resetting modified subsampler", &v118, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B408BC();
          }

          sub_100FC0CCC(*(a1 + 16));
          goto LABEL_122;
        }

        goto LABEL_185;
      }

      v90 = *(a1 + 24);
      if (!v90 || !a10)
      {
        goto LABEL_185;
      }

      v91 = a11[1];
      v118 = *a11;
      v119 = v91;
      v120 = *(a11 + 4);
      sub_10172C320(v90, a2, &v118);
      v92 = *(a1 + 24);
      *(a2 + 224) = v92[2];
      v93 = v92[4];
      if (v93 && (v94 = *v93, *v93 >= 0.0))
      {
        *(a2 + 232) = v94;
      }

      else
      {
        v95 = v92[3];
        if (v95)
        {
          v94 = *v95;
        }

        else
        {
          v94 = 0.0;
        }

        *(a2 + 232) = v94;
        if (v93)
        {
          if (*v93 >= 0.0)
          {
            goto LABEL_154;
          }

          v95 = v92[3];
        }

        if (!v95)
        {
          v100 = -1.0;
LABEL_155:
          *(a2 + 240) = v100;
          _ZF = *&v94 > -1 && ((*&v94 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v94 - 1) < 0xFFFFFFFFFFFFFLL || (*&v94 & 0x7FFFFFFFFFFFFFFFLL) == 0;
          if (_ZF && !sub_1002A4AEC(a1, v44, v94))
          {
            if (qword_1025D4650 != -1)
            {
              sub_101B3FE94();
            }

            v104 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              v105 = (a1 + 624);
              if (*(a1 + 647) < 0)
              {
                v105 = *v105;
              }

              LODWORD(v118) = 136315138;
              *(&v118 + 4) = v105;
              _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_DEFAULT, "#Warning,GPSODOM%s,maximum speed exceeded resetting Rhythmic odometer", &v118, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B409BC();
            }

            sub_101130168(*(a1 + 24));
            goto LABEL_122;
          }

          goto LABEL_185;
        }

        v93 = v95;
      }

LABEL_154:
      v100 = v93[1];
      goto LABEL_155;
    }

    v44 = v117;
    if (v117 <= v37)
    {
      goto LABEL_76;
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

      buf = 136315394;
      v122 = v48;
      v123 = 2050;
      v124 = v44;
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "#Warning GPSODOM%s,exceeded max interval,%{public}.3lf", &buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B404AC();
    }

    v49 = *(a1 + 8);
    if (v49)
    {
      sub_101165740(v49);
    }

    else
    {
      v89 = *(a1 + 32);
      if (v89)
      {
        sub_101003DC0(v89);
      }

      else
      {
        v99 = *(a1 + 16);
        if (v99)
        {
          sub_100FC0CCC(v99);
        }
      }
    }
  }

  return v29;
}

void sub_1002A4654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(*(v56 + 8));
  }

  _Unwind_Resume(exception_object);
}

double sub_1002A467C(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 16) / 1000000000.0;
  *(a2 + 8) = *(a1 + 56);
  *(a2 + 24) = *(a1 + 96);
  __asm { FMOV            V0.2D, #-1.0 }

  v15 = _Q0;
  *(a2 + 32) = _Q0;
  v9 = *(a1 + 176);
  *(a2 + 48) = *(a1 + 152);
  *(a2 + 56) = v9;
  v10 = *(a1 + 104);
  *(a2 + 64) = *(a1 + 72);
  *(a2 + 72) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 92) = sub_1002A4778(a1);
  v11 = sub_1002A48E8(a1);
  v12 = *(a1 + 80);
  *(a2 + 96) = v11 * 1000.0;
  *(a2 + 104) = v12;
  v13 = *(a1 + 184);
  *(a2 + 112) = *(a1 + 160);
  *(a2 + 120) = v13;
  *(a2 + 128) = *(a1 + 112);
  *(a2 + 144) = *(a1 + 128);
  *(a2 + 152) = v15;
  *(a2 + 192) = -1;
  *(a2 + 176) = -1;
  *(a2 + 184) = -1;
  *(a2 + 168) = 0xBFF0000000000000;
  *(a2 + 200) = 0xBFF0000000000000;
  *(a2 + 208) = -1;
  *(a2 + 216) = 0xBFF0000000000000;
  *(a2 + 224) = -1;
  result = 0.0;
  *(a2 + 232) = xmmword_101CE6010;
  return result;
}

uint64_t sub_1002A47A0(uint64_t a1, double *a2, double a3)
{
  *a2 = -1.0;
  v5 = *(a1 + 40);
  if (v5 <= 0.0 || (v7 = a3 - v5, *a2 = v7, v7 >= 0.001))
  {
    result = 1;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE80();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v9 = *v9;
      }

      v10 = *a2;
      v12 = 136315394;
      v13 = v9;
      v14 = 2050;
      v15 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,GPSODOM%s,invalid time between positions %{public}lf", &v12, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B401B0();
      result = 0;
    }
  }

  *(a1 + 40) = a3;
  return result;
}

void sub_1002A4908(char *a1, int a2)
{
  if ((a2 - 16) > 0xFFFFFFF0)
  {
    if (*a1 != a2)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF24D8();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v7 = a1 + 168;
        if (a1[191] < 0)
        {
          v7 = *v7;
        }

        v8 = 136315394;
        v9 = v7;
        v10 = 1026;
        v11 = a2;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "GPSODOM%s, changing modified subsampler window size to,%{public}d", &v8, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AF24EC(a1);
      }

      *a1 = a2;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF24D8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v5 = a1 + 168;
      if (a1[191] < 0)
      {
        v5 = *v5;
      }

      v8 = 136315650;
      v9 = v5;
      v10 = 1026;
      v11 = a2;
      v12 = 1026;
      v13 = 15;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "GPSODOM%s, invalid windowSize,%{public}d, outside allowed range, 1 to,%{public}d", &v8, 0x18u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AF25FC(a1);
    }

    sub_100FC0CF4(a1);
  }
}

BOOL sub_1002A4AEC(uint64_t a1, double a2, double a3)
{
  v4 = a3 / a2;
  v5 = a3 / a2 >= 0.0 && v4 <= 600.0;
  if (!v5)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE80();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v9 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v9 = *v9;
      }

      *buf = 136315906;
      v13 = v9;
      v14 = 2050;
      v15 = v4;
      v16 = 2050;
      v17 = a2;
      v18 = 2050;
      v19 = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "GPSODOM%s,impossible speed,%{public}f,timeInterval,%{public}f,deltaDist,%{public}f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101B3FE94();
      }

      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGpsOdometryInterface::isSpeedPossible(double, double) const", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return v5;
}

uint64_t sub_1002A4D0C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(a1 + 220) != 1)
  {
    return 0;
  }

  if (*(a2 + 912) <= 0.0)
  {
    return 0;
  }

  LODWORD(v4) = *sub_101227018();
  LODWORD(v5) = sub_101227018()[1];
  v9 = *(a3 + 172);
  v10 = sub_10000B1F8();
  *buf = 1;
  v11 = sub_10001A6B0(v10, buf) - *(a2 + 912);
  if (v11 <= 0.0)
  {
    return 0;
  }

  v12 = v4;
  v13 = v5;
  v14 = vabdd_f64(a4, v9);
  v15 = *(a3 + 116);
  v16 = *(a2 + 116);
  v17 = v11 < v12 && v14 < v13;
  if (!v17 || v15 >= v16)
  {
    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_10022FB88();
  }

  v20 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v21 = sub_10000B1F8();
    v22 = sub_100125220(v21);
    *buf = 134350592;
    v26 = v11;
    v27 = 2050;
    v28 = v12;
    v29 = 2050;
    v30 = v14;
    v31 = 2050;
    v32 = v13;
    v33 = 2050;
    v34 = v16;
    v35 = 2050;
    v36 = v15;
    v37 = 2050;
    v38 = v22;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "Ignored: GPS warmup,runtime,%{public}.1fs,thresh,%{public}.1fs,age,%{public}.1f,thresh,%{public}.1fs,gacc,%{public}.1fm,wacc,%{public}fm,propagation_us,%{public}.3f", buf, 0x48u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
    }

    v23 = sub_10000B1F8();
    sub_100125220(v23);
    v24 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldUseWifiWhileGpsConverging(const CFAbsoluteTime, const ProvidersMap::iterator, const ProvidersMap::iterator) const", "%s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  return 1;
}

void sub_1002A5074(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (*a3 == a3[1])
  {
    return;
  }

  if (*(a1 + 2344) <= 0.0 || ((v7 = *(a1 + 2352), v8 = vabdd_f64(*(a2 + 344), v7), v7 > 0.0) ? (v9 = v8 < 20.0) : (v9 = 1), !v9))
  {
    *(a1 + 2344) = 0xBFF0000000000000;
    *(a1 + 2352) = 0xBFF0000000000000;
    *(a1 + 2360) = 0;
    *(a1 + 2376) = 0;
    *(a1 + 2368) = 0;
    *(a1 + 2344) = *(a2 + 344);
  }

  *(a1 + 2296) = 0xBFF0000000000000;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0;
  sub_1002A55A0(a1 + 2296, a3, *(a2 + 344));
  v10 = *(a1 + 2304);
  if (v10 <= 19 && *(a1 + 2308) == v10)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a2 + 344);
      v13 = *(a1 + 2304);
      v14 = *(a1 + 2308);
      *buf = 134349568;
      v35 = v12;
      v36 = 1026;
      v37 = v13;
      v38 = 1026;
      v39 = v14;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#GNSSTracking,mct,%{public}.3f,NumVis,%{public}03d,NumTracked,%{public}02d,discarding wrong satellite visibility report.", buf, 0x18u);
    }

    if (!sub_10000A100(121, 2))
    {
      return;
    }

    sub_101A7B5F4(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::extractGNSSSatelliteTrackingQualityMetricsAndHuncFloor(const CLDaemonLocationPrivate &, const CLDaemonLocationPrivate::AboveHorizonSatelliteVisibilityReport &, double &)", "%s\n", v15);
    if (v15 == buf)
    {
      return;
    }

LABEL_36:
    free(v15);
    return;
  }

  v16 = sub_10025BD44(a1 + 2296);
  if (!sub_1001E0B5C(a2) || *(a1 + 2360) < 10.0)
  {
    v17 = *(a1 + 2304);
    if (v17 >= 1 && *(a1 + 2308) / v17 < 0.5)
    {
      *a4 = *(a1 + 2888);
    }
  }

  v18 = *(a1 + 2344);
  v19 = 0.0;
  if (v18 > 0.0)
  {
    v20 = *(a2 + 344);
    v21 = v20 <= v18;
    v22 = v20 - v18;
    if (v21)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v22;
    }
  }

  *(a1 + 2360) = v19;
  *(a1 + 2352) = *(a2 + 344);
  ++*(a1 + 2376);
  if (v16)
  {
    ++*(a1 + 2368);
    *(a1 + 2372) = 0;
    ++*(a1 + 2380);
  }

  else
  {
    ++*(a1 + 2372);
    *(a1 + 2368) = 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v23 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a2 + 344);
    v25 = *(a1 + 2304);
    v26 = *(a1 + 2308);
    v27 = *(a1 + 2312);
    v28 = *(a1 + 2316);
    v29 = *(a1 + 2320);
    v30 = *(a1 + 2324);
    v31 = *(a1 + 2328);
    v32 = *(a1 + 2332);
    v33 = *(a1 + 2336);
    *buf = 134351616;
    v35 = v24;
    v36 = 1026;
    v37 = v25;
    v38 = 1026;
    v39 = v26;
    v40 = 1026;
    v41 = v27;
    v42 = 1026;
    v43 = v28;
    v44 = 1026;
    v45 = v29;
    v46 = 1026;
    v47 = v30;
    v48 = 1026;
    v49 = v31;
    v50 = 1026;
    v51 = v32;
    v52 = 1026;
    v53 = v33;
    v54 = 1026;
    v55 = v16;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#GNSSTracking,mct,%{public}.3f,NumVis,%{public}03d,NumTracked,%{public}02d,NumTrackedL5,%{public}02d,NumTrackedL1CN0_ge_20,%{public}02d,NumTrackedSVElv_ge_60,%{public}02d,NumTrackedSV_azm,%{public}02d,%{public}02d,%{public}02d,%{public}02d,isLikelygoodQualityGNSSTracking,%{public}d", buf, 0x48u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::extractGNSSSatelliteTrackingQualityMetricsAndHuncFloor(const CLDaemonLocationPrivate &, const CLDaemonLocationPrivate::AboveHorizonSatelliteVisibilityReport &, double &)", "%s\n", v15);
    if (v15 != buf)
    {
      goto LABEL_36;
    }
  }
}

void sub_1002A5594(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1002A55A0(uint64_t result, uint64_t *a2, double a3)
{
  *result = a3;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = *(result + 8);
    do
    {
      if (*(v3 + 24) == 1)
      {
        ++*(result + 12);
        if (*(v3 + 20) > 0.0)
        {
          ++*(result + 16);
        }

        if (*(v3 + 16) >= 20.0)
        {
          ++*(result + 20);
        }

        if (*(v3 + 8) >= 60.0)
        {
          ++*(result + 24);
        }

        v6 = *(v3 + 12);
        if (v6 <= 90.0)
        {
          ++*(result + 28);
        }

        else if (v6 > 180.0)
        {
          if (v6 > 270.0)
          {
            ++*(result + 40);
          }

          else
          {
            ++*(result + 36);
          }
        }

        else
        {
          ++*(result + 32);
        }
      }

      v3 += 28;
      ++v5;
    }

    while (v3 != v4);
    *(result + 8) = v5;
  }

  return result;
}

double sub_1002A56B8(_DWORD *a1)
{
  v1 = *a1 - 1;
  result = 20.0;
  if (v1 <= 9)
  {
    return dbl_101CFC858[v1];
  }

  return result;
}

void sub_1002A56DC(uint64_t a1, uint64_t a2, double *a3, int a4, uint64_t a5)
{
  LODWORD(v5) = a4;
  *(a5 + 52) |= 2u;
  v8 = *(a5 + 40);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 488) |= 4u;
  v9 = *(v8 + 24);
  if (!v9)
  {
    operator new();
  }

  sub_100294964(a2, a5);
  *(v9 + 44) |= 1u;
  v10 = *(v9 + 8);
  if (!v10)
  {
    operator new();
  }

  if (sub_10027E930(a2, v10))
  {
    goto LABEL_13;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v11 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Error: Failed to convert barometer notification receipt time to protobuf", v17, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A23F58();
    if (!v5)
    {
      return;
    }
  }

  else
  {
LABEL_13:
    if (!v5)
    {
      return;
    }
  }

  v5 = v5;
  do
  {
    v12 = *a3;
    v13 = *a3 - *(a2 + 8);
    *v17 = v13 + *a2;
    *&v17[1] = v12;
    *&v17[2] = v13 + *(a2 + 16);
    v18 = *(a2 + 24);
    v14 = *(v9 + 28);
    v15 = *(v9 + 24);
    if (v15 >= v14)
    {
      if (v14 == *(v9 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 16), v14 + 1);
        v14 = *(v9 + 28);
      }

      *(v9 + 28) = v14 + 1;
      sub_100307C68();
    }

    v16 = *(v9 + 16);
    *(v9 + 24) = v15 + 1;
    sub_1002A5950(a3, *(v16 + 8 * v15), v17);
    a3 += 2;
    --v5;
  }

  while (v5);
}

void sub_1002A5950(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    *(a2 + 28) |= 1u;
    v5 = *(a2 + 8);
    if (!v5)
    {
      operator new();
    }

    sub_10027E930(a3, v5);
    *(a2 + 28) |= 6u;
    *(a2 + 16) = *(a1 + 8);
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v6 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "pSample,Invalid pointer", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B87A38();
    }
  }
}

uint64_t sub_1002A5A7C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a2 > 0.0 && *(a2 + 16) > 0.0)
  {
    v5 = *(a1 + 224);
    v6 = (a1 + 232);
    if (v5 == (a1 + 232))
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = *(v5 + 148);
        v9 = (v8 - 3) < 8 || v8 == 0;
        if (v9 && (sub_1002A5FFC((v5 + 29), a2) & 1) == 0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v10 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v11 = *a2;
            v12 = *(v5 + 220);
            *buf = 134349312;
            v36 = v11;
            v37 = 1026;
            v38 = v12;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,provider hypothesis course-aiding failed,hID,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v15 = *a2;
            v16 = *(v5 + 220);
            *v34 = 134349312;
            *&v34[4] = v15;
            *&v34[12] = 1026;
            *&v34[14] = v16;
            v17 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithCourseAiding(const CourseMeasurement &)", "%s\n", v17);
            if (v17 != buf)
            {
              free(v17);
            }
          }

          v7 = 1;
        }

        v13 = v5[1];
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
            v14 = v5[2];
            v9 = *v14 == v5;
            v5 = v14;
          }

          while (!v9);
        }

        v5 = v14;
      }

      while (v14 != v6);
    }

    for (i = *(a1 + 248); i; i = *i)
    {
      v19 = *(i + 140);
      v20 = (v19 - 3) < 8 || v19 == 0;
      if (v20 && (sub_1002A5FFC((i + 25), a2) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v21 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v22 = *a2;
          v23 = *(i + 212);
          *buf = 134349312;
          v36 = v22;
          v37 = 1026;
          v38 = v23;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,fused hypothesis course-aiding failed,hID,%{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v24 = *a2;
          v25 = *(i + 212);
          *v34 = 134349312;
          *&v34[4] = v24;
          *&v34[12] = 1026;
          *&v34[14] = v25;
          v26 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithCourseAiding(const CourseMeasurement &)", "%s\n", v26);
          if (v26 != buf)
          {
            free(v26);
          }
        }

        v7 = 1;
      }
    }

    if (*(a1 + 1104))
    {
      v27 = *(a1 + 808);
      if ((v27 - 3) < 8 || v27 == 0)
      {
        v29 = *(a1 + 816);
        *v34 = *a2;
        *&v34[16] = *(a2 + 16);
        if (*a2 <= v29)
        {
          *v34 = v29 + 0.001;
        }

        if ((sub_1002A5FFC(a1 + 448, v34) & 1) == 0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v30 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v31 = *(a1 + 1096);
            *buf = 134349312;
            v36 = *v34;
            v37 = 1026;
            v38 = v31;
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,latest selected fused hypothesis course-aiding failed,hID,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v33 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithCourseAiding(const CourseMeasurement &)", "%s\n", v33);
            if (v33 != buf)
            {
              free(v33);
            }
          }

          v7 = 1;
        }
      }
    }

    v2 = v7 ^ 1;
  }

  return v2 & 1;
}

void sub_1002A5FE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002A5FFC(uint64_t a1, double *a2)
{
  if ((*a1 & 1) == 0)
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
      v53 = v11;
      v54 = 2050;
      v55 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initialized Course Meas ignored,mct,%{public}.3f", buf, 0x12u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

LABEL_58:
    sub_101912E28(buf);
    v49 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const CourseMeasurement &)", "%s\n", v49);
    if (v49 != buf)
    {
      free(v49);
    }

    return 0;
  }

  if (*a2 <= 0.0 || (v4 = a2[2], v4 <= 0.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v13 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 596);
      v15 = *a2;
      *buf = 67240961;
      v16 = a2[1] * 57.2957795;
      v17 = sqrt(a2[2]);
      v53 = v14;
      v54 = 2050;
      v55 = v15;
      v56 = 2049;
      v57 = v16;
      v58 = 2050;
      v59 = v17 * 57.2957795;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,invalid Course Meas ignored,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f", buf, 0x26u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (*a2 - *(a1 + 368) <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 596);
      v20 = *(a1 + 368);
      v21 = *a2;
      *buf = 67240704;
      v53 = v19;
      v54 = 2050;
      v55 = v20;
      v56 = 2050;
      v57 = v21;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,old Course Meas ignored,filterMCT,%{public}.3f,CourseMeasMCT,%{public}.3f", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (v4 > 0.616850275)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 596);
      v7 = *a2;
      *buf = 67241217;
      v8 = a2[1] * 57.2957795;
      v9 = sqrt(a2[2]);
      v53 = v6;
      v54 = 2050;
      v55 = v7;
      v56 = 2049;
      v57 = v8;
      v58 = 2050;
      v59 = v9 * 57.2957795;
      v60 = 2050;
      v61 = 45.0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,Course Meas with large uncertainty ignored,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f,uncGating_deg,%{public}.2f", buf, 0x30u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    goto LABEL_58;
  }

  if ((*(a1 + 592) & 1) == 0 && (sub_10002980C(a1, a2) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v45 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(a1 + 596);
      v47 = *(a1 + 368);
      v48 = *a2;
      *buf = 67240704;
      v53 = v46;
      v54 = 2050;
      v55 = v47;
      v56 = 2050;
      v57 = v48;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter time-update failed, Course Meas ignored,filterMCT,%{public}.3f,CourseMeasMCT,%{public}.3f", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    goto LABEL_58;
  }

  v25 = *(a1 + 24);
  v24 = *(a1 + 32);
  if (fabs(v25) > 0.05 || fabs(v24) > 0.05)
  {
    v34 = atan2(v24, v25);
    if (v34 < 0.0 || v34 >= 6.28318531)
    {
      *v32.i64 = fmod(v34, 6.28318531);
      if (*v32.i64 >= 0.0)
      {
        v34 = *v32.i64;
      }

      else
      {
        v34 = *v32.i64 + 6.28318531;
      }
    }

    v32.i64[0] = a2[1];
    v33.i64[0] = 1.0;
    v22 = sub_1006ED4C8(a1, v32, a2[2], v33, v34, v35, v36, v37, v38);
    if ((v22 & 1) == 0)
    {
      v39 = *(a2 + 1);
      v39.f64[1] = sqrt(a2[2]);
      *(a1 + 424) = vmulq_f64(v39, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v40 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(a1 + 596);
        v42 = *a2;
        v43 = *(a1 + 424);
        v44 = *(a1 + 432);
        *buf = 67240961;
        v53 = v41;
        v54 = 2050;
        v55 = v42;
        v56 = 2049;
        v57 = v43;
        v58 = 2050;
        v59 = v44;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,failed to ingest Course Meas,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101912E28(buf);
        v51 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const CourseMeasurement &)", "%s\n", v51);
        if (v51 != buf)
        {
          free(v51);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v26 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 596);
      v28 = *a2;
      v29 = a2[1] * 57.2957795;
      v30 = sqrt(a2[2]) * 57.2957795;
      v31 = hypot(*(a1 + 24), *(a1 + 32));
      *buf = 67241217;
      v53 = v27;
      v54 = 2050;
      v55 = v28;
      v56 = 2049;
      v57 = v29;
      v58 = 2050;
      v59 = v30;
      v60 = 2050;
      v61 = v31;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,stationary user,Course Meas ignored,timetagMCT,%{public}.3f,Course_deg,%{private}.2f,CourseUnc_deg,%{public}.2f,filter_speedEst_mps,%{public}.3f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      hypot(*(a1 + 24), *(a1 + 32));
      v50 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const CourseMeasurement &)", "%s\n", v50);
      if (v50 != buf)
      {
        free(v50);
      }
    }

    v22 = 0;
    *(a1 + 424) = a2[1] * 57.2957795;
    *(a1 + 432) = sqrt(a2[2]) * 57.2957795;
  }

  *(a1 + 440) = *a2;
  return v22;
}

void sub_1002A6BA8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1002A6C44(uint64_t a1, _DWORD *a2)
{
  if (sub_10001CF3C())
  {
    return;
  }

  sub_1003C93BC(a1 + 8, *(a1 + 16));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a1 + 16;
  v4 = *(a1 + 240);
  if (v4 == (a1 + 248))
  {
    *(a1 + 2) = 0;
    goto LABEL_41;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v5 = -1.0;
    if (*(v4 + 40) == 1)
    {
      v5 = *(v4 + 9);
    }

    v6 = *(v4 + 8);
    v7 = *(v4 + 11);
    *buf = v4 + 28;
    v8 = sub_10029E0DC(a1 + 8, v4 + 28);
    *(v8 + 8) = v6;
    *(v8 + 9) = v5;
    *(v8 + 10) = v7;
    v9 = *(v4 + 28);
    if (v9 <= 0xA)
    {
      v10 = 1 << v9;
      if ((v10 & 0x69D) != 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_10170CEF4();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          v12 = *(v4 + 28);
          *buf = 16908544;
          buf[4] = v12;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "#imag,validateCn0Stats,invalid band,%{public}hhu", buf, 5u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10170D264(&v20, v4 + 28, v21);
        }
      }

      else if ((v10 & 0x160) != 0)
      {
        if (*(v4 + 40) == 1)
        {
          v16 = HIDWORD(v19);
          if (*(v4 + 9) > *(a1 + 288))
          {
            v16 = 1;
          }

          HIDWORD(v19) = v16;
        }
      }

      else
      {
        HIDWORD(v18) = *(v4 + 40);
        LOBYTE(v18) = HIDWORD(v18) == 1 && *(v4 + 9) <= *(a1 + 284);
        LOBYTE(v19) = *(v4 + 11) >= *(a1 + 280);
      }
    }

    v13 = v4[1];
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
        v14 = v4[2];
        v15 = *v14 == v4;
        v4 = v14;
      }

      while (!v15);
    }

    v4 = v14;
  }

  while (v14 != (a1 + 248));
  *(a1 + 2) = v19 & 1;
  if ((v19 & 0x100000000) != 0)
  {
    *(a1 + 1) = 0;
LABEL_32:
    if ((*(a1 + 36) & 0x80000000) != 0)
    {
      if (*a2)
      {
        *(a1 + 36) = *a2;
      }
    }

    return;
  }

  if ((v18 & 0x100000000) == 0)
  {
LABEL_41:
    *(a1 + 1) = 0;
    return;
  }

  if ((v18 & 1) == 0)
  {
    v17 = *(a1 + 264) + 1;
    *(a1 + 264) = v17;
    if (v17 < 3)
    {
      if (*(a1 + 1))
      {
        return;
      }
    }

    else
    {
      *(a1 + 1) = 0;
      *(a1 + 264) = 3;
    }

    goto LABEL_32;
  }

  *(a1 + 1) = 1;
  *(a1 + 264) = 0;
  if ((*(a1 + 32) & 0x80000000) != 0 && *a2)
  {
    *(a1 + 32) = *a2;
  }
}

uint64_t sub_1002A6F34(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 104) <= 0.0)
  {
    return 0;
  }

  v3 = (a2 + 72);
  v4 = *(a2 + 72);
  if (v4 >= -500.0)
  {
    v7 = 18000.0;
    if (a3)
    {
      v7 = 27500.0;
    }

    if (v4 >= 9000.0 && v4 > v7)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016ADBCC();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *v3;
        v12 = 134349056;
        v13 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#imag,alt gt thresh,%{public}.1f", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016AE16C(v3);
      }

      return 1;
    }

    return 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016ADBCC();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *v3;
    v12 = 134349056;
    v13 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#imag,alt lt thresh,%{public}.1f", &v12, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016AE25C(v3);
  }

  return 1;
}

void sub_1002A70E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16);
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = a2 + 16;
    do
    {
      if (*(v3 + 28))
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 28) == 0));
    }

    while (v3);
    if (v6 != v4 && *(v6 + 28) <= 1u)
    {
      v7 = *(v6 + 36);
      if (v7 >= 0.0)
      {
        v8 = *(a2 + 8);
        if (v8 != v4)
        {
          v9 = (a3 + 1120);
          do
          {
            v10 = *(v8 + 9);
            if (v10 >= 0.0)
            {
              v11 = *(v8 + 28);
              if (v11 > 0xA)
              {
                goto LABEL_17;
              }

              if (((1 << v11) & 0x160) == 0)
              {
                if (((1 << v11) & 0x69D) != 0)
                {
                  if (qword_1025D4650 != -1)
                  {
                    sub_1016ADE08();
                  }

                  v26 = qword_1025D4658;
                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
                  {
                    v27 = *(v8 + 28);
                    *buf = 16777472;
                    buf[4] = v27;
                    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "#imag,populateL1Cn0VarianceForAWD,not expected band,%d", buf, 5u);
                  }

                  if (sub_10000A100(121, 0))
                  {
                    sub_1016AE468();
                  }

                  return;
                }

LABEL_17:
                if (v10 <= 1.0)
                {
                  v12 = 0;
                }

                else
                {
                  if (v10 <= 4.0)
                  {
                    v12 = 6;
                  }

                  else
                  {
                    v12 = 7;
                  }

                  if (v10 <= 3.5)
                  {
                    v12 = 5;
                  }

                  if (v10 <= 3.0)
                  {
                    v12 = 4;
                  }

                  if (v10 <= 2.5)
                  {
                    v12 = 3;
                  }

                  if (v10 <= 2.0)
                  {
                    v12 = 2;
                  }

                  if (v10 <= 1.5)
                  {
                    v12 = 1;
                  }
                }

                v28 = v12;
                v13 = *v9;
                if (!*v9)
                {
                  goto LABEL_41;
                }

                v14 = a3 + 1120;
                do
                {
                  v15 = *(v13 + 32);
                  v16 = v15 >= v11;
                  v17 = v15 < v11;
                  if (v16)
                  {
                    v14 = v13;
                  }

                  v13 = *(v13 + 8 * v17);
                }

                while (v13);
                if (v14 != v9 && v11 >= *(v14 + 32))
                {
                  v24 = *(v14 + 48);
                  v22 = v14 + 48;
                  v23 = v24;
                  if (!v24)
                  {
                    goto LABEL_56;
                  }

                  v25 = v22;
                  do
                  {
                    if (*(v23 + 32) >= v12)
                    {
                      v25 = v23;
                    }

                    v23 = *(v23 + 8 * (*(v23 + 32) < v12));
                  }

                  while (v23);
                  if (v25 != v22 && v12 >= *(v25 + 32))
                  {
                    ++*(v25 + 40);
                  }

                  else
                  {
LABEL_56:
                    *buf = &v28;
                    sub_1003E3DEC(v22 - 8, &v28)[5] = 1;
                  }
                }

                else
                {
LABEL_41:
                  *buf = v12;
                  v31 = 1;
                  v29 = v8 + 28;
                  v18 = sub_1007EE8E0(a3 + 1112, v8 + 28);
                  sub_1016AD960(v18 + 5, buf, &v32);
                }

                goto LABEL_42;
              }

              if (v7 <= 1.5)
              {
                goto LABEL_17;
              }
            }

LABEL_42:
            v19 = v8[1];
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
                v20 = v8[2];
                v21 = *v20 == v8;
                v8 = v20;
              }

              while (!v21);
            }

            v8 = v20;
          }

          while (v20 != v4);
        }
      }
    }
  }
}

void sub_1002A743C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102637238 + 8);
    }

    sub_100298410(v6, a2, a3);
    v5 = *(a1 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    v7 = *(qword_102637238 + 16);
  }

  sub_100298C70(v7, a2 + 48);
  if ((*(a1 + 48) & 4) != 0)
  {
LABEL_11:
    v8 = *(a1 + 24);
    if (!v8)
    {
      v8 = *(qword_102637238 + 24);
    }

    sub_10029E360(v8, a2 + 144);
  }
}

uint64_t sub_1002A74F8(uint64_t a1, double *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a6 > 90.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#Error,DEM,latitude_degs>90.0", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101AF600C();
      return 0;
    }

    return result;
  }

  if (a6 >= -90.0)
  {
    if (a4 < -500.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *v46 = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#Error,DEM,heightDEM<-500", v46, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101AF5E44();
        return 0;
      }

      return result;
    }

    if (a5 <= 0.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v21 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *v45 = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#Error,DEM,heightVariance<=0", v45, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101AF5AB4();
        return 0;
      }

      return result;
    }

    v17 = *(a1 + 168);
    *(a1 + 112) = *(a1 + 152);
    *(a1 + 128) = v17;
    *(a1 + 144) = *(a1 + 184);
    *(a1 + 168) = a4;
    *(a1 + 176) = a5;
    *(a1 + 152) = a6;
    *(a1 + 160) = a7;
    v18 = *(a1 + 192);
    *(a1 + 184) = a8;
    if (v18 == -9999.0)
    {
      goto LABEL_45;
    }

    *(a1 + 208) = v18;
    *(a1 + 192) = 0xC0C3878000000000;
    v19 = a8 - *(a1 + 144);
    if (v19 < 0.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#Warning,DEM,deltaT<0,DEM height filter internal_reset", v44, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AF5D60();
      }

      goto LABEL_45;
    }

    if (v19 > 2400.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v22 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v43 = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#Warning,DEM,Height filter timed out,DEM height filter internal_reset", v43, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AF5C7C();
      }

      goto LABEL_45;
    }

    v23 = *(a1 + 128);
    v24 = sub_100109D18((a1 + 8), a6, a7, *(a1 + 112), *(a1 + 120), a4);
    *(a1 + 216) = v24;
    if (v24 > 3500.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AF5938();
      }

      v25 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v42 = 0;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "DEM,Height filter exceeded maximum change in horizontal position,DEM height filter internal_reset", v42, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AF5B98();
      }

      goto LABEL_45;
    }

    v26 = v24;
    v27 = (a4 - v23) / v24;
    v28 = v24 < 5.0;
    v29 = 0.0;
    if (v28)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v27;
    }

    v31 = *(a1 + 208);
    *(a1 + 200) = v31;
    *(a1 + 64) = v19 * 1.3;
    *(a1 + 48) = v19 * 1.3 + *(a1 + 48);
    *(a1 + 56) = 0x40C3880000000000;
    if ((*(a1 + 232) & 1) != 0 || *(a1 + 233) == 1) && (v29 = sub_100109D18((a1 + 8), *(a1 + 152), *(a1 + 160), *(a1 + 80), *(a1 + 88), *(a1 + 168)), (*(a1 + 232)))
    {
      if (*(a1 + 168) < *(a1 + 96) + v29 * -0.07)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (*(a1 + 233) != 1)
      {
        v33 = fabs(v27);
        v34 = 0.0;
        if (v26 >= 5.0)
        {
          v34 = v33;
        }

        if (v34 <= 0.4)
        {
          if (v34 <= 0.32)
          {
            v32 = *(a1 + 176);
            v35 = 0.0;
            if (v34 > 0.18)
            {
              v32 = v32 * 5.0;
              v35 = 0.5;
            }
          }

          else
          {
            v32 = *(a1 + 176) * 20.0;
            v35 = 1.0;
          }
        }

        else
        {
          v32 = *(a1 + 176) * 25.0;
          v35 = 2.0;
        }

        v36 = 248;
        if (v30 < 0.0)
        {
          v36 = 240;
        }

        v37 = *(a1 + v36);
        *(a1 + 56) = v32;
        *(a1 + v36) = v35 + v37;
        if (v30 <= 0.32 || *(a1 + 248) <= 4.1 || *(a1 + 184) - *(a1 + 104) <= 30.0)
        {
          if (v30 >= -0.32 || *(a1 + 240) <= 4.1 || *(a1 + 184) - *(a1 + 104) <= 30.0)
          {
            if (v34 < 0.18)
            {
              *(a1 + 240) = 0;
              *(a1 + 248) = 0;
            }

            goto LABEL_93;
          }

          *(a1 + 232) = 1;
        }

        else
        {
          *(a1 + 233) = 1;
        }

        *(a1 + 80) = *(a1 + 152);
        v38 = *(a1 + 184);
        *(a1 + 96) = *(a1 + 200);
        *(a1 + 104) = v38;
        *(a1 + 56) = 0x40C3880000000000;
        v32 = 10000.0;
LABEL_93:
        v39 = *(a1 + 48);
        v40 = v39 / (v39 + v32);
        *(a1 + 48) = v39 * (1.0 - v40);
        v41 = *(a1 + 200) + (a4 - v31) * v40;
        *(a1 + 192) = v41;
        *a2 = v41;
        goto LABEL_46;
      }

      if (*(a1 + 168) > *(a1 + 96) + v29 * 0.1)
      {
LABEL_63:
        if (*(a1 + 184) - *(a1 + 104) > 1800.0 || v29 > 3500.0)
        {
LABEL_45:
          *(a1 + 192) = a4;
          *(a1 + 48) = a5;
          *(a1 + 56) = a5;
          *(a1 + 104) = 0;
          *(a1 + 216) = 0;
          *(a1 + 224) = 0;
          *(a1 + 232) = 0;
          *(a1 + 240) = 0;
          *(a1 + 248) = 0;
          *a2 = a4;
LABEL_46:
          *a3 = *(a1 + 48);
          return 1;
        }

        v32 = *(a1 + 56);
        goto LABEL_93;
      }
    }

    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    v32 = *(a1 + 176);
    *(a1 + 104) = *(a1 + 184);
    if (v26 >= 5.0 && fabs(v27) > 0.18)
    {
      v32 = v32 * 10.0;
    }

    *(a1 + 56) = v32;
    goto LABEL_93;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101AF5938();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *v47 = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#Error,DEM,latitude_degs<-90.0", v47, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101AF5F28();
    return 0;
  }

  return result;
}

uint64_t sub_1002A7C54(uint64_t a1, double a2, long double a3, double a4, double a5)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  if (fabs(a2) <= 90.0)
  {
    v9 = *(a1 + 128);
    if (v9 <= a2)
    {
      LOWORD(a5) = *(a1 + 108);
      if (v9 + *(a1 + 136) * *&a5 >= a2)
      {
        sub_10002DB04(a3);
        v12 = *(a1 + 120);
        if (v10 >= v12)
        {
          LOWORD(v11) = *(a1 + 110);
          return v10 <= v12 + *(a1 + 136) * v11;
        }
      }
    }

    return 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101AF5938();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v13 = 134545665;
    v14 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#Warning,DEM,latitude,%{sensitive}.7lf,out of range", &v13, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101AF628C();
    return 0;
  }

  return result;
}

uint64_t sub_1002A7DAC(uint64_t a1, double *a2, double *a3, int *a4)
{
  result = *(*(a1 + 8) + 1064);
  if (result)
  {
    return sub_100218038(result, *a4, *a2, *a3);
  }

  return result;
}

uint64_t sub_1002A7DD0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

unint64_t sub_1002A7E18(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x86BCA1AF286BCA1BLL * ((a5 - *a4) >> 4) + 2 * (a4 - a2) + 0x79435E50D79435E5 * ((a3 - *a2) >> 4);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 >> 4));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 304 * (a1[4] & 0xFLL);
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x86BCA1AF286BCA1BLL * ((a3 - *a2) >> 4) + 2 * (a2 - v9) + 0x79435E50D79435E5 * ((v10 - *v9) >> 4);
  }

  v30.n128_u64[0] = v8 + 8 * (v7 >> 4);
  v30.n128_u64[1] = v10;
  sub_10029FA6C(&v30, v11);
  if (v6 >= 1)
  {
    v12 = v30;
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_10029FA6C(&v30, v6);
      sub_1002A80F4(v9, v10, v12.n128_u64[0], v12.n128_i64[1], v30.n128_u64[0], v30.n128_i64[1], &v30);
      v18 = v31;
      while (v10 != v18)
      {
        sub_100134860(v10 + 248);
        v10 += 304;
        if (v10 - *v9 == 4864)
        {
          v19 = v9[1];
          ++v9;
          v10 = v19;
        }
      }

      v20 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v20;
        ;
      }
    }

    else
    {
      sub_10029FA6C(&v30, v6);
      v13 = v30;
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 >> 4));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[19 * (v14 & 0xF)];
      }

      v30 = v12;
      sub_1009BB930(v13.n128_u64[0], v13.n128_u64[1], v16, v17, &v30);
      v21 = v30.n128_u64[1];
      v22 = a1[1];
      if (a1[2] == v22)
      {
        v24 = 0;
      }

      else
      {
        v23 = a1[5] + a1[4];
        v24 = *(v22 + ((v23 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 304 * (v23 & 0xF);
      }

      if (v24 != v30.n128_u64[1])
      {
        v25 = v30.n128_u64[0];
        do
        {
          sub_100134860(v21 + 248);
          v21 += 304;
          if (v21 - *v25 == 4864)
          {
            v26 = v25[1];
            ++v25;
            v21 = v26;
          }
        }

        while (v21 != v24);
      }

      a1[5] -= v6;
        ;
      }
    }
  }

  v27 = a1[1];
  if (a1[2] == v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v27 + 8 * (a1[4] >> 4)) + 304 * (a1[4] & 0xFLL);
  }

  v30.n128_u64[0] = v27 + 8 * (a1[4] >> 4);
  v30.n128_u64[1] = v28;
  sub_10029FA6C(&v30, v11);
  return v30.n128_u64[0];
}

__n128 sub_1002A80F4@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    i = a5;
    v14 = a6;
  }

  else
  {
    v16 = a3 - 1;
    sub_1002A92D0(*a3, a4, a5, a6, &v19);
    v14 = v20.n128_i64[1];
    for (i = v20.n128_u64[0]; v16 != a1; i = v20.n128_u64[0])
    {
      v17 = *v16--;
      sub_1002A92D0(v17, v17 + 4864, i, v14, &v19);
      v14 = v20.n128_i64[1];
    }

    v12 = *v16 + 4864;
    v11 = a2;
  }

  sub_1002A92D0(v11, v12, i, v14, &v19);
  result = v20;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

__n128 sub_1002A81E0(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = *(a1 + 776);
  v2 = *(a1 + 792);
  v3 = *(a1 + 808);
  v4 = *(a1 + 824);
  *(a2 + 72) = *(a1 + 840);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = v2;
  result = *(a1 + 856);
  v6 = *(a1 + 872);
  v7 = *(a1 + 888);
  *(a2 + 132) = *(a1 + 900);
  *(a2 + 120) = v7;
  *(a2 + 104) = v6;
  *(a2 + 88) = result;
  return result;
}

void sub_1002A8224(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101798E48();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 1237);
    v4 = *(a1 + 1236);
    v8 = 67109376;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#timingadvance,query timing advance,isTimingAdvanceEnabled, %d,isDeviceInRRCState %d ", &v8, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10179A6F4();
  }

  if (sub_10006FB70() && sub_10006FE30() && *(a1 + 1236) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101798DDC();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 1232);
      v8 = 67109120;
      v9 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#timingadvance,queryTimingAdvance for mav22 TB,siminstance %d", &v8, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10179A8D8(a1);
    }

    sub_1015FFDE4(*(*(a1 + 744) + 40), *(a1 + 1232));
  }

  else if (((sub_1000733FC() & 1) != 0 || (sub_1000734AC() & 1) != 0 || sub_100718F78()) && *(a1 + 1236) == 1 && *(a1 + 8) == 6)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101798DDC();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#timingadvance,query timingadvance over LTE", &v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10179A7F4();
    }

    sub_10178DF90(a1, *(a1 + 1232));
  }
}

__n128 sub_1002A84C8(uint64_t a1, __n128 *a2)
{
  v4 = sub_1002A8534(a1);
  if (!sub_1001744A4(v4))
  {
    sub_1018823F4();
  }

  v5 = a2[2].n128_u32[2];
  a2[2].n128_u32[2] = v5 | 1;
  v6 = *(a1 + 4);
  a2->n128_u32[2] = v4;
  a2->n128_u32[3] = v6;
  result = *(a1 + 8);
  a2[1] = result;
  a2[2].n128_u16[0] = *(a1 + 24);
  a2[2].n128_u32[2] = v5 | 0xFF;
  return result;
}

uint64_t sub_1002A8534(int *a1)
{
  if (*a1 < 6)
  {
    return (*a1 + 1);
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "ConvertClientSatelliteConstellationToProtobuf,unhandled type,%{public}d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B8BB0C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1002A8624(uint64_t result)
{
  *(result + 36) = 0;
  *(result + 40) = 0;
  *result = off_102452248;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1002A8650(unsigned int *a1, unsigned int a2)
{
  v3 = a1[10];
  if (!v3)
  {
    result = 0;
    goto LABEL_28;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v7 = a1[3];
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = a1[10];
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_19;
  }

  v6 = a1[2];
  if ((v6 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = a1[10];
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  v9 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v9 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v9 += 5;
  }

  if ((v3 & 0x10) != 0)
  {
    v9 += 5;
  }

  if ((v3 & 0x20) != 0)
  {
    v9 += 5;
  }

  result = ((v3 >> 6) & 2) + ((v3 >> 5) & 2) + v9;
LABEL_28:
  a1[9] = result;
  return result;
}

void sub_1002A8748(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452248;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1002A879C(uint64_t a1, double *a2, uint64_t *a3)
{
  v9 = 0.0;
  if (sub_100131C88(a1, &v9))
  {
    *a3 = *a2 - v9;

    return sub_100131DE8(a1, a3);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TCONV,Failed in getting the offset between mach continuous time and mach absolute time", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D28CC();
    }

    return 0;
  }
}

uint64_t sub_1002A8894(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1004906DC(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1002A896C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_1006A3650(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

uint64_t sub_1002A8A60(uint64_t a1, double *a2)
{
  v4 = *(a2 + 20);
  if (v4 < 5.0)
  {
    v4 = 5.0;
  }

  if (v4 <= 166.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 166.0;
  }

  if (*(a2 + 60) >= 0.0)
  {
    v6 = *(a2 + 60);
  }

  else
  {
    v6 = 0.0;
  }

  v47 = 9999.0;
  v7 = *(a2 + 4);
  v8 = *(a2 + 12);
  v45 = v8;
  v46 = v7;
  v44 = -9999.0;
  v9 = sub_10029E824(a1 + 912, &v44, &v47, v7, v8);
  if ((v9 & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v30 = *(a2 + 4);
      v31 = *(a2 + 12);
      *buf = 134546433;
      *&buf[4] = v30;
      *&buf[12] = 2053;
      *&buf[14] = v31;
      *&buf[22] = 2053;
      v59 = v7;
      v60 = 2053;
      v61 = v8;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "DEM,populateSlope,fail,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,testLocationLatDegs,%{sensitive}.8lf,testLocationLonDegs,%{sensitive}.8lf", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101AF5990();
      }

      v32 = *(a2 + 4);
      v33 = *(a2 + 12);
      v48 = 134546433;
      v49 = v32;
      v50 = 2053;
      v51 = v33;
      v52 = 2053;
      v53 = v7;
      v54 = 2053;
      v55 = v8;
      v34 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::updateSlopeAndUncertainty(GNSS::DaemonLocation &)", "%s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    return v9;
  }

  v10 = v44;
  if (qword_1025D4650 != -1)
  {
    sub_101AF5938();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a2 + 20);
    v13 = *(a2 + 67);
    *buf = 134546689;
    *&buf[4] = v7;
    *&buf[12] = 2053;
    *&buf[14] = v8;
    *&buf[22] = 2048;
    v59 = v12;
    v60 = 2048;
    v61 = v10;
    v62 = 2048;
    v63 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "DEM,populateSlope,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%.1lf,centerAltitude,%.1lf,daemonLocation.priv.groundAltitude,%.1lf", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101AF5990();
    }

    v41 = *(a2 + 20);
    v42 = *(a2 + 67);
    v48 = 134546689;
    v49 = v7;
    v50 = 2053;
    v51 = v8;
    v52 = 2048;
    v53 = v41;
    v54 = 2048;
    v55 = v10;
    v56 = 2048;
    v57 = v42;
    v43 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::updateSlopeAndUncertainty(GNSS::DaemonLocation &)", "%s\n", v43);
    if (v43 != buf)
    {
      free(v43);
    }
  }

  v14 = 0;
  v15 = 1.5;
  v16 = 0.0;
  v17 = -450.0;
  v18 = 8850.0;
  while (1)
  {
    sub_1002A9144((a1 + 608), &v46, &v45, *(a2 + 4), *(a2 + 12), a2[67], v6 + v14 * 90.0, v5);
    if (sub_1002A7C54(a1 + 912, v46, v45, v19, v20))
    {
      if ((sub_10029E824(a1 + 912, &v44, &v47, v46, v45) & 1) == 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101AF5990();
        }

        v23 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(a2 + 4);
          v25 = *(a2 + 12);
          *buf = 134546433;
          *&buf[4] = v24;
          *&buf[12] = 2053;
          *&buf[14] = v25;
          *&buf[22] = 2053;
          v59 = v46;
          v60 = 2053;
          v61 = v45;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "DEM,populateSlope,fail,lat,%{sensitive}.6lf,lon,%{sensitive}.6lf,testLatDegs,%{sensitive}.6lf,testLonDegs,%{sensitive}.6lf", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_101AF5990();
          }

          v26 = *(a2 + 4);
          v27 = *(a2 + 12);
          v48 = 134546433;
          v49 = v26;
          v50 = 2053;
          v51 = v27;
          v52 = 2053;
          v53 = v46;
          v54 = 2053;
          v55 = v45;
          v28 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::updateSlopeAndUncertainty(GNSS::DaemonLocation &)", "%s\n", v28);
          if (v28 != buf)
          {
            free(v28);
          }
        }

        goto LABEL_39;
      }

      v21 = (v44 - v10) / v5;
      v22 = fabs(v21);
      if (v22 >= v16)
      {
        v16 = v22;
      }

      if (v44 >= v17)
      {
        v17 = v44;
      }

      if (v18 >= v44)
      {
        v18 = v44;
      }

      if (v15 < v47)
      {
        v15 = v47;
      }

      if (v14 == 1)
      {
        a2[65] = -v21;
        goto LABEL_39;
      }

      if (v14 == 3)
      {
        break;
      }
    }

LABEL_39:
    if (++v14 == 4)
    {
      goto LABEL_50;
    }
  }

  a2[65] = v21;
LABEL_50:
  a2[66] = v16;
  v35 = 1.5;
  if (fabs(a2[65]) > 0.5)
  {
    v35 = 180.0;
  }

  v36 = a2[68];
  *buf = v36;
  *&buf[8] = (v17 - v18) * 0.5;
  *&buf[16] = v15;
  v59 = v35;
  v37 = 8;
  v38 = buf;
  do
  {
    if (v36 < *&buf[v37])
    {
      v36 = *&buf[v37];
      v38 = &buf[v37];
    }

    v37 += 8;
  }

  while (v37 != 32);
  v39 = *v38;
  if (*v38 < 1.5)
  {
    v39 = 1.5;
  }

  if (v39 > 9999.0)
  {
    v39 = 9999.0;
  }

  a2[68] = v39;
  return v9;
}

BOOL sub_1002A9144(float64_t *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8)
{
  result = 0;
  if (a7 >= 0.0 && a8 <= 50000.0)
  {
    v15 = fabs(a8);
    v16 = __sincos_stret((dbl_101D16780[a8 < 0.0] + a7) * 0.0174532925);
    return sub_1002AC7D4(a1, a2, a3, &v17, a4, a5, a6, v15 * v16.__cosval, v15 * v16.__sinval, 0.0);
  }

  return result;
}

void sub_1002A9278(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B8E98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002A92D0(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v5 = a3;
  v6 = a1;
  if (a1 != a2)
  {
    v29 = a5;
    v7 = *a3;
    v8 = a2;
    while (1)
    {
      v9 = 0x86BCA1AF286BCA1BLL * ((a4 - v7) >> 4);
      if ((0x86BCA1AF286BCA1BLL * ((v8 - v6) >> 4)) >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x86BCA1AF286BCA1BLL * ((v8 - v6) >> 4);
      }

      if (v10)
      {
        v11 = v8 - 56;
        v12 = a4 - 56;
        v13 = -304 * v10;
        do
        {
          v14 = *(v11 - 248);
          v15 = *(v11 - 232);
          v16 = *(v11 - 216);
          *(v12 - 200) = *(v11 - 200);
          *(v12 - 216) = v16;
          *(v12 - 232) = v15;
          *(v12 - 248) = v14;
          v17 = *(v11 - 184);
          v18 = *(v11 - 168);
          v19 = *(v11 - 152);
          *(v12 - 136) = *(v11 - 136);
          *(v12 - 152) = v19;
          *(v12 - 168) = v18;
          *(v12 - 184) = v17;
          v20 = *(v11 - 120);
          v21 = *(v11 - 104);
          v22 = *(v11 - 88);
          *(v12 - 72) = *(v11 - 72);
          *(v12 - 88) = v22;
          *(v12 - 104) = v21;
          *(v12 - 120) = v20;
          v23 = *(v11 - 56);
          v24 = *(v11 - 40);
          v25 = *(v11 - 24);
          *(v12 - 8) = *(v11 - 8);
          *(v12 - 24) = v25;
          *(v12 - 40) = v24;
          *(v12 - 56) = v23;
          sub_1001BD950(v12, v11);
          *(v12 + 40) = *(v11 + 40);
          v11 -= 304;
          v12 -= 304;
          v13 += 304;
        }

        while (v13);
        a4 = v12 + 56;
      }

      v8 -= 304 * v10;
      if (v8 == v6)
      {
        break;
      }

      v26 = *--v5;
      v7 = v26;
      a4 = v26 + 4864;
    }

    if (*v5 + 4864 == a4)
    {
      v27 = v5[1];
      ++v5;
      a4 = v27;
    }

    v6 = a2;
    a5 = v29;
  }

  *a5 = v6;
  a5[1] = v5;
  a5[2] = a4;
}

void sub_1002A9464(uint64_t a1, uint64_t a2, double a3)
{
  if (vabdd_f64(sub_1000137E0(), *(a1 + 152)) < a3)
  {
    *(a2 + 176) = 1;
    *(a2 + 184) = *(a1 + 112);
  }
}

void sub_1002A94B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101943AC8();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a2 + 4);
    v7 = "Vendor";
    v8 = *(a2 + 12);
    v9 = *(a2 + 20);
    if (a3)
    {
      v7 = "";
    }

    v10 = *(a2 + 44);
    v11 = *(a2 + 60);
    v12 = *(a2 + 672);
    v13 = *(a2 + 28);
    v14 = *(a2 + 36);
    v15 = *(a2 + 144);
    v16 = *(a2 + 52);
    v17 = *(a2 + 68);
    v18 = *(a2 + 76);
    v19 = *(a2 + 796);
    v20 = 136449539;
    v21 = v7;
    v22 = 2053;
    v23 = v6;
    v24 = 2053;
    v25 = v8;
    v26 = 2050;
    v27 = v9;
    v28 = 2049;
    v29 = v10;
    v30 = 2049;
    v31 = v11;
    v32 = 1026;
    v33 = v12;
    v34 = 2049;
    v35 = v13;
    v36 = 2050;
    v37 = v14;
    v38 = 2049;
    v39 = v15;
    v40 = 2050;
    v41 = v16;
    v42 = 2050;
    v43 = v17;
    v44 = 2050;
    v45 = v18;
    v46 = 1026;
    v47 = v19;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@ClxGps%{public}s, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, imag, %{public}d, alt, %{private}.1f, altunc, %{public}.1f, ellipsoidalAlt, %{private}.1f, speedUnc, %{public}.1f, courseUnc, %{public}.1f, timestamp, %{public}.3f, estimatorSource, %{public}d", &v20, 0x86u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101943C4C(a3, a2);
  }
}

uint64_t sub_1002A9660(uint64_t a1, double *a2)
{
  if (*(a1 + 752))
  {
    return 0;
  }

  if (!*(a1 + 360))
  {
    return 0;
  }

  v3 = *(a1 + 3064);
  if (!v3 || !sub_1002A9D4C(v3))
  {
    return 0;
  }

  sub_100021AFC(v33);
  if (sub_1002A9D7C())
  {
    sub_1002C17F8(*(a1 + 3064));
    sub_1002C18A0(*(a1 + 3064));
  }

  v5 = sub_1002C1CD0();
  if (v5)
  {
    *&v65[12] = 0;
    *&v65[4] = 0;
    *&v65[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v65[36] = _Q0;
    *&v65[52] = _Q0;
    *&v65[68] = _Q0;
    *v65 = 0xFFFF;
    *&v65[84] = 0;
    *&v65[88] = 0xBFF0000000000000;
    v66 = 0uLL;
    *(&v67 + 4) = 0xBFF0000000000000;
    LODWORD(v67) = 0;
    HIDWORD(v67) = 0x7FFFFFFF;
    memset(v68, 0, 25);
    sub_100021ED8(v69);
    v66 = v33[6];
    v67 = v33[7];
    *v68 = v34[0];
    *&v68[12] = *(v34 + 12);
    *&v65[32] = v33[2];
    *&v65[48] = v33[3];
    *&v65[64] = v33[4];
    *&v65[80] = v33[5];
    *v65 = v33[0];
    *&v65[16] = v33[1];
    memcpy(v69, v35, 0x201uLL);
    v11 = v36;
    v12 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v69[65] = v11;
    v13 = v70;
    v70 = v12;
    if (v13)
    {
      sub_100008080(v13);
    }

    v75 = v42;
    v76[0] = v43[0];
    *(v76 + 9) = *(v43 + 9);
    v71 = v38;
    v72 = v39;
    v73 = v40;
    v74 = v41;
    sub_1002C17F8(*(a1 + 3064));
    sub_1002C18A0(*(a1 + 3064));
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v14 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v15 = *a2;
      *buf = 134218752;
      v58 = *&v69[43];
      v59 = 2048;
      v60 = v15;
      v61 = 2048;
      v62 = *&v65[76];
      v63 = 2048;
      v64 = v69[3];
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "#Raven,yield at,%.3lf,requested,%.3lf,deviceTimeOfFix,%.3lf,trueTimeOfFix,%.3lf", buf, 0x2Au);
    }

    v16 = sub_10000A100(121, 2);
    if (v16)
    {
      sub_101940C70(buf);
      v30 = *a2;
      v49 = 134218752;
      v50 = v69[43];
      v51 = 2048;
      v52 = v30;
      v53 = 2048;
      v54 = *&v65[76];
      v55 = 2048;
      v56 = v69[3];
      v31 = _os_log_send_and_compose_impl();
      v16 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::yieldRavenSolution(const CFTimeInterval &, const GNSS::DaemonLocation &)", "%s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    sub_1002A94B8(v16, v65, 1);
    v17 = *(a1 + 1152);
    if (v17)
    {
      sub_1016F3724(v17, v65);
    }

    v18 = *(a1 + 360);
    if (!v18)
    {
      sub_1000CF05C();
    }

    (*(*v18 + 48))(v18, v65);
    v19 = *(a1 + 2504);
    if (v19)
    {
      sub_100930F94(v19, v65);
    }

    if (v70)
    {
      sub_100008080(v70);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v21 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v22 = *a2;
      *buf = 134217984;
      v58 = v22;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "#Raven,no yield at,%.3lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940C70(buf);
      v28 = *a2;
      *v65 = 134217984;
      *&v65[4] = v28;
      v29 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::yieldRavenSolution(const CFTimeInterval &, const GNSS::DaemonLocation &)", "%s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  v23 = *(a1 + 3104);
  if (v23)
  {
    if (*(v23 + 32) != 1)
    {
      v26 = *(v23 + 20);
      v25 = *(v23 + 8);
      goto LABEL_36;
    }

    v24 = *(v23 + 24);
    if (v24 <= *a2)
    {
      v25 = *a2 + *(v23 + 8) - v24;
      v26 = *(v23 + 20);
LABEL_36:
      if ((v26 & 1) == 0 || v25 > *(v23 + 16))
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v27 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "#raven,overDailyBudget,stop", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101940C70(buf);
          *v65 = 0;
          v32 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::yieldRavenSolution(const CFTimeInterval &, const GNSS::DaemonLocation &)", "%s\n", v32);
          if (v32 != buf)
          {
            free(v32);
          }
        }

        sub_1001C55E4(a1);
      }
    }
  }

  if (v47)
  {
    sub_100008080(v47);
  }

  if (v46 < 0)
  {
    operator delete(__p);
  }

  if (v44)
  {
    sub_100008080(v44);
  }

  if (v37)
  {
    sub_100008080(v37);
  }

  return v5;
}

void sub_1002A9D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A9D7C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = (v1 + 680);
  if (*(v0 + 4784) != 1 || (v4 = v0, *(v0 + 4856) == v0 + 4808))
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v5 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
    {
      *v57 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Raven: location requested when estimator not enabled", v57, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A2631C();
    }

    sub_100021AFC(v57);
    v6 = v64;
    *(v2 + 96) = v63;
    *(v2 + 112) = v6;
    *(v2 + 128) = v65[0];
    *(v2 + 140) = *(v65 + 12);
    v7 = v60;
    *(v2 + 32) = v59;
    *(v2 + 48) = v7;
    v8 = v62;
    *(v2 + 64) = v61;
    *(v2 + 80) = v8;
    v9 = v58;
    *v2 = *v57;
    *(v2 + 16) = v9;
    memcpy((v2 + 160), v66, 0x201uLL);
    v10 = v67;
    v67 = 0uLL;
    v11 = *(v2 + 688);
    *v3 = v10;
    if (v11)
    {
      sub_100008080(v11);
    }

    v12 = v73[0];
    *(v2 + 760) = v72;
    *(v2 + 776) = v12;
    *(v2 + 785) = *(v73 + 9);
    v13 = v69;
    *(v2 + 696) = v68;
    *(v2 + 712) = v13;
    v14 = v71;
    *(v2 + 728) = v70;
    *(v2 + 744) = v14;
    v15 = v74;
    v74 = 0uLL;
    v16 = *(v2 + 816);
    v3[8] = v15;
    if (v16)
    {
      sub_100008080(v16);
    }

    *(v2 + 888) = v79;
    v17 = v78;
    *(v2 + 856) = v77;
    *(v2 + 872) = v17;
    v18 = v76;
    *(v2 + 824) = v75;
    *(v2 + 840) = v18;
    *(v2 + 896) = v80;
    v19 = (v2 + 904);
    if (*(v2 + 927) < 0)
    {
      operator delete(*v19);
    }

    *(v2 + 920) = v82;
    *v19 = __p;
    HIBYTE(v82) = 0;
    LOBYTE(__p) = 0;
    *(v2 + 1104) = v94;
    *(v2 + 1120) = v95;
    *(v2 + 1136) = v96;
    *(v2 + 1152) = v97;
    *(v2 + 1040) = v90;
    *(v2 + 1056) = v91;
    *(v2 + 1072) = v92;
    *(v2 + 1088) = v93;
    v20 = v88;
    *(v2 + 992) = v87;
    *(v2 + 1008) = v20;
    *(v2 + 1024) = v89;
    v21 = v84;
    *(v2 + 928) = v83;
    *(v2 + 944) = v21;
    v22 = v86;
    *(v2 + 960) = v85;
    *(v2 + 976) = v22;
    v23 = v98;
    v98 = 0uLL;
    v24 = *(v2 + 1168);
    v3[30] = v23;
    if (v24)
    {
      sub_100008080(v24);
    }

    v25 = v106;
    *(v2 + 1272) = v105;
    *(v2 + 1288) = v25;
    *(v2 + 1304) = v107;
    v26 = v102;
    *(v2 + 1208) = v101;
    *(v2 + 1224) = v26;
    v27 = v104;
    *(v2 + 1240) = v103;
    *(v2 + 1256) = v27;
    v28 = v100;
    *(v2 + 1176) = v99;
    *(v2 + 1192) = v28;
    v29 = *(v2 + 1320);
    *(v2 + 1320) = v108;
    v108 = 0;

    *(v2 + 1504) = v120;
    *(v2 + 1520) = v121;
    *(v2 + 1536) = v122;
    *(v2 + 1552) = v123;
    *(v2 + 1440) = v116;
    *(v2 + 1456) = v117;
    *(v2 + 1472) = v118;
    *(v2 + 1488) = v119;
    *(v2 + 1376) = v112;
    *(v2 + 1392) = v113;
    *(v2 + 1408) = v114;
    *(v2 + 1424) = v115;
    *(v2 + 1328) = v109;
    *(v2 + 1344) = v110;
    *(v2 + 1360) = v111;

    if (*(&v98 + 1))
    {
      sub_100008080(*(&v98 + 1));
    }

    if (SHIBYTE(v82) < 0)
    {
      operator delete(__p);
    }

    if (*(&v74 + 1))
    {
      sub_100008080(*(&v74 + 1));
    }

    if (*(&v67 + 1))
    {
      sub_100008080(*(&v67 + 1));
    }
  }

  else
  {
    sub_10029FB44(v57);
    if (*(v4 + 4792))
    {
      buf[0] = 0;
      buf[8] = 0;
      sub_100E4E4B0();
    }

    if (qword_1025D4680 != -1)
    {
      sub_101A20320();
    }

    v30 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "CLGAS,Raven,GetRavenSolutionFromService,could not retrieve latest Raven solution", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      LOWORD(v124) = 0;
      v56 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::GetLocation(CLLocationProvider_Type::NotificationData &, const GNSS::DaemonLocation &) const", "%s\n", v56);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    sub_100021AFC(buf);
    v31 = v132;
    *(v2 + 96) = v131;
    *(v2 + 112) = v31;
    *(v2 + 128) = v133[0];
    *(v2 + 140) = *(v133 + 12);
    v32 = v128;
    *(v2 + 32) = v127;
    *(v2 + 48) = v32;
    v33 = v130;
    *(v2 + 64) = v129;
    *(v2 + 80) = v33;
    v34 = v126;
    *v2 = *buf;
    *(v2 + 16) = v34;
    memcpy((v2 + 160), v134, 0x201uLL);
    v35 = v135;
    v135 = 0uLL;
    v36 = *(v2 + 688);
    *v3 = v35;
    if (v36)
    {
      sub_100008080(v36);
    }

    v37 = v141[0];
    *(v2 + 760) = v140;
    *(v2 + 776) = v37;
    *(v2 + 785) = *(v141 + 9);
    v38 = v137;
    *(v2 + 696) = v136;
    *(v2 + 712) = v38;
    v39 = v139;
    *(v2 + 728) = v138;
    *(v2 + 744) = v39;
    v40 = v142;
    v142 = 0uLL;
    v41 = *(v2 + 816);
    v3[8] = v40;
    if (v41)
    {
      sub_100008080(v41);
    }

    *(v2 + 888) = v147;
    v42 = v146;
    *(v2 + 856) = v145;
    *(v2 + 872) = v42;
    v43 = v144;
    *(v2 + 824) = v143;
    *(v2 + 840) = v43;
    *(v2 + 896) = v148;
    v44 = (v2 + 904);
    if (*(v2 + 927) < 0)
    {
      operator delete(*v44);
    }

    *(v2 + 920) = v150;
    *v44 = v149;
    HIBYTE(v150) = 0;
    LOBYTE(v149) = 0;
    *(v2 + 1104) = v162;
    *(v2 + 1120) = v163;
    *(v2 + 1136) = v164;
    *(v2 + 1152) = v165;
    *(v2 + 1040) = v158;
    *(v2 + 1056) = v159;
    *(v2 + 1072) = v160;
    *(v2 + 1088) = v161;
    v45 = v156;
    *(v2 + 992) = v155;
    *(v2 + 1008) = v45;
    *(v2 + 1024) = v157;
    v46 = v152;
    *(v2 + 928) = v151;
    *(v2 + 944) = v46;
    v47 = v154;
    *(v2 + 960) = v153;
    *(v2 + 976) = v47;
    v48 = v166;
    v166 = 0uLL;
    v49 = *(v2 + 1168);
    v3[30] = v48;
    if (v49)
    {
      sub_100008080(v49);
    }

    v50 = v174;
    *(v2 + 1272) = v173;
    *(v2 + 1288) = v50;
    *(v2 + 1304) = v175;
    v51 = v170;
    *(v2 + 1208) = v169;
    *(v2 + 1224) = v51;
    v52 = v172;
    *(v2 + 1240) = v171;
    *(v2 + 1256) = v52;
    v53 = v168;
    *(v2 + 1176) = v167;
    *(v2 + 1192) = v53;
    v54 = *(v2 + 1320);
    *(v2 + 1320) = v176;
    v176 = 0;

    *(v2 + 1504) = v188;
    *(v2 + 1520) = v189;
    *(v2 + 1536) = v190;
    *(v2 + 1552) = v191;
    *(v2 + 1440) = v184;
    *(v2 + 1456) = v185;
    *(v2 + 1472) = v186;
    *(v2 + 1488) = v187;
    *(v2 + 1376) = v180;
    *(v2 + 1392) = v181;
    *(v2 + 1408) = v182;
    *(v2 + 1424) = v183;
    *(v2 + 1328) = v177;
    *(v2 + 1344) = v178;
    *(v2 + 1360) = v179;

    if (*(&v166 + 1))
    {
      sub_100008080(*(&v166 + 1));
    }

    if (SHIBYTE(v150) < 0)
    {
      operator delete(v149);
    }

    if (*(&v142 + 1))
    {
      sub_100008080(*(&v142 + 1));
    }

    if (*(&v135 + 1))
    {
      sub_100008080(*(&v135 + 1));
    }

    raven::RavenSolutionEvent::~RavenSolutionEvent(v57);
  }

  return 0;
}

void sub_1002AAA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  raven::RavenSolutionEvent::~RavenSolutionEvent(va);
  _Unwind_Resume(a1);
}

int64x2_t *sub_1002AAB18(int64x2_t *a1)
{
  a1->i8[0] = 0;
  sub_10029FBBC(&a1->i64[1]);
  a1[6].i16[4] = 0;
  a1[7].i64[1] = 0;
  a1[8].i64[0] = 0;
  a1[60] = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[61].i64[0] = 0;
  a1[61].i64[1] = 0x7FF8000000000000;
  sub_10029FC4C(a1);
  return a1;
}

int64x2_t sub_1002AAB6C(_OWORD *a1)
{
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v1 = sub_10029FBBC(a1);
  *(v1 + 96) = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(v1 + 104) = result;
  *(v1 + 120) = result;
  *(v1 + 136) = result;
  *(v1 + 152) = result;
  *(v1 + 168) = 0x7FF8000000000000;
  *(v1 + 176) = 0;
  *(v1 + 184) = result;
  *(v1 + 200) = result;
  *(v1 + 216) = result;
  *(v1 + 232) = result;
  *(v1 + 248) = result;
  *(v1 + 264) = 0x7FF8000000000000;
  *(v1 + 272) = result;
  *(v1 + 288) = 0x7FF8000000000000;
  *(v1 + 296) = 0;
  *(v1 + 304) = result;
  *(v1 + 320) = result;
  *(v1 + 336) = result;
  *(v1 + 352) = result;
  *(v1 + 368) = 0x7FF8000000000000;
  *(v1 + 376) = 0;
  *(v1 + 384) = result;
  *(v1 + 400) = result;
  *(v1 + 416) = result;
  *(v1 + 432) = result;
  *(v1 + 448) = 0x7FF8000000000000;
  *(v1 + 456) = 0;
  *(v1 + 464) = result;
  *(v1 + 480) = result;
  *(v1 + 496) = result;
  *(v1 + 512) = result;
  *(v1 + 528) = result;
  *(v1 + 544) = result;
  *(v1 + 560) = result;
  *(v1 + 576) = 0;
  *(v1 + 584) = 0x7FF8000000000000;
  *(v1 + 592) = result;
  *(v1 + 608) = result;
  *(v1 + 624) = result;
  *(v1 + 640) = result;
  *(v1 + 656) = 0;
  *(v1 + 664) = 0x7FF8000000000000;
  *(v1 + 672) = result;
  *(v1 + 688) = result;
  *(v1 + 704) = result;
  *(v1 + 720) = result;
  *(v1 + 736) = 0;
  *(v1 + 744) = 0x7FF8000000000000;
  *(v1 + 752) = result;
  *(v1 + 768) = result;
  *(v1 + 784) = result;
  *(v1 + 800) = result;
  *(v1 + 816) = 0;
  *(v1 + 824) = 0x7FF8000000000000;
  *(v1 + 832) = result;
  *(v1 + 848) = result;
  return result;
}

double sub_1002AAC48(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  sub_10029FBBC(&v6);
  v2 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v2;
  v3 = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v4 = v7;
  *a1 = v6;
  *(a1 + 16) = v4;
  result = 0.0;
  *(a1 + 184) = 0u;
  a1 += 184;
  *(a1 - 88) = 0;
  *(a1 - 80) = 0x3FF0000000000000;
  *(a1 - 72) = 0u;
  *(a1 - 56) = 0u;
  *(a1 - 40) = 0u;
  *(a1 - 24) = 0u;
  *(a1 - 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0x3FF0000000000000;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0x3FF0000000000000;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0x3FE0000000000000;
  *(a1 + 424) = 0x3FE0000000000000;
  *(a1 + 432) = 0;
  return result;
}

double sub_1002AAD1C(uint64_t a1)
{
  memset(v6, 0, 96);
  sub_10029FBBC(v6);
  v2 = v6[3];
  *(a1 + 40) = v6[2];
  *(a1 + 56) = v2;
  v3 = v6[5];
  *(a1 + 72) = v6[4];
  *(a1 + 88) = v3;
  v4 = v6[1];
  *(a1 + 8) = v6[0];
  *(a1 + 24) = v4;
  sub_10029FC4C(a1 + 104);
  bzero(v6, 0x360uLL);
  sub_1002AAB6C(v6);
  memcpy((a1 + 1168), v6, 0x360uLL);
  return sub_1002AAC48(a1 + 2032);
}

double sub_1002AADB4(double a1, double a2)
{
  if (a1 < 0.0)
  {
    a1 = a1 + 360.0;
  }

  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  result = a2 - a1;
  if (result > 180.0)
  {
    return result + -360.0;
  }

  if (result < -180.0)
  {
    return result + 360.0;
  }

  return result;
}

void sub_1002AAE10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 100) |= 4u;
    v4 = *(a2 + 16);
    if (!v4)
    {
      operator new();
    }

    sub_1001F34E4(a1, v4);
    *(a2 + 100) |= 8u;
    v5 = *(a2 + 24);
    if (!v5)
    {
      operator new();
    }

    sub_1001F3908(a1 + 160, v5);
    v6 = *(a1 + 824);
    *(a2 + 100) |= 0x10u;
    v7 = *(a2 + 32);
    if (!v7)
    {
      operator new();
    }

    sub_10010E544(v6, v7);
    v8 = *(a2 + 100);
    *(a2 + 72) = *(a1 + 832);
    *(a2 + 48) = *(a1 + 840);
    *(a2 + 100) = v8 | 0x160;
    v9 = *(a2 + 56);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 44) |= 1u;
    *(a2 + 100) |= 0x100u;
    *(v9 + 44) |= 2u;
    *(v9 + 8) = vextq_s8(*(a1 + 848), *(a1 + 848), 8uLL);
    *(a2 + 100) |= 0x100u;
    *(v9 + 44) |= 4u;
    *(a2 + 100) |= 0x100u;
    v10 = *(a2 + 80);
    *(v9 + 44) |= 8u;
    *(v9 + 24) = *(a1 + 864);
    *(a2 + 100) |= 0x400u;
    if (!v10)
    {
      operator new();
    }

    v11 = *(a1 + 896);
    *(v10 + 28) |= 1u;
    *(v10 + 8) = v11;
    v12 = sub_1001F40C8((a1 + 928));
    if (!sub_10041ECEC(v12))
    {
      sub_10188265C();
    }

    v13 = *(a2 + 100);
    *(a2 + 76) = v12;
    *(a2 + 100) = v13 | 0x1800;
    v14 = *(a2 + 88);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a1 + 944);
    *(v14 + 36) |= 1u;
    *(a2 + 100) |= 0x1000u;
    v16 = *(a1 + 936);
    *(v14 + 36) |= 2u;
    *(v14 + 8) = v15;
    *(v14 + 16) = v16;
    *(a2 + 100) |= 0x1000u;
    v17 = *(a1 + 1528);
    v18 = *(a1 + 952);
    *(v14 + 36) |= 4u;
    *(v14 + 24) = v18;
    *(a2 + 100) |= 0x2000u;
    *(a2 + 73) = v17;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v19 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v20 = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "pLocation,Invalid pointer", v20, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B867D0();
    }
  }
}

void *sub_1002AB1A8(void *result)
{
  *result = off_102452518;
  result[1] = 0;
  result[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  result[3] = 0;
  return result;
}

uint64_t sub_1002AB1D4(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v4 = *(v3 + 28);
  }

  if ((v4 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return result;
}

long double sub_1002AB240(double a1, double a2, double a3, double a4)
{
  v4 = a3;
  result = 0.0;
  if (a3 > 90.0)
  {
    return result;
  }

  v7 = fabs(a1);
  if (v7 > 90.0 || a3 < -90.0)
  {
    return result;
  }

  v8 = 360.0;
  v9 = a4 + 360.0;
  if (a4 >= 0.0)
  {
    v9 = a4;
  }

  v10 = a2 + 360.0;
  if (a2 >= 0.0)
  {
    v10 = a2;
  }

  v11 = v10 - v9;
  if (v11 <= 180.0)
  {
    if (v11 >= -180.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = -360.0;
  }

  v11 = v11 + v8;
LABEL_12:
  if (fabs(a1 + a3) >= 0.0001)
  {
    v43 = a2;
    v45 = a4;
LABEL_17:
    v12 = v11;
    goto LABEL_18;
  }

  if (v7 < 0.0001 && 180.0 - fabs(v11) < 0.0001)
  {
    return 20037508.3;
  }

  v41 = fabs(v7 + -90.0) < 0.0001;
  if (v41)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v11;
  }

  v45 = a4;
  v43 = a2;
  if (!v41 && 180.0 - fabs(v11) >= 0.0001)
  {
    goto LABEL_17;
  }

  if (a1 <= a3)
  {
    v4 = a3 + -0.0001;
  }

  else
  {
    a1 = a1 + -0.0001;
  }

LABEL_18:
  v13 = v12 * 0.0174532925;
  v42 = a1;
  v14 = tan(a1 * 0.0174532925);
  v44 = v4;
  v15 = tan(v4 * 0.0174532925);
  v16 = v14 * 0.996647189;
  v17 = v15 * 0.996647189;
  v18 = atan(v16);
  v19 = atan(v17);
  v20 = __sincos_stret(v18);
  v21 = __sincos_stret(v19);
  v22 = 0;
  v23 = v21.__cosval * v20.__cosval;
  v46 = v13;
  while (1)
  {
    v24 = __sincos_stret(v13);
    v25 = sqrt((-(v20.__sinval * v21.__cosval) * v24.__cosval + v20.__cosval * v21.__sinval) * (-(v20.__sinval * v21.__cosval) * v24.__cosval + v20.__cosval * v21.__sinval) + v21.__cosval * v24.__sinval * (v21.__cosval * v24.__sinval));
    if (v25 < 2.22044605e-15)
    {
      break;
    }

    v26 = v23 * v24.__cosval + v20.__sinval * v21.__sinval;
    v27 = fabs(v26);
    if (fabs(v25) > 1.0 || v27 > 1.0)
    {
      break;
    }

    v29 = atan2(v25, v26);
    v30 = v23 * v24.__sinval / v25;
    if (v30 > 1.0)
    {
      break;
    }

    v31 = 1.0 - v30 * v30;
    if (fabs(v31) >= 2.22044605e-15)
    {
      v32 = v26 - v21.__sinval * (v20.__sinval + v20.__sinval) / v31;
      v33 = v31 * 0.000209550667 * ((v31 * -3.0 + 4.0) * 0.00335281066 + 4.0);
    }

    else
    {
      v32 = -1.0;
      v33 = 0.0;
    }

    v34 = v30 * ((1.0 - v33) * 0.00335281066);
    v35 = v32 * v32 * 2.0 + -1.0;
    v36 = v46 + v34 * (v29 + v25 * v33 * (v32 + v26 * v33 * v35));
    if (vabdd_f64(v36, v13) > 0.000000001)
    {
      v13 = v36;
      if (v22++ < 0x31)
      {
        continue;
      }
    }

    v38 = v31 * 2.72331606e11 / 4.04083e13;
    v39 = v38 * 0.0000610351562 * (v38 * (v38 * (v38 * -175.0 + 320.0) + -768.0) + 4096.0) + 1.0;
    v40 = v38 * 0.0009765625 * (v38 * (v38 * (v38 * -47.0 + 74.0) + -128.0) + 256.0);
    return v39 * 6356752.31 * (v29 - v25 * v40 * (v32 + v40 * 0.25 * ((v32 * v32 * 4.0 + -3.0) * (v32 * (v40 / 6.0) * 3.0) + v26 * v35)));
  }

  return sub_100FE3ABC(v42, v43, v44, v45);
}

BOOL sub_1002AB68C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!sub_100072814(a1))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_100B1AA60(buf);
      v15 = v38 >= 0 ? buf : *buf;
      *v27 = 136642819;
      v28 = *&v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, invalid location %{sensitive}s, fail", v27, 0xCu);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A337A4();
    }

    return 0;
  }

  if (!sub_100072814(a2))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_100B1AA60(buf);
      v17 = v38 >= 0 ? buf : *buf;
      *v27 = 136642819;
      v28 = *&v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, invalid reference location %{sensitive}s, fail", v27, 0xCu);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A338C8();
    }

    return 0;
  }

  v8 = *(sub_1001AB6A8() + 3);
  if (*(a3 + 344) <= 0.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, warning, machContinuousTime not available in location private", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A339EC();
    }

    v11 = vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a2 + 76));
  }

  else
  {
    v9 = sub_1000081AC();
    v10 = *(a3 + 344);
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v11 = vabdd_f64(v9, v10);
    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a3 + 344);
      *buf = 134349312;
      *&buf[4] = v13;
      v36 = 2050;
      v37 = v11;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, machContinuousTime %{public}.1f, age %{public}.1f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A33AE0((a3 + 344), v11);
    }
  }

  if (v11 > v8)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33C14();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v11;
      v36 = 2050;
      v37 = v8;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, age, %{public}.1f, threshold, %{public}.1f, fail", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A33C3C(v11, v8);
    }

    return 0;
  }

  v22 = sub_100117154(*(a1 + 4), *(a1 + 12), *(a2 + 4), *(a2 + 12));
  v20 = v22 <= a4;
  if (qword_1025D4620 != -1)
  {
    sub_101A33C14();
  }

  v23 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v24 = "fail";
    *buf = 134349826;
    *&buf[4] = v11;
    if (v22 <= a4)
    {
      v24 = "pass";
    }

    v36 = 2050;
    v37 = v22;
    v38 = 2050;
    v39 = a4;
    v40 = 2082;
    v41 = v24;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, age, %{public}.1f, distance, %{public}.1f, threshold, %{public}.1f, %{public}s", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101A33C14();
    }

    v25 = "fail";
    *v27 = 134349826;
    if (v22 <= a4)
    {
      v25 = "pass";
    }

    v28 = v11;
    v29 = 2050;
    v30 = v22;
    v31 = 2050;
    v32 = a4;
    v33 = 2082;
    v34 = v25;
    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLWifiLocationIntegrityCalculator::shouldBumpLocationIntegrity(const CLDaemonLocation &, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const double)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  return v20;
}

uint64_t sub_1002ABC10(uint64_t a1, double *a2, void *a3, double *a4, double *a5, _BYTE *a6)
{
  if (*(a1 + 120))
  {
    v12 = (a1 + 64);
    v13 = *a2 - *(a1 + 64);
    if (v13 >= *(sub_1000F7F38() + 12))
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B40DE8();
      }

      v19 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v20 = *a2 - *v12;
        v26 = 134283521;
        v27 = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, stopping, did not propagate for, %{private}0.3f, seconds", &v26, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B41184();
      }

      goto LABEL_42;
    }

    v14 = *a2 - *(a1 + 72);
    if (v14 >= *(sub_1000F7F38() + 13))
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B40DE8();
      }

      v21 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v22 = *a2 - *(a1 + 72);
        v26 = 134283521;
        v27 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, stopping, did not update for, %{private}0.3f, seconds", &v26, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B41270();
      }

      goto LABEL_42;
    }

    if ((sub_1002ABFE0(a1, a2, a3) & 1) == 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B40DE8();
      }

      v23 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v26) = 0;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, stopping, unable to propagate", &v26, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B4135C();
      }

      goto LABEL_42;
    }

    if (sub_1002AC504(a1, a4, a5, v15, a6))
    {
      if (!sub_1002F0AF0(a1, a4, a5))
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B40DE8();
        }

        v16 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v26) = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, stopping, unable to update", &v26, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B41438();
        }

        goto LABEL_42;
      }
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    if ((sub_1001A4254(a1, (a1 + 8)) & 1) == 0)
    {
LABEL_42:
      sub_1000FB170(a1);
      return 0;
    }

    v24 = *(sub_1000F7F38() + 28);
    v25 = v24 * *(sub_1000F7F38() + 28);
    if (v25 >= *(a1 + 8))
    {
      v25 = *(a1 + 8);
    }

    *(a1 + 8) = v25;
    return 1;
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v26) = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, did not propagate and update, not initialized", &v26, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B410A8();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002ABFE0(uint64_t a1, double *a2, void *a3)
{
  v4 = (a1 + 64);
  v5 = *(a1 + 64);
  *(a1 + 96) = *a2 - v5;
  if (*a2 < v5)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v7 = *v4;
      v8 = *a2;
      v37 = 134283777;
      *v38 = v7;
      *&v38[8] = 2049;
      *&v38[10] = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, did not propagate, filter's propagation timestamp, %{private}0.3f, is larger than current wifi timestamp, %{private}0.3f", &v37, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B41900();
      return 0;
    }

    return result;
  }

  *v4 = *a2;
  sub_1001A9800(&v37, a3 + 1);
  v12 = v40;
  sub_100102BC8(&v37);
  if (!v12)
  {
    v25 = *(a1 + 8) + *(a1 + 96) * *(a1 + 96) * *(a1 + 48);
    *(a1 + 16) = *a1;
    *(a1 + 24) = v25;
    if (qword_1025D4620 != -1)
    {
      sub_101B40BC4();
    }

    v26 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v27 = *v4;
      v37 = 134283521;
      *v38 = v27;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, propagated, timestamp, %{private}0.3f", &v37, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B41814();
    }

    return 1;
  }

  sub_1001A9800(&v37, a3 + 1);
  v13 = *(*(*&v38[4] + (((v40 + v39 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v40 + v39 - 1) + 8);
  sub_100102BC8(&v37);
  sub_1001A9800(&v37, a3 + 1);
  v14 = *(*(*&v38[4] + (((v40 + v39 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v40 + v39 - 1));
  sub_100102BC8(&v37);
  v15 = (*(*a3 + 16))(a3, a2);
  v16 = *(a1 + 80);
  if (v13 >= v16)
  {
    v17 = v15;
    *(a1 + 88) = v13 - v16;
    v18 = (a1 + 88);
    v19 = *(a1 + 112);
    *(a1 + 80) = v13;
    if (v13 - v16 <= *(sub_1000F7F38() + 15))
    {
      v23 = v14 - v19;
      v24 = *v18;
      if (*v18 != 0.0)
      {
        *(a1 + 104) = 0;
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
        v21 = *(a1 + 88);
        v22 = *(a1 + 104);
        v37 = 134283777;
        *v38 = v21;
        *&v38[8] = 2049;
        *&v38[10] = v22;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, baro outage time interval, %{private}0.3f, altitude change over outage, %{private}0.3f", &v37, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B41638();
      }

      v23 = v14 - *(a1 + 112) - *(a1 + 104);
      *(a1 + 104) = 0;
      v24 = *(a1 + 88);
    }

    *(a1 + 112) = v14;
    v30 = fabs(v23);
    v31 = (v30 < 2.5) & v17;
    if (v24 == 0.0)
    {
      if (v31)
      {
        goto LABEL_35;
      }
    }

    else if ((v30 / v24 > *(sub_1000F7F38() + 6)) | v31 & 1)
    {
LABEL_35:
      v32 = *a1;
      v33 = 32;
LABEL_38:
      v34 = *(a1 + 8) + *(a1 + 96) * *(a1 + 96) * *(a1 + v33);
      *(a1 + 16) = v32;
      *(a1 + 24) = v34;
      if (qword_1025D4620 != -1)
      {
        sub_101B40BC4();
      }

      v35 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v36 = *v4;
        v37 = 134283521;
        *v38 = v36;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, propagated, timestamp, %{private}0.3f", &v37, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B41728();
      }

      return 1;
    }

    v32 = v23 + *a1;
    v33 = 40;
    goto LABEL_38;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101B40BC4();
  }

  v28 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(a1 + 80);
    v37 = 134283777;
    *v38 = v29;
    *&v38[8] = 2049;
    *&v38[10] = v13;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, did not propagate, filter's relative altitude timestamp, %{private}0.3f, is larger than current relative altitude timestamp, %{private}0.3f", &v37, 0x16u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B41514((a1 + 80), v13);
    return 0;
  }

  return result;
}

uint64_t sub_1002AC504(double *a1, double *a2, uint64_t *a3, uint64_t a4, _BYTE *a5)
{
  v8 = sub_1001A4254(a2, a3);
  v9 = v8;
  v10 = a1[12];
  if (v10 <= 0.0)
  {
    v12 = 1;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = *a5 & v12;
    return v13 & 1;
  }

  v11 = vabdd_f64(*a2, *a1) / v10;
  v12 = v11 < *(sub_1000F7F38() + 16);
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1002AC598(uint64_t a1, uint64_t *a2, double *a3)
{
  if (*(a1 + 120) != 1)
  {
    return 0;
  }

  result = sub_1001A4254(a1, (a1 + 8));
  if (result)
  {
    *a2 = *a1;
    v7 = *(sub_1000F7F38() + 8) * sqrt(*(a1 + 8));
    v8 = *(sub_1000F7F38() + 9);
    if (v7 >= v8)
    {
      v8 = v7;
    }

    *a3 = v8;
    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a2;
      v11 = *a3;
      v12 = 134283777;
      v13 = v10;
      v14 = 2049;
      v15 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, estimated altitude, %{private}0.3f, uncertainty, %{private}0.3f", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B41AD4();
    }

    return 1;
  }

  return result;
}

uint64_t sub_1002AC6F0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_1002AC76C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452518;
  sub_1002AC6F0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

BOOL sub_1002AC7D4(float64_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = sqrt(a9 * a9 + a8 * a8);
  if (v11 <= 70000.0)
  {
    if (vabdd_f64(a5, a1[3]) <= 0.005)
    {
      v26.f64[0] = *a1;
      cosval = a1[4];
    }

    else
    {
      a1[2] = a5 * 0.0174532925;
      a1[3] = a5;
      v22 = __sincos_stret(a5 * 0.0174532925);
      cosval = v22.__cosval;
      v23 = v22.__sinval * -0.00669437999 * v22.__sinval + 1.0;
      v24 = sqrt(v23);
      v25.f64[0] = v23 * v24;
      v25.f64[1] = v24;
      v26 = vdivq_f64(xmmword_101D16770, v25);
      *a1 = v26;
      a1[4] = v22.__cosval;
    }

    v27 = v26.f64[0] + a7;
    v28 = 0.0;
    v29 = a8 / v27;
    if (fabs(cosval) >= 0.0001)
    {
      v28 = a9 / (cosval * (a1[1] + a7));
    }

    *a2 = a5 + v29 * 57.2957795;
    *a3 = a6 + v28 * 57.2957795;
    *a4 = a7 + a10;
    v30 = *a2;
    if (*a2 > 90.0)
    {
      *a2 = 180.0 - v30;
      *a3 = *a3 + 180.0;
      v30 = *a2;
    }

    if (v30 >= -90.0)
    {
      v31 = *a3;
    }

    else
    {
      *a2 = -180.0 - v30;
      v31 = *a3 + 180.0;
      *a3 = v31;
    }

    if (v31 > -180.0)
    {
      if (v31 <= 180.0)
      {
        return v11 <= 70000.0;
      }
    }

    else
    {
      v31 = v31 + 360.0;
    }

    if (v31 > 180.0)
    {
      v31 = v31 + -360.0;
    }

    *a3 = v31;
  }

  return v11 <= 70000.0;
}

uint64_t sub_1002AC9D0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 16);
      v6 = *(v5 + 23);
      v7 = v6;
      v8 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v9 = *(v5 + 23);
      }

      else
      {
        v9 = v8;
      }

      if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
        v6 = *(v5 + 23);
        v8 = *(v5 + 8);
        v7 = *(v5 + 23);
      }

      else
      {
        v10 = 1;
      }

      if (v7 < 0)
      {
        v6 = v8;
      }

      v4 = (v4 + v10 + v6 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = v4;
  return v4;
}