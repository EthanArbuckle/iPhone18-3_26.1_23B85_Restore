void sub_1000792D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_100079344(uint64_t a1, int *a2, id *a3)
{
  v5 = sub_100072010(a2);
  if (CFEqual(v5, @"kSubscriptionsInUseNotification"))
  {
    v6 = [*a3 valueForKey:@"kSubscriptionsInUseKey"];
    v7 = [v6 count];
    if (qword_1025D47D0 != -1)
    {
      sub_1002CEC74();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 424);
      v12 = 68290050;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = 1;
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v6;
      v22 = 1026;
      v23 = v6 == 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#msim updated InUseSubscriptions, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, OldInUseSubscriptions:%{public, location:escape_only}@, NewInUseSubscriptions:%{public, location:escape_only}@, hasError:%{public}hhd}", &v12, 0x36u);
    }

    *(a1 + 424) = v6;
    if (v6)
    {
      v10 = v7 >= 3;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101AAABD0();
      }

      v11 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 68289282;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2050;
        v17 = 1;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#msim Cell-Harvesting does not support more than 2 in-use subscriptions. Harvester disabled, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v12, 0x1Cu);
      }

      *(a1 + 417) = 1;
    }
  }
}

void sub_100079540(uint64_t a1, int *a2, id *a3)
{
  v5 = sub_100072010(a2);
  if (CFEqual(v5, @"kSimInfoChangedNotification"))
  {
    v6 = [*a3 objectForKey:@"kSlotOne"];
    v7 = [*a3 objectForKey:@"kSlotTwo"];
    if (qword_1025D47D0 != -1)
    {
      sub_1002CEC74();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289795;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = 1;
      v14 = 2113;
      v15 = v6;
      v16 = 2113;
      v17 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#msim update sim info, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, SimOneInfo:%{private, location:escape_only}@, SimTwoInfo:%{private, location:escape_only}@}", v9, 0x30u);
    }

    if (v6)
    {

      *(a1 + 480) = v6;
    }

    if (v7)
    {

      *(a1 + 504) = v7;
    }
  }
}

uint64_t sub_1000796B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1072))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning: faking harvest eligibility}", &v9, 0x12u);
    }

    return 1;
  }

  if ((*(*a1 + 160))(a1))
  {
    if ((*(**(a1 + 168) + 48))(*(a1 + 168), a2))
    {
      return 1;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Pos harvesting not eligible as gps harvetsing is ineligible", &v9, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018C5358();
      return 0;
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v6 = qword_1025D47D8;
    result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO);
    if (result)
    {
      v7 = (*(*a1 + 64))(a1) - *(a2 + 76);
      v9 = 68289283;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2049;
      v14 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:not harvesting, harvesting now allowed, age_s:%{private}.09f}", &v9, 0x1Cu);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100079924(uint64_t a1, uint64_t a2)
{
  if (!sub_100072814(a2) || vabdd_f64((*(**(a1 + 32) + 64))(*(a1 + 32)), *(a2 + 76)) > 5.0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10197B988();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v5 = vabdd_f64((*(**(a1 + 32) + 64))(*(a1 + 32)), *(a2 + 76));
      v14 = 134217984;
      *v15 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "invalid/stale location (age %.3fs) - ignoring", &v14, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10197BD90(a1, a2);
    return 0;
  }

  v7 = (a1 + 72);
  if (*(a1 + 72) > 4)
  {
    if (*(a1 + 88) < 181 || (*(a1 + 64) & 1) != 0)
    {
      return 1;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_10197B988();
    }

    v10 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 88);
      v12 = *(a1 + 96);
      v13 = *(a1 + 104);
      v14 = 67109633;
      *v15 = v11;
      *&v15[4] = 2053;
      *&v15[6] = v12;
      v16 = 2053;
      v17 = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "%d consecutive clamps at <%{sensitive}+.8f,%{sensitive}+.8f> - not harvesting", &v14, 0x1Cu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10197BB64((a1 + 88), a1);
      return 0;
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10197B988();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v9 = *v7;
      v14 = 67109376;
      *v15 = v9;
      *&v15[4] = 1024;
      *&v15[6] = 5;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "not harvesting yet; GPS warming count is %d < %d", &v14, 0xEu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10197BC80(v7);
      return 0;
    }
  }

  return result;
}

id sub_100079BE8(uint64_t a1, id *a2)
{
  v4 = [*a2 objectForKey:@"kSlotOne"];
  v5 = [*a2 objectForKey:@"kSlotTwo"];
  if (qword_1025D47D0 != -1)
  {
    sub_1002CEC74();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289794;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2050;
    v12 = 1;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#msim update CellInfo, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, CellInfoSimOne:%{public, location:escape_only}@, CellInfoSimTwo:%{public, location:escape_only}@}", v8, 0x30u);
  }

  if ([v4 count])
  {

    *(a1 + 472) = v4;
  }

  result = [v5 count];
  if (result)
  {

    result = v5;
    *(a1 + 496) = result;
  }

  return result;
}

void sub_100079D4C(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018FE88C();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 1875962727 * ((a1[1] - *a1) >> 3);
    *buf = 67240448;
    *&buf[4] = a2 + 1;
    *&buf[8] = 1026;
    *&buf[10] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@CellService, selection, inst, %{public}d, count, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE8A0(a2, a1);
  }

  v7 = &a4[3 * a2];
  v8 = *v7;
  for (i = v7[1]; i != v8; sub_1000720CC(i))
  {
    i -= 696;
  }

  v7[1] = v8;
  v11 = *a1;
  v10 = a1[1];
  if (*a1 == v10)
  {
    *&v131[4] = 0;
  }

  else
  {
    *&v131[8] = 0;
    *v131 = (a2 + 1);
    do
    {
      *v182 = *v11;
      v12 = *(v11 + 16);
      v13 = *(v11 + 32);
      v14 = *(v11 + 48);
      *&v182[60] = *(v11 + 60);
      *&v182[48] = v14;
      *&v182[32] = v13;
      *&v182[16] = v12;
      v183 = *(v11 + 80);
      v185 = 0;
      v186 = 0;
      v184 = 0;
      sub_10038EB38(&v184, *(v11 + 88), *(v11 + 96), (*(v11 + 96) - *(v11 + 88)) >> 2);
      v187 = *(v11 + 112);
      v15 = *(v11 + 128);
      v16 = *(v11 + 144);
      v17 = *(v11 + 176);
      v190 = *(v11 + 160);
      v191 = v17;
      v188 = v15;
      v189 = v16;
      v18 = *(v11 + 192);
      v19 = *(v11 + 208);
      v20 = *(v11 + 240);
      v194 = *(v11 + 224);
      v195 = v20;
      v192 = v18;
      v193 = v19;
      v21 = *(v11 + 256);
      v22 = *(v11 + 272);
      v23 = *(v11 + 288);
      *(v198 + 12) = *(v11 + 300);
      v197 = v22;
      v198[0] = v23;
      v196 = v21;
      if (*(v11 + 343) < 0)
      {
        sub_100007244(&__p, *(v11 + 320), *(v11 + 328));
      }

      else
      {
        v24 = *(v11 + 320);
        v200 = *(v11 + 336);
        __p = v24;
      }

      v25 = *(v11 + 344);
      v26 = *(v11 + 376);
      v202 = *(v11 + 360);
      v203 = v26;
      v201 = v25;
      v27 = *(v11 + 392);
      v28 = *(v11 + 408);
      v29 = *(v11 + 440);
      v206 = *(v11 + 424);
      v207 = v29;
      v204 = v27;
      v205 = v28;
      v30 = *(v11 + 456);
      v31 = *(v11 + 472);
      v32 = *(v11 + 488);
      v211 = *(v11 + 504);
      v209 = v31;
      v210 = v32;
      v208 = v30;
      v33 = *(v11 + 512);
      v34 = *(v11 + 528);
      v35 = *(v11 + 560);
      v214 = *(v11 + 544);
      v215 = v35;
      v212 = v33;
      v213 = v34;
      v36 = *(v11 + 576);
      v37 = *(v11 + 592);
      v38 = *(v11 + 624);
      v218 = *(v11 + 608);
      v219 = v38;
      v216 = v36;
      v217 = v37;
      v39 = *(v11 + 640);
      v40 = *(v11 + 656);
      v41 = *(v11 + 672);
      v223 = *(v11 + 688);
      v221 = v40;
      v222 = v41;
      v220 = v39;
      if (v182[0])
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018FE9CC();
        }

        v42 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10007A8CC(v182, buf);
          v43 = buf;
          if (buf[23] < 0)
          {
            v43 = *buf;
          }

          *v132 = 67240451;
          *&v132[4] = a2 + 1;
          v133 = 2081;
          v134 = v43;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "@CellService, selection, inst, %{public}d, %{private}s", v132, 0x12u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FE9F4(buf);
          sub_10007A8CC(v182, v132);
          v46 = v132;
          if (v135 < 0)
          {
            v46 = *v132;
          }

          v136 = 67240451;
          v137 = a2 + 1;
          v138 = 2081;
          v139 = v46;
          v47 = _os_log_send_and_compose_impl();
          if (v135 < 0)
          {
            operator delete(*v132);
          }

          sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::selectCurrentCells(CLCellVector, int, CLCellVector &, CLCellVector (&)[2])", "%s\n", v47);
          if (v47 != buf)
          {
            free(v47);
          }
        }

        sub_10007AD10(v182, -1, -1, -1, -1);
        ++*&v131[8];
        if (*&v182[4])
        {
          v44 = v7[1];
          if (v44 >= v7[2])
          {
            v45 = sub_10058ABF4(v7, v182);
          }

          else
          {
            sub_10007AEC8(v7, v182);
            v45 = v44 + 696;
          }

          v7[1] = v45;
        }

        else
        {
          sub_10007B05C(v7, *v7 + 696 * *&v131[4], v182);
          ++*&v131[4];
        }
      }

      if (SHIBYTE(v200) < 0)
      {
        operator delete(__p);
      }

      if (v184)
      {
        v185 = v184;
        operator delete(v184);
      }

      v11 += 696;
    }

    while (v11 != v10);
    if (*&v131[4])
    {
      sub_10007B458(v7, *v7 + 696 * *&v131[4], v7[1]);
    }

    else
    {
      *&v131[4] = 0;
    }
  }

  v48 = *a3;
  for (j = a3[1]; j != v48; sub_1000720CC(j))
  {
    j -= 696;
  }

  a3[1] = v48;
  v50 = *a4;
  v51 = a4[1];
  if (*a4 != v51)
  {
    do
    {
      *buf = *v50;
      v52 = *(v50 + 16);
      v53 = *(v50 + 32);
      v54 = *(v50 + 48);
      *&buf[60] = *(v50 + 60);
      *&buf[32] = v53;
      *&buf[48] = v54;
      *&buf[16] = v52;
      v141 = *(v50 + 80);
      v143 = 0;
      v144 = 0;
      v142 = 0;
      sub_10038EB38(&v142, *(v50 + 88), *(v50 + 96), (*(v50 + 96) - *(v50 + 88)) >> 2);
      v145 = *(v50 + 112);
      v55 = *(v50 + 128);
      v56 = *(v50 + 144);
      v57 = *(v50 + 176);
      v148 = *(v50 + 160);
      v149 = v57;
      v146 = v55;
      v147 = v56;
      v58 = *(v50 + 192);
      v59 = *(v50 + 208);
      v60 = *(v50 + 240);
      v152 = *(v50 + 224);
      v153 = v60;
      v150 = v58;
      v151 = v59;
      v61 = *(v50 + 256);
      v62 = *(v50 + 272);
      v63 = *(v50 + 288);
      *(v156 + 12) = *(v50 + 300);
      v155 = v62;
      v156[0] = v63;
      v154 = v61;
      if (*(v50 + 343) < 0)
      {
        sub_100007244(&v157, *(v50 + 320), *(v50 + 328));
      }

      else
      {
        v64 = *(v50 + 320);
        v158 = *(v50 + 336);
        v157 = v64;
      }

      v65 = *(v50 + 344);
      v66 = *(v50 + 376);
      v160 = *(v50 + 360);
      v161 = v66;
      v159 = v65;
      v67 = *(v50 + 392);
      v68 = *(v50 + 408);
      v69 = *(v50 + 440);
      v164 = *(v50 + 424);
      v165 = v69;
      v162 = v67;
      v163 = v68;
      v70 = *(v50 + 456);
      v71 = *(v50 + 472);
      v72 = *(v50 + 488);
      v169 = *(v50 + 504);
      v167 = v71;
      v168 = v72;
      v166 = v70;
      v73 = *(v50 + 512);
      v74 = *(v50 + 528);
      v75 = *(v50 + 560);
      v172 = *(v50 + 544);
      v173 = v75;
      v170 = v73;
      v171 = v74;
      v76 = *(v50 + 576);
      v77 = *(v50 + 592);
      v78 = *(v50 + 624);
      v176 = *(v50 + 608);
      v177 = v78;
      v174 = v76;
      v175 = v77;
      v79 = *(v50 + 640);
      v80 = *(v50 + 656);
      v81 = *(v50 + 672);
      v181 = *(v50 + 688);
      v179 = v80;
      v180 = v81;
      v178 = v79;
      v82 = a3[1];
      if (v82 >= a3[2])
      {
        v83 = sub_10058ABF4(a3, buf);
      }

      else
      {
        sub_10007AEC8(a3, buf);
        v83 = v82 + 696;
      }

      a3[1] = v83;
      if (SHIBYTE(v158) < 0)
      {
        operator delete(v157);
      }

      if (v142)
      {
        v143 = v142;
        operator delete(v142);
      }

      v50 += 696;
    }

    while (v50 != v51);
  }

  v84 = a4[3];
  for (k = a4[4]; v84 != k; v84 += 696)
  {
    *buf = *v84;
    v86 = *(v84 + 16);
    v87 = *(v84 + 32);
    v88 = *(v84 + 48);
    *&buf[60] = *(v84 + 60);
    *&buf[32] = v87;
    *&buf[48] = v88;
    *&buf[16] = v86;
    v141 = *(v84 + 80);
    v143 = 0;
    v144 = 0;
    v142 = 0;
    sub_10038EB38(&v142, *(v84 + 88), *(v84 + 96), (*(v84 + 96) - *(v84 + 88)) >> 2);
    v145 = *(v84 + 112);
    v89 = *(v84 + 128);
    v90 = *(v84 + 144);
    v91 = *(v84 + 176);
    v148 = *(v84 + 160);
    v149 = v91;
    v146 = v89;
    v147 = v90;
    v92 = *(v84 + 192);
    v93 = *(v84 + 208);
    v94 = *(v84 + 240);
    v152 = *(v84 + 224);
    v153 = v94;
    v150 = v92;
    v151 = v93;
    v95 = *(v84 + 256);
    v96 = *(v84 + 272);
    v97 = *(v84 + 288);
    *(v156 + 12) = *(v84 + 300);
    v155 = v96;
    v156[0] = v97;
    v154 = v95;
    if (*(v84 + 343) < 0)
    {
      sub_100007244(&v157, *(v84 + 320), *(v84 + 328));
    }

    else
    {
      v98 = *(v84 + 320);
      v158 = *(v84 + 336);
      v157 = v98;
    }

    v99 = *(v84 + 344);
    v100 = *(v84 + 376);
    v160 = *(v84 + 360);
    v161 = v100;
    v159 = v99;
    v101 = *(v84 + 392);
    v102 = *(v84 + 408);
    v103 = *(v84 + 440);
    v164 = *(v84 + 424);
    v165 = v103;
    v162 = v101;
    v163 = v102;
    v104 = *(v84 + 456);
    v105 = *(v84 + 472);
    v106 = *(v84 + 488);
    v169 = *(v84 + 504);
    v167 = v105;
    v168 = v106;
    v166 = v104;
    v107 = *(v84 + 512);
    v108 = *(v84 + 528);
    v109 = *(v84 + 560);
    v172 = *(v84 + 544);
    v173 = v109;
    v170 = v107;
    v171 = v108;
    v110 = *(v84 + 576);
    v111 = *(v84 + 592);
    v112 = *(v84 + 624);
    v176 = *(v84 + 608);
    v177 = v112;
    v174 = v110;
    v175 = v111;
    v113 = *(v84 + 640);
    v114 = *(v84 + 656);
    v115 = *(v84 + 672);
    v181 = *(v84 + 688);
    v179 = v114;
    v180 = v115;
    v178 = v113;
    v116 = a3[1];
    if (v116 >= a3[2])
    {
      v117 = sub_10058ABF4(a3, buf);
    }

    else
    {
      sub_10007AEC8(a3, buf);
      v117 = v116 + 696;
    }

    a3[1] = v117;
    if (SHIBYTE(v158) < 0)
    {
      operator delete(v157);
    }

    if (v142)
    {
      v143 = v142;
      operator delete(v142);
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018FE9CC();
  }

  v118 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v119 = 0x66FD0EB66FD0EB67 * ((a3[1] - *a3) >> 3);
    v120 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
    v121 = 0x66FD0EB66FD0EB67 * ((a4[1] - *a4) >> 3);
    v122 = 0x66FD0EB66FD0EB67 * ((a4[4] - a4[3]) >> 3);
    *buf = 134350592;
    *&buf[4] = v119;
    *&buf[12] = 1026;
    *&buf[14] = a2;
    *&buf[18] = 2050;
    *&buf[20] = v120;
    *&buf[28] = 1026;
    *&buf[30] = *&v131[8];
    *&buf[34] = 1026;
    *&buf[36] = *&v131[4];
    *&buf[40] = 2050;
    *&buf[42] = v121;
    *&buf[50] = 2050;
    *&buf[52] = v122;
    _os_log_impl(dword_100000000, v118, OS_LOG_TYPE_DEFAULT, "CellFlow, selectsize, %{public}lu, thisslot, %{public}d, %{public}lu, valid, %{public}d, serving, %{public}d, slotcells, %{public}lu, %{public}lu", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018FE9CC();
    }

    v123 = 0x66FD0EB66FD0EB67 * ((a3[1] - *a3) >> 3);
    v124 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
    v125 = 0x66FD0EB66FD0EB67 * ((a4[1] - *a4) >> 3);
    v126 = 0x66FD0EB66FD0EB67 * ((a4[4] - a4[3]) >> 3);
    *v182 = 134350592;
    *&v182[4] = v123;
    *&v182[12] = 1026;
    *&v182[14] = a2;
    *&v182[18] = 2050;
    *&v182[20] = v124;
    *&v182[28] = 1026;
    *&v182[30] = *&v131[8];
    *&v182[34] = 1026;
    *&v182[36] = *&v131[4];
    *&v182[40] = 2050;
    *&v182[42] = v125;
    *&v182[50] = 2050;
    *&v182[52] = v126;
    v127 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::selectCurrentCells(CLCellVector, int, CLCellVector &, CLCellVector (&)[2])", "%s\n", v127);
    if (v127 != buf)
    {
      free(v127);
    }
  }
}

uint64_t sub_10007A8CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v19);
  v4 = sub_10007ACC8(*(a1 + 8));
  v5 = strlen(v4);
  v6 = sub_100038730(&v20, v4, v5);
  v7 = sub_100038730(v6, ", ", 2);
  v8 = sub_10007ACEC(*(a1 + 4));
  v9 = strlen(v8);
  sub_100038730(v7, v8, v9);
  v10 = *(a1 + 8);
  if (v10 < 3)
  {
LABEL_4:
    v11 = sub_100038730(&v20, ", ", 2);
    sub_100075418(&__p);
    if ((v18 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = v17;
    }

    goto LABEL_10;
  }

  if (v10 == 9)
  {
    v11 = sub_100038730(&v20, ", ", 2);
    sub_100075418(&__p);
    if ((v18 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = v17;
    }
  }

  else
  {
    if (v10 == 7)
    {
      goto LABEL_4;
    }

    if (v10 - 3 > 2)
    {
      if (v10 == 10)
      {
        v11 = sub_100038730(&v20, ", ", 2);
        sub_100642C8C(&__p);
        if ((v18 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v18 & 0x80u) == 0)
        {
          v13 = v18;
        }

        else
        {
          v13 = v17;
        }
      }

      else
      {
        if (v10 != 6)
        {
          sub_100038730(&v20, ", UnknownCell", 13);
          goto LABEL_12;
        }

        v11 = sub_100038730(&v20, ", ", 2);
        sub_100075418(&__p);
        if ((v18 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v18 & 0x80u) == 0)
        {
          v13 = v18;
        }

        else
        {
          v13 = v17;
        }
      }
    }

    else
    {
      v11 = sub_100038730(&v20, ", ", 2);
      sub_100641C10(&__p);
      if ((v18 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v18 & 0x80u) == 0)
      {
        v13 = v18;
      }

      else
      {
        v13 = v17;
      }
    }
  }

LABEL_10:
  sub_100038730(v11, p_p, v13);
  if (v18 < 0)
  {
    operator delete(__p);
  }

LABEL_12:
  sub_100073518(v19, a2);
  v20 = v14;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10007AC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a15);
  _Unwind_Resume(a1);
}

const char *sub_10007ACC8(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "Invalid";
  }

  else
  {
    return off_102464468[a1];
  }
}

const char *sub_10007ACEC(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Invalid";
  }

  else
  {
    return off_102464448[a1];
  }
}

void sub_10007AD10(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v6 = *(a1 + 8);
  if (v6 < 3)
  {
    goto LABEL_4;
  }

  if (v6 == 9)
  {
    *(a1 + 60) = a2;
    *(a1 + 64) = a3;
    *(a1 + 68) = a4;
    *(a1 + 72) = a5;
  }

  else
  {
    if (v6 == 7)
    {
LABEL_4:
      *(a1 + 28) = a2;
      *(a1 + 32) = a3;
      *(a1 + 36) = a4;
      *(a1 + 40) = a5;
      goto LABEL_5;
    }

    if (v6 - 3 > 2)
    {
      if (v6 == 10)
      {
        *(a1 + 624) = a2;
        *(a1 + 628) = a3;
        *(a1 + 656) = a4;
        *(a1 + 660) = a5;
        *(a1 + 632) = -1;
        *(a1 + 640) = 0u;
      }

      else if (v6 == 6)
      {
        *(a1 + 528) = a2;
        *(a1 + 532) = a3;
        *(a1 + 560) = a4;
        *(a1 + 564) = a5;
        *(a1 + 536) = -1;
        *(a1 + 544) = 0u;
      }
    }

    else
    {
      *(a1 + 128) = -1;
      *(a1 + 136) = -1;
      *(a1 + 140) = a4;
      *(a1 + 144) = a5;
    }
  }

LABEL_5:
  if (qword_1025D48A0 != -1)
  {
    sub_101B7C774();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_10123DED0(a1, __p);
    v8 = v10 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v12 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CELL_LOC: override to, %s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7C860(a1);
  }
}

__n128 sub_10007AEC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 60) = *(a2 + 60);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  sub_10038EB38(v4 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v4 + 112) = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  v10 = *(a2 + 176);
  *(v4 + 160) = *(a2 + 160);
  *(v4 + 176) = v10;
  *(v4 + 128) = v8;
  *(v4 + 144) = v9;
  v11 = *(a2 + 192);
  v12 = *(a2 + 208);
  v13 = *(a2 + 240);
  *(v4 + 224) = *(a2 + 224);
  *(v4 + 240) = v13;
  *(v4 + 192) = v11;
  *(v4 + 208) = v12;
  v14 = *(a2 + 256);
  v15 = *(a2 + 272);
  v16 = *(a2 + 288);
  *(v4 + 300) = *(a2 + 300);
  *(v4 + 272) = v15;
  *(v4 + 288) = v16;
  *(v4 + 256) = v14;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v4 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v17 = *(a2 + 320);
    *(v4 + 336) = *(a2 + 336);
    *(v4 + 320) = v17;
  }

  v18 = *(a2 + 344);
  v19 = *(a2 + 376);
  *(v4 + 360) = *(a2 + 360);
  *(v4 + 376) = v19;
  *(v4 + 344) = v18;
  v20 = *(a2 + 392);
  v21 = *(a2 + 408);
  v22 = *(a2 + 440);
  *(v4 + 424) = *(a2 + 424);
  *(v4 + 440) = v22;
  *(v4 + 392) = v20;
  *(v4 + 408) = v21;
  v23 = *(a2 + 456);
  v24 = *(a2 + 472);
  v25 = *(a2 + 488);
  *(v4 + 504) = *(a2 + 504);
  *(v4 + 472) = v24;
  *(v4 + 488) = v25;
  *(v4 + 456) = v23;
  v26 = *(a2 + 512);
  v27 = *(a2 + 528);
  v28 = *(a2 + 560);
  *(v4 + 544) = *(a2 + 544);
  *(v4 + 560) = v28;
  *(v4 + 512) = v26;
  *(v4 + 528) = v27;
  v29 = *(a2 + 576);
  v30 = *(a2 + 592);
  v31 = *(a2 + 624);
  *(v4 + 608) = *(a2 + 608);
  *(v4 + 624) = v31;
  *(v4 + 576) = v29;
  *(v4 + 592) = v30;
  result = *(a2 + 640);
  v33 = *(a2 + 656);
  v34 = *(a2 + 672);
  *(v4 + 688) = *(a2 + 688);
  *(v4 + 656) = v33;
  *(v4 + 672) = v34;
  *(v4 + 640) = result;
  *(a1 + 8) = v4 + 696;
  return result;
}

