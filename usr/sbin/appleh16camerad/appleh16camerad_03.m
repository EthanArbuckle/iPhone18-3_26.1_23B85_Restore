void sub_100032160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_100016068(&a10);
  sub_100016068(&a14);
  sub_100016068(&a22);
  sub_100016068(&a26);
  sub_100016068(&a30);
  sub_100016068(&a37);
  sub_100016068(&a41);
  sub_100016068(v41);
  _Unwind_Resume(a1);
}

uint64_t sub_100032220(double *a1, __int128 *a2, void *a3, uint64_t a4)
{
  v272 = *a2;
  v273 = *(a2 + 2);
  sub_100033FA4(&v272, &v263);
  v8 = *a2;
  v200 = *(a2 + 2);
  v202 = *(a2 + 1);
  v198 = *(a2 + 3);
  sub_10002D334((a2 + 6), 0, v259);
  sub_10002D334((a2 + 6), 1, v255);
  sub_10002D334((a2 + 6), 2, v251);
  sub_10002D3F4((a1 + 11), 0, v250);
  sub_10002D3F4((a1 + 11), 1, v249);
  sub_10002D3F4((a1 + 15), 0, v248);
  sub_10002D3F4((a1 + 15), 1, v247);
  v9 = v263;
  sub_100016114(&v220, v261, v262);
  if (v262 * v261 >= 1)
  {
    v10 = v260;
    v11 = &v260[v262 * v261];
    v12 = v221;
    do
    {
      v13 = *v10++;
      *v12++ = v9 * v13;
    }

    while (v10 < v11);
  }

  v14 = v266;
  sub_100016114(v216, v257, v258);
  if (v258 * v257 >= 1)
  {
    v15 = v256;
    v16 = &v256[v258 * v257];
    v17 = v217;
    do
    {
      v18 = *v15++;
      *v17++ = v14 * v18;
    }

    while (v15 < v16);
  }

  sub_100033CE4(&v220, v216, &v224);
  v19 = v269;
  sub_100016114(&v212, v253, v254);
  if (v254 * v253 >= 1)
  {
    v20 = v252;
    v21 = &v252[v254 * v253];
    v22 = v213;
    do
    {
      v23 = *v20++;
      *v22++ = v19 * v23;
    }

    while (v20 < v21);
  }

  sub_100033CE4(&v224, &v212, v228);
  v24 = *a1;
  sub_100016114(&v232, v230, v231);
  if (v231 * v230 >= 1)
  {
    v25 = v229;
    v26 = &v229[v231 * v230];
    v27 = v233;
    do
    {
      v28 = *v25++;
      *v27++ = v28 - v9 * v24;
    }

    while (v25 < v26);
  }

  v29 = a1[1];
  sub_100016114(&v237, v234, v235);
  if (v235 * v234 >= 1)
  {
    v30 = v233;
    v31 = &v233[v235 * v234];
    v32 = v238;
    do
    {
      v33 = *v30++;
      *v32++ = v33 - v14 * v29;
    }

    while (v30 < v31);
  }

  v34 = a1[2];
  sub_100016114(&v272, v239, v240);
  if (v240 * v239 >= 1)
  {
    v35 = v238;
    v36 = &v238[v240 * v239];
    v37 = *(&v272 + 1);
    do
    {
      v38 = *v35++;
      *v37++ = v38 - v19 * v34;
    }

    while (v35 < v36);
  }

  v39 = *(&v272 + 1);
  v245 = HIDWORD(v273);
  v246 = v274;
  *(&v272 + 1) = 0;
  v274 = 0;
  v242 = &off_1000A1C58;
  v243 = v39;
  v244 = 1;
  sub_100016068(&v272);
  sub_100016068(&v237);
  sub_100016068(&v232);
  sub_100016068(v228);
  sub_100016068(&v212);
  sub_100016068(&v224);
  sub_100016068(v216);
  sub_100016068(&v220);
  v40 = v264;
  sub_100016114(v216, v261, v262);
  if (v262 * v261 >= 1)
  {
    v41 = v260;
    v42 = &v260[v262 * v261];
    v43 = v217;
    do
    {
      v44 = *v41++;
      *v43++ = v40 * v44;
    }

    while (v41 < v42);
  }

  v45 = v267;
  sub_100016114(&v212, v257, v258);
  if (v258 * v257 >= 1)
  {
    v46 = v256;
    v47 = &v256[v258 * v257];
    v48 = v213;
    do
    {
      v49 = *v46++;
      *v48++ = v45 * v49;
    }

    while (v46 < v47);
  }

  sub_100033CE4(v216, &v212, &v220);
  v50 = v270;
  sub_100016114(v210, v253, v254);
  if (v254 * v253 >= 1)
  {
    v51 = v252;
    v52 = &v252[v254 * v253];
    v53 = v211;
    do
    {
      v54 = *v51++;
      *v53++ = v50 * v54;
    }

    while (v51 < v52);
  }

  sub_100033CE4(&v220, v210, &v224);
  v55 = *a1;
  sub_100016114(v228, v226, SHIDWORD(v226));
  if (HIDWORD(v226) * v226 >= 1)
  {
    v56 = v225;
    v57 = &v225[HIDWORD(v226) * v226];
    v58 = v229;
    do
    {
      v59 = *v56++;
      *v58++ = v59 - v40 * v55;
    }

    while (v56 < v57);
  }

  v60 = a1[1];
  sub_100016114(&v232, v230, v231);
  if (v231 * v230 >= 1)
  {
    v61 = v229;
    v62 = &v229[v231 * v230];
    v63 = v233;
    do
    {
      v64 = *v61++;
      *v63++ = v64 - v45 * v60;
    }

    while (v61 < v62);
  }

  v65 = a1[2];
  sub_100016114(&v272, v234, v235);
  if (v235 * v234 >= 1)
  {
    v66 = v233;
    v67 = &v233[v235 * v234];
    v68 = *(&v272 + 1);
    do
    {
      v69 = *v66++;
      *v68++ = v69 - v50 * v65;
    }

    while (v66 < v67);
  }

  v70 = *(&v272 + 1);
  v240 = HIDWORD(v273);
  v241 = v274;
  *(&v272 + 1) = 0;
  v274 = 0;
  v237 = &off_1000A1C58;
  v238 = v70;
  v239 = 1;
  sub_100016068(&v272);
  sub_100016068(&v232);
  sub_100016068(v228);
  sub_100016068(&v224);
  sub_100016068(v210);
  sub_100016068(&v220);
  sub_100016068(&v212);
  sub_100016068(v216);
  v71 = v265;
  sub_100016114(&v212, v261, v262);
  if (v262 * v261 >= 1)
  {
    v72 = v260;
    v73 = &v260[v262 * v261];
    v74 = v213;
    do
    {
      v75 = *v72++;
      *v74++ = v71 * v75;
    }

    while (v72 < v73);
  }

  v76 = v268;
  sub_100016114(v210, v257, v258);
  if (v258 * v257 >= 1)
  {
    v77 = v256;
    v78 = &v256[v258 * v257];
    v79 = v211;
    do
    {
      v80 = *v77++;
      *v79++ = v76 * v80;
    }

    while (v77 < v78);
  }

  sub_100033CE4(&v212, v210, v216);
  v81 = v271;
  sub_100016114(v208, v253, v254);
  if (v254 * v253 >= 1)
  {
    v82 = v252;
    v83 = &v252[v254 * v253];
    v84 = v209;
    do
    {
      v85 = *v82++;
      *v84++ = v81 * v85;
    }

    while (v82 < v83);
  }

  sub_100033CE4(v216, v208, &v220);
  v86 = *a1;
  sub_100016114(&v224, v222, SHIDWORD(v222));
  if (HIDWORD(v222) * v222 >= 1)
  {
    v87 = v221;
    v88 = &v221[HIDWORD(v222) * v222];
    v89 = v225;
    do
    {
      v90 = *v87++;
      *v89++ = v90 - v71 * v86;
    }

    while (v87 < v88);
  }

  v91 = a1[1];
  sub_100016114(v228, v226, SHIDWORD(v226));
  if (HIDWORD(v226) * v226 >= 1)
  {
    v92 = v225;
    v93 = &v225[HIDWORD(v226) * v226];
    v94 = v229;
    do
    {
      v95 = *v92++;
      *v94++ = v95 - v76 * v91;
    }

    while (v92 < v93);
  }

  v96 = a1[2];
  sub_100016114(&v272, v230, v231);
  if (v231 * v230 >= 1)
  {
    v97 = v229;
    v98 = &v229[v231 * v230];
    v99 = *(&v272 + 1);
    do
    {
      v100 = *v97++;
      *v99++ = v100 - v81 * v96;
    }

    while (v97 < v98);
  }

  v101 = *(&v272 + 1);
  v235 = HIDWORD(v273);
  v236 = v274;
  *(&v272 + 1) = 0;
  v274 = 0;
  v232 = &off_1000A1C58;
  v233 = v101;
  v234 = 1;
  sub_100016068(&v272);
  sub_100016068(v228);
  sub_100016068(&v224);
  sub_100016068(&v220);
  sub_100016068(v208);
  sub_100016068(v216);
  sub_100016068(v210);
  sub_100016068(&v212);
  sub_10003430C(&v232, &v232, v228);
  v102 = 0;
  v103 = 0.0;
  do
  {
    v103 = v103 + *(a2 + v102) * *(a2 + v102);
    v102 += 8;
  }

  while (v102 != 24);
  v104 = sqrt(v103);
  if (v104 == 0.0)
  {
    v105 = 1.0;
    v107 = 0.5;
  }

  else
  {
    v105 = sin(v104) / v104;
    v106 = sin(v104 * 0.5);
    v107 = v106 / v104 * (v106 / v104 + v106 / v104);
  }

  v108 = *(a2 + 29);
  v226 = 1;
  v227 = 0;
  v224 = &off_1000A1C58;
  v225 = 0;
  v222 = 1;
  v223 = 0;
  v220 = &off_1000A1C58;
  v221 = 0;
  sub_100016114(v216, 2, v108);
  v109 = 8 * v108;
  if (*(a2 + 128) == 1)
  {
    LODWORD(v273) = 1;
    HIDWORD(v273) = v219;
    LODWORD(v214) = 1;
    HIDWORD(v214) = v219;
    v215 = 0;
    *&v272 = off_1000A1C28;
    *(&v272 + 1) = 0;
    v274 = 0;
    v212 = &off_1000A1C58;
    v213 = v217;
    sub_100016068(&v272);
    if (v227 == 1 && v225)
    {
      operator delete[]();
    }

    v226 = v214;
    v225 = v213;
    v227 = v215;
    v215 = 0;
    sub_100016068(&v212);
    LODWORD(v273) = 1;
    HIDWORD(v273) = v219;
    LODWORD(v214) = 1;
    HIDWORD(v214) = v219;
    v215 = 0;
    *&v272 = off_1000A1C28;
    *(&v272 + 1) = 0;
    v274 = 0;
    v212 = &off_1000A1C58;
    v213 = &v217[v219];
    sub_100016068(&v272);
    if (v223 == 1 && v221)
    {
      operator delete[]();
    }

    v222 = v214;
    v221 = v213;
    v223 = v215;
    v215 = 0;
    sub_100016068(&v212);
    if (v108)
    {
      v110 = 0;
      do
      {
        v225[v110 / 8] = -v260[v110 / 8] / v252[v110 / 8];
        v221[v110 / 8] = -v256[v110 / 8] / v252[v110 / 8];
        v110 += 8;
      }

      while (v109 != v110);
    }
  }

  if (v104 == 0.0)
  {
    v115 = v8;
    v114 = 0.0;
    v118 = 1.0;
    v117 = 1.0;
    v116 = 1.0;
    v112 = 0.0;
  }

  else
  {
    v111 = __sincos_stret(v104);
    v112 = -(v111.__sinval - v104 * v111.__cosval) / (v104 * v104);
    v113 = sin(v104 * 0.5);
    v114 = (v104 * -4.0 * (v113 * v113) + v104 * v104 * v111.__sinval) / pow(v104, 4.0);
    v115 = v8;
    v116 = v8 / v104;
    v117 = v202 / v104;
    v118 = v200 / v104;
  }

  sub_100034380(v259, &v212, *a1);
  sub_100034380(v255, v210, a1[1]);
  sub_100034380(v251, v208, a1[2]);
  v120 = v200;
  v119 = v202;
  v121 = v120 * v120 + v119 * v119;
  v122 = v120 * v120 + v115 * v115;
  v123 = v105 + v115 * (v116 * v112);
  v124 = v119 * v119 + v115 * v115;
  v285[0] = -(v121 * (v116 * v114));
  v285[1] = -(v121 * (v117 * v114) + (v119 + v119) * v107);
  v284[0] = v202 * v107 + v200 * (v116 * v112) + v115 * v202 * (v116 * v114);
  v284[1] = v115 * v107 + v200 * (v117 * v112) + v115 * v202 * (v117 * v114);
  v125 = v105 + v202 * (v117 * v112);
  v283[0] = v200 * v107 - v202 * (v116 * v112) + v115 * v200 * (v116 * v114);
  v283[1] = -(v125 - v115 * v200 * (v117 * v114));
  v282[0] = v202 * v107 - v200 * (v116 * v112) + v115 * v202 * (v116 * v114);
  v282[1] = v115 * v107 - v200 * (v117 * v112) + v115 * v202 * (v117 * v114);
  v281[0] = -(v122 * (v116 * v114) + (v115 + v115) * v107);
  v281[1] = -(v122 * (v117 * v114));
  v280[0] = v123 + v202 * v200 * (v116 * v114);
  v280[1] = v200 * v107 + v115 * (v117 * v112) + v202 * v200 * (v117 * v114);
  v279[0] = v200 * v107 + v202 * (v116 * v112) + v115 * v200 * (v116 * v114);
  v279[1] = v125 + v115 * v200 * (v117 * v114);
  v278[0] = -(v123 - v202 * v200 * (v116 * v114));
  v278[1] = v200 * v107 - v115 * (v117 * v112) + v202 * v200 * (v117 * v114);
  v277[0] = -(v124 * (v116 * v114) + (v115 + v115) * v107);
  v277[1] = -(v124 * (v117 * v114) + (v119 + v119) * v107);
  v285[2] = -(v121 * (v118 * v114) + (v120 + v120) * v107);
  v126 = v105 + v200 * (v118 * v112);
  v284[2] = v126 + v115 * v202 * (v118 * v114);
  v283[2] = v115 * v107 - v202 * (v118 * v112) + v115 * v200 * (v118 * v114);
  v282[2] = -(v126 - v115 * v202 * (v118 * v114));
  v281[2] = -(v122 * (v118 * v114) + (v120 + v120) * v107);
  v280[2] = v202 * v107 + v115 * (v118 * v112) + v202 * v200 * (v118 * v114);
  v279[2] = v115 * v107 + v202 * (v118 * v112) + v115 * v200 * (v118 * v114);
  v278[2] = v202 * v107 - v115 * (v118 * v112) + v202 * v200 * (v118 * v114);
  v277[2] = -(v124 * (v118 * v114));
  sub_100016114(&v272, 2, v108);
  v195 = a2;
  sub_100016114(&v275, 2, v108);
  sub_100016114(&v276, 2, v108);
  v127 = v108;
  for (i = 0; i != 3; ++i)
  {
    sub_10002D3F4((&v272 + 2 * i), 0, &v204);
    if (v227 == 1 && v225)
    {
      operator delete[]();
    }

    v226 = v206;
    v225 = v205;
    v227 = v207;
    v207 = 0;
    sub_100016068(&v204);
    sub_10002D3F4((&v272 + 2 * i), 1, &v204);
    if (v223 == 1 && v221)
    {
      operator delete[]();
    }

    v222 = v206;
    v221 = v205;
    v223 = v207;
    v207 = 0;
    sub_100016068(&v204);
    if (v127)
    {
      v129 = 0;
      v130 = v285[i];
      v131 = v284[i];
      v132 = v283[i];
      v133 = v282[i];
      v134 = v281[i];
      v135 = v280[i];
      v136 = v279[i];
      v137 = v278[i];
      v138 = v277[i];
      do
      {
        v139 = v213[v129 / 8];
        v140 = v211[v129 / 8];
        v141 = v209[v129 / 8];
        v142 = v140 * v131 + v139 * v130 + v141 * v132;
        v143 = v140 * v134 + v139 * v133;
        v144 = v140 * v137 + v139 * v136 + v141 * v138;
        v225[v129 / 8] = -(v142 * v233[v129 / 8] - v144 * *(v243 + v129)) / v229[v129 / 8];
        v221[v129 / 8] = -((v143 + v141 * v135) * v233[v129 / 8] - v144 * v238[v129 / 8]) / v229[v129 / 8];
        v129 += 8;
      }

      while (v109 != v129);
    }
  }

  sub_100043EE0(a3);
  v145 = sub_100043B44(a3);
  v146 = v127;
  sub_100016114(&v204, 1, v145);
  v204 = &off_1000A1C58;
  if (*(a4 + 24) == 1 && *(a4 + 8))
  {
    operator delete[]();
  }

  *(a4 + 16) = v206;
  *(a4 + 8) = v205;
  *(a4 + 24) = v207;
  v207 = 0;
  sub_100016068(&v204);
  bzero(*(a4 + 8), 8 * (*(a4 + 20) * *(a4 + 16)));
  if (v127)
  {
    v147 = 0;
    do
    {
      v148 = 4 * v147;
      if (*(v195 + 128) == 1)
      {
        if (!v218 || v147 >= v219)
        {
          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        if (v218 == 1)
        {
          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        v149 = &v217[v147];
        v150 = *v149;
        v151 = v149[v219];
        sub_100043A9C(a3, 4 * v147, 3, *v149);
        sub_100043A9C(a3, v148 | 1, 3, v151);
        *(*(a4 + 8) + 24) = *(*(a4 + 8) + 24) + v150 * v150;
        *(*(a4 + 8) + 24) = *(*(a4 + 8) + 24) + v151 * v151;
      }

      v152 = 0;
      v153 = &v273 + 1;
      do
      {
        v154 = *(v153 - 1);
        if (!v154 || (v155 = *v153, v147 >= v155))
        {
          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        if (v154 == 1)
        {
          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        v156 = (*(v153 - 3) + 8 * v147);
        v157 = *v156;
        v158 = v156[v155];
        sub_100043A9C(a3, v148 | 2, v152, *v156);
        sub_100043A9C(a3, v148 | 3, v152, v158);
        *(*(a4 + 8) + 8 * v152) = *(*(a4 + 8) + 8 * v152) + v157 * v157;
        *(*(a4 + 8) + 8 * v152) = *(*(a4 + 8) + 8 * v152) + v158 * v158;
        ++v152;
        v153 += 8;
      }

      while (v152 != 3);
      ++v147;
    }

    while (v147 != v146);
    v159 = 0;
    v203 = -v265;
    v197 = v263;
    v196 = v264;
    v160 = 3;
    v161 = 1;
    do
    {
      v162 = *(v195 + 128);
      v163 = -v198 / v252[v159 / 8];
      v164 = v233[v159 / 8];
      v165 = *(v243 + v159);
      v166 = v229[v159 / 8];
      v167 = v238[v159 / 8];
      sub_100043A9C(a3, v161 - 1, v160 + v162, v163);
      v168 = -(v165 * v203 + v197 * v164) / v166;
      sub_100043A9C(a3, v161 + 1, v160 + v162, v168);
      v169 = -(v167 * v203 + v196 * v164) / v166;
      sub_100043A9C(a3, v161 + 2, v160 + v162, v169);
      *(*(a4 + 8) + 8 * (v160 + v162)) = v168 * v168 + v163 * v163 + v169 * v169;
      v170 = v233[v159 / 8];
      v171 = *(v243 + v159);
      v172 = v229[v159 / 8];
      v173 = v268;
      v174 = v266;
      v175 = v267;
      v176 = v238[v159 / 8];
      sub_100043A9C(a3, v161, v160 + v162 + 1, v163);
      v177 = -(v174 * v170 - v173 * v171) / v172;
      sub_100043A9C(a3, v161 + 1, v160 + v162 + 1, v177);
      v178 = -(v175 * v170 - v173 * v176) / v172;
      sub_100043A9C(a3, v161 + 2, v160 + v162 + 1, v178);
      *(*(a4 + 8) + 8 * (v160 + v162 + 1)) = v177 * v177 + v163 * v163 + v178 * v178;
      v179 = v198 / (v252[v159 / 8] * v252[v159 / 8]);
      v180 = v256[v159 / 8];
      v181 = v233[v159 / 8];
      v182 = *(v243 + v159);
      v183 = v229[v159 / 8];
      v184 = v271;
      v185 = v269;
      v199 = v179 * v260[v159 / 8];
      v201 = v270;
      v186 = v238[v159 / 8];
      sub_100043A9C(a3, v161 - 1, v160 + v162 + 2, v199);
      v187 = v179 * v180;
      sub_100043A9C(a3, v161, v160 + v162 + 2, v187);
      v188 = -(v185 * v181 - v184 * v182) / v183;
      sub_100043A9C(a3, v161 + 1, v160 + v162 + 2, v188);
      v189 = -(v201 * v181 - v184 * v186) / v183;
      sub_100043A9C(a3, v161 + 2, v160 + v162 + 2, v189);
      *(*(a4 + 8) + 8 * (v160 + v162 + 2)) = v187 * v187 + v199 * v199 + v188 * v188 + v189 * v189;
      v160 += 3;
      v161 += 4;
      v159 += 8;
    }

    while (v109 != v159);
  }

  v190 = *(a4 + 20);
  if (v190)
  {
    v191 = 0;
    v192 = 8 * v190;
    do
    {
      *(*(a4 + 8) + v191) = sqrt(*(*(a4 + 8) + v191));
      v191 += 8;
    }

    while (v192 != v191);
  }

  for (j = 64; j != -32; j -= 32)
  {
    sub_100016068(&v272 + j);
  }

  sub_100016068(v208);
  sub_100016068(v210);
  sub_100016068(&v212);
  sub_100016068(v216);
  sub_100016068(&v220);
  sub_100016068(&v224);
  sub_100016068(v228);
  sub_100016068(&v232);
  sub_100016068(&v237);
  sub_100016068(&v242);
  sub_100016068(v247);
  sub_100016068(v248);
  sub_100016068(v249);
  sub_100016068(v250);
  sub_100016068(v251);
  sub_100016068(v255);
  return sub_100016068(v259);
}

void sub_1000336F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  v71 = &STACK[0x310];
  v72 = -96;
  do
  {
    v71 = (sub_100016068(v71) - 32);
    v72 += 32;
  }

  while (v72);
  sub_100016068(&a22);
  sub_100016068(&a26);
  sub_100016068(&a30);
  sub_100016068(&a34);
  sub_100016068(&a38);
  sub_100016068(&a42);
  sub_100016068(&a46);
  sub_100016068(&a50);
  sub_100016068(&a54);
  sub_100016068(&a58);
  sub_100016068(&a62);
  sub_100016068(&a66);
  sub_100016068(&a70);
  sub_100016068(&STACK[0x208]);
  sub_100016068(&STACK[0x228]);
  sub_100016068(&STACK[0x248]);
  sub_100016068(&STACK[0x268]);
  _Unwind_Resume(a1);
}

void sub_1000339B4(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = sub_100043B3C(a3);
  sub_100043AC8(a3, a6, 1uLL);
  if (a6 >= 1)
  {
    v12 = 0;
    v13 = sqrt(a1);
    do
    {
      sub_100043A9C(a3, v11 + v12, v12, v13 * *(*(a5 + 8) + 8 * v12));
      ++v12;
    }

    while (a6 != v12);
  }

  sub_100016114(&v15, 1, *(a4 + 20) + a6);
  v15 = &off_1000A1C58;
  bzero(__dst, 8 * (v18 * v17));
  memcpy(__dst, *(a4 + 8), 8 * *(a4 + 20));
  sub_100014F38(a3, v14);
}

void sub_100033B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100016068(v9);
  sub_100016068(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100033B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1000349CC(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &off_1000A1C58;
  *(a2 + 8) = v4;
  *(a2 + 16) = 1;
  *(a2 + 20) = v5;
  return sub_100016068(&v7);
}

uint64_t sub_100033C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_100034A34(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &off_1000A1C58;
  *(a2 + 8) = v4;
  *(a2 + 16) = 1;
  *(a2 + 20) = v5;
  return sub_100016068(&v7);
}

uint64_t sub_100033C7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  *a3 = 0.0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 20) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  if (!*(result + 16) || (v5 = *(result + 20)) == 0)
  {
    sub_10007CEF4();
  }

  if (v4)
  {
    sub_10007CEF4();
  }

  v6 = *(a2 + 8);
  v7 = *(result + 8);
  v8 = 0.0;
  do
  {
    v9 = *v7++;
    v10 = v9;
    v11 = *v6++;
    v8 = v8 + v10 * v11;
    --v5;
  }

  while (v5);
  *a3 = v8;
  return result;
}

double sub_100033CE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 20);
  if (v4 != *(a1 + 20) || (v6 = *(a2 + 16), v6 != *(a1 + 16)))
  {
    sub_10007EB18();
  }

  v7 = sub_100016114(a3, v6, v4);
  v9 = *(a1 + 20) * *(a1 + 16);
  if (v9 >= 1)
  {
    v10 = *(a1 + 8);
    v11 = &v10[v9];
    v12 = *(v7 + 8);
    v13 = *(a2 + 8);
    do
    {
      v14 = *v10++;
      v15 = v14;
      v16 = *v13++;
      result = v15 + v16;
      *v12++ = result;
    }

    while (v10 < v11);
  }

  return result;
}

uint64_t sub_100033D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100033CE4(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &off_1000A1C58;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
  *(a3 + 20) = v5;
  return sub_100016068(&v7);
}

double sub_100033DE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = **(a2 + 8) + *a1;
  *(a1 + 8) = *(*(a2 + 8) + 8) + v4;
  *(a1 + 16) = *(*(a2 + 8) + 16) + *(a1 + 16);
  if (*(a1 + 128) == 1)
  {
    *(a1 + 24) = *(*(a2 + 8) + 24) + *(a1 + 24);
    *(a1 + 56) = *(*(a2 + 8) + 24) + *(a1 + 56);
  }

  sub_10002D3F4(a1 + 96, 0, &v11);
  v5 = v12;
  sub_100016068(&v11);
  sub_10002D3F4(a1 + 96, 1, &v11);
  v6 = v12;
  sub_100016068(&v11);
  sub_10002D3F4(a1 + 96, 2, &v11);
  v7 = v12;
  sub_100016068(&v11);
  v9 = *(a1 + 128) + 3;
  for (i = *(a2 + 20); v9 < i; v9 += 3)
  {
    *v5 = *(*(a2 + 8) + 8 * v9) + *v5;
    ++v5;
    *v6 = *(*(a2 + 8) + 8 * (v9 + 1)) + *v6;
    ++v6;
    result = *(*(a2 + 8) + 8 * (v9 + 2)) + *v7;
    *v7++ = result;
  }

  return result;
}

