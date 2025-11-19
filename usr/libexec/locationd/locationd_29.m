uint64_t sub_1001F262C(uint64_t a1, unsigned __int8 *a2)
{
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v4 = (a2 + 124);
  v3 = *(a2 + 31);
  v100 = 0u;
  if (v3 < 1)
  {
    v95 = 1;
    v10 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = v3;
    do
    {
      v8 = *&a2[v5 + 128];
      *(&v100 + v5) = v8 / v7;
      v6 += v8;
      v5 += 4;
    }

    while (v5 != 56);
    v9 = *(a2 + 46);
    v10 = v9 / v7;
    v11 = v9 + v6;
    if (v9 + v6 == v3)
    {
      v95 = 1;
    }

    else
    {
      if (qword_1025D4790 != -1)
      {
        sub_1019162C4();
      }

      v12 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
      {
        v13 = *v4;
        *buf = 67109376;
        v164 = v11;
        v165 = 1024;
        LODWORD(v166) = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "The sum of the delivered locations by type (%d) does not equal the delivered locations counter (%d).", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019162D8();
      }

      v95 = 0;
    }
  }

  v14 = *(a2 + 8);
  v15 = *(a2 + 1);
  if (qword_1025D4790 != -1)
  {
    sub_1019163F4();
  }

  v16 = v14 - v15;
  v17 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v18 = *a2;
    v19 = *(a2 + 1);
    v20 = *(a2 + 2);
    v21 = a2[39];
    v57 = a2[40];
    v58 = a2[41];
    v60 = a2[42];
    v62 = a2[43];
    v64 = *(a2 + 12);
    v66 = a2[44];
    v68 = a2[52];
    v72 = *(a2 + 14);
    v74 = *(a2 + 15);
    v70 = *(a2 + 8);
    v76 = *(a2 + 9);
    v78 = *(a2 + 24);
    v80 = *(a2 + 11);
    v82 = *(a2 + 10);
    v84 = *(a2 + 12);
    v86 = *(a2 + 13);
    v88 = *(a2 + 14);
    v90 = a2[120];
    v92 = *(a2 + 31);
    v94 = *(a2 + 47);
    sub_1006FA730(&v106);
    v22 = SBYTE3(v110);
    v23 = v106;
    sub_1006FA9F8(__p);
    v164 = v18;
    if (v22 >= 0)
    {
      v24 = &v106;
    }

    else
    {
      v24 = v23;
    }

    if (v21 >= 0)
    {
      v25 = a2 + 16;
    }

    else
    {
      v25 = v20;
    }

    v26 = __p;
    if (v99 < 0)
    {
      v26 = __p[0];
    }

    v166 = v19;
    v168 = v25;
    v170 = v57;
    v172 = v58;
    v174 = v60;
    v176 = v62;
    v178 = v64;
    v180 = v66;
    v182 = v68;
    v184 = v72;
    v186 = v74;
    v188 = v70;
    v192 = v78;
    v194 = v76;
    v196 = v80;
    v198 = v82;
    v200 = v84;
    v202 = v86;
    v204 = v88;
    v206 = v90;
    v208 = v92;
    v210 = v94;
    v212 = v24;
    v167 = 2080;
    v211 = 2080;
    v213 = 2080;
    v214 = v26;
    v216 = *(a2 + 46);
    v165 = 2048;
    v187 = 2048;
    v189 = 2048;
    v191 = 2048;
    v193 = 2048;
    v195 = 2048;
    v197 = 2048;
    v199 = 2048;
    v201 = 2048;
    v203 = 2048;
    v217 = 2048;
    v190 = v16;
    v218 = v10;
    v169 = 1024;
    v171 = 1024;
    v173 = 1024;
    v175 = 1024;
    v177 = 1024;
    v179 = 1024;
    v181 = 1024;
    v183 = 1024;
    v185 = 1024;
    v205 = 1024;
    v207 = 1024;
    v209 = 1024;
    v215 = 1024;
    v219 = 1024;
    *buf = 67116290;
    v220 = v95;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "metric.valid,%d,metric.timestamp,%.3f,metric.bundleId,%s,cellAvailable,%d,wifiAvailable,%d,passcodeLocked,%d,airplaneMode,%d,reachability,%d,accessoryConnected,%d,powered,%d,gpsCoexWifi,%d,gpsCoexBt,%d,timestampEnd,%.3f,duration,%.3f,cblsPowerSaverBkgRuntimeLoss,%.3f,desiredAccuracy,%.2f,achievedAccuracy,%.2f,distanceFilter,%.2f,ttff,%.3f,ttffGps,%.3f,achievedSpeed,%.2f,autoStopped,%d,deferredLocations,0,deliveredLocations,%d,cblsPowerSaverLocationLoss,%d,deliveredLocationsByType,%s,deliveredLocationsByTypeFraction,%s,sdeliveredLocationsUndefined,%d,deliveredLocationsUndefinedFraction,%.4f,validDeliveredLocationsByType,%d", buf, 0xE8u);
    if (v99 < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE3(v110) < 0)
    {
      operator delete(v106);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191641C(buf);
    v44 = *a2;
    v45 = *(a2 + 1);
    v46 = *(a2 + 2);
    v47 = a2[39];
    v48 = a2[40];
    v49 = a2[41];
    v59 = a2[42];
    v61 = a2[43];
    v63 = *(a2 + 12);
    v65 = a2[44];
    v67 = a2[52];
    v71 = *(a2 + 14);
    v73 = *(a2 + 15);
    v69 = *(a2 + 8);
    v75 = *(a2 + 9);
    v77 = *(a2 + 24);
    v79 = *(a2 + 11);
    v81 = *(a2 + 10);
    v83 = *(a2 + 12);
    v85 = *(a2 + 13);
    v87 = *(a2 + 14);
    v89 = a2[120];
    v91 = *(a2 + 31);
    v93 = *(a2 + 47);
    sub_1006FA730(__p);
    v50 = v99;
    v51 = __p[0];
    sub_1006FA9F8(v96);
    v52 = __p;
    if (v50 < 0)
    {
      v52 = v51;
    }

    if (v47 >= 0)
    {
      v53 = a2 + 16;
    }

    else
    {
      v53 = v46;
    }

    v54 = *(a2 + 46);
    v55 = v96;
    if (v97 < 0)
    {
      v55 = v96[0];
    }

    LODWORD(v106) = 67116290;
    HIDWORD(v106) = v44;
    v107 = 2048;
    v108 = v45;
    v109 = 2080;
    v110 = v53;
    v111 = 1024;
    v112 = v48;
    v113 = 1024;
    v114 = v49;
    v115 = 1024;
    v116 = v59;
    v117 = 1024;
    v118 = v61;
    v119 = 1024;
    v120 = v63;
    v121 = 1024;
    v122 = v65;
    v123 = 1024;
    v124 = v67;
    v125 = 1024;
    v126 = v71;
    v127 = 1024;
    v128 = v73;
    v129 = 2048;
    v130 = v69;
    v131 = 2048;
    v132 = v16;
    v133 = 2048;
    v134 = v77;
    v135 = 2048;
    v136 = v75;
    v137 = 2048;
    v138 = v79;
    v139 = 2048;
    v140 = v81;
    v141 = 2048;
    v142 = v83;
    v143 = 2048;
    v144 = v85;
    v145 = 2048;
    v146 = v87;
    v147 = 1024;
    v148 = v89;
    v149 = 1024;
    v150 = v91;
    v151 = 1024;
    v152 = v93;
    v153 = 2080;
    v154 = v52;
    v155 = 2080;
    v156 = v55;
    v157 = 1024;
    v158 = v54;
    v159 = 2048;
    v160 = v10;
    v161 = 1024;
    v162 = v95;
    v56 = _os_log_send_and_compose_impl();
    if (v97 < 0)
    {
      operator delete(v96[0]);
    }

    if (v99 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonStats::submitMetric(const CLDaemonStats_Type::LocationUpdateSession &)", "%s\n", v56);
    if (v56 != buf)
    {
      free(v56);
    }
  }

  v104[0] = @"valid";
  v105[0] = [NSNumber numberWithBool:*a2];
  v104[1] = @"bundleId";
  if ((a2[39] & 0x80u) == 0)
  {
    v27 = a2 + 16;
  }

  else
  {
    v27 = *(a2 + 2);
  }

  v105[1] = [NSString stringWithUTF8String:v27];
  v104[2] = @"cellAvailable";
  v105[2] = [NSNumber numberWithBool:a2[40]];
  v104[3] = @"wifiAvailable";
  v105[3] = [NSNumber numberWithBool:a2[41]];
  v104[4] = @"passcodeLocked";
  v105[4] = [NSNumber numberWithBool:a2[42]];
  v104[5] = @"airplaneMode";
  v105[5] = [NSNumber numberWithBool:a2[43]];
  v104[6] = @"reachability";
  v105[6] = [NSNumber numberWithUnsignedInt:*(a2 + 12)];
  v104[7] = @"accessoryConnected";
  v105[7] = [NSNumber numberWithBool:a2[44]];
  v104[8] = @"powered";
  v105[8] = [NSNumber numberWithBool:a2[52]];
  v104[9] = @"gpsCoexWifi";
  v105[9] = [NSNumber numberWithInt:*(a2 + 14)];
  v104[10] = @"gpsCoexBt";
  v105[10] = [NSNumber numberWithInt:*(a2 + 15)];
  v104[11] = @"duration";
  v105[11] = [NSNumber numberWithDouble:v16];
  v104[12] = @"cblsPowerSaverBkgRuntimeLoss";
  v105[12] = [NSNumber numberWithDouble:*(a2 + 24)];
  v104[13] = @"desiredAccuracy";
  v105[13] = [NSNumber numberWithDouble:*(a2 + 9)];
  v104[14] = @"achievedAccuracy";
  v105[14] = [NSNumber numberWithDouble:*(a2 + 11)];
  v104[15] = @"distanceFilter";
  v105[15] = [NSNumber numberWithDouble:*(a2 + 10)];
  v104[16] = @"ttff";
  v105[16] = [NSNumber numberWithDouble:*(a2 + 12)];
  v104[17] = @"ttffGps";
  v105[17] = [NSNumber numberWithDouble:*(a2 + 13)];
  v104[18] = @"achievedSpeed";
  v105[18] = [NSNumber numberWithDouble:*(a2 + 14)];
  v104[19] = @"autoStopped";
  v105[19] = [NSNumber numberWithBool:a2[120]];
  v104[20] = @"deliveredLocations";
  v105[20] = [NSNumber numberWithInt:*(a2 + 31)];
  v104[21] = @"cblsPowerSaverLocationLoss";
  v105[21] = [NSNumber numberWithInt:*(a2 + 47)];
  v104[22] = @"deliveredLocationsUnknown";
  v105[22] = [NSNumber numberWithInt:*(a2 + 32)];
  v104[23] = @"deliveredLocationsUnknownFraction";
  LODWORD(v28) = v100;
  v105[23] = [NSNumber numberWithFloat:v28];
  v104[24] = @"deliveredLocationsGps";
  v105[24] = [NSNumber numberWithInt:*(a2 + 33)];
  v104[25] = @"deliveredLocationsGpsFraction";
  LODWORD(v29) = DWORD1(v100);
  v105[25] = [NSNumber numberWithFloat:v29];
  v104[26] = @"deliveredLocationsNmea";
  v105[26] = [NSNumber numberWithInt:*(a2 + 34)];
  v104[27] = @"deliveredLocationsNmeaFraction";
  LODWORD(v30) = DWORD2(v100);
  v105[27] = [NSNumber numberWithFloat:v30];
  v104[28] = @"deliveredLocationsAccessory";
  v105[28] = [NSNumber numberWithInt:*(a2 + 35)];
  v104[29] = @"deliveredLocationsAccessoryFraction";
  LODWORD(v31) = HIDWORD(v100);
  v105[29] = [NSNumber numberWithFloat:v31];
  v104[30] = @"deliveredLocationsWifi1";
  v105[30] = [NSNumber numberWithInt:*(a2 + 36)];
  v104[31] = @"deliveredLocationsWifi1Fraction";
  LODWORD(v32) = v101;
  v105[31] = [NSNumber numberWithFloat:v32];
  v104[32] = @"deliveredLocationsSkyhook";
  v105[32] = [NSNumber numberWithInt:*(a2 + 37)];
  v104[33] = @"deliveredLocationsSkyhookFraction";
  LODWORD(v33) = DWORD1(v101);
  v105[33] = [NSNumber numberWithFloat:v33];
  v104[34] = @"deliveredLocationsCell";
  v105[34] = [NSNumber numberWithInt:*(a2 + 38)];
  v104[35] = @"deliveredLocationsCellFraction";
  LODWORD(v34) = DWORD2(v101);
  v105[35] = [NSNumber numberWithFloat:v34];
  v104[36] = @"deliveredLocationsLac";
  v105[36] = [NSNumber numberWithInt:*(a2 + 39)];
  v104[37] = @"deliveredLocationsLacFraction";
  LODWORD(v35) = HIDWORD(v101);
  v105[37] = [NSNumber numberWithFloat:v35];
  v104[38] = @"deliveredLocationsMcc";
  v105[38] = [NSNumber numberWithInt:*(a2 + 40)];
  v104[39] = @"deliveredLocationsMccFraction";
  LODWORD(v36) = v102;
  v105[39] = [NSNumber numberWithFloat:v36];
  v104[40] = @"deliveredLocationsGpsCoarse";
  v105[40] = [NSNumber numberWithInt:*(a2 + 41)];
  v104[41] = @"deliveredLocationsGpsCoarseFraction";
  LODWORD(v37) = DWORD1(v102);
  v105[41] = [NSNumber numberWithFloat:v37];
  v104[42] = @"deliveredLocationsIndoor";
  v105[42] = [NSNumber numberWithInt:*(a2 + 42)];
  v104[43] = @"deliveredLocationsIndoorFraction";
  LODWORD(v38) = DWORD2(v102);
  v105[43] = [NSNumber numberWithFloat:v38];
  v104[44] = @"deliveredLocationsWifi2";
  v105[44] = [NSNumber numberWithInt:*(a2 + 43)];
  v104[45] = @"deliveredLocationsWifi2Fraction";
  LODWORD(v39) = HIDWORD(v102);
  v105[45] = [NSNumber numberWithFloat:v39];
  v104[46] = @"deliveredLocationsCompensated";
  v105[46] = [NSNumber numberWithInt:*(a2 + 44)];
  v104[47] = @"deliveredLocationsCompensatedFraction";
  LODWORD(v40) = v103;
  v105[47] = [NSNumber numberWithFloat:v40];
  v104[48] = @"deliveredLocationsLoiOverride";
  v105[48] = [NSNumber numberWithInt:*(a2 + 45)];
  v104[49] = @"deliveredLocationsLoiOverrideFraction";
  LODWORD(v41) = HIDWORD(v103);
  v105[49] = [NSNumber numberWithFloat:v41];
  v104[50] = @"deliveredLocationsUndefined";
  v105[50] = [NSNumber numberWithInt:*(a2 + 46)];
  v104[51] = @"deliveredLocationsUndefinedFraction";
  *&v42 = v10;
  v105[51] = [NSNumber numberWithFloat:v42];
  v105[52] = &off_10254EE88;
  v104[52] = @"sessionCount";
  v104[53] = @"validDeliveredLocationsByType";
  v105[53] = [NSNumber numberWithBool:v95];
  [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:54];
  return AnalyticsSendEvent();
}

void sub_1001F33EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1001F3424(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10045E8A0(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_100008080(v4);
  }

  operator delete(a2);
  return v3;
}

double sub_1001F348C(uint64_t a1)
{
  *a1 = off_1024520E0;
  *(a1 + 148) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 120) = xmmword_101C771D0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return result;
}

double sub_1001F34E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1001F0DC8(a1);
    if (!sub_1001E06EC(v4))
    {
      sub_1018822EC();
    }

    v5 = *(a2 + 152);
    *(a2 + 48) = v4;
    *(a2 + 152) = v5 | 3;
    v6 = *(a2 + 8);
    if (!v6)
    {
      operator new();
    }

    *(v6 + 28) |= 1u;
    *(a2 + 152) |= 2u;
    v7 = *(a1 + 88);
    *(v6 + 28) |= 2u;
    v8 = *(a1 + 4);
    v9 = *(a2 + 152);
    v10 = *(a1 + 20);
    v11 = *(a1 + 36);
    v12 = *(a1 + 52);
    *(a2 + 152) = v9 | 0x3FC;
    v13 = *(a1 + 68);
    *(v6 + 8) = v8;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 56) = v12;
    *(a2 + 72) = v13;
    *(a2 + 52) = *(a1 + 84);
    *(a2 + 152) = v9 | 0xFFC;
    *(a2 + 88) = v7;
    v14 = sub_10010E5D8((a1 + 96));
    if (!sub_100108BCC(v14))
    {
      sub_101882318();
    }

    v15 = *(a2 + 152);
    *(a2 + 104) = v14;
    *(a2 + 152) = v15 | 0x3000;
    v16 = *(a2 + 96);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 28) |= 1u;
    *(a2 + 152) |= 0x2000u;
    v17 = *(a1 + 116);
    *(v16 + 28) |= 2u;
    *(v16 + 8) = *(a1 + 100);
    v18 = *(a2 + 152);
    *(a2 + 152) = v18 | 0x4000;
    *(a2 + 112) = v17;
    v19 = *(a1 + 124);
    *(a2 + 152) = v18 | 0xC000;
    *(a2 + 108) = v19;
    v20 = sub_1001F141C((a1 + 128));
    if (!sub_1001E0708(v20))
    {
      sub_101882344();
    }

    *(a2 + 152) |= 0x10000u;
    *(a2 + 120) = v20;
    v21 = sub_1001F152C((a1 + 132));
    if (!sub_10041ECEC(v21))
    {
      sub_101882370();
    }

    *(a2 + 152) |= 0x20000u;
    *(a2 + 124) = v21;
    v22 = sub_1001F152C((a1 + 136));
    if (!sub_10041ECEC(v22))
    {
      sub_10188239C();
    }

    *(a2 + 152) |= 0x40000u;
    *(a2 + 128) = v22;
    v29 = 0;
    v23 = *(a1 + 140);
    if (v23 <= 2)
    {
      if (v23 != 1 && v23 != 2)
      {
LABEL_25:
        v26 = sub_1001F3804(&v29);
        if (!sub_1001F161C(v26))
        {
          sub_1018823C8();
        }

        v27 = *(a2 + 152);
        *(a2 + 132) = v26;
        result = *(a1 + 144);
        *(a2 + 136) = result;
        v28 = *(a1 + 152);
        *(a2 + 152) = v27 | 0x380000;
        *(a2 + 144) = v28;
        return result;
      }
    }

    else if (v23 != 3 && v23 != 4 && v23 != 6)
    {
      goto LABEL_25;
    }

    v29 = *(a1 + 140);
    goto LABEL_25;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v24 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "pLocation,Invalid pointer", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B84244();
  }

  return result;
}

uint64_t sub_1001F3804(int *a1)
{
  v2 = *a1;
  if (v2 < 7 && ((0x5Fu >> v2) & 1) != 0)
  {
    return dword_101D7A570[v2];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Received unhandled signal environment type: %{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B846D8(a1);
  }

  return 0xFFFFFFFFLL;
}

void sub_1001F3908(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 368);
    *(a2 + 8) = *a1;
    *(a2 + 24) = *(a1 + 16);
    v5 = *(a1 + 40);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 48) = v5;
    *(a2 + 56) = *(a1 + 48);
    v6 = *(a1 + 52);
    *(a2 + 368) = v4 | 0x1FF;
    *(a2 + 112) = v6;
    v7 = sub_1001F08F0((a1 + 56));
    if (!sub_10041ECF8(v7))
    {
      sub_10188244C();
    }

    v8 = *(a2 + 368);
    *(a2 + 60) = v7;
    *(a2 + 368) = v8 | 0x600;
    v9 = *(a2 + 64);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 28) |= 1u;
    *(a2 + 368) |= 0x400u;
    v10 = *(a2 + 136);
    v11 = *(a1 + 96);
    v12 = *(a1 + 80);
    *(v9 + 28) |= 2u;
    *(v9 + 8) = *(a1 + 64);
    v13 = *(a2 + 368);
    *(a2 + 368) = v13 | 0x800;
    *(a2 + 72) = v12;
    v14 = *(a1 + 88);
    *(a2 + 368) = v13 | 0x1800;
    v15 = *(a1 + 92);
    *(a2 + 80) = v14;
    *(a2 + 84) = v15;
    *(a2 + 113) = v11;
    *(a2 + 368) = v13 | 0x807800;
    if (!v10)
    {
      operator new();
    }

    *(v10 + 32) |= 1u;
    *(a2 + 368) |= 0x800000u;
    *(v10 + 32) |= 2u;
    *(v10 + 8) = *(a1 + 104);
    *(a2 + 368) |= 0x800000u;
    v16 = *(a1 + 120);
    *(v10 + 32) |= 4u;
    *(v10 + 24) = v16;
    *(a2 + 368) |= 0x800000u;
    v17 = *(a2 + 88);
    v18 = *(a1 + 121);
    *(v10 + 32) |= 8u;
    *(v10 + 25) = v18;
    *(a2 + 368) |= 0x8000u;
    if (!v17)
    {
      operator new();
    }

    *(v17 + 28) |= 1u;
    *(a2 + 368) |= 0x8000u;
    *(v17 + 28) |= 2u;
    *(v17 + 8) = *(a1 + 296);
    v19 = sub_1001F0F6C((a1 + 312));
    if (!sub_1001F162C(v19))
    {
      sub_101882478();
    }

    v20 = *(a2 + 368);
    *(a2 + 96) = v19;
    *(a2 + 100) = *(a1 + 316);
    *(a2 + 368) = v20 | 0x70000;
    v21 = *(a2 + 104);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 28) |= 1u;
    *(a2 + 368) |= 0x40000u;
    *(v21 + 28) |= 2u;
    *(a2 + 368) |= 0x180000u;
    v22 = *(a1 + 336);
    *(v21 + 8) = *(a1 + 320);
    *(a2 + 120) = v22;
    v23 = sub_1001F1060((a1 + 352));
    if (!sub_10041ECEC(v23))
    {
      sub_1018824A4();
    }

    *(a2 + 116) = v23;
    *(a2 + 114) = *(a1 + 356);
    *(a2 + 144) = *(a1 + 360);
    *(a2 + 160) = *(a1 + 376);
    *(a2 + 176) = *(a1 + 496);
    *(a2 + 115) = *(a1 + 512);
    v24 = *(a1 + 416);
    *(a2 + 192) = *(a1 + 392);
    *(a2 + 200) = v24;
    *(a2 + 276) = *(a1 + 424);
    *(a2 + 368) = vorr_s8(*(a2 + 368), 0x7FF600000);
    v25 = *(a2 + 208);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 28) |= 1u;
    *(a2 + 372) |= 4u;
    v26 = *(a1 + 448);
    *(v25 + 28) |= 2u;
    *(v25 + 8) = *(a1 + 432);
    *(a2 + 372) |= 8u;
    *(a2 + 216) = v26;
    v27 = sub_1001F152C((a1 + 456));
    if (!sub_10041ECEC(v27))
    {
      sub_1018824D0();
    }

    *(a2 + 224) = *(a1 + 480);
    *(a2 + 240) = *(a1 + 600);
    *(a2 + 248) = *(a1 + 400);
    v28 = *(a1 + 472);
    *(a2 + 264) = *(a1 + 464);
    v29 = *(a2 + 372);
    *(a2 + 272) = v27;
    *(a2 + 277) = *(a1 + 425);
    *(a2 + 372) = v29 | 0x1FF0;
    *(a2 + 280) = v28;
    v30 = *(a1 + 520);
    if (v30)
    {
      v31 = *v30;
      v32 = v30[1];
      while (v31 != v32)
      {
        v33 = *(a2 + 296);
        v34 = *(a2 + 300);
        if (v33 >= v34)
        {
          if (v34 == *(a2 + 304))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 288), v34 + 1);
            v34 = *(a2 + 300);
          }

          *(a2 + 300) = v34 + 1;
          sub_1002A8464();
        }

        v35 = *(a2 + 288);
        *(a2 + 296) = v33 + 1;
        sub_1002A84C8(v31, *(v35 + 8 * v33));
        v31 += 28;
      }
    }

    v36 = sub_1001F0BB0((a1 + 536));
    if (!sub_10041ECEC(v36))
    {
      sub_1018824FC();
    }

    v37 = *(a2 + 372);
    *(a2 + 320) = v36;
    *(a2 + 372) = v37 | 0xC000;
    v38 = *(a2 + 312);
    if (!v38)
    {
      operator new();
    }

    *(v38 + 40) |= 1u;
    *(a2 + 372) |= 0x8000u;
    *(v38 + 40) |= 2u;
    *(v38 + 8) = *(a1 + 544);
    *(a2 + 372) |= 0x8000u;
    v39 = *(a1 + 560);
    *(v38 + 40) |= 4u;
    *(v38 + 24) = v39;
    *(a2 + 372) |= 0x8000u;
    v40 = sub_1001F0F6C((a1 + 568));
    if (!sub_1001F162C(v40))
    {
      sub_101882420();
    }

    *(v38 + 40) |= 8u;
    *(v38 + 32) = v40;
    v41 = sub_1001E079C((a1 + 576));
    if (!sub_10041ECEC(v41))
    {
      sub_101882528();
    }

    v42 = *(a2 + 372);
    *(a2 + 324) = v41;
    v43 = *(a1 + 584);
    v44 = *(a1 + 592);
    *(a2 + 372) = v42 | 0x70000;
    *(a2 + 328) = v43;
    *(a2 + 336) = v44;
    v45 = sub_1001F0CD8((a1 + 609));
    if (!sub_10041ECF8(v45))
    {
      sub_101882554();
    }

    v46 = *(a2 + 372);
    *(a2 + 344) = v45;
    v47 = *(a1 + 610);
    *(a2 + 372) = v46 | 0x180000;
    *(a2 + 278) = v47;
    v48 = sub_1001E088C((a1 + 612));
    if (!sub_10041ECEC(v48))
    {
      sub_101882580();
    }

    *(a2 + 372) |= 0x200000u;
    *(a2 + 348) = v48;
    v49 = sub_1001E097C((a1 + 616));
    if (!sub_1000183C8(v49))
    {
      sub_1018825AC();
    }

    v50 = *(a2 + 372);
    *(a2 + 352) = v49;
    v51 = *(a1 + 608) != 0;
    *(a2 + 372) = v50 | 0xC00000;
    *(a2 + 279) = v51;
    v52 = sub_1001E0B5C(a1);
    *(a2 + 372) |= 0x1000000u;
    *(a2 + 356) = v52;
    v53 = sub_1001E0A6C(*(a1 + 636));
    if (!sub_1000183C8(v53))
    {
      sub_1018825D8();
    }

    *(a2 + 372) |= 0x2000000u;
    *(a2 + 360) = v53;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v54 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v55 = 0;
      _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_FAULT, "pLocationPrivate,Invalid pointer", v55, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B847C4();
    }
  }
}