void sub_10007B034(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 96) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10007B05C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v18 = *a1;
    v19 = 0x66FD0EB66FD0EB67 * ((v6 - *a1) >> 3) + 1;
    if (v19 > 0x5E293205E29320)
    {
      sub_10028C64C();
    }

    v20 = a2 - v18;
    v21 = 0x66FD0EB66FD0EB67 * ((v7 - v18) >> 3);
    v22 = 2 * v21;
    if (2 * v21 <= v19)
    {
      v22 = 0x66FD0EB66FD0EB67 * ((v6 - *a1) >> 3) + 1;
    }

    if (v21 >= 0x2F149902F14990)
    {
      v23 = 0x5E293205E29320;
    }

    else
    {
      v23 = v22;
    }

    *&v68 = a1;
    if (v23)
    {
      sub_100071EDC(a1, v23);
    }

    *&v66 = 0;
    *(&v66 + 1) = 8 * (v20 >> 3);
    v67 = *(&v66 + 1);
    sub_1006823FC(&v66, a3);
    v4 = sub_100682698(a1, &v66, v4);
    sub_10006FAE8(&v66);
  }

  else if (a2 == v6)
  {
    sub_10007AEC8(a1, a3);
  }

  else
  {
    v8 = *(a3 + 48);
    v68 = *(a3 + 32);
    v69[0] = v8;
    *(v69 + 12) = *(a3 + 60);
    v9 = *(a3 + 16);
    v66 = *a3;
    v67 = v9;
    v70 = *(a3 + 80);
    v110 = a1;
    v72 = 0;
    v10 = *(a3 + 88);
    v11 = *(a3 + 96);
    v71 = 0uLL;
    sub_10038EB38(&v71, v10, v11, (v11 - v10) >> 2);
    *(v84 + 12) = *(a3 + 300);
    v12 = *(a3 + 288);
    v83 = *(a3 + 272);
    v84[0] = v12;
    v13 = *(a3 + 224);
    v79 = *(a3 + 208);
    v80 = v13;
    v14 = *(a3 + 256);
    v81 = *(a3 + 240);
    v82 = v14;
    v15 = *(a3 + 160);
    v75 = *(a3 + 144);
    v76 = v15;
    v16 = *(a3 + 192);
    v77 = *(a3 + 176);
    v78 = v16;
    v17 = *(a3 + 128);
    v73 = *(a3 + 112);
    v74 = v17;
    if (*(a3 + 343) < 0)
    {
      sub_100007244(&v85, *(a3 + 320), *(a3 + 328));
    }

    else
    {
      v85 = *(a3 + 320);
      v86 = *(a3 + 336);
    }

    v24 = *(a3 + 488);
    v95 = *(a3 + 472);
    v96 = v24;
    v25 = *(a3 + 424);
    v91 = *(a3 + 408);
    v92 = v25;
    v26 = *(a3 + 456);
    v93 = *(a3 + 440);
    v94 = v26;
    v27 = *(a3 + 360);
    v87 = *(a3 + 344);
    v88 = v27;
    v28 = *(a3 + 392);
    v89 = *(a3 + 376);
    v90 = v28;
    v97 = *(a3 + 504);
    v29 = *(a3 + 656);
    v106 = *(a3 + 640);
    v107 = v29;
    v108 = *(a3 + 672);
    v109 = *(a3 + 688);
    v30 = *(a3 + 592);
    v102 = *(a3 + 576);
    v103 = v30;
    v31 = *(a3 + 624);
    v104 = *(a3 + 608);
    v105 = v31;
    v32 = *(a3 + 528);
    v98 = *(a3 + 512);
    v99 = v32;
    v33 = *(a3 + 560);
    v100 = *(a3 + 544);
    v101 = v33;
    sub_10068227C(a1, v4, a1[1], v4 + 696);
    *v4 = v66;
    v34 = v67;
    v35 = v68;
    v36 = v69[0];
    *(v4 + 60) = *(v69 + 12);
    *(v4 + 32) = v35;
    *(v4 + 48) = v36;
    *(v4 + 16) = v34;
    *(v4 + 80) = v70;
    v37 = *(v4 + 88);
    if (v37)
    {
      *(v4 + 96) = v37;
      operator delete(v37);
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
    }

    *(v4 + 88) = v71;
    *(v4 + 104) = v72;
    v72 = 0;
    v71 = 0uLL;
    v38 = v77;
    v40 = v74;
    v39 = v75;
    *(v4 + 160) = v76;
    *(v4 + 176) = v38;
    *(v4 + 128) = v40;
    *(v4 + 144) = v39;
    v41 = v81;
    v43 = v78;
    v42 = v79;
    *(v4 + 224) = v80;
    *(v4 + 240) = v41;
    *(v4 + 192) = v43;
    *(v4 + 208) = v42;
    v45 = v83;
    v44 = v84[0];
    v46 = v82;
    *(v4 + 300) = *(v84 + 12);
    *(v4 + 272) = v45;
    *(v4 + 288) = v44;
    *(v4 + 256) = v46;
    *(v4 + 112) = v73;
    if (*(v4 + 343) < 0)
    {
      operator delete(*(v4 + 320));
    }

    v47 = v85;
    *(v4 + 336) = v86;
    *(v4 + 320) = v47;
    HIBYTE(v86) = 0;
    LOBYTE(v85) = 0;
    v49 = v92;
    v48 = v93;
    v50 = v91;
    *(v4 + 392) = v90;
    *(v4 + 408) = v50;
    *(v4 + 424) = v49;
    *(v4 + 440) = v48;
    v52 = v88;
    v51 = v89;
    *(v4 + 344) = v87;
    *(v4 + 360) = v52;
    *(v4 + 376) = v51;
    v53 = v94;
    v54 = v95;
    v55 = v96;
    *(v4 + 504) = v97;
    *(v4 + 472) = v54;
    *(v4 + 488) = v55;
    *(v4 + 456) = v53;
    v56 = v98;
    v57 = v99;
    v58 = v101;
    *(v4 + 544) = v100;
    *(v4 + 560) = v58;
    *(v4 + 512) = v56;
    *(v4 + 528) = v57;
    v59 = v102;
    v60 = v103;
    v61 = v105;
    *(v4 + 608) = v104;
    *(v4 + 624) = v61;
    *(v4 + 576) = v59;
    *(v4 + 592) = v60;
    v62 = v106;
    v63 = v107;
    v64 = v108;
    *(v4 + 688) = v109;
    *(v4 + 656) = v63;
    *(v4 + 672) = v64;
    *(v4 + 640) = v62;
    sub_1000720CC(&v66);
  }

  return v4;
}

void sub_10007B41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007B458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_100682930(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 696;
        sub_1000720CC(v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void sub_10007B4D8(uint64_t a1)
{
  nullsub_34(a1 + 192);
  CFAbsoluteTimeGetCurrent();

  sub_10007BAA4(a1 + 120);
}

BOOL sub_10007B534(uint64_t a1)
{
  v4 = 0;
  v2 = 1;
  if (!sub_10000608C(a1, &v4, 1))
  {
    v5 = 3;
    return sub_10000608C(a1, &v5, 1) != 0;
  }

  return v2;
}

uint64_t sub_10007B5A0(unsigned int a1)
{
  if (a1 < 0xC && ((0xEFFu >> a1) & 1) != 0)
  {
    v2 = 0x7EFu >> a1;
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018FE88C();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67240450;
      v5[1] = a1;
      v6 = 2082;
      v7 = sub_10007ACC8(a1);
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CellLoc, Invalid rat, %{public}d, %{public}s, #CloneMe", v5, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FEAA4(a1);
    }

    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

id sub_10007B6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(*(a1 - 88) "vendor")];

  return [v5 syncgetBestMatchLocation:a3 forCell:a2];
}

void sub_10007B700(uint64_t a1)
{
  if (sub_1000735C0(*(a1 + 688)))
  {
    v2 = *(a1 + 688);
    sub_10000EC00(__p, "CellDatabase");
    v3 = sub_1006C5194(a1);
    v4 = sub_100652BD4(*(v3 + 32));
    sub_100BBF9F8(v2, __p, v4);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(a1 + 688);
    sub_10000EC00(__p, "CellLocalDatabase");
    v6 = sub_1006C521C(a1);
    v7 = sub_100652BD4(*(v6 + 32));
    sub_100BBF9F8(v5, __p, v7);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = *(a1 + 688);
    sub_10000EC00(__p, "CdmaCellDatabase");
    v9 = sub_1006C52A4(a1);
    v10 = sub_100652BD4(*(v9 + 32));
    sub_100BBF9F8(v8, __p, v10);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = *(a1 + 688);
    sub_10000EC00(__p, "CdmaCellLocalDatabase");
    v12 = sub_1006C532C(a1);
    v13 = sub_100652BD4(*(v12 + 32));
    sub_100BBF9F8(v11, __p, v13);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = *(a1 + 688);
    sub_10000EC00(__p, "ScdmaCellDatabase");
    v15 = sub_1006C5084(a1);
    v16 = sub_100652BD4(*(v15 + 32));
    sub_100BBF9F8(v14, __p, v16);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = *(a1 + 688);
    sub_10000EC00(__p, "ScdmaCellLocalDatabase");
    v18 = sub_1006C510C(a1);
    v19 = sub_100652BD4(*(v18 + 32));
    sub_100BBF9F8(v17, __p, v19);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v20 = *(a1 + 688);
    sub_10000EC00(__p, "LteCellDatabase");
    v21 = sub_100090470(a1);
    v22 = sub_100652BD4(*(v21 + 32));
    sub_100BBF9F8(v20, __p, v22);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = *(a1 + 688);
    sub_10000EC00(__p, "LteCellLocalDatabase");
    v24 = sub_10007BA1C(a1);
    v25 = sub_100652BD4(*(v24 + 32));
    sub_100BBF9F8(v23, __p, v25);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v26 = *(a1 + 688);
    sub_10000EC00(__p, "NrCellDatabase");
    v27 = sub_1006C53B4(a1);
    v28 = sub_100652BD4(*(v27 + 32));
    sub_100BBF9F8(v26, __p, v28);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v29 = *(a1 + 688);
    sub_10000EC00(__p, "NrCellLocalDatabase");
    v30 = sub_1006C543C(a1);
    v31 = sub_100652BD4(*(v30 + 32));
    sub_100BBF9F8(v29, __p, v31);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10007B9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007BA1C(uint64_t a1)
{
  result = *(a1 + 272);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_10007BAA4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v414 = v4;
  v415 = v5;
  v420 = v6;
  sub_10000EC00(&v501, "none");
  sub_10000EC00(&v499, "none");
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4620 != -1)
  {
    sub_1018FE9CC();
  }

  v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *v415;
    v10 = v415[1];
    v12 = (*(*v420 + 40))(v420);
    v13 = *(v3 + 96);
    v14 = vabdd_f64(v1, *(v3 + 76));
    *buf = 134349824;
    *&buf[4] = 0x66FD0EB66FD0EB67 * ((v10 - v11) >> 3);
    *&buf[12] = 1026;
    *&buf[14] = v12;
    *&buf[18] = 2050;
    *&buf[20] = v14;
    *&buf[28] = 1026;
    *&buf[30] = v13;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CellFlow, compute, cells, %{public}zu, spectators, %{public}d, last, %{public}.1lf, type, %{public}d", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE9F4(buf);
    v354 = *v415;
    v353 = v415[1];
    v355 = (*(*v420 + 40))(v420);
    v356 = *(v3 + 96);
    v357 = vabdd_f64(v1, *(v3 + 76));
    *v519 = 134349824;
    *&v519[4] = 0x66FD0EB66FD0EB67 * ((v353 - v354) >> 3);
    *&v519[12] = 1026;
    *&v519[14] = v355;
    *&v519[18] = 2050;
    *&v519[20] = v357;
    *&v519[28] = 1026;
    *&v519[30] = v356;
    v358 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v358);
    if (v358 != buf)
    {
      free(v358);
    }
  }

  v16 = *v415;
  v15 = v415[1];
  if (v15 == *v415)
  {
    (*(*v420 + 56))(v420, "nocells");
    goto LABEL_488;
  }

  v417 = 0;
  v17 = 0;
  v497 = 0;
  v496 = 0;
  v498 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v419 = _Q0;
  v416 = v15;
  do
  {
    v22 = *(v16 + 8);
    if (v22 >= 8 && v22 - 9 >= 2)
    {
      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v42 = v8[197];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        sub_10123DED0(v16, buf);
        v43 = buf;
        if (buf[23] < 0)
        {
          v43 = *buf;
        }

        *v519 = 136446210;
        *&v519[4] = v43;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "CellMatch, invalid cell, %{public}s, #CloneMe", v519, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        sub_10123DED0(v16, v519);
        v44 = v519;
        if (v519[23] < 0)
        {
          v44 = *v519;
        }

        *v536 = 136446210;
        *&v536[4] = v44;
        v37 = _os_log_send_and_compose_impl();
        if ((v519[23] & 0x80000000) != 0)
        {
          operator delete(*v519);
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (sub_10007B5A0(v22))
      {
        sub_10000EC00(v577, "none");
        sub_10000EC00(&v577[24], "weak");
        sub_10000EC00(&v577[48], "strong");
        sub_10000EC00(&v577[72], "exact");
        LODWORD(v429[0]) = 0;
        *&v519[4] = 0uLL;
        *&v519[20] = xmmword_101C75BF0;
        *&v519[36] = v419;
        *&v519[52] = v419;
        *&v519[68] = v419;
        *v519 = 0xFFFF;
        v520 = 0;
        v521 = 0xBFF0000000000000;
        v522 = 0uLL;
        LODWORD(v523) = 0;
        *(&v523 + 4) = 0xBFF0000000000000;
        HIDWORD(v523) = 0x7FFFFFFF;
        memset(v524, 0, 25);
        LODWORD(v429[0]) = (*(*v420 + 24))(v420, v16, v519);
        v495 = 0;
        *&v536[12] = 0;
        *&v536[4] = 0;
        *&v536[20] = xmmword_101C75BF0;
        *&v536[36] = v419;
        *&v536[52] = v419;
        *&v536[68] = v419;
        *v536 = 0xFFFF;
        v537 = 0;
        v538 = 0xBFF0000000000000;
        v539 = 0;
        v540 = 0;
        LODWORD(v541) = 0;
        *(&v541 + 4) = 0xBFF0000000000000;
        HIDWORD(v541) = 0x7FFFFFFF;
        *&v543 = 0;
        v542 = 0uLL;
        BYTE8(v543) = 0;
        if (SLODWORD(v429[0]) <= 2)
        {
          v495 = (*(*v420 + 32))(v420, v16, v536);
        }

        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v23 = v8[197];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = &v577[24 * SLODWORD(v429[0])];
          if (v24[23] < 0)
          {
            v24 = *v24;
          }

          sub_1000753AC(v502, v16);
          v25 = v504[9];
          v26 = *v502;
          sub_100072AFC(v519, __p);
          v27 = v502;
          if (v25 < 0)
          {
            v27 = v26;
          }

          v28 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v28 = __p[0];
          }

          *buf = 136446723;
          *&buf[4] = v24;
          *&buf[12] = 2081;
          *&buf[14] = v27;
          *&buf[22] = 2085;
          *&buf[24] = v28;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CellMatch, best network, %{public}s, %{private}s, location, %{sensitive}s", buf, 0x20u);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          if ((v504[9] & 0x80000000) != 0)
          {
            operator delete(*v502);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[196] != -1)
          {
            sub_1018FE9CC();
          }

          v65 = &v577[24 * SLODWORD(v429[0])];
          if (v65[23] < 0)
          {
            v65 = *v65;
          }

          sub_1000753AC(__p, v16);
          v66 = SHIBYTE(__p[2]);
          v67 = __p[0];
          sub_100072AFC(v519, &v493);
          v68 = __p;
          if (v66 < 0)
          {
            v68 = v67;
          }

          v69 = &v493;
          if (v494 < 0)
          {
            v69 = v493;
          }

          *v502 = 136446723;
          *&v502[4] = v65;
          v503 = 2081;
          *v504 = v68;
          *&v504[8] = 2085;
          *&v504[10] = v69;
          v70 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v494) < 0)
          {
            operator delete(v493);
          }

          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v70);
          if (v70 != buf)
          {
            free(v70);
          }
        }

        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v29 = v8[197];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = &v577[24 * v495];
          if (v30[23] < 0)
          {
            v30 = *v30;
          }

          sub_100072AFC(v536, buf);
          v31 = buf;
          if (buf[23] < 0)
          {
            v31 = *buf;
          }

          *v502 = 136446467;
          *&v502[4] = v30;
          v503 = 2085;
          *v504 = v31;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CellMatch, best tile, %{public}s, location, %{sensitive}s", v502, 0x16u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[196] != -1)
          {
            sub_1018FE9CC();
            v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v71 = &v577[24 * v495];
          if (v71[23] < 0)
          {
            v71 = *v71;
          }

          sub_100072AFC(v536, v502);
          v72 = v502;
          if (v504[9] < 0)
          {
            v72 = *v502;
          }

          LODWORD(__p[0]) = 136446467;
          *(__p + 4) = v71;
          WORD2(__p[1]) = 2085;
          *(&__p[1] + 6) = v72;
          v73 = _os_log_send_and_compose_impl();
          if ((v504[9] & 0x80000000) != 0)
          {
            operator delete(*v502);
          }

          sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v73);
          if (v73 != buf)
          {
            free(v73);
          }
        }

        v492 = 1;
        if (LODWORD(v429[0]) | v495)
        {
          if (SLODWORD(v429[0]) >= v495)
          {
            v492 = SLODWORD(v429[0]) < 3;
            v40 = v497;
            if (v497 >= v498)
            {
              v41 = sub_100094F30(&v496, v16, v429, v519, &v492);
            }

            else
            {
              sub_100682BEC(&v496, v16, v429, v519, &v492);
              v41 = v40 + 864;
            }

            v497 = v41;
            if (SHIBYTE(v500) < 0)
            {
              *(&v499 + 1) = 7;
              v46 = v499;
            }

            else
            {
              HIBYTE(v500) = 7;
              v46 = &v499;
            }

            strcpy(v46, "network");
            std::string::operator=(&v501, &v577[24 * SLODWORD(v429[0])]);
            ++HIDWORD(v417);
          }

          else
          {
            v492 = v495 < 2;
            v38 = v497;
            if (v497 >= v498)
            {
              v39 = sub_100094F30(&v496, v16, &v495, v536, &v492);
            }

            else
            {
              sub_100682BEC(&v496, v16, &v495, v536, &v492);
              v39 = v38 + 864;
            }

            v497 = v39;
            if (SHIBYTE(v500) < 0)
            {
              *(&v499 + 1) = 5;
              v45 = v499;
            }

            else
            {
              HIBYTE(v500) = 5;
              v45 = &v499;
            }

            strcpy(v45, "tiles");
            std::string::operator=(&v501, &v577[24 * v495]);
            LODWORD(v417) = v417 + 1;
          }

          if (p_info[196] != -1)
          {
            sub_1018FE9CC();
            v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v47 = v8[197];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            sub_1000753AC(v502, v16);
            v48 = v502;
            if (v504[9] < 0)
            {
              v48 = *v502;
            }

            v49 = &v499;
            if (v500 < 0)
            {
              v49 = v499;
            }

            v50 = &v577[24 * SLODWORD(v429[0])];
            if (v50[23] < 0)
            {
              v50 = *v50;
            }

            v51 = &v577[24 * v495];
            if (v51[23] < 0)
            {
              v51 = *v51;
            }

            *buf = 136381699;
            *&buf[4] = v48;
            *&buf[12] = 2082;
            *&buf[14] = v49;
            *&buf[22] = 2082;
            *&buf[24] = v50;
            *&buf[32] = 2082;
            *&buf[34] = v51;
            *&buf[42] = 1026;
            *&buf[44] = v492;
            _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_INFO, "CellMatch, prefer, %{private}s, %{public}s, levels, %{public}s, %{public}s, als, %{public}d", buf, 0x30u);
            if ((v504[9] & 0x80000000) != 0)
            {
              operator delete(*v502);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018FE9F4(buf);
            v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
            sub_1000753AC(__p, v16);
            v85 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v85 = __p[0];
            }

            v86 = &v499;
            if (v500 < 0)
            {
              v86 = v499;
            }

            v87 = &v577[24 * SLODWORD(v429[0])];
            if (v87[23] < 0)
            {
              v87 = *v87;
            }

            v88 = &v577[24 * v495];
            if (v88[23] < 0)
            {
              v88 = *v88;
            }

            *v502 = 136381699;
            *&v502[4] = v85;
            v503 = 2082;
            *v504 = v86;
            *&v504[8] = 2082;
            *&v504[10] = v87;
            *&v504[18] = 2082;
            *&v504[20] = v88;
            *&v504[28] = 1026;
            *&v504[30] = v492;
            v89 = _os_log_send_and_compose_impl();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v89);
            if (v89 != buf)
            {
              free(v89);
            }
          }
        }

        else
        {
          buf[0] = 1;
          v32 = v497;
          if (v497 >= v498)
          {
            v33 = sub_100094F30(&v496, v16, v429, v519, buf);
          }

          else
          {
            sub_100682BEC(&v496, v16, v429, v519, buf);
            v33 = v32 + 864;
          }

          v497 = v33;
          v17 = (v17 + 1);
        }

        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v52 = v8[197];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v17;
          sub_1000753AC(v502, v16);
          v54 = v504[9];
          v55 = *v502;
          v56 = SHIBYTE(v501.__r_.__value_.__r.__words[2]);
          v57 = v501.__r_.__value_.__r.__words[0];
          v58 = SHIBYTE(v500);
          v59 = v499;
          sub_100075160(v16, __p);
          v60 = &v499;
          if (v58 < 0)
          {
            v60 = v59;
          }

          v61 = &v501;
          if (v56 < 0)
          {
            v61 = v57;
          }

          v62 = v502;
          if (v54 < 0)
          {
            v62 = v55;
          }

          *buf = 136381699;
          v63 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v63 = __p[0];
          }

          *&buf[4] = v62;
          *&buf[12] = 2082;
          *&buf[14] = v61;
          *&buf[22] = 2082;
          *&buf[24] = v60;
          *&buf[32] = 2082;
          *&buf[34] = v63;
          *&buf[42] = 1026;
          *&buf[44] = v492;
          _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "@CellFlow, match, %{private}s, %{public}s, %{public}s, rat, %{public}s, needsAls, %{public}d", buf, 0x30u);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          v17 = v53;
          v15 = v416;
          if ((v504[9] & 0x80000000) != 0)
          {
            operator delete(*v502);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FE9F4(buf);
          v413 = v17;
          sub_1000753AC(__p, v16);
          v74 = SHIBYTE(__p[2]);
          v75 = __p[0];
          v76 = SHIBYTE(v501.__r_.__value_.__r.__words[2]);
          v77 = v501.__r_.__value_.__r.__words[0];
          v78 = SHIBYTE(v500);
          v79 = v499;
          sub_100075160(v16, &v493);
          v80 = &v499;
          if (v78 < 0)
          {
            v80 = v79;
          }

          v81 = &v501;
          if (v76 < 0)
          {
            v81 = v77;
          }

          v82 = __p;
          if (v74 < 0)
          {
            v82 = v75;
          }

          *v502 = 136381699;
          v83 = &v493;
          if (v494 < 0)
          {
            v83 = v493;
          }

          *&v502[4] = v82;
          v503 = 2082;
          *v504 = v81;
          *&v504[8] = 2082;
          *&v504[10] = v80;
          *&v504[18] = 2082;
          *&v504[20] = v83;
          *&v504[28] = 1026;
          *&v504[30] = v492;
          v84 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v494) < 0)
          {
            operator delete(v493);
          }

          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          v17 = v413;
          v15 = v416;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v84);
          if (v84 != buf)
          {
            free(v84);
          }
        }

        for (i = 0; i != -96; i -= 24)
        {
          if (v577[i + 95] < 0)
          {
            operator delete(*&v577[i + 72]);
          }
        }

        goto LABEL_118;
      }

      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v34 = v8[197];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_10123DED0(v16, buf);
        v35 = buf;
        if (buf[23] < 0)
        {
          v35 = *buf;
        }

        *v519 = 136380675;
        *&v519[4] = v35;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "CellMatch, ignoring cell, %{private}s", v519, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        sub_10123DED0(v16, v519);
        v36 = v519;
        if (v519[23] < 0)
        {
          v36 = *v519;
        }

        *v536 = 136380675;
        *&v536[4] = v36;
        v37 = _os_log_send_and_compose_impl();
        if ((v519[23] & 0x80000000) != 0)
        {
          operator delete(*v519);
        }

LABEL_52:
        sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }
      }
    }