BOOL sub_100033F40(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v5 = sqrt(v4[1] * v4[1] + *v4 * *v4 + v4[2] * v4[2]);
  if (v5 < *(a4 + 600))
  {
    v5 = fabs(v4[3]);
    if (v5 < *(a4 + 608))
    {
      return 1;
    }
  }

  LODWORD(v5) = *(a4 + 524);
  return fabs(a1) / *&v5 < *(a4 + 592);
}

void sub_100033FA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = 0.0;
  do
  {
    v4 = v4 + *(a1 + v3) * *(a1 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  v5 = sqrt(v4);
  if (v5 != 0.0)
  {
    for (i = 0; i != 24; i += 8)
    {
      *(a1 + i) = *(a1 + i) / v5;
    }
  }

  v7 = 0;
  v50[0] = 0;
  v8 = *(a1 + 16);
  *&v50[1] = -v8;
  *&v50[3] = v8;
  v50[4] = 0;
  v9 = *a1;
  v50[2] = *(a1 + 8);
  v51 = vnegq_f64(v9);
  v52 = v9.f64[0];
  v53 = 0;
  v47 = 0;
  v10 = v46 + 1;
  v11 = vdupq_n_s64(2uLL);
  memset(v46, 0, sizeof(v46));
  v12 = vdupq_n_s64(3uLL);
  do
  {
    v13 = v10;
    v14 = 4;
    v15 = xmmword_10008B050;
    do
    {
      if (vmovn_s64(vcgtq_u64(v12, v15)).u8[0])
      {
        if (v7 + v14 == 4)
        {
          v16 = 1.0;
        }

        else
        {
          v16 = 0.0;
        }

        *(v13 - 1) = v16;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v15)).i32[1])
      {
        if (v7 + v14 == 5)
        {
          v17 = 1.0;
        }

        else
        {
          v17 = 0.0;
        }

        *v13 = v17;
      }

      v15 = vaddq_s64(v15, v11);
      v13 += 2;
      v14 -= 2;
    }

    while (v14);
    ++v7;
    v10 += 3;
  }

  while (v7 != 3);
  v18 = sin(v5);
  v19 = 0;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  do
  {
    *(v44 + v19 * 8) = v18 * *&v50[v19];
    v20 = v19++ >= 8;
  }

  while (!v20);
  v21 = 0;
  v22 = 0;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  do
  {
    v23 = v21;
    v24 = 3;
    do
    {
      *(v48 + v23) = *(v46 + v23) + *(v44 + v23);
      v23 += 8;
      --v24;
    }

    while (v24);
    ++v22;
    v21 += 24;
  }

  while (v22 != 3);
  v25 = 0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v26 = v50;
  do
  {
    v27 = 0;
    v28 = v50;
    do
    {
      v29 = 0;
      v30 = 0.0;
      v31 = v28;
      do
      {
        v32 = *v31;
        v31 += 3;
        v30 = v30 + *&v26[v29++] * v32;
      }

      while (v29 != 3);
      *(v40 + 3 * v25 + v27++) = v30;
      ++v28;
    }

    while (v27 != 3);
    ++v25;
    v26 += 3;
  }

  while (v25 != 3);
  v33 = cos(v5);
  v34 = 0;
  v35 = 1.0 - v33;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  do
  {
    *(v42 + v34) = v35 * *(v40 + v34);
    v20 = v34 >= 0x40;
    v34 += 8;
  }

  while (!v20);
  v36 = 0;
  v37 = 0;
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  do
  {
    v38 = v36;
    v39 = 3;
    do
    {
      *(a2 + v38) = *(v48 + v38) + *(v42 + v38);
      v38 += 8;
      --v39;
    }

    while (v39);
    ++v37;
    v36 += 24;
  }

  while (v37 != 3);
}

uint64_t sub_1000342A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = sub_100016114(a2, *(a1 + 16), *(a1 + 20));
  v6 = *(a1 + 20) * *(a1 + 16);
  if (v6 >= 1)
  {
    v7 = *(a1 + 8);
    v8 = &v7[v6];
    v9 = *(result + 8);
    do
    {
      v10 = *v7++;
      *v9++ = v10 - a3;
    }

    while (v7 < v8);
  }

  return result;
}

uint64_t sub_10003430C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10002D950(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &off_1000A1C58;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
  *(a3 + 20) = v5;
  return sub_100016068(&v7);
}

uint64_t sub_100034380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1000342A4(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &off_1000A1C58;
  *(a2 + 8) = v4;
  *(a2 + 16) = 1;
  *(a2 + 20) = v5;
  return sub_100016068(&v7);
}

uint64_t sub_1000343F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100034B00(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &off_1000A1C58;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
  *(a3 + 20) = v5;
  return sub_100016068(&v7);
}

uint64_t sub_100034468(uint64_t a1, void *a2, double *a3, void *a4, double a5, double a6, int8x16_t a7)
{
  v8 = *(a1 + 48);
  v24[1] = *(a1 + 32);
  v24[2] = v8;
  v25 = *(a1 + 64);
  v10 = *a1;
  v9 = *(a1 + 16);
  v23 = *a1;
  v24[0] = v9;
  v11 = &v23.i64[1];
  v12 = v24 + 8;
  for (i = 1; i != 3; ++i)
  {
    v14 = 0;
    v15 = v11;
    do
    {
      v9.i64[0] = *&v12[8 * v14];
      v10.i64[0] = *v15;
      *&v12[8 * v14] = *v15;
      *v15 = v9.i64[0];
      v15 += 3;
      ++v14;
    }

    while (i != v14);
    ++v11;
    v12 += 24;
  }

  sub_10001A0DC(3, v23.i64, a2, a3, a4, v9, v10, a7);
  v16 = a2 + 1;
  v17 = a2 + 3;
  for (j = 1; j != 3; ++j)
  {
    v19 = 0;
    v20 = v16;
    do
    {
      v21 = v17[v19];
      v17[v19] = *v20;
      *v20 = v21;
      v20 += 3;
      ++v19;
    }

    while (j != v19);
    ++v16;
    v17 += 3;
  }

  return 0;
}

void sub_100034550(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 3;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &off_1000A1DE0;
  *(a1 + 72) = 3;
  *(a1 + 80) = 0;
  *(a1 + 56) = &off_1000A1DE0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 2;
  *(a1 + 112) = 0;
  *(a1 + 88) = &off_1000A2658;
  *(a1 + 96) = 0;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0;
  *(a1 + 120) = &off_1000A2658;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  sub_10003487C(&v2, a2, 0, -1);
}

void sub_100034808(_Unwind_Exception *a1)
{
  sub_100016068(v4);
  sub_100016068(v3);
  sub_100016068(v2);
  sub_100016068(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100034838(uint64_t a1)
{
  sub_100016068(a1 + 120);
  sub_100016068(a1 + 88);
  sub_100016068(a1 + 56);
  sub_100016068(a1 + 24);
  return a1;
}

void sub_10003487C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = off_1000A1C28;
  v4 = *(a2 + 20);
  v5 = *(a2 + 16) - a3;
  if (a4 != -1)
  {
    v5 = a4;
  }

  v6 = *(a2 + 8) + 8 * (v4 * a3);
  v7 = off_1000A1C28;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  operator new[]();
}

double sub_100034968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 != *(a1 + 20) || (v3 = *(a2 + 16), v3 != *(a1 + 16)))
  {
    sub_10007EB18();
  }

  v4 = v3 * v2;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = &v5[v4];
    v7 = *(a2 + 8);
    do
    {
      v8 = *v7++;
      result = *v5 / v8;
      *v5++ = result;
    }

    while (v5 < v6);
  }

  return result;
}

uint64_t sub_1000349CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = sub_100016114(a2, *(a1 + 16), *(a1 + 20));
  v6 = *(a1 + 20) * *(a1 + 16);
  if (v6 >= 1)
  {
    v7 = *(a1 + 8);
    v8 = &v7[v6];
    v9 = *(result + 8);
    do
    {
      v10 = *v7++;
      *v9++ = v10 / a3;
    }

    while (v7 < v8);
  }

  return result;
}

uint64_t sub_100034A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = sub_100016114(a2, *(a1 + 16), *(a1 + 20));
  v6 = *(a1 + 20) * *(a1 + 16);
  if (v6 >= 1)
  {
    v7 = *(a1 + 8);
    v8 = &v7[v6];
    v9 = *(result + 8);
    do
    {
      v10 = *v7++;
      *v9++ = v10 * a3;
    }

    while (v7 < v8);
  }

  return result;
}

double sub_100034A9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 != *(a1 + 20) || (v3 = *(a2 + 16), v3 != *(a1 + 16)))
  {
    sub_10007EB18();
  }

  v4 = v3 * v2;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = &v5[v4];
    v7 = *(a2 + 8);
    do
    {
      v8 = *v7++;
      result = v8 * *v5;
      *v5++ = result;
    }

    while (v5 < v6);
  }

  return result;
}

double sub_100034B00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 20);
  if (v4 != *(a1 + 20) || (v6 = *(a2 + 16), v6 != *(a1 + 16)))
  {
    sub_10007EB18();
  }

  v7 = sub_100016114(a3, v6, v4);
  v9 = *(a1 + 20) * *(a1 + 16);
  if (v9 >= 1)
  {
    v10 = *(a1 + 8);
    v11 = &v10[v9];
    v12 = *(v7 + 8);
    v13 = *(a2 + 8);
    do
    {
      v14 = *v10++;
      v15 = v14;
      v16 = *v13++;
      result = v15 - v16;
      *v12++ = result;
    }

    while (v10 < v11);
  }

  return result;
}

uint64_t sub_100034B8C(uint64_t a1)
{
  pthread_cond_destroy((a1 + 64));
  pthread_mutex_destroy(a1);
  return a1;
}

uint64_t sub_100034BD8(uint64_t a1)
{
  pthread_cond_signal((a1 + 64));

  return pthread_mutex_unlock(a1);
}

const void **sub_100034C14(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

double sub_100034C4C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  result = 0.0;
  if (a2 - 1 < a3 && v3 != 0)
  {
    v6 = *(a1 + 4);
    *(v3 + 8 * v6) = a3 - a2;
    v8 = *(a1 + 2);
    v7 = *(a1 + 3);
    *(a1 + 4) = (v6 + 1) % v8;
    if (v7 < v8)
    {
      *(a1 + 3) = v7 + 1;
    }

    return ((a3 - a2) * *(a1 + 8) / *(a1 + 9)) / 1000000.0;
  }

  return result;
}

double sub_100034CB4(uint64_t *a1)
{
  v1 = a1[3];
  if (!v1)
  {
    return 0.0;
  }

  v3 = mach_absolute_time();
  result = sub_100034C4C(a1, v1, v3);
  a1[3] = 0;
  return result;
}

void sub_100034CFC(_DWORD *a1, _DWORD *a2)
{
  if (a2)
  {
    bzero(a2, 0x38uLL);
    v5 = a1[2];
    v4 = a1[3];
    *a2 = v4;
    a2[1] = v5;
    a2[2] = a1[4];
    if (v4)
    {
      operator new[]();
    }
  }
}

void sub_100034EC0(_DWORD *a1)
{
  sub_100034CFC(a1, v2);
  v1 = off_10041DC88;
  if (off_10041DC88 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    off_10041DC88 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v9) = v2[0];
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, " Number of samples: %d\n", buf, 8u);
    v1 = off_10041DC88;
  }

  if (v1 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    off_10041DC88 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v9) = v2[1];
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, " Maximum samples:   %d\n", buf, 8u);
    v1 = off_10041DC88;
  }

  if (v1 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    off_10041DC88 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, " Minimum time (ms): %.3f\n", buf, 0xCu);
    v1 = off_10041DC88;
  }

  if (v1 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    off_10041DC88 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, " Maximum time (ms): %.3f\n", buf, 0xCu);
    v1 = off_10041DC88;
  }

  if (v1 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    off_10041DC88 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, " Average time (ms): %.3f\n", buf, 0xCu);
    v1 = off_10041DC88;
  }

  if (v1 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    off_10041DC88 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, " Median time (ms): %.3f\n", buf, 0xCu);
    v1 = off_10041DC88;
  }

  if (v1 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    off_10041DC88 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, " Standard deviation (ms): %.3f\n", buf, 0xCu);
  }
}

void sub_100035228(uint64_t a1, int a2)
{
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  operator new[]();
}

void *sub_10003527C(void *result)
{
  if (*result)
  {
    operator delete[]();
  }

  return result;
}

void sub_1000352BC(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a2;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x4000000000000000;
  v4 = a3[1];
  *(a1 + 296) = *a3;
  *(a1 + 304) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_init((a1 + 16), 0);
  pthread_mutex_init((a1 + 144), 0);
  *(a1 + 208) = 0;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_settype(&v6, 2);
  pthread_mutex_init((a1 + 80), &v6);
  pthread_mutexattr_destroy(&v6);
  v5 = 0;
  sub_1000547B8(*(a1 + 240), &v5, (a1 + 256));
  mach_timebase_info((a1 + 264));
  operator new();
}

void sub_100035400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100035CE4(a10);
  }

  operator delete();
}

uint64_t sub_10003544C(uint64_t a1)
{
  if (*a1)
  {
    sub_100035530(a1);
  }

  if (*(a1 + 232))
  {
    sub_1000355B0(a1);
  }

  v2 = *(a1 + 272);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = sub_10002EEA0(v2);
    CFRunLoopRemoveSource(v3, v4, kCFRunLoopDefaultMode);
    v5 = *(a1 + 272);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 272) = 0;
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    sub_1000502BC(v6);
    operator delete();
  }

  pthread_mutex_destroy((a1 + 16));
  pthread_mutex_destroy((a1 + 80));
  pthread_mutex_destroy((a1 + 144));
  v7 = *(a1 + 304);
  if (v7)
  {
    sub_100035CE4(v7);
  }

  return a1;
}

uint64_t sub_100035530(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*a1)
  {
    sub_100035798(a1);
    pthread_mutex_lock((a1 + 80));
    *(a1 + 248) = 1;
    pthread_mutex_unlock((a1 + 80));
    v2 = sub_10005CE88(*(a1 + 240), *(a1 + 224));
    *(a1 + 248) = 0;
    *a1 = 0;
  }

  else
  {
    v2 = 3758097122;
  }

  pthread_mutex_unlock((a1 + 16));
  return v2;
}

void sub_1000355B0(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    CFRunLoopRemoveSource(*(a1 + 8), v2, kCFRunLoopDefaultMode);
    CFRelease(*(a1 + 232));
    *(a1 + 232) = 0;
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(a1 + 216));
    *(a1 + 216) = 0;
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    mach_port_mod_refs(mach_task_self_, v4, 1u, -1);
    *(a1 + 224) = 0;
  }
}

uint64_t sub_100035634(uint64_t a1)
{
  v2 = IOCreateReceivePort(0x39u, (a1 + 224));
  if (!v2)
  {
    v2 = 3758097085;
    shouldFreeInfo = 0;
    context.version = 1;
    context.info = a1;
    memset(&context.retain, 0, 24);
    v4 = CFMachPortCreateWithPort(kCFAllocatorDefault, *(a1 + 224), &IODispatchCalloutFromMessage, &context, &shouldFreeInfo);
    *(a1 + 216) = v4;
    if (v4)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, v4, 0);
      *(a1 + 232) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(a1 + 8), RunLoopSource, kCFRunLoopDefaultMode);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100035708(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*a1 == 1)
  {
    pthread_mutex_unlock((a1 + 16));
    return 3758097122;
  }

  else
  {
    *(a1 + 248) = 0;
    *a1 = 1;
    inputStruct[0] = sub_10000D494;
    inputStruct[1] = a1;
    v5 = *(a1 + 224);
    v2 = sub_10005CDF4(*(a1 + 240), inputStruct);
    pthread_mutex_unlock((a1 + 16));
  }

  return v2;
}

uint64_t sub_100035798(uint64_t a1)
{
  pthread_mutex_lock((a1 + 144));
  v2 = *(a1 + 208);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(a1 + 208));
    *(a1 + 208) = 0;
  }

  return pthread_mutex_unlock((a1 + 144));
}

uint64_t sub_1000357EC(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  sub_10005CF14(*(a1 + 240), *(a1 + 224));
  pthread_mutex_unlock((a1 + 16));
  return 0;
}

uint64_t sub_10003582C(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = v2;
    sub_100035878(*(a1 + 296), v2++);
  }

  while (v3 < 0x18);
  return 0;
}

uint64_t sub_100035878(uint64_t a1, unsigned int a2)
{
  v4 = a1 + (a2 << 6);
  pthread_mutex_lock((v4 + 400));
  if (*(a1 + 8 * a2))
  {
    operator delete[]();
  }

  return pthread_mutex_unlock((v4 + 400));
}

uint64_t sub_1000358E8(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 400);
  do
  {
    sub_100035878(a1, v2);
    pthread_mutex_destroy(v3);
    ++v2;
    ++v3;
  }

  while (v2 != 25);
  return a1;
}

uint64_t sub_100035944(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v4 = 3758097090;
  if (a3 && a4)
  {
    v9 = a2;
    pthread_mutex_lock((a1 + (a2 << 6) + 400));
    v10 = *(a1 + 8 * a2);
    v11 = a1 + 8 * v9;
    if (!v10)
    {
      *(v11 + 200) = a3;
      operator new[]();
    }

    if (*(v11 + 200) != a3)
    {
      operator delete[]();
    }

    v4 = 0;
    *a4 = v10;
  }

  return v4;
}

void sub_100035A20()
{
  v1 = 0uLL;
  v0 = 0;
  sub_100034B88(&v2);
  sub_100035D50();
}

void sub_100035B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_100034BC4(va);
  if (a9)
  {
    sub_100035CE4(a9);
  }

  _Unwind_Resume(a1);
}

void sub_100035B74(uint64_t a1)
{
  pthread_setname_np("H16ISPFirmwareWorkProcessorThread");
  j__pthread_mutex_lock(*(a1 + 16));
  operator new();
}

void sub_100035C64()
{
  if (v0)
  {
    sub_100035CE4(v0);
  }

  operator delete();
}

void sub_100035C88(uint64_t a1)
{
  CFRetain(*(a1 + 8));
  sub_10003544C(a1);
  operator delete();
}

void sub_100035CE4(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_100035DAC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1000A26F0;
  v2 = a1 + 28;
  for (i = 53; i != 253; i += 8)
  {
    pthread_mutex_init(&a1[i], 0);
    *(v2 - 25) = 0;
    *v2++ = 0;
  }

  return a1;
}

void sub_100035E54(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1000A26F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100035EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_100016114(v20, 3, *(a1 + 20));
  v20[0] = &off_1000A1DE0;
  sub_100016114(v19, 3, *(a2 + 20));
  v18 = 0;
  v19[0] = &off_1000A1DE0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_100042954(a1, v20, v17);
  sub_100042954(a2, v19, v15);
  sub_1000368AC(&v14, 1, *(a1 + 20));
  v14 = &off_1000A2740;
  v13 = 0;
  if ((a4 & 1) == 0)
  {
    v9 = *(a5 + 20) * *(a5 + 16);
    if (v9 >= 1)
    {
      v10 = *(a5 + 8);
      v11 = v10 + v9;
      if (v11 <= v10 + 1)
      {
        v11 = v10 + 1;
      }

      memset(v10, 1, v11 - v10);
    }
  }

  sub_100036970(v12, a5, 0, -1);
}

void sub_100036554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  sub_100016068(&a49);
  sub_100025998(&a53);
  sub_100025998(&a62);
  sub_100025998(&a71);
  sub_100016068(v71 - 168);
  sub_100016068(v71 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_100036628(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 20);
    do
    {
      if (a3)
      {
        for (i = 0; i != a3; *(*(a4 + 8) + 8 * (v5 * v9) + 8 * i++) = *(*(result + 8) + 8 * v8 + 8 * v6 * v5))
        {
          v8 = *(*(a2 + 8) + 4 * i);
          if (v8 >= v6)
          {
            sub_10007CEF4();
          }

          if (v5 < *(a4 + 16))
          {
            v9 = *(a4 + 20);
            if (i < v9)
            {
              continue;
            }
          }

          sub_10007C618();
        }
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_1000366C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 20);
    do
    {
      if (a3)
      {
        for (i = 0; i != a3; *(*(a4 + 8) + (v5 * v9) + i++) = *(*(result + 8) + v8 + v6 * v5))
        {
          v8 = *(*(a2 + 8) + 4 * i);
          if (v8 >= v6)
          {
            sub_10007CEF4();
          }

          if (v5 < *(a4 + 16))
          {
            v9 = *(a4 + 20);
            if (i < v9)
            {
              continue;
            }
          }

          sub_10007C618();
        }
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_100036758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (a3)
      {
        for (j = 0; j != a3; *(*(a4 + 8) + 4 * i * v9 + 4 * j++) = *(*(result + 8) + 4 * v7 + 4 * v8 * i))
        {
          if (i >= *(result + 16) || (v7 = *(*(a2 + 8) + 4 * j), v8 = *(result + 20), v7 >= v8))
          {
            sub_10007CEF4();
          }

          if (*(a4 + 16) > i)
          {
            v9 = *(a4 + 20);
            if (j < v9)
            {
              continue;
            }
          }

          sub_10007C618();
        }

        v4 = *(result + 16);
      }
    }
  }

  return result;
}

uint64_t sub_100036800(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 20);
  v4 = *(a3 + 20);
  if (v3 >= v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if (v4)
      {
        v8 = *(a2 + 20);
        if (v6 < v7)
        {
          v9 = 0;
          v10 = 8 * v5;
          while (1)
          {
            v11 = *(*(a3 + 8) + v9);
            if (v11 >= v8)
            {
              break;
            }

            if (v6 >= *(result + 16))
            {
              sub_10007C618();
            }

            v9 += 4;
            *(*(result + 8) + v10) = *(*(a2 + 8) + 8 * v11 + 8 * v8 * v6);
            v10 += 8;
            if (4 * v4 == v9)
            {
              goto LABEL_9;
            }
          }
        }

        sub_10007CEF4();
      }

LABEL_9:
      ++v6;
      v5 += v3;
    }

    while (v6 != 3);
  }

  return result;
}