double sub_1001F4008(uint64_t a1)
{
  *a1 = off_102452338;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFFLL;
  *(a1 + 104) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 242) = 0u;
  *(a1 + 226) = 0u;
  *(a1 + 210) = 0u;
  *(a1 + 194) = 0u;
  *(a1 + 178) = 0u;
  *(a1 + 162) = 0u;
  *(a1 + 146) = 0u;
  *(a1 + 114) = 0u;
  *(a1 + 130) = 0u;
  *(a1 + 258) = 0u;
  *(a1 + 341) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  return result;
}

double sub_1001F4098(uint64_t a1)
{
  *a1 = off_102452428;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1001F40C8(int *a1)
{
  result = *a1;
  if (result >= 3)
  {
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled motion detected type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B868B4(a1);
      return 0;
    }
  }

  return result;
}

void *sub_1001F41B8(void *result)
{
  *result = off_1024524A0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_1001F41DC(uint64_t a1)
{
  *a1 = off_102452590;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_1001F4208(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 152);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_33;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_13:
    v7 = *(a1 + 8);
    if (!v7)
    {
      v7 = *(qword_102636C38 + 8);
    }

    v8 = *(v7 + 28);
    if (*(v7 + 28))
    {
      if ((v8 & 2) != 0)
      {
        v8 = ((v8 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v8 = (v8 << 31 >> 31) & 9;
      }
    }

    *(v7 + 24) = v8;
    v4 += v8 + 2;
    v3 = *(a1 + 152);
    goto LABEL_20;
  }

  v6 = *(a1 + 48);
  if ((v6 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = *(a1 + 152);
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_20:
  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 8) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 0x10) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 0x20) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 0x40) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

LABEL_33:
  if ((v3 & 0xFF00) != 0)
  {
    v9 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v9 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      LODWORD(v5) = v9 + 9;
    }

    else
    {
      LODWORD(v5) = v9;
    }

    if ((v3 & 0x400) != 0)
    {
      v10 = *(a1 + 52);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = *(a1 + 152);
      }

      else
      {
        v11 = 2;
      }

      LODWORD(v5) = v11 + v5;
    }

    if ((v3 & 0x800) != 0)
    {
      LODWORD(v5) = v5 + 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v12 = *(a1 + 104);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 11;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
        v3 = *(a1 + 152);
      }

      else
      {
        v13 = 2;
      }

      LODWORD(v5) = v13 + v5;
    }

    if ((v3 & 0x2000) != 0)
    {
      v14 = *(a1 + 96);
      if (!v14)
      {
        v14 = *(qword_102636C38 + 96);
      }

      v15 = *(v14 + 28);
      v16 = (v15 << 31 >> 31) & 9;
      if ((v15 & 2) != 0)
      {
        v16 += 9;
      }

      if (*(v14 + 28))
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      *(v14 + 24) = v17;
      LODWORD(v5) = v5 + v17 + 2;
      v3 = *(a1 + 152);
    }

    if ((v3 & 0x4000) != 0)
    {
      v5 = (v5 + 9);
    }

    else
    {
      v5 = v5;
    }

    if ((v3 & 0x8000) != 0)
    {
      v18 = *(a1 + 108);
      if ((v18 & 0x80000000) != 0)
      {
        v19 = 12;
      }

      else if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 2;
        v3 = *(a1 + 152);
      }

      else
      {
        v19 = 3;
      }

      v5 = (v19 + v5);
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v20 = *(a1 + 120);
      if ((v20 & 0x80000000) != 0)
      {
        v21 = 12;
      }

      else if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 2;
        v3 = *(a1 + 152);
      }

      else
      {
        v21 = 3;
      }

      LODWORD(v5) = v21 + v5;
      if ((v3 & 0x20000) == 0)
      {
LABEL_77:
        if ((v3 & 0x40000) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_92;
      }
    }

    else if ((v3 & 0x20000) == 0)
    {
      goto LABEL_77;
    }

    v22 = *(a1 + 124);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 12;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 2;
      v3 = *(a1 + 152);
    }

    else
    {
      v23 = 3;
    }

    LODWORD(v5) = v23 + v5;
    if ((v3 & 0x40000) == 0)
    {
LABEL_78:
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_98;
    }

LABEL_92:
    v24 = *(a1 + 128);
    if ((v24 & 0x80000000) != 0)
    {
      v25 = 12;
    }

    else if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 2;
      v3 = *(a1 + 152);
    }

    else
    {
      v25 = 3;
    }

    LODWORD(v5) = v25 + v5;
    if ((v3 & 0x80000) == 0)
    {
LABEL_104:
      v28 = v5 + 10;
      if ((v3 & 0x100000) == 0)
      {
        v28 = v5;
      }

      if ((v3 & 0x200000) != 0)
      {
        v5 = v28 + 3;
      }

      else
      {
        v5 = v28;
      }

      goto LABEL_109;
    }

LABEL_98:
    v26 = *(a1 + 132);
    if ((v26 & 0x80000000) != 0)
    {
      v27 = 12;
    }

    else if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 2;
      v3 = *(a1 + 152);
    }

    else
    {
      v27 = 3;
    }

    LODWORD(v5) = v27 + v5;
    goto LABEL_104;
  }

LABEL_109:
  *(a1 + 148) = v5;
  return v5;
}

uint64_t sub_1001F4538(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 368);
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v6 = v5 + ((v3 >> 7) & 2);
    if ((v3 & 0x200) != 0)
    {
      v7 = *(a1 + 60);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = *(a1 + 368);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    if ((v3 & 0x400) != 0)
    {
      v9 = *(a1 + 64);
      if (!v9)
      {
        v9 = *(qword_102636C58 + 64);
      }

      v10 = *(v9 + 28);
      v11 = (v10 << 31 >> 31) & 9;
      if ((v10 & 2) != 0)
      {
        v11 += 9;
      }

      if (*(v9 + 28))
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      *(v9 + 24) = v12;
      v6 += v12 + 2;
      v3 = *(a1 + 368);
    }

    if ((v3 & 0x800) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v13 = *(a1 + 80);
      if ((v13 & 0x80000000) != 0)
      {
        v14 = 11;
      }

      else if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
        v3 = *(a1 + 368);
      }

      else
      {
        v14 = 2;
      }

      v6 += v14;
    }

    if ((v3 & 0x2000) != 0)
    {
      v15 = *(a1 + 84);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 11;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
        v3 = *(a1 + 368);
      }

      else
      {
        v16 = 2;
      }

      v6 += v16;
    }

    v5 = ((v3 >> 13) & 2) + v6;
    if ((v3 & 0x8000) != 0)
    {
      v17 = *(a1 + 88);
      if (!v17)
      {
        v17 = *(qword_102636C58 + 88);
      }

      v18 = *(v17 + 28);
      v19 = (v18 << 31 >> 31) & 9;
      if ((v18 & 2) != 0)
      {
        v19 += 9;
      }

      if (*(v17 + 28))
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      *(v17 + 24) = v20;
      v5 += v20 + 3;
      v3 = *(a1 + 368);
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v21 = *(a1 + 96);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 12;
      }

      else if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 2;
        v3 = *(a1 + 368);
      }

      else
      {
        v22 = 3;
      }

      v5 += v22;
    }

    v23 = v5 + 6;
    if ((v3 & 0x20000) == 0)
    {
      v23 = v5;
    }

    if ((v3 & 0x40000) != 0)
    {
      v24 = *(a1 + 104);
      if (!v24)
      {
        v24 = *(qword_102636C58 + 104);
      }

      v25 = *(v24 + 28);
      v26 = (v25 << 31 >> 31) & 9;
      if ((v25 & 2) != 0)
      {
        v26 += 9;
      }

      if (*(v24 + 28))
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      *(v24 + 24) = v27;
      v23 += v27 + 3;
      v3 = *(a1 + 368);
    }

    if ((v3 & 0x80000) != 0)
    {
      v23 += 10;
    }

    if ((v3 & 0x100000) != 0)
    {
      v28 = v23 + 10;
    }

    else
    {
      v28 = v23;
    }

    if ((v3 & 0x200000) != 0)
    {
      v29 = *(a1 + 116);
      if ((v29 & 0x80000000) != 0)
      {
        v30 = 12;
      }

      else if (v29 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 2;
        v3 = *(a1 + 368);
      }

      else
      {
        v30 = 3;
      }

      v28 += v30;
    }

    if ((v3 & 0x400000) != 0)
    {
      v5 = v28 + 3;
    }

    else
    {
      v5 = v28;
    }

    if ((v3 & 0x800000) != 0)
    {
      v31 = *(a1 + 136);
      if (!v31)
      {
        v31 = *(qword_102636C58 + 136);
      }

      v32 = sub_1001E0B70(v31);
      v33 = v32;
      if (v32 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2);
      }

      else
      {
        v34 = 1;
      }

      v5 += v33 + v34 + 2;
      v3 = *(a1 + 368);
    }
  }

  if (HIBYTE(v3))
  {
    v35 = v5 + 10;
    if ((v3 & 0x1000000) == 0)
    {
      v35 = v5;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v35 += 10;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v35 += 10;
    }

    if ((v3 & 0x8000000) != 0)
    {
      v35 += 10;
    }

    if ((v3 & 0x10000000) != 0)
    {
      v35 += 10;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v35 += 10;
    }

    if ((v3 & 0x40000000) != 0)
    {
      v35 += 3;
    }

    if ((v3 & 0x80000000) == 0)
    {
      v5 = v35;
    }

    else
    {
      v5 = v35 + 10;
    }
  }

  v36 = *(a1 + 372);
  if (v36)
  {
    v37 = v5 + 10;
    if ((v36 & 1) == 0)
    {
      v37 = v5;
    }

    if ((v36 & 2) != 0)
    {
      v37 += 3;
    }

    if ((v36 & 4) != 0)
    {
      v38 = *(a1 + 208);
      if (!v38)
      {
        v38 = *(qword_102636C58 + 208);
      }

      v39 = *(v38 + 28);
      v40 = (v39 << 31 >> 31) & 9;
      if ((v39 & 2) != 0)
      {
        v40 += 9;
      }

      if (*(v38 + 28))
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      *(v38 + 24) = v41;
      v37 += v41 + 3;
      v36 = *(a1 + 372);
    }

    if ((v36 & 8) != 0)
    {
      v42 = v37 + 10;
    }

    else
    {
      v42 = v37;
    }

    if ((v36 & 0x10) != 0)
    {
      v43 = *(a1 + 272);
      if ((v43 & 0x80000000) != 0)
      {
        v44 = 12;
      }

      else if (v43 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v44 = 3;
      }

      v42 += v44;
    }

    v45 = v42 + 10;
    if ((v36 & 0x20) == 0)
    {
      v45 = v42;
    }

    if ((v36 & 0x40) != 0)
    {
      v45 += 10;
    }

    if ((v36 & 0x80) != 0)
    {
      v5 = v45 + 10;
    }

    else
    {
      v5 = v45;
    }
  }

  if ((v36 & 0xFF00) != 0)
  {
    v46 = v5 + 10;
    if ((v36 & 0x100) == 0)
    {
      v46 = v5;
    }

    if ((v36 & 0x200) != 0)
    {
      v46 += 10;
    }

    if ((v36 & 0x400) != 0)
    {
      v46 += 3;
    }

    if ((v36 & 0x800) != 0)
    {
      v46 += 10;
    }

    if ((v36 & 0x1000) != 0)
    {
      v5 = v46 + 10;
    }

    else
    {
      v5 = v46;
    }

    if ((v36 & 0x4000) != 0)
    {
      v47 = *(a1 + 320);
      if ((v47 & 0x80000000) != 0)
      {
        v48 = 12;
      }

      else if (v47 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v48 = 3;
      }

      v5 += v48;
    }

    if ((v36 & 0x8000) != 0)
    {
      v49 = *(a1 + 312);
      if (!v49)
      {
        v49 = *(qword_102636C58 + 312);
      }

      v50 = sub_1001F1150(v49, a2);
      v51 = v50;
      if (v50 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
      }

      else
      {
        v52 = 1;
      }

      v5 += v51 + v52 + 2;
      v36 = *(a1 + 372);
    }
  }

  if ((v36 & 0xFF0000) != 0)
  {
    if ((v36 & 0x10000) != 0)
    {
      v53 = *(a1 + 324);
      if ((v53 & 0x80000000) != 0)
      {
        v54 = 12;
      }

      else if (v53 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v54 = 3;
      }

      v5 += v54;
    }

    v55 = v5 + 10;
    if ((v36 & 0x20000) == 0)
    {
      v55 = v5;
    }

    if ((v36 & 0x40000) != 0)
    {
      v56 = v55 + 10;
    }

    else
    {
      v56 = v55;
    }

    if ((v36 & 0x80000) != 0)
    {
      v57 = *(a1 + 344);
      if ((v57 & 0x80000000) != 0)
      {
        v58 = 12;
      }

      else if (v57 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v58 = 3;
      }

      v56 += v58;
    }

    if ((v36 & 0x100000) != 0)
    {
      v56 += 3;
    }

    if ((v36 & 0x200000) != 0)
    {
      v59 = *(a1 + 348);
      if ((v59 & 0x80000000) != 0)
      {
        v60 = 12;
      }

      else if (v59 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v60 = 3;
      }

      v56 += v60;
    }

    if ((v36 & 0x400000) != 0)
    {
      v61 = *(a1 + 352);
      if ((v61 & 0x80000000) != 0)
      {
        v62 = 12;
      }

      else if (v61 >= 0x80)
      {
        v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v62 = 3;
      }

      v56 += v62;
    }

    if ((v36 & 0x800000) != 0)
    {
      v5 = v56 + 3;
    }

    else
    {
      v5 = v56;
    }
  }

  if (HIBYTE(v36))
  {
    if ((v36 & 0x1000000) != 0)
    {
      v5 += 3;
    }

    if ((v36 & 0x2000000) != 0)
    {
      v63 = *(a1 + 360);
      if ((v63 & 0x80000000) != 0)
      {
        v64 = 12;
      }

      else if (v63 >= 0x80)
      {
        v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63, a2) + 2;
      }

      else
      {
        v64 = 3;
      }

      v5 += v64;
    }
  }

  v65 = *(a1 + 296);
  v66 = (v5 + 2 * v65);
  if (v65 >= 1)
  {
    v67 = 0;
    do
    {
      v68 = sub_1002A8650(*(*(a1 + 288) + 8 * v67), a2);
      v69 = v68;
      if (v68 >= 0x80)
      {
        v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68, a2);
      }

      else
      {
        v70 = 1;
      }

      v66 = (v69 + v66 + v70);
      ++v67;
    }

    while (v67 < *(a1 + 296));
  }

  *(a1 + 364) = v66;
  return v66;
}

uint64_t sub_1001F4C0C(uint64_t a1)
{
  v1 = *(a1 + 44);
  if (*(a1 + 44))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 40) = v1;
  return v1;
}

uint64_t sub_1001F4C50(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 44);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
      if ((*(v4 + 44) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v6 = *(v4 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v6, a3);
}

void sub_1001F4CF8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024520E0;
  sub_1001F4D60(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1001F4D60(void *result)
{
  if (qword_102636C38 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[12];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1001F4E00(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024524A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001F4E54(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452158;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

__n128 sub_1001F4EA8(uint64_t a1, __n128 *a2)
{
  a2[58].n128_u64[1] = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  a2[59] = result;
  return result;
}

void sub_1001F4EE0(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 96);
  v3 = *(a2 + 96);
  if ((v3 & 0xFFFFFFF7) != 1)
  {
    if (v3 != 3)
    {
      return;
    }

    if (*(a2 + 516))
    {
      *(a1 + 3128) = *(a2 + 504);
      goto LABEL_9;
    }

LABEL_8:
    sub_10002FB88(a1, a2);
    goto LABEL_9;
  }

  if ((*(a2 + 516) & 1) == 0)
  {
    a1 += 1560;
    goto LABEL_8;
  }

  *(a1 + 3136) = *(a2 + 504);
LABEL_9:
  if (qword_1025D48A0 != -1)
  {
    sub_101A8F920();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_10000B1F8();
    v16 = 0;
    v7 = sub_10001A6B0(v6, &v16);
    if (*(a2 + 516))
    {
      v8 = "not saved";
    }

    else
    {
      v8 = "saved";
    }

    v9 = sub_1001FD6E4(*(a2 + 96));
    v10 = *(a2 + 76);
    v11 = *(a2 + 504);
    v12 = *(a2 + 4);
    v13 = *(a2 + 12);
    v14 = sub_10000B1F8();
    v15 = sub_100125220(v14);
    v16 = 134219779;
    v17 = v7;
    v18 = 2080;
    v19 = v8;
    v20 = 2080;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v26 = 2053;
    v27 = v12;
    v28 = 2053;
    v29 = v13;
    v30 = 2050;
    v31 = v15;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%.1lf,DeadReckoning,%s,%s,time,%.1lf,machCont,%.1lf,%{sensitive}.8lf,%{sensitive}.8lf,propagation_us,%{public}.3f", &v16, 0x52u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A8FBE8(a2, v4);
  }
}

uint64_t sub_1001F50CC(uint64_t a1)
{
  *(a1 + 128) |= 1u;
  if (!*(a1 + 8))
  {
    operator new();
  }

  return *(a1 + 8);
}

uint64_t sub_1001F514C(uint64_t a1)
{
  *(a1 + 128) |= 2u;
  if (!*(a1 + 16))
  {
    operator new();
  }

  return *(a1 + 16);
}

uint64_t sub_1001F51CC(uint64_t a1)
{
  *(a1 + 128) |= 0x80u;
  if (!*(a1 + 48))
  {
    operator new();
  }

  return *(a1 + 48);
}

uint64_t sub_1001F524C(uint64_t a1)
{
  *(a1 + 128) |= 0x100u;
  if (!*(a1 + 64))
  {
    operator new();
  }

  return *(a1 + 64);
}

uint64_t sub_1001F52CC(uint64_t a1)
{
  *(a1 + 128) |= 0x400u;
  if (!*(a1 + 72))
  {
    operator new();
  }

  return *(a1 + 72);
}

BOOL sub_1001F534C(uint64_t a1, unsigned int a2)
{
  result = sub_10041ECEC(a2);
  if (!result)
  {
    sub_1018DAC4C();
  }

  *(a1 + 128) |= 0x200u;
  *(a1 + 60) = a2;
  return result;
}

uint64_t sub_1001F5390(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 24) = v1;
  return v1;
}

uint64_t sub_1001F53BC(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 32) = v1;
  return v1;
}

void sub_1001F53F4(uint64_t a1, uint64_t a2)
{
  sub_1001D9E2C(*(a1 + 64), a2);

  sub_10002492C(a1);
}

uint64_t sub_1001F5430(uint64_t a1, uint64_t a2)
{
  if (qword_1025D48C0 != -1)
  {
    sub_10029D6CC();
  }

  v4 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a2 + 4);
    v18 = *(a2 + 12);
    v21 = *(a2 + 20);
    v5 = *(a2 + 96);
    v19 = sub_1001FD6E4(v5);
    v20 = *(a2 + 44);
    v22 = *(a2 + 60);
    v23 = *(a2 + 84);
    v24 = *(a2 + 88);
    v25 = *(a2 + 76);
    v6 = sub_10000B1F8();
    *buf = 0;
    v7 = sub_10001A6B0(v6, buf) - *(a2 + 76);
    v8 = *(a2 + 28);
    v9 = *(a2 + 36);
    v10 = *(a2 + 52);
    v11 = *(a2 + 68);
    v12 = *(a2 + 184);
    v13 = *(a2 + 128);
    v14 = sub_10000B1F8();
    v15 = sub_100125220(v14);
    *buf = 136320003;
    v27 = "CL-unfiltered";
    v28 = 1024;
    v29 = 0;
    v30 = 2053;
    v31 = v17;
    v32 = 2053;
    v33 = v18;
    v34 = 2048;
    v35 = v21;
    v36 = 1024;
    v37 = v5;
    v38 = 2080;
    v39 = v19;
    v40 = 2048;
    v41 = v20;
    v42 = 2048;
    v43 = v22;
    v44 = 1024;
    v45 = v23;
    v46 = 2048;
    v47 = v24;
    v48 = 2048;
    v49 = v25;
    v50 = 2048;
    v51 = v7;
    v52 = 2048;
    v53 = v8;
    v54 = 2048;
    v55 = v9;
    v56 = 2048;
    v57 = v10;
    v58 = 2048;
    v59 = v11;
    v60 = 2048;
    v61 = v12;
    v62 = 1024;
    v63 = v13;
    v64 = 2050;
    v65 = v15;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%d,%s,Speed,%.2f,Course,%.2f,Confidence,%d,Lifespan,%.3f,LocationTimestamp,%.3f,Age,%.3f,Altitude,%.1f,AltitudeAccuracy,%.1f,SpeedAccuracy,%.3f,CourseAccuracy,%.1f,timestampGps,%.3lf,integrity,%d,propagation_us,%{public}.3f", buf, 0xBAu);
  }

  if (sub_10000A100(123, 2))
  {
    sub_101AAD108();
  }

  *buf = 10;
  return (*(*a1 + 152))(a1, buf, a2, 1, 0xFFFFFFFFLL, 0);
}

uint64_t sub_1001F56C8(uint64_t a1, void *a2)
{
  if (a2 - 1) < 0xB && ((0x7EFu >> (a2 - 1)))
  {
    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67240192;
    v6[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "unsupported location type,%{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_1018F9A14(a2);
    return 0;
  }

  return result;
}

uint64_t sub_1001F57C8(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 678) & 1) == 0 && (*(a1 + 679) & 1) == 0 && sub_1001F5950(*(a1 + 280), a2))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v5 = *(a2 + 76);
      v6 = *(a2 + 96);
      v7 = *(a2 + 4);
      v8 = *(a2 + 12);
      v9 = *(a2 + 20);
      v10 = *(a2 + 84);
      v11 = *(a2 + 128);
      v13 = 134350593;
      v14 = v5;
      v15 = 1026;
      v16 = v6;
      v17 = 2053;
      v18 = v7;
      v19 = 2053;
      v20 = v8;
      v21 = 2050;
      v22 = v9;
      v23 = 1026;
      v24 = v10;
      v25 = 1026;
      v26 = v11;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "location rejected by IM,timestamp,%{public}.3f,locationType,%{public}d,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.1f,confidence,%{public}d,integrity,%{public}d", &v13, 0x3Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AAC428(a2);
    }

    if (*(a1 + 673) != 1)
    {
      return 0;
    }
  }

  sub_1001F67B4(a1, a2);
  sub_1001F7C68(a1, a2);
  return 1;
}