LABEL_118:
    v16 += 696;
  }

  while (v16 != v15);
  (*(*v420 + 96))(v420, HIDWORD(v417), v417, v17);
  v90 = v497;
  v91 = v496;
  if (v497 == v496)
  {
    v418 = 0;
  }

  else
  {
    v92 = 0;
    memset(v519, 0, 24);
    do
    {
      if (!*(v91 + 4))
      {
        if (v92 >= *&v519[16])
        {
          v92 = sub_10009722C(v519, v91);
        }

        else
        {
          sub_100682DE0(v519, v91);
          v92 += 864;
        }

        *&v519[8] = v92;
      }

      v91 += 864;
    }

    while (v91 != v90);
    v93 = *v519;
    if (v92 == *v519)
    {
      v132 = v496;
      v133 = v497;
      if (v496 != v497)
      {
        while (1)
        {
          *buf = *v132;
          v134 = *(v132 + 16);
          v135 = *(v132 + 32);
          v136 = *(v132 + 48);
          *&buf[60] = *(v132 + 60);
          *&buf[32] = v135;
          *&buf[48] = v136;
          *&buf[16] = v134;
          *&v583[4] = *(v132 + 80);
          v584 = 0;
          v585 = 0;
          *&v583[12] = 0;
          sub_10038EB38(&v583[12], *(v132 + 88), *(v132 + 96), (*(v132 + 96) - *(v132 + 88)) >> 2);
          v586 = *(v132 + 112);
          v137 = *(v132 + 128);
          v138 = *(v132 + 144);
          v139 = *(v132 + 176);
          v589 = *(v132 + 160);
          v590 = v139;
          v587 = v137;
          v588 = v138;
          v140 = *(v132 + 192);
          v141 = *(v132 + 208);
          v142 = *(v132 + 240);
          v593 = *(v132 + 224);
          v594 = v142;
          v591 = v140;
          v592 = v141;
          v143 = *(v132 + 256);
          v144 = *(v132 + 272);
          v145 = *(v132 + 288);
          *(v597 + 12) = *(v132 + 300);
          v596 = v144;
          v597[0] = v145;
          v595 = v143;
          if (*(v132 + 343) < 0)
          {
            sub_100007244(&v598, *(v132 + 320), *(v132 + 328));
          }

          else
          {
            v146 = *(v132 + 320);
            v599 = *(v132 + 336);
            v598 = v146;
          }

          v147 = *(v132 + 344);
          v148 = *(v132 + 376);
          v601 = *(v132 + 360);
          v602 = v148;
          v600 = v147;
          v149 = *(v132 + 392);
          v150 = *(v132 + 408);
          v151 = *(v132 + 440);
          v605 = *(v132 + 424);
          v606 = v151;
          v603 = v149;
          v604 = v150;
          v152 = *(v132 + 456);
          v153 = *(v132 + 472);
          v154 = *(v132 + 488);
          v610 = *(v132 + 504);
          v608 = v153;
          v609 = v154;
          v607 = v152;
          v155 = *(v132 + 512);
          v156 = *(v132 + 528);
          v157 = *(v132 + 560);
          v613 = *(v132 + 544);
          v614 = v157;
          v611 = v155;
          v612 = v156;
          v158 = *(v132 + 576);
          v159 = *(v132 + 592);
          v160 = *(v132 + 624);
          v617 = *(v132 + 608);
          v618 = v160;
          v615 = v158;
          v616 = v159;
          v161 = *(v132 + 640);
          v162 = *(v132 + 656);
          v163 = *(v132 + 672);
          v622 = *(v132 + 688);
          v620 = v162;
          v621 = v163;
          v619 = v161;
          v623 = *(v132 + 696);
          v164 = *(v132 + 716);
          v624 = *(v132 + 700);
          v625 = v164;
          v165 = *(v132 + 780);
          v167 = *(v132 + 732);
          v166 = *(v132 + 748);
          v628 = *(v132 + 764);
          v629 = v165;
          v626 = v167;
          v627 = v166;
          v169 = *(v132 + 812);
          v168 = *(v132 + 828);
          v170 = *(v132 + 796);
          *&v632[12] = *(v132 + 840);
          v631 = v169;
          *v632 = v168;
          v630 = v170;
          v171 = *(v132 + 856);
          v633 = v171;
          if (SHIBYTE(v599) < 0)
          {
            operator delete(v598);
          }

          if (*&v583[12])
          {
            v584 = *&v583[12];
            operator delete(*&v583[12]);
          }

          if (v171)
          {
            break;
          }

          v132 += 864;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (v132 == v133)
          {
            v132 = v133;
            goto LABEL_205;
          }
        }

        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
LABEL_205:
        v133 = v497;
      }

      _ZF = v132 == v133;
    }

    else
    {
      while (1)
      {
        *buf = *v93;
        v94 = *(v93 + 16);
        v95 = *(v93 + 32);
        v96 = *(v93 + 48);
        *&buf[60] = *(v93 + 60);
        *&buf[32] = v95;
        *&buf[48] = v96;
        *&buf[16] = v94;
        *&v583[4] = *(v93 + 80);
        v584 = 0;
        v585 = 0;
        *&v583[12] = 0;
        sub_10038EB38(&v583[12], *(v93 + 88), *(v93 + 96), (*(v93 + 96) - *(v93 + 88)) >> 2);
        v586 = *(v93 + 112);
        v97 = *(v93 + 128);
        v98 = *(v93 + 144);
        v99 = *(v93 + 176);
        v589 = *(v93 + 160);
        v590 = v99;
        v587 = v97;
        v588 = v98;
        v100 = *(v93 + 192);
        v101 = *(v93 + 208);
        v102 = *(v93 + 240);
        v593 = *(v93 + 224);
        v594 = v102;
        v591 = v100;
        v592 = v101;
        v103 = *(v93 + 256);
        v104 = *(v93 + 272);
        v105 = *(v93 + 288);
        *(v597 + 12) = *(v93 + 300);
        v596 = v104;
        v597[0] = v105;
        v595 = v103;
        if (*(v93 + 343) < 0)
        {
          sub_100007244(&v598, *(v93 + 320), *(v93 + 328));
        }

        else
        {
          v106 = *(v93 + 320);
          v599 = *(v93 + 336);
          v598 = v106;
        }

        v107 = *(v93 + 344);
        v108 = *(v93 + 376);
        v601 = *(v93 + 360);
        v602 = v108;
        v600 = v107;
        v109 = *(v93 + 392);
        v110 = *(v93 + 408);
        v111 = *(v93 + 440);
        v605 = *(v93 + 424);
        v606 = v111;
        v603 = v109;
        v604 = v110;
        v112 = *(v93 + 456);
        v113 = *(v93 + 472);
        v114 = *(v93 + 488);
        v610 = *(v93 + 504);
        v608 = v113;
        v609 = v114;
        v607 = v112;
        v115 = *(v93 + 512);
        v116 = *(v93 + 528);
        v117 = *(v93 + 560);
        v613 = *(v93 + 544);
        v614 = v117;
        v611 = v115;
        v612 = v116;
        v118 = *(v93 + 576);
        v119 = *(v93 + 592);
        v120 = *(v93 + 624);
        v617 = *(v93 + 608);
        v618 = v120;
        v615 = v118;
        v616 = v119;
        v121 = *(v93 + 640);
        v122 = *(v93 + 656);
        v123 = *(v93 + 672);
        v622 = *(v93 + 688);
        v620 = v122;
        v621 = v123;
        v619 = v121;
        v623 = *(v93 + 696);
        v124 = *(v93 + 716);
        v624 = *(v93 + 700);
        v625 = v124;
        v125 = *(v93 + 780);
        v127 = *(v93 + 732);
        v126 = *(v93 + 748);
        v628 = *(v93 + 764);
        v629 = v125;
        v626 = v127;
        v627 = v126;
        v129 = *(v93 + 812);
        v128 = *(v93 + 828);
        v130 = *(v93 + 796);
        *&v632[12] = *(v93 + 840);
        v631 = v129;
        *v632 = v128;
        v630 = v130;
        v131 = *(v93 + 856);
        v633 = v131;
        if (SHIBYTE(v599) < 0)
        {
          operator delete(v598);
        }

        if (*&v583[12])
        {
          v584 = *&v583[12];
          operator delete(*&v583[12]);
        }

        if (v131)
        {
          break;
        }

        v93 += 864;
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        if (v93 == v92)
        {
          v93 = v92;
          goto LABEL_203;
        }
      }

      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
LABEL_203:
      _ZF = v93 == *&v519[8];
    }

    v173 = !_ZF;
    v418 = v173;
    *buf = v519;
    sub_100093EE8(buf);
    v91 = v496;
    v90 = v497;
  }

  memset(__p, 0, 24);
  sub_100097884(__p, v91, v90, 0x84BDA12F684BDA13 * ((v90 - v91) >> 5));
  v174 = 126 - 2 * __clz(0x84BDA12F684BDA13 * ((__p[1] - __p[0]) >> 5));
  if (__p[1] == __p[0])
  {
    v175 = 0;
  }

  else
  {
    v175 = v174;
  }

  sub_100095494(__p[0], __p[1], v175, 1);
  if (p_info[196] != -1)
  {
    sub_1018FE9CC();
    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v176 = v8[197];
  if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
  {
    v177 = 0x66FD0EB66FD0EB67 * ((v415[1] - *v415) >> 3);
    *buf = 134349824;
    *&buf[4] = v177;
    *&buf[12] = 2050;
    *&buf[14] = 0x84BDA12F684BDA13 * ((v497 - v496) >> 5);
    *&buf[22] = 2050;
    *&buf[24] = 0x84BDA12F684BDA13 * ((__p[1] - __p[0]) >> 5);
    *&buf[32] = 1026;
    *&buf[34] = v418;
    _os_log_impl(dword_100000000, v176, OS_LOG_TYPE_DEFAULT, "@CellFlow, counts, in, %{public}lu, sortIn, %{public}lu, sortOut, %{public}lu, shouldQuery, %{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE9F4(buf);
    v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v359 = 0x66FD0EB66FD0EB67 * ((v415[1] - *v415) >> 3);
    *v519 = 134349824;
    *&v519[4] = v359;
    *&v519[12] = 2050;
    *&v519[14] = 0x84BDA12F684BDA13 * ((v497 - v496) >> 5);
    *&v519[22] = 2050;
    *&v519[24] = 0x84BDA12F684BDA13 * ((__p[1] - __p[0]) >> 5);
    *&v519[32] = 1026;
    *&v519[34] = v418;
    v360 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v360);
    if (v360 != buf)
    {
      free(v360);
    }
  }

  v178 = __p[0];
  for (j = __p[1]; v178 != j; v178 += 864)
  {
    if (p_info[196] != -1)
    {
      sub_1018FE9CC();
      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v180 = v8[197];
    if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
    {
      sub_1000753AC(buf, v178);
      v181 = buf[23];
      v182 = *buf;
      sub_100072AFC((v178 + 700), v519);
      if (v181 >= 0)
      {
        v183 = buf;
      }

      else
      {
        v183 = v182;
      }

      if (v519[23] >= 0)
      {
        v184 = v519;
      }

      else
      {
        v184 = *v519;
      }

      *v536 = 136380931;
      *&v536[4] = v183;
      *&v536[12] = 2085;
      *&v536[14] = v184;
      _os_log_impl(dword_100000000, v180, OS_LOG_TYPE_DEBUG, "CellMatch, preferred cell matches, in ascending order, %{private}s, %{sensitive}s", v536, 0x16u);
      if ((v519[23] & 0x80000000) != 0)
      {
        operator delete(*v519);
      }

      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if (sub_10000A100(121, 2))
    {
      sub_1018FE9F4(buf);
      sub_1000753AC(v519, v178);
      v185 = v519[23];
      v186 = *v519;
      sub_100072AFC((v178 + 700), v536);
      if (v185 >= 0)
      {
        v187 = v519;
      }

      else
      {
        v187 = v186;
      }

      v188 = v536;
      if (v536[23] < 0)
      {
        v188 = *v536;
      }

      *v577 = 136380931;
      *&v577[4] = v187;
      *&v577[12] = 2085;
      *&v577[14] = v188;
      v189 = _os_log_send_and_compose_impl();
      if ((v536[23] & 0x80000000) != 0)
      {
        operator delete(*v536);
      }

      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      if ((v519[23] & 0x80000000) != 0)
      {
        operator delete(*v519);
      }

      sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v189);
      if (v189 != buf)
      {
        free(v189);
      }

      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }
  }

  *&v577[12] = 0;
  *&v577[4] = 0;
  *&v577[20] = xmmword_101C75BF0;
  *&v577[36] = v419;
  *&v577[52] = v419;
  *&v577[68] = v419;
  *v577 = 0xFFFF;
  *&v577[84] = 0;
  *&v577[88] = 0xBFF0000000000000;
  v578 = 0uLL;
  *(&v579 + 4) = 0xBFF0000000000000;
  LODWORD(v579) = 0;
  HIDWORD(v579) = 0x7FFFFFFF;
  memset(v580, 0, 25);
  v190 = *v415;
  *v536 = **v415;
  v191 = *(v190 + 16);
  v192 = *(v190 + 32);
  v193 = *(v190 + 48);
  *&v536[60] = *(v190 + 60);
  *&v536[32] = v192;
  *&v536[48] = v193;
  *&v536[80] = *(v190 + 80);
  v540 = 0;
  v538 = 0;
  v539 = 0;
  v194 = *(v190 + 88);
  v195 = *(v190 + 96);
  *&v536[16] = v191;
  sub_10038EB38(&v538, v194, v195, (v195 - v194) >> 2);
  v196 = *(v190 + 256);
  v197 = *(v190 + 272);
  v198 = *(v190 + 288);
  *(v552 + 12) = *(v190 + 300);
  v541 = *(v190 + 112);
  v199 = *(v190 + 128);
  v200 = *(v190 + 144);
  v201 = *(v190 + 176);
  v544 = *(v190 + 160);
  v545 = v201;
  v542 = v199;
  v543 = v200;
  v202 = *(v190 + 192);
  v203 = *(v190 + 208);
  v204 = *(v190 + 240);
  v548 = *(v190 + 224);
  v549 = v204;
  v546 = v202;
  v547 = v203;
  v551 = v197;
  v552[0] = v198;
  v550 = v196;
  if (*(v190 + 343) < 0)
  {
    sub_100007244(&__src, *(v190 + 320), *(v190 + 328));
  }

  else
  {
    v205 = *(v190 + 320);
    __src.__r_.__value_.__r.__words[2] = *(v190 + 336);
    *&__src.__r_.__value_.__l.__data_ = v205;
  }

  v206 = *(v190 + 344);
  v207 = *(v190 + 376);
  v555 = *(v190 + 360);
  v556 = v207;
  v554 = v206;
  v208 = *(v190 + 392);
  v209 = *(v190 + 408);
  v210 = *(v190 + 440);
  v559 = *(v190 + 424);
  v560 = v210;
  v557 = v208;
  v558 = v209;
  v211 = *(v190 + 504);
  v212 = *(v190 + 456);
  v213 = *(v190 + 488);
  v562 = *(v190 + 472);
  v563 = v213;
  v561 = v212;
  v564 = v211;
  v214 = *(v190 + 512);
  v215 = *(v190 + 528);
  v216 = *(v190 + 560);
  v567 = *(v190 + 544);
  v568 = v216;
  v565 = v214;
  v566 = v215;
  v217 = *(v190 + 576);
  v218 = *(v190 + 592);
  v219 = *(v190 + 624);
  v571 = *(v190 + 608);
  v572 = v219;
  v569 = v217;
  v570 = v218;
  v220 = *(v190 + 640);
  v221 = *(v190 + 656);
  v222 = *(v190 + 672);
  v576 = *(v190 + 688);
  v574 = v221;
  v575 = v222;
  v573 = v220;
  v223 = __p[1];
  if (__p[1] != __p[0])
  {
    *v536 = *(__p[1] - 54);
    v224 = *(__p[1] - 53);
    v225 = *(__p[1] - 52);
    v226 = *(__p[1] - 51);
    *&v536[60] = *(__p[1] - 804);
    *&v536[32] = v225;
    *&v536[48] = v226;
    *&v536[16] = v224;
    *&v536[80] = *(__p[1] - 196);
    if (v536 != __p[1] - 864)
    {
      sub_100731D80(&v538, *(__p[1] - 97), *(__p[1] - 96), (*(__p[1] - 96) - *(__p[1] - 97)) >> 2);
    }

    v541 = *(v223 - 47);
    v227 = *(v223 - 46);
    v228 = *(v223 - 45);
    v229 = *(v223 - 43);
    v544 = *(v223 - 44);
    v545 = v229;
    v542 = v227;
    v543 = v228;
    v230 = *(v223 - 42);
    v231 = *(v223 - 41);
    v232 = *(v223 - 39);
    v548 = *(v223 - 40);
    v549 = v232;
    v546 = v230;
    v547 = v231;
    v233 = *(v223 - 38);
    v234 = *(v223 - 37);
    v235 = *(v223 - 36);
    *(v552 + 12) = *(v223 - 564);
    v551 = v234;
    v552[0] = v235;
    v550 = v233;
    std::string::operator=(&__src, (v223 - 34));
    v236 = *(v223 - 520);
    v237 = *(v223 - 488);
    v555 = *(v223 - 504);
    v556 = v237;
    v554 = v236;
    v238 = *(v223 - 472);
    v239 = *(v223 - 456);
    v240 = *(v223 - 424);
    v559 = *(v223 - 440);
    v560 = v240;
    v557 = v238;
    v558 = v239;
    v241 = *(v223 - 408);
    v242 = *(v223 - 392);
    v243 = *(v223 - 376);
    v564 = *(v223 - 90);
    v562 = v242;
    v563 = v243;
    v561 = v241;
    v244 = *(v223 - 22);
    v245 = *(v223 - 21);
    v246 = *(v223 - 19);
    v567 = *(v223 - 20);
    v568 = v246;
    v565 = v244;
    v566 = v245;
    v247 = *(v223 - 18);
    v248 = *(v223 - 17);
    v249 = *(v223 - 15);
    v571 = *(v223 - 16);
    v572 = v249;
    v569 = v247;
    v570 = v248;
    v250 = *(v223 - 14);
    v251 = *(v223 - 13);
    v252 = *(v223 - 12);
    v576 = *(v223 - 44);
    v574 = v251;
    v575 = v252;
    v573 = v250;
    v253 = *(v223 - 148);
    *v577 = *(v223 - 164);
    *&v577[16] = v253;
    v254 = *(v223 - 132);
    v255 = *(v223 - 116);
    v256 = *(v223 - 84);
    *&v577[64] = *(v223 - 100);
    *&v577[80] = v256;
    *&v577[32] = v254;
    *&v577[48] = v255;
    v257 = *(v223 - 68);
    v258 = *(v223 - 52);
    v259 = *(v223 - 36);
    *&v580[12] = *(v223 - 24);
    v579 = v258;
    *v580 = v259;
    v578 = v257;
  }

  v492 = 0;
  if (v418 && (*(*v420 + 40))(v420))
  {
    v492 = (*(*v420 + 72))(v420);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (p_info[196] != -1)
  {
    sub_1018FE9CC();
    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v261 = v8[197];
  if (os_log_type_enabled(v261, OS_LOG_TYPE_DEBUG))
  {
    sub_100075160(v536, v519);
    v262 = v519[23];
    v263 = *v519;
    sub_100096990(v536, v502);
    v264 = v519;
    if (v262 < 0)
    {
      v264 = v263;
    }

    if (v504[9] >= 0)
    {
      v265 = v502;
    }

    else
    {
      v265 = *v502;
    }

    v266 = &v499;
    if (v500 < 0)
    {
      v266 = v499;
    }

    v267 = &v501;
    if ((v501.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v267 = v501.__r_.__value_.__r.__words[0];
    }

    *buf = 136447747;
    *&buf[4] = v414;
    *&buf[12] = 2082;
    *&buf[14] = v264;
    *&buf[22] = 2082;
    *&buf[24] = v265;
    *&buf[32] = 2049;
    *&buf[34] = *&v577[20];
    *&buf[42] = 2082;
    *&buf[44] = v266;
    *&buf[52] = 2082;
    *&buf[54] = v267;
    *&buf[62] = 1026;
    *&buf[64] = Current % 10;
    _os_log_impl(dword_100000000, v261, OS_LOG_TYPE_DEBUG, "UclpMetric, fixattempt, %{public}s, %{public}s, %{public}s, acc, %{private}.0f, %{public}s, %{public}s, submit10, %{public}d", buf, 0x44u);
    if ((v504[9] & 0x80000000) != 0)
    {
      operator delete(*v502);
    }

    v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if ((v519[23] & 0x80000000) != 0)
    {
      operator delete(*v519);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE9F4(buf);
    sub_100075160(v536, v502);
    v361 = v504[9];
    v362 = *v502;
    sub_100096990(v536, &v493);
    v363 = v502;
    if (v361 < 0)
    {
      v363 = v362;
    }

    if (v494 >= 0)
    {
      v364 = &v493;
    }

    else
    {
      v364 = v493;
    }

    v365 = &v499;
    if (v500 < 0)
    {
      v365 = v499;
    }

    v366 = &v501;
    if ((v501.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v366 = v501.__r_.__value_.__r.__words[0];
    }

    *v519 = 136447747;
    *&v519[4] = v414;
    *&v519[12] = 2082;
    *&v519[14] = v363;
    *&v519[22] = 2082;
    *&v519[24] = v364;
    *&v519[32] = 2049;
    *&v519[34] = *&v577[20];
    *&v519[42] = 2082;
    *&v519[44] = v365;
    *&v519[52] = 2082;
    *&v519[54] = v366;
    *&v519[62] = 1026;
    *&v519[64] = Current % 10;
    v367 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v494) < 0)
    {
      operator delete(v493);
    }

    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if ((v504[9] & 0x80000000) != 0)
    {
      operator delete(*v502);
    }

    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v367);
    if (v367 != buf)
    {
      free(v367);
    }
  }

  if (!(Current % 10))
  {
    v431 = _NSConcreteStackBlock;
    v432 = 3321888768;
    v437 = *&v536[16];
    v438 = *&v536[32];
    v439[0] = *&v536[48];
    *(v439 + 12) = *&v536[60];
    v433 = sub_10025BFA4;
    v434 = &unk_1024685C0;
    v435 = v414;
    v436 = *v536;
    v440 = *&v536[80];
    v442 = 0;
    v443 = 0;
    v441 = 0;
    sub_10038EB38(&v441, v538, v539, (v539 - v538) >> 2);
    v453 = v550;
    v454 = v551;
    v455[0] = v552[0];
    *(v455 + 12) = *(v552 + 12);
    v451 = v548;
    v452 = v549;
    v449 = v546;
    v450 = v547;
    v445 = v542;
    v446 = v543;
    v447 = v544;
    v448 = v545;
    v444 = v541;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100007244(&v456, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
    }

    else
    {
      v456 = __src;
    }

    v465 = v562;
    v466 = v563;
    v467 = v564;
    v461 = v558;
    v462 = v559;
    v463 = v560;
    v464 = v561;
    v457 = v554;
    v458 = v555;
    v459 = v556;
    v460 = v557;
    v476 = v573;
    v477 = v574;
    v478 = v575;
    v472 = v569;
    v473 = v570;
    v474 = v571;
    v475 = v572;
    v468 = v565;
    v469 = v566;
    v470 = v567;
    v471 = v568;
    v479 = v576;
    *&v491[12] = *&v580[12];
    v489 = v578;
    v490 = v579;
    *v491 = *v580;
    v485 = *&v577[32];
    v486 = *&v577[48];
    v487 = *&v577[64];
    v488 = *&v577[80];
    v483 = *v577;
    v484 = *&v577[16];
    if (SHIBYTE(v500) < 0)
    {
      sub_100007244(&v480, v499, *(&v499 + 1));
    }

    else
    {
      v480 = v499;
      v481 = v500;
    }

    if (SHIBYTE(v501.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100007244(&v482, v501.__r_.__value_.__l.__data_, v501.__r_.__value_.__l.__size_);
    }

    else
    {
      v482 = v501;
    }

    AnalyticsSendEventLazy();
    if (SHIBYTE(v482.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v482.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v481) < 0)
    {
      operator delete(v480);
    }

    if (SHIBYTE(v456.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v456.__r_.__value_.__l.__data_);
    }

    if (v441)
    {
      v442 = v441;
      operator delete(v441);
    }
  }

  if (*&v577[20] < 0.0)
  {
    if (p_info[196] != -1)
    {
      sub_1018FE9CC();
      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v269 = v8[197];
    if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000753AC(buf, v536);
      v270 = buf[23] >= 0 ? buf : *buf;
      *v519 = 136380931;
      *&v519[4] = v270;
      *&v519[12] = 1026;
      *&v519[14] = v492;
      _os_log_impl(dword_100000000, v269, OS_LOG_TYPE_DEFAULT, "@ClxCell, Fix, 0, ll, N/A, Unknown, %{private}s, querying, %{public}d", v519, 0x12u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE9F4(buf);
      v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      sub_1000753AC(v519, v536);
      if (v519[23] >= 0)
      {
        v368 = v519;
      }

      else
      {
        v368 = *v519;
      }

      *v502 = 136380931;
      *&v502[4] = v368;
      v503 = 1026;
      *v504 = v492;
      v369 = _os_log_send_and_compose_impl();
      if ((v519[23] & 0x80000000) != 0)
      {
        operator delete(*v519);
      }

      sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v369);
      if (v369 != buf)
      {
        free(v369);
      }
    }

    v271 = *v420;
    if (v492)
    {
      v272 = (v271 + 104);
      v273 = "alsquery";
    }

    else
    {
      v272 = (v271 + 56);
      v273 = "nofix";
    }

    (*v272)(v420, v273);
    if (*&v536[8] == 10)
    {
      if ((*(*v420 + 48))(v420))
      {
        (*(*v420 + 80))(v420, "nr cell nofix");
      }

      else
      {
        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v296 = v8[197];
        if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
        {
          v297 = (*(*v420 + 48))(v420);
          *buf = 67240192;
          *&buf[4] = v297;
          _os_log_impl(dword_100000000, v296, OS_LOG_TYPE_DEFAULT, "CellFlow, skipreqwifi, locationclients, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FE9F4(buf);
          v298 = (*(*v420 + 48))(v420);
          *v519 = 67240192;
          *&v519[4] = v298;
          v299 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v299);
          if (v299 != buf)
          {
            free(v299);
          }
        }
      }
    }

    goto LABEL_483;
  }

  if (*&v536[8] == 6)
  {
    v274 = *(sub_10007513C(v536, v268) + 56);
  }

  else
  {
    v274 = -1;
  }

  v275 = (*(*v420 + 112))(v420, v536, v577);
  if (p_info[196] != -1)
  {
    sub_1018FE9CC();
    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v276 = v8[197];
  if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000753AC(v519, v536);
    if (v519[23] >= 0)
    {
      v277 = v519;
    }

    else
    {
      v277 = *v519;
    }

    v278 = *&v577[20];
    if (v500 >= 0)
    {
      v279 = &v499;
    }

    else
    {
      v279 = v499;
    }

    if ((v501.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v280 = &v501;
    }

    else
    {
      v280 = v501.__r_.__value_.__r.__words[0];
    }

    sub_100075160(v536, v502);
    v281 = v504[9];
    v282 = *v502;
    sub_100096990(v536, &v493);
    v283 = v502;
    if (v281 < 0)
    {
      v283 = v282;
    }

    if (v494 >= 0)
    {
      v284 = &v493;
    }

    else
    {
      v284 = v493;
    }

    *buf = 136382723;
    *&buf[4] = v277;
    *&buf[12] = 2049;
    *&buf[14] = v278;
    *&buf[22] = 2082;
    *&buf[24] = v279;
    *&buf[32] = 2082;
    *&buf[34] = v280;
    *&buf[42] = 2082;
    *&buf[44] = v283;
    *&buf[52] = 2082;
    *&buf[54] = v284;
    *&buf[62] = 1026;
    *&buf[64] = v275;
    *&buf[68] = 1026;
    *&buf[70] = v274;
    *&buf[74] = 2082;
    *v583 = v414;
    _os_log_impl(dword_100000000, v276, OS_LOG_TYPE_DEFAULT, "CellFlow, fix, %{private}s, acc, %{private}.0f, %{public}s, %{public}s, %{public}s, %{public}s, notify, %{public}d, deploymentType, %{public}d, %{public}s", buf, 0x54u);
    if (SHIBYTE(v494) < 0)
    {
      operator delete(v493);
    }

    v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if ((v504[9] & 0x80000000) != 0)
    {
      operator delete(*v502);
    }

    if ((v519[23] & 0x80000000) != 0)
    {
      operator delete(*v519);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE9F4(buf);
    sub_1000753AC(v502, v536);
    if (v504[9] >= 0)
    {
      v370 = v502;
    }

    else
    {
      v370 = *v502;
    }

    v371 = *&v577[20];
    if (v500 >= 0)
    {
      v372 = &v499;
    }

    else
    {
      v372 = v499;
    }

    if ((v501.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v373 = &v501;
    }

    else
    {
      v373 = v501.__r_.__value_.__r.__words[0];
    }

    sub_100075160(v536, &v493);
    v374 = SHIBYTE(v494);
    v375 = v493;
    sub_100096990(v536, v429);
    v376 = &v493;
    if (v374 < 0)
    {
      v376 = v375;
    }

    if (v430 >= 0)
    {
      v377 = v429;
    }

    else
    {
      v377 = v429[0];
    }

    *v519 = 136382723;
    *&v519[4] = v370;
    *&v519[12] = 2049;
    *&v519[14] = v371;
    *&v519[22] = 2082;
    *&v519[24] = v372;
    *&v519[32] = 2082;
    *&v519[34] = v373;
    *&v519[42] = 2082;
    *&v519[44] = v376;
    *&v519[52] = 2082;
    *&v519[54] = v377;
    *&v519[62] = 1026;
    *&v519[64] = v275;
    *&v519[68] = 1026;
    *&v519[70] = v274;
    *&v519[74] = 2082;
    *&v519[76] = v414;
    v378 = _os_log_send_and_compose_impl();
    if (v430 < 0)
    {
      operator delete(v429[0]);
    }

    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if (SHIBYTE(v494) < 0)
    {
      operator delete(v493);
    }

    if ((v504[9] & 0x80000000) != 0)
    {
      operator delete(*v502);
    }

    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v378);
    if (v378 != buf)
    {
      free(v378);
    }
  }

  if (v500 >= 0)
  {
    v285 = HIBYTE(v500);
  }

  else
  {
    v285 = *(&v499 + 1);
  }

  sub_100070148(buf, v285 + 1);
  if (buf[23] >= 0)
  {
    v286 = buf;
  }

  else
  {
    v286 = *buf;
  }

  if (v285)
  {
    if (v500 >= 0)
    {
      v287 = &v499;
    }

    else
    {
      v287 = v499;
    }

    memmove(v286, v287, v285);
  }

  *&v286[v285] = 58;
  if ((v501.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v288 = &v501;
  }

  else
  {
    v288 = v501.__r_.__value_.__r.__words[0];
  }

  if ((v501.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v501.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v501.__r_.__value_.__l.__size_;
  }

  v290 = std::string::append(buf, v288, size);
  v291 = *&v290->__r_.__value_.__l.__data_;
  v494 = v290->__r_.__value_.__r.__words[2];
  v493 = v291;
  v290->__r_.__value_.__l.__size_ = 0;
  v290->__r_.__value_.__r.__words[2] = 0;
  v290->__r_.__value_.__r.__words[0] = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (sub_10002807C(*&v577[4], *&v577[12]))
  {
    if (p_info[196] != -1)
    {
      sub_1018FE9CC();
      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v294 = v8[197];
    if (os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
    {
      v295 = &v493;
      if (v494 < 0)
      {
        v295 = v493;
      }

      *buf = 136380931;
      *&buf[4] = "cell, null";
      *&buf[12] = 2081;
      *&buf[14] = v295;
      _os_log_impl(dword_100000000, v294, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE9F4(buf);
      v379 = &v493;
      if (v494 < 0)
      {
        v379 = v493;
      }

      *v519 = 136380931;
      *&v519[4] = "cell, null";
      *&v519[12] = 2081;
      *&v519[14] = v379;
      v380 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v380);
      if (v380 != buf)
      {
        free(v380);
      }

      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v423 = _NSConcreteStackBlock;
    v424 = 3321888768;
    v425 = sub_1006818A0;
    v426 = &unk_1024685F0;
    if (SHIBYTE(v494) < 0)
    {
      sub_100007244(&v427, v493, *(&v493 + 1));
    }

    else
    {
      v427 = v493;
      v428 = v494;
    }

    AnalyticsSendEventLazy();
    if (SHIBYTE(v428) < 0)
    {
      operator delete(v427);
    }
  }

  v293.n128_u64[0] = *&v577[4];
  v292.n128_u64[0] = -1.0;
  if (*&v577[4] != -1.0)
  {
    goto LABEL_388;
  }

  v293.n128_u64[0] = *&v577[12];
  if (*&v577[12] != -1.0)
  {
    goto LABEL_388;
  }

  if (p_info[196] != -1)
  {
    sub_1018FE9CC();
    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v300 = v8[197];
  if (os_log_type_enabled(v300, OS_LOG_TYPE_DEBUG))
  {
    v301 = &v493;
    if (v494 < 0)
    {
      v301 = v493;
    }

    *buf = 136380931;
    *&buf[4] = "cell, sentinel";
    *&buf[12] = 2081;
    *&buf[14] = v301;
    _os_log_impl(dword_100000000, v300, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE9F4(buf);
    v381 = &v493;
    if (v494 < 0)
    {
      v381 = v493;
    }

    *v519 = 136380931;
    *&v519[4] = "cell, sentinel";
    *&v519[12] = 2081;
    *&v519[14] = v381;
    v382 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v382);
    if (v382 != buf)
    {
      free(v382);
    }

    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  if (SHIBYTE(v494) < 0)
  {
    sub_100007244(&v421, v493, *(&v493 + 1));
  }

  else
  {
    v421 = v493;
    v422 = v494;
  }

  AnalyticsSendEventLazy();
  if (SHIBYTE(v422) < 0)
  {
    operator delete(v421);
    if (v275)
    {
LABEL_389:
      if (*&v580[4] != 1)
      {
        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v302 = v8[197];
        if (os_log_type_enabled(v302, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v302, OS_LOG_TYPE_FAULT, "reference frame is not properly set", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018FE9F4(buf);
          *v519 = 0;
          v411 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v411);
          if (v411 != buf)
          {
            free(v411);
          }

          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        *&v580[4] = 1;
      }

      if (!*&v577[84])
      {
        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v303 = v8[197];
        if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v303, OS_LOG_TYPE_ERROR, "confidence is not properly set", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018FE9F4(buf);
          *v519 = 0;
          v412 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v412);
          if (v412 != buf)
          {
            free(v412);
          }

          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        *&v577[84] = 70;
      }

      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v304 = v8[197];
      if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
      {
        v305 = *&v577[4];
        v306 = *&v577[12];
        v307 = *&v577[20];
        sub_1000753AC(v519, v536);
        v308 = v519[23] >= 0 ? v519 : *v519;
        *buf = 134546947;
        *&buf[4] = v305;
        *&buf[12] = 2053;
        *&buf[14] = v306;
        *&buf[22] = 2050;
        *&buf[24] = v307;
        *&buf[32] = 2081;
        *&buf[34] = v308;
        *&buf[42] = 1026;
        *&buf[44] = v578;
        *&buf[48] = 2050;
        *&buf[50] = *&v577[76];
        _os_log_impl(dword_100000000, v304, OS_LOG_TYPE_DEFAULT, "@ClxCell, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, course, -1.0, key, %{private}s, type, %{public}d, timestamp, %{public}.3f", buf, 0x3Au);
        if ((v519[23] & 0x80000000) != 0)
        {
          operator delete(*v519);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v383 = *&v577[4];
        v384 = *&v577[12];
        v385 = *&v577[20];
        sub_1000753AC(v502, v536);
        if (v504[9] >= 0)
        {
          v386 = v502;
        }

        else
        {
          v386 = *v502;
        }

        *v519 = 134546947;
        *&v519[4] = v383;
        *&v519[12] = 2053;
        *&v519[14] = v384;
        *&v519[22] = 2050;
        *&v519[24] = v385;
        *&v519[32] = 2081;
        *&v519[34] = v386;
        *&v519[42] = 1026;
        *&v519[44] = v578;
        *&v519[48] = 2050;
        *&v519[50] = *&v577[76];
        v387 = _os_log_send_and_compose_impl();
        if ((v504[9] & 0x80000000) != 0)
        {
          operator delete(*v502);
        }

        sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v387);
        if (v387 != buf)
        {
          free(v387);
        }

        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      *&v577[76] = v1;
      sub_100027CA8(v577);
      sub_100021AFC(v519);
      v522 = v578;
      v523 = v579;
      v524[0] = *v580;
      *(v524 + 12) = *&v580[12];
      *&v519[32] = *&v577[32];
      *&v519[48] = *&v577[48];
      *&v519[64] = *&v577[64];
      v520 = *&v577[84];
      *v519 = *v577;
      *&v519[16] = *&v577[16];
      *&v519[76] = v1;
      v521 = 0xBFF0000000000000;
      v525 = 0;
      v526 = sub_1000137E0();
      v529 = sub_1000081AC();
      v495 = 0;
      if (sub_1001D381C(&v495, *&v577[4], *&v577[12]))
      {
        v528 = v495;
        v527 = 1;
      }

      if (qword_1025D48C0 != -1)
      {
        sub_1018FEA38();
        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v309 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        v310 = *&v519[4];
        v311 = *&v519[12];
        v312 = *&v519[20];
        v313 = v520;
        v314 = v521;
        v315 = sub_1001FD6E4(v522);
        v316 = v522;
        sub_10123DED0(v536, v502);
        if (v504[9] >= 0)
        {
          v317 = v502;
        }

        else
        {
          v317 = *v502;
        }

        *buf = 136317955;
        *&buf[4] = "Cell";
        *&buf[12] = 1024;
        *&buf[14] = 1;
        *&buf[18] = 2053;
        *&buf[20] = v310;
        *&buf[28] = 2053;
        *&buf[30] = v311;
        *&buf[38] = 2048;
        *&buf[40] = v312;
        *&buf[48] = 1024;
        *&buf[50] = v313;
        *&buf[54] = 2048;
        *&buf[56] = v314;
        *&buf[64] = 2080;
        *&buf[66] = v315;
        *&buf[74] = 1024;
        *v583 = v316;
        *&v583[4] = 2080;
        *&v583[6] = v317;
        *&v583[14] = 1024;
        *&v583[16] = -1;
        LOWORD(v584) = 1024;
        *(&v584 + 2) = v524[0];
        _os_log_impl(dword_100000000, v309, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Confidence,%d,Lifespan,%.3f,SubType,%s,MatchLevel,%d,cell,%s,Transmit,%d,integrity,%d", buf, 0x66u);
        if ((v504[9] & 0x80000000) != 0)
        {
          operator delete(*v502);
        }

        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      if (sub_10000A100(123, 2))
      {
        sub_1018FEA60(buf);
        v388 = *&v519[4];
        v389 = *&v519[12];
        v390 = *&v519[20];
        v391 = v520;
        v392 = v521;
        v393 = sub_1001FD6E4(v522);
        v394 = v522;
        sub_10123DED0(v536, v429);
        if (v430 >= 0)
        {
          v395 = v429;
        }

        else
        {
          v395 = v429[0];
        }

        *v502 = 136317955;
        *&v502[4] = "Cell";
        v503 = 1024;
        *v504 = 1;
        *&v504[4] = 2053;
        *&v504[6] = v388;
        *&v504[14] = 2053;
        *&v504[16] = v389;
        *&v504[24] = 2048;
        *&v504[26] = v390;
        v505 = 1024;
        v506 = v391;
        v507 = 2048;
        v508 = v392;
        v509 = 2080;
        v510 = v393;
        v511 = 1024;
        v512 = v394;
        v513 = 2080;
        v514 = v395;
        v515 = 1024;
        v516 = -1;
        v517 = 1024;
        v518 = v524[0];
        v396 = _os_log_send_and_compose_impl();
        if (v430 < 0)
        {
          operator delete(v429[0]);
        }

        sub_100152C7C("LOCATION", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v396);
        if (v396 != buf)
        {
          free(v396);
        }

        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        v275 = v275;
      }

      if (sub_100071CA0())
      {
        sub_10004FD18(buf);
        *v502 = v522;
        sub_10004345C(buf, "cellMatch", v502);
        sub_100043360(buf, "query", &v492);
        sub_100116D68(buf, "hAcc", &v577[20]);
        sub_100071CAC(buf, "locationd");
        sub_100005DA4(buf);
      }

      (*(*v420 + 64))(v420, v519);

      if (v534)
      {
        sub_100008080(v534);
      }

      if (v533 < 0)
      {
        operator delete(v532);
      }

      if (v531)
      {
        sub_100008080(v531);
      }

      if (v530)
      {
        sub_100008080(v530);
      }
    }
  }

  else
  {
LABEL_388:
    if (v275)
    {
      goto LABEL_389;
    }
  }

  (*(*v420 + 104))(v420, "fix", v292, v293);
  v318 = v578;
  if (v578 == 6)
  {
    v319 = (*(*v420 + 120))(v420);
    (*(*v420 + 128))(v420, v577, v536, v319, v275, v1);
    v320 = (*(*v420 + 120))(v420);
    *&v577[20] = sub_100681A10(v536, v577, v320);
    v318 = v578;
  }

  if ((v318 & 0xFFFFFFFE) == 6)
  {
    v322 = *v415;
    v321 = v415[1];
    if (*v415 == v321)
    {
      v328 = *v415;
      v323 = *v415;
    }

    else
    {
      v323 = *v415;
      while (1)
      {
        v324 = *(v323 + 2);
        v325 = v324 > 7;
        v326 = (1 << v324) & 0x87;
        if (!v325 && v326 != 0)
        {
          break;
        }

        v323 = (v323 + 696);
        if (v323 == v321)
        {
          v323 = v415[1];
          break;
        }
      }

      v328 = *v415;
      do
      {
        if (*(v328 + 2) == 3)
        {
          goto LABEL_451;
        }

        v328 = (v328 + 696);
      }

      while (v328 != v321);
      v328 = v415[1];
LABEL_451:
      while (*(v322 + 2) != 6)
      {
        v322 = (v322 + 696);
        if (v322 == v321)
        {
          v322 = v415[1];
          break;
        }
      }
    }

    if (p_info[196] != -1)
    {
      sub_1018FE9CC();
      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v329 = v8[197];
    if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
    {
      v330 = (v415[1] - *v415) >> 3;
      *buf = 134349824;
      *&buf[4] = 0x66FD0EB66FD0EB67 * v330;
      *&buf[12] = 1026;
      *&buf[14] = v323 != v321;
      *&buf[18] = 1026;
      *&buf[20] = v328 != v321;
      *&buf[24] = 1026;
      *&buf[26] = v322 != v321;
      _os_log_impl(dword_100000000, v329, OS_LOG_TYPE_DEFAULT, "@CellLoc, tiledl, cells, %{public}lu, gsm, %{public}d, cdma, %{public}d, lte, %{public}d", buf, 0x1Eu);
    }

    v331 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (sub_10000A100(121, 2))
    {
      sub_1018FE9F4(buf);
      v397 = 0x66FD0EB66FD0EB67 * ((v415[1] - *v415) >> 3);
      *v519 = 134349824;
      *&v519[4] = v397;
      *&v519[12] = 1026;
      *&v519[14] = v323 != v321;
      *&v519[18] = 1026;
      *&v519[20] = v328 != v321;
      *&v519[24] = 1026;
      *&v519[26] = v322 != v321;
      v398 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v398);
      if (v398 != buf)
      {
        free(v398);
      }

      v331 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    if (v323 != v321)
    {
      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
      }

      v332 = v331[197];
      if (os_log_type_enabled(v332, OS_LOG_TYPE_DEBUG))
      {
        v333 = *&v577[4];
        v334 = *&v577[12];
        v335 = sub_100097C68(v323);
        *buf = 134546177;
        *&buf[4] = v333;
        *&buf[12] = 2053;
        *&buf[14] = v334;
        *&buf[22] = 2048;
        *&buf[24] = v335;
        _os_log_impl(dword_100000000, v332, OS_LOG_TYPE_DEBUG, "CellLoc, requestDownload, GSM, %{sensitive}.8f, %{sensitive}.8f, seckey, %llu", buf, 0x20u);
      }

      v331 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v399 = *&v577[4];
        v400 = *&v577[12];
        v401 = sub_100097C68(v323);
        *v519 = 134546177;
        *&v519[4] = v399;
        *&v519[12] = 2053;
        *&v519[14] = v400;
        *&v519[22] = 2048;
        *&v519[24] = v401;
        v402 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v402);
        if (v402 != buf)
        {
          free(v402);
        }

        v331 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v336 = *&v577[4];
      v337 = *&v577[12];
      v338 = sub_100097C68(v323);
      (*(*v420 + 88))(v420, 3, v338, v336, v337);
    }

    if (v328 != v321)
    {
      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
      }

      v339 = v331[197];
      if (os_log_type_enabled(v339, OS_LOG_TYPE_DEBUG))
      {
        v340 = *&v577[4];
        v341 = *&v577[12];
        v342 = sub_100097C68(v328);
        *buf = 134546177;
        *&buf[4] = v340;
        *&buf[12] = 2053;
        *&buf[14] = v341;
        *&buf[22] = 2048;
        *&buf[24] = v342;
        _os_log_impl(dword_100000000, v339, OS_LOG_TYPE_DEBUG, "CellLoc, requestDownload, CDMA, %{sensitive}.8f, %{sensitive}.8f, seckey, %llu", buf, 0x20u);
        v331 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v403 = *&v577[4];
        v404 = *&v577[12];
        v405 = sub_100097C68(v328);
        *v519 = 134546177;
        *&v519[4] = v403;
        *&v519[12] = 2053;
        *&v519[14] = v404;
        *&v519[22] = 2048;
        *&v519[24] = v405;
        v406 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v406);
        if (v406 != buf)
        {
          free(v406);
        }

        v331 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v343 = *&v577[4];
      v344 = *&v577[12];
      v345 = sub_100097C68(v328);
      (*(*v420 + 88))(v420, 5, v345, v343, v344);
    }

    if (v322 != v321)
    {
      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
      }

      v346 = v331[197];
      if (os_log_type_enabled(v346, OS_LOG_TYPE_DEBUG))
      {
        v347 = *&v577[4];
        v348 = *&v577[12];
        v349 = sub_100097C68(v322);
        *buf = 134546177;
        *&buf[4] = v347;
        *&buf[12] = 2053;
        *&buf[14] = v348;
        *&buf[22] = 2048;
        *&buf[24] = v349;
        _os_log_impl(dword_100000000, v346, OS_LOG_TYPE_DEBUG, "CellLoc, requestDownload, LTE, %{sensitive}.8f, %{sensitive}.8f, seckey, %llu", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v407 = *&v577[4];
        v408 = *&v577[12];
        v409 = sub_100097C68(v322);
        *v519 = 134546177;
        *&v519[4] = v407;
        *&v519[12] = 2053;
        *&v519[14] = v408;
        *&v519[22] = 2048;
        *&v519[24] = v409;
        v410 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v410);
        if (v410 != buf)
        {
          free(v410);
        }
      }

      v350 = *&v577[4];
      v351 = *&v577[12];
      v352 = sub_100097C68(v322);
      (*(*v420 + 88))(v420, 4, v352, v350, v351);
    }
  }

  if (SHIBYTE(v494) < 0)
  {
    operator delete(v493);
  }

LABEL_483:
  (*(*v420 + 16))(v420, "recalc", v1, 300.0);
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  if (v538)
  {
    v539 = v538;
    operator delete(v538);
  }

  *buf = __p;
  sub_100093EE8(buf);
  *buf = &v496;
  sub_100093EE8(buf);
LABEL_488:
  if (SHIBYTE(v500) < 0)
  {
    operator delete(v499);
  }

  if (SHIBYTE(v501.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v501.__r_.__value_.__l.__data_);
  }
}

void sub_10007FE80(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  sub_10056D2F4(&STACK[0xC10]);
  STACK[0xF90] = &STACK[0xF70];
  sub_100093EE8(&STACK[0xF90]);
  STACK[0x5F0] = &STACK[0x538];
  sub_100093EE8(&STACK[0x5F0]);
  if (SLOBYTE(STACK[0x567]) < 0)
  {
    operator delete(STACK[0x550]);
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(STACK[0x568]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100080270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007B700(a1);
  *a3 = 0xFFFF;
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  if (*a2 != 1)
  {
    goto LABEL_11;
  }

  v12 = *(a2 + 8);
  if ((v12 - 3) <= 2)
  {
    v13 = sub_1006CB140(a2, v6);
    sub_1006C9E54(a1, v13, a3);
  }

  if (v12 <= 5)
  {
    if (v12 >= 3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v12 <= 8)
  {
    if (v12 == 6)
    {
      v19 = sub_10007513C(a2, v6);
      sub_1000814AC(a1, v19, a3);
    }

    if (v12 != 7)
    {
      goto LABEL_11;
    }

LABEL_10:
    v14 = sub_1006CBCE4(a2);
    sub_1006CB168(a1, v14, a3);
  }

  if (v12 == 9)
  {
    v20 = sub_1006CCAA0(a2, v6);
    sub_1006CBF24(a1, v20, a3);
  }

  if (v12 == 10)
  {
    v18 = sub_100681E80(a2, v6);
    sub_1006CCAC4(a1, v18, a3);
  }

LABEL_11:
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_10123DED0(a2, __p);
    v16 = v32 >= 0 ? __p : __p[0];
    *buf = 136315394;
    *&buf[4] = v16;
    v24 = 1024;
    v25 = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CELL_LOC: best match cell, %s, bestMatch, %d", buf, 0x12u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    sub_10123DED0(a2, buf);
    if (v26 >= 0)
    {
      v21 = buf;
    }

    else
    {
      v21 = *buf;
    }

    v27 = 136315394;
    v28 = v21;
    v29 = 1024;
    v30 = 0;
    v22 = _os_log_send_and_compose_impl();
    if (v26 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "CLNetworkLocationProvider::BestMatchLevel CLNetworkLocationProvider::getBestMatchLocation(const CLCell &, CLDaemonLocation &)", "%s\n", v22);
    if (v22 != __p)
    {
      free(v22);
    }
  }

  return 0;
}

void sub_1000805D8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = a2[3];
  v16 = a2[2];
  v17 = v5;
  v18 = a2[4];
  v19 = *(a2 + 10);
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  sub_100081198(&v13);
  *a3 = 0xFFFF;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v12 = sub_10007BA1C(a1);
  sub_100082734(*(v12 + 32));
}

void sub_100081108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100081198@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v19);
  v2 = sub_100038730(&v20, "[", 1);
  sub_100038730(v2, " MCC=", 5);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, " AND MNC=", 9);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, " AND TAC=", 9);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, " AND CI=", 8);
  v6 = std::ostream::operator<<();
  sub_100038730(v6, " AND UARFCN=", 12);
  v7 = std::ostream::operator<<();
  sub_100038730(v7, " AND PID=", 9);
  v8 = std::ostream::operator<<();
  sub_100038730(v8, " AND RSCP=", 10);
  v9 = std::ostream::operator<<();
  sub_100038730(v9, " AND ECN0=", 10);
  v10 = std::ostream::operator<<();
  sub_100038730(v10, " AND BANDINFO=", 14);
  v11 = std::ostream::operator<<();
  sub_100038730(v11, " AND DEPLOYMENTTYPE=", 20);
  v12 = std::ostream::operator<<();
  sub_100038730(v12, " AND BANDWIDTH=", 15);
  v13 = std::ostream::operator<<();
  sub_100038730(v13, " ]", 2);
  sub_100073518(v19, __p);
  if (v18 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sub_10000EC00(a1, v14);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = v15;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100081468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000814AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v3;
  v10[4] = *(a2 + 64);
  v11 = *(a2 + 80);
  v4 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v4;
  *a3 = 0xFFFF;
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  sub_1000805D8(a1, v10, a3);
}

void sub_100082044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_10008209C(uint64_t a1)
{
  sub_10003848C(&v21);
  v2 = sub_100038730(v22, "SELECT ", 7);
  v3 = strlen("ROWID");
  v4 = sub_100038730(v2, "ROWID", v3);
  v5 = sub_100038730(v4, " FROM ", 6);
  v6 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    v6 = *v6;
  }

  v7 = strlen(v6);
  v8 = sub_100038730(v5, v6, v7);
  v9 = sub_100038730(v8, " WHERE ", 7);
  v10 = sub_100038730(v9, "MCC", 3);
  v11 = sub_100038730(v10, "=? AND ", 7);
  v12 = sub_100038730(v11, "MNC", 3);
  v13 = sub_100038730(v12, "=? AND ", 7);
  v14 = sub_100038730(v13, "TAC", 3);
  v15 = sub_100038730(v14, "=? AND ", 7);
  v16 = sub_100038730(v15, "CI", 2);
  sub_100038730(v16, "=?", 2);
  if ((v25 & 0x10) != 0)
  {
    v18 = v24;
    if (v24 < v23)
    {
      v24 = v23;
      v18 = v23;
    }

    v19 = v22[6];
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v17 = 0;
      v27 = 0;
      goto LABEL_16;
    }

    v19 = v22[3];
    v18 = v22[5];
  }

  v17 = v18 - v19;
  if ((v18 - v19) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  v27 = v18 - v19;
  if (v17)
  {
    memmove(&__dst, v19, v17);
  }

LABEL_16:
  *(&__dst + v17) = 0;
  if (v27 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1 + 64, p_dst);
}

void sub_1000826A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000827B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1 + 640;
  if (v3 != a3)
  {
    sub_1000755FC(v3, *a3, a3[1], 0x66FD0EB66FD0EB67 * ((a3[1] - *a3) >> 3));
  }
}

uint64_t sub_1000827E4(uint64_t a1)
{
  if (*(a1 + 696) == 1)
  {
    if (*(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    v2 = *(a1 + 88);
    if (v2)
    {
      *(a1 + 96) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void sub_100082834(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = v2;
      v2 = *v2;
      if (*(v3 + 720) == 1)
      {
        if (*(v3 + 367) < 0)
        {
          operator delete(v3[43]);
        }

        v4 = v3[14];
        if (v4)
        {
          v3[15] = v4;
          operator delete(v4);
        }
      }

      operator delete(v3);
    }

    while (v2);
  }
}

void sub_10008289C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100082834(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_1000828F8(uint64_t a1)
{
  sub_10001CAF4(buf);
  v61[0] = 0;
  v2 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v61);
  v3 = v2 & v61[0];
  if (v84)
  {
    sub_100008080(v84);
  }

  if (v3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,processServingCell", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CAF40();
    }
  }

  v61[0] = 0;
  v67 = 0;
  v68[0] = 0;
  *buf = v68;
  if (*(sub_100084258((a1 + 2720), v68) + 720) == 1)
  {
    v68[0] = 0;
    *buf = v68;
    v5 = sub_100084258((a1 + 2720), v68);
    sub_1000836F0(v61, (v5 + 3));
LABEL_14:
    if (v67 != 1)
    {
      goto LABEL_81;
    }

    if (v62 < 3)
    {
      goto LABEL_18;
    }

    if (v62 == 9)
    {
      sub_10001CAF4(buf);
      LOBYTE(v68[0]) = 0;
      v12 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v68);
      v14 = (v12 & v68[0]);
      if (v84)
      {
        sub_100008080(v84);
      }

      if (v14)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v15 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification SCDMA", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016C8DD8(buf);
          LOWORD(v68[0]) = 0;
          v57 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v57);
          if (v57 != buf)
          {
            free(v57);
          }
        }
      }

      *(a1 + 2604) = *sub_1006CCAA0(v61, v13);
      *(a1 + 2608) = *(sub_1006CCAA0(v61, v16) + 4);
      goto LABEL_73;
    }

    if (v62 == 7)
    {
LABEL_18:
      sub_10001CAF4(buf);
      LOBYTE(v68[0]) = 0;
      v7 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v68);
      v8 = (v7 & v68[0]);
      if (v84)
      {
        sub_100008080(v84);
      }

      if (v8)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v9 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification GSM", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016C8DD8(buf);
          LOWORD(v68[0]) = 0;
          v56 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v56);
          if (v56 != buf)
          {
            free(v56);
          }
        }
      }

      *(a1 + 2604) = *sub_1006CBCE4(v61);
      *(a1 + 2608) = *(sub_1006CBCE4(v61) + 4);
      sub_1000844AC(a1);
    }

    else
    {
      if (v62 - 3 > 2)
      {
        if (v62 == 10)
        {
          sub_10001CAF4(buf);
          LOBYTE(v68[0]) = 0;
          v29 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v68);
          v31 = (v29 & v68[0]);
          if (v84)
          {
            sub_100008080(v84);
          }

          if (v31)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1016C8BF0();
            }

            v32 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification 5G", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1016C8DD8(buf);
              LOWORD(v68[0]) = 0;
              v60 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v60);
              if (v60 != buf)
              {
                free(v60);
              }
            }
          }

          *(a1 + 2604) = *sub_100681E80(v61, v30);
          *(a1 + 2608) = *(sub_100681E80(v61, v33) + 4);
          *(a1 + 2620) = *(sub_100681E80(v61, v34) + 32);
          sub_1000844AC(a1);
        }

        else
        {
          if (v62 != 6)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1016C8BF0();
            }

            v46 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,Unhandled serving cell", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1016C8DD8(buf);
              LOWORD(v68[0]) = 0;
              v47 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v47);
              if (v47 != buf)
              {
                free(v47);
              }
            }

            goto LABEL_73;
          }

          sub_10001CAF4(buf);
          LOBYTE(v68[0]) = 0;
          v23 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v68);
          v25 = (v23 & v68[0]);
          if (v84)
          {
            sub_100008080(v84);
          }

          if (v25)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1016C8BF0();
            }

            v26 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification LTE", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1016C8DD8(buf);
              LOWORD(v68[0]) = 0;
              v59 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v59);
              if (v59 != buf)
              {
                free(v59);
              }
            }
          }

          *(a1 + 2604) = *sub_10007513C(v61, v24);
          *(a1 + 2608) = *(sub_10007513C(v61, v27) + 4);
          *(a1 + 2620) = *(sub_10007513C(v61, v28) + 24);
          sub_1000844AC(a1);
        }
      }

      else
      {
        sub_10001CAF4(buf);
        LOBYTE(v68[0]) = 0;
        v17 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v68);
        v19 = (v17 & v68[0]);
        if (v84)
        {
          sub_100008080(v84);
        }

        if (v19)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v20 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification CDMA", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016C8DD8(buf);
            LOWORD(v68[0]) = 0;
            v58 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v58);
            if (v58 != buf)
            {
              free(v58);
            }
          }
        }

        *(a1 + 2612) = *(sub_1006CB140(v61, v18) + 32);
        *(a1 + 2616) = *(sub_1006CB140(v61, v21) + 36);
        *(a1 + 2620) = *(sub_1006CB140(v61, v22) + 48);
      }

      *(a1 + 2460) = *(a1 + 2456);
    }