uint64_t sub_1000368AC(uint64_t result, int a2, int a3)
{
  *result = off_1000A2450;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_100036938(uint64_t a1)
{
  sub_100025998(a1);

  operator delete();
}

void sub_100036970(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = off_1000A1CB0;
  v4 = *(a2 + 20);
  v5 = *(a2 + 16) - a3;
  if (a4 != -1)
  {
    v5 = a4;
  }

  v6 = *(a2 + 8) + (v4 * a3);
  v7 = off_1000A1CB0;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  operator new[]();
}

void sub_100036A54(uint64_t a1)
{
  sub_1000175B0(a1);

  operator delete();
}

uint64_t sub_100036A8C(uint64_t result, int a2, int a3)
{
  *result = off_1000A1CB0;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_100036B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v15 = &v89 + 1;
  v16 = *(a5 + 72) / *(a5 + 80);
  *(a7 + 96) = v16;
  v93 = 0;
  v92 = 0u;
  v91 = 0u;
  v89 = 0u;
  v90 = 0u;
  v17 = vdupq_n_s64(2uLL);
  v18 = vdupq_n_s64(3uLL);
  do
  {
    v19 = v15;
    v20 = 4;
    v21 = xmmword_10008B050;
    do
    {
      if (vmovn_s64(vcgtq_u64(v18, v21)).u8[0])
      {
        if (v14 + v20 == 4)
        {
          v22 = 1.0;
        }

        else
        {
          v22 = 0.0;
        }

        *(v19 - 1) = v22;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v21)).i32[1])
      {
        if (v14 + v20 == 5)
        {
          v23 = 1.0;
        }

        else
        {
          v23 = 0.0;
        }

        *v19 = v23;
      }

      v21 = vaddq_s64(v21, v17);
      v19 += 2;
      v20 -= 2;
    }

    while (v20);
    ++v14;
    v15 += 3;
  }

  while (v14 != 3);
  v24 = 0;
  *(a7 + 64) = v93;
  v25 = v92;
  *(a7 + 32) = v91;
  *(a7 + 48) = v25;
  v26 = v90;
  *a7 = v89;
  *(a7 + 16) = v26;
  *&v26 = *(a5 + 16);
  *(a8 + 88) = v16;
  *(a8 + 96) = v26;
  *(a8 + 256) = 0;
  *(a8 + 264) = 0;
  *(a8 + 248) = 0;
  do
  {
    *(a8 + v24 + 104) = *(a7 + v24);
    v24 += 8;
  }

  while (v24 != 72);
  v27 = byte_10041DC90;
  if (byte_10041DC90)
  {
    printf("Num of points: %d\n", *(a1 + 20));
    v27 = byte_10041DC90;
  }

  v28 = *(a1 + 20);
  *(a8 + 40) = v28;
  v29 = *(a5 + 544);
  v30 = 0.0;
  if (v28 >= v29)
  {
    v30 = 1.0;
  }

  *(a8 + 400) = v30;
  if (v27)
  {
    printf("outStats->tests.isEnoughInPoints = %lf\n", v30);
    v28 = *(a1 + 20);
    v29 = *(a5 + 544);
  }

  if (v28 < v29 && a6 == 0)
  {
    return 4294967294;
  }

  v32 = *(a5 + 520);
  v33 = *(a5 + 532) + v32;
  if (v33 > v28)
  {
    if (byte_10041DC90 == 1)
    {
      printf("Required points: %d+%d, available points: %d. Only these will be used.\n", v32, *(a5 + 532), v28);
      v33 = *(a1 + 20);
    }

    else
    {
      v33 = v28;
    }
  }

  sub_100016114(&v85, 2, v33);
  v85 = &off_1000A2658;
  sub_100016114(&v81, 2, v33);
  v35 = *(a1 + 20);
  v81 = &off_1000A2658;
  v36 = v35 / v33;
  if (v36 <= 1.0)
  {
    sub_10001746C(&v85, *(a1 + 16), v35);
    memcpy(v86, *(a1 + 8), 8 * v87 * v88);
    sub_10001746C(&v81, *(a2 + 16), *(a2 + 20));
    memcpy(v82, *(a2 + 8), 8 * v83 * v84);
  }

  else if (v33)
  {
    v37 = *(a1 + 16);
    if (v37)
    {
      v38 = 0;
      v39 = *(a2 + 16);
      v40 = *(a2 + 20);
      v51 = v37 >= 2;
      v41 = v87;
      v42 = v88;
      v44 = !v51 || v87 == 1;
      v45 = v83;
      v46 = v84;
      v48 = v39 == 1 || v83 == 1;
      while (1)
      {
        v49 = (v36 * v38);
        v50 = v35 <= v49 || v41 == 0;
        v51 = v50 || v38 >= v42;
        if (v51)
        {
          break;
        }

        *(v86 + v38) = *(*(a1 + 8) + 8 * v49);
        if (v44)
        {
          break;
        }

        *(v86 + v42 + v38) = *(*(a1 + 8) + 8 * v49 + 8 * v35);
        if (!v39)
        {
          break;
        }

        v52 = v40 <= v49 || v45 == 0;
        if (v52 || v38 >= v46)
        {
          break;
        }

        *(v82 + v38) = *(*(a2 + 8) + 8 * v49);
        if (v48)
        {
          break;
        }

        *(v82 + v46 + v38++) = *(*(a2 + 8) + 8 * v49 + 8 * v40);
        if (v33 == v38)
        {
          goto LABEL_67;
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_67:
  sub_100016114(v78, 3, v88);
  v78[0] = &off_1000A1DE0;
  sub_100016114(v75, 3, v88);
  v75[0] = &off_1000A1DE0;
  if (sub_10002C41C(&v85, &v81, a5, v78, v75))
  {
    v64 = 166;
    goto LABEL_95;
  }

  v54 = v80;
  if (v80)
  {
    if (v79 >= 3)
    {
      v55 = 0;
      v56 = v76;
      v57 = v77;
      v58 = 16 * v77;
      while (1)
      {
        *(v78[1] + 8 * (2 * v54) + 8 * v55) = 0x3FF0000000000000;
        if (v56 < 3 || v55 >= v57)
        {
          break;
        }

        *(v75[1] + v58 + 8 * v55++) = 0x3FF0000000000000;
        if (v54 == v55)
        {
          goto LABEL_74;
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_74:
  if ((*(a5 + 529) & 1) != 0 && sub_100018D54(v78, v75, a5))
  {
    v64 = 182;
LABEL_95:
    __assert_rtn("GMC_Controller", "GMC_Controller.cpp", v64, "status == 0");
  }

  v74 = 0.0;
  v59 = sub_1000255EC(v78, a5, &v74);
  v60 = v74;
  *a8 = v74;
  if (byte_10041DC90 == 1)
  {
    printf("GMC_SpatialCoverageTest, coverage: %lf\n", v60);
  }

  *(a8 + 384) = v59;
  if ((v59 | a6) == 1)
  {
    if (!(*(a4 + 20) * *(a4 + 16)))
    {
      __assert_rtn("operator()", "Matrix.hpp", 131, "index < m_rows * m_cols");
    }

    v61 = **(a4 + 8);
    *&v73 = -1.0;
    sub_100036A8C(v72, 1, v80);
    v72[0] = &off_1000A2778;
    v71 = 0;
    if (v61 >= 0.0)
    {
      sub_10003487C(v70, a4, 0, -1);
    }

    v62 = *&v73;
    *(a8 + 16) = *&v73;
    if (byte_10041DC90 == 1)
    {
      printf("GMC_FaceCoverageTest, coverage: %lf, num points: %d\n", v62, v71);
    }

    *(a8 + 392) = 1u;
    if ((a6 | 1) == 1)
    {
      sub_100016114(v69, 3, *(a5 + 532));
      v69[0] = &off_1000A1DE0;
      sub_100016114(v68, 3, *(a5 + 532));
      v68[0] = &off_1000A1DE0;
      sub_100016114(v67, 3, v80 - *(a5 + 532));
      v67[0] = &off_1000A1DE0;
      sub_100016114(v66, 3, v77 - *(a5 + 532));
      v66[0] = &off_1000A1DE0;
      sub_100036A8C(v65, 1, v80 - *(a5 + 532));
      v65[0] = &off_1000A2778;
      if (!sub_10002F9DC(v78, v75, *(a5 + 532), v61 >= 0.0, v72, v67, v66, v69, v68, v65))
      {
        sub_100038868(v69, v68, a5);
      }

      __assert_rtn("GMC_Controller", "GMC_Controller.cpp", 250, "status == 0");
    }

    v34 = 4294967284;
    sub_1000175B0(v72);
  }

  else
  {
    v34 = 0xFFFFFFFFLL;
  }

  sub_100016068(v75);
  sub_100016068(v78);
  sub_100016068(&v81);
  sub_100016068(&v85);
  return v34;
}

void sub_10003867C(_Unwind_Exception *a1)
{
  sub_100016068(&STACK[0x220]);
  sub_100025998(&STACK[0x240]);
  sub_100016068(&STACK[0x260]);
  sub_100016068(&STACK[0x280]);
  sub_100016068(&STACK[0x2A0]);
  sub_100025998(&STACK[0x320]);
  sub_100016068(&STACK[0x340]);
  sub_1000175B0(&STACK[0x388]);
  sub_100016068(&STACK[0x3A8]);
  sub_100016068(&STACK[0x3C8]);
  sub_100016068(&STACK[0x3E8]);
  sub_100016068(&STACK[0x408]);
  sub_1000175B0(&STACK[0x450]);
  sub_100016068(&STACK[0x480]);
  sub_100016068(&STACK[0x4A0]);
  sub_100016068(v1 - 256);
  sub_100016068(v1 - 224);
  _Unwind_Resume(a1);
}

void sub_100038868(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *(a3 + 72);
  v192 = *(a3 + 56);
  v193 = v5;
  v194 = *(a3 + 88);
  v195 = *(a3 + 13);
  v6 = a3[1];
  v188 = *a3;
  v189 = v6;
  v190 = a3[2];
  v191 = *(a3 + 6);
  v7 = a3[27];
  v183 = a3[26];
  v184 = v7;
  v8 = *(a3 + 56);
  v9 = a3[24];
  v182 = a3[25];
  v181 = v9;
  v186 = *(a3 + 456);
  v10 = *(a3 + 59);
  v185 = v8;
  v187 = v10;
  v11 = a3[21];
  v176 = a3[20];
  v177 = v11;
  v12 = a3[18];
  v175 = a3[19];
  v174 = v12;
  v13 = *(a3 + 44);
  v179 = *(a3 + 360);
  v14 = *(a3 + 47);
  v178 = v13;
  v180 = v14;
  sub_100039970(a1, v170);
  sub_100039970(a2, v166);
  v15 = 0;
  v16 = 0;
  v162 = v192;
  v17 = *(&v193 + 1);
  v161 = v193;
  v164 = 0uLL;
  *&v163 = v193;
  *(&v163 + 1) = *(&v192 + 1);
  v165 = *(&v193 + 1);
  memset(v143, 0, sizeof(v143));
  do
  {
    v18 = v15;
    v19 = 3;
    do
    {
      *&v143[v18] = *(v161.f64 + v18) / v17;
      v18 += 8;
      --v19;
    }

    while (v19);
    ++v16;
    v15 += 24;
  }

  while (v16 != 3);
  v20 = 0;
  v21 = 0;
  v164 = *&v143[48];
  v165 = *&v143[64];
  v162 = *&v143[16];
  v163 = *&v143[32];
  v161 = *v143;
  v157 = v188;
  v22 = *(&v189 + 1);
  v156 = v189;
  v159 = 0uLL;
  *&v158 = v189;
  *(&v158 + 1) = *(&v188 + 1);
  v160 = *(&v189 + 1);
  memset(v143, 0, sizeof(v143));
  do
  {
    v23 = v20;
    v24 = 3;
    do
    {
      *&v143[v23] = *(v156.f64 + v23) / v22;
      v23 += 8;
      --v24;
    }

    while (v24);
    ++v21;
    v20 += 24;
  }

  while (v21 != 3);
  v25 = 0;
  v158 = *&v143[32];
  v159 = *&v143[48];
  v160 = *&v143[64];
  v156 = *v143;
  v157 = *&v143[16];
  v154[2] = v183;
  v154[3] = v184;
  v155 = v185;
  v154[0] = v181;
  v154[1] = v182;
  v152 = 0uLL;
  v153 = 0.0;
  do
  {
    *(&v152 + v25) = *(&v179 + v25) - *(&v190 + v25);
    v25 += 8;
  }

  while (v25 != 24);
  if ((*(a3 + 529) & 1) == 0)
  {
    v26 = 0;
    memset(v143, 0, 24);
    do
    {
      *&v143[v26] = *(&v190 + v26) - *(&v194 + v26);
      v26 += 8;
    }

    while (v26 != 24);
    v152 = *v143;
    v153 = *&v143[16];
  }

  sub_100039A94(v170, v148);
  sub_100039A94(v166, v147);
  sub_10002F404(v148, v147, &v161, &v156, v154, &v152, 1, v149);
  sub_100016068(v147);
  sub_100016068(v148);
  v27 = 0;
  memset(&v143[40], 0, 32);
  v144 = 0;
  memset(&v143[8], 0, 32);
  *v143 = 0x3FF0000000000000;
  *&v143[40] = 0x3FF0000000000000;
  v146 = 0.0;
  v145 = 0x3FF0000000000000;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v28 = &v137 + 1;
  v29 = vdupq_n_s64(2uLL);
  v137 = 0u;
  v138 = 0u;
  v30 = vdupq_n_s64(3uLL);
  do
  {
    v31 = v28;
    v32 = 4;
    v33 = xmmword_10008B050;
    do
    {
      if (vmovn_s64(vcgtq_u64(v30, v33)).u8[0])
      {
        if (v27 + v32 == 4)
        {
          v34 = 1.0;
        }

        else
        {
          v34 = 0.0;
        }

        *(v31 - 1) = v34;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v33)).i32[1])
      {
        if (v27 + v32 == 5)
        {
          v35 = 1.0;
        }

        else
        {
          v35 = 0.0;
        }

        *v31 = v35;
      }

      v33 = vaddq_s64(v33, v29);
      v31 += 2;
      v32 -= 2;
    }

    while (v32);
    ++v27;
    v28 += 3;
  }

  while (v27 != 3);
  v36 = 0;
  *&v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v37 = &v161;
  do
  {
    v38 = 0;
    v39 = &v137;
    do
    {
      v40 = 0;
      v41 = 0.0;
      v42 = v39;
      do
      {
        v43 = *v42;
        v42 += 3;
        v41 = v41 + v37->f64[v40++] * v43;
      }

      while (v40 != 3);
      *(&v131 + 3 * v36 + v38++) = v41;
      v39 = (v39 + 8);
    }

    while (v38 != 3);
    ++v36;
    v37 = (v37 + 24);
  }

  while (v36 != 3);
  v44 = 0;
  memset(v142, 0, sizeof(v142));
  v45 = &v131;
  do
  {
    v46 = 0;
    v47 = v143;
    do
    {
      v48 = 0;
      v49 = 0.0;
      v50 = v47;
      do
      {
        v51 = *v50;
        v50 += 4;
        v49 = v49 + *(v45 + v48) * v51;
        v48 += 8;
      }

      while (v48 != 24);
      *(&v142[2 * v44] + v46++) = v49;
      ++v47;
    }

    while (v46 != 4);
    ++v44;
    v45 = (v45 + 24);
  }

  while (v44 != 3);
  v52 = 0;
  *&v143[24] = -*&v152;
  *&v143[56] = -*(&v152 + 1);
  v146 = -v153;
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v53 = &v126;
  v54 = v154;
  do
  {
    v55 = 0;
    v56 = v53;
    do
    {
      *v56 = *(v54 + v55);
      v56 = (v56 + 24);
      v55 += 8;
    }

    while (v55 != 24);
    ++v52;
    v53 = (v53 + 8);
    v54 = (v54 + 24);
  }

  while (v52 != 3);
  v57 = 0;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v58 = &v156;
  do
  {
    v59 = 0;
    v60 = &v126;
    do
    {
      v61 = 0;
      v62 = 0.0;
      v63 = v60;
      do
      {
        v64 = *v63;
        v63 += 3;
        v62 = v62 + v58->f64[v61++] * v64;
      }

      while (v61 != 3);
      *(&v137 + 3 * v57 + v59++) = v62;
      v60 = (v60 + 8);
    }

    while (v59 != 3);
    ++v57;
    v58 = (v58 + 24);
  }

  while (v57 != 3);
  v65 = 0;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v66 = &v137;
  do
  {
    v67 = 0;
    v68 = v143;
    do
    {
      v69 = 0;
      v70 = 0.0;
      v71 = v68;
      do
      {
        v72 = *v71;
        v71 += 4;
        v70 = v70 + *(v66 + v69) * v72;
        v69 += 8;
      }

      while (v69 != 24);
      *(&v131 + 4 * v65 + v67++) = v70;
      ++v68;
    }

    while (v67 != 4);
    ++v65;
    v66 = (v66 + 24);
  }

  while (v65 != 3);
  sub_100016114(&v126, 4, v151);
  *&v126 = &off_1000A27B0;
  LODWORD(v138) = 1;
  DWORD1(v138) = v151;
  v123 = 1;
  v124 = v151;
  v125 = 0;
  *&v137 = off_1000A1C28;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v121 = &off_1000A1C58;
  __src = v150;
  sub_100016068(&v137);
  LODWORD(v138) = 1;
  DWORD1(v138) = DWORD1(v127);
  v118 = 1;
  v119 = DWORD1(v127);
  v120 = 0;
  *&v137 = off_1000A1C28;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v116 = &off_1000A1C58;
  __dst = *(&v126 + 1);
  sub_100016068(&v137);
  sub_10001746C(&v116, 1, v124);
  memcpy(__dst, __src, 8 * v118 * v119);
  sub_100016068(&v116);
  sub_100016068(&v121);
  LODWORD(v138) = 1;
  DWORD1(v138) = v151;
  v123 = 1;
  v124 = v151;
  v125 = 0;
  *&v137 = off_1000A1C28;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v121 = &off_1000A1C58;
  __src = &v150[8 * v151];
  sub_100016068(&v137);
  LODWORD(v138) = 1;
  DWORD1(v138) = DWORD1(v127);
  v118 = 1;
  v119 = DWORD1(v127);
  v120 = 0;
  *&v137 = off_1000A1C28;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v116 = &off_1000A1C58;
  __dst = (*(&v126 + 1) + 8 * DWORD1(v127));
  sub_100016068(&v137);
  sub_10001746C(&v116, v123, v124);
  memcpy(__dst, __src, 8 * v118 * v119);
  sub_100016068(&v116);
  sub_100016068(&v121);
  LODWORD(v138) = 1;
  DWORD1(v138) = v151;
  v123 = 1;
  v124 = v151;
  v125 = 0;
  *&v137 = off_1000A1C28;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v121 = &off_1000A1C58;
  __src = &v150[16 * v151];
  sub_100016068(&v137);
  LODWORD(v138) = 1;
  DWORD1(v138) = DWORD1(v127);
  v118 = 1;
  v119 = DWORD1(v127);
  v120 = 0;
  *&v137 = off_1000A1C28;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v116 = &off_1000A1C58;
  __dst = (*(&v126 + 1) + 8 * (2 * DWORD1(v127)));
  sub_100016068(&v137);
  sub_10001746C(&v116, v123, v124);
  memcpy(__dst, __src, 8 * v118 * v119);
  sub_100016068(&v116);
  sub_100016068(&v121);
  v73 = DWORD1(v127);
  if (DWORD1(v127))
  {
    if (v127 < 4)
    {
      __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
    }

    v74 = 8 * (3 * DWORD1(v127));
    do
    {
      *(*(&v126 + 1) + v74) = 0x3FF0000000000000;
      v74 += 8;
      --v73;
    }

    while (v73);
  }

  sub_100039C20(v142, &v126, &v137);
  sub_100039970(&v137, &v121);
  sub_100039C20(&v131, &v126, &v116);
  sub_100039970(&v116, v112);
  sub_100016114(v109, 1, v124);
  v109[0] = &off_1000A1C58;
  sub_100016114(v106, 1, v124);
  v106[0] = &off_1000A1C58;
  v75 = v111;
  if (v111)
  {
    if (v123)
    {
      v76 = 0;
      v77 = v124;
      v78 = v172;
      v79 = v173;
      v80 = v114;
      v81 = v115;
      v82 = v168;
      v83 = v169;
      v84 = v107;
      v87 = v123 == 1 || v172 == 1 || v110 == 0;
      v88 = 8 * v115;
      v89 = 8 * v169;
      while (v77 != v76)
      {
        v90 = !v78 || v76 >= v79;
        v91 = v90;
        if (v91 || v87)
        {
          break;
        }

        v92 = (__src + 8 * v76);
        v93 = (v171 + 8 * v76);
        *(v109[1] + 8 * v76) = (*v92 - *v93) * v17 * ((*v92 - *v93) * v17) + v17 * (v92[v77] - v93[v79]) * (v17 * (v92[v77] - v93[v79]));
        if (!v80 || v76 >= v81 || !v82 || v76 >= v83 || v80 == 1 || v82 == 1 || !v84 || v76 >= v108)
        {
          break;
        }

        v94 = (*(v113 + 8 * v76) - *(v167 + 8 * v76)) * v22;
        v95 = v22 * (*(v113 + v88 + 8 * v76) - *(v167 + v89 + 8 * v76));
        *(v106[1] + 8 * v76++) = v94 * v94 + v95 * v95;
        if (v75 == v76)
        {
          goto LABEL_90;
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_90:
  sub_100039C94(v109, v106, v97);
  sub_100039D3C(v97, v98);
  v96 = v99;
  v105 = v101;
  v99 = 0;
  v101 = 0;
  v102[0] = &off_1000A1C58;
  v102[1] = v96;
  v103 = 1;
  v104 = v100;
  sub_100016068(v98);
  sub_100016068(v97);
  sub_100039D90(v102);
}

void sub_1000395C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_100016068(&a17);
  sub_100016068(&a21);
  sub_100016068(&a25);
  sub_100016068(&a29);
  sub_100016068(&a33);
  sub_100016068(&a37);
  sub_100016068(&a63);
  sub_100016068(&a41);
  sub_100016068(&STACK[0x300]);
  sub_100016068(&STACK[0x430]);
  sub_100016068(&STACK[0x450]);
  _Unwind_Resume(a1);
}

_DWORD *sub_1000396D4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = result;
  v6 = a2 / a3;
  if (v6 <= 1.0)
  {
    if (result[5] == *(a4 + 20))
    {
      sub_1000176C8(a4, result[4], result[5]);
      v9 = *(a4 + 8);
      v10 = *(v5 + 1);
      v11 = 4 * *(a4 + 16) * *(a4 + 20);

      return memcpy(v9, v10, v11);
    }

    else if (a3)
    {
      for (i = 0; i != a3; ++i)
      {
        if (i >= (result[5] * result[4]))
        {
          sub_10007EBF0();
        }

        if (i >= (*(a4 + 20) * *(a4 + 16)))
        {
          sub_10007EC1C();
        }

        *(*(a4 + 8) + 4 * i) = *(*(result + 1) + 4 * i);
      }
    }
  }

  else if (a3)
  {
    for (j = 0; j != a3; *(*(a4 + 8) + 4 * j++) = *(*(result + 1) + 4 * v8))
    {
      v8 = (v6 * j);
      if (result[5] * result[4] <= v8)
      {
        sub_10007EBF0();
      }

      if (j >= (*(a4 + 20) * *(a4 + 16)))
      {
        sub_10007EC1C();
      }
    }
  }

  return result;
}

uint64_t sub_100039810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a4 + 560) == 1)
  {
    v6 = 0;
    v12 = 0uLL;
    v13 = 0;
    do
    {
      *(&v12 + v6) = *(a4 + v6 + 360) - *(a4 + v6 + 32);
      v6 += 8;
    }

    while (v6 != 24);
    *(a6 + 72) = v12;
    *(a6 + 88) = v13;
    if ((*(a4 + 529) & 1) == 0)
    {
      v7 = 0;
      v12 = 0uLL;
      v13 = 0;
      do
      {
        *(&v12 + v7) = *(a4 + v7 + 32) - *(a4 + v7 + 88);
        v7 += 8;
      }

      while (v7 != 24);
      *(a6 + 72) = v12;
      *(a6 + 88) = v13;
    }

    LODWORD(v12) = 0;
    sub_100030578(a1);
  }

  *(a6 + 96) = *(a4 + 72) / *(a4 + 80);
  if (a5 != a6)
  {
    *a6 = *a5;
    v8 = *(a5 + 16);
    v9 = *(a5 + 32);
    v10 = *(a5 + 48);
    *(a6 + 64) = *(a5 + 64);
    *(a6 + 32) = v9;
    *(a6 + 48) = v10;
    *(a6 + 16) = v8;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100039970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  result = sub_100016114(a2, 2, v4);
  *a2 = &off_1000A2658;
  if (v4)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = 119;
    do
    {
      v9 = 0;
      v10 = *(a1 + 20);
      v11 = *(a2 + 16);
      v12 = *(a2 + 20);
      if (v7)
      {
        v13 = v6 >= v10;
      }

      else
      {
        v13 = 1;
      }

      v14 = v13;
      v15 = 1;
      do
      {
        if ((v14 & 1) != 0 || v7 < 3)
        {
          v8 = 125;
LABEL_18:
          __assert_rtn("operator()", "Matrix.hpp", v8, "row < m_rows && col < m_cols");
        }

        if (v9 >= v11 || v6 >= v12)
        {
          goto LABEL_18;
        }

        v16 = v15;
        v15 = 0;
        v17 = *(a1 + 8) + 8 * v6;
        v18 = *(v17 + 8 * v9 * v10);
        v19 = *(v17 + 8 * (2 * v10));
        result = *(a2 + 8) + 8 * v6;
        *(result + 8 * v9 * v12) = v18 / v19;
        v9 = 1;
      }

      while ((v16 & 1) != 0);
      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t sub_100039A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  result = sub_100016114(a2, 3, v4);
  *a2 = &off_1000A1DE0;
  if (v4)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 20);
      v9 = *(a2 + 16);
      v10 = *(a2 + 20);
      v12 = v6 == 1 || v9 == 1;
      v13 = 119;
      while (v8 != v7)
      {
        if (!v9 || v7 >= v10)
        {
          goto LABEL_22;
        }

        *(*(a2 + 8) + 8 * v7) = *(*(a1 + 8) + 8 * v7);
        if (v12)
        {
          if (v6 == 1)
          {
            v14 = 125;
          }

          else
          {
            v14 = 119;
          }

          __assert_rtn("operator()", "Matrix.hpp", v14, "row < m_rows && col < m_cols");
        }

        *(*(a2 + 8) + 8 * v10 + 8 * v7) = *(*(a1 + 8) + 8 * v8 + 8 * v7);
        if (v9 <= 2)
        {
          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        result = *(a2 + 8) + 8 * (2 * v10);
        *(result + 8 * v7++) = 0x3FF0000000000000;
        if (v4 == v7)
        {
          return result;
        }
      }
    }

    v13 = 125;
LABEL_22:
    __assert_rtn("operator()", "Matrix.hpp", v13, "row < m_rows && col < m_cols");
  }

  return result;
}

uint64_t sub_100039C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100039E7C(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &off_1000A1DE0;
  *(a3 + 8) = v4;
  *(a3 + 16) = 3;
  *(a3 + 20) = v5;
  return sub_100016068(&v7);
}

uint64_t sub_100039C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 != *(a2 + 16))
  {
    sub_10007ECF8();
  }

  result = sub_100016114(a3, v5, *(a2 + 20) + *(a1 + 20));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(a2 + 8);
    v10 = *(a1 + 8);
    v11 = *(result + 8);
    v12 = *(a1 + 20);
    v13 = *(a2 + 20);
    do
    {
      for (i = v12; i; --i)
      {
        v15 = *v10++;
        *v11++ = v15;
      }

      for (j = v13; j; --j)
      {
        v17 = *v9++;
        *v11++ = v17;
      }

      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}

double sub_100039D3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_100016114(a2, *(a1 + 16), *(a1 + 20));
  v5 = *(a1 + 20) * *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(v3 + 8);
    do
    {
      v8 = *v6++;
      result = sqrt(v8);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_100039E44(uint64_t a1)
{
  sub_100016068(a1);

  operator delete();
}

uint64_t sub_100039E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = a3;
  if (*(a2 + 16) == 4)
  {
    result = sub_100016114(a3, 3, *(a2 + 20));
    v6 = 0;
    v7 = *(a2 + 8);
    v8 = *(result + 8);
    v9 = *(a2 + 20);
    v10 = *(a2 + 20);
    do
    {
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = v7;
        do
        {
          v13 = 0;
          v14 = 0.0;
          result = v12;
          do
          {
            v14 = v14 + *(a1 + v13) * *result;
            v13 += 8;
            result += 8 * v9;
          }

          while (v13 != 32);
          *(v8 + 8 * v6 * v9 + 8 * v11++) = v14;
          v12 += 8;
        }

        while (v11 != v9);
      }

      ++v6;
      a1 += 32;
    }

    while (v6 != 3);
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = off_1000A1C28;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_100039F60(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = &_mh_execute_header;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *a1 = off_1000A27E8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

uint64_t sub_10003A048(uint64_t a1)
{
  *a1 = off_1000A27E8;
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_sync(v2, &stru_1000A2818);
    dispatch_release(*(a1 + 56));
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if (*v3)
    {
      RgbIrCalibration::~RgbIrCalibration(*v3);
      operator delete();
    }

    v4 = *(v3 + 8);
    if (!v4 || (v4, *(a1 + 40)))
    {
      operator delete();
    }

    *(a1 + 40) = 0;
  }

  return a1;
}

void sub_10003A110(uint64_t a1)
{
  sub_10003A048(a1);

  operator delete();
}

uint64_t sub_10003A174(uint64_t result)
{
  *(result + 24) = 1;
  v1 = *(result + 40);
  if (v1)
  {
    result = *v1;
    if (*v1)
    {
      return RgbIrCalibration::abort(result);
    }
  }

  return result;
}

__n128 sub_10003A19C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 96) = *(a2 + 32);
  *(a1 + 64) = result;
  *(a1 + 80) = v3;
  return result;
}

uint64_t sub_10003A1B8()
{
  v0 = __chkstk_darwin();
  if ((*(v0 + 9) & 1) == 0)
  {
    v4 = v0;
    if (*(v0 + 20) == 1)
    {
      if (*(v0 + 8) == 1)
      {
        v5 = off_10041DC98;
        if (off_10041DC98 == &_os_log_default)
        {
          v5 = os_log_create("com.apple.isp", "general");
          off_10041DC98 = v5;
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9[0]) = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI): Already ran algorithm\n", v9, 2u);
        }
      }
    }

    else if (*(v0 + 12) < *(v0 + 16))
    {
      v6 = v2;
      v7 = v1;
      v9[5] = 0;
      v9[6] = 0;
      CFRetain(v2);
      CFRetain(v7);
      CVPixelBufferCreateFromCVImageBufferRef();
      if (v6)
      {
        CFRelease(v6);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      if (*(v4 + 8) == 1)
      {
        v8 = off_10041DC98;
        if (off_10041DC98 == &_os_log_default)
        {
          v8 = os_log_create("com.apple.isp", "general");
          off_10041DC98 = v8;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10007ED24();
        }
      }
    }
  }

  return 3758097084;
}

void sub_10003A554(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((CVPixelBufferGetPixelFormatType(*(*(*(a1 + 32) + 8) + 24)) | 0x10) == 0x34323076)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
    Width = CVPixelBufferGetWidth(v5);
    Height = CVPixelBufferGetHeight(v5);
    v8 = Width >> 2;
    if (Width <= 0xA03)
    {
      v8 = 640;
    }

    if (v8 >= Width)
    {
      v8 = Width;
    }

    v9 = (2 * llroundf(vcvts_n_f32_u64(v8, 1uLL)));
    v10 = (2 * llroundf(vcvts_n_f32_u64(Height * v9 / Width, 1uLL)));
    keys = kCVPixelBufferIOSurfacePropertiesKey;
    values = CFDictionaryCreate(kCFAllocatorDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v3 = 1;
    v11 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    LODWORD(v9) = CVPixelBufferCreate(kCFAllocatorDefault, v9, v10, 0x34323076u, v11, (*(*(a1 + 32) + 8) + 24));
    CFRelease(values);
    CFRelease(v11);
    if (!v9)
    {
      v12 = *(*(*(a1 + 32) + 8) + 24);
      pixelTransferSessionOut = 0;
      if (VTPixelTransferSessionCreate(kCFAllocatorDefault, &pixelTransferSessionOut))
      {
        v13 = 0;
        pixelTransferSessionOut = 0;
        v3 = 1;
      }

      else
      {
        if (VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v5, *(*(*(a1 + 32) + 8) + 24)))
        {
          v14 = 1;
        }

        else
        {
          v14 = v12 == 0;
        }

        v3 = v14;
        v13 = pixelTransferSessionOut;
      }

      VTPixelTransferSessionInvalidate(v13);
      CFRelease(pixelTransferSessionOut);
    }

    CVBufferRelease(v5);
  }

  if (*(v2 + 23) == 1)
  {
    sub_10003A954(*(*(*(a1 + 32) + 8) + 24), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  }

  keys = 0;
  if ((v3 & 1) == 0)
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
    if (!CVPixelBufferCreate(kCFAllocatorDefault, WidthOfPlane, HeightOfPlane, 0x4C303038u, *(a1 + 48), &keys))
    {
      CVPixelBufferLockBaseAddress(*(*(*(a1 + 32) + 8) + 24), 1uLL);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
      CVPixelBufferLockBaseAddress(keys, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(keys);
      if (BaseAddressOfPlane)
      {
        v19 = BaseAddress == 0;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = BaseAddress;
        v21 = CVPixelBufferGetHeight(keys);
        v22 = CVPixelBufferGetWidth(keys);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
        BytesPerRow = CVPixelBufferGetBytesPerRow(keys);
        if (v21)
        {
          v25 = BytesPerRow;
          do
          {
            memcpy(v20, BaseAddressOfPlane, v22);
            BaseAddressOfPlane += BytesPerRowOfPlane;
            v20 += v25;
            --v21;
          }

          while (v21);
        }
      }

      CVPixelBufferUnlockBaseAddress(keys, 0);
      CVPixelBufferUnlockBaseAddress(*(*(*(a1 + 32) + 8) + 24), 1uLL);
    }
  }

  v26 = *(*(*(a1 + 32) + 8) + 24);
  if (v26)
  {
    CVPixelBufferRelease(v26);
  }

  if (keys)
  {
    *(v2 + 20) = sub_10003ABFC(v2, *(a1 + 56), *(a1 + 64), keys, *(a1 + 48), *(a1 + 72), *(a1 + 13392), (a1 + 80), v2 + 64, *(v2 + 104));
  }

  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 56));
  if (keys)
  {
    CFRelease(keys);
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 64));
  ++*(v2 + 12);
  *(v2 + 9) = 0;
}