void *sub_1001F5958(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x1A)
  {
    v5 = v4 / 0x1A + 1;
  }

  else
  {
    v5 = v4 / 0x1A;
  }

  v6 = result[4];
  if (v5 >= v6 / 0x1A)
  {
    v7 = v6 / 0x1A;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x1A)
  {
    for (result[4] = v6 - 26 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_10045E858(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 26 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  return result;
}

void sub_1001F5C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1001F5CA4(void *a1, double a2, double a3)
{
  v23[0] = 0.0;
  v21 = 0u;
  v22 = 0u;
  v4 = a1[14];
  if (v4)
  {
    v7 = a1[13];
    v8 = a1[10];
    if (a3 - *(*(v8 + (((v4 + v7 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + v7 - 1)) >= a2)
    {
      v16 = 0;
      while (a3 - *(*(v8 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) < a2)
      {
        --v16;
        ++v7;
        if (-v4 == v16)
        {
          v17 = 0;
          goto LABEL_19;
        }
      }

      v17 = -v16;
LABEL_19:
      sub_1001F61A8(a3, a2, a1, &v21, &v22, &v21 + 1, &v22 + 1, v23, v17, a1 + 9);
      v9 = (*&v22 * 3.0 + *&v21 * 0.0 + *(&v21 + 1) * 5.0 + *(&v22 + 1) * 40.0 + v23[0] * 40.0) / 100.0;
    }

    else
    {
      sub_1001F61A8(a3, -1.0, a1, &v21, &v22, &v21 + 1, &v22 + 1, v23, v4, a1 + 9);
      v9 = 40.0;
      v10 = a3 - *(*(a1[10] + (((a1[14] + a1[13] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 112) + *(a1 + 104) - 1));
      v11 = a2 - v10;
      v12 = v10 + a2 - v10;
      if (v12 != 0.0)
      {
        v13 = (*&v22 * 3.0 + *&v21 * 0.0 + *(&v21 + 1) * 5.0 + *(&v22 + 1) * 40.0 + v23[0] * 40.0) / 100.0;
        if (qword_1025D4870 != -1)
        {
          sub_101B70AC4();
        }

        v14 = qword_1025D4878;
        v9 = (v11 * 40.0 + v13 * v10) / v12;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134219008;
          v35 = (v11 * 40.0 + v13 * v10) / v12;
          v36 = 2048;
          v37 = v13;
          v38 = 2048;
          v39 = v10;
          v40 = 2048;
          v41 = a2 - v10;
          v42 = 2048;
          v43 = v10 + a2 - v10;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, worstCaseAveVel %.1f, worstCaseAveVelPartial %.1f, timeSpanBuffer %.1f, residual %.1f, denom %.1f", buf, 0x34u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4870 != -1)
          {
            sub_101B70C38();
          }

          v24 = 134219008;
          v25 = (v11 * 40.0 + v13 * v10) / v12;
          v26 = 2048;
          v27 = v13;
          v28 = 2048;
          v29 = v10;
          v30 = 2048;
          v31 = a2 - v10;
          v32 = 2048;
          v33 = v10 + a2 - v10;
          v15 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "double CLIntegrityMonitor::propagateHpl(double, double)", "%s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }
        }
      }
    }
  }

  else
  {
    v9 = 40.0;
  }

  if (qword_1025D4870 != -1)
  {
    sub_101B70C38();
  }

  v18 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v35 = v9;
    v36 = 2048;
    v37 = a2;
    v38 = 2048;
    v39 = v9 * a2;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, worstCaseAveVel %.1f, deltaTime_ %.1f, hplmodifier %.1f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101B70C38();
    }

    v24 = 134218496;
    v25 = v9;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v9 * a2;
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "double CLIntegrityMonitor::propagateHpl(double, double)", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  return v9 * a2;
}

void sub_1001F61A8(double a1, double a2, uint64_t a3, double *a4, double *a5, double *a6, double *a7, double *a8, int a9, void *a10)
{
  if (a10[5] < a9)
  {
    goto LABEL_2;
  }

  if (a9)
  {
    v15 = 0.0;
    if (a1 <= 0.0)
    {
      v20 = 0.0;
LABEL_17:
      v21 = 0.0;
LABEL_18:
      v22 = 0.0;
LABEL_19:
      v17 = 0.0;
      goto LABEL_20;
    }

    v16 = *(a10[1] + ((a10[4] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a10[4];
    v17 = a1 - *v16;
    if (v17 <= 0.0)
    {
      goto LABEL_2;
    }

    v18 = *(v16 + 8);
    if (v18 > 9)
    {
      if (v18 <= 51)
      {
        if ((v18 - 10) >= 2)
        {
          if (v18 != 41)
          {
LABEL_80:
            v20 = v17;
            goto LABEL_17;
          }

LABEL_79:
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
LABEL_20:
          if (a9 >= 2)
          {
            v23 = a10[4];
            v24 = a10[1];
            v25 = a9 - 1;
            while (1)
            {
              v26 = *(v24 + (((v23 + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v23 + 1);
              v27 = *(*(v24 + ((v23 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v23) - *v26;
              if (v27 <= 0.0)
              {
                goto LABEL_2;
              }

              v28 = *(v26 + 8);
              if (v28 > 9)
              {
                break;
              }

              if (v28 <= 4)
              {
                if ((v28 - 1) >= 2)
                {
                  if (v28 != 4)
                  {
                    goto LABEL_39;
                  }

LABEL_38:
                  v17 = v17 + v27;
                  goto LABEL_40;
                }

LABEL_30:
                v15 = v15 + v27;
                goto LABEL_40;
              }

              if (v28 == 5)
              {
                goto LABEL_36;
              }

              if (v28 != 8)
              {
                goto LABEL_39;
              }

              v22 = v22 + v27;
LABEL_40:
              ++v23;
              if (!--v25)
              {
                goto LABEL_41;
              }
            }

            if (v28 > 51)
            {
              if (v28 != 52 && v28 != 56)
              {
LABEL_39:
                v20 = v20 + v27;
                goto LABEL_40;
              }

LABEL_36:
              v21 = v21 + v27;
              goto LABEL_40;
            }

            if ((v28 - 10) >= 2)
            {
              if (v28 != 41)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }

            goto LABEL_30;
          }

LABEL_41:
          if (a2 <= 0.0)
          {
            goto LABEL_84;
          }

          v29 = a10[4];
          v30 = a10[1];
          v31 = *(*(v30 + (((v29 + a9 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v29 + a9 - 1)) - a1 + a2;
          if (v31 > 0.0)
          {
            v32 = *(*(v30 + (((v29 + a9) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v29 + a9) + 8);
            if (v32 > 9)
            {
              if (v32 <= 51)
              {
                if ((v32 - 10) < 2)
                {
LABEL_62:
                  v15 = v15 + v31;
LABEL_84:
                  v33 = v20 + v21 + v22 + v17 + v15;
                  *a4 = v15 / v33 * 100.0;
                  *a5 = v17 / v33 * 100.0;
                  *a6 = v22 / v33 * 100.0;
                  *a7 = v21 / v33 * 100.0;
                  *a8 = v20 / v33 * 100.0;
                  goto LABEL_85;
                }

                if (v32 == 41)
                {
LABEL_82:
                  v17 = v17 + v31;
                  goto LABEL_84;
                }

LABEL_83:
                v20 = v20 + v31;
                goto LABEL_84;
              }

              if (v32 != 52 && v32 != 56)
              {
                goto LABEL_83;
              }
            }

            else
            {
              if (v32 <= 4)
              {
                if ((v32 - 1) >= 2)
                {
                  if (v32 != 4)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_82;
                }

                goto LABEL_62;
              }

              if (v32 != 5)
              {
                if (v32 == 8)
                {
                  v22 = v22 + v31;
                  goto LABEL_84;
                }

                goto LABEL_83;
              }
            }

            v21 = v21 + v31;
            goto LABEL_84;
          }

LABEL_2:
          *a8 = 100.0;
          return;
        }

LABEL_53:
        v20 = 0.0;
        v21 = 0.0;
        v22 = 0.0;
        v15 = v17;
        goto LABEL_19;
      }

      if (v18 != 52 && v18 != 56)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v18 <= 4)
      {
        if ((v18 - 1) >= 2)
        {
          if (v18 != 4)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }

        goto LABEL_53;
      }

      if (v18 != 5)
      {
        if (v18 == 8)
        {
          v20 = 0.0;
          v21 = 0.0;
          v22 = v17;
          goto LABEL_19;
        }

        goto LABEL_80;
      }
    }

    v20 = 0.0;
    v21 = v17;
    goto LABEL_18;
  }

  v19 = *(*(a10[1] + ((a10[4] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a10[4] + 8);
  if (v19 <= 9)
  {
    if (v19 <= 4)
    {
      if ((v19 - 1) >= 2)
      {
        if (v19 != 4)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      goto LABEL_50;
    }

    if (v19 != 5)
    {
      if (v19 == 8)
      {
        *a6 = 100.0;
        goto LABEL_85;
      }

LABEL_65:
      *a8 = 100.0;
      goto LABEL_85;
    }

LABEL_59:
    *a7 = 100.0;
    goto LABEL_85;
  }

  if (v19 > 51)
  {
    if (v19 != 52 && v19 != 56)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  if ((v19 - 10) >= 2)
  {
    if (v19 == 41)
    {
LABEL_64:
      *a5 = 100.0;
      goto LABEL_85;
    }

    goto LABEL_65;
  }

LABEL_50:
  *a4 = 100.0;
LABEL_85:
  if (qword_1025D4870 != -1)
  {
    sub_101B70AC4();
  }

  v34 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v35 = *a4;
    v36 = *a5;
    v37 = *a6;
    v38 = *a7;
    v39 = *a8;
    *buf = 134219008;
    v42 = v35;
    v43 = 2048;
    v44 = v36;
    v45 = 2048;
    v46 = v37;
    v47 = 2048;
    v48 = v38;
    v49 = 2048;
    v50 = v39;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, static %.1f, walking %.1f, running %.1f, driving %.1f, unknown %.1f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101B70C38();
    }

    v40 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLIntegrityMonitor::determineMotionPercentagesinBuffer(double &, double &, double &, double &, double &, int, std::deque<MotionInfo> &, double, double)", "%s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }
}

void sub_1001F67B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  if ((v4 & 0xFFFFFFFE) == 0xA)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v5 = 0;
    if ((v4 & 0xFFFFFFF7) != 1 || (*(a1 + 5176) & 1) == 0)
    {
      goto LABEL_10;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v6 = *(a2 + 36);
    LODWORD(v13) = 188;
    *v14 = v6;
    v15 = 4;
    sub_100A1DF9C(&v16, &v13);
    sub_10008F96C(v14);
  }

  v5 = sub_100F281DC(a1);
  if (v5)
  {
    sub_100F2838C(a1, (a1 + 328), a2);
    v19 = a1 + 328;
    v7 = *(sub_100109DF4(a1 + 232, (a1 + 328)) + 132);
    LODWORD(v13) = 186;
    *v14 = v7;
    v15 = 4;
    sub_100A1DF9C(&v16, &v13);
    sub_10008F96C(v14);
    v19 = a1 + 328;
    v8 = *(sub_100109DF4(a1 + 232, (a1 + 328)) + 48);
  }

  else
  {
    v8 = *(a2 + 96);
  }

  LODWORD(v13) = 184;
  v14[0] = v8;
  v15 = 0;
  sub_100A1DF9C(&v16, &v13);
  sub_10008F96C(v14);
  v9 = *(a2 + 36);
  LODWORD(v13) = 185;
  *v14 = v9;
  v15 = 4;
  sub_100A1DF9C(&v16, &v13);
  sub_10008F96C(v14);
  LODWORD(v19) = 0;
  v10 = sub_100226520((a2 + 4), (a2 + 12), &v19);
  LODWORD(v13) = 189;
  v14[0] = v10;
  v15 = 0;
  sub_100A1DF9C(&v16, &v13);
  sub_10008F96C(v14);
  v11 = *(a1 + 5192);
  memset(v12, 0, sizeof(v12));
  sub_1007B68E0(v12, v16, v17, 0xCCCCCCCCCCCCCCCDLL * ((v17 - v16) >> 3));
  [v11 setMeasurements:sub_1007B2EC4(v12)];
  v13 = v12;
  sub_1007B6858(&v13);
  v13 = &v16;
  sub_1007B6858(&v13);
LABEL_10:
  sub_1001D4CB8(a1, a2, v5);
}

void sub_1001F6A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_10008F96C(v18 + 8);
  a13 = &a18;
  sub_1007B6858(&a13);
  _Unwind_Resume(a1);
}

BOOL sub_1001F6AA4(uint64_t a1, _OWORD *a2, int a3)
{
  v6 = sub_1000081AC();
  v34 = v6;
  if (*a1)
  {
    v7 = v6;
    if (fabs(sub_100021618(v6, *(a1 + 8), 315360000.0)) > 3.0)
    {
      sub_1001DF6F0(a1, a1 + 2416, v7);
      v8 = *a1;
      v9 = 368;
      if (*(a1 + 245))
      {
        v9 = 244;
      }

      buf[0] = *(a1 + v9);
      sub_1001F6ED0(v8, &v34, a1 + 1592, (a1 + 1504), (a1 + 1512), (a1 + 1520), (a1 + 1240), buf, (a1 + 440), (a1 + 1256), (a1 + 456));
      v10 = 380;
      if (*(a1 + 277))
      {
        v10 = 276;
      }

      sub_1001F7220(*a1, a1 + 1592, (a1 + 2040), a1 + 8, a1 + 1264, a1 + 3608, a1 + 3640, a1 + 3672, (a1 + 480), (a1 + 488), (a1 + 496), a1 + 1240, a1 + 2416, *(a1 + v10), 0);
    }
  }

  v11 = *(a1 + 24);
  v13 = (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v11 > 0.0 ? (v12 = v11 < 30.0) : (v12 = 0), v12 && *a1) && sub_100021618(v34, *(a1 + 8), 315360000.0) < 3.0;
  v14 = *(a1 + 2160);
  if (v14 > 0.0)
  {
    v15 = *(a1 + 2152);
    if (v15 > *(a1 + 48))
    {
      *(a1 + 56) = *(a1 + 2136);
      *(a1 + 64) = v14;
      *(a1 + 48) = v15;
    }
  }

  if (qword_1025D4600 != -1)
  {
    sub_100312410();
  }

  v16 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = *(a1 + 56);
    v20 = *(a1 + 64);
    v22 = *(a1 + 48);
    *buf = 134351104;
    v54 = v34;
    v55 = 1026;
    v56 = v13;
    v57 = 2050;
    v58 = v17;
    v59 = 2050;
    v60 = v18;
    v61 = 2050;
    v62 = v19;
    v63 = 2050;
    v64 = v21;
    v65 = 2050;
    v66 = v20;
    v67 = 2050;
    v68 = v22;
    v69 = 1026;
    v70 = a3;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "BaroAlt,query of calibrated baro alt,time,%{public}.3lf,isYieldingRPA,%{public}d,applicableTime,%{public}.3lf,altitude,%{public}.3lf,altitudeUnc,%{public}.3lf,bias_pa,%{public}.3lf,biasUnc_m,%{public}.3lf,biasTimestampCFAbs_s,%{public}.3lf,internal,%{public}d", buf, 0x54u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v29 = *(a1 + 24);
    v31 = *(a1 + 56);
    v30 = *(a1 + 64);
    v32 = *(a1 + 48);
    v35 = 134351104;
    v36 = v34;
    v37 = 1026;
    v38 = v13;
    v39 = 2050;
    v40 = v27;
    v41 = 2050;
    v42 = v28;
    v43 = 2050;
    v44 = v29;
    v45 = 2050;
    v46 = v31;
    v47 = 2050;
    v48 = v30;
    v49 = 2050;
    v50 = v32;
    v51 = 1026;
    v52 = a3;
    v33 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::getCalibratedBaroAltitude(CLBarometricAltimeterCore::AltitudeUpdateData &, const BOOL)", "%s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  *a2 = *(a1 + 8);
  v23 = *(a1 + 24);
  v24 = *(a1 + 40);
  v25 = *(a1 + 72);
  a2[3] = *(a1 + 56);
  a2[4] = v25;
  a2[1] = v23;
  a2[2] = v24;
  return v13;
}

void sub_1001F6ED0(uint64_t a1, double *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, _BYTE *a8, void *a9, void *a10, void *a11)
{
  v17 = *a2;
  *(a3 + 64) = *a2;
  v18 = *(a1 + 256);
  v20 = (v18 < 0 || ((v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v18 - 1) > 0xFFFFFFFFFFFFELL;
  if (v20 || ((v21 = *(a1 + 248), v21 >= 0) ? (v22 = ((v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v22 = 1), v22 ? (v23 = (v21 - 1) > 0xFFFFFFFFFFFFELL) : (v23 = 0), v23))
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    Current = v17 - *(a1 + 256) + *(a1 + 248);
  }

  *(a3 + 72) = Current;
  *(a3 + 80) = *a4;
  *(a3 + 96) = *a5;
  *(a3 + 104) = *a6;
  *(a3 + 112) = *a8;
  *(a3 + 168) = *a10;
  *(a3 + 184) = *a7;
  *(a3 + 256) = *a11;
  *(a3 + 264) = *a9;
  if (qword_1025D4600 != -1)
  {
    sub_10025BBF4();
  }

  v25 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a3 + 72);
    v27 = *(a3 + 80);
    v28 = *(a3 + 96);
    v29 = *(a3 + 104);
    v30 = *(a3 + 112);
    v31 = *(a3 + 168);
    v32 = *(a3 + 184);
    v33 = *(a3 + 256);
    v34 = *(a3 + 264);
    v35 = *(a3 + 64);
    *buf = 134285825;
    v38 = v35;
    v39 = 2049;
    v40 = v27;
    v41 = 2049;
    v42 = v28;
    v43 = 2049;
    v44 = v29;
    v45 = 1025;
    v46 = v30;
    v47 = 2049;
    v48 = v31;
    v49 = 2049;
    v50 = v32;
    v51 = 2049;
    v52 = v33;
    v53 = 2049;
    v54 = v34;
    v55 = 2049;
    v56 = v26;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "BaroAlt,MMKF,fillInput,machContTime_s,%{private}.3lf,refPressure_time_s,%{private}.3lf,refPressure_pa,%{private}.3lf,refPressure_unc_pa,%{private}.3lf,isReferencePressureAllowed,%{private}d,lastSignificantRelativeAlt_m,%{private}.2lf,timeOfLastOdometerData_s,%{private}.3lf,timeOfLastAltitudeData_s,%{private}.3lf,lastAltitudeDataPressure_pa,%{private}.3lf,cfAbsTime_s,%{private}.3lf", buf, 0x62u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v36 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLBarometricAltimeterCore::fillInputToCalibrateBaroAlt(const CFTimeInterval &, CLBaroAltEstimatorInput &, const double &, const double &, const double &, const CFTimeInterval &, const BOOL &, const double &, const double &, const CFTimeInterval &)", "%s\n", v36);
    if (v36 != buf)
    {
      free(v36);
    }
  }
}

uint64_t sub_1001F7220(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double *a9, double *a10, double *a11, uint64_t a12, uint64_t a13, char a14, unsigned __int8 a15)
{
  if (qword_1025D4600 != -1)
  {
    sub_10025BBF4();
  }

  v22 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = a15;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "BaroAlt,queried,internal,%d", buf, 8u);
  }

  v23 = sub_10000A100(121, 2);
  if (v23)
  {
    sub_1016BCCA8(a15);
  }

  if (*a10 <= 0.0 && *a3 <= 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v24 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,not yet calibrated", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1016BCD94();
      return 0;
    }

    return result;
  }

  v88 = -1.0;
  v89 = 0.0;
  v86 = 0.0;
  v87 = 0;
  v84 = 0;
  v85 = -1.0;
  if (*(a2 + 112) == 1)
  {
    if (sub_1002D4484(v23, a2))
    {
      v26 = sub_1016BA2A4(a1, a2, a3, &v89, &v88, &v87);
    }

    else
    {
      v26 = 0;
    }

    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v27 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v26;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "BaroAlt,calibrated,refPressure,success,%d", buf, 8u);
    }

    v23 = sub_10000A100(121, 2);
    if (v23)
    {
      sub_1016BCE70(v26);
      if (v26)
      {
        goto LABEL_25;
      }
    }

    else if (v26)
    {
LABEL_25:
      v28 = *(a2 + 264);
      *a5 = v28;
      *(a5 + 4) = 1075838976;
      if (*(a1 + 668) == 1)
      {
        *v131 = 0;
        memset(buf, 0, sizeof(buf));
        v23 = sub_1016B6D4C(a1, buf);
        if (v23)
        {
          v29 = *&buf[16] * 12.00129;
          v30 = *a5 - *&buf[8];
        }

        else
        {
          v30 = 0.0;
          v29 = -1.0;
        }

        *(a5 + 8) = v30;
        *(a5 + 12) = v29;
        v31 = v88;
      }

      else
      {
        v31 = v88;
        v32 = v88 * 12.00129;
        *(a5 + 12) = v32;
        v33 = v28 - a3[1];
        *(a5 + 8) = v33;
      }

      v34 = v89;
      v35 = v31;
      *(a5 + 44) = v34;
      *(a5 + 48) = v35;
      ++*(a6 + 16);
      ++*(a7 + 16);
      ++*(a8 + 16);
    }
  }

  v36 = sub_1002D45E8(v23, a2, a9, a10, &v86, &v85, &v84, a11);
  if (qword_1025D4600 != -1)
  {
    sub_1016BBF2C();
  }

  v37 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v36;
    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_INFO, "BaroAlt,calibrated,dem,success,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016BCF5C(v36);
  }

  if (v36)
  {
    ++*(a6 + 12);
    ++*(a7 + 12);
    ++*(a8 + 12);
  }

  v38 = v88;
  if (a14 && v88 > 0.0)
  {
    v39 = v89;
    v40 = v87;
    v41 = a4;
    *(a4 + 36) = 1;
    v42 = v38;
  }

  else
  {
    v42 = v85;
    v41 = a4;
    if (v85 <= 0.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1016BBF2C();
      }

      v67 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,no yield,no valid calibrated altitude is available", buf, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1016BD048();
        return 0;
      }

      return result;
    }

    v39 = v86;
    v40 = v84;
    *(a4 + 37) = 1;
  }

  sub_100214948(a1, a2, a13);
  v45 = *(a1 + 200);
  v44 = (a1 + 200);
  v43 = v45;
  v46 = *(v44 - 1);
  if ((v45 - 1) > 0xFFFFFFFD || fabs(v46) <= 2.22044605e-16)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v63 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v64 = *(v44 - 1);
      v65 = *v44;
      *buf = 134349312;
      *&buf[4] = v64;
      *&buf[12] = 1026;
      *&buf[14] = v65;
      _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,no yield,no undulation knowledge,und,%{public}.lf,undModel%{public}d", buf, 0x12u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1016BD124();
      return 0;
    }
  }

  else
  {
    *(v41 + 8) = v39 - v46;
    *(v41 + 16) = v42;
    *(v41 + 24) = v46;
    *(v41 + 32) = v43;
    *v41 = v40;
    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v47 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v48 = *(a2 + 64);
      v49 = *(a2 + 72);
      v50 = *a9;
      v51 = *a10;
      v52 = -1.0;
      if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v48) > 2.22044605e-16)
      {
        v53 = *a11;
        if ((*a11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v53) > 2.22044605e-16)
        {
          v52 = vabdd_f64(v48, v53);
        }
      }

      v55 = *(a2 + 256);
      v54 = *(a2 + 264);
      v56 = *(v41 + 8);
      v57 = *(v41 + 16);
      v58 = *(v41 + 24);
      v59 = *(v41 + 32);
      v60 = *(a13 + 4);
      v61 = *(a13 + 12);
      *buf = 134353921;
      *&buf[4] = v48;
      *&buf[12] = 2050;
      *&buf[14] = v49;
      *&buf[22] = 2049;
      *&buf[24] = v50;
      *v131 = 2050;
      *&v131[2] = v51;
      v132 = 2050;
      v133 = v52;
      v134 = 2050;
      v135 = v54;
      v136 = 2050;
      v137 = v55;
      v138 = 2049;
      v139 = v56;
      v140 = 2050;
      v141 = v57;
      v142 = 2050;
      v143 = v40;
      v144 = 2049;
      v145 = v89;
      v146 = 2050;
      v147 = v38;
      v148 = 2049;
      v149 = v86;
      v150 = 2050;
      v151 = v85;
      v152 = 2049;
      v153 = v58;
      v154 = 1026;
      v155 = v59;
      v156 = 2049;
      v157 = v87;
      v158 = 2049;
      v159 = v84;
      v160 = 2053;
      v161 = v60;
      v162 = 2053;
      v163 = v61;
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_INFO, "BaroAlt,calibrated,time,%{public}.3lf,cfAbsTime,%{public}.3lf,baseAlt,%{private}.3lf,unc,%{public}.3lf,timeSinceBaseAlt,%{public}.3lf,pressure,%{public}.3lf,fTimeOfLastCMAltitudeData,%{public}.3lf,calibratedAlt,%{private}.3lf,calAltUnc,%{public}.3lf,applicableTime,%{public}.3lf,calibratedAltReferencePressure,%{private}.3lf,calAltUncReferencePressure,%{public}.3lf,calibratedAltDEM,%{private}.3lf,calAltUncDEM,%{public}.3lf,undulation,%{private}.3lf,undulationModel,%{public}d,refPresAltWgs84AppMachContTime,%{private}.3lf,demCalibAltWgs84AppMachContTime,%{private}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", buf, 0xC6u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1016BBF2C();
      }

      v68 = *(a2 + 64);
      v69 = *(a2 + 72);
      v70 = *a9;
      v71 = *a10;
      v72 = -1.0;
      if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v68) > 2.22044605e-16)
      {
        v73 = *a11;
        if ((*a11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v73) > 2.22044605e-16)
        {
          v72 = vabdd_f64(v68, v73);
        }
      }

      v75 = *(a2 + 256);
      v74 = *(a2 + 264);
      v41 = a4;
      v76 = *(a4 + 8);
      v77 = *(a4 + 16);
      v78 = *(a4 + 24);
      v79 = *(a4 + 32);
      v80 = *(a13 + 4);
      v81 = *(a13 + 12);
      v90 = 134353921;
      v91 = v68;
      v92 = 2050;
      v93 = v69;
      v94 = 2049;
      v95 = v70;
      v96 = 2050;
      v97 = v71;
      v98 = 2050;
      v99 = v72;
      v100 = 2050;
      v101 = v74;
      v102 = 2050;
      v103 = v75;
      v104 = 2049;
      v105 = v76;
      v106 = 2050;
      v107 = v77;
      v108 = 2050;
      v109 = v40;
      v110 = 2049;
      v111 = v89;
      v112 = 2050;
      v113 = v88;
      v114 = 2049;
      v115 = v86;
      v116 = 2050;
      v117 = v85;
      v118 = 2049;
      v119 = v78;
      v120 = 1026;
      v121 = v79;
      v122 = 2049;
      v123 = v87;
      v124 = 2049;
      v125 = v84;
      v126 = 2053;
      v127 = v80;
      v128 = 2053;
      v129 = v81;
      v82 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeterCore::calcCalibratedBaroAltitude(CLBaroAltEstimatorInput &, CLBaroAltEstimatorOutput &, AltitudeUpdateData &, CalibratedPressureCollectionDataBase &, BarometricAltitudeCalibrationAnalyticsData &, BarometricAltitudeCalibrationAnalyticsData &, BarometricAltitudeCalibrationAnalyticsData &, double &, double &, CFTimeInterval &, const CFTimeInterval &, const CLDaemonLocation &, const BOOL, const BOOL)", "%s\n", v82);
      if (v82 != buf)
      {
        free(v82);
      }
    }

    if (*(v41 + 16) > 0.0)
    {
      v62 = *(v41 + 8);
      if (v62 > -450.0 && v62 < 8850.0)
      {
        return 1;
      }
    }

    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v66 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_INFO, "BaroAlt,invalid calibrated altitude", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1016BD22C();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F7C68(uint64_t a1, uint64_t a2)
{
  if (qword_1025D48C0 != -1)
  {
    sub_10029D6CC();
  }

  v4 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a2 + 4);
    v19 = *(a2 + 12);
    v23 = *(a2 + 20);
    v5 = *(a2 + 96);
    v22 = sub_1001FD6E4(v5);
    v25 = *(a2 + 44);
    v26 = *(a2 + 60);
    v27 = *(a2 + 84);
    v28 = *(a2 + 88);
    v29 = *(a2 + 76);
    v6 = sub_10000B1F8();
    *buf = 0;
    v7 = sub_10001A6B0(v6, buf) - *(a2 + 76);
    v8 = *(a2 + 28);
    v9 = *(a2 + 36);
    v10 = *(a2 + 52);
    v11 = *(a2 + 68);
    v18 = *(a2 + 184);
    v12 = *(a2 + 476);
    v13 = *(a2 + 128);
    v20 = *(a2 + 132);
    v21 = *(a2 + 472);
    v24 = *(a2 + 136);
    v14 = sub_10000B1F8();
    v15 = sub_100125220(v14);
    *buf = 136321027;
    v31 = "CL-prefiltered";
    v32 = 1024;
    v33 = 0;
    v34 = 2053;
    v35 = v17;
    v36 = 2053;
    v37 = v19;
    v38 = 2048;
    v39 = v23;
    v40 = 1026;
    v41 = v5;
    v42 = 2082;
    v43 = v22;
    v44 = 2050;
    v45 = v25;
    v46 = 2050;
    v47 = v26;
    v48 = 1026;
    v49 = v27;
    v50 = 2050;
    v51 = v28;
    v52 = 2050;
    v53 = v29;
    v54 = 2050;
    v55 = v7;
    v56 = 2049;
    v57 = v8;
    v58 = 2050;
    v59 = v9;
    v60 = 2050;
    v61 = v10;
    v62 = 2050;
    v63 = v11;
    v64 = 2050;
    v65 = v18;
    v66 = 1026;
    v67 = v13;
    v68 = 2049;
    v69 = v12;
    v70 = 1026;
    v71 = v21;
    v72 = 1024;
    v73 = v20;
    v74 = 1024;
    v75 = v24;
    v76 = 2050;
    v77 = v15;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,Speed,%{public}.2f,Course,%{public}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.3f,AltitudeAccuracy,%{public}.3f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampGps,%{public}.3lf,integrity,%{public}d,undulation,%{private}.3lf,undulationModel,%{public}d,referenceFrame,%d,rawReferenceFrame,%d,propagation_us,%{public}.3f", buf, 0xD6u);
  }

  if (sub_10000A100(123, 2))
  {
    sub_101AAC57C();
  }

  *buf = 33;
  return (*(*a1 + 152))(a1, buf, a2, 1, 0xFFFFFFFFLL, 0);
}

uint64_t sub_1001F7F58(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 3923) & 1) == 0)
  {
    if (!*(a1 + 3952))
    {
      *(a1 + 3952) = objc_alloc_init(CLNanoRegistry);
    }

    sub_10001A3E8();
    if (sub_10001CF04())
    {
      v4 = [*(a1 + 3952) isAFire6OrOlderWatchPaired] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 3922) = v4 | 0x100;
    (*(*a1 + 472))(a1);
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v5 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 3923) == 1)
      {
        v6 = *(a1 + 3922);
      }

      else
      {
        v6 = 1;
      }

      *buf = 67240192;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#cltr,fIsPhoneThatDoesNotNeedTrackRunProcessing,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019587C0();
    }
  }

  if (*(a1 + 3985) & 1) != 0 || *(a1 + 3921) == 1 && (v7 = sub_10000B1F8(), *buf = 1, sub_10001A6B0(v7, buf) - *(a1 + 3944) <= 86400.0) || (*(a2 + 96) - 6) < 3 || ((v8 = *(a2 + 20), v8 > 0.0) ? (v9 = v8 < 100.0) : (v9 = 0), !v9 || (*(a1 + 3984)))
  {
    if (*(a1 + 3985) == 1)
    {
      if (qword_1025D41D0 != -1)
      {
        sub_101956170();
      }

      v10 = qword_1025D41D8;
      if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 3928);
        *buf = 134349056;
        *&buf[4] = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#cltr,Not querying for region support due to backoff timer in effect,current,%{public}.0f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019589F0();
      }
    }
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956170();
    }

    v13 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a2 + 4);
      v15 = *(a2 + 12);
      v16 = *(a2 + 20);
      *buf = 134546177;
      *&buf[4] = v14;
      *&buf[12] = 2053;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      v34 = v16;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#cltr,Querying for region support,ll,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%.1lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019588C8();
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 0;
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100855110;
    v30 = &unk_102477220;
    v31 = buf;
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100855204;
    v24 = &unk_102477270;
    v25 = buf;
    v26 = a1;
    if (!*(a1 + 3936))
    {
      v17 = objc_alloc_init(GEOMapFeatureAccess);
      *(a1 + 3936) = v17;
      if (v17)
      {
        [v17 setAllowNetworkTileLoad:{1, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31}];
        [*(a1 + 3936) setAllowStaleData:1];
        [*(a1 + 3936) setAllowOfflineData:1];
      }
    }

    v18 = *(a2 + 4);
    v19 = *(a2 + 12);
    *(a1 + 3984) = 1;
    v20 = sub_10000B1F8();
    v32 = 1;
    *(a1 + 3944) = sub_10001A6B0(v20, &v32);
    sub_1001B8A14(a1 + 4000);
    [*(a1 + 3936) findRunningTrackFlagsNear:&v27 radius:&v21 handler:v18 completionHandler:{v19, *(a2 + 20) * 5.0}];
    _Block_object_dispose(buf, 8);
  }

  result = *(a1 + 3968);
  if (result)
  {
    result = sub_1001F83F4(result);
    if (result)
    {
      return sub_1002D4814();
    }
  }

  return result;
}