LABEL_73:
    *(a1 + 2624) = v62;
    sub_10001CAF4(buf);
    LOBYTE(v68[0]) = 0;
    v35 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v68);
    v36 = (v35 & v68[0]);
    if (v84)
    {
      sub_100008080(v84);
    }

    if (!v36)
    {
      goto LABEL_81;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v37 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 2604);
      v39 = *(a1 + 2608);
      v40 = *(a1 + 2612);
      v41 = *(a1 + 2616);
      v42 = *(a1 + 2620);
      v43 = *(a1 + 2624);
      v44 = *(a1 + 2640);
      v45 = *(a1 + 2636);
      *buf = 67110912;
      *&buf[4] = v38;
      LOWORD(v84) = 1024;
      *(&v84 + 2) = v39;
      HIWORD(v84) = 1024;
      v85 = v40;
      v86 = 1024;
      v87 = v41;
      v88 = 1024;
      v89 = v42;
      v90 = 1024;
      v91 = v43;
      v92 = 1024;
      v93 = v44;
      v94 = 1024;
      v95 = v45;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,processServingCell,MCC,%d,MNC,%d,SID,%d,NID,%d,BandInfo,%d,RAT,%d,RSRP,%d,SNR,%d", buf, 0x32u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_81;
    }

    sub_1016C8DD8(buf);
    v48 = *(a1 + 2604);
    v49 = *(a1 + 2608);
    v50 = *(a1 + 2612);
    v51 = *(a1 + 2616);
    v52 = *(a1 + 2620);
    v53 = *(a1 + 2624);
    v54 = *(a1 + 2640);
    v55 = *(a1 + 2636);
    v68[0] = 67110912;
    v68[1] = v48;
    v69 = 1024;
    v70 = v49;
    v71 = 1024;
    v72 = v50;
    v73 = 1024;
    v74 = v51;
    v75 = 1024;
    v76 = v52;
    v77 = 1024;
    v78 = v53;
    v79 = 1024;
    v80 = v54;
    v81 = 1024;
    v82 = v55;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v11);