FILE *sub_10003A954(__CVBuffer *a1, const void *a2, FILE *a3, const void *a4, FILE *a5)
{
  v29 = 0;
  setlocale(0, "");
  time(&v29);
  v10 = localtime(&v29);
  strftime(v32, 0x14uLL, "%m%d%g_%H%M%S", v10);
  snprintf(__str, 0x400uLL, "/var/mobile/Media/DCIM/%s-RGBIR-", v32);
  sub_10003C398(a2, __str, "Color");
  sub_10003C398(a4, __str, "IR");
  if (a1)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v30[0] = HIBYTE(PixelFormatType);
    v30[1] = BYTE2(PixelFormatType);
    v30[2] = BYTE1(PixelFormatType);
    v30[3] = PixelFormatType;
    v30[4] = 0;
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    snprintf(__filename, 0x400uLL, "%s%s.%lux%lu.%lu.%s.bin", __str, "Color", WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane, v30);
    if (HeightOfPlane * BytesPerRowOfPlane <= CVPixelBufferGetDataSize(a1))
    {
      v15 = fopen(__filename, "wb");
      if (v15)
      {
        v16 = v15;
        CVPixelBufferLockBaseAddress(a1, 0);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
        if (HeightOfPlane)
        {
          v18 = BaseAddressOfPlane;
          v19 = 0;
          v20 = 1;
          do
          {
            fwrite(&v18[v19 * BytesPerRowOfPlane], WidthOfPlane, 1uLL, v16);
            v19 = v20;
            v21 = HeightOfPlane > v20++;
          }

          while (v21);
        }

        v22 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
        v23 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
        v24 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
        if (v23)
        {
          v25 = v24;
          v26 = 0;
          v27 = 1;
          do
          {
            fwrite(&v25[v26 * v22], WidthOfPlane, 1uLL, v16);
            v26 = v27;
            v21 = v23 > v27++;
          }

          while (v21);
        }

        CVPixelBufferUnlockBaseAddress(a1, 0);
        fclose(v16);
      }
    }
  }

  sub_10003C4A0(a3, __str, "IR");
  return sub_10003C4A0(a5, __str, "Depth");
}

uint64_t sub_10003ABFC(uint64_t a1, int a2, const __CFDictionary *a3, int a4, CFDictionaryRef theDict, int a6, int a7, double *a8, uint64_t a9, __int16 a10)
{
  v13 = theDict;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kFigCaptureStreamMetadata_DetectedFacesArray);
  }

  else
  {
    Value = 0;
  }

  valuePtr = -269488145;
  v19 = CFDictionaryGetValue(a3, @"StereoGMC-Result");
  if (v19)
  {
    CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
  }

  v30 = 0;
  v31 = 0;
  mach_timebase_info(&info);
  v27 = mach_absolute_time();
  v20 = off_10041DC98;
  if (off_10041DC98 == &_os_log_default)
  {
    v20 = os_log_create("com.apple.isp", "general");
    off_10041DC98 = v20;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI): Starting\n", buf, 2u);
  }

  v21 = RgbIrCalibration::Calibrate(**(a1 + 40), a2, a3, a4, v13, a6, a7 ^ 1u, kCFBooleanTrue, a8, Value, a10, a9, &v31, &v28, &v30, &v29);
  v22 = (mach_absolute_time() - v27) * info.numer / info.denom / 0xF4240;
  sub_100026D58();
  v23 = off_10041DC98;
  if (off_10041DC98 == &_os_log_default)
  {
    v23 = os_log_create("com.apple.isp", "general");
    off_10041DC98 = v23;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v34 = v21;
    v35 = 1024;
    v36 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI): status 0x%08X (%d msec)\n", buf, 0xEu);
  }

  if (!v21)
  {
    sub_1000197B0(&v25);
  }

  return 0;
}

void sub_10003B170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000197B4(va);
  _Unwind_Resume(a1);
}

FILE *sub_10003B194(_BYTE *a1)
{
  sub_100025F4C();
  result = fopen("/var/mobile/Library/ISP/Pearl/IsfHistory.bin", "rb");
  if (result)
  {
    v3 = result;
    fread(a1, 0xE38uLL, 1uLL, result);

    return fclose(v3);
  }

  else
  {
    *a1 = 3;
    a1[4] = 1;
  }

  return result;
}

uint64_t sub_10003B224()
{
  v0 = __chkstk_darwin();
  if (*(v0 + 20) == 1 && (*(v0 + 21) & 1) == 0)
  {
    v2 = v1;
    sub_10003B194(v5);
    memcpy(__dst, v2, sizeof(__dst));
    sub_1000197B0(&v4);
  }

  if (*(v0 + 22) == 1)
  {
    *(v0 + 20) = 0;
    *(v0 + 12) = 0;
  }

  return 0;
}

void sub_10003B498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000197B4(va);
  _Unwind_Resume(a1);
}

long double sub_10003B4B8(uint64_t a1, long double *a2)
{
  *a2 = atan2(*(a1 + 56), *(a1 + 64)) * 1000.0;
  a2[1] = atan2(-*(a1 + 48), sqrt(*(a1 + 64) * *(a1 + 64) + *(a1 + 56) * *(a1 + 56))) * 1000.0;
  result = atan2(*(a1 + 24), *a1) * 1000.0;
  a2[2] = result;
  return result;
}

CFDictionaryRef sub_10003B544(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (!v1)
  {
    return 0;
  }

  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v1);

  *(*(a1 + 40) + 8) = 0;
  return Copy;
}

void sub_10003B5A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = &_mh_execute_header;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *a1 = off_1000A2870;
  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  *(a1 + 56) = 0x3FF0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  operator new();
}

uint64_t sub_10003B674(uint64_t a1)
{
  *a1 = off_1000A2870;
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_sync(v2, &stru_1000A28A0);
    dispatch_release(*(a1 + 96));
    *(a1 + 96) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    sub_10003C5D4(v4);
    operator delete();
  }

  return a1;
}

void sub_10003B714(uint64_t a1)
{
  sub_10003B674(a1);

  operator delete();
}

uint64_t sub_10003B74C(uint64_t result, double a2, double a3)
{
  *(result + 56) = a2;
  *(result + 64) = a3;
  return result;
}

CFDictionaryRef sub_10003B754(uint64_t a1, CFDictionaryRef theDict)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 72) = 0;
  }

  result = CFDictionaryCreateCopy(kCFAllocatorDefault, theDict);
  *(a1 + 72) = result;
  return result;
}

uint64_t sub_10003B7A8(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, const void *a5, const __CFDictionary *a6, int a7, double *a8, unsigned __int16 a9)
{
  if (*(a1 + 9) == 1)
  {
    v10 = 3758097084;
    if (*(a1 + 8) == 1)
    {
      v11 = off_10041DC98;
      if (off_10041DC98 == &_os_log_default)
      {
        v11 = os_log_create("com.apple.isp", "general");
        off_10041DC98 = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v77 = 0;
        v12 = "Pearl Calibration (MI): Already running algorithm\n";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v77, 2u);
        return v10;
      }
    }

    return v10;
  }

  v19 = 0;
  v78 = 0u;
  v79 = 0u;
  memset(v77, 0, sizeof(v77));
  v20 = a8 + 1069;
  do
  {
    v21 = 0;
    v22 = v20;
    do
    {
      v23 = *v22++;
      v24 = v23;
      if (v19 >= 2uLL)
      {
        v25 = 2;
      }

      else
      {
        v25 = v19;
      }

      *&v77[4 * v25 + v21] = v24;
      v21 += 16;
    }

    while (v21 != 48);
    ++v19;
    v20 += 3;
  }

  while (v19 != 3);
  v26 = a8[1078];
  v27 = a8[1079];
  v28 = a8[1080];
  v29 = vzip1q_s32(*v77, v78);
  v30 = vtrn2q_s32(*v77, *&v77[16]);
  v30.i32[2] = v78.i32[1];
  v73 = vzip1q_s32(vzip2q_s32(*v77, v78), vdupq_laneq_s32(*&v77[16], 2));
  v74 = vzip1q_s32(v29, *&v77[16]);
  v71 = vnegq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v74, v26), v30, v27), v73, v28));
  v72 = vzip2q_s32(v29, vdupq_lane_s32(*&v77[16], 1));
  v31 = *(*(a1 + 40) + 16);
  if (!v31)
  {
    sub_10003BEF0(*(a1 + 40));
    v49 = *(a1 + 40);
    *(v49 + 48) = 0;
    *v49 = 4;
    v50 = objc_alloc_init(ADPearlColorInFieldCalibrationExecutorParameters);
    [v50 setReportTelemetry:1];
    *(*(a1 + 40) + 16) = [[ADPearlColorInFieldCalibrationExecutor alloc] initForEngineType:**(a1 + 40) andExecutorParameters:v50];

    if ([*(*(a1 + 40) + 16) prepare])
    {
      goto LABEL_51;
    }

    v51 = [ADFigCameraCalibrationSource alloc];
    v52 = *(a1 + 80);
    *&v52 = v52;
    v53 = [v51 initWithPixelSize:*(a1 + 72) gdcModel:v52 cameraToPlatformTransform:{*matrix_identity_float4x4.columns[0].i64, *matrix_identity_float4x4.columns[1].i64, *matrix_identity_float4x4.columns[2].i64, *matrix_identity_float4x4.columns[3].i64}];
    *(*(a1 + 40) + 8) = v53;
    v54 = [v53 cameraCalibration];
    v55 = [v54 mutableCopy];
    Width = CVPixelBufferGetWidth(a4);
    Height = CVPixelBufferGetHeight(a4);
    [v55 referenceDimensions];
    v60 = v59 / (Height / Width);
    if (v58 < v60)
    {
      v60 = v58;
    }

    [v55 crop:{(v58 - v60) * 0.5, (v59 - Height / Width * v60) * 0.5}];
    [v55 scale:{Width, Height}];
    v61 = [objc_msgSend(*(*(a1 + 40) + 16) "pipeline")];
    v62 = *(a1 + 40);
    *(v62 + 24) = v61;
    if (!v61)
    {
      v61 = [objc_msgSend(*(v62 + 16) "pipeline")];
      *(*(a1 + 40) + 24) = v61;
    }

    v63 = v61;
    v64 = [v54 copy];
    [*(*(a1 + 40) + 16) setColorCameraCalibration:v64];
    [*(*(a1 + 40) + 16) setPearlCameraCalibration:v55];

    v31 = *(*(a1 + 40) + 16);
  }

  if ([objc_msgSend(v31 "pipeline")])
  {
    if (([objc_msgSend(*(*(a1 + 40) + 16) "pipeline")] & 1) == 0)
    {
      v10 = 3758097084;
      if (*(a1 + 8) == 1)
      {
        v11 = off_10041DC98;
        if (off_10041DC98 == &_os_log_default)
        {
          v11 = os_log_create("com.apple.isp", "general");
          off_10041DC98 = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v77 = 0;
          v12 = "Pearl Calibration (MI): pearl frame not valid for algorithm\n";
          goto LABEL_37;
        }
      }

      return v10;
    }

    v32 = *(*(a1 + 40) + 8);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, 0);
    [v32 updateForFrameWithDimensions:a5 metadataDictionary:{WidthOfPlane, CVPixelBufferGetHeightOfPlane(a2, 0)}];
    v34 = [*(*(a1 + 40) + 8) cameraCalibration];
    v35 = [v34 mutableCopy];
    v36 = CVPixelBufferGetWidth(a4);
    v37 = CVPixelBufferGetHeight(a4);
    [v35 referenceDimensions];
    v40 = v39 / (v37 / v36);
    if (v38 < v40)
    {
      v40 = v38;
    }

    [v35 crop:{(v38 - v40) * 0.5, (v39 - v37 / v36 * v40) * 0.5}];
    [v35 scale:{v36, v37}];
    memset(v77, 0, 24);
    Value = CFDictionaryGetValue(a6, kFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStamp);
    CMTimeMakeFromDictionary(v77, Value);
    time = *v77;
    Seconds = CMTimeGetSeconds(&time);
    v43 = *(*(a1 + 40) + 16);
    v44 = matrix_identity_float4x4.columns[0];
    v45 = matrix_identity_float4x4.columns[1];
    v46 = matrix_identity_float4x4.columns[2];
    v47 = matrix_identity_float4x4.columns[3];
    if (a7)
    {
      v48 = [v43 preprocessInputColorFrame:a2 pearlDepth:a4 pearlPoses:v35 pceCameraCalibration:v34 pearlCameraCalibrationTransform:*v44.i64 colorCameraCalibration:*v45.i64 timestamp:{*v46.i64, *v47.i64, *v74.i64, *v72.i64, *v73.i64, *v71.i64, *&Seconds}];
    }

    else
    {
      v48 = [v43 preprocessInputColorFrame:a2 pearlNormalizedDX:a4 pearlPoses:v35 disparityNormalizationMultiplier:v34 disparityNormalizationOffset:*v44.i64 pceCameraCalibration:*v45.i64 pearlCameraCalibrationTransform:*v46.i64 colorCameraCalibration:*v47.i64 timestamp:{*(a1 + 56), *(a1 + 64), *&v74, *&v72, *&v73, *&v71, *&Seconds}];
    }

    v65 = v48;

    if (!v65)
    {
      if (a2)
      {
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        CVPixelBufferGetBaseAddressOfPlane(a2, 0);
        CVPixelBufferUnlockBaseAddress(a2, 1uLL);
        v66 = 0xFFFF;
      }

      else
      {
        v66 = 0;
      }

      if (a3)
      {
        CVPixelBufferLockBaseAddress(a3, 1uLL);
        CVPixelBufferGetBaseAddress(a3);
        v66 ^= 0xFFFFu;
        CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      }

      if (a4)
      {
        CVPixelBufferLockBaseAddress(a4, 1uLL);
        CVPixelBufferGetBaseAddress(a4);
        v66 ^= 0xFFFFu;
        CVPixelBufferUnlockBaseAddress(a4, 1uLL);
      }

      if (v66 == a9)
      {
        if (*(a1 + 23) == 1)
        {
          sub_10003A954(a2, a5, a3, a6, a4);
        }

        *(a1 + 9) = 1;
        v67 = *(*(a1 + 40) + 16);
        v68 = *(*(a1 + 40) + 24);
        v69 = *(a1 + 96);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10003BF50;
        block[3] = &unk_1000A28C0;
        block[4] = a1;
        dispatch_async(v69, block);
        return 0;
      }
    }

LABEL_51:
    v10 = 3758097084;
    ++*(a1 + 12);
    return v10;
  }

  v10 = 3758097084;
  if (*(a1 + 8) == 1)
  {
    v11 = off_10041DC98;
    if (off_10041DC98 == &_os_log_default)
    {
      v11 = os_log_create("com.apple.isp", "general");
      off_10041DC98 = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v77 = 0;
      v12 = "Pearl Calibration (MI): color frame not valid for algorithm\n";
      goto LABEL_37;
    }
  }

  return v10;
}

double sub_10003BEF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
  }

  v3 = *(a1 + 8);
  if (v3)
  {
  }

  v4 = *(a1 + 32);
  if (v4)
  {
  }

  v5 = *(a1 + 24);
  if (v5)
  {
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_10003BF50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 40) + 32);
  if (v2)
  {
  }

  v3 = objc_opt_new();
  v4 = *(v1 + 40);
  *(v4 + 32) = v3;
  v5 = [*(v4 + 16) executePreprocessedInputsWithInterSessionData:*(v4 + 24) outResult:v3];
  *(v1 + 20) = v5 == 0;
  v6 = *(v1 + 40);
  *(v6 + 48) = 0;
  *(v1 + 9) = 0;
  ++*(v1 + 12);
  if (!v5)
  {
    v7 = [*(v6 + 32) executed];
    v6 = *(v1 + 40);
    if (v7)
    {
      v8 = *(v6 + 40);
      if (v8)
      {

        v6 = *(v1 + 40);
      }

      v9 = *(v6 + 32);
      *(v6 + 40) = v9;
      v10 = v9;
      v6 = *(v1 + 40);
    }
  }

  [objc_msgSend(*(v6 + 24) "persistenceData")];

  v11 = *(*(v1 + 40) + 24);
}

uint64_t sub_10003C034(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  if (!*(v4 + 40))
  {
    v2 = 0;
    goto LABEL_30;
  }

  [*(v4 + 40) pearlToColorExtrinsics];
  v6 = 0;
  LOBYTE(v2) = 0;
  v9 = vzip1q_s32(v7, v8);
  v10 = vzip2q_s32(v7, v8);
  v12 = vdupq_laneq_s32(v11, 2);
  v13 = vtrn2q_s32(v7, v11);
  v13.i32[2] = v8.i32[1];
  v14 = vzip1q_s32(v9, v11);
  v15 = vzip1q_s32(v10, v12);
  v26 = v8.i32[0];
  v25 = v14.i64[0];
  v17 = vnegq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v16.f32[0]), v13, *v16.f32, 1), v15, v16, 2));
  v28 = v8.i32[1];
  v30 = v8.i32[2];
  v27 = v13.i64[0];
  v29 = v15.i64[0];
  v32 = v17.i32[2];
  v31 = v17.i64[0];
  v18 = a2 + 8552;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v20 = (&v25 + 2 * i);
      if (v2)
      {
        v21 = *(v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
LABEL_9:
        v2 = 1;
        goto LABEL_10;
      }

      v21 = *(v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
      if (*(v18 + 8 * i) != v21)
      {
        goto LABEL_9;
      }

      v2 = 0;
LABEL_10:
      *(v18 + 8 * i) = v21;
    }

    ++v6;
    v18 += 24;
  }

  while (v6 != 3);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  sub_10003B4B8(a2 + 8552, &v39);
  v22 = off_10041DC98;
  if (off_10041DC98 == &_os_log_default)
  {
    v22 = os_log_create("com.apple.isp", "general");
    off_10041DC98 = v22;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v34 = v39;
    v35 = 2048;
    v36 = v40;
    v37 = 2048;
    v38 = v41;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI) finalization: final rotation: (%lf, %f, %f)\n", buf, 0x20u);
  }

  v23 = off_10041DC98;
  if (v2)
  {
    if (off_10041DC98 == &_os_log_default)
    {
      v23 = os_log_create("com.apple.isp", "general");
      off_10041DC98 = v23;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI) finalization: Updating PCECalib on disk\n", buf, 2u);
    }

    sub_10001CE48(a2);
  }

  else
  {
    if (off_10041DC98 == &_os_log_default)
    {
      v23 = os_log_create("com.apple.isp", "general");
      off_10041DC98 = v23;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI) finalization: No changes to PCECalib\n", buf, 2u);
    }
  }

  *(a1 + 21) = 1;

  v4 = *(a1 + 40);
  *(v4 + 40) = 0;
LABEL_30:
  sub_10003BEF0(v4);
  if (*(a1 + 22) == 1)
  {
    *(a1 + 20) = 0;
    *(a1 + 12) = 0;
  }

  return v2;
}

id sub_10003C348(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  if (!v3 || (*(v2 + 48) & 1) != 0)
  {
    return 0;
  }

  result = [objc_msgSend(v3 "dictionaryRepresentation")];
  *(*(a1 + 40) + 48) = 1;
  return result;
}

void sub_10003C398(const void *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    snprintf(__str, 0x400uLL, "%s%s-metadata.plist", a2, a3);
    SystemEncoding = CFStringGetSystemEncoding();
    v5 = CFStringCreateWithCString(kCFAllocatorDefault, __str, SystemEncoding);
    v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v5, kCFURLPOSIXPathStyle, 0);
    v7 = CFWriteStreamCreateWithFile(kCFAllocatorDefault, v6);
    CFWriteStreamOpen(v7);
    CFPropertyListWrite(a1, v7, kCFPropertyListXMLFormat_v1_0, 0, 0);
    CFWriteStreamClose(v7);
    CFRelease(v7);
    CFRelease(v6);
    CFRelease(v5);
  }
}

FILE *sub_10003C4A0(FILE *result, const char *a2, const char *a3)
{
  if (result)
  {
    v5 = result;
    PixelFormatType = CVPixelBufferGetPixelFormatType(result);
    v12[0] = HIBYTE(PixelFormatType);
    v12[1] = BYTE2(PixelFormatType);
    v12[2] = BYTE1(PixelFormatType);
    v12[3] = PixelFormatType;
    v12[4] = 0;
    BytesPerRow = CVPixelBufferGetBytesPerRow(v5);
    Width = CVPixelBufferGetWidth(v5);
    Height = CVPixelBufferGetHeight(v5);
    snprintf(__str, 0x400uLL, "%s%s.%lux%lu.%lu.%s.bin", a2, a3, Width, Height, BytesPerRow, v12);
    result = fopen(__str, "wb");
    if (result)
    {
      v10 = result;
      CVPixelBufferLockBaseAddress(v5, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v5);
      fwrite(BaseAddress, Height * BytesPerRow, 1uLL, v10);
      fclose(v10);
      return CVPixelBufferUnlockBaseAddress(v5, 0);
    }
  }

  return result;
}

uint64_t sub_10003C5D4(uint64_t a1)
{
  sub_10003BEF0(a1);
  v2 = *(a1 + 40);
  if (v2)
  {
  }

  return a1;
}