void sub_1001F83D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int *sub_1001F842C(int *result, uint64_t a2, uint64_t *a3)
{
  if ((*(a2 + 96) & 0xFFFFFFF7) == 1)
  {
    v5 = result;
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v7 = *(a2 + 76);
      v9 = *(a2 + 160);
      v8 = *(a2 + 168);
      v10 = *(a2 + 176);
      v11 = *(a2 + 184);
      v12 = *(a2 + 4);
      v13 = *(a2 + 12);
      v14 = *(a2 + 20);
      v15 = *(a2 + 28);
      v16 = *(a2 + 36);
      v17 = *(a2 + 44);
      v18 = *(a2 + 52);
      v19 = *(a2 + 60);
      v20 = *(a2 + 68);
      v21 = a3;
      if (*(a3 + 23) < 0)
      {
        v21 = *a3;
      }

      v22 = 134352643;
      v23 = v7;
      v24 = 2050;
      v25 = v11;
      v26 = 2050;
      v27 = v9;
      v28 = 2050;
      v29 = v8;
      v30 = 2050;
      v31 = v10;
      v32 = 2053;
      v33 = v12;
      v34 = 2053;
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
      v46 = 2050;
      v47 = v19;
      v48 = 2050;
      v49 = v20;
      v50 = 2080;
      v51 = v21;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "GPSODOM,timestamp,%{public}.3lf,timestampGps,%{public}.3lf,odometer,%{public}.3lf,deltaDist,%{public}.3lf,deltaDistUnc,%{public}.3lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.1lf,alt,%{private}.3lf,vunc,%{public}.1lf,speed,%{public}.3lf,sunc,%{public}.3lf,course,%{public}.3lf,cunc,%{public}.3lf,silo,%s", &v22, 0x98u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FA070();
    }

    result = *(a2 + 808);
    if (result && (result = sub_10030D934(result), result > 1) || *(a2 + 160) >= 0.0 && *(a2 + 168) >= 0.0 && *(a2 + 176) >= 0.0)
    {
      v22 = 23;
      return (*(*v5 + 152))(v5, &v22, a2, 1, 0xFFFFFFFFLL, 0);
    }
  }

  return result;
}

uint64_t sub_1001F867C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *a4;
  *a4 = 0;
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
  v12 = (a3 + 96);
  v11 = *(a3 + 96);
  if (!v11)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v24 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#Warning, LCFusion, not notifying clients when provider type is Unknown", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9F94();
    }

    return 0;
  }

  v15 = sub_1001F9450(a1, v11);
  v124 = v15;
  v17 = a1 + 240;
  v16 = *(a1 + 240);
  if (!v16)
  {
    goto LABEL_9;
  }

  v18 = a1 + 240;
  v19 = *(a1 + 240);
  do
  {
    if (*(v19 + 32) >= v15)
    {
      v18 = v19;
    }

    v19 = *(v19 + 8 * (*(v19 + 32) < v15));
  }

  while (v19);
  if (v18 == v17 || v15 < *(v18 + 32))
  {
LABEL_9:
    v18 = a1 + 240;
  }

  v21 = (a1 + 220);
  v20 = *(a1 + 220);
  if (!v16)
  {
    goto LABEL_17;
  }

  v22 = a1 + 240;
  do
  {
    if (*(v16 + 32) >= v20)
    {
      v22 = v16;
    }

    v16 = *(v16 + 8 * (*(v16 + 32) < v20));
  }

  while (v16);
  if (v22 == v17 || v20 < *(v22 + 32))
  {
LABEL_17:
    v22 = a1 + 240;
  }

  v23 = 0;
  if (v20 && v15 != v20)
  {
    if (*(v18 + 911))
    {
      v23 = 0;
      goto LABEL_40;
    }

    v120 = a1 + 232;
    v25 = *(v18 + 908);
    if (v25 <= *(v22 + 908))
    {
      v26 = sub_10000B1F8();
      *buf = 0;
      v27 = sub_10001A6B0(v26, buf) - *(v22 + 172);
      v28 = *(v22 + 184);
      v23 = v27 < v28;
      if (v27 < v28)
      {
        if (v124 != 1)
        {
          if (qword_1025D4600 != -1)
          {
            sub_1018F7C0C();
          }

          v81 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = &v124;
            v82 = sub_100109DF4(v120, &v124);
            v83 = v82 + 6;
            if (*(v82 + 71) < 0)
            {
              v83 = *v83;
            }

            v84 = *(v18 + 100);
            v85 = *(v18 + 108);
            *buf = v21;
            v86 = sub_100109DF4(v120, v21);
            v87 = v86 + 6;
            if (*(v86 + 71) < 0)
            {
              v87 = *v87;
            }

            v88 = *(v18 + 172);
            v89 = sub_10000B1F8();
            v90 = sub_100125220(v89);
            *buf = 136447491;
            *&buf[4] = v83;
            v160 = 2053;
            *v161 = v84;
            *&v161[8] = 2053;
            *&v161[10] = v85;
            *&v161[18] = 2082;
            *&v161[20] = v87;
            *&v161[28] = 2050;
            *&v161[30] = v88;
            *&v161[38] = 2050;
            *&v161[40] = v90;
            _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_DEBUG, "LCFusion,got non-active location provider,%{public}s,lat,%{sensitive}.7f,lon,%{sensitive}.7f,ignoring,in favor of,%{public}s,mct,%{public}.3f,propagation_us,%{public}.3f", buf, 0x3Eu);
          }

          if (!sub_10000A100(121, 2))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018F7C0C();
          }

          *v125 = &v124;
          v92 = sub_100109DF4(v120, &v124);
          v93 = v92 + 6;
          if (*(v92 + 71) < 0)
          {
            v93 = *v93;
          }

          v94 = *(v18 + 100);
          v95 = *(v18 + 108);
          *v125 = v21;
          v96 = sub_100109DF4(v120, v21);
          v97 = v96 + 6;
          if (*(v96 + 71) < 0)
          {
            v97 = *v97;
          }

          v98 = *(v18 + 172);
          v99 = sub_10000B1F8();
          v100 = sub_100125220(v99);
          *v125 = 136447491;
          *&v125[4] = v93;
          v126 = 2053;
          *v127 = v94;
          *&v127[8] = 2053;
          *&v127[10] = v95;
          *&v127[18] = 2082;
          *&v127[20] = v97;
          *&v127[28] = 2050;
          *&v127[30] = v98;
          *&v127[38] = 2050;
          *v128 = v100;
          goto LABEL_100;
        }

        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v29 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v30 = *(v18 + 100);
          v31 = *(v18 + 108);
          *buf = 134545921;
          *&buf[4] = v30;
          v160 = 2053;
          *v161 = v31;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "LCFusion, got non-active wifi lat,%{sensitive}.7f,lon,%{sensitive}.7f, Consuming in LCFusion ", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F9C44();
        }
      }

      LOBYTE(v25) = *(v18 + 908);
    }

    else
    {
      v23 = 0;
    }

    if (v25 > 0)
    {
      goto LABEL_40;
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v68 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v69 = *(v18 + 100);
      v70 = *(v18 + 108);
      *buf = &v124;
      v71 = sub_100109DF4(v120, &v124);
      v72 = v71 + 6;
      if (*(v71 + 71) < 0)
      {
        v72 = *v72;
      }

      v73 = sub_10000B1F8();
      v74 = sub_100125220(v73);
      *buf = 134546435;
      *&buf[4] = v69;
      v160 = 2053;
      *v161 = v70;
      *&v161[8] = 2082;
      *&v161[10] = v72;
      *&v161[18] = 2050;
      *&v161[20] = v74;
      _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEBUG, "LCFusion Got,lat,%{sensitive}.7f,lon,%{sensitive}.7f,for non-active location provider,%{public}s,ignoring coarse granularity,propagation_us,%{public}.3f", buf, 0x2Au);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v75 = *(v18 + 100);
    v76 = *(v18 + 108);
    *v125 = &v124;
    v77 = sub_100109DF4(v120, &v124);
    v78 = v77 + 6;
    if (*(v77 + 71) < 0)
    {
      v78 = *v78;
    }

    v79 = sub_10000B1F8();
    v80 = sub_100125220(v79);
    *v125 = 134546435;
    *&v125[4] = v75;
    v126 = 2053;
    *v127 = v76;
    *&v127[8] = 2082;
    *&v127[10] = v78;
    *&v127[18] = 2050;
    *&v127[20] = v80;
LABEL_100:
    v101 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::updateFusionLCLocationFilter(CLDaemonLocation &, const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v101);
    if (v101 != buf)
    {
      free(v101);
    }

    return 0;
  }

LABEL_40:
  v32 = *(a1 + 280);
  if (v32 && ((*(*v32 + 480))(v32, v5), (v33 = *(a1 + 280)) != 0))
  {
    v34 = (*(*v33 + 152))(v33, a3);
  }

  else
  {
    v34 = 0;
  }

  if (*(a1 + 680) == 1 && v18 != v17 && (*(v18 + 911) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v66 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v67 = *(a1 + 680);
      *buf = 67109120;
      *&buf[4] = v67;
      _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "#Warning, LCFusion, not notifying clients when device is sleeping,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9EA8((a1 + 680));
    }

    return 0;
  }

  if ((v23 | v34 ^ 1) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v35 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v36 = *(a3 + 76);
      v37 = *(a3 + 96);
      v38 = sub_1001FD6E4(v37);
      v39 = *(a3 + 4);
      v40 = *(a3 + 12);
      v41 = *(a3 + 20);
      *buf = 134350339;
      *&buf[4] = v36;
      v160 = 1026;
      *v161 = v37;
      *&v161[4] = 2082;
      *&v161[6] = v38;
      *&v161[14] = 2053;
      *&v161[16] = v39;
      *&v161[24] = 2053;
      *&v161[26] = v40;
      *&v161[34] = 2050;
      *&v161[36] = v41;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_INFO, "location rejected by LCFusion,iosTime,%{public}.3f,type,%{public}d,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9D48(a3, v12);
    }

    *a4 = 0;
  }

  else
  {
    (*(**(a1 + 280) + 168))(*(a1 + 280), a2);
    *a4 = 1;
    if (qword_1025D48C0 != -1)
    {
      sub_1018F9B20();
    }

    v42 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(a2 + 4);
      v44 = *(a2 + 12);
      v108 = *(a2 + 20);
      v45 = *(a2 + 96);
      v106 = sub_1001FD6E4(v45);
      v112 = *(a2 + 44);
      v114 = *(a2 + 60);
      v116 = *(a2 + 84);
      v118 = *(a2 + 88);
      v121 = *(a2 + 76);
      v46 = sub_10000B1F8();
      *buf = 0;
      v47 = sub_10001A6B0(v46, buf) - *(a2 + 76);
      v48 = *(a2 + 28);
      v49 = *(a2 + 36);
      v50 = *(a2 + 52);
      v51 = *(a2 + 68);
      v102 = *(a3 + 184);
      v103 = *(a2 + 128);
      v104 = *(a2 + 132);
      v110 = *(a2 + 136);
      v52 = sub_10000B1F8();
      v53 = sub_100125220(v52);
      *buf = 136320515;
      *&buf[4] = "CL-filtered";
      v160 = 1024;
      *v161 = 0;
      *&v161[4] = 2053;
      *&v161[6] = v43;
      *&v161[14] = 2053;
      *&v161[16] = v44;
      *&v161[24] = 2048;
      *&v161[26] = v108;
      *&v161[34] = 1026;
      *&v161[36] = v45;
      *&v161[40] = 2082;
      *&v161[42] = v106;
      v162 = 2050;
      v163 = v112;
      v164 = 2050;
      v165 = v114;
      v166 = 1026;
      v167 = v116;
      v168 = 2050;
      v169 = v118;
      v170 = 2050;
      v171 = v121;
      v172 = 2050;
      v173 = v47;
      v174 = 2049;
      v175 = v48;
      v176 = 2050;
      v177 = v49;
      v178 = 2050;
      v179 = v50;
      v180 = 2050;
      v181 = v51;
      v182 = 2050;
      v183 = v102;
      v184 = 1026;
      v185 = v103;
      v186 = 1026;
      v187 = v104;
      v188 = 1026;
      v189 = v110;
      v190 = 2050;
      v191 = v53;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,Speed,%{public}.2f,Course,%{public}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.3f,AltitudeAccuracy,%{public}.3f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampGps,%{public}.3lf,integrity,%{public}d,referenceFrame,%{public}d,rawReferenceFrame,%{public}d,propagation_us,%{public}.3f", buf, 0xC6u);
    }

    if (sub_10000A100(123, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48C0 != -1)
      {
        sub_1018F9B20();
      }

      v54 = *(a2 + 4);
      v55 = *(a2 + 12);
      v56 = *(a2 + 20);
      v57 = *(a2 + 96);
      v58 = sub_1001FD6E4(v57);
      v59 = *(a2 + 44);
      v60 = *(a2 + 60);
      v61 = *(a2 + 84);
      v109 = *(a2 + 88);
      v113 = *(a2 + 76);
      v62 = sub_1000281DC() - v113;
      v105 = *(a2 + 28);
      v107 = *(a2 + 36);
      v111 = *(a2 + 52);
      v115 = *(a2 + 68);
      v117 = *(a3 + 184);
      v119 = *(a2 + 128);
      v123 = *(a2 + 132);
      v63 = *(a2 + 136);
      v64 = sub_10000B1F8();
      *v125 = 136320515;
      *&v125[4] = "CL-filtered";
      v126 = 1024;
      *v127 = 0;
      *&v127[4] = 2053;
      *&v127[6] = v54;
      *&v127[14] = 2053;
      *&v127[16] = v55;
      *&v127[24] = 2048;
      *&v127[26] = v56;
      *&v127[34] = 1026;
      *&v127[36] = v57;
      *v128 = 2082;
      *&v128[2] = v58;
      v129 = 2050;
      v130 = v59;
      v131 = 2050;
      v132 = v60;
      v133 = 1026;
      v134 = v61;
      v135 = 2050;
      v136 = v109;
      v137 = 2050;
      v138 = v113;
      v139 = 2050;
      v140 = v62;
      v141 = 2049;
      v142 = v105;
      v143 = 2050;
      v144 = v107;
      v145 = 2050;
      v146 = v111;
      v147 = 2050;
      v148 = v115;
      v149 = 2050;
      v150 = v117;
      v151 = 1026;
      v152 = v119;
      v153 = 1026;
      v154 = v123;
      v155 = 1026;
      v156 = v63;
      v157 = 2050;
      v158 = sub_100125220(v64);
      v65 = _os_log_send_and_compose_impl();
      sub_100152C7C("LOCATION", 1, 0, 2, "BOOL CLLocationController::updateFusionLCLocationFilter(CLDaemonLocation &, const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v65);
      if (v65 != buf)
      {
        free(v65);
      }
    }
  }

  return v34;
}

uint64_t sub_1001F9450(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xE)
  {
    return 1;
  }

  else
  {
    return dword_101C85D08[a2];
  }
}

void sub_1001F9474()
{
  v1[2] = 0;
  v1[3] = 0;
  IOHIDEventGetVendorDefinedData();
  if (qword_1025D4200 != -1)
  {
    sub_10199CB98();
  }

  v0 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v1[0]) = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEBUG, "Empty payload, returning", v1, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10199CBC0();
  }
}

void sub_1001F9554(uint64_t a1, const void *a2, size_t a3, uint64_t *a4)
{
  sub_1001F96F0(v36, a2, a3);
  v6 = *(a1 + 144);
  if (!v6)
  {
    operator new();
  }

  sub_1001F9738(v36, v6);
  v7 = *(a1 + 144);
  v8 = *(v7 + 8);
  v9 = *(v7 + 56);
  v10 = *(v7 + 88);
  v33 = *(v7 + 72);
  v34 = v10;
  v35 = *(v7 + 104);
  v11 = *(v7 + 24);
  v29 = v8;
  v30 = v11;
  v31 = *(v7 + 40);
  v32 = v9;
  v12 = *(a1 + 132);
  if (!v12 || *(&v29 + 4) == v12)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v23 = 0u;
    sub_1001F9930();
    if ((WORD1(v29) & 0x100) != 0)
    {
      v13 = *a4;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v14 = v23;
      v15 = v24;
      v22 = 0;
      v20 = HIDWORD(v29);
      v21 = sqrtf(((*&v32 * *&v32) + (*(&v31 + 3) * *(&v31 + 3))) + (*(&v32 + 1) * *(&v32 + 1)));
      LOBYTE(v22) = *(a1 + 28);
      sub_100061FD8(a1, 0, &v13, 120);
    }
  }
}

void *sub_1001F96F0(void *__dst, const void *__src, size_t __n)
{
  if (__n)
  {
    v3 = (*__src - 1) > 3u ? 0 : qword_101C7F0B8[(*__src - 1)];
    if (v3 == __n)
    {
      return memcpy(__dst, __src, __n);
    }
  }

  *__dst = -1;
  return __dst;
}

unsigned __int8 *sub_1001F9738(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return (*(*a2 + 32))(a2, result);
    }

    else if (v2 == 4)
    {
      return (*(*a2 + 40))(a2, result);
    }
  }

  else if (v2 == 1)
  {
    return (*(*a2 + 16))(a2, result);
  }

  else if (v2 == 2)
  {
    return (*(*a2 + 24))(a2, result);
  }

  return result;
}

__n128 sub_1001F981C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 104) = *(a2 + 24);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = result;
  return result;
}