LABEL_95:
    if (v11 != buf)
    {
      free(v11);
    }

    goto LABEL_81;
  }

  v68[0] = 1;
  *buf = v68;
  if (*(sub_100084258((a1 + 2720), v68) + 720) == 1)
  {
    v68[0] = 1;
    *buf = v68;
    v6 = sub_100084258((a1 + 2720), v68);
    sub_1000836F0(v61, (v6 + 3));
    goto LABEL_14;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016C8BF0();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Couldn't get current serving cell", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016C8DD8(buf);
    LOWORD(v68[0]) = 0;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v11);
    goto LABEL_95;
  }

LABEL_81:
  if (v67 == 1)
  {
    if (v66 < 0)
    {
      operator delete(__p);
    }

    if (v63)
    {
      v64 = v63;
      operator delete(v63);
    }
  }
}

void sub_100083650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000827E4(va);
  _Unwind_Resume(a1);
}

__n128 sub_1000836F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 696) == *(a2 + 696))
  {
    if (*(a1 + 696))
    {
      *a1 = *a2;
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      *(a1 + 16) = v4;
      *(a1 + 80) = *(a2 + 80);
      if (a1 != a2)
      {
        sub_100731D80((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
      }

      *(a1 + 112) = *(a2 + 112);
      v7 = *(a2 + 128);
      v8 = *(a2 + 144);
      v9 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v9;
      *(a1 + 128) = v7;
      *(a1 + 144) = v8;
      v10 = *(a2 + 192);
      v11 = *(a2 + 208);
      v12 = *(a2 + 240);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 240) = v12;
      *(a1 + 192) = v10;
      *(a1 + 208) = v11;
      v13 = *(a2 + 256);
      v14 = *(a2 + 272);
      v15 = *(a2 + 288);
      *(a1 + 300) = *(a2 + 300);
      *(a1 + 272) = v14;
      *(a1 + 288) = v15;
      *(a1 + 256) = v13;
      std::string::operator=((a1 + 320), (a2 + 320));
      v17 = *(a2 + 360);
      v16 = *(a2 + 376);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 360) = v17;
      *(a1 + 376) = v16;
      v18 = *(a2 + 440);
      v20 = *(a2 + 392);
      v19 = *(a2 + 408);
      *(a1 + 424) = *(a2 + 424);
      *(a1 + 440) = v18;
      *(a1 + 392) = v20;
      *(a1 + 408) = v19;
      v22 = *(a2 + 472);
      v21 = *(a2 + 488);
      v23 = *(a2 + 456);
      *(a1 + 504) = *(a2 + 504);
      *(a1 + 472) = v22;
      *(a1 + 488) = v21;
      *(a1 + 456) = v23;
      v24 = *(a2 + 640);
      v25 = *(a2 + 656);
      v26 = *(a2 + 672);
      *(a1 + 688) = *(a2 + 688);
      *(a1 + 656) = v25;
      *(a1 + 672) = v26;
      *(a1 + 640) = v24;
      v27 = *(a2 + 576);
      v28 = *(a2 + 592);
      v29 = *(a2 + 624);
      *(a1 + 608) = *(a2 + 608);
      *(a1 + 624) = v29;
      *(a1 + 576) = v27;
      *(a1 + 592) = v28;
      result = *(a2 + 512);
      v31 = *(a2 + 528);
      v32 = *(a2 + 560);
      *(a1 + 544) = *(a2 + 544);
      *(a1 + 560) = v32;
      *(a1 + 512) = result;
      *(a1 + 528) = v31;
    }
  }

  else if (*(a1 + 696))
  {
    if (*(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    v33 = *(a1 + 88);
    if (v33)
    {
      *(a1 + 96) = v33;
      operator delete(v33);
    }

    *(a1 + 696) = 0;
  }

  else
  {
    *a1 = *a2;
    v34 = *(a2 + 16);
    v35 = *(a2 + 32);
    v36 = *(a2 + 48);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 32) = v35;
    *(a1 + 48) = v36;
    *(a1 + 16) = v34;
    v37 = *(a2 + 80);
    *(a1 + 88) = 0;
    *(a1 + 80) = v37;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    sub_10038EB38(a1 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    *(a1 + 112) = *(a2 + 112);
    v38 = *(a2 + 128);
    v39 = *(a2 + 144);
    v40 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v40;
    *(a1 + 144) = v39;
    *(a1 + 128) = v38;
    v41 = *(a2 + 192);
    v42 = *(a2 + 208);
    v43 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 224) = v43;
    *(a1 + 208) = v42;
    *(a1 + 192) = v41;
    v44 = *(a2 + 256);
    v45 = *(a2 + 272);
    v46 = *(a2 + 288);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 288) = v46;
    *(a1 + 272) = v45;
    *(a1 + 256) = v44;
    if (*(a2 + 343) < 0)
    {
      sub_100007244((a1 + 320), *(a2 + 320), *(a2 + 328));
    }

    else
    {
      v47 = *(a2 + 320);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 320) = v47;
    }

    v48 = *(a2 + 344);
    v49 = *(a2 + 376);
    *(a1 + 360) = *(a2 + 360);
    *(a1 + 376) = v49;
    *(a1 + 344) = v48;
    v50 = *(a2 + 392);
    v51 = *(a2 + 408);
    v52 = *(a2 + 440);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 440) = v52;
    *(a1 + 392) = v50;
    *(a1 + 408) = v51;
    v53 = *(a2 + 456);
    v54 = *(a2 + 472);
    v55 = *(a2 + 488);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 472) = v54;
    *(a1 + 488) = v55;
    *(a1 + 456) = v53;
    v56 = *(a2 + 512);
    v57 = *(a2 + 528);
    v58 = *(a2 + 560);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = v58;
    *(a1 + 512) = v56;
    *(a1 + 528) = v57;
    v59 = *(a2 + 576);
    v60 = *(a2 + 592);
    v61 = *(a2 + 624);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 624) = v61;
    *(a1 + 576) = v59;
    *(a1 + 592) = v60;
    result = *(a2 + 640);
    v62 = *(a2 + 656);
    v63 = *(a2 + 672);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 656) = v62;
    *(a1 + 672) = v63;
    *(a1 + 640) = result;
    *(a1 + 696) = 1;
  }

  return result;
}

void sub_1000839B8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 96) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000839D4(uint64_t a1, void **a2)
{
  *(a1 + 44) = 0;
  v3 = *a2;
  if (!*a2)
  {
    return;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 1065353216;
  if (!sub_100065478(v3, v11))
  {
    goto LABEL_27;
  }

  *buf = 0;
  v16 = buf;
  if (sub_1000646F8(v11, buf)[3])
  {
    sub_1000658D0(0, v11, &v13);
    sub_100065934(&v13, buf);
    if (v27 == 1 && *v18 == 6)
    {
      *(a1 + 40) = *(sub_10007513C(buf, v4) + 24);
      *(a1 + 32) = sub_1000081AC();
      *(a1 + 44) = 1;
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (!v27)
    {
      goto LABEL_13;
    }

    if (v26 < 0)
    {
      operator delete(__p);
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }
  }

LABEL_13:
  v6 = v13;
  for (i = v14; i != v6; sub_1000720CC(i))
  {
    i -= 696;
  }

  v14 = v6;
  if (sub_1000649A0())
  {
    *buf = 1;
    v16 = buf;
    if (sub_1000646F8(v11, buf)[3])
    {
      sub_1000658D0(1, v11, &v13);
      sub_100065934(&v13, buf);
      if (v27 == 1 && *v18 == 6)
      {
        *(a1 + 40) = *(sub_10007513C(buf, v7) + 24);
        *(a1 + 32) = sub_1000081AC();
        *(a1 + 44) = 1;
        if ((v27 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (!v27)
      {
        goto LABEL_27;
      }

      if (v26 < 0)
      {
        operator delete(__p);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }
    }
  }

LABEL_27:
  sub_100075100(v11);
  *buf = &v13;
  sub_100072124(buf);
  if (*(a1 + 44))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10167F100();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 32);
      *buf = 68289538;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 1026;
      v20 = v9;
      v21 = 2050;
      v22 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#imd,Received notification, band_info:%{public}u, MachTime(s):%{public}f}", buf, 0x22u);
    }
  }
}

double *sub_100083CFC(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      sub_10167D190(v2, *(a1 + 20));
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10167F27C();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#imd,Unable to get uplink frequency disabling BT AFH", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10167F5F0();
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      sub_10167D180(v4);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    if (*(a1 + 44) == 1)
    {
      return sub_100083DDC(result, *(a1 + 40), *(a1 + 32));
    }
  }

  return result;
}

uint64_t sub_100083DDC(double *a1, int a2, double a3)
{
  v6 = sub_1000081AC();
  if ((a2 - 13) >= 2)
  {
    a3 = *a1;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168D4CC();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *a1;
      v13 = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = a2;
      v19 = 2050;
      v20 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssInterference, CLLTEBand13Band14Handler::handleBand, logging new fMachTimeOfLastBand13Band14Notification, LTE-Band:%{public}u, fMachTimeOfLastBand13Band14Notification:%{public}f}", &v13, 0x22u);
    }

    *a1 = a3;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10168D6E4();
  }

  v9 = v6 - a3;
  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a1;
    v13 = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 1026;
    v18 = a2;
    v19 = 2050;
    v20 = v11;
    v21 = 1026;
    v22 = v9 < 259200.0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssInterference, CLLTEBand13Band14Handler::handleBand, , LTE-Band:%{public}u, fMachTimeOfLastBand13Band14Notification:%{public}f, band13Band14UsedRecently:%{public}d}", &v13, 0x28u);
  }

  return sub_100084BB8((a1 + 1), v9 < 259200.0, 1);
}

uint64_t *sub_100083FC4(void *a1, int *a2)
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

_BYTE *sub_10008422C@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0xC)
  {
    v2 = "UnhandledRAT";
  }

  else
  {
    v2 = (&off_1024FBA38)[a1];
  }

  return sub_10000EC00(a2, v2);
}

uint64_t *sub_100084258(void *a1, int *a2)
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

id sub_1000844AC(id *a1)
{
  sub_10001CAF4(buf);
  v10 = 0;
  v2 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v10);
  v3 = v2 & v10;
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,fetchSignalStrengthMeasurementsWithReply", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB024();
    }
  }

  v5 = [objc_msgSend(*a1 "vendor")];
  [v5 registerDelegate:sub_1000736A8((a1 + 318)) inSilo:{objc_msgSend(*a1, "silo")}];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008EBE8;
  v7[3] = &unk_1024FA0E8;
  v7[4] = a1;
  return [v5 fetchSignalStrengthMeasurementForSim:0 withReply:v7];
}

void sub_10008461C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100084634(uint64_t a1, int *a2, CFDictionaryRef *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10167F240();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssInterference::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10167F254();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssInterference::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100084800(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

double *sub_100084800(uint64_t a1, uint64_t a2, int *a3, CFDictionaryRef *a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_10167F27C();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, __p);
    v9 = v14 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v16 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#imd,gnss,onTelephonyNotification,Received notification,%s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10167F4A4(a3);
  }

  v10 = sub_100072010(a3);
  if (CFEqual(@"kUplinkFreqBwNotification", v10))
  {
    sub_10167EB48(a1, a4);
  }

  else
  {
    v11 = sub_100072010(a3);
    if (CFEqual(@"kCellInfoNotification", v11))
    {
      sub_1000839D4(a1, a4);
    }
  }

  return sub_100083CFC(a1);
}

void sub_100084988(uint64_t a1, void *a2, char a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v10 = 67240192;
    v11 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "isBand13Active,%{public}d", &v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101945668(a2);
  }

  if (*(a1 + 576) != a2)
  {
    if (!*(a1 + 576) || (a3 & 1) != 0)
    {
      *(a1 + 648) = *(a1 + 568);
      *(a1 + 656) = *(a1 + 576);
      sub_100806104((a1 + 664), a1 + 584);
      sub_100806104((a1 + 696), a1 + 616);
      *(a1 + 576) = a2;
      sub_1001BF630(a1 + 2576, 15);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 576);
        v10 = 67240192;
        v11 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLGnssController::handleLTEBand13Or14State, fOperatingContext.fDeviceOperatingContext.fB13, %{public}d", &v10, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101945830((a1 + 576));
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "fB13 currently set,not resetting it", &v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101945754();
      }
    }
  }
}

uint64_t sub_100084BB8(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000CF05C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_100084C14(uint64_t a1, int a2, uint64_t a3)
{
  v28 = a2;
  if (*(a3 + 696) != 1)
  {
    return;
  }

  v5 = sub_1000735F4((a1 + 664), &v28);
  if (v5)
  {
    v26 = *(v5 + 3);
    v27 = v5[5];
    v7 = *(v5 + 68);
    v8 = *(a3 + 8);
    if (v8 < 3)
    {
      goto LABEL_6;
    }

    if (v8 == 9)
    {
      v9 = *sub_1006CCAA0(a3, v6);
      v10 = sub_1006CCAA0(a3, v20);
      goto LABEL_7;
    }

    if (v8 == 7)
    {
LABEL_6:
      v9 = *sub_1006CBCE4(a3);
      v10 = sub_1006CBCE4(a3);
    }

    else
    {
      if (v8 - 3 <= 2)
      {
        v13 = *(sub_1006CB140(a3, v6) + 32);
        v12 = *(sub_1006CB140(a3, v21) + 36);
        v11 = -1;
        v9 = -1;
        goto LABEL_8;
      }

      if (v8 == 10)
      {
        v9 = *sub_100681E80(a3, v6);
        v10 = sub_100681E80(a3, v23);
      }

      else
      {
        if (v8 != 6)
        {
          v9 = *(v5 + 12);
          v11 = *(v5 + 13);
          v13 = *(v5 + 14);
          v12 = *(v5 + 15);
          goto LABEL_8;
        }

        v9 = *sub_10007513C(a3, v6);
        v10 = sub_10007513C(a3, v22);
      }
    }

LABEL_7:
    v11 = *(v10 + 4);
    v12 = -1;
    v13 = -1;
LABEL_8:
    v14 = *(a3 + 8);
    if (qword_1025D4660 != -1)
    {
      sub_1016AB5AC();
    }

    v15 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v28;
      sub_10008422C(v14, __p);
      if (v25 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 68290563;
      *&buf[4] = 0;
      v30 = 2082;
      v31 = "";
      v32 = 1026;
      v33 = v16;
      v34 = 2082;
      v35 = v17;
      v36 = 1025;
      v37 = v9;
      v38 = 1025;
      v39 = v11;
      v40 = 1025;
      v41 = v13;
      v42 = 1025;
      v43 = v12;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#awd,handleCellInfoNotification, inst:%{public}d, RAT:%{public, location:escape_only}s, MCC:%{private}d, MNC:%{private}d, SID:%{private}d, NID:%{private}d}", buf, 0x3Au);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = &v28;
    v18 = sub_100083FC4((a1 + 664), &v28);
    *(v18 + 3) = v26;
    v18[5] = v27;
    *(v18 + 12) = v9;
    *(v18 + 13) = v11;
    *(v18 + 14) = v13;
    *(v18 + 15) = v12;
    *(v18 + 16) = v14;
    *(v18 + 68) = v7;
    return;
  }

  if (qword_1025D4660 != -1)
  {
    sub_1016AB5AC();
  }

  v19 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#awd,#Warning,handleCellInfoNotification,fTelephonyInfoMap,null", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016AC548();
  }
}

id sub_100084F30(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a2 == 1 && sub_1000649A0())
  {
    if (a2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:v6];
    v8 = [CTServiceDescriptor descriptorWithSubscriptionContext:v7];
    v9 = *(a1 + 16);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008EA94;
    v12[3] = &unk_10247E6E8;
    v12[4] = v7;
    v12[5] = a3;
    return [v9 getSignalStrengthMeasurements:v8 completion:v12];
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,getSignalStrengthMeasurements, invalid SimInstance : %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101976BC8(a2);
    }

    return (*(a3 + 16))(a3, 0);
  }
}

uint64_t sub_1000850D0(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  *(a1 + 4) = -1;
  *(a1 + 16) = -1;
  sub_10000EC00((a1 + 24), "");
  return a1;
}

uint64_t sub_10008511C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v10 = (a5 * 10000.0);
  v11 = (a6 * 10000.0);
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101ABEA90();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67437057;
      v17[1] = v10;
      v18 = 1029;
      v19 = v11;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "TileFile, Delta lat/lon zero, %{sensitive}d, %{sensitive}d, #CloneMe", v17, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101ABED50(v10, v11);
    }

    LODWORD(v11) = 10000;
    LODWORD(v10) = 10000;
  }

  v14 = ((a3 + 90.0) * 10000.0) / v10 * v10;
  v15 = ((a4 + 180.0) * 10000.0) / v11 * v11;
  *(a1 + 4) = v15;
  *(a1 + 8) = v14;
  *(a1 + 16) = a2;
  return sub_10008914C(a1, v14, v15, a2);
}

uint64_t sub_1000852BC(int *a1)
{
  if (!sub_100089158(a1) || !sub_100089284(a1))
  {
    return 0;
  }

  return sub_100085664(a1);
}