uint64_t sub_10003C748(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v118 = 0;
  v119 = 0;
  v120 = xmmword_10008D4C0;
  v121 = 0x3FF0000000000000;
  v122 = 0u;
  v123 = 0u;
  v124 = 0x3FF0000000000000;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  memset(v113, 0, 72);
  memset(v112, 0, sizeof(v112));
  v13 = &v114;
  sub_100034468(a1, &v114, v112, v113, 0.0, a5, a6);
  v15 = 0;
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  do
  {
    v16 = 0;
    v17 = &v119;
    do
    {
      v18 = 0;
      v19 = 0.0;
      v20 = v17;
      do
      {
        v21 = *v20;
        v20 += 3;
        v19 = v19 + *(v13 + v18) * v21;
        v18 += 8;
      }

      while (v18 != 24);
      *(&v103 + 3 * v15 + v16++) = v19;
      ++v17;
    }

    while (v16 != 3);
    ++v15;
    v13 = (v13 + 24);
  }

  while (v15 != 3);
  v22 = 0;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v23 = &v98;
  v24 = v113;
  do
  {
    v25 = 0;
    v26 = v23;
    do
    {
      *v26 = v24[v25];
      v26 = (v26 + 24);
      ++v25;
    }

    while (v25 != 3);
    ++v22;
    v23 = (v23 + 8);
    v24 += 3;
  }

  while (v22 != 3);
  v27 = 0;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  memset(v108, 0, sizeof(v108));
  v28 = &v103;
  do
  {
    v29 = 0;
    v30 = &v98;
    do
    {
      v31 = 0;
      v32 = 0.0;
      v33 = v30;
      do
      {
        v34 = *v33;
        v33 += 3;
        v32 = v32 + *(v28 + v31) * v34;
        v31 += 8;
      }

      while (v31 != 24);
      *&v108[3 * v27 + v29++] = v32;
      v30 = (v30 + 8);
    }

    while (v29 != 3);
    ++v27;
    v28 = (v28 + 24);
  }

  while (v27 != 3);
  v35 = 0;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v36 = &v93;
  v37 = &v119;
  do
  {
    v38 = 0;
    v39 = v36;
    do
    {
      *v39 = v37[v38];
      v39 = (v39 + 24);
      ++v38;
    }

    while (v38 != 3);
    ++v35;
    v36 = (v36 + 8);
    v37 += 3;
  }

  while (v35 != 3);
  v40 = 0;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v41 = &v114;
  do
  {
    v42 = 0;
    v43 = &v93;
    do
    {
      v44 = 0;
      v45 = 0.0;
      v46 = v43;
      do
      {
        v47 = *v46;
        v46 += 3;
        v45 = v45 + *(v41 + v44) * v47;
        v44 += 8;
      }

      while (v44 != 24);
      *(&v98 + 3 * v40 + v42++) = v45;
      v43 = (v43 + 8);
    }

    while (v42 != 3);
    ++v40;
    v41 = (v41 + 24);
  }

  while (v40 != 3);
  v48 = 0;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v49 = &v88;
  v50 = v113;
  do
  {
    v51 = 0;
    v52 = v49;
    do
    {
      *v52 = v50[v51];
      v52 = (v52 + 24);
      ++v51;
    }

    while (v51 != 3);
    ++v48;
    v49 = (v49 + 8);
    v50 += 3;
  }

  while (v48 != 3);
  v53 = 0;
  v107 = 0;
  v54.i64[1] = 0;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v55 = &v98;
  do
  {
    v56 = 0;
    v57 = &v88;
    do
    {
      v58 = 0;
      v59 = 0.0;
      v60 = v57;
      do
      {
        v61 = *v60;
        v60 += 3;
        v59 = v59 + *(v55 + v58) * v61;
        v58 += 8;
      }

      while (v58 != 24);
      *(&v103 + 3 * v53 + v56++) = v59;
      v57 = (v57 + 8);
    }

    while (v56 != 3);
    ++v53;
    v55 = (v55 + 24);
  }

  while (v53 != 3);
  *&v93 = v115;
  *(&v93 + 1) = *(&v116 + 1);
  *&v94 = v118;
  v54.i64[0] = v108[0];
  if (((v109 ^ v108[0]) & 0x8000000000000000) != 0 || (v111 ^ v108[0]) < 0)
  {
    v66 = 0;
    v54.i64[0] = v103;
    v14.i64[0] = 1.0;
    v67.f64[0] = NAN;
    v67.f64[1] = NAN;
    v98 = 0u;
    v99 = 0u;
    v54.i64[0] = vbslq_s8(vnegq_f64(v67), v14, v54).u64[0];
    v100 = 0u;
    v101 = 0u;
    v102 = 0;
    do
    {
      *(&v98 + v66) = *v54.i64 * *(&v103 + v66);
      v65 = v66 >= 0x40;
      v66 += 8;
    }

    while (!v65);
  }

  else
  {
    v62 = 0;
    v14.i64[0] = 1.0;
    v63.f64[0] = NAN;
    v63.f64[1] = NAN;
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    *&v64 = vbslq_s8(vnegq_f64(v63), v14, v54).u64[0];
    v98 = 0u;
    v99 = 0u;
    do
    {
      *(&v98 + v62 * 8) = v64 * *&v108[v62];
      v65 = v62++ >= 8;
    }

    while (!v65);
  }

  v68 = v101;
  *(a8 + 32) = v100;
  *(a8 + 48) = v68;
  *(a8 + 64) = v102;
  v69 = v99;
  *a8 = v98;
  *(a8 + 16) = v69;
  v70 = 0;
  v88 = 0uLL;
  *&v89 = 0;
  do
  {
    *(&v88 + v70) = *(a3 + v70) - *(a2 + v70);
    v70 += 8;
  }

  while (v70 != 24);
  v71 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  do
  {
    *(&v85 + v71) = *(a3 + v71) - *(a2 + v71);
    v71 += 8;
  }

  while (v71 != 24);
  v72 = 0;
  v73 = 0.0;
  do
  {
    v73 = v73 + *(&v85 + v72) * *(&v85 + v72);
    v72 += 8;
  }

  while (v72 != 24);
  v74 = 0;
  v98 = 0uLL;
  *&v99 = 0;
  v75 = sqrt(v73);
  do
  {
    *(&v98 + v74) = *(&v88 + v74) / v75;
    v74 += 8;
  }

  while (v74 != 24);
  v76 = 0;
  v77 = 0.0;
  do
  {
    v77 = v77 + *(&v98 + v76) * *(&v93 + v76);
    v76 += 8;
  }

  while (v76 != 24);
  if (v77 < 0.0)
  {
    v78 = 0;
    v88 = 0uLL;
    *&v89 = 0;
    do
    {
      *(&v88 + v78) = -*(&v93 + v78);
      v65 = v78 >= 0x10;
      v78 += 8;
    }

    while (!v65);
    v93 = v88;
    *&v94 = v89;
  }

  v79 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  do
  {
    *(&v85 + v79) = *(a3 + v79) - *(a2 + v79);
    v79 += 8;
  }

  while (v79 != 24);
  v80 = 0;
  v81 = 0.0;
  do
  {
    v81 = v81 + *(&v85 + v80) * *(&v85 + v80);
    v80 += 8;
  }

  while (v80 != 24);
  v82 = 0;
  v88 = 0uLL;
  *&v89 = 0;
  v83 = sqrt(v81);
  do
  {
    *(&v88 + v82) = v83 * *(&v93 + v82);
    v65 = v82 >= 0x10;
    v82 += 8;
  }

  while (!v65);
  *a9 = v88;
  *(a9 + 16) = v89;
  return 0;
}

float32x2_t sub_10003CD30(float64x2_t *a1)
{
  v1 = *a1;
  v1.f64[1] = a1[1].f64[1];
  return vcvt_f32_f64(v1);
}

double sub_10003CD98(float64x2_t *a1, float64x2_t *a2, int8x16_t a3, int8x16_t a4, __n128 a5, __n128 a6)
{
  v6 = vzip1_s32(*a3.i8, *a4.i8);
  v7 = vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL));
  v8 = vzip2_s32(*a4.i8, a5.n128_u64[0]);
  a5.n128_u32[1] = a3.u32[1];
  *a1 = vcvtq_f64_f32(v6);
  a1[1] = vcvtq_f64_f32(a5.n128_u64[0]);
  a1[2] = vcvtq_f64_f32(v8);
  a1[3] = vcvtq_f64_f32(v7);
  a1[4].f64[0] = a5.n128_f32[2];
  *a2 = vcvtq_f64_f32(a6.n128_u64[0]);
  result = a6.n128_f32[2];
  a2[1].f64[0] = a6.n128_f32[2];
  return result;
}

uint64_t sub_10003CDEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 16);
  v7 = *(result + 20);
  if (v6 == 1 && v7 == 1)
  {
    sub_10003CF80(a2, *(result + 8), &v26);
    sub_10001746C(a3, v28, v29);
LABEL_15:
    memcpy(*(a3 + 8), __src, 8 * *(a3 + 16) * *(a3 + 20));
    result = sub_100016068(&v26);
    goto LABEL_16;
  }

  v10 = *(a2 + 16);
  v9 = *(a2 + 20);
  if (v9 == 1 && v10 == 1)
  {
    sub_10003CF80(result, *(a2 + 8), &v26);
    sub_10001746C(a3, v28, v29);
    goto LABEL_15;
  }

  if (v7 != v10)
  {
    sub_10007ED58();
  }

  if (v6 != *(a3 + 16) || v9 != *(a3 + 20))
  {
    sub_10007ED84();
  }

LABEL_16:
  v12 = *(v5 + 16);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(v5 + 8);
    v15 = *(a2 + 8);
    v16 = *(a3 + 8);
    v17 = *(v5 + 20);
    v18 = *(a3 + 20);
    v19 = *(a3 + 20);
    do
    {
      if (v19 >= 1)
      {
        result = 0;
        v20 = v15;
        do
        {
          v21 = 0.0;
          if (v17 >= 1)
          {
            v22 = v14;
            v23 = v20;
            v24 = v17;
            do
            {
              v25 = *v22++;
              v21 = v21 + v25 * *v23;
              v23 += v18;
              --v24;
            }

            while (v24);
          }

          *(v16 + 8 * v13 * v18 + 8 * result++) = v21;
          ++v20;
        }

        while (result != v18);
      }

      ++v13;
      v14 += v17;
    }

    while (v13 != v12);
  }

  return result;
}

double sub_10003CF80@<D0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100016114(a3, *(a1 + 16), *(a1 + 20));
  v7 = *(a1 + 20) * *(a1 + 16);
  if (v7 >= 1)
  {
    v8 = *(a1 + 8);
    v9 = &v8[v7];
    v10 = *(v5 + 8);
    do
    {
      v11 = *v8++;
      result = v11 * *a2;
      *v10++ = result;
    }

    while (v8 < v9);
  }

  return result;
}

uint64_t sub_10003D2A0(uint64_t result, int a2)
{
  v2 = ((a2 / 0xADC8u) | ((a2 / 0xADC8u) << 31)) + 48271 * a2;
  v3 = v2 - (v2 < 1);
  if (a2 <= 3399)
  {
    v3 = 48271 * a2;
  }

  *(result + 1012) = 0;
  for (i = 12; i != 1012; i += 4)
  {
    v5 = 48271 * (v3 % 0xADC8) - 3399 * (v3 / 0xADC8);
    v6 = v5 - (v5 < 1);
    if (v3 <= 3399)
    {
      v3 *= 48271;
    }

    else
    {
      v3 = v6;
    }

    *(result + i) = v3;
  }

  for (j = 12; j != 1012; j += 4)
  {
    v8 = 48271 * (v3 % 0xADC8) - 3399 * (v3 / 0xADC8);
    v9 = v8 - (v8 < 1);
    if (v3 <= 3399)
    {
      v3 *= 48271;
    }

    else
    {
      v3 = v9;
    }

    if (v3 >= 0x40000001)
    {
      *(result + j) |= 0x80000000;
    }
  }

  *(result + 8) = v3;
  v10 = -1;
  v11 = 0x80000000;
  for (k = 24; k != 920; k += 28)
  {
    *(result + k) = *(result + k) & v10 | v11;
    v10 >>= 1;
    v11 >>= 1;
  }

  *(result + 1013) = 0;
  return result;
}

void *sub_10003D3C8(void *a1, int a2)
{
  *a1 = off_1000A2930;
  sub_10003D2A0(a1, a2);
  return a1;
}

float sub_10003D424(uint64_t a1)
{
  v1 = *(a1 + 1012);
  if (v1 <= 0x92)
  {
    v2 = 103;
  }

  else
  {
    v2 = -147;
  }

  v3 = *(a1 + 12 + 4 * (v2 + *(a1 + 1012))) ^ *(a1 + 12 + 4 * *(a1 + 1012));
  *(a1 + 12 + 4 * *(a1 + 1012)) = v3;
  if (v1 <= 0xF8)
  {
    v4 = v1 + 1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 1012) = v4;
  return vcvts_n_f32_u32(v3, 0x20uLL);
}

void sub_10003D464(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10007EE60();
  }

  if (!a2)
  {
    sub_10007EE34();
  }

  bzero((a2 + 469832), 0x4424uLL);
  *(a2 + 469828) = *(a2 + 296);
  v4 = *(a2 + 4);
  if (v4 != 4)
  {
    if (v4 == 5)
    {
      sub_10007EDB0();
    }

    sub_10007EE08();
  }

  if (*(a2 + 704))
  {
    v5 = *(a2 + 32);
    if (*(a2 + 34) * v5 >= 0x81)
    {
      sub_10007EDDC();
    }

    v6 = *(a2 + 264);
    bzero((a2 + 427332), 0x3800uLL);
    v7 = *(a2 + 250) - *(a2 + 246);
    if (v7)
    {
      v8 = 0;
      v9 = *(a2 + 268);
      v10 = *(a2 + 270);
      v11 = *(a2 + 260);
      v12 = *(a2 + 248) - *(a2 + 244);
      v13 = a1 + v6 + *(a2 + 246) * v11 + 2 * *(a2 + 244);
      v14 = a2 + 427332 + 112 * -v5;
      v15 = *(a2 + 724);
      do
      {
        if (v8)
        {
          v16 = 0;
        }

        else
        {
          v16 = v5;
        }

        v14 += 112 * v16;
        if (!v8)
        {
          v8 = v10;
        }

        if (v12 >= 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = v14 - 112;
          v20 = v12 + 1;
          do
          {
            if (v18)
            {
              v21 = 0;
            }

            else
            {
              v18 = v9;
              v21 = 112;
            }

            v19 += v21;
            v22 = *(v13 + v17);
            if (v22 != 0x3FFF)
            {
              v23 = v22 + v15;
              v24 = 32 - __clz(v23 ^ (v23 >> 31));
              if (v23 == v23 >> 31)
              {
                v24 = 0;
              }

              v25 = v24 ^ (v23 >> 31);
              if (v25 >= 6)
              {
                v26 = 6;
              }

              else
              {
                v26 = v25;
              }

              v27 = v26 + 7;
              if (v25 >= -7)
              {
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              v29 = v22;
              v30 = v19 + 8 * v28;
              *v30 = *v30 + v29;
              ++*(v30 + 4);
            }

            --v18;
            --v20;
            v17 += 2;
          }

          while (v20 > 1);
        }

        v13 += v11;
        --v8;
        --v7;
      }

      while (v7);
    }

    sub_10003D65C(a2);

    sub_10003DAE8(a2);
  }
}

unsigned int *sub_10003D65C(unsigned int *result)
{
  v1 = *(result + 76);
  v2 = *(result + 77);
  v3 = *(result + 183);
  v4 = *(result + 184);
  v5 = fabsf(v1 * v2);
  v6 = v3 * v5;
  v7 = v4 * v5;
  if ((v4 * v5) < (v3 * v5))
  {
    sub_10007EE8C();
  }

  v8 = result;
  v48 = *(result + 17);
  if (*(result + 17))
  {
    v9 = 0;
    result = &v58;
    v50 = *(v8 + 32);
    v11 = v7 == 0.0 && v6 == 0.0;
    v49 = v11;
    v12 = v7 - v6;
    while (!v50)
    {
LABEL_67:
      if (++v9 == v48)
      {
        return result;
      }
    }

    v13 = 0;
    v14 = *(v8 + 300);
    v15 = *(v8 + 716);
    while (1)
    {
      v16 = 0;
      do
      {
        v56 = 0;
        v51 = v16;
        if (v16 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 1;
          v21 = -255.0;
          do
          {
            v22 = 0;
            v52 = v20;
            v23 = 1;
            do
            {
              v24 = v23;
              result = sub_10003DEF0(v8, v13, v9, v22 - 1, v17 - 1, v22, v17, &v56 + 1, &v56);
              v23 = 0;
              if (v21 < (v2 * (v1 * (*(&v56 + 1) - v14))) && v56 >= v15)
              {
                v21 = v2 * (v1 * (*(&v56 + 1) - v14));
                v19 = v56;
                v18 = v56 >= v15;
              }

              v22 = 1;
            }

            while ((v24 & 1) != 0);
            v20 = 0;
            v17 = 1;
          }

          while ((v52 & 1) != 0);
        }

        else
        {
          if (v16 == 2)
          {
            v25 = -1;
          }

          else
          {
            v25 = 0;
          }

          result = sub_10003DEF0(v8, v13, v9, v25, v25, v16 == 2, v16 == 2, &v56 + 1, &v56);
          v21 = v2 * (v1 * (*(&v56 + 1) - v14));
          v19 = v56;
          v18 = v56 >= v15;
        }

        *(&v60 + v51) = v21;
        *(&v57 + v51) = v19;
        *(&v53 + v51) = v18;
        v16 = v51 + 1;
      }

      while (v51 != 2);
      v26 = v62;
      v27 = v59;
      v28 = v55;
      if (v49)
      {
        result = &v58;
        if (*(v8 + 730))
        {
          v29 = 0;
          v30 = 2;
          v31 = &v60;
          v32 = &v57;
          v33 = &v53;
          v34 = 1;
          do
          {
            v35 = v34;
            if (*v33 == 1 && v26 < *v31)
            {
              v27 = *v32;
              v26 = *v31;
              v30 = v29;
              LOBYTE(v28) = *v33;
            }

            v34 = 0;
            v29 = 1;
            v33 = &v54;
            v32 = &v58;
            v31 = &v61;
          }

          while ((v35 & 1) != 0);
        }

        else
        {
          v30 = 2;
        }

        goto LABEL_54;
      }

      v30 = 2;
      if (v12 <= 0.0 || !v54)
      {
        goto LABEL_44;
      }

      v36 = v61;
      if (v55)
      {
        v37 = v61 - v62;
        if ((v61 - v62) <= v6)
        {
          v30 = 2;
LABEL_44:
          v36 = v62;
          goto LABEL_45;
        }

        v38 = 0.0;
        if (v37 <= v7)
        {
          v38 = (v7 - v37) / v12;
        }

        v36 = (v61 * (1.0 - v38)) + (v38 * v62);
        v27 = (((1.0 - v38) * v58) + (v38 * v59));
        v28 = 1;
        v30 = 3;
      }

      else
      {
        v27 = v58;
        v30 = v54;
        v28 = v54;
      }

LABEL_45:
      if (v12 > 0.0 && v53)
      {
        v26 = v60;
        if (!v28)
        {
          v27 = v57;
          v30 = v53;
          LOBYTE(v28) = v53;
          goto LABEL_54;
        }

        v39 = v60 - v36;
        if ((v60 - v36) > v6)
        {
          v40 = 0.0;
          if (v39 <= v7)
          {
            v40 = (v7 - v39) / v12;
          }

          v26 = (v60 * (1.0 - v40)) + (v40 * v36);
          v27 = (((1.0 - v40) * v57) + (v40 * v27));
          LOBYTE(v28) = 1;
          v30 = 3;
          goto LABEL_54;
        }
      }

      v26 = v36;
LABEL_54:
      v41 = v8 + 480072 + 52 * (v9 * v50 + v13);
      if (v28)
      {
        v42 = 0xFFFF;
      }

      else
      {
        v42 = 0;
      }

      if (v28)
      {
        v43 = 0;
      }

      else
      {
        v43 = 8;
      }

      *v41 = v27;
      *(v41 + 4) = v42;
      *(v41 + 8) = v26;
      *(v41 + 12) = 0;
      *(v41 + 20) = (v43 | (32 * v28)) + (v30 << 6);
      v44 = v53;
      if (v53)
      {
        v45 = 0xFFFF;
      }

      else
      {
        v45 = 0;
      }

      v46 = v60;
      if (v53)
      {
        v47 = 0;
      }

      else
      {
        v47 = 8;
      }

      *(v41 + 24) = v57;
      *(v41 + 28) = v45;
      *(v41 + 32) = v46;
      *(v41 + 36) = 0;
      *(v41 + 44) = v47 | (32 * v44);
      if (++v13 == v50)
      {
        goto LABEL_67;
      }
    }
  }

  return result;
}

uint64_t sub_10003DAE8(uint64_t result)
{
  if (*(result + 744))
  {
    v1 = *(result + 745);
    v2 = *(result + 746) == v1 ? 1 : *(result + 746) - v1;
    v3 = *(result + 34);
    if (*(result + 34))
    {
      v4 = 0;
      v5 = *(result + 284);
      v6 = result + 480072;
      v7 = *(result + 292);
      v8 = *(result + 274);
      v35 = *(result + 280);
      v9 = *(result + 32);
      v10 = (((v2 + ((v2 & 0x8000) >> 15)) >> 1) + 0x10000) / v2;
      do
      {
        v11 = v5 >> 8;
        v12 = v7 + v5;
        v13 = (v7 + v5 + 255) >> 8;
        v14 = (v5 >> 8) & ~(v5 >> 31);
        if (v11 > v8)
        {
          v14 = v8;
        }

        v15 = v13 & ~((v12 + 255) >> 31);
        if (v13 > v8)
        {
          v15 = v8;
        }

        v16 = v15 - v14;
        if (v15 < v14)
        {
          v16 = 0;
        }

        if (v9)
        {
          v17 = 0;
          v18 = *(result + 288);
          v19 = *(result + 272);
          v20 = *(result + 276);
          v21 = v35;
          do
          {
            v22 = 0;
            v23 = v21 >> 8;
            v24 = v18 + v21;
            v25 = (v18 + v21 + 255) >> 8;
            v26 = (v21 >> 8) & ~(v21 >> 31);
            if (v23 > v19)
            {
              v26 = v19;
            }

            v27 = v25 & ~((v24 + 255) >> 31);
            if (v25 > v19)
            {
              v27 = v19;
            }

            LODWORD(v28) = v27 - v26;
            if (v27 >= v26)
            {
              v28 = v28;
            }

            else
            {
              v28 = 0;
            }

            if (v15 > v14)
            {
              v22 = 0;
              v29 = result + 747 + v14 * v20 + v26;
              v30 = v16;
              do
              {
                if (v27 > v26)
                {
                  v31 = 0;
                  do
                  {
                    v32 = *(v29 + v31);
                    if (v32 <= v1)
                    {
                      v32 = v1;
                    }

                    v22 += v32;
                    ++v31;
                  }

                  while (v31 < v28);
                }

                v29 += v20;
                v33 = __OFSUB__(v30--, 1);
              }

              while (!((v30 < 0) ^ v33 | (v30 == 0)));
            }

            if (v28 * v16)
            {
              v22 /= v28 * v16;
            }

            v34 = (((v22 - v1) * v10) >> 8) & ~(((v22 - v1) * v10) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *(v6 + 48) = v34;
            v6 += 52;
            ++v17;
            v21 = v24;
          }

          while (v17 != v9);
        }

        ++v4;
        v5 = v12;
      }

      while (v4 != v3);
    }
  }

  return result;
}

void sub_10003DCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    sub_10007EF94();
  }

  if (!a2)
  {
    sub_10007EF68();
  }

  if (!a3)
  {
    sub_10007EF3C();
  }

  bzero((a3 + 469832), 0x4424uLL);
  *(a3 + 469828) = *(a3 + 296);
  v6 = *(a3 + 4);
  if (v6 != 5)
  {
    if (v6 == 4)
    {
      sub_10007EEE4();
    }

    sub_10007EF10();
  }

  if (*(a3 + 704) && *(a3 + 708))
  {
    v7 = *(a3 + 32);
    if (*(a3 + 34) * v7 >= 0x81)
    {
      sub_10007EEB8();
    }

    bzero((a3 + 427332), 0x3800uLL);
    v9 = *(a3 + 246);
    v10 = *(a3 + 250) - v9;
    if (v10)
    {
      v11 = 0;
      v12 = *(a3 + 268);
      v13 = *(a3 + 270);
      v14 = *(a3 + 244);
      v15 = *(a3 + 248) - v14;
      v16 = *(a3 + 724);
      LOWORD(v8) = *(a3 + 726);
      v17 = v8;
      v18 = *(a3 + 740);
      v19 = a3 + 427332 + 112 * -v7;
      v20 = 2 * *(a3 + 260) * (*(a3 + 254) + v9) + 2 * (*(a3 + 252) + v14);
      v21 = a2 + v20;
      v22 = 2 * *(a3 + 260);
      v23 = a1 + v20;
      do
      {
        if (v11)
        {
          v24 = 0;
        }

        else
        {
          v24 = v7;
        }

        v19 += 112 * v24;
        if (!v11)
        {
          v11 = v13;
        }

        if (v15 >= 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = v19 - 112;
          v28 = v15 + 1;
          do
          {
            if (v26)
            {
              v29 = 0;
            }

            else
            {
              v26 = v12;
              v29 = 112;
            }

            v27 += v29;
            _H4 = *(v21 + v25);
            __asm { FCVT            S4, H4 }

            if (v18 >= _S4)
            {
              _H4 = *(v23 + v25);
              __asm { FCVT            S4, H4 }

              v38 = (((v16 + _S4) * v17) + 0.0);
              v39 = 32 - __clz(v38 ^ (v38 >> 31));
              if (v38 >> 31 == v38)
              {
                v40 = 0;
              }

              else
              {
                v40 = v39;
              }

              v41 = v40 ^ (v38 >> 31);
              if (v41 >= 6)
              {
                v42 = 6;
              }

              else
              {
                v42 = v41;
              }

              v43 = v42 + 7;
              if (v41 >= -7)
              {
                v44 = v43;
              }

              else
              {
                v44 = 0;
              }

              v45 = v27 + 8 * v44;
              *v45 = *v45 + _S4;
              ++*(v45 + 4);
            }

            --v26;
            --v28;
            v25 += 2;
          }

          while (v28 > 1);
        }

        --v11;
        v21 += v22;
        v23 += v22;
        --v10;
      }

      while (v10);
    }

    sub_10003D65C(a3);

    sub_10003DAE8(a3);
  }
}