float sub_1001F9850(float *a1)
{
  v1 = 0;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  result = (((*a1 * *a1) + (v3 * v3)) * 2.0) + -1.0;
  v6 = ((*a1 * v2) - (v3 * v4)) + ((*a1 * v2) - (v3 * v4));
  v7 = ((v3 * v2) + (*a1 * v4)) + ((v3 * v2) + (*a1 * v4));
  v11[0] = result;
  v11[1] = v6;
  v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (v11[v1] * v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (v11[v9] * v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

double sub_1001F9900(double a1, double a2)
{
  result = a1 + a2;
  v3 = 360.0;
  if (result >= 360.0)
  {
    v3 = -360.0;
    return result + v3;
  }

  if (result < 0.0)
  {
    return result + v3;
  }

  return result;
}

void sub_1001F9930()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v94 = *(v3 + 28);
  sub_10011E648(&v94, v94);
  v8 = sub_10011E6AC(v94.f32);
  v10 = v9;
  v12 = v11;
  v82 = *(v4 + 92);
  v83 = *(v4 + 88);
  v81 = *(v4 + 96);
  v13 = *(v4 + 16);
  v14 = v13 - *(v4 + 76);
  v86 = *(v4 + 20);
  v87 = *(v4 + 24);
  v15 = v86 - *(v4 + 80);
  v16 = v87 - *(v4 + 84);
  *&v92 = v14;
  *(&v92 + 1) = v15;
  v93 = v16;
  v17 = sub_1001F9850(v94.f32);
  v89 = v18;
  v90 = v17;
  v88 = v19;
  v20 = 0;
  v21 = 0.0;
  do
  {
    v21 = v21 + (*(&v92 + v20) * *(&v92 + v20));
    v20 += 4;
  }

  while (v20 != 12);
  v22 = sqrtf(v21);
  v23 = (((v12 * v16) + (v10 * v15)) + (v8 * v14)) / v22;
  v84 = v23;
  v85 = v22 * sqrtf(1.0 - (v23 * v23));
  v24 = *(v4 + 72);
  v25 = -1.0;
  v26 = -1.0;
  if (v24 != -1.0)
  {
    if (*(v5 + 272) == 1)
    {
      v27 = 180.0;
      if (v85 != 0.0)
      {
        v27 = asinf(5.0 / fabsf(v85)) * 57.296;
      }

      v24 = v24 + v27;
    }

    v28 = 10.0;
    if (v24 >= 10.0)
    {
      v28 = v24;
    }

    v26 = fminf(v28, 180.0);
  }

  v29 = *(v4 + 1);
  v30 = *(v4 + 68);
  if (*(v5 + 256) != -1.0)
  {
    v25 = sub_1001F9900(v30, *(v5 + 240));
  }

  if (*(v5 + 129))
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  v91 = v31;
  if (*(v5 + 129))
  {
    v26 = -1.0;
  }

  v32 = *(v4 + 2);
  v33 = (v32 >> 11) & 1;
  if (*(v5 + 288) != v33)
  {
    if (qword_1025D42E0 != -1)
    {
      sub_10199C878();
    }

    v34 = v2;
    v35 = (v5 + 288);
    v36 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *v35;
      *buf = 67109376;
      *v96 = v37;
      *&v96[4] = 1024;
      *&v96[6] = (v32 >> 11) & 1;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "Compass heading mode changed from %d to %d", buf, 0xEu);
    }

    v2 = v34;
    if (sub_10000A100(121, 2))
    {
      sub_10199CCA4((v5 + 288));
    }

    *v35 = v33;
  }

  if (qword_1025D42E0 != -1)
  {
    sub_10199C878();
  }

  v38 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136324354;
    v39 = *(v4 + 32);
    v97 = *(v4 + 28);
    v99 = v39;
    LODWORD(v39) = *(v4 + 40);
    v101 = *(v4 + 36);
    v103 = *&v39;
    v105 = v83;
    v107 = v82;
    v109 = v81;
    v111 = v90;
    v113 = v88;
    v115 = v89;
    v117 = v13;
    v119 = v86;
    v121 = v87;
    v123 = v8;
    v125 = v10;
    v127 = v12;
    v129 = v30;
    v131 = v25;
    v133 = v26;
    v40 = *v2;
    *v96 = "GyroCompass";
    *&v96[8] = 2048;
    v98 = 2048;
    v100 = 2048;
    v102 = 2048;
    v104 = 2048;
    v106 = 2048;
    v108 = 2048;
    v110 = 2048;
    v112 = 2048;
    v114 = 2048;
    v116 = 2048;
    v118 = 2048;
    v120 = 2048;
    v122 = 2048;
    v124 = 2048;
    v126 = 2048;
    v128 = 2048;
    v130 = 2048;
    v132 = 2048;
    v134 = 1024;
    v135 = v91;
    v136 = 1024;
    v137 = (v32 >> 4) & 1;
    v138 = 1024;
    v139 = (v32 >> 3) & 1;
    v140 = 1024;
    v141 = (v32 >> 2) & 1;
    v142 = 1024;
    v143 = (v32 >> 5) & 1;
    v144 = 1024;
    v145 = (v32 >> 6) & 1;
    v146 = 1024;
    v147 = (v32 >> 8) & 1;
    v148 = 1024;
    v149 = (v32 >> 1) & 1;
    v150 = 1024;
    v151 = v32 & 1;
    v152 = 1024;
    v153 = (v32 >> 10) & 1;
    v154 = 1024;
    v155 = (v32 >> 9) & 1;
    v156 = 1024;
    v157 = (v32 >> 11) & 1;
    v158 = 1024;
    v159 = (v32 >> 12) & 1;
    v160 = 1024;
    v161 = (v32 >> 13) & 1;
    v162 = 1024;
    v163 = (v32 >> 14) & 1;
    v164 = 1024;
    v165 = v157;
    v166 = 2048;
    v167 = v40;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "Type,%s,attitude.x,%.8f,.y,%.8f,.z,%.8f,.w,%.8f,magBiasEstVar.x,%.8f,.y,%.8f,.z,%.8f,calibrated.x,%.8f,.y,%.8f,.z,%.8f,uncalibrated.x,%.8f,.y,%.8f,.z,%.8f,gravity.x,%.8f,.y,%.8f,.z,%.8f,heading,%.1f,trueheading,%.1f,accuracy,%.1f,level,%d,biasEstimation,%d,yawCorrection,%d,gravityCorrection,%d,courseCorrection,%d,visualLocalizationCorrection,%d,initalized,%d,accelSaturated,%d,gyroSaturated,%d,compassCalibration,%d,gyroCalibration,%d,course,%d,gmm,%d,north,%d,visualLocalization,%d,headingMode,%d,timestamp,%f", buf, 0x134u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42E0 != -1)
    {
      sub_10199C878();
    }

    v75 = *(v4 + 28);
    v76 = *(v4 + 32);
    v77 = *(v4 + 36);
    v78 = *(v4 + 40);
    v79 = *v2;
    *v171 = 136324354;
    *&v171[4] = "GyroCompass";
    *&v171[12] = 2048;
    *&v171[14] = v75;
    v172 = 2048;
    v173 = v76;
    *v174 = 2048;
    *&v174[2] = v77;
    *&v174[10] = 2048;
    *&v174[12] = v78;
    *&v174[20] = 2048;
    *&v174[22] = v83;
    *&v174[30] = 2048;
    *&v174[32] = v82;
    *v175 = 2048;
    *&v175[2] = v81;
    *&v175[10] = 2048;
    v176 = v90;
    *v177 = 2048;
    *&v177[2] = v88;
    v178 = 2048;
    v179 = v89;
    v180 = 2048;
    v181 = v13;
    v182 = 2048;
    v183 = v86;
    v184 = 2048;
    v185 = v87;
    v186 = 2048;
    v187 = v8;
    v188 = 2048;
    v189 = v10;
    v190 = 2048;
    v191 = v12;
    v192 = 2048;
    v193 = v30;
    v194 = 2048;
    v195 = v25;
    v196 = 2048;
    v197 = v26;
    v198 = 1024;
    v199 = v91;
    v200 = 1024;
    v201 = (v32 >> 4) & 1;
    v202 = 1024;
    v203 = (v32 >> 3) & 1;
    v204 = 1024;
    v205 = (v32 >> 2) & 1;
    v206 = 1024;
    v207 = (v32 >> 5) & 1;
    v208 = 1024;
    v209 = (v32 >> 6) & 1;
    v210 = 1024;
    v211 = (v32 >> 8) & 1;
    v212 = 1024;
    v213 = (v32 >> 1) & 1;
    v214 = 1024;
    v215 = v32 & 1;
    v216 = 1024;
    v217 = (v32 >> 10) & 1;
    v218 = 1024;
    v219 = (v32 >> 9) & 1;
    v220 = 1024;
    v221 = (v32 >> 11) & 1;
    v222 = 1024;
    v223 = (v32 >> 12) & 1;
    v224 = 1024;
    v225 = (v32 >> 13) & 1;
    v226 = 1024;
    v227 = (v32 >> 14) & 1;
    v228 = 1024;
    v229 = v221;
    v230 = 2048;
    v231 = v79;
    v80 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLMotionTypeCompass CLCompass7::populateMotionType(const CMDeviceMotionReport::Compass &, const CFTimeInterval &)", "%s\n", v80);
    if (v80 != buf)
    {
      free(v80);
    }
  }

  if (*(v5 + 29) == 1)
  {
    *v171 = off_102491258;
    Current = CFAbsoluteTimeGetCurrent();
    v42 = *v2;
    *&v171[8] = Current;
    v173 = v42;
    *v174 = *(v4 + 28);
    *&v174[16] = *(v4 + 56);
    LODWORD(Current) = *(v4 + 64);
    *&v174[28] = vmul_f32(*(v4 + 44), vdup_n_s32(0x42652EE1u));
    *&v42 = *(v4 + 52) * 57.296;
    *&v174[24] = LODWORD(Current);
    *&v174[36] = LODWORD(v42);
    *v175 = v13;
    *&v175[4] = v86;
    LOBYTE(v176) = v91;
    *&v175[8] = v87;
    *(&v176 + 1) = v30;
    *v177 = v25;
    *&v177[4] = v26;
    v43 = *(v5 + 132);
    LODWORD(v179) = 2;
    HIDWORD(v179) = v43;
    v180 = *(v4 + 2);
    v44 = sub_10015ADF4();
    sub_1010CF5BC(v44, v171);
    sub_10152D354(buf);
    sub_101555764(buf);
    v170 |= 1u;
    v168 = *&v171[8];
    v45 = v169;
    v46 = *v2;
    *(v169 + 124) |= 0x10u;
    *(v45 + 40) = v46;
    v47 = v169;
    v48 = *(v4 + 28);
    *(v169 + 124) |= 2u;
    *(v47 + 16) = v48;
    v49 = v169;
    v50 = *(v4 + 32);
    *(v169 + 124) |= 4u;
    *(v49 + 24) = v50;
    v51 = v169;
    v52 = *(v4 + 36);
    *(v169 + 124) |= 8u;
    *(v51 + 32) = v52;
    v53 = v169;
    v54 = *(v4 + 40);
    *(v169 + 124) |= 1u;
    *(v53 + 8) = v54;
    v55 = v169;
    LODWORD(v54) = *(v4 + 56);
    *(v169 + 124) |= 0x40000u;
    *(v55 + 100) = LODWORD(v54);
    v56 = v169;
    LODWORD(v54) = *(v4 + 60);
    *(v169 + 124) |= 0x80000u;
    *(v56 + 104) = LODWORD(v54);
    v57 = v169;
    LODWORD(v54) = *(v4 + 64);
    *(v169 + 124) |= 0x100000u;
    *(v57 + 108) = LODWORD(v54);
    v58 = v169;
    *&v54 = *(v4 + 44) * 57.296;
    *(v169 + 124) |= 0x2000u;
    *(v58 + 80) = LODWORD(v54);
    v59 = v169;
    *&v54 = *(v4 + 48) * 57.296;
    *(v169 + 124) |= 0x4000u;
    *(v59 + 84) = LODWORD(v54);
    v60 = v169;
    *&v54 = *(v4 + 52) * 57.296;
    *(v169 + 124) |= 0x8000u;
    *(v60 + 88) = LODWORD(v54);
    v61 = v169;
    *(v169 + 124) |= 0x100u;
    *(v61 + 60) = v13;
    v62 = v169;
    *(v169 + 124) |= 0x200u;
    *(v62 + 64) = v86;
    v63 = v169;
    *(v169 + 124) |= 0x400u;
    *(v63 + 68) = v87;
    v64 = v169;
    *(v169 + 124) |= 0x80u;
    *(v64 + 56) = v91;
    v65 = v169;
    *(v169 + 124) |= 0x800u;
    *(v65 + 72) = v30;
    v66 = v169;
    *(v169 + 124) |= 0x20000u;
    *(v66 + 96) = v25;
    v67 = v169;
    *(v169 + 124) |= 0x20u;
    *(v67 + 48) = v26;
    v68 = v169;
    *(v169 + 124) |= 0x1000u;
    *(v68 + 76) = 2;
    v69 = v169;
    v70 = *(v5 + 132);
    *(v169 + 124) |= 0x40u;
    *(v69 + 52) = v70;
    v71 = v169;
    v72 = *(v4 + 2);
    *(v169 + 124) |= 0x10000u;
    *(v71 + 92) = v72;
    if (qword_102637F48 != -1)
    {
      sub_10199CDBC();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  v73 = acosf(v84);
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *v7 = v90;
  *(v7 + 4) = v88;
  *(v7 + 8) = v89;
  *(v7 + 12) = v92;
  *(v7 + 20) = v93;
  *(v7 + 24) = v30;
  *(v7 + 28) = v25;
  *(v7 + 32) = v26;
  *(v7 + 36) = v33;
  *(v7 + 40) = v91;
  *(v7 + 48) = v22;
  *(v7 + 52) = (v73 * -57.296) + 90.0;
  *(v7 + 56) = v85;
  v74 = v94.f32[2];
  *(v7 + 64) = v94.f32[3];
  *(v7 + 72) = vcvtq_f64_f32(*v94.f32);
  *(v7 + 88) = v74;
}

void sub_1001FA4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

id sub_1001FA4D8(void *a1, int a2, void *__src, unint64_t a4)
{
  if (a4 >= 0x78)
  {
    v8 = 120;
  }

  else
  {
    v8 = a4;
  }

  memcpy(__dst, __src, v8);
  if (a4 >= 0x79)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101955680();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v28 = 0x8000000101CB1415 & 0x7FFFFFFFFFFFFFFFLL;
      v29 = 2048;
      v30 = 120;
      v31 = 2048;
      v32 = a4;
      v33 = 1024;
      v34 = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101955694();
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[6];
  v13 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001FA86C;
  v15[3] = &unk_102476DB0;
  v15[4] = v12;
  v15[5] = v11;
  v20 = __dst[4];
  v21 = __dst[5];
  v22 = __dst[6];
  v16 = __dst[0];
  v17 = __dst[1];
  v18 = __dst[2];
  v19 = __dst[3];
  v23 = v26;
  v24 = v10;
  return [v13 async:v15];
}

__n128 sub_1001FA6CC(__int128 *a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    v2 = *(a2 + 328);
    if (v2 == 6)
    {
      *(a2 + 264) = *(a1 + 10);
      v3 = *(a1 + 12);
      *(a2 + 92) = v3;
      v4 = *(a1 + 26);
      if (v4 > -1.0)
      {
        *(a2 + 401) = v3;
        if (v3 - 4 >= 2)
        {
          if (v3 == 2)
          {
            ++*(a2 + 412);
            *(a2 + 420) = v4 + *(a2 + 420);
            *(a2 + 428) = v4;
            *(a2 + 436) = v4;
          }
        }

        else
        {
          ++*(a2 + 416);
          *(a2 + 424) = v4 + *(a2 + 424);
          *(a2 + 432) = v4;
          *(a2 + 440) = v4;
        }

        *(a2 + 400) = v3;
      }
    }

    else
    {
      v4 = *(a1 + 26);
    }

    if (v4 <= -1.0)
    {
      v5 = *(a1 + 12);
    }

    else
    {
      ++*(a2 + 452);
      v5 = *(a1 + 12);
      if (v5)
      {
        if (*(a1 + 12) == 2)
        {
          ++*(a2 + 444);
        }
      }

      else
      {
        ++*(a2 + 448);
      }
    }

    *(a2 + 272) |= *(a1 + 112);
    if (*(a2 + 92) < v5)
    {
      *(a2 + 92) = v5;
    }

    if (v5 <= 0)
    {
      v6 = *(a2 + 88);
      if (v2 > 0 || !v6)
      {
        *(a2 + 88) = v6 + 1;
      }
    }

    v7 = llround((*(a1 + 27) * 180.0) / 3.14159265);
    if (*(a2 + 188) > v7)
    {
      v7 = *(a2 + 188);
    }

    *(a2 + 188) = v7;
    *(a2 + 268) = *(a1 + 10);
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = a1[3];
  *(a2 + 312) = a1[2];
  *(a2 + 328) = v10;
  *(a2 + 280) = v8;
  *(a2 + 296) = v9;
  result = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  *(a2 + 392) = *(a1 + 14);
  *(a2 + 360) = v12;
  *(a2 + 376) = v13;
  *(a2 + 344) = result;
  return result;
}

uint64_t sub_1001FA86C(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[21];

    return v3(a1 + 6, v4);
  }

  return result;
}

uint64_t sub_1001FA8C8(uint64_t a1, uint64_t a2)
{
  v4 = vcvtq_f64_f32(*(a2 + 28));
  *bytes = vcvtq_f64_f32(*(a2 + 20));
  v19 = v4;
  v16 = v4.f64[1];
  v20 = vcvtq_f64_f32(*(a2 + 36));
  v21 = COERCE_UNSIGNED_INT64(CFAbsoluteTimeGetCurrent());
  v22 = vcvtq_f64_f32(*(a2 + 56));
  v23 = vrev64_s32(*(a2 + 44));
  sub_10004FD18(v17);
  v5 = *(a1 + 96);
  if (v5 < 0.0 || *(a1 + 64) <= 0.0 || sub_1001FAD44(v16, v5) >= *(a1 + 64))
  {
    v12 = CFDataCreate(kCFAllocatorDefault, bytes, 88);
    if (v12)
    {
      if (sub_1000433CC(v17, "kCLConnectionMessageHeadingDataKey", v12))
      {
        *buf = sub_10007005C(v17);
        sub_10023D8DC();
      }

      CFRelease(v12);
    }

    v13 = v21;
    *(a1 + 104) = v20;
    *(a1 + 120) = v13;
    *(a1 + 136) = v22;
    *(a1 + 152) = v23;
    v14 = v19;
    *(a1 + 72) = *bytes;
    *(a1 + 88) = v14;
  }

  else
  {
    if (qword_1025D42E0 != -1)
    {
      sub_101AECA48();
    }

    v6 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 96);
      *buf = 134218496;
      *&buf[4] = v16;
      v31 = 2048;
      v32 = v7;
      v33 = 2048;
      v34 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "new heading %.2f is within heading filter of %.2f from previous heading %.2f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AECA70(buf);
      v9 = *(a1 + 64);
      v10 = *(a1 + 96);
      v24 = 134218496;
      v25 = v16;
      v26 = 2048;
      v27 = v9;
      v28 = 2048;
      v29 = v10;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLHeadingSubscription::onCompass(const CLCompass_Type::Sample *)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return sub_100005DA4(v17);
}

void sub_1001FACAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FACD8(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 8) "silo")];

  return sub_1001FA8C8(a2, a1);
}

double sub_1001FAD44(double a1, double a2)
{
  v2 = vabdd_f64(a1, a2);
  if (v2 > 180.0)
  {
    if (a1 >= 180.0)
    {
      a1 = 360.0 - a1;
    }

    if (a2 >= 180.0)
    {
      a2 = 360.0 - a2;
    }

    return a1 + a2;
  }

  return v2;
}

void sub_1001FAD8C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (qword_1025D4790 != -1)
  {
    sub_100312440();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v3 + 24);
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = v5;
    v11 = 1026;
    v12 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#provisional force intermediation response(#cblsPowerSaver), Client:%{public, location:escape_only}@, shouldContinue:%{public}hhd}", v6, 0x22u);
  }
}

void sub_1001FAE80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2) == 1 && *(a1 + 8) && sub_100027FB4(a2))
  {
    v4 = sub_10000B1F8();
    sub_10000AED4(v4, buf);
    if (*(a1 + 96) == 1 && (v5 = *&v36[2], v6 = *&v36[2] - *(a1 + 176), v6 <= 300.0))
    {
      if ((*&v36[2] - *(a1 + 72) >= 1.0 || *&v36[2] - *(a1 + 80) >= 1.0) && v6 >= 60.0 && *&v36[2] - *(a1 + 88) >= 1.0)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10193CF9C();
        }

        v15 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#HST, Updating with Cell location", buf, 2u);
        }

        v16 = sub_10000A100(121, 2);
        if (v16)
        {
          sub_10193D1CC();
        }

        sub_100226CA0(v16, a2, a1 + 100);
        v18 = v17;
        v20 = v19;
        sub_100226DAC(a1, v17, v19);
        *(a1 + 88) = v5;
        sub_100226E7C(a1);
        if (*(a2 + 20) < *(a1 + 120) / (*(a2 + 76) - *(a1 + 176)))
        {
          v21 = *a2;
          *(a1 + 116) = *(a2 + 16);
          *(a1 + 100) = v21;
          v22 = *(a2 + 32);
          v23 = *(a2 + 48);
          v24 = *(a2 + 64);
          *(a1 + 180) = *(a2 + 80);
          *(a1 + 164) = v24;
          *(a1 + 148) = v23;
          *(a1 + 132) = v22;
          v25 = *(a2 + 96);
          v26 = *(a2 + 112);
          v27 = *(a2 + 128);
          *(a1 + 240) = *(a2 + 140);
          *(a1 + 228) = v27;
          *(a1 + 212) = v26;
          *(a1 + 196) = v25;
        }

        if (qword_1025D4600 != -1)
        {
          sub_10193CF9C();
        }

        v28 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(a1 + 3);
          v30 = *(a1 + 256);
          v31 = *(a1 + 258);
          *buf = 134219008;
          v34 = v18;
          v35 = 2048;
          *v36 = v20;
          *&v36[8] = 1024;
          v37 = v29;
          v38 = 1024;
          v39 = v30;
          v40 = 1024;
          v41 = v31;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#HST,speed,%f,speedSigma,%f,source,Cell,isHighSpeedTransit,%d,isAboveAutomobileSpeed,%d,isSmoothTrajectory,%d", buf, 0x28u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_10193CF9C();
          }

          v32 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerHighSpeedTransitDetector::updateWithCellLocation(const CLLocationProvider_Type::NotificationData &)", "%s\n", v32);
          if (v32 != buf)
          {
            free(v32);
          }
        }
      }
    }

    else
    {
      v7 = *a2;
      *(a1 + 116) = *(a2 + 16);
      *(a1 + 100) = v7;
      v8 = *(a2 + 32);
      v9 = *(a2 + 48);
      v10 = *(a2 + 64);
      *(a1 + 180) = *(a2 + 80);
      *(a1 + 164) = v10;
      *(a1 + 148) = v9;
      *(a1 + 132) = v8;
      v11 = *(a2 + 96);
      v12 = *(a2 + 112);
      v13 = *(a2 + 128);
      *(a1 + 240) = *(a2 + 140);
      *(a1 + 228) = v13;
      *(a1 + 212) = v12;
      *(a1 + 196) = v11;
      *(a1 + 96) = 1;
    }
  }
}

void sub_1001FB254(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 == 5 || *a2 == 22 && sub_10030D934(*(a3 + 808)))
  {
    v5 = *(a3 + 112);
    v51 = *(a3 + 96);
    v52 = v5;
    v53[0] = *(a3 + 128);
    *(v53 + 12) = *(a3 + 140);
    v6 = *(a3 + 48);
    v47 = *(a3 + 32);
    v48 = v6;
    v7 = *(a3 + 80);
    v49 = *(a3 + 64);
    v50 = v7;
    v8 = *(a3 + 16);
    *buf = *a3;
    *&buf[16] = v8;
    v9 = sub_1001FB69C(buf, *(a3 + 936));
    if (v9)
    {
      v10 = v9;
      v11 = (a3 + 44);
      if (v9 == 2)
      {
        v11 = (a3 + 936);
      }

      v12 = *v11;
      v13 = (a3 + 952);
      if (v9 != 2)
      {
        v13 = (a3 + 52);
      }

      v14 = *v13;
      v15 = (a3 + 944);
      if (v9 != 2)
      {
        v15 = (a3 + 76);
      }

      v16 = *v15;
      v17 = CFAbsoluteTimeGetCurrent() - v16;
      if (v14 <= 0.0)
      {
        v14 = 1.5;
      }

      if (qword_1025D4250 != -1)
      {
        sub_100325134();
      }

      v18 = v12;
      v19 = fabsf(v17);
      v20 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
      {
        v21 = "Location derived speed";
        v22 = *(a3 + 76);
        *buf = 136316418;
        if (v10 == 1)
        {
          v21 = "GPS speed";
        }

        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = v22;
        *&buf[22] = 2048;
        *&buf[24] = v18;
        LOWORD(v47) = 2048;
        *(&v47 + 2) = v14;
        WORD5(v47) = 1024;
        HIDWORD(v47) = v10;
        LOWORD(v48) = 2048;
        *(&v48 + 2) = v19;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "%s accepted, timestamp, %f, speed, %f, speedUnc, %f, speedSource, %d, ageOfEstimation, %f", buf, 0x3Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4250 != -1)
        {
          sub_100325134();
        }

        v32 = "Location derived speed";
        v33 = *(a3 + 76);
        if (v10 == 1)
        {
          v32 = "GPS speed";
        }

        v36 = 136316418;
        v37 = v32;
        *v38 = 2048;
        *&v38[2] = v33;
        *&v38[10] = 2048;
        v39 = v18;
        v40 = 2048;
        v41 = v14;
        v42 = 1024;
        v43 = v10;
        v44 = 2048;
        v45 = v19;
        v34 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLMotionCoprocessor::sendGpsSpeed(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }

      v23 = *(a3 + 116);
      if (v23 >= 0.0)
      {
        v23 = sub_1001F9900(v23, -*(a1 + 864));
      }

      v24 = v23;
      buf[0] = 5;
      buf[1] = v10;
      v25 = 128.0;
      if (v18 <= 128.0)
      {
        v26 = v18;
      }

      else
      {
        v26 = 128.0;
      }

      if (v26 < -128.0)
      {
        v26 = -128.0;
      }

      v27 = vcvts_n_s32_f32(v26, 0x18uLL);
      *&buf[2] = 0;
      if (v14 <= 128.0)
      {
        v25 = v14;
      }

      v28 = vcvts_n_s32_f32(v25, 0x18uLL);
      *&buf[4] = v27;
      *&buf[8] = v28;
      v29 = *(a3 + 68);
      *&buf[12] = v24;
      *&buf[16] = v29;
      *&buf[20] = v19;
      sub_10025C1A0(a1 + 192, buf, 0);
      v35 = 0.0;
      if (sub_10025C2F8(a1, v10 | (LODWORD(v16) << 32), LODWORD(v18) | (LODWORD(v14) << 32), &v35))
      {
        v30 = v35;
        if (v35 > 128.0)
        {
          v30 = 128.0;
        }

        if (v30 < -128.0)
        {
          v30 = -128.0;
        }

        v36 = 1029;
        v37 = __PAIR64__(v28, vcvts_n_s32_f32(v30, 0x18uLL));
        v31 = *(a3 + 68);
        *v38 = v24;
        *&v38[4] = v31;
        *&v38[8] = v19;
        sub_10025C1A0(a1 + 192, &v36, 0);
      }
    }
  }
}

void sub_1001FB680(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 == 22 || *a2 == 5)
  {
    sub_1001FB254(a4, a2, a3);
  }
}

uint64_t sub_1001FB69C(uint64_t a1, double a2)
{
  v2 = *(a1 + 96);
  if (v2 == 1 && *(a1 + 44) >= 0.0)
  {
    return 1;
  }

  if (a2 >= 0.0 && v2 == 4)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FB6D0(uint64_t a1, uint64_t a2)
{
  sub_1001FB7B4(*a1, a2);
  v5 = *(a2 + 76);
  v6 = *(*a1 + 4);
  if (v6 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (v6 == 1);
  }

  v8 = *(a1 + 8);
  if (v8 != v7)
  {
    sub_1004E21FC(v4, v8, v7);
  }

  *(a1 + 8) = v7;
  return v5;
}

void *sub_1001FB750(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_1001FB7B4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 44);
  v3 = *(a2 + 44);
  if (v3 >= 0.0)
  {
    v4 = *(a2 + 52);
    if (v4 <= 0.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018A2910();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v2;
        v10 = 134217984;
        v11 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Latest speed is %lf but no information about speed uncertainty", &v10, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A2968(v2);
      }
    }

    else
    {
      v6 = *(a2 + 76);
      sub_10029627C(a1, v3 - v4, v6);
      if (sub_100292D00(a1) >= 4.16666667 && *a1 == 1)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          *(a1 + 8) = 1;
        }

        *(a1 + 16) = v6;
        *(a1 + 4) = 1;
      }
    }
  }
}

float *sub_1001FB900(float *result, float a2, float a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

double sub_1001FB908(uint64_t a1)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 40) = xmmword_101C75BF0;
  *(a1 + 56) = xmmword_101C75BF0;
  *(a1 + 72) = _Q0;
  *(a1 + 88) = _Q0;
  *(a1 + 104) = 0xBFF0000000000000;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 124) = 0;
  *(a1 + 120) = 0;
  return result;
}

void sub_1001FB9B8(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v4 = *a2;
  if (*a2)
  {
    v5 = 0;
    v6 = *a2;
    while (1)
    {
      v7 = v6;
      v8 = v6[1];
      if (v8)
      {
        if (*(v8 + 16) <= *(*a3 + 16))
        {
          break;
        }
      }

      v6 = *v7;
      v5 = v7;
      if (!*v7)
      {
        v9 = 1;
        do
        {
          v4 = *v4;
          ++v9;
        }

        while (v4);
        do
        {
          v3 = *v3;
          --v9;
        }

        while (v9 > 1);
        operator new();
      }
    }

    if (v5 && v5[1])
    {
      operator new();
    }
  }

  sub_1001FB944();
}

uint64_t *sub_1001FBADC(uint64_t a1, int *a2)
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

BOOL sub_1001FBBCC(uint64_t a1, double *a2)
{
  v4 = *(a1 + 2168);
  v5 = *(v4 + 560);
  v6 = *(v4 + 568);
  v63 = v5;
  v64 = v6;
  v7 = sub_10000B1F8();
  *buf = 1;
  v8 = sub_10001A6B0(v7, buf);
  if (sub_1001253BC(a1 + 2424, v8, 6.0) && v63 > 0.0 && (v64 - 1) <= 1)
  {
    v9 = sub_10000B1F8();
    *buf = 1;
    v63 = sub_10001A6B0(v9, buf);
    if (v64 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 2448);
      *buf = 134349568;
      v72 = v63;
      v73 = 1026;
      v74 = v10;
      v75 = 1026;
      v76 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,InertialOdometry derived zupt update,IO_dynamicsMode,%{public}d,CM_dynamicsMode,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v55 = *(a1 + 2448);
      v65 = 134349568;
      v66 = v63;
      v67 = 1026;
      v68 = v10;
      v69 = 1026;
      v70 = v55;
      v56 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v56);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    sub_100125538(a1 + 2424, v10, v63);
    v13 = *(a1 + 224);
    if (v13 != (a1 + 232))
    {
      do
      {
        *(v13 + 148) = v10;
        if (!sub_1000AE380((v13 + 29), &v63, 1.5))
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v14 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v15 = *(v13 + 220);
            *buf = 134349312;
            v72 = v63;
            v73 = 1026;
            v74 = v15;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,provider hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v19 = *(v13 + 220);
            v65 = 134349312;
            v66 = v63;
            v67 = 1026;
            v68 = v19;
            v20 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v20);
            if (v20 != buf)
            {
              free(v20);
            }
          }
        }

        v16 = v13[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v13[2];
            v18 = *v17 == v13;
            v13 = v17;
          }

          while (!v18);
        }

        v13 = v17;
      }

      while (v17 != (a1 + 232));
    }

    for (i = *(a1 + 248); i; i = *i)
    {
      *(i + 140) = v10;
      if (!sub_1000AE380((i + 25), &v63, 1.5))
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v48 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v49 = *(i + 212);
          *buf = 134349312;
          v72 = v63;
          v73 = 1026;
          v74 = v49;
          _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,fused hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v50 = *(i + 212);
          v65 = 134349312;
          v66 = v63;
          v67 = 1026;
          v68 = v50;
          v51 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v51);
          if (v51 != buf)
          {
            free(v51);
          }
        }
      }
    }

    if (*(a1 + 1104))
    {
      *(a1 + 808) = v10;
      if (!sub_1000AE380(a1 + 448, &v63, 1.5))
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v52 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v53 = *(a1 + 1096);
          *buf = 134349312;
          v72 = v63;
          v73 = 1026;
          v74 = v53;
          _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,latest selected fused hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v60 = *(a1 + 1096);
          v65 = 134349312;
          v66 = v63;
          v67 = 1026;
          v68 = v60;
          v61 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v61);
          if (v61 != buf)
          {
            free(v61);
          }
        }
      }
    }

    v22 = 0;
  }

  else
  {
    v21 = *(a1 + 224);
    if (v21 == (a1 + 232))
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        if ((sub_10002980C((v21 + 29), a2) & 1) == 0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v23 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v24 = *a2;
            v25 = *(a1 + 2448);
            v26 = *(v21 + 220);
            *buf = 134349568;
            v72 = v24;
            v73 = 1026;
            v74 = v25;
            v75 = 1026;
            v76 = v26;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,provider hypothesis prediction failed,%{public}d,hID,%{public}d", buf, 0x18u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v29 = *a2;
            v30 = *(a1 + 2448);
            v31 = *(v21 + 220);
            v65 = 134349568;
            v66 = v29;
            v67 = 1026;
            v68 = v30;
            v69 = 1026;
            v70 = v31;
            v32 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v32);
            if (v32 != buf)
            {
              free(v32);
            }
          }

          v22 = 1;
        }

        v27 = v21[1];
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
            v28 = v21[2];
            v18 = *v28 == v21;
            v21 = v28;
          }

          while (!v18);
        }

        v21 = v28;
      }

      while (v28 != (a1 + 232));
    }

    for (j = *(a1 + 248); j; j = *j)
    {
      if ((sub_10002980C((j + 25), a2) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v34 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v35 = *a2;
          v36 = *(a1 + 2448);
          v37 = *(j + 212);
          *buf = 134349568;
          v72 = v35;
          v73 = 1026;
          v74 = v36;
          v75 = 1026;
          v76 = v37;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,fused hypothesis prediction failed,%{public}d,hID,%{public}d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v38 = *a2;
          v39 = *(a1 + 2448);
          v40 = *(j + 212);
          v65 = 134349568;
          v66 = v38;
          v67 = 1026;
          v68 = v39;
          v69 = 1026;
          v70 = v40;
          v41 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v41);
          if (v41 != buf)
          {
            free(v41);
          }
        }

        v22 = 1;
      }
    }

    if (*(a1 + 1104))
    {
      v42 = *(a1 + 816);
      v43 = *a2 <= v42 ? v42 + 0.001 : *a2;
      v62 = v43;
      if ((sub_10002980C(a1 + 448, &v62) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v44 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a1 + 2448);
          v46 = *(a1 + 1096);
          *buf = 134349568;
          v72 = v62;
          v73 = 1026;
          v74 = v45;
          v75 = 1026;
          v76 = v46;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,latest selected fused hypothesis prediction failed,%{public}d,hID,%{public}d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v57 = *(a1 + 2448);
          v58 = *(a1 + 1096);
          v65 = 134349568;
          v66 = v62;
          v67 = 1026;
          v68 = v57;
          v69 = 1026;
          v70 = v58;
          v59 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypotheses(const CFTimeInterval &)", "%s\n", v59);
          if (v59 != buf)
          {
            free(v59);
          }
        }

        v22 = 1;
      }
    }
  }

  return (v22 & 1) == 0;
}