uint64_t sub_10008535C(uint64_t a1, uint64_t a2)
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
    v6 = sub_1000857B4(v3 + 32, a2);
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
  if (v5 == v2 || sub_1000857B4(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1000853E0(uint64_t a1, int *a2)
{
  if (sub_1000852BC(a2))
  {
    return a1 + 8 != sub_10008535C(a1, a2);
  }

  if (qword_1025D4620 != -1)
  {
    sub_10195C830();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    sub_100B4EFD4(a2, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136380675;
    v10 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10195C844();
    return 0;
  }

  return result;
}

uint64_t sub_100085520(uint64_t a1, int *a2)
{
  if (sub_1000852BC(a2))
  {
    v4 = sub_10008535C(a1, a2);
    if (a1 + 8 != v4)
    {
      return *(v4 + 80);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10195C830();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_100B4EFD4(a2, __p);
      if (v9 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136380675;
      v11 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195C93C();
    }
  }

  return 0;
}

uint64_t sub_100085664(uint64_t a1)
{
  if (!*(a1 + 7) && !*(a1 + 11))
  {
    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1019F693C();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_100B4EFD4(a1, __p);
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
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Invalid tile hash: %s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019F6B7C();
    return 0;
  }

  return result;
}

const char *sub_100085790(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return "?";
  }

  else
  {
    return (&off_1024CC2E0)[a1];
  }
}

uint64_t sub_1000857B4(uint64_t a1, uint64_t a2)
{
  if ((sub_1000852BC(a1) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019F693C();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_100B4EFD4(a1, __p);
      v5 = v23 >= 0 ? __p : __p[0];
      *buf = 136380675;
      v25 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019F6C84();
    }
  }

  if ((sub_1000852BC(a2) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019F6D8C();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_100B4EFD4(a2, __p);
      v7 = v23 >= 0 ? __p : __p[0];
      *buf = 136380675;
      v25 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019F6DB4();
    }
  }

  v8 = *a1 < *a2;
  if (*a1 != *a2)
  {
    return v8;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  v8 = v9 < v10;
  if (v9 != v10)
  {
    return v8;
  }

  v11 = *(a1 + 4);
  v12 = *(a2 + 4);
  v8 = v11 < v12;
  if (v11 != v12)
  {
    return v8;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (v13 != v14)
  {
    return v13 < v14;
  }

  v15 = *(a1 + 47);
  if (v15 >= 0)
  {
    v16 = *(a1 + 47);
  }

  else
  {
    v16 = *(a1 + 32);
  }

  v17 = *(a2 + 47);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 32);
  }

  if (v16 != v17)
  {
    return (sub_100019438((a1 + 24), (a2 + 24)) & 0x80u) != 0;
  }

  v19 = v15 >= 0 ? (a1 + 24) : *(a1 + 24);
  v20 = v18 >= 0 ? (a2 + 24) : *(a2 + 24);
  result = memcmp(v19, v20, v16);
  if (result)
  {
    return (sub_100019438((a1 + 24), (a2 + 24)) & 0x80u) != 0;
  }

  return result;
}

uint64_t sub_100085A44(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  (*(*v2 + 16))(v2);
  LODWORD(v1) = *(v1 + 32);
  (*(*v2 + 24))(v2);
  return v1 ^ 1;
}

int32x2_t sub_100085AC4(uint64_t a1, unsigned int a2, unsigned int a3, float32_t a4, float32x2_t a5)
{
  a5.f32[1] = a4;
  result = vcvt_s32_f32(vmla_f32(vcvt_f32_s32(*(a1 + 4)), a5, vcvt_f32_s32(vmul_s32(__PAIR64__(a2, a3), vdup_n_s32(0x2710u)))));
  *(a1 + 4) = result;
  return result;
}

uint64_t sub_100085AF8(uint64_t a1, uint64_t a2)
{
  sub_10008F9D4(v5, a2);
  if (v5[6])
  {
    v2 = 1;
  }

  else
  {
    v2 = v5[0] >= 0x3E8u;
  }

  v3 = !v2;
  sub_10008F96C(v5);
  return v3;
}

uint64_t sub_100085B48(uint64_t a1, uint64_t a2)
{
  result = sub_10008F96C(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_102470D40[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t sub_100085BAC(uint64_t a1, int *a2, uint64_t a3)
{
  if (qword_1025D4870 != -1)
  {
    sub_10023F764();
  }

  v6 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    sub_100A68070(a1, *a2, __p);
    v7 = v33 >= 0 ? __p : __p[0];
    v8 = *a2;
    *buf = 136446466;
    *&buf[4] = v7;
    v25 = 1026;
    v26 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#ca,setMeasurements,measurement,%{public}s, %{public}d", buf, 0x12u);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_1019D3ECC();
    }

    sub_100A68070(a1, *a2, buf);
    if (v27 >= 0)
    {
      v18 = buf;
    }

    else
    {
      v18 = *buf;
    }

    v19 = *a2;
    v28 = 136446466;
    v29 = v18;
    v30 = 1026;
    v31 = v19;
    v20 = _os_log_send_and_compose_impl();
    if (v27 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL AnalyticsLogger<CLAnalyticsMeasurements, CLAnalyticsTriggers>::setMeasurementValue(const Measurement &, MeasurementValueType) [Measurement = CLAnalyticsMeasurements, Trigger = CLAnalyticsTriggers, MeasurementValueType = std::variant<int, long long, unsigned long long, unsigned int, float, double, std::string, BOOL>]", "%s\n", v20);
    if (v20 != __p)
    {
      free(v20);
    }
  }

  LODWORD(__p[0]) = *a2;
  v9 = sub_1000735F4((a1 + 8), __p);
  if (v9)
  {
    v10 = *(a3 + 24);
    if (v10 == -1)
    {
      sub_1003D0A08();
    }

    v11 = v9[6];
    __p[0] = buf;
    v12 = (off_102488B60[v10])(__p, a3);
    if (!sub_10004FCC4(v12, v11))
    {
      goto LABEL_16;
    }
  }

  sub_1000883AC(a1, *a2, __p);
  sub_10008852C(v23, a3);
  if (!v34)
  {
    sub_1000CF05C();
  }

  v13 = (*(*v34 + 48))(v34, v23);
  sub_10008F96C(v23);
  sub_10008FA70(__p);
  if (v13)
  {
    __p[0] = a2;
    v14 = sub_10008FB08((a1 + 48), a2);
    sub_10008FD6C((v14 + 3), a3);
    return 1;
  }

  else
  {
LABEL_16:
    if (qword_1025D4870 != -1)
    {
      sub_1019D3ECC();
    }

    v16 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      sub_100A68070(a1, *a2, __p);
      v17 = v33 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#ca,ERROR,invalid,measurement,%{public}s", buf, 0xCu);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      sub_100A68070(a1, *a2, buf);
      if (v27 >= 0)
      {
        v21 = buf;
      }

      else
      {
        v21 = *buf;
      }

      v28 = 136446210;
      v29 = v21;
      v22 = _os_log_send_and_compose_impl();
      if (v27 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL AnalyticsLogger<CLAnalyticsMeasurements, CLAnalyticsTriggers>::setMeasurementValue(const Measurement &, MeasurementValueType) [Measurement = CLAnalyticsMeasurements, Trigger = CLAnalyticsTriggers, MeasurementValueType = std::variant<int, long long, unsigned long long, unsigned int, float, double, std::string, BOOL>]", "%s\n", v22);
      if (v22 != __p)
      {
        free(v22);
      }

      return 0;
    }
  }

  return result;
}

void sub_100086060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_10008FA70(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10008608C(void *a1, int *a2)
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

void sub_1000862F0(uint64_t a1, int *a2, void **a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 208) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019D5A14();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAnalyticsLogger::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019D5A28();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAnalyticsLogger::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000864BC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000864BC(uint64_t a1, uint64_t a2, int *a3, void **a4)
{
  if (qword_1025D4870 != -1)
  {
    sub_10023F764();
  }

  v7 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, __p);
    v9 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    *buf = 136446210;
    *&buf[4] = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#ca,onTelephonyServiceNotification,%{public}s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019D5A50(a3);
  }

  v10 = sub_100072010(a3);
  if (CFEqual(@"kEmergencyModeChangeNotification", v10))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019D3ECC();
    }

    v11 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#ca,kEmergencyModeChangeNotification", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D5B9C();
    }

    return;
  }

  v12 = sub_100072010(a3);
  if (CFEqual(v12, @"kDataStatusNotification"))
  {
    *buf = 0u;
    v96 = 0u;
    v97 = 1065353216;
    if (sub_10116D15C(*a4, buf))
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v13 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v88) = 0;
        *&v86[0] = &v88;
        v14 = *(sub_1006E20E0(buf, &v88) + 52);
        __p[0] = 68289538;
        LOWORD(__p[1]) = 2082;
        *(&__p[1] + 2) = "";
        WORD1(__p[2]) = 1026;
        HIDWORD(__p[2]) = 0;
        v100 = 1026;
        v101 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ca,kDataStatusNotification, inst:%{public}d, InHomeCountry:%{public}d}", __p, 0x1Eu);
      }

      if (sub_1000649A0())
      {
        if (qword_1025D4870 != -1)
        {
          sub_1019D3ECC();
        }

        v15 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v88) = 1;
          *&v86[0] = &v88;
          v16 = *(sub_1006E20E0(buf, &v88) + 52);
          __p[0] = 68289538;
          LOWORD(__p[1]) = 2082;
          *(&__p[1] + 2) = "";
          WORD1(__p[2]) = 1026;
          HIDWORD(__p[2]) = 1;
          v100 = 1026;
          v101 = v16;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ca,kDataStatusNotification, inst:%{public}d, InHomeCountry:%{public}d}", __p, 0x1Eu);
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v20 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#ca,kDataStatusNotification,error fetching InHomeCountry", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D3EF4(__p);
        LOWORD(v86[0]) = 0;
        v63 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v63);
        if (v63 != __p)
        {
          free(v63);
        }
      }
    }

    sub_1004906DC(buf);
    return;
  }

  v17 = sub_100072010(a3);
  if (CFEqual(v17, @"kAltAccountConfiguredNotification"))
  {
    buf[0] = 0;
    if (sub_10116E980(*a4, buf))
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v18 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p[0]) = 67174657;
        HIDWORD(__p[0]) = buf[0];
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#ca,kAltAccountConfiguredNotification,isAltAccountConfigured,%{private}d", __p, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D5C80();
      }

      LODWORD(__p[0]) = 30;
      if (buf[0] == 1)
      {
        v92[0] = 1;
        v92[6] = 0;
        sub_100085BAC(a1, __p, v92);
        v19 = v92;
      }

      else
      {
        v91[0] = 0;
        v91[6] = 0;
        sub_100085BAC(a1, __p, v91);
        v19 = v91;
      }

      sub_10008F96C(v19);
    }

    return;
  }

  v21 = sub_100072010(a3);
  if (CFEqual(v21, @"kCellInfoNotification"))
  {
    v22 = *a4;
    if (!*a4)
    {
      return;
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    memset(v86, 0, sizeof(v86));
    v87 = 1065353216;
    if (sub_100065478(v22, v86))
    {
      LODWORD(__p[0]) = 0;
      *buf = __p;
      if (sub_1000646F8(v86, __p)[3])
      {
        sub_1000658D0(0, v86, &v88);
        sub_100065934(&v88, buf);
        if (v98)
        {
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v23 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
          {
            __p[0] = 67109120;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,serving cell found for sim,%d", __p, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019D3EF4(__p);
            v93 = 67109120;
            v94 = 0;
            v65 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v65);
            if (v65 != __p)
            {
              free(v65);
            }
          }

          sub_100087E98(a1, 0, buf);
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v56 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,serving cell missing", __p, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019D3EF4(__p);
            LOWORD(v93) = 0;
            v66 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v66);
            if (v66 != __p)
            {
              free(v66);
            }
          }
        }

        sub_1000827E4(buf);
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_1019D3ECC();
        }

        v54 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          __p[0] = 67109120;
          _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,received nil CellInfo from CT for sim %d", __p, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019D3EF4(__p);
          *buf = 67109120;
          *&buf[4] = 0;
          v55 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v55);
          if (v55 != __p)
          {
            free(v55);
          }
        }
      }

      v58 = v88;
      for (i = v89; i != v58; sub_1000720CC(i))
      {
        i -= 696;
      }

      v89 = v58;
      if (!sub_1000649A0())
      {
        goto LABEL_161;
      }

      LODWORD(__p[0]) = 1;
      *buf = __p;
      if (sub_1000646F8(v86, __p)[3])
      {
        sub_1000658D0(1, v86, &v88);
        sub_100065934(&v88, buf);
        if (v98)
        {
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v59 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
          {
            __p[0] = 0x104000100;
            _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,serving cell found for sim,%d", __p, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019D3EF4(__p);
            v93 = 67109120;
            v94 = 1;
            v68 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v68);
            if (v68 != __p)
            {
              free(v68);
            }
          }

          sub_100087E98(a1, 1, buf);
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v62 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,serving cell missing", __p, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019D3EF4(__p);
            LOWORD(v93) = 0;
            v69 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v69);
            if (v69 != __p)
            {
              free(v69);
            }
          }
        }

        sub_1000827E4(buf);
LABEL_161:
        sub_100075100(v86);
        __p[0] = &v88;
        sub_100072124(__p);
        return;
      }

      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v60 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        __p[0] = 0x104000100;
        _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,received nil CellInfo from CT for sim %d", __p, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_161;
      }

      sub_1019D3EF4(__p);
      *buf = 67109120;
      *&buf[4] = 1;
      v34 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v34);
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v33 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,error fetching cell info", __p, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_161;
      }

      sub_1019D3EF4(__p);
      *buf = 0;
      v34 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v34);
    }

    if (v34 != __p)
    {
      free(v34);
    }

    goto LABEL_161;
  }

  v24 = sub_100072010(a3);
  if (CFEqual(v24, @"kSubscriberMccAndMncNotification"))
  {
    *buf = 0u;
    v96 = 0u;
    v97 = 1065353216;
    if (sub_10009404C(*a4, buf))
    {
      LODWORD(v86[0]) = 0;
      __p[0] = v86;
      v25 = *(sub_10009422C(buf, v86) + 5);
      LODWORD(v86[0]) = 0;
      __p[0] = v86;
      v26 = *(sub_10009422C(buf, v86) + 6);
      LODWORD(v86[0]) = 0;
      __p[0] = v86;
      v27 = *(sub_10009422C(buf, v86) + 28);
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v28 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        __p[0] = 68290050;
        LOWORD(__p[1]) = 2082;
        *(&__p[1] + 2) = "";
        WORD1(__p[2]) = 1026;
        HIDWORD(__p[2]) = 0;
        v100 = 1026;
        v101 = v25;
        v102 = 1026;
        v103 = v26;
        v104 = 1026;
        v105 = v27;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ca,kSubscriberMccAndMncNotification, CarrierSim:%{public}d, Carriermcc:%{public}d, CarrierMnc:%{public}d, is3DigitMnc:%{public}hhd}", __p, 0x2Au);
      }

      LODWORD(__p[0]) = 4;
      v85[0] = v25;
      v85[6] = 0;
      sub_100085BAC(a1, __p, v85);
      sub_10008F96C(v85);
      LODWORD(__p[0]) = 5;
      v84[0] = v26;
      v84[6] = 0;
      sub_100085BAC(a1, __p, v84);
      sub_10008F96C(v84);
      LODWORD(v86[0]) = 6;
      sub_10008FF14(v25, __p);
      v81 = *__p;
      v82 = __p[2];
      memset(__p, 0, sizeof(__p));
      v83 = 6;
      sub_100085BAC(a1, v86, &v81);
      sub_10008F96C(&v81);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if (sub_1000649A0())
      {
        LODWORD(v86[0]) = 1;
        __p[0] = v86;
        v29 = *(sub_10009422C(buf, v86) + 5);
        LODWORD(v86[0]) = 1;
        __p[0] = v86;
        v30 = *(sub_10009422C(buf, v86) + 6);
        LODWORD(v86[0]) = 1;
        __p[0] = v86;
        v31 = *(sub_10009422C(buf, v86) + 28);
        if (qword_1025D4870 != -1)
        {
          sub_1019D3ECC();
        }

        v32 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          __p[0] = 68290050;
          LOWORD(__p[1]) = 2082;
          *(&__p[1] + 2) = "";
          WORD1(__p[2]) = 1026;
          HIDWORD(__p[2]) = 1;
          v100 = 1026;
          v101 = v29;
          v102 = 1026;
          v103 = v30;
          v104 = 1026;
          v105 = v31;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ca,kSubscriberMccAndMncNotification, CarrierSim:%{public}d, CarrierMcc:%{public}d, CarrierMnc:%{public}d, is3DigitMnc:%{public}hhd}", __p, 0x2Au);
        }

        LODWORD(__p[0]) = 12;
        v80[0] = v29;
        v80[6] = 0;
        sub_100085BAC(a1, __p, v80);
        sub_10008F96C(v80);
        LODWORD(__p[0]) = 13;
        v79[0] = v30;
        v79[6] = 0;
        sub_100085BAC(a1, __p, v79);
        sub_10008F96C(v79);
        LODWORD(v86[0]) = 16;
        sub_10008FF14(v29, __p);
        v76 = *__p;
        v77 = __p[2];
        memset(__p, 0, sizeof(__p));
        v78 = 6;
        sub_100085BAC(a1, v86, &v76);
        sub_10008F96C(&v76);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v53 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "#ca,kSubscriberMccAndMncNotification,error fetching MCC and MNC", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D3EF4(__p);
        LOWORD(v86[0]) = 0;
        v64 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v64);
        if (v64 != __p)
        {
          free(v64);
        }
      }
    }

    sub_1004906DC(buf);
  }

  else
  {
    v35 = sub_100072010(a3);
    if (CFEqual(v35, @"kSubscriptionChangeNotification"))
    {
      v36 = *a4;
      if (*a4)
      {
        *buf = 0u;
        v96 = 0u;
        v97 = 1065353216;
        if (sub_10116E14C(v36, buf))
        {
          LODWORD(v88) = 0;
          LODWORD(v86[0]) = 33;
          __p[0] = &v88;
          if (*(sub_1009160E8(buf, &v88) + 20))
          {
            v37 = 1;
          }

          else
          {
            v37 = 2;
          }

          v75[0] = v37;
          v75[6] = 0;
          sub_100085BAC(a1, v86, v75);
          sub_10008F96C(v75);
          LODWORD(v86[0]) = 34;
          __p[0] = &v88;
          if (*(sub_1009160E8(buf, &v88) + 21))
          {
            v38 = 1;
          }

          else
          {
            v38 = 2;
          }

          v74[0] = v38;
          v74[6] = 0;
          sub_100085BAC(a1, v86, v74);
          sub_10008F96C(v74);
          LODWORD(v86[0]) = 22;
          __p[0] = &v88;
          if (*(sub_1009160E8(buf, &v88) + 22))
          {
            v39 = 1;
          }

          else
          {
            v39 = 2;
          }

          v73[0] = v39;
          v73[6] = 0;
          sub_100085BAC(a1, v86, v73);
          sub_10008F96C(v73);
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v40 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v88;
            *&v86[0] = &v88;
            v42 = *(sub_1009160E8(buf, &v88) + 20);
            *&v86[0] = &v88;
            v43 = *(sub_1009160E8(buf, &v88) + 21);
            *&v86[0] = &v88;
            v44 = *(sub_1009160E8(buf, &v88) + 22);
            __p[0] = 68290050;
            LOWORD(__p[1]) = 2082;
            *(&__p[1] + 2) = "";
            WORD1(__p[2]) = 1026;
            HIDWORD(__p[2]) = v41;
            v100 = 1026;
            v101 = v42;
            v102 = 1026;
            v103 = v43;
            v104 = 1026;
            v105 = v44;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ca,kSubscriptionChangeNotification, sim:%{public}d, userDataPreferred:%{public}hhd, userDefaultVoice:%{public}hhd, isSimPresent:%{public}hhd}", __p, 0x2Au);
          }

          if (sub_1000649A0())
          {
            v93 = 1;
            LODWORD(v86[0]) = 35;
            __p[0] = &v93;
            if (*(sub_1009160E8(buf, &v93) + 20))
            {
              v45 = 1;
            }

            else
            {
              v45 = 2;
            }

            v72[0] = v45;
            v72[6] = 0;
            sub_100085BAC(a1, v86, v72);
            sub_10008F96C(v72);
            LODWORD(v86[0]) = 36;
            __p[0] = &v93;
            if (*(sub_1009160E8(buf, &v93) + 21))
            {
              v46 = 1;
            }

            else
            {
              v46 = 2;
            }

            v71[0] = v46;
            v71[6] = 0;
            sub_100085BAC(a1, v86, v71);
            sub_10008F96C(v71);
            LODWORD(v86[0]) = 23;
            __p[0] = &v93;
            if (*(sub_1009160E8(buf, &v93) + 22))
            {
              v47 = 1;
            }

            else
            {
              v47 = 2;
            }

            v70[0] = v47;
            v70[6] = 0;
            sub_100085BAC(a1, v86, v70);
            sub_10008F96C(v70);
            if (qword_1025D4870 != -1)
            {
              sub_1019D3ECC();
            }

            v48 = qword_1025D4878;
            if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
            {
              v49 = v93;
              *&v86[0] = &v93;
              v50 = *(sub_1009160E8(buf, &v93) + 20);
              *&v86[0] = &v93;
              v51 = *(sub_1009160E8(buf, &v93) + 21);
              *&v86[0] = &v93;
              v52 = *(sub_1009160E8(buf, &v93) + 22);
              __p[0] = 68290050;
              LOWORD(__p[1]) = 2082;
              *(&__p[1] + 2) = "";
              WORD1(__p[2]) = 1026;
              HIDWORD(__p[2]) = v49;
              v100 = 1026;
              v101 = v50;
              v102 = 1026;
              v103 = v51;
              v104 = 1026;
              v105 = v52;
              _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ca,kSubscriptionChangeNotification, sim:%{public}d, userDataPreferred:%{public}hhd, userDefaultVoice:%{public}hhd, isSimPresent:%{public}hhd}", __p, 0x2Au);
            }
          }
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v61 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_ERROR, "#ca,kSubscriptionChangeNotification,error fetching context", __p, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1019D3EF4(__p);
            LOWORD(v86[0]) = 0;
            v67 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v67);
            if (v67 != __p)
            {
              free(v67);
            }
          }
        }

        sub_1004906DC(buf);
      }
    }
  }
}

void sub_100087CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1000827E4(&STACK[0x230]);
  sub_100075100(&a59);
  STACK[0x4F0] = &a65;
  sub_100072124(&STACK[0x4F0]);
  _Unwind_Resume(a1);
}

void sub_100087E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 696) != 1)
  {
    return;
  }

  v4 = a2;
  v6 = *(a3 + 8);
  if (v6 < 3)
  {
    goto LABEL_5;
  }

  if (v6 == 9)
  {
    v18 = *sub_1006CCAA0(a3, a2);
    v7 = sub_1006CCAA0(a3, v14);
    goto LABEL_6;
  }

  if (v6 == 7)
  {
LABEL_5:
    v18 = *sub_1006CBCE4(a3);
    v7 = sub_1006CBCE4(a3);
  }

  else
  {
    if (v6 - 3 <= 2)
    {
      v10 = *(sub_1006CB140(a3, a2) + 32);
      v9 = *(sub_1006CB140(a3, v15) + 36);
      v8 = -1;
      v18 = -1;
      goto LABEL_7;
    }

    if (v6 == 10)
    {
      v18 = *sub_100681E80(a3, a2);
      v7 = sub_100681E80(a3, v17);
    }

    else
    {
      if (v6 != 6)
      {
        v8 = 0;
        v18 = 0;
        v10 = 0;
        v9 = -1;
        goto LABEL_7;
      }

      v18 = *sub_10007513C(a3, a2);
      v7 = sub_10007513C(a3, v16);
    }
  }

LABEL_6:
  v8 = *(v7 + 4);
  v9 = -1;
  v10 = -1;
LABEL_7:
  if (qword_1025D4870 != -1)
  {
    sub_10023F764();
  }

  v11 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290307;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v4;
    v33 = 1025;
    v34 = v18;
    v35 = 1025;
    v36 = v8;
    v37 = 1025;
    v38 = v10;
    v39 = 1025;
    v40 = v9;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ca,handleCellInfoNotification, inst:%{public}d, OperatorMCC:%{private}d, OperatorMNC:%{private}d, OperatorSID:%{private}d, OperatorNID:%{private}d}", buf, 0x30u);
    if (qword_1025D4870 != -1)
    {
      sub_1019D3ECC();
    }
  }

  v12 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289794;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = 0;
    v33 = 1026;
    v34 = v18;
    v35 = 1026;
    v36 = v8;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ca,kSubscriberMccAndMncNotification, CarrierSim:%{public}d, Carriermcc:%{public}d, CarrierMnc:%{public}d}", buf, 0x24u);
  }

  if (v4 == 1)
  {
    *buf = 14;
    v24[0] = v18;
    v24[6] = 0;
    sub_100085BAC(a1, buf, v24);
    sub_10008F96C(v24);
    *buf = 15;
    v23[0] = v8;
    v23[6] = 0;
    sub_100085BAC(a1, buf, v23);
    sub_10008F96C(v23);
    *buf = 21;
    v22[0] = *(a3 + 8);
    v22[6] = 0;
    sub_100085BAC(a1, buf, v22);
    sub_10008F96C(v22);
    if (v18 - 1 > 0x3E6)
    {
      return;
    }

    v28 = 18;
    sub_10008FF14(v18, buf);
    v19 = *buf;
    v20 = *&buf[16];
    memset(buf, 0, sizeof(buf));
    v21 = 6;
    sub_100085BAC(a1, &v28, &v19);
    v13 = &v19;
    goto LABEL_20;
  }

  if (!v4)
  {
    *buf = 8;
    v31[0] = v18;
    v31[6] = 0;
    sub_100085BAC(a1, buf, v31);
    sub_10008F96C(v31);
    *buf = 9;
    v30[0] = v8;
    v30[6] = 0;
    sub_100085BAC(a1, buf, v30);
    sub_10008F96C(v30);
    *buf = 20;
    v29[0] = *(a3 + 8);
    v29[6] = 0;
    sub_100085BAC(a1, buf, v29);
    sub_10008F96C(v29);
    if (v18 - 1 <= 0x3E6)
    {
      v28 = 10;
      sub_10008FF14(v18, buf);
      v25 = *buf;
      v26 = *&buf[16];
      memset(buf, 0, sizeof(buf));
      v27 = 6;
      sub_100085BAC(a1, &v28, &v25);
      v13 = &v25;
LABEL_20:
      sub_10008F96C(v13);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }
}

void sub_10008831C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10008F96C(va);
  if (*(v3 - 137) < 0)
  {
    operator delete(*(v3 - 160));
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000883AC@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a2;
  result = sub_1000735F4((a1 + 8), &v5);
  if (result)
  {
    return sub_100088494(a3, (result + 8));
  }

  *a3 = off_102488BB0;
  a3[1] = sub_100A73060;
  a3[3] = a3;
  return result;
}

uint64_t *sub_100088428(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v11 = a2;
  v12 = &v11;
  result = sub_10008608C((a1 + 248), &v11);
  *(result + 12) = a3;
  *(result + 13) = a4;
  *(result + 14) = a5;
  *(result + 15) = a6;
  return result;
}

uint64_t sub_100088494(uint64_t a1, uint64_t a2)
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

uint64_t sub_10008852C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_100085B48(a1, a2);
  return a1;
}

uint64_t sub_100088574(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102488ED0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100088608(uint64_t a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6)
{
  v50 = a2;
  if (a2 - 3 >= 3)
  {
    sub_101B15A94();
  }

  if (*(a1 + 129))
  {
    sub_1000850D0(&v46, &v50);
    if (SHIBYTE(v49) < 0)
    {
      *(&v48 + 1) = 0;
      v11 = v48;
    }

    else
    {
      HIBYTE(v49) = 0;
      v11 = &v48;
    }

    *v11 = 0;
    v15 = sub_100088E8C(v46, (a1 + 400));
    if (*(a1 + 144))
    {
      sub_10008511C(&v46, a3, a4, a5, *(v15 + 152), *(v15 + 160));
      if (sub_1000852BC(&v46))
      {
        if (qword_1025D4620 != -1)
        {
          sub_1000E1C54();
        }

        v16 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v17 = v50;
          v18 = sub_100085790(v50);
          sub_100B4EFD4(&v46, __p);
          v19 = __p[23] >= 0 ? __p : *__p;
          v20 = *(a1 + 336);
          *buf = 67241475;
          *v58 = v17;
          *&v58[4] = 2082;
          *&v58[6] = v18;
          *&v58[14] = 2053;
          *&v58[16] = a4;
          v59 = 2053;
          *v60 = a5;
          *&v60[8] = 2081;
          v61 = v19;
          v62 = 1026;
          v63 = v20;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "TileDl, requestDownload, type, %{public}d, %{public}s, location, %{sensitive}14.8lf, %{sensitive}14.8lf, id, %{private}s, reachability, %{public}d", buf, 0x36u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B15D14(buf);
          v34 = v50;
          v35 = sub_100085790(v50);
          sub_100B4EFD4(&v46, v44);
          if (v45 >= 0)
          {
            v36 = v44;
          }

          else
          {
            v36 = v44[0];
          }

          v37 = *(a1 + 336);
          *__p = 67241475;
          *&__p[4] = v34;
          *&__p[8] = 2082;
          *&__p[10] = v35;
          *&__p[18] = 2053;
          *&__p[20] = a4;
          v52 = 2053;
          *v53 = a5;
          *&v53[8] = 2081;
          v54 = v36;
          v55 = 1026;
          v56 = v37;
          v38 = _os_log_send_and_compose_impl();
          if (v45 < 0)
          {
            operator delete(v44[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, CFAbsoluteTime)", "%s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }
        }

        v21 = *(a1 + 360);
        v40 = v46;
        v41 = v47;
        if (SHIBYTE(v49) < 0)
        {
          sub_100007244(&v42, v48, *(&v48 + 1));
        }

        else
        {
          v42 = v48;
          v43 = v49;
        }

        v29 = sub_100089C18(v21, &v40, a6);
        v30 = v29;
        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42);
          if (!v30)
          {
LABEL_48:
            v14 = 1;
LABEL_49:
            if (SHIBYTE(v49) < 0)
            {
              operator delete(v48);
            }

            return v14;
          }
        }

        else if (!v29)
        {
          goto LABEL_48;
        }

        v31 = (*(**(a1 + 352) + 40))(*(a1 + 352));
        if (qword_1025D4620 != -1)
        {
          sub_1000E1C54();
        }

        v32 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240192;
          *v58 = v31;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "@TileSched, cell, set, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B15D14(buf);
          *__p = 67240192;
          *&__p[4] = v31;
          v39 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, CFAbsoluteTime)", "%s\n", v39);
          if (v39 != buf)
          {
            free(v39);
          }
        }

        goto LABEL_48;
      }

      if (qword_1025D4620 != -1)
      {
        sub_1000E1C54();
      }

      v28 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134546689;
        *v58 = a4;
        *&v58[8] = 2053;
        *&v58[10] = a5;
        *&v58[18] = 1024;
        *&v58[20] = v46;
        v59 = 1024;
        *v60 = DWORD1(v46);
        *&v60[4] = 1024;
        *&v60[6] = DWORD2(v46);
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "@TileError, RequestID, ll, %{sensitive}.3lf, %{sensitive}.3lf, tid, %d, %d, %d", buf, 0x28u);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_37:
        v14 = 0;
        goto LABEL_49;
      }

      sub_101B15D14(buf);
      *__p = 134546689;
      *&__p[4] = a4;
      *&__p[12] = 2053;
      *&__p[14] = a5;
      *&__p[22] = 1024;
      *&__p[24] = v46;
      v52 = 1024;
      *v53 = DWORD1(v46);
      *&v53[4] = 1024;
      *&v53[6] = DWORD2(v46);
      v27 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, CFAbsoluteTime)", "%s\n", v27);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1000E1C54();
      }

      v22 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        v23 = v50;
        v24 = sub_100085790(v50);
        *buf = 67240451;
        *v58 = v23;
        *&v58[4] = 2081;
        *&v58[6] = v24;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "@TileDl, requestDownload, type, %{public}d, %{private}s, not active", buf, 0x12u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_37;
      }

      sub_101B15D14(buf);
      v25 = v50;
      v26 = sub_100085790(v50);
      *__p = 67240451;
      *&__p[4] = v25;
      *&__p[8] = 2081;
      *&__p[10] = v26;
      v27 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, CFAbsoluteTime)", "%s\n", v27);
    }

    if (v27 != buf)
    {
      free(v27);
    }

    goto LABEL_37;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101B1583C();
  }

  v12 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 128);
    *buf = 67240192;
    *v58 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TileDl, ignore before first unlock, fDataProtectionEnabled, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B15C20(a1);
  }

  return 0;
}