uint64_t sub_10003DEF0(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, float *a8, unsigned int *a9)
{
  v9 = *(result + 724);
  v10 = vcvts_n_f32_u32(*(result + 726), 0xFuLL);
  v11 = *(result + 708);
  if (v11)
  {
    v10 = -1.0;
  }

  v12 = 0.0;
  if (v11)
  {
    v9 = 0.0;
  }

  v13 = (100 - *(result + 720)) / 200.0;
  memset(v42, 0, sizeof(v42));
  if (a5 <= a7)
  {
    v14 = a7 + a3;
    v15 = a5 + a3;
    v16 = a4 + a2;
    v17 = a6 + a2;
    if (a6 + a2 <= a4 + a2)
    {
      v17 = a4 + a2;
    }

    if (v14 <= v15)
    {
      v14 = a5 + a3;
    }

    do
    {
      if ((v15 & 0x80000000) == 0 && v15 < *(result + 34) && a4 <= a6)
      {
        v19 = v16;
        do
        {
          if ((v19 & 0x80000000) == 0)
          {
            v20 = *(result + 32);
            if (v19 < v20)
            {
              v21 = (result + 427336 + 112 * (v19 + v15 * v20));
              v22 = 14;
              v23 = v42 + 1;
              do
              {
                *(v23 - 1) = *(v21 - 1) + *(v23 - 1);
                v24 = *v21;
                v21 += 2;
                *v23 += LODWORD(v24);
                v23 += 2;
                --v22;
              }

              while (v22);
            }
          }

          v25 = v19++ == v17;
        }

        while (!v25);
      }

      v25 = v15++ == v14;
    }

    while (!v25);
    v12 = DWORD1(v42[0]);
  }

  v26 = 1.0 - v13;
  v40[0] = v12;
  v27 = 1;
  v28 = 12;
  do
  {
    v12 = v12 + *(v42 + v28);
    v40[v27++] = v12;
    v28 += 8;
  }

  while (v27 != 14);
  if (v41 != 0.0)
  {
    for (i = 0; i != 14; ++i)
    {
      v40[i] = v40[i] / v41;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = 13;
  do
  {
    v33 = v40[v30];
    if (v33 <= v13 && v40[v30 + 1] > v13)
    {
      v31 = v30 + 1;
    }

    if (v33 < v26 && v40[v30 + 1] >= v26)
    {
      v32 = v30 + 1;
    }

    ++v30;
  }

  while (v30 != 13);
  if (v31 > v32)
  {
    v34 = 0;
LABEL_45:
    v39 = 0.0;
    goto LABEL_46;
  }

  v34 = 0;
  v35 = v32 - v31 + 1;
  v36 = ((v42 + 8 * v31) | 4);
  v37 = 0.0;
  do
  {
    v37 = v37 + *(v36 - 1);
    v38 = *v36;
    v36 += 2;
    v34 += LODWORD(v38);
    --v35;
  }

  while (v35);
  if (!v34)
  {
    goto LABEL_45;
  }

  v39 = -((v9 + (v37 / v34)) * v10);
LABEL_46:
  *a8 = v39;
  *a9 = v34;
  return result;
}

void sub_10003E190(int a1, uint64_t a2, IOHIDServiceClientRef service)
{
  valuePtr = 0;
  if (service)
  {
    v4 = IOHIDServiceClientCopyProperty(service, @"Placement");
    CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
    if (IOHIDEventGetType() == 12 && valuePtr == 2)
    {
      IOHIDEventGetFloatValue();
      if (a2)
      {
        if (*(a2 + 24) == 1)
        {
          v6 = *(a2 + 8);
          if (v6)
          {
            v7 = *(v6 + 296);
            if (v7)
            {
              v8 = v5;
              *(v7 + 84) = v8;
              *(v7 + 104) = 1;
              *(*(v6 + 296) + 96) = mach_absolute_time();
              pthread_mutex_lock((v6 + 424));
              pthread_cond_broadcast((v6 + 488));
              pthread_mutex_unlock((v6 + 424));
            }
          }
        }
      }
    }
  }

  else
  {
    v9 = off_10041DCA0;
    if (off_10041DCA0 == &_os_log_default)
    {
      v9 = os_log_create("com.apple.isp", "photon");
      off_10041DCA0 = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007EFC0(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

void sub_10003E2B0(uint64_t *a1)
{
  v2 = IOHIDEventSystemClientCreateWithType();
  *a1 = v2;
  if (v2)
  {
    v68 = 4;
    valuePtr = 65280;
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v68);
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = off_10041DCA0;
      if (off_10041DCA0 == &_os_log_default)
      {
        v6 = os_log_create("com.apple.isp", "photon");
        off_10041DCA0 = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10007F128(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    else
    {
      v22 = v4;
      *keys = *off_1000A2A18;
      values[0] = v3;
      values[1] = v4;
      v23 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v23)
      {
        v24 = v23;
        v66 = 65;
        v67 = 32;
        v65 = 2;
        v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v67);
        v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v66);
        v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v65);
        if (v25 && v26 && (v28 = v27) != 0)
        {
          *v71 = *off_1000A2A28;
          v72 = @"Placement";
          v70[0] = v25;
          v70[1] = v26;
          v70[2] = v27;
          v29 = CFDictionaryCreate(kCFAllocatorDefault, v71, v70, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v29)
          {
            v30 = v29;
            Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 2, &kCFTypeArrayCallBacks);
            if (Mutable)
            {
              v32 = Mutable;
              CFArrayAppendValue(Mutable, v30);
              CFArrayAppendValue(v32, v24);
              IOHIDEventSystemClientSetMatchingMultiple();
              IOHIDEventSystemClientRegisterEventCallback();
              IOHIDEventSystemClientSetCancelHandler();
              IOHIDEventSystemClientSetDispatchQueue();
              IOHIDEventSystemClientActivate();
              CFRelease(v24);
              CFRelease(v30);
              CFRelease(v3);
              CFRelease(v25);
              CFRelease(v22);
              CFRelease(v26);
              CFRelease(v28);
              CFRelease(v32);
            }

            else
            {
              v57 = off_10041DCA0;
              if (off_10041DCA0 == &_os_log_default)
              {
                v57 = os_log_create("com.apple.isp", "photon");
                off_10041DCA0 = v57;
              }

              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                sub_10007F218(v57, v58, v59, v60, v61, v62, v63, v64);
              }
            }
          }

          else
          {
            v49 = off_10041DCA0;
            if (off_10041DCA0 == &_os_log_default)
            {
              v49 = os_log_create("com.apple.isp", "photon");
              off_10041DCA0 = v49;
            }

            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              sub_10007F290(v49, v50, v51, v52, v53, v54, v55, v56);
            }
          }
        }

        else
        {
          v41 = off_10041DCA0;
          if (off_10041DCA0 == &_os_log_default)
          {
            v41 = os_log_create("com.apple.isp", "photon");
            off_10041DCA0 = v41;
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_10007F1A0(v41, v42, v43, v44, v45, v46, v47, v48);
          }
        }
      }

      else
      {
        v33 = off_10041DCA0;
        if (off_10041DCA0 == &_os_log_default)
        {
          v33 = os_log_create("com.apple.isp", "photon");
          off_10041DCA0 = v33;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10007F308(v33, v34, v35, v36, v37, v38, v39, v40);
        }
      }
    }
  }

  else
  {
    v14 = off_10041DCA0;
    if (off_10041DCA0 == &_os_log_default)
    {
      v14 = os_log_create("com.apple.isp", "photon");
      off_10041DCA0 = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10007F380(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }
}

uint64_t sub_10003E758(uint64_t a1, int a2)
{
  v2 = 3758097090;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v3 = *(a1 + 16);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_10003EA9C;
        v10[3] = &unk_1000A28C0;
        v10[4] = a1;
        v4 = v10;
        goto LABEL_13;
      case 4:
        v5 = *(a1 + 16);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10003EAAC;
        v9[3] = &unk_1000A28C0;
        v9[4] = a1;
        v6 = v9;
        break;
      case 5:
        v5 = *(a1 + 16);
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_10003EB00;
        v8[3] = &unk_1000A28C0;
        v8[4] = a1;
        v6 = v8;
        break;
      default:
        return v2;
    }

    dispatch_async(v5, v6);
    return 3758097097;
  }

  switch(a2)
  {
    case 0:
      v3 = *(a1 + 16);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10003E9D0;
      v13[3] = &unk_1000A28C0;
      v13[4] = a1;
      v4 = v13;
      goto LABEL_13;
    case 1:
      v3 = *(a1 + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003EA2C;
      block[3] = &unk_1000A28C0;
      block[4] = a1;
      v4 = block;
      goto LABEL_13;
    case 2:
      v3 = *(a1 + 16);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10003EA8C;
      v11[3] = &unk_1000A28C0;
      v11[4] = a1;
      v4 = v11;
LABEL_13:
      dispatch_async(v3, v4);
      return 0;
  }

  return v2;
}

uint64_t sub_10003E9D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 56) = 1;
  *(v1 + 64) = mach_absolute_time();
  *(v1 + 225) = 1;
  v2 = *(v1 + 104);
  if (v2)
  {
    sub_10005EDB8(v2, 1uLL);
  }

  v3 = *(v1 + 8);
  v4 = *(v1 + 88);

  return sub_100009258(v3, v4);
}

uint64_t sub_10003EA2C(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 56) == 1)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = mach_absolute_time();
    result = *(v1 + 104);
    if (result)
    {

      return sub_10005EDB8(result, 0);
    }
  }

  return result;
}

uint64_t sub_10003EAAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100028A6C(*(v1 + 8), 1);
  result = *(v1 + 104);
  if (result)
  {

    return sub_10005EE30(result, 1uLL);
  }

  return result;
}

uint64_t sub_10003EB00(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100028A6C(*(v1 + 8), 0);
  result = *(v1 + 104);
  if (result)
  {

    return sub_10005EE30(result, 0);
  }

  return result;
}

uint64_t sub_10003EB54(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003EBD0;
  v4[3] = &unk_1000A29B0;
  v4[4] = a1;
  v5 = a2;
  dispatch_async(v2, v4);
  return 0;
}

float sub_10003EBD0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 408) = result;
  }

  return result;
}

uint64_t sub_10003EBE8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -536870212;
  v2 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003ECA0;
  block[3] = &unk_1000A29D8;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

double sub_10003ECA0(uint64_t a1)
{
  result = vcvtd_n_f64_u32(*(*(*(a1 + 40) + 8) + 564), 0xFuLL);
  **(a1 + 48) = result;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t sub_10003ECC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003ED3C;
  v4[3] = &unk_1000A29F8;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(v2, v4);
  return 0;
}

uint64_t sub_10003ED4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003EDC4;
  v4[3] = &unk_1000A29F8;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(v2, v4);
  return 0;
}

__n128 sub_10003EDC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = *(v1 + 232);
  v4 = *(v1 + 248);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

void sub_10003EDD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  IOHIDEventSystemClientUnregisterEventCallback();
  IOHIDEventSystemClientUnscheduleFromDispatchQueue();
  CFRelease(*v1);
  *v1 = 0;
}

void sub_10003EE30(uint64_t a1)
{
  v25 = 255;
  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v24 = 0;
  v4 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
  v5 = v4;
  if (!a1)
  {
    sub_10007F8D8(v4);
    return;
  }

  if (!v4)
  {
    NSLog(@"Personalized firmware root path accessor not found");
    return;
  }

  if (sub_10005E5B8(a1, &v25))
  {
    v6 = [NSData dataWithContentsOfFile:@"/private/var/tmp/usr/standalone/firmware/Savage/SavagePatch.DAT"];
    if (v6)
    {
      v20 = v6;
      NSLog(@"Found Savage override DAT file, which takes precedence over all others - %@", @"/private/var/tmp/usr/standalone/firmware/Savage/SavagePatch.DAT");
      v9 = 0;
      v7 = 0;
      v15 = 3722248192;
    }

    else
    {
      v7 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageDeviceRev", kCFAllocatorDefault, 0);
      v8 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageMNS", kCFAllocatorDefault, 0);
      v9 = v8;
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        NSLog(@"IR sensor not detected");
        v22 = 0;
        v21 = 0;
        v15 = 3149594624;
        goto LABEL_19;
      }

      v11 = CFGetTypeID(v7);
      if (v11 != CFDataGetTypeID() || (v12 = CFGetTypeID(v9), v12 != CFDataGetTypeID()))
      {
        v22 = 0;
        goto LABEL_21;
      }

      CFDataGetBytePtr(v7);
      BytePtr = CFDataGetBytePtr(v9);
      v14 = "Dev";
      if (BytePtr && *BytePtr == 10)
      {
        v14 = "Prod";
      }

      v15 = 2863267840;
      snprintf(__str, 0x400uLL, "Savage/SavagePatch%s.DAT", v14);
      v16 = [v5 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __str)}];
      NSLog(@"DAT file for unprovisioned Savage - %@", v16);
      v17 = [v5 stringByAppendingPathComponent:@"/Savage/SavagePatch.DAT"];
      NSLog(@"DAT file for provisioned Savage - %@", v17);
      v18 = [NSData dataWithContentsOfFile:v16];
      if (v18)
      {
        v20 = v18;
        NSLog(@"Loading DAT file for unprovisioned Savage");
      }

      else
      {
        v19 = [NSData dataWithContentsOfFile:v17];
        if (!v19)
        {
          NSLog(@"No DAT file for Savage found");
          v22 = 0;
          v21 = 0;
          v15 = 3435921408;
          goto LABEL_19;
        }

        v20 = v19;
      }
    }

    v21 = [(NSData *)v20 length];
    v22 = malloc_type_calloc(v21, 1uLL, 0x100004077774924uLL);
    if (!v22)
    {
      goto LABEL_20;
    }

    [(NSData *)v20 getBytes:v22 length:v21];
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v9 = 0;
    v7 = 0;
    v15 = 4008574976;
  }

LABEL_19:
  v23 = sub_10005D4E0(a1, v25 | 0x80000000, v22, v21, v15 | 5);
  NSLog(@"Load Savage DAT File: Size = %ld; SendStatus = %08x, FileStatus = 0x%08X", v21, v23, v15);
LABEL_20:
  if (v9)
  {
LABEL_21:
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v5);
  if (v22)
  {
    free(v22);
  }
}

void sub_10003F1C4(uint64_t a1)
{
  v29 = 2;
  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v28 = 0;
  v4 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
  v5 = [NSData dataWithContentsOfFile:@"/private/var/tmp/usr/standalone/firmware/Yonkers/YonkersPatch.DAT"];
  if (!a1)
  {
    NSLog(@"pDevice is NULL");
    if (!v4)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!v4)
  {
    NSLog(@"Personalized firmware root path accessor not found");
    return;
  }

  v6 = v5;
  if (v5)
  {
    NSLog(@"Found Yonkers override DAT file, which takes precedence over all others - %@", @"/private/var/tmp/usr/standalone/firmware/Yonkers/YonkersPatch.DAT");
    v9 = 0;
    v7 = 0;
    v20 = 3722248192;
    goto LABEL_29;
  }

  if (!sub_10005E564(a1, &v29))
  {
LABEL_41:
    CFRelease(v4);
    return;
  }

  v7 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"YonkersFabRevision", kCFAllocatorDefault, 0);
  v8 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"YonkersMNS", kCFAllocatorDefault, 0);
  v9 = v8;
  if (v8)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    NSLog(@"Secure RGB sensor not detected");
    v26 = 0;
    v25 = 0;
    v20 = 3149594624;
    goto LABEL_31;
  }

  v11 = CFGetTypeID(v8);
  if (v11 != CFDataGetTypeID() || (v12 = CFGetTypeID(v7), v12 != CFDataGetTypeID()))
  {
    v26 = 0;
    goto LABEL_33;
  }

  BytePtr = CFDataGetBytePtr(v7);
  if (BytePtr)
  {
    v14 = __rev16(*BytePtr);
    v15 = "Ymgt";
    v17 = v14 == 54529 || v14 == 59905 || v14 == 61953;
    if (!v17 && v14 != 56577)
    {
      v15 = "Ngsk";
    }
  }

  else
  {
    v15 = "Ngsk";
  }

  v18 = CFDataGetBytePtr(v9);
  v19 = "Dev";
  if (v18 && *v18 == 8)
  {
    v19 = "Prod";
  }

  v20 = 2863267840;
  snprintf(__str, 0x400uLL, "Yonkers/YonkersPatch%s%s.DAT", v15, v19);
  v21 = [v4 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __str)}];
  NSLog(@"DAT file for unprovisioned Yonkers - %@", v21);
  v22 = [v4 stringByAppendingPathComponent:@"/Yonkers/YonkersPatch.DAT"];
  NSLog(@"DAT file for provisioned Yonkers - %@", v22);
  v23 = [NSData dataWithContentsOfFile:v21];
  if (v23)
  {
    v6 = v23;
    NSLog(@"Loading DAT file for unprovisioned Yonkers");
  }

  else
  {
    v24 = [NSData dataWithContentsOfFile:v22];
    if (!v24)
    {
      NSLog(@"No DAT file for Yonkers found");
      v26 = 0;
      v25 = 0;
      v20 = 3435921408;
      goto LABEL_31;
    }

    v6 = v24;
  }

LABEL_29:
  v25 = [(NSData *)v6 length];
  v26 = malloc_type_calloc(v25, 1uLL, 0x100004077774924uLL);
  if (!v26)
  {
    goto LABEL_32;
  }

  [(NSData *)v6 getBytes:v26 length:v25];
LABEL_31:
  v27 = sub_10005D4E0(a1, v29 | 0x80000000, v26, v25, v20 | 5);
  NSLog(@"Load Yonkers DAT File: Size = %ld; SendStatus = %08x, 0x%08X", v25, v27, v20);
LABEL_32:
  if (v9)
  {
LABEL_33:
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v4);
  if (v26)
  {
    free(v26);
  }
}

void sub_10003F59C(DSPComplex *a1, int a2, uint64_t a3, uint64_t a4, float *a5, FFTSetup *a6, float a7)
{
  v13 = (1 << a2) / 2;
  v14 = v13 + 1;
  v15 = ((1 << a2) + ((1 << a2) >> 31)) >> 1;
  __Z.realp = a5;
  __Z.imagp = &a5[v13 + 1];
  vDSP_ctoz(a1, 2, &__Z, 1, v15);
  vDSP_fft_zrip(*a6, &__Z, 1, a2, 1);
  imagp = __Z.imagp;
  __Z.realp[v13] = *__Z.imagp;
  imagp[v13] = 0.0;
  *imagp = 0.0;
  v17 = v13 + 1;
  vDSP_zvabs(&__Z, 1, a1, 1, v17);
  v18 = a7 * 0.5;
  v19 = v13;
  vDSP_vclr(a1, 1, fmin((((v13 + 1) * 90.0) / v18), v13));
  v79 = 0;
  v77[1] = 0;
  __C = 0;
  __I = 0;
  v77[0] = 0;
  vDSP_maxvi(a1, 1, &__C, &__I, v15);
  v20 = 0;
  v21 = fmin(v13, fmax(__I, 1.0));
  v22 = v21;
  v23 = *(&a1->real + v21);
  v24 = v21;
  v25 = v21 - 1;
  v26 = *(&a1->real + v25);
  v27 = v22 + 1;
  v28 = v23 * v24;
  if (v26 <= *(&a1->real + v27))
  {
    LODWORD(v25) = v27;
    v26 = *(&a1->real + v27);
  }

  v29 = (v23 + v26) + 0.0000001;
  v30 = (v28 + (v26 * v25)) / v29;
  while (1)
  {
    v73 = 0.0;
    v72 = 0;
    v31 = *&dword_10008D5F0[v20];
    v32 = (v30 * v31) + -1.0;
    v33 = v32 >= 0.0 ? v32 : 0;
    vDSP_maxvi(a1 + v33, 1, &v73, &v72, 3uLL);
    v34 = v33 + v72;
    v72 += v33;
    if (*&__C > 0.0 && (v73 / *&__C) > 0.1)
    {
      break;
    }

    if (++v20 == 4)
    {
      goto LABEL_12;
    }
  }

  v30 = v30 * v31;
  __I = v34;
LABEL_12:
  v35 = 0;
  memset(v75, 0, 60);
  v36 = v13;
  v37 = *&__C * 0.08;
  do
  {
    if (v35 == 15)
    {
      break;
    }

    v38 = v30 * (v35 + 1);
    if (v38 >= v36)
    {
      break;
    }

    v39 = fmax((v38 + -7.0), 0.0);
    v40 = fmin(v19, (v38 + 7.0));
    v41 = *(v75 + v35);
    if (v40 > v39)
    {
      v42 = a1 + v39;
      v43 = v39 + 1;
      do
      {
        v44 = *v42++;
        v45 = v44;
        if (v41 < v44)
        {
          v41 = v45;
        }

        v46 = v43++;
      }

      while (v40 > v46);
      *(v75 + v35) = v41;
    }

    ++v35;
  }

  while (v41 >= v37);
  v47 = 0;
  do
  {
    v48 = v30 * ++v47;
    if (v48 >= v36)
    {
      break;
    }

    v49 = fmax((v48 + -7.0), 0.0);
    v50 = fmin(v19, (v48 + 7.0));
    if (v50 > v49)
    {
      v51 = a1 + v49;
      v52 = v49 + 1;
      do
      {
        *v51++ = 0;
        --v14;
        v53 = v52++;
      }

      while (v50 > v53);
    }
  }

  while (v47 != 15);
  vDSP_maxvi(a1, 1, &__C + 1, v77, v17);
  v71 = 0.0;
  vDSP_meanv(a1, 1, &v71, v17);
  v54 = fmin(v19, fmax(v77[0], 1.0));
  v55 = *(a1 + v54 - 1);
  v56 = v54 + 1;
  v57 = *(&a1->real + v56);
  v58 = *(&a1->real + v54);
  v59 = v58 * v54;
  if (v55 <= v57)
  {
    v60 = v54 + 1;
  }

  else
  {
    v60 = v54 - 1;
  }

  if (v55 <= v57)
  {
    v55 = *(&a1->real + v56);
  }

  v61 = v59 + (v55 * v60);
  v62 = (v58 + v55) + 0.0000001;
  v63 = v61 / v62;
  v64 = fmax(v14, 1.0);
  v65 = ((v13 + 1) / v64) * v71;
  v66 = v18 * v30 / v19;
  *a3 = v66;
  if (v65 == 0.0)
  {
    *a4 = 0;
    v70 = v18 * v63 / v19;
    *(a3 + 4) = v70;
    v69 = 0.0;
  }

  else
  {
    v67 = *(&__C + 1);
    *a4 = *&__C / v65;
    v68 = v18 * v63 / v19;
    *(a3 + 4) = v68;
    v69 = v67 / v65;
  }

  *(a4 + 4) = v69;
  *(a3 + 8) = *(a3 + 4);
  *(a4 + 8) = *(a4 + 4);
}

uint64_t sub_10003FA6C(float *a1, _DWORD *a2, float a3, float a4, float a5, float a6)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = (*a2 & 0xFFFFFFFD) == 5 || v10 == 3;
  v13 = (a2 + 3);
  v14 = a2[2];
  *&a2[v14 + 3] = a3;
  v15 = a2 + 19;
  *&a2[v14 + 19] = a4;
  if (v12)
  {
    v16 = v10;
  }

  else
  {
    v16 = 5;
  }

  v17 = fmin((v11 + 1), v16);
  a2[1] = v17;
  if (v17 <= 0)
  {
    *a1 = 0.0;
    goto LABEL_21;
  }

  v18 = v16 + v14;
  LOBYTE(v19) = 1;
  v20 = v17;
  LOBYTE(v21) = 1;
  do
  {
    v22 = v18 % v16;
    if (v21 && vabds_f32(a3, v13[v22]) < 2.0)
    {
      v21 = *&v15[v22] > 15.0;
      if (!v19)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
      if (!v19)
      {
LABEL_12:
        v19 = 0;
        goto LABEL_15;
      }
    }

    v19 = *&v15[v22] < 6.0;
LABEL_15:
    --v18;
    --v20;
  }

  while (v20);
  *a1 = 0.0;
  if (v21)
  {
LABEL_21:
    *a1 = sub_10003FBF0(v13, v17);
    v17 = a2[1];
    result = 1;
    goto LABEL_22;
  }

  if (v19)
  {
    result = 3;
  }

  else
  {
    result = 0;
  }

LABEL_22:
  v24 = a2[2];
  if (v17 >= 2)
  {
    a5 = (*&a2[(v16 + v24 - 1) % v16 + 35] * 0.382) + (a5 * 0.618);
  }

  v25 = &a2[v24];
  v25[35] = a5;
  v25[51] = a6;
  a2[2] = (v24 + 1) % v16;
  return result;
}

float sub_10003FBF0(float *a1, int a2)
{
  if (a2 == 2)
  {
    return (*a1 + a1[1]) * 0.5;
  }

  if (a2 == 1)
  {
    return *a1;
  }

  if ((a2 - 3) > 1)
  {
    if ((a2 - 5) > 1)
    {
      result = 0.0;
      if (a2 == 7)
      {
        v23 = a1[1];
        v25 = a1[4];
        v24 = a1[5];
        v26 = fminf(*a1, v24);
        v27 = fmaxf(*a1, v24);
        v29 = a1[2];
        v28 = a1[3];
        v30 = fminf(v26, v28);
        v31 = fmaxf(v26, v28);
        v32 = a1[6];
        v33 = fminf(v23, v32);
        v34 = fmaxf(v23, v32);
        v35 = fminf(v29, v25);
        v36 = fmaxf(v29, v25);
        v37 = fminf(v30, v33);
        v38 = fmaxf(v30, v33);
        v39 = fminf(v31, v27);
        v40 = fmaxf(v31, v27);
        v41 = fminf(v35, v34);
        v42 = fmaxf(v35, v34);
        v43 = fminf(v41, v39);
        v44 = fmaxf(v41, v39);
        v45 = fminf(v44, v42);
        a1[6] = fmaxf(v44, v42);
        v46 = fminf(v36, v40);
        v47 = fmaxf(v36, v40);
        v48 = fminf(v38, v46);
        v49 = fmaxf(v38, v46);
        *a1 = v37;
        a1[1] = fminf(v48, v45);
        v50 = fmaxf(v48, v45);
        result = fminf(v50, v49);
        a1[2] = v43;
        a1[3] = result;
        a1[4] = fmaxf(v50, v49);
        a1[5] = v47;
      }
    }

    else
    {
      v8 = a1[1];
      v9 = fminf(*a1, v8);
      v10 = fmaxf(*a1, v8);
      v12 = a1[3];
      v11 = a1[4];
      v13 = a1[2];
      v14 = fminf(v12, v11);
      v15 = fmaxf(v12, v11);
      v16 = fminf(v9, v14);
      v17 = fmaxf(v9, v14);
      v18 = fminf(v10, v15);
      v19 = fmaxf(v10, v15);
      v20 = fminf(v18, v13);
      *a1 = v16;
      a1[1] = v20;
      v21 = fmaxf(v18, v13);
      v22 = fminf(v21, v17);
      a1[2] = v22;
      a1[3] = fmaxf(v21, v17);
      a1[4] = v19;
      return fmaxf(v20, v22);
    }
  }

  else
  {
    v3 = a1[1];
    v4 = fminf(*a1, v3);
    v5 = fmaxf(*a1, v3);
    v6 = a1[2];
    v7 = fminf(v5, v6);
    *a1 = v4;
    a1[1] = v7;
    a1[2] = fmaxf(v5, v6);
    return fmaxf(v4, v7);
  }

  return result;
}

void sub_10003FD44(DSPComplex *__C, int a2, float *a3, uint64_t a4, float *a5, FFTSetup *a6, float a7)
{
  v13 = 1 << a2;
  v14 = (1 << a2) / 2;
  v15 = v14 + 1;
  __Z.realp = a5;
  __Z.imagp = &a5[v14 + 1];
  __B = 0.4945;
  vDSP_vsadd(__C, 1, &__B, __C, 1, 1 << a2);
  vDSP_ctoz(__C, 2, &__Z, 1, (v13 + (v13 >> 31)) >> 1);
  vDSP_fft_zrip(*a6, &__Z, 1, a2, 1);
  imagp = __Z.imagp;
  __Z.realp[v14] = *__Z.imagp;
  imagp[v14] = 0.0;
  *imagp = 0.0;
  v17 = v14 + 1;
  vDSP_zvabs(&__Z, 1, __C, 1, v17);
  v18 = (v14 + 1);
  v19 = a7 * 0.5;
  v20 = v14;
  v21 = fmin(((v18 * 90.0) / v19), v14);
  real = __C->real;
  vDSP_vclr(__C, 1, v21);
  v93 = 0;
  v91[1] = 0;
  __Ca = 0;
  __I = 0;
  v91[0] = 0;
  vDSP_maxvi(__C, 1, &__Ca, &__I, (v13 + (v13 >> 31)) >> 1);
  v23 = fmin(v14, fmax(__I, 1.0));
  v24 = *(__C + v23 - 1);
  v25 = v23 + 1;
  v26 = *(&__C->real + v25);
  v27 = *(&__C->real + v23);
  v28 = v27 * v23;
  if (v24 <= v26)
  {
    v29 = v23 + 1;
  }

  else
  {
    v29 = v23 - 1;
  }

  if (v24 <= v26)
  {
    v24 = *(&__C->real + v25);
  }

  v30 = v28 + (v24 * v29);
  v31 = (v27 + v24) + 0.0000001;
  v32 = v30 / v31;
  v86 = 0.0;
  v85 = 0;
  v33 = *&__Ca;
  v34 = (*&__Ca * 1024.0) / v13;
  if (v34 <= 0.1)
  {
    v39 = 0.06;
  }

  else if (v34 >= 100.0)
  {
    v39 = 0.03;
  }

  else
  {
    v35 = 1;
    v36 = 1;
    do
    {
      v37 = v36;
      v38 = flt_10008D600[v36];
      if ((v35 & 1) == 0)
      {
        break;
      }

      v35 = 0;
      v36 = 2;
    }

    while (v38 < v34);
    v39 = flt_10008D60C[v37 - 1] + (((flt_10008D60C[v37] - flt_10008D60C[v37 - 1]) * (v34 - flt_10008D600[v37 - 1])) / (v38 - flt_10008D600[v37 - 1]));
  }

  v40 = vcvtms_u32_f32(v32 / v21);
  if (v40 <= 1)
  {
    v40 = 1;
  }

  v41 = v40 - 1;
  if (v40 != 1)
  {
    v83 = v19;
    v42 = 0;
    v43 = v40;
    while (1)
    {
      v44 = 1.0 / (v43 - v42);
      v86 = 0.0;
      v85 = 0;
      v45 = (v32 * v44) + -1.0;
      v46 = 0.0;
      if (v45 < 0.0)
      {
        v45 = 0.0;
      }

      v47 = v45;
      vDSP_maxvi(__C + v47, 1, &v86, &v85, 3uLL);
      v48 = v85 + v47;
      v85 += v47;
      v33 = *&__Ca;
      v49 = 0.0;
      if (*&__Ca > 0.0)
      {
        v49 = v86 / *&__Ca;
      }

      v50 = (v32 * v44) + -3.0;
      if (v50 < 0.0)
      {
        v50 = 0.0;
      }

      v51 = v50;
      v52 = 6;
      v53 = 0.0;
      do
      {
        if (v48 != v51)
        {
          v53 = v53 + *(&__C->real + v51);
          v46 = v46 + 1.0;
        }

        ++v51;
        --v52;
      }

      while (v52);
      if (v46 >= 1.0)
      {
        v54 = v46;
      }

      else
      {
        v54 = 1.0;
      }

      v55 = v53 / v54;
      if (v55 <= 0.0)
      {
        v55 = 1.0;
      }

      if (v49 > v39 && (v86 / v55) > 1.5)
      {
        break;
      }

      if (++v42 == v41)
      {
        goto LABEL_38;
      }
    }

    v32 = v32 * v44;
    __I = v48;
LABEL_38:
    v19 = v83;
    v18 = v15;
  }

  v56 = 0;
  memset(v89, 0, 60);
  v57 = v14;
  v58 = v33 * 0.08;
  do
  {
    if (v56 == 15)
    {
      break;
    }

    v59 = v32 * (v56 + 1);
    if (v59 >= v57)
    {
      break;
    }

    v60 = fmax((v59 + -7.0), 0.0);
    v61 = fmin(v20, (v59 + 7.0));
    v62 = *(v89 + v56);
    if (v61 > v60)
    {
      do
      {
        if (v62 < *(&__C->real + v60))
        {
          v62 = *(&__C->real + v60);
        }

        ++v60;
      }

      while (v61 > v60);
      *(v89 + v56) = v62;
    }

    ++v56;
  }

  while (v62 >= v58);
  v63 = 0;
  do
  {
    v64 = v32 * ++v63;
    if (v64 >= v57)
    {
      break;
    }

    v65 = fmax((v64 + -7.0), 0.0);
    v66 = fmin(v20, (v64 + 7.0));
    while (v66 > v65)
    {
      *(&__C->real + v65) = 0;
      --v15;
      ++v65;
    }
  }

  while (v63 != 15);
  vDSP_maxvi(__C, 1, &__Ca + 1, v91, v17);
  v84 = 0.0;
  vDSP_meanv(__C, 1, &v84, v17);
  v67 = 1.0;
  v68 = fmin(v20, fmax(v91[0], 1.0));
  v69 = v68 - 1;
  v70 = *(&__C->real + v69);
  v71 = *(&__C->imag + v68);
  v72 = *(&__C->real + v68);
  v73 = fmax(v15, 1.0);
  v74 = (v18 / v73) * v84;
  v75 = v19 * v32 / v20;
  *a3 = v75;
  v76 = *&__Ca;
  if (v74 == 0.0)
  {
    v77 = 0.0;
    v78 = 0.0;
  }

  else
  {
    v77 = *&__Ca / v74;
    v78 = *(&__Ca + 1) / v74;
  }

  if (v70 <= v71)
  {
    v70 = v71;
    LODWORD(v69) = v68 + 1;
  }

  v79 = (v72 * v68) + (v70 * v69);
  v80 = (v72 + v70) + 0.0000001;
  v81 = v19 * (v79 / v80) / v20;
  *a4 = v77;
  a3[1] = v81;
  *(a4 + 4) = v78;
  if (v76 > 0.0)
  {
    v67 = v76;
  }

  v82 = real / v67;
  a3[2] = v82;
  *(a4 + 8) = *(a4 + 4);
}