void sub_1001FC738(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1001FC760(uint64_t a1)
{
  if (*(a1 + 4) > 19 || *a1 > 4)
  {
    v2 = 0;
  }

  else if (*(a1 + 8) <= *(a1 + 44))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = 1;
  }

  if (*(a1 + 24) < 0.0 || (v3 = sub_10000B1F8(), v5 = 1, vabdd_f64(sub_10001A6B0(v3, &v5), *(a1 + 24)) > 5.0))
  {
    v2 = 0;
  }

  if (!off_1025D53B8)
  {
    operator new();
  }

  v4 = off_1025D53B8 + 1;
  if (*(off_1025D53B8 + 1))
  {
    if ((v2 & 1) == *off_1025D53B8)
    {
      return;
    }
  }

  else if ((v2 & 1) == 0)
  {
    return;
  }

  *(a1 + 32) = sub_1000081AC();
  *v4 = v2 & 1;
}

uint64_t sub_1001FC89C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *(a1 + 3568) = *(a2 + 16);
  *(a1 + 3552) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 3632) = *(a2 + 80);
  *(a1 + 3616) = v7;
  *(a1 + 3600) = v6;
  *(a1 + 3584) = v5;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 3692) = *(a2 + 140);
  *(a1 + 3680) = v10;
  *(a1 + 3664) = v9;
  *(a1 + 3648) = v8;
  v11 = *(a1 + 4336);
  if (v11)
  {
    sub_1001FC760(v11);
  }

  v33 = 0;
  if ((sub_1001DA234(a1 + 456, a2, &v33) & 1) == 0)
  {
    if ((v33 & 1) == 0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_101956098();
      }

      v19 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 3336);
        v21 = *(a2 + 96);
        v22 = *(a2 + 4);
        v23 = *(a2 + 12);
        v24 = *(a2 + 20);
        *buf = 67241217;
        v35 = v20;
        v36 = 1026;
        v37 = v21;
        v38 = 2053;
        v39 = v22;
        v40 = 2053;
        v41 = v23;
        v42 = 2050;
        v43 = v24;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#fusion,failed on locationUpdate,LCFusionExeState,%{public}d,type,%{public}d,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101956AF8();
      }

      v25 = *(a2 + 16);
      *(a1 + 3708) = *a2;
      *(a1 + 3724) = v25;
      v26 = *(a2 + 32);
      v27 = *(a2 + 48);
      v28 = *(a2 + 80);
      *(a1 + 3772) = *(a2 + 64);
      *(a1 + 3788) = v28;
      *(a1 + 3740) = v26;
      *(a1 + 3756) = v27;
      v29 = *(a2 + 96);
      v30 = *(a2 + 112);
      v31 = *(a2 + 128);
      *(a1 + 3848) = *(a2 + 140);
      *(a1 + 3820) = v30;
      *(a1 + 3836) = v31;
      *(a1 + 3804) = v29;
      return 1;
    }

    goto LABEL_8;
  }

  if (v33)
  {
LABEL_8:
    if (qword_1025D4770 != -1)
    {
      sub_101956098();
    }

    v12 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 2000);
      v14 = *(a2 + 96);
      v15 = *(a2 + 4);
      v16 = *(a2 + 12);
      v17 = *(a2 + 20);
      *buf = 67241217;
      v35 = v13;
      v36 = 1026;
      v37 = v14;
      v38 = 2053;
      v39 = v15;
      v40 = 2053;
      v41 = v16;
      v42 = 2050;
      v43 = v17;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#fusion,rejected location,reason,%{public}d,type,%{public}d,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f", buf, 0x2Cu);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_101956CD0();
    return 0;
  }

  if (sub_100212F7C(a1 + 456, a1 + 3708))
  {
    *(a1 + 3784) = *(a2 + 76);
    *(a1 + 3864) = *(a2 + 504);
    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_101956098();
  }

  v32 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "#Error,LC fusion fused the location but failed to get/yield the location", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101956BEC();
    return 0;
  }

  return result;
}

BOOL sub_1001FCBD4(uint64_t a1, uint64_t a2)
{
  result = sub_100072814(a1);
  if (result)
  {
    result = sub_100072814(a2);
    if (result)
    {
      v5 = *(a1 + 88);
      v6 = *(a2 + 88);
      v7 = *(a1 + 76);
      if (v5 >= 0.0 || v6 >= 0.0)
      {
        v7 = v5 + v7;
        v8 = v6 + *(a2 + 76);
      }

      else
      {
        v8 = *(a2 + 76);
      }

      v9 = v7 - v8;
      if (vabdd_f64(*(a1 + 4), *(a2 + 4)) < 2.22044605e-16 && vabdd_f64(*(a1 + 12), *(a2 + 12)) < 2.22044605e-16 && vabdd_f64(*(a1 + 20), *(a2 + 20)) < 2.22044605e-16 && vabdd_f64(*(a1 + 28), *(a2 + 28)) < 2.22044605e-16 && vabdd_f64(*(a1 + 36), *(a2 + 36)) < 2.22044605e-16 && vabdd_f64(*(a1 + 44), *(a2 + 44)) < 2.22044605e-16 && vabdd_f64(*(a1 + 60), *(a2 + 60)) < 2.22044605e-16 && vabdd_f64(*(a1 + 52), *(a2 + 52)) < 2.22044605e-16 && vabdd_f64(*(a1 + 68), *(a2 + 68)) < 2.22044605e-16 && *(a1 + 96) == *(a2 + 96) && *(a1 + 124) == *(a2 + 124) && *(a1 + 84) == *(a2 + 84))
      {
        result = 0;
        if (*(a1 + 128) == *(a2 + 128) && fabs(v9) < 2.22044605e-16)
        {
          v10 = *(a2 + 132);
          v11 = *(a1 + 132);
          return v11 == v10 || v11 == 0 || v10 == 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1001FCE40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32) >= 0.0)
  {
    v4 = CLMotionActivity::activityTypeToString();
    sub_10000EC00(v25, v4);
    v5 = CLMotionActivity::activityConfidenceToString();
    sub_10000EC00(v23, v5);
    std::to_string(&v22, *(a1 + 32));
    if ((v26 & 0x80u) == 0)
    {
      v6 = v26;
    }

    else
    {
      v6 = v25[1];
    }

    v7 = &v19;
    sub_100070148(&v19, v6 + 1);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v19.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if ((v26 & 0x80u) == 0)
      {
        v8 = v25;
      }

      else
      {
        v8 = v25[0];
      }

      memmove(v7, v8, v6);
    }

    *(&v7->__r_.__value_.__l.__data_ + v6) = 44;
    if ((v24 & 0x80u) == 0)
    {
      v9 = v23;
    }

    else
    {
      v9 = v23[0];
    }

    if ((v24 & 0x80u) == 0)
    {
      v10 = v24;
    }

    else
    {
      v10 = v23[1];
    }

    v11 = std::string::append(&v19, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v20, ",", 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v22;
    }

    else
    {
      v15 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v21, v15, size);
    v18 = *&v17->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v17->__r_.__value_.__l + 2);
    *a2 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  else
  {
    sub_10000EC00(a2, "NotSet");
  }
}

uint64_t *sub_1001FD038(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000432E8("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

BOOL sub_1001FD090(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5, double a6)
{
  v12 = *(a3 + 609);
  if ((v12 - 2) < 2)
  {
    if (*(a3 + 610) != 1 || *(a3 + 56) != 2)
    {
      goto LABEL_10;
    }

LABEL_9:
    v14 = (*(a3 + 88) - 8) < 0xFFFFFFFE;
    goto LABEL_11;
  }

  if (v12 == 1 && *(a3 + 56) == 2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = 0;
LABEL_11:
  *a4 = v14;
  v15 = *(a2 + 52);
  v17 = v15 > 0.0 && v15 < 1.0 && *(a2 + 44) < 4.46;
  if (*(a3 + 576) == 2)
  {
    v18 = *(a3 + 592);
    v19 = v18 <= 1.0;
    if (v18 < 0.8)
    {
      v19 = 0;
    }

    v20 = (*(a3 + 592) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v19;
  }

  else
  {
    v20 = 0;
  }

  *a5 = v20;
  v21 = sub_10002154C(a1);
  v22 = v21;
  v23 = 0;
  if (v17 && (*(a2 + 152) & 1) == 0 && (*(a3 + 512) & 1) == 0)
  {
    v23 = *a4;
    if (!*a4)
    {
      if (v21)
      {
        v23 = *(a1 + 3577) == 1 && *a5;
      }
    }
  }

  v24 = v23;
  if (qword_1025D4600 != -1)
  {
    sub_10023A174();
  }

  v25 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v26 = *a4;
    v27 = *a5;
    v28 = *(a3 + 56);
    v29 = *(a3 + 88);
    v30 = *(a3 + 92);
    v31 = *(a2 + 52);
    v32 = *(a2 + 44);
    v33 = *(a3 + 576);
    v34 = *(a3 + 592);
    v35 = *(a1 + 3577);
    v36 = *(a2 + 76);
    v37 = *(a2 + 4);
    v38 = *(a2 + 12);
    v39 = *(a2 + 60);
    v40 = *(a2 + 152);
    v41 = *(a3 + 512);
    *buf = 67244801;
    v46 = v24;
    v47 = 1026;
    v48 = v26;
    v49 = 1026;
    v50 = v27;
    v51 = 1026;
    v52 = v28;
    v53 = 1026;
    v54 = v29;
    v55 = 1026;
    v56 = v30;
    v57 = 2050;
    v58 = v31;
    v59 = 2050;
    v60 = v32;
    v61 = 1026;
    v62 = v22;
    v63 = 1026;
    v64 = v33;
    v65 = 2050;
    v66 = v34;
    v67 = 1026;
    v68 = v35;
    v69 = 1026;
    v70 = v17;
    v71 = 2050;
    v72 = v36;
    v73 = 2053;
    v74 = v37;
    v75 = 2053;
    v76 = v38;
    v77 = 2050;
    v78 = v39;
    v79 = 1026;
    v80 = v40;
    v81 = 1026;
    v82 = v41;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "BaroAlt,appropriatecheck,pass,%{public}d,mapMatched,%{public}d,CNOutdoor,%{public}d,matchQuality,%{public}d,matchFormOfWay,%{public}d,matchRoadClass,%{public}d,speedAccuracy,%{public}.3lf,speed,%{public}.3lf,CnOutdoorCalTriggerEnabled,%{public}d,CNPosContextState,%{public}d,CNPosContextProb,%{public}.3lf,isNotInAVisit,%{public}d,isSpeedSlow,%{public}d,cfAbsTime,%{public}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,fromSimulationController,%{public}d,isSimulatedOrSpoofed,%{public}d", buf, 0x90u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v44 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::isAppropriateToCalibrateBaro(const CFTimeInterval, const CLDaemonLocation &, const CLDaemonLocationPrivate &, BOOL &, BOOL &)", "%s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  *(a1 + 1352) = v24;
  *(a1 + 1353) = *a4;
  v42 = *a5;
  *(a1 + 1354) = v42;
  if (!*a4)
  {
    if (!v42)
    {
      goto LABEL_37;
    }

LABEL_41:
    ++*(a1 + 3612);
    ++*(a1 + 3644);
    ++*(a1 + 3676);
    if (!v24)
    {
      return v24;
    }

    goto LABEL_38;
  }

  ++*(a1 + 3608);
  ++*(a1 + 3640);
  ++*(a1 + 3672);
  if (v42)
  {
    goto LABEL_41;
  }

LABEL_37:
  if (v24)
  {
LABEL_38:
    ++*(a1 + 3616);
    ++*(a1 + 3648);
    ++*(a1 + 3680);
    *(a1 + 3704) = a6;
  }

  return v24;
}

unint64_t sub_1001FD5D4(double *a1)
{
  if (!(*(*a1 + 104))(a1))
  {
    return 0;
  }

  v2 = a1[4];
  v3 = vcvtad_u64_f64((a1[3] + 90.0) * 1000000.0);
  v4 = 0.0;
  if (v2 < 0.0)
  {
    v4 = 360.0;
  }

  return vcvtad_u64_f64((v2 + v4) * 1000000.0) | (v3 << 32);
}

uint64_t sub_1001FD668(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1A)
  {
    a2 = 1;
  }

  if (v2 < 0x34)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 26;
  }

  return v4 ^ 1u;
}

const char *sub_1001FD6E4(unsigned int a1)
{
  if (a1 <= 0xD)
  {
    return off_102493E10[a1];
  }

  else
  {
    return "<error>";
  }
}

uint64_t sub_1001FD708(uint64_t a1, double *a2, uint64_t *a3)
{
  sub_100029004(a1, a2);
  v6 = a3[1];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    v8 = v7;
    if (v7)
    {
      v9 = *a3;
      if (v9)
      {
        if (*(v9 + 40) > 0.0)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          *(a1 + 568) = v9;
          v10 = *(a1 + 576);
          *(a1 + 576) = v8;
          if (v10)
          {
            sub_100008080(v10);
          }

          v11 = *a2;
          *(a1 + 368) = *a2;
          *(a1 + 376) = *(v9 + 8);
          v12 = *(v9 + 56);
          if (v12 <= 0.0)
          {
            if (*(a1 + 352) == 1 && vabdd_f64(*(v9 + 16), *(a1 + 344)) > 10.0)
            {
              *(a1 + 352) = 0;
              *(a1 + 296) = 0;
              *(a1 + 304) = xmmword_101C75BF0;
              *(a1 + 320) = 0xBFF0000000000000;
              *(a1 + 328) = 0;
              *(a1 + 336) = 0;
              *(a1 + 344) = 0xBFF0000000000000;
            }
          }

          else
          {
            v13 = *(a1 + 360) - 1;
            v14 = 4.0;
            if (v13 <= 9)
            {
              v14 = dbl_101C89760[v13];
            }

            sub_100218578(a1 + 296, (a1 + 360), *(v9 + 16), *(v9 + 48), v12, 0.0, v14);
            *(a1 + 408) = *(v9 + 48);
            v11 = *(a1 + 368);
          }

          *(a1 + 8) = *(v9 + 24) * 0.0174532925;
          *(a1 + 16) = *(v9 + 32) * 0.0174532925;
          v20 = fmax(*(v9 + 40), 1.0);
          v21 = *a2 - v11;
          v22 = v21 < 0.0;
          if (v21 > 5.0)
          {
            v22 = 1;
          }

          v23 = *(v9 + 72);
          if (v23 < 0.0)
          {
            goto LABEL_29;
          }

          v24 = *(v9 + 80);
          if (v24 > 0.0)
          {
            v25 = *(v9 + 88);
            if (v25 >= 0.0)
            {
              v51 = *(v9 + 96);
              if (v51 > 0.0 && v51 < 360.0)
              {
                if (v24 >= 5.0)
                {
                  goto LABEL_63;
                }

                v52 = *(a1 + 360);
                if ((v52 - 1) >= 5 && v52 != 10)
                {
                  goto LABEL_63;
                }

                if (v23 >= 15.0)
                {
                  v53 = 7;
                }

                else
                {
                  if (v23 < 6.0)
                  {
LABEL_63:
                    *(a1 + 424) = v25;
                    *(a1 + 432) = v51;
                    *(a1 + 440) = *a2;
                    *(a1 + 176) = 0u;
                    *(a1 + 192) = 0u;
                    *(a1 + 208) = 0u;
                    *(a1 + 224) = 0u;
                    *(a1 + 240) = 0u;
                    *(a1 + 256) = 0u;
                    *(a1 + 272) = 0u;
                    v54 = v24 * v24 * 0.5;
                    v55 = v20 * v20 * 0.5;
                    *(a1 + 168) = v55;
                    *(a1 + 208) = v55;
                    *(a1 + 248) = v54;
                    *(a1 + 288) = v54;
                    v56 = *(v9 + 72);
                    v57 = __sincos_stret(*(v9 + 88) * 0.0174532925);
                    *(a1 + 24) = v56 * v57.__cosval;
                    *(a1 + 32) = v57.__sinval * *(v9 + 72);
                    *(a1 + 416) = *(v9 + 72);
                    goto LABEL_32;
                  }

                  v53 = 6;
                }

                *(a1 + 360) = v53;
                goto LABEL_63;
              }
            }
          }

          if (v24 <= 0.0 || v22 || (v42 = *(a1 + 432), v42 <= 0.0) || v42 >= 90.0)
          {
LABEL_29:
            v26 = *(a1 + 360) - 1;
            v27 = 20.0;
            if (v26 <= 9)
            {
              v27 = dbl_101C89520[v26];
            }

            *(a1 + 256) = 0u;
            *(a1 + 272) = 0u;
            *(a1 + 224) = 0u;
            *(a1 + 240) = 0u;
            *(a1 + 192) = 0u;
            *(a1 + 208) = 0u;
            *(a1 + 176) = 0u;
            v28 = v27 * v27 * 0.5;
            v29 = v20 * v20 * 0.5;
            *(a1 + 168) = v29;
            *(a1 + 208) = v29;
            *(a1 + 248) = v28;
            *(a1 + 288) = v28;
            *(a1 + 416) = 0;
            *(a1 + 24) = 0;
            *(a1 + 32) = 0;
          }

          else
          {
            v43 = hypot(*(a1 + 24), *(a1 + 32));
            v44 = *(a1 + 248) + *(a1 + 288);
            v45 = fmax(v21, 1.0);
            v46 = sqrt(v45 * v45 * v44);
            v47 = v44 > 0.0;
            if (v43 <= 0.0)
            {
              v47 = 0;
            }

            if (v47 && v46 < v24)
            {
              v24 = v46;
              v23 = v43;
            }

            v48 = __sincos_stret(*(a1 + 424) * 0.0174532925);
            *(a1 + 24) = v48.__cosval * v23;
            *(a1 + 32) = v48.__sinval * v23;
            *(a1 + 416) = v23;
            *(a1 + 176) = 0u;
            *(a1 + 192) = 0u;
            *(a1 + 208) = 0u;
            *(a1 + 224) = 0u;
            *(a1 + 240) = 0u;
            *(a1 + 256) = 0u;
            *(a1 + 272) = 0u;
            v49 = v24 * v24 * 0.5;
            v50 = v20 * v20 * 0.5;
            *(a1 + 168) = v50;
            *(a1 + 208) = v50;
            *(a1 + 248) = v49;
            *(a1 + 288) = v49;
          }

LABEL_32:
          v61 = 0;
          v62 = 0;
          v18 = sub_100208760((a1 + 512), &v62, &v61, *(v9 + 24), *(a1 + 408));
          if (v18)
          {
            v30 = v62;
            *(a1 + 448) = v61;
            *(a1 + 456) = 1;
            *(a1 + 464) = v30;
            *(a1 + 472) = 1;
            *(a1 + 584) = *(a1 + 168) + *(a1 + 208);
            *a1 = 1;
            *(a1 + 592) = 0;
            *(a1 + 392) = 0;
            *(a1 + 400) = 0;
            *(a1 + 384) = 0;
            if (qword_1025D4770 != -1)
            {
              sub_101912E6C();
            }

            v31 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v32 = *(a1 + 596);
              v33 = *a2;
              *buf = 67240448;
              v68 = v32;
              v69 = 2050;
              v70 = v33;
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,filter reinitialized", buf, 0x12u);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_18;
            }

            sub_101912E28(buf);
            v34 = *(a1 + 596);
            v35 = *a2;
            v63 = 67240448;
            v64 = v34;
            v65 = 2050;
            v66 = v35;
            v36 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::reinitialize(const CFTimeInterval &, const std::weak_ptr<const LCFusionProviderLocation>)", "%s\n", v36);
          }

          else
          {
            if (qword_1025D4770 != -1)
            {
              sub_101912E6C();
            }

            v37 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
            {
              v38 = *(a1 + 596);
              v39 = *a2;
              *buf = 67240448;
              v68 = v38;
              v69 = 2050;
              v70 = v39;
              _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,reinitialize filter calc_dNdE failed", buf, 0x12u);
            }

            if (!sub_10000A100(121, 0))
            {
              goto LABEL_18;
            }

            sub_101912E28(buf);
            v40 = *(a1 + 596);
            v41 = *a2;
            v63 = 67240448;
            v64 = v40;
            v65 = 2050;
            v66 = v41;
            v36 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::reinitialize(const CFTimeInterval &, const std::weak_ptr<const LCFusionProviderLocation>)", "%s\n", v36);
          }

          if (v36 != buf)
          {
            free(v36);
          }

LABEL_18:
          sub_100008080(v8);
          return v18;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v15 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 596);
    v17 = *a2;
    *buf = 67240448;
    v68 = v16;
    v69 = 2050;
    v70 = v17;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,reinitialize filter failed,null or hunc <= 0", buf, 0x12u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101912E28(buf);
    v58 = *(a1 + 596);
    v59 = *a2;
    v63 = 67240448;
    v64 = v58;
    v65 = 2050;
    v66 = v59;
    v60 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::reinitialize(const CFTimeInterval &, const std::weak_ptr<const LCFusionProviderLocation>)", "%s\n", v60);
    if (v60 != buf)
    {
      free(v60);
    }
  }

  v18 = 0;
  result = 0;
  if (v8)
  {
    goto LABEL_18;
  }

  return result;
}

void sub_1001FDF14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1001FDF20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    return 1;
  }

  if (!*(a1 + 1104))
  {
    return 1;
  }

  v4 = *(a1 + 312);
  if (!v4 || *(*(*(a1 + 280) + 8 * ((v4 + *(a1 + 304) - 1) / 0x1AuLL)) + 152 * ((v4 + *(a1 + 304) - 1) % 0x1AuLL) + 148) != 1)
  {
    return 1;
  }

  v6 = 0;
  do
  {
    ++v6;
    v2 = *v2;
  }

  while (v2);
  if (v6 != 1)
  {
    sub_1000291EC(a1 + 256, (a2 + 16));
    if (*(a1 + 1152) != 1)
    {
      if (sub_10025BC08(a1) || *(a2 + 124) == 1 && (v121 = *(a1 + 312) + *(a1 + 304) - 1, v122 = *(*(a1 + 280) + 8 * (v121 / 0x1A)) + 152 * (v121 % 0x1A), (*(v122 + 140) - 6) <= 2) && (*(v122 + 56) > 50.0 || sub_100681564(a1 + 2424, *(a2 + 16), 6.0)))
      {
        v102 = *(a1 + 248);
        if (v102)
        {
          v103 = 0;
          do
          {
            v104 = *(v102 + 214);
            if (v104)
            {
              v105 = v102[8];
              if (v105)
              {
                if (v104 == 1 && (*(*(v102[4] + 8 * ((v105 + v102[7] - 1) / 0x1AuLL)) + 152 * ((v105 + v102[7] - 1) % 0x1AuLL) + 148) & 1) != 0)
                {
                  sub_1000291EC((v102 + 1), (a2 + 16));
                  if (*(v102 + 226) == 1)
                  {
                    v103 = v102;
                  }
                }
              }
            }

            v102 = *v102;
          }

          while (v102);
          if (v103)
          {
            v106 = *(a1 + 248);
            if (v106)
            {
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v108 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              do
              {
                if (*(v106 + 212) != *(v103 + 212))
                {
                  if (p_info[238] != -1)
                  {
                    sub_100224830();
                  }

                  v109 = v108[239];
                  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
                  {
                    v110 = *(v106 + 212);
                    v111 = *(v103 + 212);
                    v112 = sub_10025BC08(a1);
                    v113 = sub_1001253BC(a1 + 2424, *(a2 + 16), -1.0);
                    sub_1001FCE40(a1 + 2424, &v183);
                    v114 = &v183;
                    if (v184[15] < 0)
                    {
                      v114 = v183;
                    }

                    *buf = 67241218;
                    LODWORD(v192) = v110;
                    WORD2(v192) = 1026;
                    *(&v192 + 6) = v111;
                    WORD5(v192) = 1026;
                    HIDWORD(v192) = v112;
                    *v193 = 1026;
                    *&v193[2] = v113;
                    *&v193[6] = 2082;
                    *&v193[8] = v114;
                    _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_DEBUG, "#selection,Rejecting hypothesis,hID,%{public}d,in favor of,hID,%{public}d,goodGNSSQuality,%{public}d,isStationary,%{public}d,MotionActivity,%{public}s", buf, 0x24u);
                    if ((v184[15] & 0x80000000) != 0)
                    {
                      operator delete(v183);
                    }

                    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
                    v108 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    bzero(buf, 0x65CuLL);
                    if (p_info[238] != -1)
                    {
                      sub_100224830();
                    }

                    v115 = *(v106 + 212);
                    v116 = *(v103 + 212);
                    v117 = sub_10025BC08(a1);
                    v118 = sub_1001253BC(a1 + 2424, *(a2 + 16), -1.0);
                    sub_1001FCE40(a1 + 2424, &__p);
                    p_p = &__p;
                    if (v177[15] < 0)
                    {
                      p_p = __p;
                    }

                    LODWORD(v183) = 67241218;
                    HIDWORD(v183) = v115;
                    *v184 = 1026;
                    *&v184[2] = v116;
                    *&v184[6] = 1026;
                    *&v184[8] = v117;
                    *&v184[12] = 1026;
                    *&v184[14] = v118;
                    *&v184[18] = 2082;
                    *&v184[20] = p_p;
                    v120 = _os_log_send_and_compose_impl();
                    if ((v177[15] & 0x80000000) != 0)
                    {
                      operator delete(__p);
                    }

                    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v120);
                    if (v120 != buf)
                    {
                      free(v120);
                    }

                    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
                    v108 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
                  }

                  *(v106 + 214) = 4;
                }

                v106 = *v106;
              }

              while (v106);
            }

            return 1;
          }
        }
      }
    }
  }

  v7 = *(a1 + 312) + *(a1 + 304) - 1;
  v8 = *(*(a1 + 280) + 8 * (v7 / 0x1A));
  v183 = off_1024DE5F8;
  v9 = v8 + 152 * (v7 % 0x1A);
  v10 = *(v9 + 88);
  v11 = *(v9 + 104);
  v12 = *(v9 + 120);
  v190 = *(v9 + 136);
  v189 = v12;
  v188 = v11;
  v187 = v10;
  v13 = *(v9 + 24);
  v14 = *(v9 + 40);
  v15 = *(v9 + 56);
  v186 = *(v9 + 72);
  v185 = v15;
  *&v184[16] = v14;
  *v184 = v13;
  sub_1000291EC(a1 + 256, (a2 + 16));
  if ((*(a1 + 1152) - 6) <= 2 && (*(a2 + 124) - 6) <= 2)
  {
    v16 = sub_100109D18((a1 + 2384), *(a2 + 24), *(a2 + 32), *&v184[16], *&v184[24], *(&v185 + 1));
    v17 = (*&v185 * *&v185 + *(a2 + 40) * *(a2 + 40)) * 0.5;
    if (v17 < 2500000000.0)
    {
      v17 = 2500000000.0;
    }

    v18 = v16 * v16 / v17;
    if (v18 > 36.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v123 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v124 = *(a1 + 1096);
        *buf = 67240448;
        LODWORD(v192) = v124;
        WORD2(v192) = 2050;
        *(&v192 + 6) = v18;
        _os_log_impl(dword_100000000, v123, OS_LOG_TYPE_DEBUG, "#selection,Rejecting last yielded/selected hypothesis,hID,%{public}d,in favor of new location/hypothesis,ratio,%{public}.1f", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v142 = *(a1 + 1096);
        LODWORD(__p) = 67240448;
        HIDWORD(__p) = v142;
        *v177 = 2050;
        *&v177[2] = v18;
        v143 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v143);
        if (v143 != buf)
        {
          free(v143);
        }
      }

      v125 = *(a1 + 248);
      if (v125)
      {
        v126 = *(a1 + 1096);
        do
        {
          if (*(v125 + 212) == v126)
          {
            *(v125 + 214) = 4;
          }

          v125 = *v125;
        }

        while (v125);
      }

      goto LABEL_218;
    }
  }

  sub_1000291EC(a1 + 256, &v184[8]);
  if (v6 != 1 || (v31 = *(a1 + 248), *(v31 + 856) == 2) && (v32 = *(v31 + 64)) != 0 && *(*(*(v31 + 32) + 8 * ((v32 + *(v31 + 56) - 1) / 0x1AuLL)) + 152 * ((v32 + *(v31 + 56) - 1) % 0x1AuLL) + 148) == 1)
  {
    if ((*(a2 + 124) - 6) <= 2 && (*(a1 + 1152) - 6) <= 2 && sub_100125424(a1 + 2424, *(a2 + 16), 6.0))
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v19 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 1096);
        v21 = *(a1 + 2288);
        v22 = *(a2 + 40);
        v23 = *&v185;
        sub_1001FCE40(a1 + 2424, &__p);
        v24 = v177[15] >= 0 ? &__p : __p;
        *buf = 67241474;
        LODWORD(v192) = v20;
        WORD2(v192) = 2048;
        *(&v192 + 6) = v21;
        HIWORD(v192) = 2048;
        *v193 = v6;
        *&v193[8] = 2050;
        *&v193[10] = v22;
        *&v193[18] = 2050;
        v194 = v23;
        *v195 = 2082;
        *&v195[2] = v24;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#selection,Cell-only locations skipped outlier-detection,LastYielded_hID,%{public}d,#uniqueCell,%zu,#Hypotheses,%ld,newLocHunc,%{public}.2f,lastYieldHunc,%{public}.2f,LatestMotionActivity,%{public}s", buf, 0x3Au);
        if ((v177[15] & 0x80000000) != 0)
        {
          operator delete(__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v25 = *(a1 + 1096);
        v26 = *(a1 + 2288);
        v27 = *(a2 + 40);
        v28 = v185;
        sub_1001FCE40(a1 + 2424, v157);
        if ((SBYTE3(v159) & 0x80u) == 0)
        {
          v29 = v157;
        }

        else
        {
          v29 = *v157;
        }

        LODWORD(__p) = 67241474;
        HIDWORD(__p) = v25;
        *v177 = 2048;
        *&v177[2] = v26;
        *&v177[10] = 2048;
        *&v177[12] = v6;
        *&v177[20] = 2050;
        *&v177[22] = v27;
        *&v177[30] = 2050;
        *v178 = v28;
        *&v178[8] = 2082;
        *&v178[10] = v29;
        v30 = _os_log_send_and_compose_impl();
        if (SBYTE3(v159) < 0)
        {
          operator delete(*v157);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      return 1;
    }
  }

  sub_1000291EC(a1 + 256, &v184[8]);
  if (v6 == 1 || *(a2 + 124) != 4)
  {
    if (v6 == 1)
    {
LABEL_72:
      v44 = *(a1 + 248);
      if (!v44)
      {
        return 1;
      }

      v45 = *(a1 + 256);
      while (1)
      {
        if (*(v44 + 214))
        {
          v46 = v44[8];
          if (v46)
          {
            v47 = v46 + v44[7] - 1;
            v48 = *(v44[4] + 8 * (v47 / 0x1A));
            v49 = v47 % 0x1A;
            if (*(v48 + 152 * v49 + 148) == 1)
            {
              break;
            }
          }
        }

LABEL_154:
        v44 = *v44;
        if (!v44)
        {
          return 1;
        }
      }

      __p = off_1024DE5F8;
      v50 = v48 + 152 * v49;
      v51 = *(v50 + 24);
      v52 = *(v50 + 40);
      v53 = *(v50 + 56);
      *&v178[16] = *(v50 + 72);
      *v178 = v53;
      *&v177[16] = v52;
      v54 = *(v50 + 88);
      v55 = *(v50 + 104);
      v56 = *(v50 + 120);
      v182 = *(v50 + 136);
      v181 = v56;
      v180 = v55;
      v179 = v54;
      *v177 = v51;
      v57 = sub_100109D18((a1 + 2384), *&v177[16], *&v177[24], *&v184[16], *&v184[24], *(&v185 + 1));
      v58 = *&v177[8] - v45;
      if (*&v177[8] - v45 >= -1.0)
      {
        if (v58 > 900.0)
        {
          goto LABEL_102;
        }
      }

      else if (v58 > 900.0 || *(a1 + 1096) == *(v44 + 212))
      {
LABEL_102:
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v75 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v76 = *(v44 + 212);
          *buf = 67240704;
          LODWORD(v192) = v76;
          WORD2(v192) = 2050;
          *(&v192 + 6) = v58;
          HIWORD(v192) = 2050;
          *v193 = v57;
          _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEBUG, "#selection,skipped outlier detection hID,%{public}d,dt,%{public}.3f,euclideanDistance_m,%{public}.3f", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v77 = *(v44 + 212);
          *v157 = 67240704;
          *&v157[4] = v77;
          *&v157[8] = 2050;
          *&v157[10] = v58;
          v158 = 2050;
          v159 = v57;
          v78 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v78);
          if (v78 != buf)
          {
            free(v78);
          }
        }

        goto LABEL_154;
      }

      if (v58 < 2.22044605e-16)
      {
        v59 = *(a2 + 16);
        v60 = v59 <= v45;
        v61 = v59 - v45;
        if (!v60)
        {
          v58 = v61;
        }
      }

      v62 = fabs(v58);
      v63 = fmax(v62 - *(a1 + 2832), 0.0);
      v64 = v63 * 50.0;
      v65 = fmax(*&v185 + v63 * 50.0, 1.0);
      v66 = v57 / v65;
      v67 = 1.0;
      if (v57 / v65 <= 1.0)
      {
        if (*(a1 + 2176))
        {
          if (!sub_100125258(a1 + 2424, *&v177[8], 6.0))
          {
            v68 = *(a1 + 2448);
            if ((v68 - 1) < 5 || v68 == 10) && v62 > 6.0 && (*(a1 + 2800))
            {
              sub_100251B28(*(a1 + 2176), &v153);
              if (v153 > 0.0 && v155 > 0.0 && (v153 >= 0.0 && (v153 > *&v177[8] || *&v177[8] - v153 <= 6.0) || sub_1001253BC(a1 + 2424, *&v177[8], 6.0)))
              {
                v69 = v154;
                v70 = *&v185;
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v64 = fmax(v69 * 3.0, 25.0);
                v65 = fmax(v70 + v64, 1.0);
                v66 = v57 / v65;
                v71 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  v72 = *(v44 + 212);
                  *buf = 67111424;
                  LODWORD(v192) = v72;
                  WORD2(v192) = 2050;
                  *(&v192 + 6) = v57 / v65;
                  HIWORD(v192) = 2050;
                  *v193 = v62;
                  *&v193[8] = 2050;
                  *&v193[10] = v63;
                  *&v193[18] = 2050;
                  v194 = v64;
                  *v195 = 2050;
                  *&v195[2] = v65;
                  v196 = 2050;
                  v197 = v57;
                  v198 = 2050;
                  v199 = v154;
                  v200 = 2050;
                  v201 = v155;
                  v202 = 2050;
                  v203 = v156;
                  _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "#selection,IO-based distance moved xCheck,hID,%d,ndis,%{public}.3f,dt,%{public}.3f,dtNonStatic,%{public}.3f,worstCaseDistanceTravelled_m,%{public}.3f,upperBoundHypoHunc1Sigma_m,%{public}.3f,interHypoEuclideanDistance_m,%{public}.3f,IO_DistanceMoved_m,%{public}.1f,DistanceMovedInterval_s,%{public}.2f,IO_num_samples,%{public}zu", buf, 0x62u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_119;
                }

                sub_101A7B5F4(buf);
                v73 = *(v44 + 212);
                *v157 = 67111424;
                *&v157[4] = v73;
                *&v157[8] = 2050;
                *&v157[10] = v57 / v65;
                v158 = 2050;
                v159 = v62;
                v160 = 2050;
                v161 = v63;
                v162 = 2050;
                v163 = v64;
                v164 = 2050;
                v165 = v65;
                v166 = 2050;
                v167 = v57;
                v168 = 2050;
                v169 = v154;
                v170 = 2050;
                v171 = v155;
                v172 = 2050;
                v173 = v156;
                v74 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v74);
              }

              else
              {
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v79 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  v80 = *(v44 + 212);
                  *buf = 67241472;
                  LODWORD(v192) = v80;
                  WORD2(v192) = 2050;
                  *(&v192 + 6) = *&v177[8];
                  HIWORD(v192) = 2050;
                  *v193 = v153;
                  *&v193[8] = 2050;
                  *&v193[10] = v154;
                  *&v193[18] = 2050;
                  v194 = v155;
                  *v195 = 2050;
                  *&v195[2] = v156;
                  _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_DEBUG, "#selection,IO data invalid or timed out,hID,%{public}d,hypo_mct,%{public}.3f,IO_mct,%{public}.3f,IO_DistanceMoved_m,%{public}.1f,DistanceMovedInterval_s,%{public}.2f,IO_num_samples,%{public}zu", buf, 0x3Au);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_119;
                }

                sub_101A7B5F4(buf);
                v81 = *(v44 + 212);
                *v157 = 67241472;
                *&v157[4] = v81;
                *&v157[8] = 2050;
                *&v157[10] = *&v177[8];
                v158 = 2050;
                v159 = v153;
                v160 = 2050;
                v161 = v154;
                v162 = 2050;
                v163 = v155;
                v164 = 2050;
                v165 = v156;
                v74 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v74);
              }

              if (v74 != buf)
              {
                free(v74);
              }
            }
          }
        }
      }