void sub_100088E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100088E8C(unsigned int a1, void *a2)
{
  result = sub_10007253C(a2, a1);
  if (!result)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B1E8A4();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v9 = a1;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "TileMgr, invalid tileType, %{public}d, #CloneMe", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B1E8B8(a1);
    }

    if (qword_1025D4600 != -1)
    {
      sub_101B1E9DC();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101B1E9DC();
      }
    }

    v6 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101B1E9DC();
      }
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  return result;
}

uint64_t sub_10008914C(uint64_t result, int a2, int a3, uint64_t a4)
{
  *(result + 4) = a3;
  *(result + 8) = a2;
  *(result + 16) = a4;
  return result;
}

uint64_t sub_100089158(uint64_t a1)
{
  if ((*(a1 + 4) & 0x80000000) == 0 && (*(a1 + 8) & 0x80000000) == 0)
  {
    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1019F693C();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_100B4EFD4(a1, __p);
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
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Invalid tile x, y: %s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019F6950();
    return 0;
  }

  return result;
}

BOOL sub_100089284(int *a1)
{
  v1 = *a1;
  if (*a1 >= 0xD)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019F693C();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *a1;
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Invalid tile type: %d", v6, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019F6A58(a1);
    }
  }

  return v1 < 0xD;
}

uint64_t sub_100089378(int a1, unsigned int a2)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return a2;
  }
}

BOOL sub_100089384(uint64_t a1, uint64_t a2, double a3)
{
  __p = 0uLL;
  v28 = 0;
  v6 = (a2 + 48);
  *buf = a2 + 48;
  v7 = sub_10008E7C8(a1 + 24, a2 + 48);
  v8 = sub_100085A44(a2);
  v9 = sub_10008E860(a2);
  v10 = sub_100089378(*(a1 + 104), *(a1 + 109));
  v11 = sub_10007280C(a2);
  v12 = &__p + 10;
  v13 = vabdd_f64(a3, v11);
  if (*(v7 + 88) == 1)
  {
    v14 = 0;
    HIBYTE(v28) = 10;
    WORD4(__p) = 29555;
    v15 = "DlProgress";
LABEL_8:
    *&__p = *v15;
    goto LABEL_9;
  }

  if (((v9 | v8 ^ 1) & 1) == 0)
  {
    v14 = v13 >= *(a1 + 88);
    HIBYTE(v28) = 10;
    WORD4(__p) = 31090;
    v15 = "1st/Re-Try";
    goto LABEL_8;
  }

  if ((v9 ^ 1 | v8 ^ 1))
  {
    if ((v9 ^ 1 | v8))
    {
      v14 = 0;
      v12 = &__p + 5;
      HIBYTE(v28) = 5;
      qmemcpy(&__p, "Empty", 5);
      goto LABEL_9;
    }

    v14 = sub_100ED9330(a2, v10, a3, 1.0);
    v12 = &__p + 11;
    HIBYTE(v28) = 11;
    *(&__p + 7) = 1953720696;
    v15 = "DoesntExist";
    goto LABEL_8;
  }

  v14 = 0;
  v12 = &__p + 14;
  HIBYTE(v28) = 14;
  qmemcpy(&__p, "RefreshSkipped", 14);
LABEL_9:
  *v12 = 0;
  if (qword_1025D4620 != -1)
  {
    sub_101AED57C();
  }

  v16 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v17 = sub_100085790(*v6);
    v18 = sub_100085338(v6);
    v19 = sub_100085314(v6);
    p_p = &__p;
    if (v28 < 0)
    {
      p_p = __p;
    }

    *buf = 136448003;
    *&buf[4] = v17;
    v46 = 2053;
    v47 = v18;
    v48 = 2053;
    v49 = v19;
    v50 = 1026;
    v51 = v14;
    v52 = 1026;
    v53 = v9;
    v54 = 1026;
    v55 = v8;
    v56 = 2050;
    v57 = v13;
    v58 = 2082;
    v59 = p_p;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "@TileReq, %{public}s, attempts, llsw, %{sensitive}.2lf, %{sensitive}.2lf, isDownload, %{public}d, lastSuccess, %{public}d, existsOnServer, %{public}d, sinceLastDownload, %{public}.1lf, path, %{public}s", buf, 0x46u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AED538(buf);
    v22 = sub_100085790(*v6);
    v23 = sub_100085338(v6);
    v24 = sub_100085314(v6);
    v25 = &__p;
    if (v28 < 0)
    {
      v25 = __p;
    }

    v29 = 136448003;
    v30 = v22;
    v31 = 2053;
    v32 = v23;
    v33 = 2053;
    v34 = v24;
    v35 = 1026;
    v36 = v14;
    v37 = 1026;
    v38 = v9;
    v39 = 1026;
    v40 = v8;
    v41 = 2050;
    v42 = v13;
    v43 = 2082;
    v44 = v25;
    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileDownloader::canRequestBasedOnAttempts(CLTileFile *, CFAbsoluteTime)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_1000897A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000897E8(uint64_t a1, void *a2, uint64_t a3)
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
        if (!sub_1000857B4(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1000857B4((v7 + 4), a3))
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

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_100089870(uint64_t a1, int a2, uint64_t a3)
{
  v33 = a2;
  if (*(a3 + 696) != 1)
  {
    return;
  }

  if (!sub_1000735F4((a1 + 1744), &v33))
  {
    if (qword_1025D4660 != -1)
    {
      sub_101B924F8();
    }

    v5 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v33;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#Actor handleCellInfo called with unexpected inst instance %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B936F4(&v33);
    }
  }

  *buf = &v33;
  v6 = sub_10008E220((a1 + 1744), &v33);
  v8 = v6;
  v9 = *(a3 + 8);
  *(v6 + 6) = v9;
  if (v9 < 3)
  {
    goto LABEL_12;
  }

  if (v9 == 9)
  {
    *(v6 + 8) = *sub_1006CCAA0(a3, v7);
    *(v8 + 9) = *(sub_1006CCAA0(a3, v21) + 4);
    v8[5] = -1;
    v10 = sub_1006CCAA0(a3, v22);
    goto LABEL_13;
  }

  if (v9 == 7)
  {
LABEL_12:
    *(v6 + 8) = *sub_1006CBCE4(a3);
    *(v8 + 9) = *(sub_1006CBCE4(a3) + 4);
    v8[5] = -1;
    v10 = sub_1006CBCE4(a3);
LABEL_13:
    v11 = *(v10 + 12);
LABEL_14:
    v8[6] = v11;
    v12 = -1;
    goto LABEL_15;
  }

  if (v9 - 3 <= 2)
  {
    v6[4] = -1;
    *(v6 + 10) = *(sub_1006CB140(a3, v7) + 32);
    *(v8 + 11) = *(sub_1006CB140(a3, v23) + 36);
    v11 = *(sub_1006CB140(a3, v24) + 44);
    goto LABEL_14;
  }

  if (v9 == 10)
  {
    *(v6 + 8) = *sub_100681E80(a3, v7);
    *(v8 + 9) = *(sub_100681E80(a3, v28) + 4);
    v8[5] = -1;
    v8[6] = *(sub_100681E80(a3, v29) + 16);
    v12 = *(sub_100681E80(a3, v30) + 32);
  }

  else
  {
    if (v9 != 6)
    {
      goto LABEL_16;
    }

    *(v6 + 8) = *sub_10007513C(a3, v7);
    *(v8 + 9) = *(sub_10007513C(a3, v25) + 4);
    v8[5] = -1;
    v8[6] = *(sub_10007513C(a3, v26) + 12);
    v12 = *(sub_10007513C(a3, v27) + 24);
  }

LABEL_15:
  *(v8 + 46) = v12;
LABEL_16:
  sub_10008E4C4(a1);
  if (qword_1025D4660 != -1)
  {
    sub_101B924F8();
  }

  v13 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v33;
    sub_10008422C(*(v8 + 6), __p);
    if (v32 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = *(v8 + 8);
    v17 = *(v8 + 9);
    v18 = *(v8 + 10);
    v19 = *(v8 + 11);
    v20 = v8[6];
    *buf = 68290819;
    *&buf[4] = 0;
    v35 = 2082;
    v36 = "";
    v37 = 1026;
    v38 = v14;
    v39 = 2082;
    v40 = v15;
    v41 = 1025;
    v42 = v16;
    v43 = 1025;
    v44 = v17;
    v45 = 1025;
    v46 = v18;
    v47 = 1025;
    v48 = v19;
    v49 = 2049;
    v50 = v20;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Actor cell info updated, inst:%{public}d, RAT:%{public, location:escape_only}s, MCC:%{private}d, MNC:%{private}d, SID:%{private}d, NID:%{private}d, cell ID:%{private}lld}", buf, 0x44u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_100089C18(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a1;
  v6 = sub_100089378(*(a1 + 104), *(a1 + 109));
  if ((*(v5 + 111) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AED524();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "TileDl, preindexskip, request, #CloneMe", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AED5A4();
    }

    v19 = 0;
    return v19 & 1;
  }

  v7 = v6;
  v84 = v5;
  v8 = sub_100088E8C(*a2, *(v5 + 120));
  if (qword_1025D4620 != -1)
  {
    sub_101AED524();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v10 = sub_100085790(*a2);
    *buf = 136446723;
    *&buf[4] = v10;
    *&buf[12] = 2053;
    v95 = sub_100085338(a2);
    *v96 = 2053;
    *&v96[2] = sub_100085314(a2);
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "@TileDl, %{public}s, request, llsw, %{sensitive}.2lf, %{sensitive}.2lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AED694(a2);
  }

  v11 = sub_10008535C(v5, a2);
  v12 = sub_1000853E0(v8 + 184, a2);
  v13 = v12;
  v83 = v5 + 8;
  if (!v12 || (v14 = sub_100085520(v8 + 184, a2), !sub_10008AC98(v14, *(v5 + 110))))
  {
    if (v83 == v11)
    {
      v23 = (v5 + 110);
      if ((v13 & *(v5 + 110)) == 1)
      {
        v24 = sub_100085520(v8 + 184, a2);
        if (v7)
        {
          LOBYTE(v17) = 1;
        }

        else
        {
          LOBYTE(v17) = *(v5 + 69);
        }

        if (qword_1025D4620 != -1)
        {
          sub_101AED57C();
        }

        v32 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          (*(*v24 + 16))(buf, v24);
          v33 = v96[1] >= 0 ? buf : *buf;
          *v92 = 67240451;
          *&v92[4] = v17 & 1;
          *&v92[8] = 2081;
          *&v92[10] = v33;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "@TileQueue, unreadable, %{public}d, tileid, %{private}s", v92, 0x12u);
          if ((v96[1] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_75;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101AED57C();
        }

        (*(*v24 + 16))(v92, v24);
        if (v92[23] >= 0)
        {
          v78 = v92;
        }

        else
        {
          v78 = *v92;
        }

        *v87 = 67240451;
        *&v87[4] = v17 & 1;
        *&v87[8] = 2081;
        *&v87[10] = v78;
        v30 = _os_log_send_and_compose_impl();
        if ((v92[23] & 0x80000000) != 0)
        {
          operator delete(*v92);
        }

        goto LABEL_132;
      }

      if ((v13 & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AED57C();
        }

        v31 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "@TileQueue, queue, 1", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AED954();
        }

        goto LABEL_76;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101AED57C();
      }

      v25 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v26 = *v23;
        *buf = 67240961;
        *&buf[4] = 1;
        *&buf[8] = 1025;
        *&buf[10] = 0;
        v95 = 2.18053518e-289;
        *v96 = v26;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "@TileQueue, skip, alreadyDownloaded, %{public}d, accessible, %{private}d, inqueue, %{public}d, locked, %{private}d", buf, 0x1Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AEDA38(v23);
      }
    }

    else
    {
      v20 = *(v11 + 80);
      if (qword_1025D4620 != -1)
      {
        sub_101AED57C();
      }

      v21 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        (*(*v20 + 16))(buf, v20);
        v22 = v96[1] >= 0 ? buf : *buf;
        *v92 = 136380675;
        *&v92[4] = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "@TileQueue, onlist, tileid, %{private}s", v92, 0xCu);
        if ((v96[1] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AED7EC(v20);
      }
    }

    v82 = 0;
    goto LABEL_87;
  }

  v15 = v83 == v11;
  v16 = sub_100085520(v8 + 184, a2);
  v17 = v15 && sub_100089384(v84, v16, a3);
  if (qword_1025D4620 != -1)
  {
    sub_101AED57C();
  }

  v27 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    (*(*v16 + 16))(buf, v16);
    v28 = v96[1] >= 0 ? buf : *buf;
    *v92 = 67240451;
    *&v92[4] = v17;
    *&v92[8] = 2081;
    *&v92[10] = v28;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "@TileQueue, usable, %{public}d, tileid, %{private}s", v92, 0x12u);
    if ((v96[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_75;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1025D4620 != -1)
  {
    sub_101AED57C();
  }

  (*(*v16 + 16))(v92, v16);
  if (v92[23] >= 0)
  {
    v29 = v92;
  }

  else
  {
    v29 = *v92;
  }

  *v87 = 67240451;
  *&v87[4] = v17;
  *&v87[8] = 2081;
  *&v87[10] = v29;
  v30 = _os_log_send_and_compose_impl();
  if ((v92[23] & 0x80000000) != 0)
  {
    operator delete(*v92);
  }

LABEL_132:
  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileDownloader::requestTiles(TileId, CFAbsoluteTime)", "%s\n", v30);
  if (v30 != buf)
  {
    free(v30);
  }

LABEL_75:
  v5 = v84;
  if (v17)
  {
LABEL_76:
    sub_1010AB49C(*(v8 + 4), v87);
    v86 = *v87;
    *v87 = 0;
    v5 = v84;
    sub_100FA6D58(v84, &v86, a2, a3);
    v34 = v86;
    v86 = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    if (qword_1025D4620 != -1)
    {
      sub_101AED57C();
      v5 = v84;
    }

    v35 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v36 = sub_100085790(*a2);
      v37 = sub_100085338(a2);
      v38 = sub_100085314(a2);
      v39 = *(v5 + 16);
      *buf = 136446979;
      *&buf[4] = v36;
      *&buf[12] = 2053;
      v95 = v37;
      *v96 = 2053;
      *&v96[2] = v38;
      *&v96[10] = 2050;
      v97 = v39;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, center, size, %{public}ld", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AED538(buf);
      v73 = sub_100085790(*a2);
      v74 = sub_100085338(a2);
      v75 = sub_100085314(a2);
      v76 = *(v84 + 16);
      *v92 = 136446979;
      *&v92[4] = v73;
      *&v92[12] = 2053;
      *&v92[14] = v74;
      *&v92[22] = 2053;
      *&__p.__r_.__value_.__l.__data_ = v75;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 2050;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v76;
      v77 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileDownloader::requestTiles(TileId, CFAbsoluteTime)", "%s\n", v77);
      if (v77 != buf)
      {
        free(v77);
      }

      v5 = v84;
    }

    v40 = *v87;
    *v87 = 0;
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v82 = 1;
    goto LABEL_87;
  }

  v82 = 0;
LABEL_87:
  *v92 = *a2;
  *&v92[16] = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    sub_100007244(&__p, *(a2 + 24), *(a2 + 32));
    v5 = v84;
  }

  else
  {
    __p = *(a2 + 24);
  }

  v41 = *(v5 + 72);
  if ((v41 & 0x80000000) == 0)
  {
    v42 = -v41;
    v80 = (2 * v41) | 1;
    v81 = -v41;
    v79 = *(v5 + 72);
    do
    {
      v44 = v80;
      v43 = v81;
      do
      {
        if (!(v43 | v42))
        {
          goto LABEL_110;
        }

        *v92 = *a2;
        *&v92[16] = *(a2 + 16);
        std::string::operator=(&__p, (a2 + 24));
        v45 = *(v8 + 160);
        v46 = *(v8 + 152);
        *&v45 = v45;
        sub_100085AC4(v92, v42, v43, v46, *&v45);
        v47 = sub_1000852BC(v92);
        v48 = v47 ^ 1;
        if (v47)
        {
          v49 = sub_10008535C(v84, v92);
          v50 = sub_1000853E0(v8 + 184, v92);
          v51 = v83 != v49;
          if (!((*(v84 + 110) | v50) & 1 | v51 | v48 & 1))
          {
            sub_1010AB49C(*(v8 + 4), &v85);
            sub_100FA6D58(v84, &v85, v92, a3);
            v52 = v85;
            v85 = 0;
            if (v52)
            {
              (*(*v52 + 8))(v52);
            }

            if (qword_1025D4620 != -1)
            {
              sub_101AED57C();
            }

            v53 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v54 = sub_100085790(*v92);
              v55 = sub_100085338(v92);
              v56 = sub_100085314(v92);
              v57 = *(v84 + 16);
              *buf = 136446979;
              *&buf[4] = v54;
              *&buf[12] = 2053;
              v95 = v55;
              *v96 = 2053;
              *&v96[2] = v56;
              *&v96[10] = 2050;
              v97 = v57;
              _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEFAULT, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, neighbor, size, %{public}ld", buf, 0x2Au);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AED538(buf);
              v66 = sub_100085790(*v92);
              v67 = sub_100085338(v92);
              v68 = sub_100085314(v92);
              v69 = *(v84 + 16);
              *v87 = 136446979;
              *&v87[4] = v66;
              *&v87[12] = 2053;
              *&v87[14] = v67;
              v88 = 2053;
              *v89 = v68;
              *&v89[8] = 2050;
              v90 = v69;
              v70 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileDownloader::requestTiles(TileId, CFAbsoluteTime)", "%s\n", v70);
              if (v70 != buf)
              {
                free(v70);
              }
            }

            v82 = 1;
            goto LABEL_110;
          }
        }

        else
        {
          v50 = 0;
          v51 = 0;
        }

        if (qword_1025D4620 != -1)
        {
          sub_101AED57C();
        }

        v58 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v59 = sub_100085338(v92);
          v60 = sub_100085314(v92);
          v61 = *(v84 + 110);
          *buf = 134546945;
          *&buf[4] = v59;
          *&buf[12] = 2053;
          v95 = v60;
          *v96 = 1026;
          *&v96[2] = v61;
          *&v96[6] = 1026;
          *&v96[8] = v50;
          LOWORD(v97) = 1026;
          *(&v97 + 2) = v51;
          HIWORD(v97) = 1026;
          v98 = v48;
          _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEBUG, "@TileDl, skipneighbor, %{sensitive}.2lf, %{sensitive}.2lf, locked, %{public}d, dled, %{public}d, pending, %{public}d, outbounds, %{public}d", buf, 0x2Eu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AED538(buf);
          v62 = sub_100085338(v92);
          v63 = sub_100085314(v92);
          v64 = *(v84 + 110);
          *v87 = 134546945;
          *&v87[4] = v62;
          *&v87[12] = 2053;
          *&v87[14] = v63;
          v88 = 1026;
          *v89 = v64;
          *&v89[4] = 1026;
          *&v89[6] = v50;
          LOWORD(v90) = 1026;
          *(&v90 + 2) = v51;
          HIWORD(v90) = 1026;
          v91 = v48;
          v65 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileDownloader::requestTiles(TileId, CFAbsoluteTime)", "%s\n", v65);
          if (v65 != buf)
          {
            free(v65);
          }
        }

LABEL_110:
        ++v43;
        --v44;
      }

      while (v44);
    }

    while (v42++ != v79);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = v82;
  return v19 & 1;
}

void sub_10008ABE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10008AC98(uint64_t a1, char a2)
{
  v4 = *(a1 + 40);
  (*(*v4 + 16))(v4);
  v5 = sub_100085A44(a1);
  if (a2)
  {
    v5 = (sub_100EDF004(a1) > 2) & v5;
  }

  (*(*v4 + 24))(v4);
  return v5;
}

void sub_10008AD54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10008AD70(uint64_t a1, int *a2, CFDictionaryRef *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101AB6638();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLEmergencyController::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101AB664C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLEmergencyController::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10008AF3C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10008AF3C(uint64_t a1, uint64_t a2, int *a3, CFDictionaryRef *a4)
{
  if (qword_1025D4660 != -1)
  {
    sub_101AB5E80();
  }

  v7 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, __p);
    v9 = __p[23] >= 0 ? __p : *__p;
    *buf = 136446210;
    *&buf[4] = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#EmergCon,EMERGENCY:notification,%{public}s", buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AB76CC(a3);
  }

  if (*a4 || (v10 = sub_100072010(a3), CFEqual(@"kCLTelephonyServiceConnectedNotification", v10)) || (v11 = sub_100072010(a3), CFEqual(@"kCLTelephonyServiceDisconnectedNotification", v11)) || (v12 = sub_100072010(a3), CFEqual(@"kCLTelephonyServiceResetNotification", v12)) || (v13 = sub_100072010(a3), CFEqual(@"kCallStatusChangeNotification", v13)) || (v14 = sub_100072010(a3), CFEqual(@"kAtLeastOneVoiceCallInProgress", v14)) || (v15 = sub_100072010(a3), CFEqual(@"kNoVoiceCallInProgress", v15)))
  {
    sub_10008DB8C(*(a1 + 688), a3, a4);
    v16 = sub_100072010(a3);
    if (CFEqual(@"kEmergencyModeChangeNotification", v16))
    {
      if (qword_1025D4660 != -1)
      {
        sub_101AB5F70();
      }

      v17 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        *__p = 68289282;
        *&__p[8] = 2082;
        *&__p[10] = "";
        *&__p[18] = 2082;
        *&__p[20] = "CLTelephonyService_Type::kEmergencyModeChangeNotification";
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon EMERGENCY:notification, notif:%{public, location:escape_only}s}", __p, 0x1Cu);
      }

      sub_100586DA4(__p, *a4);
      *buf = *__p;
      LODWORD(v165) = *&__p[16];
      sub_100EB6A30(a1, buf);
      return;
    }

    v18 = sub_100072010(a3);
    if (CFEqual(v18, @"kRegistrationDisplayStatusNotification"))
    {
      *buf = 0u;
      v165 = 0u;
      v166 = 1065353216;
      if (sub_10116CE44(*a4, buf))
      {
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v19 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v159.__r_.__value_.__l.__data_) = 0;
          __str.__r_.__value_.__r.__words[0] = &v159;
          v20 = *(sub_100916320(buf, &v159) + 48);
          *__p = 68289539;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1026;
          *&__p[20] = 0;
          *&__p[24] = 1025;
          *&__p[26] = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kRegistrationDisplayStatusNotification, sim:%{public}d, inHomeCountry:%{private}d}", __p, 0x1Eu);
        }

        v21 = *(a1 + 688);
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        *__p = &__str;
        v22 = sub_100916320(buf, &__str);
        sub_10128BFDC(v21, 0, *(v22 + 48));
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v23 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v159.__r_.__value_.__l.__data_) = 0;
          __str.__r_.__value_.__r.__words[0] = &v159;
          v24 = *(sub_100916320(buf, &v159) + 51);
          *__p = 68289283;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1025;
          *&__p[20] = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kRegistrationDisplayStatusNotification, isSatelliteSystem:%{private}hhd}", __p, 0x18u);
        }

        v25 = *(a1 + 688);
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        *__p = &__str;
        v26 = sub_100916320(buf, &__str);
        sub_10128C18C(v25, 0, *(v26 + 51));
        if (*(a1 + 133) == 1)
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v27 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v159.__r_.__value_.__l.__data_) = 1;
            __str.__r_.__value_.__r.__words[0] = &v159;
            v28 = *(sub_100916320(buf, &v159) + 48);
            *__p = 68289539;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 1026;
            *&__p[20] = 1;
            *&__p[24] = 1025;
            *&__p[26] = v28;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kRegistrationDisplayStatusNotification, sim:%{public}d, inHomeCountry:%{private}d}", __p, 0x1Eu);
          }

          v29 = *(a1 + 688);
          LODWORD(__str.__r_.__value_.__l.__data_) = 1;
          *__p = &__str;
          v30 = sub_100916320(buf, &__str);
          sub_10128BFDC(v29, 1, *(v30 + 48));
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v31 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v159.__r_.__value_.__l.__data_) = 1;
            __str.__r_.__value_.__r.__words[0] = &v159;
            v32 = *(sub_100916320(buf, &v159) + 51);
            *__p = 68289283;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 1025;
            *&__p[20] = v32;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kRegistrationDisplayStatusNotification, isSatelliteSystem:%{private}hhd}", __p, 0x18u);
          }

          v33 = *(a1 + 688);
          LODWORD(__str.__r_.__value_.__l.__data_) = 1;
          *__p = &__str;
          v34 = sub_100916320(buf, &__str);
          sub_10128C18C(v33, 1u, *(v34 + 51));
        }

        v35 = *(a1 + 672);
        if (v35)
        {
          v36 = *v35;
          if (*v35)
          {
            LODWORD(__str.__r_.__value_.__l.__data_) = 0;
            *__p = &__str;
            v37 = sub_100916320(buf, &__str);
            sub_100E42FE0(v36, v37 + 24);
          }
        }
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v47 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_ERROR, "#EmergCon,kRegistrationDisplayStatusNotification,error fetching InHomeCountry", __p, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101AB65F4(__p);
          LOWORD(__str.__r_.__value_.__l.__data_) = 0;
          v110 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v110);
          if (v110 != __p)
          {
            free(v110);
          }
        }
      }

      sub_100103B14(buf);
      return;
    }

    v38 = sub_100072010(a3);
    if (CFEqual(v38, @"kInHomeCountryNotification"))
    {
      *buf = 0u;
      v165 = 0u;
      v166 = 1065353216;
      if (sub_10116CA34(*a4, buf))
      {
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v39 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v159.__r_.__value_.__l.__data_) = 0;
          __str.__r_.__value_.__r.__words[0] = &v159;
          v40 = *(sub_100914B54(buf, &v159) + 20);
          *__p = 68289539;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1026;
          *&__p[20] = 0;
          *&__p[24] = 1025;
          *&__p[26] = v40;
          _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kInHomeCountryNotification, sim:%{public}d, inHomeCountry:%{private}d}", __p, 0x1Eu);
        }

        v41 = *(a1 + 688);
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        *__p = &__str;
        v42 = sub_100914B54(buf, &__str);
        sub_10128BFDC(v41, 0, *(v42 + 20));
        if (*(a1 + 133) == 1)
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v43 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v159.__r_.__value_.__l.__data_) = 1;
            __str.__r_.__value_.__r.__words[0] = &v159;
            v44 = *(sub_100914B54(buf, &v159) + 20);
            *__p = 68289539;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 1026;
            *&__p[20] = 1;
            *&__p[24] = 1025;
            *&__p[26] = v44;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kInHomeCountryNotification, sim:%{public}d, inHomeCountry:%{private}d}", __p, 0x1Eu);
          }

          v45 = *(a1 + 688);
          LODWORD(__str.__r_.__value_.__l.__data_) = 1;
          *__p = &__str;
          v46 = sub_100914B54(buf, &__str);
          sub_10128BFDC(v45, 1, *(v46 + 20));
        }

        goto LABEL_82;
      }

      if (qword_1025D4660 != -1)
      {
        sub_101AB5F70();
      }

      v57 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_ERROR, "#EmergCon,kInHomeCountryNotification,error fetching InHomeCountry", __p, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_82;
      }

      sub_101AB65F4(__p);
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      v114 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v114);
      if (v114 == __p)
      {
        goto LABEL_82;
      }