uint64_t sub_100040388(float *a1, float *a2, uint64_t a3, float a4, float a5, float a6, float a7, float a8, double a9)
{
  v13 = a9;
  v14 = 1.0;
  if (v13 > 3000.0)
  {
    v14 = 0.625;
    if (v13 < 12000.0)
    {
      v14 = (((v13 + -3000.0) * -0.375) / 9000.0) + 1.0;
    }
  }

  v15 = v14 * a5;
  v16 = *a3;
  v17 = *(a3 + 4);
  v18 = (*a3 & 0xFFFFFFFD) == 5 || v16 == 3;
  v19 = a3 + 12;
  v20 = *(a3 + 8);
  *(a3 + 12 + 4 * v20) = a4;
  v21 = a3 + 76;
  *(a3 + 76 + 4 * v20) = v15;
  v22 = a3 + 268;
  *(a3 + 268 + 4 * v20) = a8;
  if (v18)
  {
    v23 = v16;
  }

  else
  {
    v23 = 5;
  }

  if (v17 + 1 < v23)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v23;
  }

  *(a3 + 4) = v24;
  v25 = v24 - 1;
  if (v24 > 1)
  {
    v26 = v23 + v20 - 1;
    while (1)
    {
      v27 = v26 % v23;
      v28 = *(v19 + 4 * (v26 % v23));
      if (v28 < a4 && v28 > 0.0)
      {
        v29 = fabsf(a4 / v28);
        if (v29 > 1.9 && vabds_f32(a4 / v28, v29) < 0.05)
        {
          break;
        }
      }

      --v26;
      if (!--v25)
      {
        goto LABEL_20;
      }
    }

    if (v15 < (*(v21 + 4 * v27) * 1.25))
    {
      *(v19 + 4 * v20) = v28;
    }

    a4 = *(v19 + 4 * v27);
  }

LABEL_20:
  if (v24 < 1)
  {
    *a1 = 0.0;
    goto LABEL_37;
  }

  v30 = v23 + v20;
  LOBYTE(v31) = 1;
  v32 = v24;
  LOBYTE(v33) = 1;
  do
  {
    v34 = v30 % v23;
    if (v31 && vabds_f32(a4, *(v19 + 4 * v34)) < 2.0 && *(v21 + 4 * v34) > 15.0)
    {
      v31 = *(v22 + 4 * v34) < 300.0;
      if (!v33)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v31 = 0;
      if (!v33)
      {
LABEL_26:
        v33 = 0;
        goto LABEL_31;
      }
    }

    v33 = *(v21 + 4 * v34) < 6.0 || *(v22 + 4 * v34) > 400.0;
LABEL_31:
    --v30;
    --v32;
  }

  while (v32);
  *a1 = 0.0;
  if (v31)
  {
LABEL_37:
    v36 = *(v19 + 4 * v20);
    *(v19 + 4 * v20) = a4;
    *a1 = sub_10003FBF0((a3 + 12), v24);
    v24 = *(a3 + 4);
    *(v19 + 4 * *(a3 + 8)) = v36;
    v35 = 1;
    goto LABEL_38;
  }

  if (v33)
  {
    v35 = 3;
  }

  else
  {
    v35 = 0;
  }

LABEL_38:
  __C = 0.0;
  vDSP_meanv((a3 + 76), 1, &__C, v24);
  *a2 = __C;
  v37 = *(a3 + 8);
  if (*(a3 + 4) >= 2)
  {
    a6 = (*(a3 + 4 * ((v23 + v37 - 1) % v23) + 140) * 0.382) + (a6 * 0.618);
  }

  v38 = a3 + 4 * v37;
  *(v38 + 140) = a6;
  *(v38 + 204) = a7;
  *(a3 + 8) = (v37 + 1) % v23;
  return v35;
}

uint64_t sub_100040684()
{
  v0 = __chkstk_darwin();
  v32[0] = 0;
  v31[0] = v2;
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_10008D130;
    v6 = xmmword_10008B050;
    v7 = (v1 + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 2) = v3;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 1) = v3 + 1;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = v3 + 2;
        v7[1] = v3 + 3;
      }

      v3 += 4;
      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
    }

    while (((v2 + 3) & 0xFFFFFFFC) != v3);
  }

  v10 = 0;
  v11 = v1 + 4;
  while (1)
  {
    while (1)
    {
      v12 = v10;
      v13 = v32[v10];
      v14 = v31[v10];
      v15 = v14 - 1;
      if (v13 < v14 - 1)
      {
        break;
      }

      --v10;
      if (v12 - 1 < 0)
      {
        return 0;
      }
    }

    if (v10 == 999)
    {
      break;
    }

    v16 = *(v0 + 4 * v13);
    v17 = *(v1 + 4 * v13);
    do
    {
      v18 = v15;
      v19 = v13;
      v20 = &_mh_execute_header + (v15 << 32);
      v21 = (v0 + 4 + 4 * v15);
      do
      {
        v22 = v18;
        v23 = *--v21;
        v24 = v23;
        --v18;
        v20 -= 0x100000000;
      }

      while (v22 > v19 && v24 >= v16);
      if (v22 > v19)
      {
        *(v0 + 4 * v19) = v24;
        *(v1 + 4 * v19) = *(v11 + 4 * v18);
        v19 = v19 + 1;
      }

      v15 = v18 + 1;
      v25 = v20 >> 32;
      v26 = (v19 << 32) - 0x100000000;
      do
      {
        v27 = v19;
        v28 = *(v0 + 4 * v19++);
        v26 += &_mh_execute_header;
      }

      while (v27 < v25 && v28 <= v16);
      if (v27 < v25)
      {
        *v21 = v28;
        *(v11 + 4 * v18) = *(v1 - 4 + 4 * v19);
        v15 = v18;
      }

      v13 = v19 - 1;
    }

    while (v15 > v19 - 1);
    v29 = v26 >> 30;
    *(v0 + v29) = v16;
    *(v1 + v29) = v17;
    v10 = v12 + 1;
    v32[v10] = v19;
    v31[v10] = v14;
    v31[v12] = v13;
    if (v12 + 1 < 0)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

float sub_1000408C8(uint64_t a1, int a2)
{
  v4 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  if (v4)
  {
    v5 = v4;
    if (a2 >= 1)
    {
      v6 = 0;
      v7 = vdupq_n_s64(a2 - 1);
      v8 = xmmword_10008D130;
      v9 = xmmword_10008B050;
      v10 = v4 + 2;
      v11 = vdupq_n_s64(4uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v7, v9));
        if (vuzp1_s16(v12, *v7.i8).u8[0])
        {
          *(v10 - 2) = v6;
        }

        if (vuzp1_s16(v12, *&v7).i8[2])
        {
          *(v10 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
        {
          *v10 = v6 + 2;
          v10[1] = v6 + 3;
        }

        v6 += 4;
        v8 = vaddq_s64(v8, v11);
        v9 = vaddq_s64(v9, v11);
        v10 += 4;
      }

      while (((a2 + 3) & 0xFFFFFFFC) != v6);
    }

    sub_100040684();
    free(v5);
    v13 = -4;
    if (a2)
    {
      v13 = 0;
    }

    v14 = a1 + 4 * (a2 >> 1) + v13;
  }

  else
  {
    v14 = a1 + 4 * a2 - 4;
  }

  return *v14;
}

uint64_t sub_100040A08(float *a1, float *a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6, _BOOL4 a7, float a8, float a9, float a10, float a11)
{
  v21 = 0xFFFFFFFFLL;
  v22 = sub_10002ECA4(@"FlickerDetectorAlphaNumerator", @"com.apple.coremedia", 0xFFFFFFFFLL);
  v23 = sub_10002ECA4(@"FlickerDetectorAlphaDenominator", @"com.apple.coremedia", 0xFFFFFFFFLL);
  v24 = sub_10002ECA4(@"FlickerDetectorIsGrimaldi", @"com.apple.coremedia", 2);
  v26 = 0.8;
  if (v22 != -1 && v23 != -1)
  {
    v26 = v22 / v23;
  }

  *(a6 + 40) = -1;
  v27 = v24 != 0;
  if (v24 == 2)
  {
    v27 = a7;
  }

  if (a3 >= 0x7D0 && a1 && a2 && a5 && a6)
  {
    v28 = a5 + 8000;
    v29 = a11 * 1.05;
    v30 = a10 * 1.1;
    if (a4)
    {
      LODWORD(v31) = *(a5 + 16000);
    }

    else
    {
      v31 = 2000;
      v32 = a5;
      do
      {
        v33 = *a2++;
        *v32 = (v33 - v29) * a9;
        v34 = *a1++;
        v32[2000] = (v34 - v30) * a8;
        ++v32;
        --v31;
      }

      while (v31);
      a3 -= 2000;
      if (!a3)
      {
        goto LABEL_19;
      }
    }

    v35 = 1.0 - v26;
    v36 = v31;
    v37 = a3;
    do
    {
      v38 = v36 % 0x7D0;
      v39 = *a2++;
      *(a5 + 4 * v38) = ((v26 * (v39 - v29)) * a9) + (*(a5 + 4 * v38) * v35);
      v40 = *a1++;
      *(v28 + 4 * v38) = ((v26 * (v40 - v30)) * a8) + (*(v28 + 4 * v38) * v35);
      ++v36;
      --v37;
    }

    while (v37);
    LODWORD(v31) = (a3 + v31) % 0x7D0;
LABEL_19:
    *(a5 + 16000) = v31;
    v41 = 0.0;
    v42 = 532;
    v43 = a5;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    do
    {
      v45 = v45 + *v43;
      v46 = v46 + v43[1067];
      v41 = v41 + v43[2000];
      v44 = v44 + v43[3067];
      ++v43;
      --v42;
    }

    while (v42);
    v47 = 0.0;
    v48 = 133;
    v49 = a5;
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    do
    {
      v55 = v49[533];
      v54 = v54 + v55;
      v50 = v50 + (v55 * v55);
      v56 = v49[800];
      v52 = v52 + v56;
      v51 = v51 + (v56 * v56);
      v47 = v47 + v49[2533];
      v53 = v53 + v49[2800];
      ++v49;
      --v48;
    }

    while (v48);
    v57 = 133;
    v58 = a5;
    v59 = v50;
    v60 = v51;
    v61 = v52;
    v62 = v54;
    do
    {
      v63 = v58[666];
      v62 = v62 + v63;
      v59 = v59 + (v63 * v63);
      v64 = v58[933];
      v61 = v61 + v64;
      v60 = v60 + (v64 * v64);
      v47 = v47 + v58[2666];
      v53 = v53 + v58[2933];
      ++v58;
      --v57;
    }

    while (v57);
    v65 = 0;
    v66 = 266;
    v67 = 0.0;
    v68 = 133;
    v69 = 532;
    v70 = 0.0;
    v71 = a5;
    while (1)
    {
      *v25.i32 = v46 + v45;
      v72 = v44 + v41;
      if (v27)
      {
        v73 = v41 - v44;
        if ((v41 - v44) < 0.0)
        {
          v73 = -(v41 - v44);
        }

        v74 = v45 - v46;
        if ((v45 - v46) < 0.0)
        {
          v74 = -(v45 - v46);
        }

        if (v45 < 0.0 || v46 < 0.0 || v41 < 0.0 || v44 < 0.0 || ((v74 / *v25.i32) + (v73 / v72)) > 0.125)
        {
          goto LABEL_55;
        }
      }

      v75 = -(*v25.i32 - ((v62 + v61) * 2.0));
      v76 = -(v72 - ((v53 + v47) * 2.0));
      if (v27)
      {
        v67 = (v75 / sqrtf(*v25.i32)) + (v76 / sqrtf(v72));
        if (v67 > v70)
        {
          v77 = v76 - (*v25.i32 - ((v62 + v61) * 2.0));
LABEL_43:
          *a6 = v25.i32[0];
          *(a6 + 4) = v62;
          *(a6 + 24) = v47;
          *(a6 + 28) = v53;
          *(a6 + 16) = v54;
          *(a6 + 20) = v72;
          *(a6 + 8) = v61;
          *(a6 + 12) = v52;
          v79.f32[0] = v62 - v54;
          *v25.i32 = *v25.i32 * 0.125;
          v80.f32[0] = v59 - v50;
          v79.f32[1] = v54;
          v81 = vdup_lane_s32(v25, 0);
          v82 = vsub_f32(v79, v81);
          v80.f32[1] = v50;
          v83 = vdup_n_s32(0x43050000u);
          v84 = vmla_f32(vmul_f32(v79, vneg_f32(v79)), v83, v80);
          v85 = vdup_n_s32(0x3C23D70Au);
          v86 = vdiv_f32(vmul_f32(v82, v82), vmaxnm_f32(v84, v85));
          v82.f32[0] = v61 - v52;
          v87.f32[0] = v60 - v51;
          v82.f32[1] = v52;
          v88 = vsub_f32(v82, v81);
          v87.f32[1] = v51;
          v25 = vdiv_f32(vmul_f32(v88, v88), vmaxnm_f32(vmla_f32(vmul_f32(v82, vneg_f32(v82)), v83, v87), v85));
          v89 = v86.f32[1];
          if (v86.f32[0] < v86.f32[1])
          {
            v89 = v86.f32[0];
          }

          if (*v25.i32 >= *&v25.i32[1])
          {
            v90 = *&v25.i32[1];
          }

          else
          {
            v90 = *v25.i32;
          }

          if (v89 >= v90)
          {
            v89 = v90;
          }

          *(a6 + 32) = *&v25.i32[1] + (*v25.i32 + vaddv_f32(v86));
          *(a6 + 36) = v89;
          *(a6 + 40) = v65;
          if (v76 <= 0.0)
          {
            v70 = v75;
          }

          else
          {
            v70 = v77;
          }

          if (v27)
          {
            v70 = v67;
          }
        }
      }

      else
      {
        v77 = v76 - (*v25.i32 - ((v62 + v61) * 2.0));
        if (v75 > v70 || v77 > v70)
        {
          goto LABEL_43;
        }
      }

LABEL_55:
      if (v65 >= 0x5BC)
      {
        v91 = -1468;
      }

      else
      {
        v91 = 532;
      }

      v92 = v91 + v65;
      if (v65 >= 0x3A5)
      {
        v93 = -933;
      }

      else
      {
        v93 = 1067;
      }

      if (v65 >= 0x3A5)
      {
        v94 = -933;
      }

      else
      {
        v94 = 1067;
      }

      v95 = v65 + v94;
      v96 = v65 + v93 - 2000 * ((v93 + v69) / 0x7D0u);
      if (v65 >= 0x5BB)
      {
        v97 = -1467;
      }

      else
      {
        v97 = 533;
      }

      if (v65 >= 0x5BB)
      {
        v98 = -1467;
      }

      else
      {
        v98 = 533;
      }

      v99 = v65 + v98;
      v100 = v65 + v97 - 2000 * ((v97 + v66) / 0x7D0u);
      v101 = v65 + v97 - 2000 * ((v97 + v68) / 0x7D0u);
      if (v65 >= 0x4B0)
      {
        v102 = -1200;
      }

      else
      {
        v102 = 800;
      }

      if (v65 >= 0x4B0)
      {
        v103 = -1200;
      }

      else
      {
        v103 = 800;
      }

      v104 = v65 + v103;
      v105 = v96 + 532;
      v106 = v100 + 266;
      v107 = v65 + v102 - 2000 * ((v102 + v66) / 0x7D0u) + 266;
      v45 = v45 + (*(a5 + 4 * v92) - *v71);
      v46 = v46 + (*(a5 + 4 * v105) - *(a5 + 4 * v95));
      v41 = v41 + (*(v28 + 4 * v92) - v71[2000]);
      v108 = *(a5 + 4 * v106);
      v44 = v44 + (*(v28 + 4 * v105) - *(v28 + 4 * v95));
      v109 = *(a5 + 4 * v99);
      v62 = v62 + (v108 - v109);
      v59 = v59 + ((v108 * v108) - (v109 * v109));
      v47 = v47 + (*(v28 + 4 * v106) - *(v28 + 4 * v99));
      v110 = *(a5 + 4 * (v101 + 133));
      v54 = v54 + (v110 - v109);
      v111 = (v110 * v110) - (v109 * v109);
      v112 = *(a5 + 4 * v107);
      v113 = *(a5 + 4 * v104);
      v50 = v50 + v111;
      v61 = v61 + (v112 - v113);
      v60 = v60 + ((v112 * v112) - (v113 * v113));
      v53 = v53 + (*(v28 + 4 * v107) - *(v28 + 4 * v104));
      v114 = *(a5 + 4 * (v65 + v102 - 2000 * ((v102 + v68) / 0x7D0u) + 133));
      v52 = v52 + (v114 - v113);
      ++v71;
      ++v66;
      v51 = v51 + ((v114 * v114) - (v113 * v113));
      ++v68;
      ++v69;
      if (++v65 == 2000)
      {
        v21 = 0;
        *(a6 + 44) = a4;
        *(a6 + 45) = v27;
        return v21;
      }
    }
  }

  return v21;
}

uint64_t sub_100041078(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, float *__dst, unsigned int a6, uint64_t a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a3 < 0x506 || !a2 || !a1 || !__dst || a6 >> 3 < 0x295 || !a7)
  {
    return v7;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  *(a7 + 76) = -1;
  v15 = __dst[1286];
  v16 = __dst[1287];
  v17 = __dst[1288];
  v18 = __dst[1289];
  v19 = __dst[1290];
  v20 = __dst[1291];
  v21 = __dst[1292];
  v22 = __dst[1293];
  v23 = __dst[1294];
  v24 = __dst[1295];
  v25 = __dst[1296];
  v26 = __dst[1297];
  v27 = __dst[1298];
  v28 = __dst[1299];
  v29 = __dst[1300];
  v30 = __dst[1301];
  v31 = __dst[1302];
  v32 = __dst[1303];
  v33 = __dst[1304];
  v34 = __dst[1305];
  v35 = __dst[1306];
  v36 = __dst[1307];
  v37 = __dst[1308];
  v38 = __dst[1309];
  v137 = __dst[1310];
  v39 = __dst[1312];
  v40 = __dst[1311];
  v41 = __dst[1313];
  v42 = __dst[1314];
  v43 = __dst[1315];
  v44 = __dst[1316];
  v45 = a4 >> 2;
  v46 = __dst[1317];
  v47 = (a4 >> 1) + (a4 >> 2);
  v48 = __dst[1318];
  v49 = __dst[1319];
  do
  {
    if (v9 >= 1286)
    {
      v50 = (a1 - 5144);
    }

    else
    {
      v50 = __dst;
    }

    v51 = v50[v9];
    v52 = &__dst[v9 + 368];
    if (v9 - 918 >= 0)
    {
      v52 = (a1 + 4 * (v9 - 918));
    }

    v15 = v15 + (*v52 - v51);
    v53 = &__dst[v9 + 918];
    if (v9 - 368 >= 0)
    {
      v53 = (a1 + 4 * (v9 - 368));
    }

    v54 = *v53;
    v55 = &__dst[v9 + 1286];
    if (v9 >= 0)
    {
      v55 = (a1 + 4 * v9);
    }

    v16 = v16 + (*v55 - v54);
    v56 = &__dst[v9 + 427];
    if (v9 - 859 >= 0)
    {
      v56 = (a1 + 4 * (v9 - 859));
    }

    v57 = *v56;
    v58 = &__dst[v9 + 473];
    if (v9 - 813 >= 0)
    {
      v58 = (a1 + 4 * (v9 - 813));
    }

    v17 = v17 + (*v58 - v57);
    v59 = &__dst[v9 + 533];
    if (v9 - 753 >= 0)
    {
      v59 = (a1 + 4 * (v9 - 753));
    }

    v60 = *v59;
    v61 = &__dst[v9 + 579];
    if (v9 - 707 >= 0)
    {
      v61 = (a1 + 4 * (v9 - 707));
    }

    v18 = v18 + (*v61 - v60);
    v62 = &__dst[v9 + 647];
    if (v9 - 639 >= 0)
    {
      v62 = (a1 + 4 * (v9 - 639));
    }

    v63 = *v62;
    v64 = &__dst[v9 + 693];
    if (v9 - 593 >= 0)
    {
      v64 = (a1 + 4 * (v9 - 593));
    }

    v19 = v19 + (*v64 - v63);
    v65 = &__dst[v9 + 754];
    if (v9 - 532 >= 0)
    {
      v65 = (a1 + 4 * (v9 - 532));
    }

    v66 = *v65;
    v67 = &__dst[v9 + 800];
    if (v9 - 486 >= 0)
    {
      v67 = (a1 + 4 * (v9 - 486));
    }

    v20 = v20 + (*v67 - v66);
    v68 = (v15 + v16) * -0.25;
    v69 = (((v17 + v18) + v19) + v20) + v68;
    if (v69 > v21)
    {
      v10 = 1;
      v11 = v9;
      v21 = (((v17 + v18) + v19) + v20) + v68;
      v22 = v30;
      v23 = v15;
      v24 = v16;
      v25 = v17;
      v26 = v18;
      v27 = v19;
      v28 = v20;
    }

    if (v69 > v31)
    {
      v14 = 1;
      v12 = v9;
      v31 = (((v17 + v18) + v19) + v20) + v68;
      v32 = v30;
      v33 = v15;
      v34 = v16;
      v35 = v17;
      v36 = v18;
      v37 = v19;
      v38 = v20;
    }

    v70 = v31;
    if (v30 == (a4 >> 1) - 1)
    {
      if (v32 < v45 || v32 >= v47)
      {
        if (v14)
        {
          v83 = v12 + 919;
          v84 = (v33 + v34) / 368.0 * 0.5;
          v85 = 0.0;
          v86 = 368;
          do
          {
            v87 = v83 - 918;
            if (v83 >= 1286)
            {
              v88 = (a1 - 5144);
            }

            else
            {
              v88 = __dst;
            }

            v89 = v88[v83] - v84;
            if (v87 >= 1286)
            {
              v90 = (a1 - 5144);
            }

            else
            {
              v90 = __dst;
            }

            v91 = v85 + v89 * v89;
            v92 = v90[v87] - v84;
            v85 = v91 + v92 * v92;
            ++v83;
            --v86;
          }

          while (v86);
          v31 = -3.4028e38;
          v40 = v70;
          v39 = v32;
          v41 = v33;
          v42 = v34;
          v49 = sqrt(v85 / 368.0 * 0.5);
          v43 = v35;
          v44 = v36;
          v46 = v37;
          v48 = v38;
        }

        else
        {
          v31 = -3.4028e38;
          v40 = v70;
          v39 = v32;
          v41 = v33;
          v42 = v34;
          v43 = v35;
          v44 = v36;
          v46 = v37;
          v48 = v38;
          v49 = v137;
        }
      }

      else
      {
        v31 = -3.4028e38;
      }
    }

    if (v30 == a4 - 1)
    {
      if (v22 < v45 || v22 >= v47 || v21 < v40)
      {
        v21 = -3.4028e38;
        v93 = v40 <= -3.4028e38;
        v40 = -3.4028e38;
        if (v93)
        {
          goto LABEL_68;
        }

        *(a7 + 4) = v43;
        *(a7 + 8) = v44;
        *(a7 + 12) = v46;
        *(a7 + 16) = v48;
        *(a7 + 20) = v42;
        *(a7 + 24) = v41;
        v71 = v49;
        *(a7 + 76) = v39;
      }

      else
      {
        *(a7 + 4) = v25;
        *(a7 + 8) = v26;
        *(a7 + 12) = v27;
        *(a7 + 16) = v28;
        *(a7 + 20) = v24;
        *(a7 + 24) = v23;
        v71 = v29;
        *(a7 + 76) = v22;
        if (v10)
        {
          v72 = v46;
          v73 = v11 + 919;
          v74 = (v23 + v24) / 368.0 * 0.5;
          v75 = 0.0;
          v76 = 368;
          do
          {
            v77 = v73 - 918;
            if (v73 >= 1286)
            {
              v78 = (a1 - 5144);
            }

            else
            {
              v78 = __dst;
            }

            v79 = v78[v73] - v74;
            if (v77 >= 1286)
            {
              v80 = (a1 - 5144);
            }

            else
            {
              v80 = __dst;
            }

            v81 = v75 + v79 * v79;
            v82 = v80[v77] - v74;
            v75 = v81 + v82 * v82;
            ++v73;
            --v76;
          }

          while (v76);
          v71 = sqrt(v75 / 368.0 * 0.5);
          v46 = v72;
        }
      }

      *a7 = v71;
      v13 = 1;
      v21 = -3.4028e38;
      v40 = -3.4028e38;
    }

LABEL_68:
    ++v9;
    v30 = (v30 + 1) % a4;
  }

  while (v9 != a3);
  v116 = v40;
  if (v10)
  {
    v94 = v11 + 919;
    v95 = (v23 + v24) / 368.0 * 0.5;
    v96 = 0.0;
    v97 = 368;
    do
    {
      v98 = v94 - 918;
      if (v94 >= 1286)
      {
        v99 = (a1 - 5144);
      }

      else
      {
        v99 = __dst;
      }

      v100 = v99[v94] - v95;
      if (v98 >= 1286)
      {
        v101 = (a1 - 5144);
      }

      else
      {
        v101 = __dst;
      }

      v102 = v96 + v100 * v100;
      v103 = v101[v98] - v95;
      v96 = v102 + v103 * v103;
      ++v94;
      --v97;
    }

    while (v97);
    v29 = sqrt(v96 / 368.0 * 0.5);
  }

  if (v14)
  {
    v104 = v12 + 919;
    v105 = (v33 + v34) / 368.0 * 0.5;
    v106 = 0.0;
    v107 = 368;
    do
    {
      v108 = v104 - 918;
      if (v104 >= 1286)
      {
        v109 = (a1 - 5144);
      }

      else
      {
        v109 = __dst;
      }

      v110 = v109[v104] - v105;
      if (v108 >= 1286)
      {
        v111 = (a1 - 5144);
      }

      else
      {
        v111 = __dst;
      }

      v112 = v106 + v110 * v110;
      v113 = v111[v108] - v105;
      v106 = v112 + v113 * v113;
      ++v104;
      --v107;
    }

    while (v107);
    v114 = sqrt(v106 / 368.0 * 0.5);
    v137 = v114;
  }

  v117 = v49;
  v118 = v48;
  v119 = v46;
  v120 = v44;
  v121 = v43;
  v122 = v42;
  v123 = v41;
  v124 = v29;
  v125 = v38;
  v126 = v28;
  v127 = v37;
  v128 = v27;
  v129 = v36;
  v130 = v26;
  v131 = v35;
  v132 = v25;
  v133 = v34;
  v134 = v24;
  v135 = v33;
  v136 = v23;
  if ((v13 & 1) == 0)
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 24) = 0;
    *(a7 + 16) = 0;
    *(a7 + 76) = -1;
  }

  *(a7 + 60) = 0u;
  *(a7 + 44) = 0u;
  *(a7 + 28) = 0u;
  *(a7 + 80) = 0;
  *(a7 + 86) = 0;
  memcpy(__dst, (a1 + 4 * a3 - 5144), 0x1418uLL);
  v7 = 0;
  __dst[1286] = v15;
  __dst[1287] = v16;
  __dst[1288] = v17;
  __dst[1289] = v18;
  __dst[1290] = v19;
  __dst[1291] = v20;
  __dst[1292] = v21;
  __dst[1293] = v22;
  __dst[1294] = v136;
  __dst[1295] = v134;
  __dst[1296] = v132;
  __dst[1297] = v130;
  __dst[1298] = v128;
  __dst[1299] = v126;
  __dst[1300] = v124;
  __dst[1301] = v30;
  __dst[1302] = v31;
  __dst[1303] = v32;
  __dst[1304] = v135;
  __dst[1305] = v133;
  __dst[1306] = v131;
  __dst[1307] = v129;
  __dst[1308] = v127;
  __dst[1309] = v125;
  __dst[1310] = v137;
  __dst[1311] = v116;
  __dst[1312] = v39;
  __dst[1313] = v123;
  __dst[1314] = v122;
  __dst[1315] = v121;
  __dst[1316] = v120;
  __dst[1317] = v119;
  __dst[1318] = v118;
  __dst[1319] = v117;
  return v7;
}