LABEL_119:
      if ((*(a1 + 2800) & 1) == 0)
      {
        v82 = *(a1 + 2448);
        if ((v82 - 3) < 8 || !v82)
        {
          if (sub_100125258(a1 + 2424, *&v177[8], 6.0) || (sub_1001252CC(a1 + 2424, *&v177[8], 6.0) & 1) != 0 || (v83 = *(a1 + 2448) - 1, v83 >= 0xA) || ((0x21Fu >> v83) & 1) == 0)
          {
            if (sub_100215A40((v44 + 1), *(a1 + 200)) < 30.0)
            {
              v67 = 3.0;
            }
          }
        }
      }

      v84 = v44[8] + v44[7] - 1;
      if (*(*(v44[4] + 8 * (v84 / 0x1A)) + 152 * (v84 % 0x1A) + 136) == 1)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v85 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&v192 = 0x4008000000000000;
          _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEBUG, "#selection Inflating gate for associated AP to %{public}.1f", buf, 0xCu);
        }

        v67 = 3.0;
        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          *v157 = 134349056;
          *&v157[4] = 0x4008000000000000;
          v99 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v99);
          if (v99 != buf)
          {
            free(v99);
          }
        }
      }

      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v86 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v87 = *(v44 + 212);
        v88 = *(v44 + 98);
        *buf = 67111680;
        LODWORD(v192) = v87;
        WORD2(v192) = 2050;
        *(&v192 + 6) = v66;
        HIWORD(v192) = 2050;
        *v193 = v67;
        *&v193[8] = 2050;
        *&v193[10] = v62;
        v89 = sqrt(v88);
        *&v193[18] = 2050;
        v194 = v63;
        *v195 = 2050;
        *&v195[2] = v64;
        v196 = 2050;
        v60 = v88 <= 0.0;
        v90 = -1.0;
        if (!v60)
        {
          v90 = v89;
        }

        v197 = v65;
        v198 = 2050;
        v199 = v57;
        v200 = 2050;
        v201 = *&v185;
        v202 = 2050;
        v203 = *v178;
        v204 = 2050;
        v205 = v90;
        _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEBUG, "#selection,hypothesis consistency check,hID,%d,ndis,%{public}.3f,gating,%{public}.1f,dt,%{public}.3f,dtNonStatic,%{public}.3f,worstCaseDistanceTravelled_m,%{public}.3f,upperBoundHypoHunc1Sigma_m,%{public}.3f,interHypoEuclideanDistance_m,%{public}.3f,selectedFusedStateHunc,%{public}.3f,hypothsisFusedStateHunc,%{public}.3f,hypothsisFilterHunc,%{public}.3f", buf, 0x6Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v94 = *(v44 + 212);
        v95 = *(v44 + 98);
        *v157 = 67111680;
        *&v157[4] = v94;
        *&v157[8] = 2050;
        *&v157[10] = v66;
        v158 = 2050;
        v159 = v67;
        v160 = 2050;
        v161 = v62;
        v96 = sqrt(v95);
        v162 = 2050;
        v163 = v63;
        v164 = 2050;
        v165 = v64;
        v60 = v95 <= 0.0;
        v97 = -1.0;
        if (!v60)
        {
          v97 = v96;
        }

        v166 = 2050;
        v167 = v65;
        v168 = 2050;
        v169 = v57;
        v170 = 2050;
        v171 = *&v185;
        v172 = 2050;
        v173 = *v178;
        v174 = 2050;
        v175 = v97;
        v98 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v98);
        if (v98 != buf)
        {
          free(v98);
        }
      }

      if (v66 <= v67)
      {
        if (*(v44 + 214) == 4)
        {
          *(v44 + 214) = 1;
        }

        if (sub_100215A40((v44 + 1), *(a1 + 200)) <= 30.0)
        {
          v93 = *(a2 + 16);
          if (v93 > *(v44 + 1))
          {
            *(v44 + 1) = v93;
            v44[2] = *(a2 + 8);
          }
        }

        else if (*(v44 + 212) != *(a1 + 1096))
        {
          *(v44 + 214) = 0;
        }
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v91 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v92 = *(v44 + 212);
          *buf = 67240704;
          LODWORD(v192) = v92;
          WORD2(v192) = 2050;
          *(&v192 + 6) = v66;
          HIWORD(v192) = 2050;
          *v193 = v67;
          _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_DEBUG, "#selection,Rejecting inconsistence hypothesis,hID,%{public}d,ndis,%{public}.3f,gating,%{public}.1f", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v100 = *(v44 + 212);
          *v157 = 67240704;
          *&v157[4] = v100;
          *&v157[8] = 2050;
          *&v157[10] = v66;
          v158 = 2050;
          v159 = v67;
          v101 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v101);
          if (v101 != buf)
          {
            free(v101);
          }
        }

        *(v44 + 214) = 4;
      }

      goto LABEL_154;
    }
  }

  else if ((*(a1 + 1152) - 6) <= 2)
  {
    v33 = *(a2 + 116);
    v34 = sub_100109D18((a1 + 2384), *(a2 + 24), *(a2 + 32), *&v184[16], *&v184[24], *(a1 + 2248));
    v35 = *(a2 + 40);
    if (v35 < 1.0)
    {
      v35 = 1.0;
    }

    v36 = v34 / v35;
    if ((!sub_100028030(a1 + 320) || !sub_1011696A0(a1 + 256, &v183, 2.29575, -1.0)) && v33 >= 0x45 && v36 > 3.0 && *&v185 > *(a2 + 40) && v34 < 10000.0)
    {
      for (i = *(a1 + 248); i; i = *i)
      {
        if (*(i + 212) == *(a1 + 1096) && *(i + 214) != 2)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v38 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v39 = *(a1 + 1096);
            v40 = *(a2 + 40);
            *buf = 67241216;
            LODWORD(v192) = v39;
            WORD2(v192) = 2050;
            *(&v192 + 6) = v40;
            HIWORD(v192) = 2050;
            *v193 = v185;
            *&v193[8] = 2050;
            *&v193[10] = v34;
            *&v193[18] = 2050;
            v194 = v36;
            _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "#selection,Rejecting last yielded cell-based hypothesis,hID,%{public}d,in favor of new med/high confidence WiFi fix with hunc,%{public}.2f,lastYieldHunc,%{public}.2f,distance,%{public}.2f,testRatio,%{public}.1f", buf, 0x30u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v41 = *(a1 + 1096);
            v42 = *(a2 + 40);
            LODWORD(__p) = 67241216;
            HIDWORD(__p) = v41;
            *v177 = 2050;
            *&v177[2] = v42;
            *&v177[10] = 2050;
            *&v177[12] = v185;
            *&v177[20] = 2050;
            *&v177[22] = v34;
            *&v177[30] = 2050;
            *v178 = v36;
            v43 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v43);
            if (v43 != buf)
            {
              free(v43);
            }
          }

          *(i + 214) = 4;
        }
      }