LABEL_236:
      free(v114);
LABEL_82:
      sub_1004906DC(buf);
      return;
    }

    v48 = sub_100072010(a3);
    if (CFEqual(v48, @"kDataStatusNotification"))
    {
      *buf = 0u;
      v165 = 0u;
      v166 = 1065353216;
      if (sub_10116D15C(*a4, buf))
      {
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v49 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v159.__r_.__value_.__l.__data_) = 0;
          __str.__r_.__value_.__r.__words[0] = &v159;
          v50 = *(sub_1006E20E0(buf, &v159) + 52);
          *__p = 68289538;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1026;
          *&__p[20] = 0;
          *&__p[24] = 1026;
          *&__p[26] = v50;
          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#EmergCon,kDataStatusNotification, inst:%{public}d, InHomeCountry:%{public}d}", __p, 0x1Eu);
        }

        v51 = *(a1 + 688);
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        *__p = &__str;
        v52 = sub_1006E20E0(buf, &__str);
        sub_10128BFDC(v51, 0, *(v52 + 52));
        if (*(a1 + 133) == 1)
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v53 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v159.__r_.__value_.__l.__data_) = 1;
            __str.__r_.__value_.__r.__words[0] = &v159;
            v54 = *(sub_1006E20E0(buf, &v159) + 52);
            *__p = 68289538;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 1026;
            *&__p[20] = 1;
            *&__p[24] = 1026;
            *&__p[26] = v54;
            _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#EmergCon,kDataStatusNotification, inst:%{public}d, InHomeCountry:%{public}d}", __p, 0x1Eu);
          }

          v55 = *(a1 + 688);
          LODWORD(__str.__r_.__value_.__l.__data_) = 1;
          *__p = &__str;
          v56 = sub_1006E20E0(buf, &__str);
          sub_10128BFDC(v55, 1, *(v56 + 52));
        }

        goto LABEL_82;
      }

      if (qword_1025D4660 != -1)
      {
        sub_101AB5F70();
      }

      v64 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_ERROR, "#EmergCon,kDataStatusNotification,error fetching InHomeCountry", __p, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_82;
      }

      sub_101AB65F4(__p);
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      v114 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v114);
      if (v114 == __p)
      {
        goto LABEL_82;
      }

      goto LABEL_236;
    }

    v58 = sub_100072010(a3);
    if (CFEqual(v58, @"kPhoneNumberStatusNotification"))
    {
      *buf = 0u;
      v165 = 0u;
      v166 = 1065353216;
      if (sub_10116E824(*a4, buf))
      {
        *__p = 0;
        if (sub_1000735F4(buf, __p))
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v59 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v159.__r_.__value_.__l.__data_) = 0;
            __str.__r_.__value_.__r.__words[0] = &v159;
            v60 = sub_100916A24(buf, &v159);
            v61 = v60 + 3;
            if (*(v60 + 47) < 0)
            {
              v61 = *v61;
            }

            *__p = 136380675;
            *&__p[4] = v61;
            _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "#EmergCon,kPhoneNumberStatusNotification,phoneNumberOne,%{private}s", __p, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AB65F4(__p);
            v157 = 0;
            v159.__r_.__value_.__r.__words[0] = &v157;
            v125 = sub_100916A24(buf, &v157);
            v126 = v125 + 3;
            if (*(v125 + 47) < 0)
            {
              v126 = *v126;
            }

            LODWORD(__str.__r_.__value_.__l.__data_) = 136380675;
            *(__str.__r_.__value_.__r.__words + 4) = v126;
            v127 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v127);
            if (v127 != __p)
            {
              free(v127);
            }
          }

          v62 = *(a1 + 688);
          LODWORD(__str.__r_.__value_.__l.__data_) = 0;
          *__p = &__str;
          v63 = sub_100916A24(buf, &__str);
          if (*(v63 + 47) < 0)
          {
            sub_100007244(__dst, v63[3], v63[4]);
          }

          else
          {
            *__dst = *(v63 + 3);
            v156 = v63[5];
          }

          sub_10128D628(v62, 0, __dst);
          if (SHIBYTE(v156) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        if (*(a1 + 133) == 1)
        {
          *__p = 1;
          if (sub_1000735F4(buf, __p))
          {
            if (qword_1025D4660 != -1)
            {
              sub_101AB5F70();
            }

            v84 = qword_1025D4668;
            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(v159.__r_.__value_.__l.__data_) = 1;
              __str.__r_.__value_.__r.__words[0] = &v159;
              v85 = sub_100916A24(buf, &v159);
              v86 = v85 + 3;
              if (*(v85 + 47) < 0)
              {
                v86 = *v86;
              }

              *__p = 136380675;
              *&__p[4] = v86;
              _os_log_impl(dword_100000000, v84, OS_LOG_TYPE_DEBUG, "#EmergCon,kPhoneNumberStatusNotification,phoneNumberTwo,%{private}s", __p, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AB65F4(__p);
              v157 = 1;
              v159.__r_.__value_.__r.__words[0] = &v157;
              v137 = sub_100916A24(buf, &v157);
              v138 = v137 + 3;
              if (*(v137 + 47) < 0)
              {
                v138 = *v138;
              }

              LODWORD(__str.__r_.__value_.__l.__data_) = 136380675;
              *(__str.__r_.__value_.__r.__words + 4) = v138;
              v139 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v139);
              if (v139 != __p)
              {
                free(v139);
              }
            }

            v87 = *(a1 + 688);
            LODWORD(__str.__r_.__value_.__l.__data_) = 1;
            *__p = &__str;
            v88 = sub_100916A24(buf, &__str);
            if (*(v88 + 47) < 0)
            {
              sub_100007244(v153, v88[3], v88[4]);
            }

            else
            {
              *v153 = *(v88 + 3);
              v154 = v88[5];
            }

            sub_10128D628(v87, 1, v153);
            if (SHIBYTE(v154) < 0)
            {
              operator delete(v153[0]);
            }
          }
        }
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v67 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_ERROR, "#EmergCon,kPhoneNumberStatusNotification,error fetching phone numbers", __p, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101AB65F4(__p);
          LOWORD(__str.__r_.__value_.__l.__data_) = 0;
          v68 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v68);
          if (v68 != __p)
          {
            free(v68);
          }
        }
      }

      sub_100103B14(buf);
    }

    else
    {
      v65 = sub_100072010(a3);
      if (CFEqual(v65, @"kAltAccountConfiguredNotification"))
      {
        buf[0] = 0;
        if (sub_10116E980(*a4, buf))
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v66 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *__p = 67174657;
            *&__p[4] = buf[0];
            _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "#EmergCon,kAltAccountConfiguredNotification,isAltAccountConfigured,%{private}d", __p, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AB78F4();
          }

          sub_10128E834(*(a1 + 688), buf[0]);
        }

        else
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v83 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
          {
            *__p = 0;
            _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_ERROR, "#EmergCon,kAltAccountConfiguredNotification,error fetching alt account configuration", __p, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101AB7808();
          }
        }
      }

      else
      {
        v69 = sub_100072010(a3);
        if (CFEqual(v69, @"kSimStatusChangeNotification"))
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v70 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *__p = 68289282;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 2082;
            *&__p[20] = "CLTelephonyService_Type::kSimStatusChangeNotification";
            _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon EMERGENCY:notification, notif:%{public, location:escape_only}s}", __p, 0x1Cu);
          }

          *buf = 0u;
          v165 = 0u;
          v166 = 1065353216;
          if (sub_10116D8D4(*a4, buf))
          {
            memset(&__str, 0, sizeof(__str));
            memset(&v159, 0, sizeof(v159));
            v157 = 0;
            *__p = &v157;
            v71 = sub_1009166D0(buf, &v157);
            std::string::operator=(&__str, v71 + 1);
            v157 = 0;
            *__p = &v157;
            v72 = sub_1009166D0(buf, &v157);
            std::string::operator=(&v159, v72 + 2);
            if (qword_1025D4660 != -1)
            {
              sub_101AB5F70();
            }

            v73 = qword_1025D4668;
            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
            {
              p_str = &__str;
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_str = __str.__r_.__value_.__r.__words[0];
              }

              v75 = &v159;
              if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v75 = v159.__r_.__value_.__r.__words[0];
              }

              *__p = 68289795;
              *&__p[8] = 2082;
              *&__p[10] = "";
              *&__p[18] = 1026;
              *&__p[20] = 0;
              *&__p[24] = 2081;
              *&__p[26] = p_str;
              *&__p[34] = 2081;
              v162 = v75;
              _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kSimStatusChangeNotification, sim:%{public}d, imsi:%{private, location:escape_only}s, imei:%{private, location:escape_only}s}", __p, 0x2Cu);
            }

            sub_10128CA68(*(a1 + 688), 0, &__str, &v159);
            v157 = 0;
            *__p = &v157;
            v76 = sub_100916A24((a1 + 312), &v157);
            std::string::operator=(v76 + 1, &__str);
            if (*(a1 + 133) == 1)
            {
              v157 = 1;
              *__p = &v157;
              v77 = sub_1009166D0(buf, &v157);
              std::string::operator=(&__str, v77 + 1);
              v157 = 1;
              *__p = &v157;
              v78 = sub_1009166D0(buf, &v157);
              std::string::operator=(&v159, v78 + 2);
              if (qword_1025D4660 != -1)
              {
                sub_101AB5F70();
              }

              v79 = qword_1025D4668;
              if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
              {
                v80 = &__str;
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v80 = __str.__r_.__value_.__r.__words[0];
                }

                v81 = &v159;
                if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v81 = v159.__r_.__value_.__r.__words[0];
                }

                *__p = 68289795;
                *&__p[8] = 2082;
                *&__p[10] = "";
                *&__p[18] = 1026;
                *&__p[20] = 1;
                *&__p[24] = 2081;
                *&__p[26] = v80;
                *&__p[34] = 2081;
                v162 = v81;
                _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kSimStatusChangeNotification, sim:%{public}d, imsi:%{private, location:escape_only}s, imei:%{private, location:escape_only}s}", __p, 0x2Cu);
              }

              sub_10128CA68(*(a1 + 688), 1, &__str, &v159);
              v157 = 1;
              *__p = &v157;
              v82 = sub_100916A24((a1 + 312), &v157);
              std::string::operator=(v82 + 1, &__str);
            }

            if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v159.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if (qword_1025D4660 != -1)
            {
              sub_101AB5F70();
            }

            v93 = qword_1025D4668;
            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
            {
              *__p = 0;
              _os_log_impl(dword_100000000, v93, OS_LOG_TYPE_ERROR, "#EmergCon,kSimStatusChangeNotification,error fetching imsi and imei", __p, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_101AB65F4(__p);
              LOWORD(__str.__r_.__value_.__l.__data_) = 0;
              v141 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v141);
              if (v141 != __p)
              {
                free(v141);
              }
            }
          }

          sub_1009165FC(buf);
        }

        else
        {
          v92 = sub_100072010(a3);
          if (CFEqual(v92, @"kCellInfoNotification"))
          {
            *buf = 0u;
            v165 = 0u;
            v166 = 1065353216;
            if (sub_100065478(*a4, buf))
            {
              sub_10008DB94(a1, 0, buf);
              if (sub_1000649A0())
              {
                sub_10008DB94(a1, 1, buf);
              }
            }

            else
            {
              if (qword_1025D4660 != -1)
              {
                sub_101AB5F70();
              }

              v99 = qword_1025D4668;
              if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
              {
                *__p = 0;
                _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_ERROR, "#EmergCon,#ci,kCellInfoNotification,error fetching cell info", __p, 2u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_101AB65F4(__p);
                LOWORD(__str.__r_.__value_.__l.__data_) = 0;
                v146 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v146);
                if (v146 != __p)
                {
                  free(v146);
                }
              }
            }

            sub_100075100(buf);
          }

          else
          {
            v94 = sub_100072010(a3);
            if (CFEqual(v94, @"kSmsSentNotification"))
            {
              *buf = 0;
              v158 = 0;
              LODWORD(__str.__r_.__value_.__l.__data_) = 0;
              LODWORD(v159.__r_.__value_.__l.__data_) = -1;
              v157 = -1;
              if (sub_10116E478(*a4, buf, &v158, &__str, &v159, &v157))
              {
                if (qword_1025D4660 != -1)
                {
                  sub_101AB5F70();
                }

                v95 = qword_1025D4668;
                if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                {
                  v96 = [*buf slotID];
                  *__p = 68290306;
                  *&__p[8] = 2082;
                  *&__p[10] = "";
                  *&__p[18] = 1026;
                  *&__p[20] = v96;
                  *&__p[24] = 1026;
                  *&__p[26] = v158;
                  *&__p[30] = 1026;
                  *&__p[32] = __str.__r_.__value_.__l.__data_;
                  LOWORD(v162) = 1026;
                  *(&v162 + 2) = v159.__r_.__value_.__l.__data_;
                  HIWORD(v162) = 1026;
                  v163 = v157;
                  _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kSmsSentNotification, inst:%{public}d, success:%{public}hhd, messageID:%{public}d, sendError:%{public}d, modemError:%{public}d}", __p, 0x30u);
                }

                v97 = *(a1 + 688);
                v98 = sub_1000646B0([*buf slotID]);
                sub_10128C7D0(v97, v98, v158, LODWORD(__str.__r_.__value_.__l.__data_), LODWORD(v159.__r_.__value_.__l.__data_), v157);
              }

              else
              {
                if (qword_1025D4660 != -1)
                {
                  sub_101AB5F70();
                }

                v109 = qword_1025D4668;
                if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
                {
                  *__p = 0;
                  _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_ERROR, "#EmergCon,kSmsSentNotification,error fetching SMS info", __p, 2u);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_101AB79F0();
                }
              }
            }

            else
            {
              v100 = sub_100072010(a3);
              if (CFEqual(v100, @"kSubscriberMccAndMncNotification"))
              {
                *buf = 0u;
                v165 = 0u;
                v166 = 1065353216;
                if (sub_10009404C(*a4, buf))
                {
                  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                  *__p = &__str;
                  v101 = *(sub_10009422C(buf, &__str) + 5);
                  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                  *__p = &__str;
                  v102 = *(sub_10009422C(buf, &__str) + 6);
                  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                  *__p = &__str;
                  v103 = *(sub_10009422C(buf, &__str) + 28);
                  if (qword_1025D4660 != -1)
                  {
                    sub_101AB5F70();
                  }

                  v104 = qword_1025D4668;
                  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                  {
                    *__p = 68290050;
                    *&__p[8] = 2082;
                    *&__p[10] = "";
                    *&__p[18] = 1026;
                    *&__p[20] = 0;
                    *&__p[24] = 1026;
                    *&__p[26] = v101;
                    *&__p[30] = 1026;
                    *&__p[32] = v102;
                    LOWORD(v162) = 1026;
                    *(&v162 + 2) = v103;
                    _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kSubscriberMccAndMncNotification, sim:%{public}d, mcc:%{public}d, mnc:%{public}d, is3DigitMnc:%{public}hhd}", __p, 0x2Au);
                  }

                  sub_10128CC30(*(a1 + 688), 0, v101, v102);
                  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                  *__p = &__str;
                  *(sub_10006BEC4((a1 + 352), &__str) + 5) = v101;
                  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                  *__p = &__str;
                  *(sub_10006BEC4((a1 + 392), &__str) + 5) = v102;
                  if (*(a1 + 133) == 1)
                  {
                    LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                    *__p = &__str;
                    v105 = *(sub_10009422C(buf, &__str) + 5);
                    LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                    *__p = &__str;
                    v106 = *(sub_10009422C(buf, &__str) + 6);
                    LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                    *__p = &__str;
                    v107 = *(sub_10009422C(buf, &__str) + 28);
                    if (qword_1025D4660 != -1)
                    {
                      sub_101AB5F70();
                    }

                    v108 = qword_1025D4668;
                    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                    {
                      *__p = 68290050;
                      *&__p[8] = 2082;
                      *&__p[10] = "";
                      *&__p[18] = 1026;
                      *&__p[20] = 1;
                      *&__p[24] = 1026;
                      *&__p[26] = v105;
                      *&__p[30] = 1026;
                      *&__p[32] = v106;
                      LOWORD(v162) = 1026;
                      *(&v162 + 2) = v107;
                      _os_log_impl(dword_100000000, v108, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kSubscriberMccAndMncNotification, sim:%{public}d, mcc:%{public}d, mnc:%{public}d, is3DigitMnc:%{public}hhd}", __p, 0x2Au);
                    }

                    sub_10128CC30(*(a1 + 688), 1, v105, v106);
                    LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                    *__p = &__str;
                    *(sub_10006BEC4((a1 + 352), &__str) + 5) = v105;
                    LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                    *__p = &__str;
                    *(sub_10006BEC4((a1 + 392), &__str) + 5) = v106;
                  }
                }

                else
                {
                  if (qword_1025D4660 != -1)
                  {
                    sub_101AB5F70();
                  }

                  v113 = qword_1025D4668;
                  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 0;
                    _os_log_impl(dword_100000000, v113, OS_LOG_TYPE_ERROR, "#EmergCon,kSubscriberMccAndMncNotification,error fetching MCC and MNC", __p, 2u);
                  }

                  if (sub_10000A100(121, 0))
                  {
                    sub_101AB65F4(__p);
                    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
                    v147 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v147);
                    if (v147 != __p)
                    {
                      free(v147);
                    }
                  }
                }

                sub_1004906DC(buf);
              }

              else
              {
                v111 = sub_100072010(a3);
                if (CFEqual(@"kCLTelephonyServiceDisconnectedNotification", v111))
                {
                  if (qword_1025D4660 != -1)
                  {
                    sub_101AB5F70();
                  }

                  v112 = qword_1025D4668;
                  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                  {
                    *__p = 68289282;
                    *&__p[8] = 2082;
                    *&__p[10] = "";
                    *&__p[18] = 2082;
                    *&__p[20] = "CLTelephonyService_Type::kDisconnectedNotification";
                    _os_log_impl(dword_100000000, v112, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon EMERGENCY:notification, notif:%{public, location:escape_only}s}", __p, 0x1Cu);
                  }

                  *(a1 + 48) = 0;
                  sub_100EB6F4C(a1, 0);
                  *(a1 + 92) = 0;
                  *(a1 + 96) = 0x400000000;
                  *(a1 + 104) = 256;
                  *(a1 + 106) = 0;
                  *(a1 + 108) = 255;
                  sub_100EB52FC(a1);
                }

                else
                {
                  v115 = sub_100072010(a3);
                  if (CFEqual(@"kLinkQualityNotification", v115))
                  {
                    v116 = *(a1 + 672);
                    if (v116 && *v116)
                    {
                      sub_100E43360(*v116, *a4);
                    }
                  }

                  else
                  {
                    v117 = sub_100072010(a3);
                    if (CFEqual(@"kCLCellularTransmitStateNotification", v117))
                    {
                      if (qword_1025D4660 != -1)
                      {
                        sub_101AB5F70();
                      }

                      v118 = qword_1025D4668;
                      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                      {
                        *__p = 0;
                        _os_log_impl(dword_100000000, v118, OS_LOG_TYPE_DEBUG, "#EmergencyBiome, Biome RRC notification", __p, 2u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101AB7ADC();
                      }

                      memset(__p, 0, 24);
                      v119 = sub_100005548(buf, *a4);
                      __str.__r_.__value_.__s.__data_[0] = 0;
                      v120 = *(a1 + 672);
                      if (v120 && *v120)
                      {
                        if (sub_10001CBC0(v119, @"kCLCellularTransmitStateNotification", &__str))
                        {
                          v121 = **(a1 + 672);
                          if (__str.__r_.__value_.__s.__data_[0] == 1)
                          {
                            v122 = v121 + 4;
                          }

                          else
                          {
                            v122 = v121 + 3;
                          }
                        }

                        else
                        {
                          v122 = (**(a1 + 672) + 48);
                        }

                        std::string::operator=(__p, v122);
                        sub_100E4357C(**(a1 + 672), __p);
                      }

                      sub_100005DA4(buf);
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                      }
                    }

                    else
                    {
                      v123 = sub_100072010(a3);
                      if (CFEqual(@"kStewieSupportNotification", v123))
                      {
                        buf[0] = 0;
                        if (sub_10116FB9C(*a4, buf))
                        {
                          if (qword_1025D4660 != -1)
                          {
                            sub_101AB5F70();
                          }

                          v124 = qword_1025D4668;
                          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                          {
                            *__p = 67240192;
                            *&__p[4] = buf[0];
                            _os_log_impl(dword_100000000, v124, OS_LOG_TYPE_DEBUG, "#EmergCon,kStewieSupportNotification,supported,%{public}d", __p, 8u);
                          }

                          if (sub_10000A100(121, 2))
                          {
                            sub_101AB7CAC();
                          }

                          sub_10128E840(*(a1 + 688), buf[0]);
                        }

                        else
                        {
                          if (qword_1025D4660 != -1)
                          {
                            sub_101AB5F70();
                          }

                          v140 = qword_1025D4668;
                          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
                          {
                            *__p = 0;
                            _os_log_impl(dword_100000000, v140, OS_LOG_TYPE_ERROR, "#EmergCon,kStewieSupportNotification,error fetching Stewie support", __p, 2u);
                          }

                          if (sub_10000A100(121, 0))
                          {
                            sub_101AB7BC0();
                          }
                        }
                      }

                      else
                      {
                        v128 = sub_100072010(a3);
                        if (CFEqual(v128, @"kImsRegStatusNotification"))
                        {
                          *buf = 0u;
                          v165 = 0u;
                          v166 = 1065353216;
                          if (sub_10116FCB4(*a4, buf))
                          {
                            if (qword_1025D4660 != -1)
                            {
                              sub_101AB5F70();
                            }

                            v129 = qword_1025D4668;
                            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                            {
                              LODWORD(v159.__r_.__value_.__l.__data_) = 0;
                              *__p = &v159;
                              v130 = *(sub_100916CF0(buf, &v159) + 20);
                              LODWORD(__str.__r_.__value_.__l.__data_) = 67240192;
                              HIDWORD(__str.__r_.__value_.__r.__words[0]) = v130;
                              _os_log_impl(dword_100000000, v129, OS_LOG_TYPE_DEBUG, "#EmergCon, Received kImsRegStatusNotification with sms reg status %{public}d", &__str, 8u);
                            }

                            if (sub_10000A100(121, 2))
                            {
                              sub_101AB65F4(__p);
                              v157 = 0;
                              __str.__r_.__value_.__r.__words[0] = &v157;
                              v149 = *(sub_100916CF0(buf, &v157) + 20);
                              LODWORD(v159.__r_.__value_.__l.__data_) = 67240192;
                              HIDWORD(v159.__r_.__value_.__r.__words[0]) = v149;
                              v150 = _os_log_send_and_compose_impl();
                              sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v150);
                              if (v150 != __p)
                              {
                                free(v150);
                              }
                            }

                            v131 = *(a1 + 688);
                            LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                            *__p = &__str;
                            v132 = sub_100916CF0(buf, &__str);
                            sub_10128EAB4(v131, 0, v132 + 20);
                            if (sub_1000649A0())
                            {
                              if (qword_1025D4660 != -1)
                              {
                                sub_101AB5F70();
                              }

                              v133 = qword_1025D4668;
                              if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                              {
                                LODWORD(v159.__r_.__value_.__l.__data_) = 1;
                                *__p = &v159;
                                v134 = *(sub_100916CF0(buf, &v159) + 20);
                                LODWORD(__str.__r_.__value_.__l.__data_) = 67240192;
                                HIDWORD(__str.__r_.__value_.__r.__words[0]) = v134;
                                _os_log_impl(dword_100000000, v133, OS_LOG_TYPE_DEBUG, "#EmergCon, Received kImsRegStatusNotification with sms reg status %{public}d", &__str, 8u);
                              }

                              if (sub_10000A100(121, 2))
                              {
                                sub_101AB65F4(__p);
                                v157 = 1;
                                __str.__r_.__value_.__r.__words[0] = &v157;
                                v151 = *(sub_100916CF0(buf, &v157) + 20);
                                LODWORD(v159.__r_.__value_.__l.__data_) = 67240192;
                                HIDWORD(v159.__r_.__value_.__r.__words[0]) = v151;
                                v152 = _os_log_send_and_compose_impl();
                                sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v152);
                                if (v152 != __p)
                                {
                                  free(v152);
                                }
                              }

                              v135 = *(a1 + 688);
                              LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                              *__p = &__str;
                              v136 = sub_100916CF0(buf, &__str);
                              sub_10128EAB4(v135, 1u, v136 + 20);
                            }
                          }

                          else
                          {
                            if (qword_1025D4660 != -1)
                            {
                              sub_101AB5F70();
                            }

                            v145 = qword_1025D4668;
                            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
                            {
                              *__p = 0;
                              _os_log_impl(dword_100000000, v145, OS_LOG_TYPE_ERROR, "#EmergCon,#ci,kImsRegStatusNotification,error fetching cell info", __p, 2u);
                            }

                            if (sub_10000A100(121, 0))
                            {
                              sub_101AB65F4(__p);
                              LOWORD(__str.__r_.__value_.__l.__data_) = 0;
                              v148 = _os_log_send_and_compose_impl();
                              sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v148);
                              if (v148 != __p)
                              {
                                free(v148);
                              }
                            }
                          }

                          sub_1004906DC(buf);
                        }

                        else
                        {
                          v142 = sub_100072010(a3);
                          if (CFEqual(v142, @"kVoiceLinkQualityNotification"))
                          {
                            if (qword_1025D4660 != -1)
                            {
                              sub_101AB5F70();
                            }

                            v143 = qword_1025D4668;
                            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                            {
                              v144 = *a4;
                              *__p = 138543362;
                              *&__p[4] = v144;
                              _os_log_impl(dword_100000000, v143, OS_LOG_TYPE_DEBUG, "#EmergCon, Received kVoiceLinkQualityNotification with vlqm %{public}@", __p, 0xCu);
                            }

                            if (sub_10000A100(121, 2))
                            {
                              sub_101AB7DA8();
                            }

                            if (sub_101170084(*a4, (a1 + 472)))
                            {
                              sub_10128E5C0(*(a1 + 688), a1 + 472);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101AB5F70();
    }

    v89 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      v90 = sub_100072010(a3);
      sub_1000238CC(v90, __p);
      v91 = __p[23] >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v91;
      _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_ERROR, "#EmergCon,dropping %{public}s,empty data", buf, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AB7E9C(a3);
    }
  }
}