uint64_t sub_100041A50(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, double *a5, double a6)
{
  sub_100016114(&v130, 9, *(a1 + 20));
  v130 = &off_1000A2A50;
  v115 = 3;
  v116 = v132;
  v127 = 3;
  v128 = v132;
  v129 = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  v125 = &off_1000A1DE0;
  v126 = &v131[48 * v132];
  sub_100016068(&v113);
  sub_100016114(&v122, 3, *(a2 + 20));
  v122 = &off_1000A1DE0;
  v121 = 0;
  memset(v120, 0, sizeof(v120));
  v119 = 0;
  memset(v118, 0, sizeof(v118));
  sub_100042954(a1, &v125, v120);
  sub_100042954(a2, &v122, v118);
  v115 = 1;
  v116 = v124;
  v106 = v124;
  v107 = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  v103 = &off_1000A1C58;
  v104 = v123;
  v105 = 1;
  sub_100016068(&v113);
  v115 = 1;
  v116 = v128;
  LODWORD(v134) = 1;
  DWORD1(v134) = v128;
  BYTE8(v134) = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  *&v133 = &off_1000A1C58;
  *(&v133 + 1) = v126;
  sub_100016068(&v113);
  sub_10003430C(&v103, &v133, &v108);
  v115 = 1;
  v116 = v132;
  DWORD1(v99) = v132;
  BYTE8(v99) = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  __dst[0] = &off_1000A1C58;
  __dst[1] = v131;
  LODWORD(v99) = 1;
  sub_100016068(&v113);
  sub_10001746C(__dst, v110, v111);
  memcpy(__dst[1], __src, 8 * v99 * DWORD1(v99));
  sub_100016068(__dst);
  sub_100016068(&v108);
  sub_100016068(&v133);
  sub_100016068(&v103);
  v115 = 1;
  v116 = v124;
  v106 = v124;
  v107 = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  v103 = &off_1000A1C58;
  v104 = v123;
  v105 = 1;
  sub_100016068(&v113);
  v115 = 1;
  v116 = v128;
  LODWORD(v134) = 1;
  DWORD1(v134) = v128;
  BYTE8(v134) = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  *&v133 = &off_1000A1C58;
  *(&v133 + 1) = &v126[8 * v128];
  sub_100016068(&v113);
  sub_10003430C(&v103, &v133, &v108);
  v115 = 1;
  v116 = v132;
  DWORD1(v99) = v132;
  BYTE8(v99) = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  __dst[0] = &off_1000A1C58;
  __dst[1] = &v131[8 * v132];
  LODWORD(v99) = 1;
  sub_100016068(&v113);
  sub_10001746C(__dst, v110, v111);
  memcpy(__dst[1], __src, 8 * v99 * DWORD1(v99));
  sub_100016068(__dst);
  sub_100016068(&v108);
  sub_100016068(&v133);
  sub_100016068(&v103);
  v115 = 1;
  v116 = v124;
  __src = v123;
  v111 = v124;
  v112 = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  v108 = &off_1000A1C58;
  v110 = 1;
  sub_100016068(&v113);
  v115 = 1;
  v116 = v132;
  v106 = v132;
  v107 = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  v103 = &off_1000A1C58;
  v104 = &v131[16 * v132];
  v105 = 1;
  sub_100016068(&v113);
  sub_10001746C(&v103, v110, v111);
  memcpy(v104, __src, 8 * v105 * v106);
  sub_100016068(&v103);
  sub_100016068(&v108);
  v115 = 1;
  v116 = v124;
  v106 = v124;
  v107 = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  v103 = &off_1000A1C58;
  v104 = &v123[8 * v124];
  v105 = 1;
  sub_100016068(&v113);
  v115 = 1;
  v116 = v128;
  LODWORD(v134) = 1;
  DWORD1(v134) = v128;
  BYTE8(v134) = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  *&v133 = &off_1000A1C58;
  *(&v133 + 1) = v126;
  sub_100016068(&v113);
  sub_10003430C(&v103, &v133, &v108);
  v115 = 1;
  v116 = v132;
  DWORD1(v99) = v132;
  BYTE8(v99) = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  __dst[0] = &off_1000A1C58;
  __dst[1] = &v131[24 * v132];
  LODWORD(v99) = 1;
  sub_100016068(&v113);
  sub_10001746C(__dst, v110, v111);
  memcpy(__dst[1], __src, 8 * v99 * DWORD1(v99));
  sub_100016068(__dst);
  sub_100016068(&v108);
  sub_100016068(&v133);
  sub_100016068(&v103);
  v115 = 1;
  v116 = v124;
  v106 = v124;
  v107 = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  v103 = &off_1000A1C58;
  v104 = &v123[8 * v124];
  v105 = 1;
  sub_100016068(&v113);
  v115 = 1;
  v116 = v128;
  LODWORD(v134) = 1;
  DWORD1(v134) = v128;
  BYTE8(v134) = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  *&v133 = &off_1000A1C58;
  *(&v133 + 1) = &v126[8 * v128];
  sub_100016068(&v113);
  sub_10003430C(&v103, &v133, &v108);
  v115 = 1;
  v116 = v132;
  DWORD1(v99) = v132;
  BYTE8(v99) = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  __dst[0] = &off_1000A1C58;
  __dst[1] = &v131[32 * v132];
  LODWORD(v99) = 1;
  sub_100016068(&v113);
  sub_10001746C(__dst, v110, v111);
  memcpy(__dst[1], __src, 8 * v99 * DWORD1(v99));
  sub_100016068(__dst);
  sub_100016068(&v108);
  sub_100016068(&v133);
  sub_100016068(&v103);
  v115 = 1;
  v116 = v124;
  __src = &v123[8 * v124];
  v111 = v124;
  v112 = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  v108 = &off_1000A1C58;
  v110 = 1;
  sub_100016068(&v113);
  v115 = 1;
  v116 = v132;
  v106 = v132;
  v107 = 0;
  v113 = off_1000A1C28;
  v114 = 0;
  v117 = 0;
  v103 = &off_1000A1C58;
  v104 = &v131[40 * v132];
  v105 = 1;
  sub_100016068(&v113);
  sub_10001746C(&v103, v110, v111);
  memcpy(v104, __src, 8 * v105 * v106);
  sub_100016068(&v103);
  sub_100016068(&v108);
  sub_100042C50(&v130, &v130, &v113);
  bzero(&v108, 0x288uLL);
  bzero(&v103, 0x288uLL);
  v102 = 0.0;
  v100 = 0u;
  v101 = 0u;
  *__dst = 0u;
  v99 = 0u;
  sub_100042D1C(&v113, &v108, __dst, &v103);
  if (a4)
  {
    v14 = 0;
    v135 = v100;
    v136 = v101;
    v137 = v102;
    v133 = *__dst;
    v134 = v99;
    v15 = 1;
    do
    {
      v16 = v15;
      v17 = v14;
      do
      {
        if (*(&v133 + v16) < *(&v133 + v17))
        {
          v17 = v16;
        }

        ++v16;
      }

      while (v16 != 9);
      v18 = *(&v133 + v17);
      *(&v133 + v17) = *(&v133 + v14);
      *(&v133 + v14) = v18;
      ++v15;
      ++v14;
    }

    while (v14 != 8);
    v12 = *(&v133 + 1);
    v19 = v137 / *(&v133 + 1);
    if (a5)
    {
      *a5 = v19;
    }

    *a4 = v19 < a6;
  }

  v20 = 0;
  v21 = 64;
  v22 = a3;
  do
  {
    v23 = 0;
    v24 = v21;
    do
    {
      *(v22 + v23) = *(&v103 + v24);
      v24 += 72;
      v23 += 8;
    }

    while (v23 != 24);
    ++v20;
    v21 += 216;
    v22 += 24;
  }

  while (v20 != 3);
  v137 = 0.0;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  v93 = 0;
  v94 = 0;
  v95 = 0;
  sub_100034468(a3, &v133, &v93, v96, 0.0, v12, v13);
  v25 = 0;
  v89 = 0;
  v92 = 0u;
  v91 = 0u;
  v88 = 0u;
  v87 = v93;
  v90 = v94;
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v26 = &v133;
  v77 = 0u;
  v78 = 0u;
  do
  {
    v27 = 0;
    v28 = &v87;
    do
    {
      v29 = 0;
      v30 = 0.0;
      v31 = v28;
      do
      {
        v32 = *v31;
        v31 += 3;
        v30 = v30 + *(v26 + v29) * v32;
        v29 += 8;
      }

      while (v29 != 24);
      *(&v77 + 3 * v25 + v27++) = v30;
      ++v28;
    }

    while (v27 != 3);
    ++v25;
    v26 = (v26 + 24);
  }

  while (v25 != 3);
  v33 = 0;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v34 = &v72;
  v35 = v96;
  do
  {
    v36 = 0;
    v37 = v34;
    do
    {
      *v37 = *(v35 + v36);
      v37 = (v37 + 24);
      v36 += 8;
    }

    while (v36 != 24);
    ++v33;
    v34 = (v34 + 8);
    v35 = (v35 + 24);
  }

  while (v33 != 3);
  v38 = 0;
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v39 = &v77;
  do
  {
    v40 = 0;
    v41 = &v72;
    do
    {
      v42 = 0;
      v43 = 0.0;
      v44 = v41;
      do
      {
        v45 = *v44;
        v44 += 3;
        v43 = v43 + *(v39 + v42) * v45;
        v42 += 8;
      }

      while (v42 != 24);
      *(&v82 + 3 * v38 + v40++) = v43;
      v41 = (v41 + 8);
    }

    while (v40 != 3);
    ++v38;
    v39 = (v39 + 24);
  }

  while (v38 != 3);
  v46 = 0;
  v47 = v85;
  *(a3 + 32) = v84;
  *(a3 + 48) = v47;
  *(a3 + 64) = v86;
  v48 = v83;
  *a3 = v82;
  *(a3 + 16) = v48;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v49 = &v72;
  v50 = v118;
  v72 = 0u;
  v73 = 0u;
  do
  {
    v51 = 0;
    v52 = v49;
    do
    {
      *v52 = *(v50 + v51);
      v52 = (v52 + 24);
      v51 += 8;
    }

    while (v51 != 24);
    ++v46;
    v49 = (v49 + 8);
    v50 = (v50 + 24);
  }

  while (v46 != 3);
  v53 = 0;
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v54 = &v72;
  do
  {
    v55 = 0;
    v56 = a3;
    do
    {
      v57 = 0;
      v58 = 0.0;
      v59 = v56;
      do
      {
        v60 = *v59;
        v59 += 3;
        v58 = v58 + *(v54 + v57) * v60;
        v57 += 8;
      }

      while (v57 != 24);
      *(&v77 + 3 * v53 + v55++) = v58;
      ++v56;
    }

    while (v55 != 3);
    ++v53;
    v54 = (v54 + 24);
  }

  while (v53 != 3);
  v61 = 0;
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v62 = &v77;
  do
  {
    v63 = 0;
    v64 = v120;
    do
    {
      v65 = 0;
      v66 = 0.0;
      v67 = v64;
      do
      {
        v68 = *v67;
        v67 += 3;
        v66 = v66 + *(v62 + v65) * v68;
        v65 += 8;
      }

      while (v65 != 24);
      *(&v82 + 3 * v61 + v63++) = v66;
      v64 = (v64 + 8);
    }

    while (v63 != 3);
    ++v61;
    v62 = (v62 + 24);
  }

  while (v61 != 3);
  v69 = v85;
  *(a3 + 32) = v84;
  *(a3 + 48) = v69;
  *(a3 + 64) = v86;
  v70 = v83;
  *a3 = v82;
  *(a3 + 16) = v70;
  sub_100016068(&v122);
  sub_100016068(&v125);
  sub_100016068(&v130);
  return 0;
}

void sub_1000428BC(_Unwind_Exception *a1)
{
  sub_100016068(&STACK[0xA20]);
  sub_100016068(v1 - 240);
  sub_100016068(v1 - 208);
  _Unwind_Resume(a1);
}

uint64_t sub_100042954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100043768(&v30, *(a1 + 8), 3, *(a1 + 20), 1);
  v30 = &off_1000A1DE0;
  v5 = v33;
  if (v32)
  {
    v6 = v33 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v32 <= 1)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v32 == 2)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  v7 = 0;
  v8 = v31;
  v9 = &v31[v33];
  v10 = &v31[2 * v33];
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    v8[v7] = v8[v7] / v10[v7];
    v9[v7] = v9[v7] / v10[v7];
    v10[v7] = 1.0;
    v11 = v11 + v8[v7];
    v12 = v12 + v9[v7++];
  }

  while (v5 != v7);
  v13 = *(a2 + 16);
  if (!v13 || (v14 = *(a2 + 20), !v14))
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v13 == 1)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v13 <= 2)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  v15 = v11 / v5;
  v16 = *(a2 + 8);
  v17 = 0.0;
  v18 = v31;
  v19 = v5;
  v20 = v12 / v5;
  do
  {
    v21 = *v18 - v15;
    *v16 = v21;
    v22 = v18[v5] - v20;
    v16[v14] = v22;
    v23 = sqrt(v22 * v22 + v21 * v21);
    v16[(2 * v14)] = v23;
    v17 = v17 + v23;
    ++v16;
    ++v18;
    --v19;
  }

  while (v19);
  v24 = 1.41421356 / (v17 / v5);
  *a3 = v24;
  *(a3 + 8) = 0;
  *(a3 + 16) = -(v24 * v15);
  *(a3 + 24) = 0;
  *(a3 + 32) = v24;
  *(a3 + 40) = -(v24 * v20);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0x3FF0000000000000;
  sub_100019250(a3, &v30, &v26);
  sub_10001746C(a2, v28, v29);
  memcpy(*(a2 + 8), __src, 8 * *(a2 + 16) * *(a2 + 20));
  sub_100016068(&v26);
  sub_100016068(&v30);
  return 0;
}

void sub_100042C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_100016068(&a9);
  sub_100016068(&a13);
  _Unwind_Resume(a1);
}

double *sub_100042C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  bzero(a3, 0x288uLL);
  v6 = 0;
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 8);
  do
  {
    if (v6 == v7 || (v11 = *(a1 + 20)) == 0)
    {
      sub_10007CEF4();
    }

    v12 = 0;
    v13 = *(a1 + 8) + 8 * (v11 * v6);
    do
    {
      if (v12 >= v8 || !v9)
      {
        sub_10007CEF4();
      }

      result = (v10 + 8 * (v9 * v12));
      v15 = 0.0;
      v16 = v11;
      v17 = v13;
      do
      {
        v18 = *v17++;
        v19 = v18;
        v20 = *result++;
        v15 = v15 + v19 * v20;
        --v16;
      }

      while (v16);
      *(a3 + 9 * v6 + v12++) = v15;
    }

    while (v12 != 9);
    ++v6;
  }

  while (v6 != 9);
  return result;
}

uint64_t sub_100042D1C(void *__src, void *a2, double *a3, void *a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  v10 = &__dst[1];
  v11 = &__dst[9];
  for (i = 1; i != 9; ++i)
  {
    v13 = 0;
    v14 = v10;
    do
    {
      *v7.i64 = v11[v13];
      v8.i64[0] = *v14;
      v11[v13] = *v14;
      *v14 = *v7.i64;
      v14 += 9;
      ++v13;
    }

    while (i != v13);
    ++v10;
    v11 += 9;
  }

  sub_10001A0DC(9, __dst, a2, a3, a4, v7, v8, v9);
  v15 = a2 + 1;
  v16 = a2 + 9;
  for (j = 1; j != 9; ++j)
  {
    v18 = 0;
    v19 = v15;
    do
    {
      v20 = v16[v18];
      v16[v18] = *v19;
      *v19 = v20;
      v19 += 9;
      ++v18;
    }

    while (j != v18);
    ++v15;
    v16 += 9;
  }

  return 0;
}

uint64_t sub_100042E18(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (v3)
  {
    v6 = 0;
    v7 = a1;
    do
    {
      v8 = (sub_10003D424(a2) * v7);
      if (v6)
      {
        v9 = 0;
        while (*(*(a3 + 8) + 4 * v9) != v8)
        {
          if (v6 == ++v9)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      if (v9 == v6)
      {
LABEL_10:
        *(*(a3 + 8) + 4 * v6++) = v8;
      }
    }

    while (v6 < v3);
  }

  return 0;
}

uint64_t sub_100042EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, double a6)
{
  sub_100016114(v52, 1, *(a2 + 20));
  v52[0] = &off_1000A1C58;
  if (*(a2 + 20))
  {
    v12 = 0;
    do
    {
      sub_1000280A4(a2, v12, &v41);
      sub_1000280A4(a3, v12, &v49);
      v13 = 0;
      v46 = 0;
      v47 = 0;
      v14 = a1;
      v48 = 0;
      do
      {
        v15 = 0;
        v16 = 0.0;
        v17 = v14;
        do
        {
          v18 = *v17;
          v17 += 3;
          v16 = v16 + *(&v49 + v15) * v18;
          v15 += 8;
        }

        while (v15 != 24);
        *(&v46 + v13++) = v16;
        ++v14;
      }

      while (v13 != 3);
      v19 = 0;
      v20 = 0.0;
      do
      {
        v20 = v20 + *(&v46 + v19) * *(&v41 + v19);
        v19 += 8;
      }

      while (v19 != 24);
      *(v52[1] + 8 * v12++) = v20;
    }

    while (v12 < *(a2 + 20));
  }

  sub_100019250(a1, a2, &v49);
  v21 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = &v41;
  do
  {
    v23 = 0;
    v24 = v22;
    do
    {
      *v24 = *(a1 + v23);
      v24 = (v24 + 24);
      v23 += 8;
    }

    while (v23 != 24);
    ++v21;
    v22 = (v22 + 8);
    a1 += 24;
  }

  while (v21 != 3);
  sub_100019250(&v41, a3, &v46);
  sub_100034A9C(&v49, &v49);
  sub_100034A9C(&v46, &v46);
  sub_10003430C(v52, v52, v38);
  LODWORD(v42) = 1;
  DWORD1(v42) = v51;
  v35 = 1;
  v36 = v51;
  v37 = 0;
  *&v41 = off_1000A1C28;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v34[0] = &off_1000A1C58;
  v34[1] = v50;
  sub_100016068(&v41);
  LODWORD(v42) = 1;
  DWORD1(v42) = v51;
  v31 = 1;
  v32 = v51;
  v33 = 0;
  *&v41 = off_1000A1C28;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v29 = &off_1000A1C58;
  v30 = v50 + 8 * v51;
  sub_100016068(&v41);
  sub_10004383C(v34, &v29);
  sub_100016068(&v29);
  LODWORD(v42) = 1;
  DWORD1(v42) = HIDWORD(v48);
  v31 = 1;
  v32 = HIDWORD(v48);
  v33 = 0;
  *&v41 = off_1000A1C28;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v29 = &off_1000A1C58;
  v30 = v47;
  sub_100016068(&v41);
  sub_10004383C(v34, &v29);
  sub_100016068(&v29);
  LODWORD(v42) = 1;
  DWORD1(v42) = HIDWORD(v48);
  v31 = 1;
  v32 = HIDWORD(v48);
  v33 = 0;
  *&v41 = off_1000A1C28;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v29 = &off_1000A1C58;
  v30 = v47 + 8 * HIDWORD(v48);
  sub_100016068(&v41);
  sub_10004383C(v34, &v29);
  sub_100016068(&v29);
  sub_100034968(v38, v34);
  *a5 = 0;
  v25 = v40;
  if (v40)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      if (fabs(*(v39 + 8 * v27)) < a6)
      {
        *(*(a4 + 8) + 4 * v26) = v27;
        v26 = *a5 + 1;
        *a5 = v26;
        v25 = v40;
      }

      ++v27;
    }

    while (v27 < v25);
  }

  sub_100016068(v34);
  sub_100016068(v38);
  sub_100016068(&v46);
  sub_100016068(&v49);
  sub_100016068(v52);
  return 0;
}

void sub_1000432E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_100016068(&a13);
  sub_100016068(&a17);
  sub_100016068(&a31);
  sub_100016068(v31 - 160);
  sub_100016068(v31 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_100043350(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8, double a9, double a10, uint64_t a11, unsigned int *a12)
{
  v20 = *(a1 + 20);
  sub_10003D3C8(v45, a6);
  v21 = 0;
  v32 = 0;
  *a12 = 0;
  v44 = 0;
  v43 = 0;
  v22 = 1.0;
  do
  {
    if (v22 <= v21)
    {
      break;
    }

    v34 = v21;
    v42 = 0;
    v23 = 1;
    v24 = 1;
    memset(v41, 0, sizeof(v41));
    while (v23)
    {
      sub_1000368AC(&v37, 1, a3);
      v37 = &off_1000A2740;
      sub_100042E18(v20, v45, &v37);
      if (!a7)
      {
        goto LABEL_13;
      }

      if (a3)
      {
        v25 = (v40 * v39);
        v26 = __src;
        v27 = a3;
        while (1)
        {
          if (!v25 || (v28 = *v26, *(a8 + 20) * *(a8 + 16) <= v28))
          {
            __assert_rtn("operator()", "Matrix.hpp", 131, "index < m_rows * m_cols");
          }

          if (*(*(a8 + 8) + v28))
          {
            break;
          }

          --v25;
          ++v26;
          if (!--v27)
          {
            goto LABEL_12;
          }
        }

LABEL_13:
        sub_100016114(v36, 3, a3);
        *v36 = &off_1000A1DE0;
        sub_100016114(v35, 3, a3);
        v35[0] = &off_1000A1DE0;
        sub_100036800(v36, a1, &v37);
        sub_100036800(v35, a2, &v37);
        sub_100041A50(v36, v35, v41, &v43, &v44, a10);
        if (a7)
        {
          v23 = !v43;
        }

        else
        {
          v23 = 0;
        }

        sub_100016068(v35);
        sub_100016068(v36);
        goto LABEL_17;
      }

LABEL_12:
      v23 = 1;
LABEL_17:
      ++v24;
      sub_100025998(&v37);
      if (v24 > a4)
      {
        break;
      }
    }

    sub_1000368AC(&v37, 1, *(a1 + 20));
    v37 = &off_1000A2740;
    v36[0] = 0;
    sub_100042EBC(v41, a1, a2, &v37, v36, a9);
    v29 = v36[0];
    if (v36[0] > *a12)
    {
      sub_1000176C8(a11, v39, v40);
      memcpy(*(a11 + 8), __src, 4 * *(a11 + 16) * *(a11 + 20));
      *a12 = v29;
      v30 = pow(v29 / v20, a3);
      v32 = 1;
      v22 = -6.90775528 / log(fmin(fmax(1.0 - v30, 2.22e-16), 1.0));
    }

    v21 = v34 + 1;
    sub_100025998(&v37);
  }

  while (v34 + 1 <= a5);
  nullsub_15(v45);
  return (v32 & 1u) - 1;
}