LABEL_218:
      bzero(buf, 0x388uLL);
      sub_100856684(buf);
      sub_100D6B33C(a1 + 256, buf);
      sub_1008572E0(buf);
      return 1;
    }
  }

  sub_1000291EC(a1 + 256, (a2 + 16));
  if (*(a1 + 1152) == 1 || (v190 & 1) != 0 || !sub_10025BD44(a1 + 2296) || !sub_1001253BC(a1 + 2424, *(a2 + 16), -1.0) || *(a2 + 124) != 1 || *(a2 + 72) > 1.0 || *(a2 + 40) > 25.0)
  {
    goto LABEL_72;
  }

  v128 = *(a1 + 248);
  if (!v128)
  {
    return 1;
  }

  v129 = 0;
  v130 = 0;
  do
  {
    v131 = *(v128 + 214);
    if (v131)
    {
      v132 = v128[8];
      if (v132)
      {
        if (v131 == 1 && (*(*(v128[4] + 8 * ((v132 + v128[7] - 1) / 0x1AuLL)) + 152 * ((v132 + v128[7] - 1) % 0x1AuLL) + 148) & 1) != 0)
        {
          sub_1000291EC((v128 + 1), (a2 + 16));
          if (*(v128 + 226) == 1)
          {
            v130 = v128;
            ++v129;
          }
        }
      }
    }

    v128 = *v128;
  }

  while (v128);
  if (v129 != 1 || !v130)
  {
    goto LABEL_72;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v133 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v152 = *(v130 + 212);
    sub_1000291EC(a1 + 256, (a2 + 16));
    v134 = *(a1 + 1152);
    v135 = sub_10025BD44(a1 + 2296);
    v136 = *(a2 + 40);
    v137 = *(a2 + 72);
    v138 = sub_1001253BC(a1 + 2424, *(a2 + 16), -1.0);
    sub_1001FCE40(a1 + 2424, &__p);
    v139 = &__p;
    if (v177[15] < 0)
    {
      v139 = __p;
    }

    *buf = 67241730;
    LODWORD(v192) = v152;
    WORD2(v192) = 1026;
    *(&v192 + 6) = v134;
    WORD5(v192) = 1026;
    HIDWORD(v192) = v135;
    *v193 = 2050;
    *&v193[2] = v136;
    *&v193[10] = 2050;
    *&v193[12] = v137;
    LOWORD(v194) = 1026;
    *(&v194 + 2) = v138;
    HIWORD(v194) = 2082;
    *v195 = v139;
    _os_log_impl(dword_100000000, v133, OS_LOG_TYPE_DEBUG, "#selection,Rejecting hypotheses in favor of gps based hypothesis,hID,%{public}d,lastYieldProminentProviderType,%{public}d,goodGNSSQuality,%{public}d,gpsHunc,%{public}.1f,gpsSpeed_mps,%{public}.2f,isStationary,%{public}d,MotionActivity,%{public}s", buf, 0x38u);
    if ((v177[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v144 = *(v130 + 212);
    sub_1000291EC(a1 + 256, (a2 + 16));
    v145 = *(a1 + 1152);
    v146 = sub_10025BD44(a1 + 2296);
    v147 = *(a2 + 40);
    v148 = *(a2 + 72);
    v149 = sub_1001253BC(a1 + 2424, *(a2 + 16), -1.0);
    sub_1001FCE40(a1 + 2424, v157);
    if ((SBYTE3(v159) & 0x80u) == 0)
    {
      v150 = v157;
    }

    else
    {
      v150 = *v157;
    }

    LODWORD(__p) = 67241730;
    HIDWORD(__p) = v144;
    *v177 = 1026;
    *&v177[2] = v145;
    *&v177[6] = 1026;
    *&v177[8] = v146;
    *&v177[12] = 2050;
    *&v177[14] = v147;
    *&v177[22] = 2050;
    *&v177[24] = v148;
    *v178 = 1026;
    *&v178[2] = v149;
    *&v178[6] = 2082;
    *&v178[8] = v150;
    v151 = _os_log_send_and_compose_impl();
    if (SBYTE3(v159) < 0)
    {
      operator delete(*v157);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::detectOutlierHypotheses(const LCFusionProviderLocation &)", "%s\n", v151);
    if (v151 != buf)
    {
      free(v151);
    }
  }

  v140 = *(a1 + 248);
  if (v140)
  {
    v141 = *(v130 + 212);
    do
    {
      if (*(v140 + 212) != v141)
      {
        *(v140 + 214) = 4;
      }

      v140 = *v140;
    }

    while (v140);
  }

  return 1;
}

void sub_1001FFB90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1001FFBB0(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void sub_1001FFC84(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452590;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001FFCD8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024521D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1001FFD2C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v238 = v5;
  if (!sub_1001F56C8(v3, *(v1 + 96)))
  {
    v13 = 0;
    return v13 & 1;
  }

  v237 = 0;
  sub_100022008(v215, v2);
  v237 = sub_1001F57C8(v4, v215);
  if (v237 & 1 | ((*(v4 + 296) & 1) == 0))
  {
    v214 = *&v215[4];
    (*(**(v4 + 280) + 232))(*(v4 + 280), v215, &v221);
    if ((*(**(v4 + 280) + 416))(*(v4 + 280), v215))
    {
      sub_100022008(v187, v2);
      v190 = v221;
      v191 = v222;
      (*(**(v4 + 280) + 440))(*(v4 + 280), v187);
      v6 = (*(**(v4 + 280) + 408))(*(v4 + 280), v215, &v221);
      if (qword_1025D48C0 != -1)
      {
        sub_101AACA10();
      }

      v7 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        v8 = *&v215[4];
        v9 = *&v215[12];
        v10 = *&v215[20];
        v11 = v218;
        v12 = sub_1001FD6E4(v218);
        *buf = 136319235;
        *&buf[4] = "CL-trackrun";
        *&buf[12] = 1024;
        *&buf[14] = 1;
        *&buf[18] = 2053;
        *&buf[20] = v8;
        *&buf[28] = 2053;
        *&buf[30] = v9;
        *&buf[38] = 2048;
        *&buf[40] = v10;
        *&buf[48] = 1026;
        *&buf[50] = v11;
        *&buf[54] = 2082;
        *&buf[56] = v12;
        *&buf[64] = 2050;
        *&buf[66] = *&v217[12];
        *&buf[74] = 2050;
        *&buf[76] = *&v217[28];
        *&buf[84] = 1025;
        *&buf[86] = v223;
        *&buf[90] = 1025;
        *&buf[92] = v224;
        *&buf[96] = 1025;
        *&buf[98] = v227;
        *&buf[102] = 1025;
        *&buf[104] = v226;
        *&buf[108] = 1025;
        *&buf[110] = v228;
        *&buf[114] = 1025;
        *&buf[116] = v229;
        *&buf[120] = 2049;
        *&buf[122] = v230;
        *&buf[130] = 2053;
        *&buf[132] = v225;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,course,%{public}.1f,timestamp,%{public}.3f,lapCount,%{private}d,laneNumber,%{private}d,laneCount,%{private}d,estimatedLaneNumber,%{private}d,estimatedLaneConfidence,%{private}d,trackProximity,%{private}d,distanceToTrackMeters,%{private}.1lf,trackId,%{sensitive}llu", buf, 0x8Cu);
      }

      if (sub_10000A100(123, 2))
      {
        sub_101AACA38(buf);
        v31 = *&v215[4];
        v32 = *&v215[12];
        v33 = *&v215[20];
        v34 = v218;
        v35 = sub_1001FD6E4(v218);
        *v239 = 136319235;
        *&v239[4] = "CL-trackrun";
        v240 = 1024;
        *v241 = 1;
        *&v241[4] = 2053;
        *&v241[6] = v31;
        *&v241[14] = 2053;
        *&v241[16] = v32;
        *&v241[24] = 2048;
        *&v241[26] = v33;
        *&v241[34] = 1026;
        *&v241[36] = v34;
        *&v241[40] = 2082;
        *&v241[42] = v35;
        *&v241[50] = 2050;
        *&v241[52] = *&v217[12];
        *&v241[60] = 2050;
        *&v241[62] = *&v217[28];
        *&v241[70] = 1025;
        *&v241[72] = v223;
        *v242 = 1025;
        *&v242[2] = v224;
        *&v242[6] = 1025;
        *&v242[8] = v227;
        *&v242[12] = 1025;
        *&v242[14] = v226;
        *&v242[18] = 1025;
        *v243 = v228;
        *&v243[4] = 1025;
        *&v243[6] = v229;
        *&v243[10] = 2049;
        *&v243[12] = v230;
        v244 = 2053;
        v245 = v225;
        v36 = _os_log_send_and_compose_impl();
        sub_100152C7C("LOCATION", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      if (v212)
      {
        sub_100008080(v212);
      }

      if (v211 < 0)
      {
        operator delete(__p);
      }

      if (v209)
      {
        sub_100008080(v209);
      }

      if (v208)
      {
        sub_100008080(v208);
      }
    }

    else
    {
      v6 = 0;
    }

    v14 = (*(**(v4 + 280) + 256))(*(v4 + 280));
    if (v14)
    {
      v15 = "LocationController";
    }

    else
    {
      v15 = "GnssController";
    }

    if (v14)
    {
      v16 = 18;
    }

    else
    {
      v16 = 14;
    }

    v186 = v16;
    memcpy(__dst, v15, v16);
    *(__dst + v16) = 0;
    sub_1001F842C(v4, v215, __dst);
    if (v186 < 0)
    {
      operator delete(__dst[0]);
    }

    v17 = sub_10000B1F8();
    *buf = 0;
    v18 = sub_10001A6B0(v17, buf);
    v19 = sub_1001D53D4(v4, v238, v215, v18);
    v237 = v19;
    *v181 = 0xFFFF;
    *&v181[4] = 0uLL;
    *&v181[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v181[36] = _Q0;
    *&v181[52] = _Q0;
    *&v181[68] = _Q0;
    *&v181[84] = 0;
    v182 = 0uLL;
    *&v181[88] = 0xBFF0000000000000;
    *(&v183 + 4) = 0xBFF0000000000000;
    LODWORD(v183) = 0;
    HIDWORD(v183) = 0x7FFFFFFF;
    memset(v184, 0, 25);
    if (v238 == 7)
    {
      if (v19)
      {
        v182 = v218;
        v183 = v219;
        *v184 = v220[0];
        *&v184[12] = *(v220 + 12);
        *&v181[32] = v216;
        *&v181[48] = *v217;
        *&v181[64] = *&v217[16];
        *&v181[80] = *&v217[32];
        v24 = 1;
        *v181 = *v215;
        *&v181[16] = *&v215[16];
        goto LABEL_38;
      }

      if (*(v4 + 296))
      {
LABEL_35:
        v24 = 0;
        goto LABEL_38;
      }
    }

    else if (*(v4 + 296))
    {
      if (v19)
      {
        v24 = sub_1006756B0(v4, v181, v215, &v238, &v237);
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v24 = sub_1001F867C(v4, v181, v215, &v237);
    v25 = *(v4 + 304);
    if (v25)
    {
      v26 = (*(**(v4 + 280) + 496))(*(v4 + 280));
      sub_1001F4EC4(v25, v26);
    }

LABEL_38:
    if (*(v4 + 1672))
    {
      if (sub_1001F4ED4(v4, v2))
      {
        sub_10025BA74(v4, v215);
        if ((v237 & 1) == 0 && (*(v4 + 673) & 1) == 0)
        {
          if (qword_1025D4600 != -1)
          {
            sub_10022FB88();
          }

          v27 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning not notifying location with location derived speed", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AACA7C(buf);
            *v187 = 0;
            v28 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v28);
            if (v28 != buf)
            {
              free(v28);
            }
          }
        }
      }

      else
      {
        sub_1001F4EA8(v4, v215);
      }
    }

    if ((v237 & 1) == 0 && *(v4 + 673) != 1)
    {
      goto LABEL_160;
    }

    sub_100022008(v187, v215);
    sub_10021347C(v4);
    if (v24)
    {
      if (*&v181[20] > 0.0)
      {
        *v188 = v182;
        *&v188[16] = v183;
        *v189 = *v184;
        *&v189[12] = *&v184[12];
        *&v187[32] = *&v181[32];
        *&v187[48] = *&v181[48];
        *&v187[64] = *&v181[64];
        *&v187[80] = *&v181[80];
        *v187 = *v181;
        *&v187[16] = *&v181[16];
        if (!v6)
        {
          goto LABEL_70;
        }

        goto LABEL_63;
      }

      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v29 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "Notifying using location KF,but no location available", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AACA7C(buf);
        *v239 = 0;
        v37 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }

        if (!v6)
        {
          goto LABEL_70;
        }

        goto LABEL_63;
      }
    }

    if (!v6)
    {
LABEL_70:
      v30 = *&v187[4];
      goto LABEL_71;
    }

LABEL_63:
    v30 = v214;
LABEL_71:
    *&v188[4] = v30;
    *&v189[8] = *&v189[4];
    *&v188[20] = *&v187[60];
    v38 = (*(**(v4 + 280) + 368))(*(v4 + 280));
    if ((v38 - 3) < 2 && v193 == 4)
    {
      v40 = 2;
    }

    else
    {
      v40 = v38;
    }

    *&v189[12] = v40;
    v199 = *&v187[20];
    v200 = *&v187[28];
    v202 = 0;
    v203 = *&v187[4];
    v204 = *&v187[20];
    v205 = *&v189[4];
    v201 = *&v187[68];
    v207 = *&v187[60];
    v206 = *&v187[28];
    if ((*(**(v4 + 280) + 376))())
    {
      (*(**(v4 + 280) + 384))(*(v4 + 280), v187, &v190);
      v165 = (*(**(v4 + 280) + 400))(*(v4 + 280), v187, &v190);
      if (qword_1025D48C0 != -1)
      {
        sub_101AACA10();
      }

      v41 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        v152 = *&v187[4];
        v162 = *&v187[20];
        v42 = *v188;
        v159 = sub_1001FD6E4(*v188);
        v134 = *&v187[44];
        v136 = *&v187[60];
        v140 = *&v187[84];
        v144 = *&v187[88];
        v148 = *&v187[76];
        v43 = sub_10000B1F8();
        *v239 = 0;
        v44 = sub_10001A6B0(v43, v239);
        v45 = *&v187[76];
        v46 = *&v187[28];
        v47 = *&v187[36];
        v48 = *&v187[52];
        v49 = *&v187[68];
        v50 = v192;
        v51 = *v189;
        v132 = v202;
        v52 = sub_10000B1F8();
        v53 = sub_100125220(v52);
        *buf = 136321027;
        *&buf[4] = "CL-viofused";
        *&buf[12] = 1024;
        *&buf[14] = 1;
        *&buf[18] = 2053;
        *&buf[20] = v152;
        *&buf[28] = 2053;
        *&buf[30] = *(&v152 + 1);
        *&buf[38] = 2048;
        *&buf[40] = v162;
        *&buf[48] = 1024;
        *&buf[50] = v42;
        *&buf[54] = 2080;
        *&buf[56] = v159;
        *&buf[64] = 2048;
        *&buf[66] = v134;
        *&buf[74] = 2048;
        *&buf[76] = v136;
        *&buf[84] = 1024;
        *&buf[86] = v140;
        *&buf[90] = 2048;
        *&buf[92] = v144;
        *&buf[100] = 2048;
        *&buf[102] = v148;
        *&buf[110] = 2048;
        *&buf[112] = v44 - v45;
        *&buf[120] = 2048;
        *&buf[122] = v46;
        *&buf[130] = 2048;
        *&buf[132] = v47;
        *&buf[140] = 2048;
        *&buf[142] = v48;
        *&buf[150] = 2048;
        *&buf[152] = v49;
        v263 = 2048;
        v264 = v50;
        v265 = 1024;
        v266 = v51;
        v267 = 1024;
        *v268 = v165 & 1;
        *&v268[4] = 1024;
        *&v268[6] = v165 & 4;
        v269 = 1024;
        v270 = v165 & 2;
        v271 = 1024;
        v272 = v132;
        v273 = 2048;
        v274 = v53;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%d,%s,Speed,%.2f,Course,%.2f,Confidence,%d,Lifespan,%.3f,LocationTimestamp,%.3f,Age,%.3f,Altitude,%.1f,AltitudeAccuracy,%.1f,SpeedAccuracy,%.3f,CourseAccuracy,%.1f,timestampGps,%.3lf,integrity,%d,isLocationFused,%d,isLocationPropagated,%d,isCourseFused,%d,isCoordinateFused,%d,propagation_us,%.3f", buf, 0xD2u);
      }

      if (sub_10000A100(123, 2))
      {
        sub_101AACA38(buf);
        v92 = *&v187[4];
        v157 = *&v187[12];
        v93 = *v188;
        v94 = sub_1001FD6E4(*v188);
        v95 = *&v187[44];
        v96 = *&v187[60];
        v146 = *&v187[84];
        v150 = *&v187[88];
        v154 = *&v187[76];
        v97 = sub_1000281DC();
        v98 = *&v187[76];
        v99 = *&v187[28];
        v100 = *&v187[36];
        v101 = *&v187[52];
        v133 = *&v187[68];
        v135 = v192;
        v138 = *v189;
        v142 = v202;
        v102 = sub_10000B1F8();
        v103 = sub_100125220(v102);
        *v239 = 136321027;
        *&v239[4] = "CL-viofused";
        v240 = 1024;
        *v241 = 1;
        *&v241[4] = 2053;
        *&v241[6] = v92;
        *&v241[14] = 2053;
        *&v241[16] = v157;
        *&v241[24] = 2048;
        *&v241[26] = *(&v157 + 1);
        *&v241[34] = 1024;
        *&v241[36] = v93;
        *&v241[40] = 2080;
        *&v241[42] = v94;
        *&v241[50] = 2048;
        *&v241[52] = v95;
        *&v241[60] = 2048;
        *&v241[62] = v96;
        *&v241[70] = 1024;
        *&v241[72] = v146;
        *v242 = 2048;
        *&v242[2] = v150;
        *&v242[10] = 2048;
        *&v242[12] = v154;
        *v243 = 2048;
        *&v243[2] = v97 - v98;
        *&v243[10] = 2048;
        *&v243[12] = v99;
        v244 = 2048;
        v245 = v100;
        v246 = 2048;
        v247 = v101;
        v248 = 2048;
        v249 = v133;
        v250 = 2048;
        v251 = v135;
        v252 = 1024;
        v253 = v138;
        v254 = 1024;
        *v255 = v165 & 1;
        *&v255[4] = 1024;
        *&v255[6] = v165 & 4;
        v256 = 1024;
        v257 = v165 & 2;
        v258 = 1024;
        v259 = v142;
        v260 = 2048;
        v261 = v103;
        v104 = _os_log_send_and_compose_impl();
        sub_100152C7C("LOCATION", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v104);
        if (v104 != buf)
        {
          free(v104);
        }
      }
    }

    if (*(v4 + 674) == 1 && ((*(v4 + 675) & 1) != 0 || *(v4 + 676) == 1) && (*(**(v4 + 280) + 224))(*(v4 + 280), v187, &v190))
    {
      if (qword_1025D48C0 != -1)
      {
        sub_101AACA10();
      }

      v54 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        v55 = *&v187[4];
        v160 = *&v187[12];
        v166 = *&v187[20];
        v56 = *v188;
        v163 = sub_1001FD6E4(*v188);
        v57 = *&v187[44];
        v58 = *&v187[60];
        v149 = *&v187[84];
        v153 = *&v187[88];
        v156 = *&v187[76];
        v59 = sub_1000281DC();
        v60 = *&v187[76];
        v61 = *&v187[28];
        v62 = *&v187[36];
        v63 = *&v187[52];
        v137 = *&v187[68];
        v141 = v192;
        v145 = *v189;
        v64 = sub_10000B1F8();
        v65 = sub_100125220(v64);
        *buf = 136320003;
        *&buf[4] = "CL-mapmatched";
        *&buf[12] = 1024;
        *&buf[14] = 1;
        *&buf[18] = 2053;
        *&buf[20] = v55;
        *&buf[28] = 2053;
        *&buf[30] = v160;
        *&buf[38] = 2048;
        *&buf[40] = v166;
        *&buf[48] = 1024;
        *&buf[50] = v56;
        *&buf[54] = 2080;
        *&buf[56] = v163;
        *&buf[64] = 2048;
        *&buf[66] = v57;
        *&buf[74] = 2048;
        *&buf[76] = v58;
        *&buf[84] = 1024;
        *&buf[86] = v149;
        *&buf[90] = 2048;
        *&buf[92] = v153;
        *&buf[100] = 2048;
        *&buf[102] = v156;
        *&buf[110] = 2048;
        *&buf[112] = v59 - v60;
        *&buf[120] = 2048;
        *&buf[122] = v61;
        *&buf[130] = 2048;
        *&buf[132] = v62;
        *&buf[140] = 2048;
        *&buf[142] = v63;
        *&buf[150] = 2048;
        *&buf[152] = v137;
        v263 = 2048;
        v264 = v141;
        v265 = 1024;
        v266 = v145;
        v267 = 2048;
        *v268 = v65;
        _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%d,%s,Speed,%.2f,Course,%.2f,Confidence,%d,Lifespan,%.3f,LocationTimestamp,%.3f,Age,%.3f,Altitude,%.1f,AltitudeAccuracy,%.1f,SpeedAccuracy,%.3f,CourseAccuracy,%.1f,timestampGps,%.3lf,integrity,%d,propagation_us,%.3f", buf, 0xBAu);
      }

      if (sub_10000A100(123, 2))
      {
        sub_101AACA38(buf);
        v119 = *&v187[4];
        v158 = *&v187[12];
        v164 = *&v187[20];
        v120 = *v188;
        v161 = sub_1001FD6E4(*v188);
        v121 = *&v187[44];
        v122 = *&v187[60];
        v147 = *&v187[84];
        v151 = *&v187[88];
        v155 = *&v187[76];
        v123 = sub_1000281DC();
        v124 = *&v187[76];
        v125 = *&v187[28];
        v126 = *&v187[36];
        v127 = *&v187[52];
        v128 = *&v187[68];
        v139 = v192;
        v143 = *v189;
        v129 = sub_10000B1F8();
        v130 = sub_100125220(v129);
        *v239 = 136320003;
        *&v239[4] = "CL-mapmatched";
        v240 = 1024;
        *v241 = 1;
        *&v241[4] = 2053;
        *&v241[6] = v119;
        *&v241[14] = 2053;
        *&v241[16] = v158;
        *&v241[24] = 2048;
        *&v241[26] = v164;
        *&v241[34] = 1024;
        *&v241[36] = v120;
        *&v241[40] = 2080;
        *&v241[42] = v161;
        *&v241[50] = 2048;
        *&v241[52] = v121;
        *&v241[60] = 2048;
        *&v241[62] = v122;
        *&v241[70] = 1024;
        *&v241[72] = v147;
        *v242 = 2048;
        *&v242[2] = v151;
        *&v242[10] = 2048;
        *&v242[12] = v155;
        *v243 = 2048;
        *&v243[2] = v123 - v124;
        *&v243[10] = 2048;
        *&v243[12] = v125;
        v244 = 2048;
        v245 = v126;
        v246 = 2048;
        v247 = v127;
        v248 = 2048;
        v249 = v128;
        v250 = 2048;
        v251 = v139;
        v252 = 1024;
        v253 = v143;
        v254 = 2048;
        *v255 = v130;
        v131 = _os_log_send_and_compose_impl();
        sub_100152C7C("LOCATION", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v131);
        if (v131 != buf)
        {
          free(v131);
        }
      }
    }

    if ((*(**(v4 + 280) + 376))(*(v4 + 280)))
    {
      v66.n128_f64[0] = (*(**(v4 + 280) + 392))(*(v4 + 280), v187, &v190);
    }

    sub_10002364C(v4, v187, v66);
    if (sub_100F27E9C(v4, v187, &v190))
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v67 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v68 = *&v187[4];
        v69 = *&v187[12];
        v70 = *&v187[20];
        v71 = *v188;
        v72 = sub_1001FD6E4(*v188);
        *buf = 134548227;
        *&buf[4] = v68;
        *&buf[12] = 2053;
        *&buf[14] = v69;
        *&buf[22] = 2050;
        *&buf[24] = v70;
        *&buf[32] = 1026;
        *&buf[34] = v71;
        *&buf[38] = 2082;
        *&buf[40] = v72;
        *&buf[48] = 2049;
        *&buf[50] = *&v187[28];
        *&buf[58] = 2050;
        *&buf[60] = *&v187[36];
        *&buf[68] = 2050;
        *&buf[70] = v197;
        *&buf[78] = 2050;
        *&buf[80] = v198;
        *&buf[88] = 2049;
        *&buf[90] = v195;
        *&buf[98] = 1026;
        *&buf[100] = v194;
        _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_INFO, "DEM,query,%{sensitive}.7f,%{sensitive}.7f,HorUnc,%{public}.2lf,Type,%{public}d,%{public}s,Alt,%{private}.2f,AltUnc,%{public}.2f,GroundAlt,%{public}.2lf,GroundAltUnc,%{public}.2lf,Undulation,%{private}.3lf,UndulationModel,%{public}d,", buf, 0x68u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AACA7C(buf);
        v105 = *&v187[4];
        v106 = *&v187[12];
        v107 = *&v187[20];
        v108 = *v188;
        v109 = sub_1001FD6E4(*v188);
        *v239 = 134548227;
        *&v239[4] = v105;
        v240 = 2053;
        *v241 = v106;
        *&v241[8] = 2050;
        *&v241[10] = v107;
        *&v241[18] = 1026;
        *&v241[20] = v108;
        *&v241[24] = 2082;
        *&v241[26] = v109;
        *&v241[34] = 2049;
        *&v241[36] = *&v187[28];
        *&v241[44] = 2050;
        *&v241[46] = *&v187[36];
        *&v241[54] = 2050;
        *&v241[56] = v197;
        *&v241[64] = 2050;
        *&v241[66] = v198;
        *&v241[74] = 2049;
        *v242 = v195;
        *&v242[8] = 1026;
        *&v242[10] = v194;
        v110 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v110);
        if (v110 != buf)
        {
          free(v110);
        }
      }
    }

    if ((*(**(v4 + 280) + 272))(*(v4 + 280), v187, &v190))
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v73 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v74 = *&v187[4];
        v75 = *&v187[12];
        v76 = *&v187[20];
        v77 = *v188;
        v78 = sub_1001FD6E4(*v188);
        *buf = 134547715;
        *&buf[4] = v74;
        *&buf[12] = 2053;
        *&buf[14] = v75;
        *&buf[22] = 2050;
        *&buf[24] = v76;
        *&buf[32] = 1026;
        *&buf[34] = v77;
        *&buf[38] = 2082;
        *&buf[40] = v78;
        *&buf[48] = 2049;
        *&buf[50] = *&v187[28];
        *&buf[58] = 2050;
        *&buf[60] = *&v187[36];
        *&buf[68] = 2050;
        *&buf[70] = v195;
        *&buf[78] = 1026;
        *&buf[80] = v194;
        _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_INFO, "BaroAlt,%{sensitive}.7f,%{sensitive}.7f,HorUnc,%{public}.2lf,Type,%{public}d,%{public}s,Alt,%{private}.2f,AltUnc,%{public}.2f,undulation,%{public}.3f,undulationModel,%{public}d", buf, 0x54u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AACA7C(buf);
        v111 = *&v187[4];
        v112 = *&v187[12];
        v113 = *&v187[20];
        v114 = *v188;
        v115 = sub_1001FD6E4(*v188);
        *v239 = 134547715;
        *&v239[4] = v111;
        v240 = 2053;
        *v241 = v112;
        *&v241[8] = 2050;
        *&v241[10] = v113;
        *&v241[18] = 1026;
        *&v241[20] = v114;
        *&v241[24] = 2082;
        *&v241[26] = v115;
        *&v241[34] = 2049;
        *&v241[36] = *&v187[28];
        *&v241[44] = 2050;
        *&v241[46] = *&v187[36];
        *&v241[54] = 2050;
        *&v241[56] = v195;
        *&v241[64] = 1026;
        *&v241[66] = v194;
        v116 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v116);
        if (v116 != buf)
        {
          free(v116);
        }
      }
    }

    v179 = 0uLL;
    v180 = 0;
    if ((*(**(v4 + 280) + 280))(*(v4 + 280), &v179))
    {
      v79 = [objc_msgSend(*(v4 + 32) "vendor")];
      if (v79)
      {
        *buf = v179;
        *&buf[16] = v180;
        [v79 setBarometricAltitudeAWDData:buf];
      }
    }

    *&v189[16] = 0;
    if ((v194 - 1) <= 1)
    {
      *&v189[16] = *&v187[28] + v195;
    }

    v80 = *&v187[20];
    if (*&v187[20] >= 0.0)
    {
      if (*&v187[20] < 1.0)
      {
        v80 = 1.0;
      }

      *&v187[20] = v80;
    }

    v81 = *&v187[36];
    if (*&v187[36] >= 0.0)
    {
      if (*&v187[36] < 3.0)
      {
        v81 = 3.0;
      }

      *&v187[36] = v81;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101AACAC0();
    }

    v82 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134548737;
      *&buf[4] = *&v187[4];
      *&buf[12] = 2053;
      *&buf[14] = *&v187[12];
      *&buf[22] = 2050;
      *&buf[24] = *&v187[20];
      *&buf[32] = 2049;
      *&buf[34] = *&v187[44];
      *&buf[42] = 2049;
      *&buf[44] = *&v187[60];
      *&buf[52] = 1026;
      *&buf[54] = *v188;
      *&buf[58] = 2049;
      *&buf[60] = *&v187[28];
      *&buf[68] = 2050;
      *&buf[70] = *&v187[36];
      *&buf[78] = 2049;
      *&buf[80] = *&v189[16];
      *&buf[88] = 2050;
      *&buf[90] = *&v187[52];
      *&buf[98] = 2050;
      *&buf[100] = *&v187[68];
      *&buf[108] = 1025;
      *&buf[110] = *&v189[12];
      *&buf[114] = 2050;
      *&buf[116] = *&v187[76];
      _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEFAULT, "@ClxClient, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, type, %{public}d, alt, %{private}.1f, altunc, %{public}.1f, ellipsoidalAlt, %{private}.1f, speedUnc, %{public}.1f, courseUnc, %{public}.1f, signalEnv, %{private}d, timestamp, %{public}.3f", buf, 0x7Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AACAE8(buf);
      *v239 = 134548737;
      *&v239[4] = *&v187[4];
      v240 = 2053;
      *v241 = *&v187[12];
      *&v241[8] = 2050;
      *&v241[10] = *&v187[20];
      *&v241[18] = 2049;
      *&v241[20] = *&v187[44];
      *&v241[28] = 2049;
      *&v241[30] = *&v187[60];
      *&v241[38] = 1026;
      *&v241[40] = *v188;
      *&v241[44] = 2049;
      *&v241[46] = *&v187[28];
      *&v241[54] = 2050;
      *&v241[56] = *&v187[36];
      *&v241[64] = 2049;
      *&v241[66] = *&v189[16];
      *&v241[74] = 2050;
      *v242 = *&v187[52];
      *&v242[8] = 2050;
      *&v242[10] = *&v187[68];
      *&v242[18] = 1025;
      *v243 = *&v189[12];
      *&v243[4] = 2050;
      *&v243[6] = *&v187[76];
      v91 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v91);
      if (v91 != buf)
      {
        free(v91);
      }
    }

    if (sub_10002807C(*&v187[4], *&v187[12]))
    {
      v85 = sub_1001FD6E4(*v188);
      if (qword_1025D4620 != -1)
      {
        sub_101AACAC0();
      }

      v86 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136380931;
        *&buf[4] = "client, null";
        *&buf[12] = 2081;
        *&buf[14] = v85;
        _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AACAE8(buf);
        *v239 = 136380931;
        *&v239[4] = "client, null";
        v240 = 2081;
        *v241 = v85;
        v117 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v117);
        if (v117 != buf)
        {
          free(v117);
        }
      }

      v174 = _NSConcreteStackBlock;
      v175 = 3221225472;
      v176 = sub_100E6F068;
      v177 = &unk_102449CF8;
      v178 = v85;
      AnalyticsSendEventLazy();
    }

    v84.n128_u64[0] = *&v187[4];
    v83.n128_u64[0] = -1.0;
    if (*&v187[4] == -1.0)
    {
      v84.n128_u64[0] = *&v187[12];
      if (*&v187[12] == -1.0)
      {
        v87 = sub_1001FD6E4(*v188);
        if (qword_1025D4620 != -1)
        {
          sub_101AACAC0();
        }

        v88 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136380931;
          *&buf[4] = "client, sentinel";
          *&buf[12] = 2081;
          *&buf[14] = v87;
          _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AACAE8(buf);
          *v239 = 136380931;
          *&v239[4] = "client, sentinel";
          v240 = 2081;
          *v241 = v87;
          v118 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocation(LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v118);
          if (v118 != buf)
          {
            free(v118);
          }
        }

        v169 = _NSConcreteStackBlock;
        v170 = 3221225472;
        v171 = sub_100E6F114;
        v172 = &unk_102449CF8;
        v173 = v87;
        AnalyticsSendEventLazy();
      }
    }

    *buf = 39;
    (*(*v4 + 152))(v4, buf, v187, 1, 0xFFFFFFFFLL, 0, v83, v84);
    if (_os_feature_enabled_impl())
    {
      sub_1002150AC(v4 + 360, v187, buf);
      *v188 = *&buf[96];
      *&v188[16] = *&buf[112];
      *v189 = *&buf[128];
      *&v189[12] = *&buf[140];
      *&v187[32] = *&buf[32];
      *&v187[48] = *&buf[48];
      *&v187[64] = *&buf[64];
      *&v187[80] = *&buf[80];
      *v187 = *buf;
      *&v187[16] = *&buf[16];
    }

    *buf = 0;
    (*(*v4 + 152))(v4, buf, v187, 1, 0xFFFFFFFFLL, 0);
    *v239 = 0xBFF0000000000000;
    v168 = 0;
    (*(**(v4 + 280) + 328))(*(v4 + 280), v187, &v168, v239);
    if (v168 == 1)
    {
      sub_100021AFC(buf);
      v277 = *v239;
      v278 = *&v187[76];
      v167 = 20;
      (*(*v4 + 152))(v4, &v167, buf, 1, 0xFFFFFFFFLL, 0);

      if (v281)
      {
        sub_100008080(v281);
      }

      if (v280 < 0)
      {
        operator delete(v279);
      }

      if (v276)
      {
        sub_100008080(v276);
      }

      if (v275)
      {
        sub_100008080(v275);
      }
    }

    v89 = *(v4 + 312);
    if (v89)
    {
      sub_1002180B0(v89, v187, v196);
    }

    sub_100215910(v4 + 5296, v187);

    if (v212)
    {
      sub_100008080(v212);
    }

    if (v211 < 0)
    {
      operator delete(__p);
    }

    if (v209)
    {
      sub_100008080(v209);
    }

    if (v208)
    {
      sub_100008080(v208);
    }

LABEL_160:
    sub_10010B730(v4);
    if (v237)
    {
      v13 = 1;
    }

    else
    {
      v13 = *(v4 + 673);
    }

    goto LABEL_163;
  }

  v13 = 0;
LABEL_163:

  if (v235)
  {
    sub_100008080(v235);
  }

  if (v234 < 0)
  {
    operator delete(v233);
  }

  if (v232)
  {
    sub_100008080(v232);
  }

  if (v231)
  {
    sub_100008080(v231);
  }

  return v13 & 1;
}