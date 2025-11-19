void sub_10002CCF4(_Unwind_Exception *a1)
{
  *(v1 + 65) = off_100432BB8;
  *(v1 + 51) = off_100432BB8;
  *(v1 + 37) = off_100432BB8;
  *(v1 + 29) = off_100432BB8;
  cnframework::TimestampedEvent::~TimestampedEvent(v1);
  _Unwind_Resume(a1);
}

void sub_10002CDF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

uint64_t sub_10002CEF8(uint64_t a1)
{
  if ((*(a1 + 280) & 1) == 0)
  {
    if (*(a1 + 201) != 1 || *(a1 + 202) != 1)
    {
      v1 = 0;
      return v1 & 1;
    }

    v178 = 0uLL;
    v179 = 0;
    v176 = *(a1 + 208);
    v177 = *(a1 + 224);
    if (!cnnavigation::LLAToECEF())
    {
      *(a1 + 288) = v178;
      *(a1 + 304) = v179;
      v169 = 0x300000003;
      v168 = xmmword_1003C6D30;
      v167[9] = off_100432B60;
      v170 = v171;
      v4 = *(a1 + 248);
      v5 = *(a1 + 256);
      v171[0] = *(a1 + 232);
      *(&v3 + 1) = *(&v171[0] + 1);
      *&v3 = v4;
      v171[1] = v3;
      v6 = *(a1 + 264);
      v172 = v5;
      v173 = v6;
      v174 = v4;
      v175 = v6;
      v165 = 0x300000003;
      v164 = xmmword_1003C6D30;
      v163[9] = off_100432B60;
      v166 = v167;
      *&v6 = *(a1 + 208);
      v7 = *(a1 + 216);
      v158 = 0;
      v161 = 0x300000003;
      v160 = xmmword_1003C6D30;
      v159 = off_100432B60;
      v162 = v163;
      if (v158 == 1)
      {
        *&v164 = v160;
        v8 = (DWORD1(v160) * v160);
        DWORD2(v164) = DWORD1(v160) * v160;
        HIDWORD(v164) = v160;
        v9 = DWORD2(v160);
        if (SDWORD2(v160) > 3)
        {
          v23 = v166;
          v24 = v162;
          v25 = (DWORD2(v160) - 1) >> 1;
          v26 = v162;
          v27 = v166;
          do
          {
            v28 = *v26++;
            *v27++ = v28;
            --v25;
          }

          while (v25);
          *&v23[v9 - 2] = *&v24[v9 - 2];
        }

        else if (v8 >= 1)
        {
          v10 = 0;
          v11 = v162;
          v12 = v166;
          if (v8 < 4)
          {
            goto LABEL_14;
          }

          if ((v166 - v162) < 0x20)
          {
            goto LABEL_14;
          }

          v10 = v8 & 0x7FFFFFFC;
          v13 = (v162 + 2);
          v14 = v166 + 2;
          v15 = v10;
          do
          {
            v16 = *v13;
            *(v14 - 1) = *(v13 - 1);
            *v14 = v16;
            v13 += 2;
            v14 += 2;
            v15 -= 4;
          }

          while (v15);
          if (v10 != v8)
          {
LABEL_14:
            v17 = v8 - v10;
            v18 = v10;
            v19 = &v12[v18];
            v20 = &v11[v18];
            do
            {
              v21 = *v20++;
              *v19++ = v21;
              --v17;
            }

            while (v17);
          }
        }
      }

      v147 = 0x300000003;
      v143[7] = off_100432B60;
      v29 = v149;
      v148 = v149;
      v30 = v168;
      v31 = v164;
      v144 = __PAIR64__(DWORD1(v168), v164);
      v32 = DWORD1(v168);
      v145 = DWORD1(v168) * v164;
      v146 = v164;
      v33.i64[0] = v168;
      v33.i64[1] = v164;
      v34 = v166;
      if (vmaxvq_u32(v33) > 5)
      {
        cblas_dgemm_NEWLAPACK();
        LODWORD(v35) = DWORD1(v164);
        LODWORD(v31) = v164;
      }

      else
      {
        v35 = DWORD1(v164);
        if (v164 && DWORD1(v168))
        {
          if (DWORD1(v164))
          {
            v36 = v170;
            v37 = v168;
            if (DWORD1(v164) > 3)
            {
              if (v164 == 1)
              {
                v80 = DWORD1(v164) - (DWORD1(v164) & 0xFFFFFFFC);
                if (DWORD1(v164) == (DWORD1(v164) & 0xFFFFFFFC))
                {
                  v81 = v170 + 1;
                  do
                  {
                    v82 = 0.0;
                    v83 = v34 + 1;
                    v84 = v81;
                    v85 = v35 & 0xFFFFFFFC;
                    do
                    {
                      v86 = vmulq_f64(v83[-1], v84[-1]);
                      v87 = vmulq_f64(*v83, *v84);
                      v82 = v82 + v86.f64[0] + v86.f64[1] + v87.f64[0] + v87.f64[1];
                      v84 += 2;
                      v83 += 2;
                      v85 -= 4;
                    }

                    while (v85);
                    *&v149[v80 * v31] = v82;
                    ++v80;
                    v81 = (v81 + 8 * v37);
                  }

                  while (v80 != v32);
                }

                else
                {
                  v121 = 0;
                  v122 = v170 + 1;
                  v123 = 8 * v168;
                  f64 = v170[2 * (DWORD1(v164) >> 2)].f64;
                  do
                  {
                    v125 = 0.0;
                    v126 = v34 + 1;
                    v127 = v122;
                    v128 = v35 & 0xFFFFFFFC;
                    do
                    {
                      v129 = vmulq_f64(v126[-1], v127[-1]);
                      v130 = vmulq_f64(*v126, *v127);
                      v125 = v125 + v129.f64[0] + v129.f64[1] + v130.f64[0] + v130.f64[1];
                      v127 += 2;
                      v126 += 2;
                      v128 -= 4;
                    }

                    while (v128);
                    v131 = v34[2 * (v35 >> 2)].f64;
                    v132 = f64;
                    v133 = v35 - (v35 & 0xFFFFFFFC);
                    do
                    {
                      v134 = *v132++;
                      v125 = v125 + *v131 * v134;
                      v131 += v31;
                      --v133;
                    }

                    while (v133);
                    *&v149[v121 * v31] = v125;
                    ++v121;
                    v122 = (v122 + v123);
                    f64 = (f64 + v123);
                  }

                  while (v121 != v32);
                }
              }

              else
              {
                v105 = 0;
                do
                {
                  v106 = 0;
                  v107 = v34;
                  do
                  {
                    v108 = 0.0;
                    v109 = v107;
                    v110 = v36;
                    v111 = v35;
                    do
                    {
                      v112 = *v110++;
                      v108 = v108 + *v109 * v112;
                      v109 += v31;
                      --v111;
                    }

                    while (v111);
                    *&v149[v105 * v31 + v106++] = v108;
                    ++v107;
                  }

                  while (v106 != v31);
                  ++v105;
                  v36 += v30;
                }

                while (v105 != v32);
              }
            }

            else
            {
              v38 = 0;
              v39 = 8 * v164;
              do
              {
                v40 = &v36[v38 * v30];
                v41 = v34;
                v42 = v29;
                v43 = v31;
                do
                {
                  v44 = *v41 * *v40 + 0.0;
                  if (v35 != 1)
                  {
                    v44 = v44 + v41[v31] * v40[1];
                    if (v35 != 2)
                    {
                      v44 = v44 + v41[2 * v31] * v40[2];
                    }
                  }

                  *v42++ = v44;
                  ++v41;
                  --v43;
                }

                while (v43);
                ++v38;
                v29 = (v29 + v39);
              }

              while (v38 != v32);
            }
          }

          else
          {
            bzero(v149, 8 * v164 * DWORD1(v168));
            LODWORD(v35) = 0;
          }
        }
      }

      v140 = 0x300000003;
      v135 = off_100432B60;
      v45 = v142;
      v141 = v142;
      v136 = v35;
      v137 = v31;
      v138 = v31 * v35;
      v139 = v35;
      if (v35 && v31)
      {
        v46 = 0;
        v47 = 0;
        v48 = HIDWORD(v164);
        v49 = v166;
        v50 = v31 - 1;
        do
        {
          if (v31 >= 0xA)
          {
            v51 = 0;
            if (v35 == 1 && v47 + v50 >= v47 && v48 * v47 + v50 >= v48 * v47 && (&v142[v47] - &v49[v48 * v47]) >= 0x20)
            {
              v55 = v31 & 0xFFFFFFFC;
              v56 = v47;
              v57 = v46;
              do
              {
                v58 = &v49[v57];
                v59 = *v58;
                v60 = v58[1];
                v61 = &v142[v56];
                *v61 = v59;
                v61[1] = v60;
                v57 += 4;
                v56 += 4;
                v55 -= 4;
              }

              while (v55);
              v51 = v31 & 0xFFFFFFFC;
              if (v31 == (v31 & 0xFFFFFFFC))
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
            v51 = 0;
          }

          v52 = v31 - v51;
          v53 = v47 + v35 * v51;
          v54 = v51 + v46;
          do
          {
            v142[v53] = v49[v54];
            v53 += v35;
            ++v54;
            --v52;
          }

          while (v52);
LABEL_38:
          ++v47;
          v46 += v48;
        }

        while (v47 != v35);
      }

      v154 = 0x300000003;
      v149[9] = off_100432B60;
      v62 = v156;
      v155 = v156;
      v64 = v144;
      v63 = HIDWORD(v144);
      v150 = v144;
      v151 = v31;
      v152 = v144 * v31;
      v153 = v144;
      if (v144 <= HIDWORD(v144))
      {
        v65 = HIDWORD(v144);
      }

      else
      {
        v65 = v144;
      }

      if (v35 <= v31)
      {
        v66 = v31;
      }

      else
      {
        v66 = v35;
      }

      if (v65 <= v66)
      {
        v65 = v66;
      }

      v67 = v148;
      if (v65 > 5)
      {
        cblas_dgemm_NEWLAPACK();
        v62 = v155;
        LODWORD(v64) = v153;
      }

      else if (v31 && v144)
      {
        if (HIDWORD(v144))
        {
          v68 = v35;
          if (HIDWORD(v144) > 3)
          {
            if (v144 == 1)
            {
              v88 = 0;
              v89 = HIDWORD(v144) & 0xFFFFFFFC;
              v90 = v143;
              v91 = 8 * v68;
              v92 = &v142[4 * (HIDWORD(v144) >> 2)];
              do
              {
                v93 = 0.0;
                v94 = v67 + 1;
                v95 = v90;
                v96 = v63 & 0xFFFFFFFC;
                if (v63 == v89)
                {
                  do
                  {
                    v97 = vmulq_f64(v94[-1], v95[-1]);
                    v98 = vmulq_f64(*v94, *v95);
                    v93 = v93 + v97.f64[0] + v97.f64[1] + v98.f64[0] + v98.f64[1];
                    v95 += 2;
                    v94 += 2;
                    v96 -= 4;
                  }

                  while (v96);
                }

                else
                {
                  do
                  {
                    v99 = vmulq_f64(v94[-1], v95[-1]);
                    v100 = vmulq_f64(*v94, *v95);
                    v93 = v93 + v99.f64[0] + v99.f64[1] + v100.f64[0] + v100.f64[1];
                    v95 += 2;
                    v94 += 2;
                    v96 -= 4;
                  }

                  while (v96);
                  v101 = v67[2 * (v63 >> 2)].f64;
                  v102 = v92;
                  v103 = v63 - (v63 & 0xFFFFFFFC);
                  do
                  {
                    v104 = *v102++;
                    v93 = v93 + *v101 * v104;
                    v101 += v64;
                    --v103;
                  }

                  while (v103);
                }

                *&v156[v88 * v64] = v93;
                ++v88;
                v90 = (v90 + v91);
                v92 = (v92 + v91);
              }

              while (v88 != v31);
            }

            else
            {
              v113 = 0;
              do
              {
                v114 = 0;
                v115 = v67;
                do
                {
                  v116 = 0.0;
                  v117 = v115;
                  v118 = v45;
                  v119 = v63;
                  do
                  {
                    v120 = *v118++;
                    v116 = v116 + *v117 * v120;
                    v117 += v64;
                    --v119;
                  }

                  while (v119);
                  *&v156[v113 * v64 + v114++] = v116;
                  ++v115;
                }

                while (v114 != v64);
                ++v113;
                v45 += v68;
              }

              while (v113 != v31);
            }
          }

          else
          {
            v69 = 0;
            v70 = 8 * v144;
            v71 = v156;
            do
            {
              v72 = &v142[v69 * v68];
              v73 = *v72;
              v74 = v67;
              v75 = v71;
              v76 = v64;
              do
              {
                v77 = *v74 * v73 + 0.0;
                if (v63 != 1)
                {
                  v77 = v77 + v74[v64] * v72[1];
                  if (v63 != 2)
                  {
                    v77 = v77 + v74[2 * v64] * v72[2];
                  }
                }

                *v75++ = v77;
                ++v74;
                --v76;
              }

              while (v76);
              ++v69;
              v71 = (v71 + v70);
            }

            while (v69 != v31);
          }
        }

        else
        {
          bzero(v156, 8 * v31 * v144);
        }
      }

      *(a1 + 312) = *v62;
      v78 = &v62[v64];
      *(a1 + 320) = *v78;
      v79 = &v62[2 * v64];
      *(a1 + 328) = *v79;
      *(a1 + 336) = v78[1];
      *(a1 + 344) = v62[((2 * v64) | 1)];
      *(a1 + 352) = v79[2];
      *(a1 + 280) = 1;
      cnnavigation::ENUToECEFJacobian::~ENUToECEFJacobian(&v157);
    }

    v1 = *(a1 + 280);
    return v1 & 1;
  }

  v1 = 1;
  return v1 & 1;
}

uint64_t sub_10002D988(uint64_t a1)
{
  v2 = *(a1 + 201);
  if ((v2 != 1 || (*(a1 + 202) & 1) == 0) && *(a1 + 280) == 1)
  {
    v176 = *(a1 + 288);
    v177 = *(a1 + 304);
    v174 = 0;
    v175 = 0uLL;
    if (cnnavigation::ECEFToLLA())
    {
      if (*(a1 + 201) != 1)
      {
LABEL_76:
        LOBYTE(v2) = 0;
        return v2 & 1;
      }

      goto LABEL_8;
    }

    *(a1 + 208) = v174;
    *(a1 + 216) = v175;
    v167 = 0x300000003;
    v166 = xmmword_1003C6D30;
    v165[9] = off_100432B60;
    v168 = v169;
    v5 = *(a1 + 328);
    v6 = *(a1 + 336);
    v169[0] = *(a1 + 312);
    *(&v4 + 1) = *(&v169[0] + 1);
    *&v4 = v5;
    v169[1] = v4;
    v7 = *(a1 + 344);
    v170 = v6;
    v171 = v7;
    v172 = v5;
    v173 = v7;
    v163 = 0x300000003;
    v162 = xmmword_1003C6D30;
    v161[9] = off_100432B60;
    v164 = v165;
    v156 = 0;
    v159 = 0x300000003;
    v158 = xmmword_1003C6D30;
    v157 = off_100432B60;
    v160 = v161;
    if (v156 == 1)
    {
      *&v162 = v158;
      v8 = (DWORD1(v158) * v158);
      DWORD2(v162) = DWORD1(v158) * v158;
      HIDWORD(v162) = v158;
      v9 = DWORD2(v158);
      if (SDWORD2(v158) > 3)
      {
        v22 = v164;
        v23 = v160;
        v24 = (DWORD2(v158) - 1) >> 1;
        v25 = v160;
        v26 = v164;
        do
        {
          v27 = *v25++;
          *v26++ = v27;
          --v24;
        }

        while (v24);
        *&v22[v9 - 2] = *&v23[v9 - 2];
      }

      else if (v8 >= 1)
      {
        v10 = 0;
        v11 = v160;
        v12 = v164;
        if (v8 < 4)
        {
          goto LABEL_18;
        }

        if ((v164 - v160) < 0x20)
        {
          goto LABEL_18;
        }

        v10 = v8 & 0x7FFFFFFC;
        v13 = (v160 + 2);
        v14 = v164 + 2;
        v15 = v10;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 4;
        }

        while (v15);
        if (v10 != v8)
        {
LABEL_18:
          v17 = v8 - v10;
          v18 = v10;
          v19 = &v12[v18];
          v20 = &v11[v18];
          do
          {
            v21 = *v20++;
            *v19++ = v21;
            --v17;
          }

          while (v17);
        }
      }
    }

    v145 = 0x300000003;
    v141[7] = off_100432B60;
    v28 = v147;
    v146 = v147;
    v29 = v162;
    v142 = __PAIR64__(DWORD1(v166), v162);
    v30 = DWORD1(v166);
    v143 = DWORD1(v166) * v162;
    v144 = v162;
    v31.i64[0] = v166;
    v31.i64[1] = v162;
    v32 = v164;
    if (vmaxvq_u32(v31) > 5)
    {
      cblas_dgemm_NEWLAPACK();
      LODWORD(v33) = DWORD1(v162);
      LODWORD(v29) = v162;
    }

    else
    {
      v33 = DWORD1(v162);
      if (v162 && DWORD1(v166))
      {
        if (DWORD1(v162))
        {
          v34 = v168;
          v35 = v166;
          if (DWORD1(v162) > 3)
          {
            if (v162 == 1)
            {
              v78 = DWORD1(v162) - (DWORD1(v162) & 0xFFFFFFFC);
              if (DWORD1(v162) == (DWORD1(v162) & 0xFFFFFFFC))
              {
                v79 = v168 + 1;
                do
                {
                  v80 = 0.0;
                  v81 = v32 + 1;
                  v82 = v79;
                  v83 = v33 & 0xFFFFFFFC;
                  do
                  {
                    v84 = vmulq_f64(v81[-1], v82[-1]);
                    v85 = vmulq_f64(*v81, *v82);
                    v80 = v80 + v84.f64[0] + v84.f64[1] + v85.f64[0] + v85.f64[1];
                    v82 += 2;
                    v81 += 2;
                    v83 -= 4;
                  }

                  while (v83);
                  *&v147[v78 * v29] = v80;
                  ++v78;
                  v79 = (v79 + 8 * v35);
                }

                while (v78 != v30);
              }

              else
              {
                v119 = 0;
                v120 = v168 + 1;
                v121 = 8 * v166;
                f64 = v168[2 * (DWORD1(v162) >> 2)].f64;
                do
                {
                  v123 = 0.0;
                  v124 = v32 + 1;
                  v125 = v120;
                  v126 = v33 & 0xFFFFFFFC;
                  do
                  {
                    v127 = vmulq_f64(v124[-1], v125[-1]);
                    v128 = vmulq_f64(*v124, *v125);
                    v123 = v123 + v127.f64[0] + v127.f64[1] + v128.f64[0] + v128.f64[1];
                    v125 += 2;
                    v124 += 2;
                    v126 -= 4;
                  }

                  while (v126);
                  v129 = v32[2 * (v33 >> 2)].f64;
                  v130 = f64;
                  v131 = v33 - (v33 & 0xFFFFFFFC);
                  do
                  {
                    v132 = *v130++;
                    v123 = v123 + *v129 * v132;
                    v129 += v29;
                    --v131;
                  }

                  while (v131);
                  *&v147[v119 * v29] = v123;
                  ++v119;
                  v120 = (v120 + v121);
                  f64 = (f64 + v121);
                }

                while (v119 != v30);
              }
            }

            else
            {
              v103 = 0;
              do
              {
                v104 = 0;
                v105 = v32;
                do
                {
                  v106 = 0.0;
                  v107 = v105;
                  v108 = v34;
                  v109 = v33;
                  do
                  {
                    v110 = *v108++;
                    v106 = v106 + *v107 * v110;
                    v107 += v29;
                    --v109;
                  }

                  while (v109);
                  *&v147[v103 * v29 + v104++] = v106;
                  ++v105;
                }

                while (v104 != v29);
                ++v103;
                v34 += v35;
              }

              while (v103 != v30);
            }
          }

          else
          {
            v36 = 0;
            v37 = 8 * v162;
            do
            {
              v38 = &v34[v36 * v35];
              v39 = v32;
              v40 = v28;
              v41 = v29;
              do
              {
                v42 = *v39 * *v38 + 0.0;
                if (v33 != 1)
                {
                  v42 = v42 + v39[v29] * v38[1];
                  if (v33 != 2)
                  {
                    v42 = v42 + v39[2 * v29] * v38[2];
                  }
                }

                *v40++ = v42;
                ++v39;
                --v41;
              }

              while (v41);
              ++v36;
              v28 = (v28 + v37);
            }

            while (v36 != v30);
          }
        }

        else
        {
          bzero(v147, 8 * v162 * DWORD1(v166));
          LODWORD(v33) = 0;
        }
      }
    }

    v138 = 0x300000003;
    v133 = off_100432B60;
    v43 = v140;
    v139 = v140;
    v134 = v33;
    v135 = v29;
    v136 = v29 * v33;
    v137 = v33;
    if (v33 && v29)
    {
      v44 = 0;
      v45 = 0;
      v46 = HIDWORD(v162);
      v47 = v164;
      v48 = v29 - 1;
      do
      {
        if (v29 >= 0xA)
        {
          v49 = 0;
          if (v33 == 1 && v45 + v48 >= v45 && v46 * v45 + v48 >= v46 * v45 && (&v140[v45] - &v47[v46 * v45]) >= 0x20)
          {
            v53 = v29 & 0xFFFFFFFC;
            v54 = v45;
            v55 = v44;
            do
            {
              v56 = &v47[v55];
              v57 = *v56;
              v58 = v56[1];
              v59 = &v140[v54];
              *v59 = v57;
              v59[1] = v58;
              v55 += 4;
              v54 += 4;
              v53 -= 4;
            }

            while (v53);
            v49 = v29 & 0xFFFFFFFC;
            if (v29 == (v29 & 0xFFFFFFFC))
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          v49 = 0;
        }

        v50 = v29 - v49;
        v51 = v45 + v33 * v49;
        v52 = v49 + v44;
        do
        {
          v140[v51] = v47[v52];
          v51 += v33;
          ++v52;
          --v50;
        }

        while (v50);
LABEL_40:
        ++v45;
        v44 += v46;
      }

      while (v45 != v33);
    }

    v152 = 0x300000003;
    v147[9] = off_100432B60;
    v60 = v154;
    v153 = v154;
    v62 = v142;
    v61 = HIDWORD(v142);
    v148 = v142;
    v149 = v29;
    v150 = v142 * v29;
    v151 = v142;
    if (v142 <= HIDWORD(v142))
    {
      v63 = HIDWORD(v142);
    }

    else
    {
      v63 = v142;
    }

    if (v33 <= v29)
    {
      v64 = v29;
    }

    else
    {
      v64 = v33;
    }

    if (v63 <= v64)
    {
      v63 = v64;
    }

    v65 = v146;
    if (v63 > 5)
    {
      cblas_dgemm_NEWLAPACK();
      v60 = v153;
      LODWORD(v62) = v151;
    }

    else if (v29 && v142)
    {
      if (HIDWORD(v142))
      {
        v66 = v33;
        if (HIDWORD(v142) > 3)
        {
          if (v142 == 1)
          {
            v86 = 0;
            v87 = HIDWORD(v142) & 0xFFFFFFFC;
            v88 = v141;
            v89 = 8 * v66;
            v90 = &v140[4 * (HIDWORD(v142) >> 2)];
            do
            {
              v91 = 0.0;
              v92 = v65 + 1;
              v93 = v88;
              v94 = v61 & 0xFFFFFFFC;
              if (v61 == v87)
              {
                do
                {
                  v95 = vmulq_f64(v92[-1], v93[-1]);
                  v96 = vmulq_f64(*v92, *v93);
                  v91 = v91 + v95.f64[0] + v95.f64[1] + v96.f64[0] + v96.f64[1];
                  v93 += 2;
                  v92 += 2;
                  v94 -= 4;
                }

                while (v94);
              }

              else
              {
                do
                {
                  v97 = vmulq_f64(v92[-1], v93[-1]);
                  v98 = vmulq_f64(*v92, *v93);
                  v91 = v91 + v97.f64[0] + v97.f64[1] + v98.f64[0] + v98.f64[1];
                  v93 += 2;
                  v92 += 2;
                  v94 -= 4;
                }

                while (v94);
                v99 = v65[2 * (v61 >> 2)].f64;
                v100 = v90;
                v101 = v61 - (v61 & 0xFFFFFFFC);
                do
                {
                  v102 = *v100++;
                  v91 = v91 + *v99 * v102;
                  v99 += v62;
                  --v101;
                }

                while (v101);
              }

              *&v154[v86 * v62] = v91;
              ++v86;
              v88 = (v88 + v89);
              v90 = (v90 + v89);
            }

            while (v86 != v29);
          }

          else
          {
            v111 = 0;
            do
            {
              v112 = 0;
              v113 = v65;
              do
              {
                v114 = 0.0;
                v115 = v113;
                v116 = v43;
                v117 = v61;
                do
                {
                  v118 = *v116++;
                  v114 = v114 + *v115 * v118;
                  v115 += v62;
                  --v117;
                }

                while (v117);
                *&v154[v111 * v62 + v112++] = v114;
                ++v113;
              }

              while (v112 != v62);
              ++v111;
              v43 += v66;
            }

            while (v111 != v29);
          }
        }

        else
        {
          v67 = 0;
          v68 = 8 * v142;
          v69 = v154;
          do
          {
            v70 = &v140[v67 * v66];
            v71 = *v70;
            v72 = v65;
            v73 = v69;
            v74 = v62;
            do
            {
              v75 = *v72 * v71 + 0.0;
              if (v61 != 1)
              {
                v75 = v75 + v72[v62] * v70[1];
                if (v61 != 2)
                {
                  v75 = v75 + v72[2 * v62] * v70[2];
                }
              }

              *v73++ = v75;
              ++v72;
              --v74;
            }

            while (v74);
            ++v67;
            v69 = (v69 + v68);
          }

          while (v67 != v29);
        }
      }

      else
      {
        bzero(v154, 8 * v29 * v142);
      }
    }

    *(a1 + 232) = *v60;
    v76 = &v60[v62];
    *(a1 + 240) = *v76;
    v77 = &v60[2 * v62];
    *(a1 + 248) = *v77;
    *(a1 + 256) = v76[1];
    *(a1 + 264) = v60[((2 * v62) | 1)];
    *(a1 + 272) = v77[2];
    *(a1 + 201) = 257;
    cnnavigation::ECEFToENUJacobian::~ECEFToENUJacobian(&v155);
    if ((*(a1 + 201) & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_8:
    LOBYTE(v2) = *(a1 + 202);
    return v2 & 1;
  }

  if (*(a1 + 201))
  {
    goto LABEL_8;
  }

  return v2 & 1;
}

uint64_t sub_10002E414(uint64_t a1, double a2)
{
  *a1 = off_100432BE8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 408), 0, 0.0);
  (*(*a1 + 32))(a1);
  return a1;
}

void sub_10002E4AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 400) == 1)
  {
    cnframework::TimestampedEvent::~TimestampedEvent(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002E4CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 40;
  if ((*(a1 + 400) & 1) == 0)
  {
    goto LABEL_14;
  }

  v5 = (*(*a2 + 16))(a2);
  v7 = *(a1 + 408);
  if (!v7)
  {
    v8 = *(a1 + 416);
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_11:
      if (v8 > v6)
      {
        goto LABEL_12;
      }

LABEL_18:
      *buf = *(a2 + 208);
      v311[0] = *(a1 + 248);
      if (sub_1000BC5F0(buf, v311) < 1.0)
      {
LABEL_19:
        result = (*(*a2 + 16))(a2);
        goto LABEL_16;
      }

      v12 = *(a1 + 8);
      *buf = (*(*a2 + 16))(a2);
      *&buf[8] = v13;
      v14 = CNTimeSpan::operator-();
      if (v12 < v15 + v14)
      {
        (*(*a1 + 32))(a1);
        if (*(a1 + 400) == 1)
        {
          memcpy((a1 + 48), (a2 + 8), 0x160uLL);
        }

        else
        {
          *(a1 + 40) = &off_1004331A8;
          memcpy((a1 + 48), (a2 + 8), 0x160uLL);
          *(a1 + 400) = 1;
        }

        goto LABEL_19;
      }

      if ((*(a1 + 400) & 1) == 0)
      {
        sub_100031240();
      }

      if (*(a1 + 320) != 1 || (*(a2 + 280) & 1) == 0)
      {
        if (qword_10045B050 != -1)
        {
          sub_100382F60();
        }

        v29 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Can't compute course estimation from incomplete position events", buf, 2u);
        }

        *(a1 + 16) = 0;
        *(a1 + 24) = v12;
        *(a1 + 32) = 0;
        if (*(a1 + 400) != 1)
        {
          goto LABEL_85;
        }

        goto LABEL_42;
      }

      *&v16 = 0x100000003;
      v307 = 0x100000003;
      v306 = xmmword_1003C6DC0;
      v305 = off_100432C88;
      v308 = v309;
      v17 = *(a1 + 336);
      v309[0] = *(a1 + 328);
      v309[1] = v17;
      v310 = *(a1 + 344);
      v301 = 0x100000003;
      v300 = xmmword_1003C6DC0;
      v299[9] = off_100432C88;
      v302 = &v303;
      v303 = *(a2 + 288);
      v304 = *(a2 + 304);
      v297 = 0x300000003;
      v296 = xmmword_1003C6D30;
      v295 = off_100432B60;
      v298 = v299;
      v294 = 0;
      memset(v311, 0, 24);
      *buf = v309[0];
      *&buf[8] = v17;
      *&buf[16] = v310;
      if (!cnnavigation::ECEFToLLA())
      {
        (v293[2])(&v293, *v311, *(v311 + 1));
      }

      if ((v294 & 1) == 0)
      {
        if (qword_10045B050 != -1)
        {
          sub_100382F60();
        }

        v30 = qword_10045B058;
        v31 = 0.0;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          v32 = (*(*v4 + 16))(v4);
          *buf = 134283521;
          *&buf[4] = v33 + v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "jEcef2Enu computation failed for position event at %{private}.3lf", buf, 0xCu);
        }

        goto LABEL_83;
      }

      v289 = 0x300000003;
      v286[0] = off_100432B60;
      v290 = v291;
      v18 = v296;
      v19 = DWORD1(v296);
      v286[1] = v296;
      v20 = (DWORD1(v296) * v296);
      v287 = DWORD1(v296) * v296;
      v288 = v296;
      v21 = DWORD2(v296);
      if (SDWORD2(v296) > 3)
      {
        v34 = v298;
        v35 = (DWORD2(v296) - 1) >> 1;
        v36 = v298;
        v37 = v291;
        do
        {
          v38 = *v36++;
          *v37++ = v38;
          --v35;
        }

        while (v35);
        *&v291[v21 - 2] = *&v34[v21 - 2];
      }

      else
      {
        if (v20 < 1)
        {
          goto LABEL_51;
        }

        v22 = v298;
        if (v20 < 6 || (v286 - v298 + 40) < 0x20)
        {
          v23 = 0;
LABEL_34:
          v24 = v20 - v23;
          v25 = v23;
          v26 = &v286[v23 + 5];
          v27 = &v22[v25];
          do
          {
            v28 = *v27++;
            *v26++ = v28;
            --v24;
          }

          while (v24);
          goto LABEL_51;
        }

        v23 = v20 & 0x7FFFFFFC;
        v183 = (v298 + 2);
        v184 = v292;
        v185 = v23;
        do
        {
          v186 = *v183;
          *(v184 - 1) = *(v183 - 1);
          *v184 = v186;
          v183 += 2;
          v184 += 2;
          v185 -= 4;
        }

        while (v185);
        if (v23 != v20)
        {
          goto LABEL_34;
        }
      }

LABEL_51:
      v282 = 0x100000003;
      v279[3] = off_100432C88;
      v39 = v284;
      v283 = v284;
      v40 = v300;
      v41 = DWORD1(v300);
      v279[4] = v300;
      v42 = (DWORD1(v300) * v300);
      v280 = v42;
      v281 = v300;
      if (v42 > 3)
      {
        v49 = v302;
        v50 = v308;
        v51 = (v42 - 1) >> 1;
        v52 = v302;
        v53 = v308;
        v54 = v284;
        do
        {
          v55 = *v52++;
          v56 = v55;
          v57 = *v53++;
          *v54++ = vsubq_f64(v56, v57);
          --v51;
        }

        while (v51);
        *&v284[(v42 - 2)] = vsubq_f64(*(v49 + 8 * (v42 - 2)), *&v50[(v42 - 2)]);
      }

      else if (v42 >= 1)
      {
        v43 = v302;
        v44 = v308;
        v45 = v284;
        do
        {
          v46 = *v43++;
          v47 = v46;
          v48 = *v44++;
          *v45++ = v47 - v48;
          --v42;
        }

        while (v42);
      }

      v277 = 0x100000003;
      *&v272[2] = off_100432C88;
      v58 = v279;
      v278 = v279;
      v273 = v18;
      v274 = v41;
      v275 = v41 * v18;
      v276 = v18;
      if (v18 <= v19)
      {
        v59 = v19;
      }

      else
      {
        v59 = v18;
      }

      if (v40 <= v41)
      {
        v60 = v41;
      }

      else
      {
        v60 = v40;
      }

      if (v59 <= v60)
      {
        v59 = v60;
      }

      if (v59 > 5)
      {
        cblas_dgemm_NEWLAPACK();
        v58 = v278;
      }

      else if (v18 && v41)
      {
        if (v19)
        {
          v61 = 8 * v18;
          if (v19 >= 4)
          {
            v187 = 0;
            v188 = 8 * v40;
            v189 = &v285;
            do
            {
              v190 = &v279[v187 * v18];
              if (v18 == 1)
              {
                v191 = 0.0;
                v192 = v292;
                v193 = v189;
                v194 = v19 & 0xFFFFFFFC;
                do
                {
                  v195 = vmulq_f64(v192[-1], v193[-1]);
                  v196 = vmulq_f64(*v192, *v193);
                  v191 = v191 + v195.f64[0] + v195.f64[1] + v196.f64[0] + v196.f64[1];
                  v193 += 2;
                  v192 += 2;
                  v194 -= 4;
                }

                while (v194);
                if ((v19 & 0xFFFFFFFC) != v19)
                {
                  v197 = &v291[4 * (v19 >> 2)];
                  v198 = v19 & 0xFFFFFFFC;
                  do
                  {
                    v191 = v191 + *v197 * v39[v198++];
                    v197 = (v197 + v61);
                  }

                  while (v19 != v198);
                }

                *v190 = v191;
              }

              else
              {
                v199 = 0;
                v200 = v291;
                do
                {
                  v201 = 0.0;
                  v202 = v200;
                  v203 = v39;
                  v204 = v19;
                  do
                  {
                    v205 = *v203++;
                    v201 = v201 + *v202 * v205;
                    v202 = (v202 + v61);
                    --v204;
                  }

                  while (v204);
                  v190[v199++] = v201;
                  ++v200;
                }

                while (v199 != v18);
              }

              ++v187;
              v39 = (v39 + v188);
              v189 = (v189 + v188);
            }

            while (v187 != v41);
          }

          else
          {
            v62 = 0;
            v63 = v279;
            do
            {
              v64 = &v284[v62 * v40];
              v65 = *v64;
              v66 = v291;
              v67 = v63;
              v68 = v18;
              do
              {
                v69 = *v66 * v65 + 0.0;
                if (v19 != 1)
                {
                  v69 = v69 + v66[v18] * v64[1];
                  if (v19 != 2)
                  {
                    v69 = v69 + v66[2 * v18] * v64[2];
                  }
                }

                *v67++ = v69;
                ++v66;
                --v68;
              }

              while (v68);
              ++v62;
              v63 = (v63 + v61);
            }

            while (v62 != v41);
          }
        }

        else
        {
          bzero(v279, 8 * v18 * v41);
        }
      }

      v16 = *v58;
      v70 = *(v58 + 1);
      v71 = hypot(*v58, v70);
      v31 = 0.0;
      if (v71 < 1.0 || fabs(v16) <= 0.005 && fabs(v70) <= 0.005)
      {
LABEL_83:
        v72 = 0;
        goto LABEL_84;
      }

      v73 = v71;
      v74 = atan2(v16, v70);
      if (v74 >= 0.0)
      {
        v16 = v74;
      }

      else
      {
        v16 = v74 + 6.28318531;
      }

      v270 = 0x200000001;
      v269 = xmmword_1003C6DD0;
      v268[9] = off_100432CD0;
      v271 = v272;
      v75 = 1.0 / (v73 * v73);
      v272[0] = v70 * v75;
      v272[1] = -(*v58 * v75);
      v266 = 0x300000003;
      v265 = xmmword_1003C6D30;
      v76 = v268;
      v264[9] = off_100432B60;
      v267 = v268;
      v262 = 0x300000003;
      v261 = xmmword_1003C6D30;
      v260[9] = off_100432B60;
      v263 = v264;
      *buf = &off_1004331A8;
      memcpy(&buf[8], (a1 + 48), 0x160uLL);
      if ((buf[280] & 1) == 0)
      {
        if (!sub_10002CEF8(buf))
        {
LABEL_94:
          *&v311[0] = &off_1004331A8;
          memcpy(v311 + 8, (a2 + 8), 0x160uLL);
          if ((BYTE8(v311[17]) & 1) != 0 || sub_10002CEF8(v311))
          {
            v261 = xmmword_1003C6D30;
            v77 = v263;
            *v263 = *(&v311[19] + 1);
            v77[3] = *&v311[20];
            v77[6] = *(&v311[20] + 1);
            v77[1] = *&v311[20];
            v77[4] = *&v311[21];
            v77[7] = *(&v311[21] + 1);
            v77[2] = *(&v311[20] + 1);
            v77[5] = *(&v311[21] + 1);
            v77[8] = *&v311[22];
          }

          v258 = 0x300000003;
          v255[0] = off_100432B60;
          v78 = v260;
          v259 = v260;
          v255[1] = v265;
          v79 = (DWORD1(v265) * v265);
          v256 = v79;
          v257 = v265;
          if (v79 > 3)
          {
            v85 = v267;
            v86 = v263;
            v87 = (v79 - 1) >> 1;
            v88 = v267;
            v89 = v263;
            v90 = v260;
            do
            {
              v91 = *v88++;
              v92 = v91;
              v93 = *v89++;
              *v90++ = vaddq_f64(v92, v93);
              --v87;
            }

            while (v87);
            *&v260[(v79 - 2)] = vaddq_f64(*&v85[(v79 - 2)], *&v86[(v79 - 2)]);
          }

          else if (v79 >= 1)
          {
            v80 = v267;
            v81 = v263;
            do
            {
              v82 = *v80++;
              v83 = v82;
              v84 = *v81++;
              *v78++ = v83 + v84;
              --v79;
            }

            while (v79);
          }

          v252 = 0x300000003;
          v251 = xmmword_1003C6D30;
          v250 = off_100432B60;
          v253 = &v254;
          sub_10002FCE4(&v293, v255, &v250);
          if ((atomic_load_explicit(&qword_10045C5F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045C5F8))
          {
            v240 = 0x200000001;
            v238 = off_100432DA0;
            v241 = v242;
            v239 = xmmword_1003C6DD0;
            v242[0] = &_mh_execute_header;
            sub_1000304FC(&v238, &unk_10045C600);
            __cxa_atexit(sub_1000305AC, &unk_10045C600, &_mh_execute_header);
            __cxa_guard_release(&qword_10045C5F8);
          }

          sub_100030B3C(&v238, &v250, &unk_10045C600, &unk_10045C600);
          v246 = 0x200000002;
          v243[0] = off_100432E48;
          v95 = v239;
          v94 = DWORD1(v239);
          v243[1] = v239;
          v96 = (DWORD1(v239) * v239);
          v244 = DWORD1(v239) * v239;
          v245 = v239;
          v97 = v248;
          v247 = v248;
          v98 = DWORD2(v239);
          if (SDWORD2(v239) > 3)
          {
            v106 = v241;
            v107 = (DWORD2(v239) - 1) >> 1;
            v108 = v241;
            v109 = v248;
            do
            {
              v110 = *v108++;
              *v109++ = v110;
              --v107;
            }

            while (v107);
            *&v248[v98 - 2] = *&v106[v98 - 2];
          }

          else
          {
            if (v96 < 1)
            {
              goto LABEL_117;
            }

            v99 = v241;
            if (v96 < 6 || (v243 - v241 + 40) < 0x20)
            {
              v100 = 0;
LABEL_111:
              v101 = v96 - v100;
              v102 = v100;
              v103 = &v243[v100 + 5];
              v104 = &v99[v102];
              do
              {
                v105 = *v104++;
                *v103++ = v105;
                --v101;
              }

              while (v101);
              goto LABEL_117;
            }

            v100 = v96 & 0x7FFFFFFC;
            v206 = (v241 + 2);
            v207 = v249;
            v208 = v100;
            do
            {
              v209 = *v206;
              *(v207 - 1) = *(v206 - 1);
              *v207 = v209;
              v206 += 2;
              v207 += 2;
              v208 -= 4;
            }

            while (v208);
            if (v100 != v96)
            {
              goto LABEL_111;
            }
          }

LABEL_117:
          v240 = 0x200000001;
          v238 = off_100432CD0;
          v111 = v242;
          v241 = v242;
          v112 = v269;
          v113 = DWORD1(v269);
          *&v239 = __PAIR64__(v94, v269);
          DWORD2(v239) = v269 * v94;
          HIDWORD(v239) = v269;
          if (v269 <= DWORD1(v269))
          {
            v114 = DWORD1(v269);
          }

          else
          {
            v114 = v269;
          }

          if (v95 <= v94)
          {
            v115 = v94;
          }

          else
          {
            v115 = v95;
          }

          if (v114 <= v115)
          {
            v114 = v115;
          }

          v116 = v271;
          if (v114 > 5)
          {
            cblas_dgemm_NEWLAPACK();
            LODWORD(v113) = DWORD1(v269);
            LODWORD(v112) = v269;
          }

          else if (v94 && v269)
          {
            if (DWORD1(v269))
            {
              v117 = 8 * v269;
              if (DWORD1(v269) >= 4)
              {
                v210 = 0;
                v211 = 8 * v95;
                v212 = v249;
                do
                {
                  v213 = &v242[v210 * v112];
                  if (v112 == 1)
                  {
                    v214 = 0.0;
                    v215 = v116 + 1;
                    v216 = v212;
                    v217 = v113 & 0xFFFFFFFC;
                    do
                    {
                      v218 = vmulq_f64(v215[-1], v216[-1]);
                      v219 = vmulq_f64(*v215, *v216);
                      v214 = v214 + v218.f64[0] + v218.f64[1] + v219.f64[0] + v219.f64[1];
                      v216 += 2;
                      v215 += 2;
                      v217 -= 4;
                    }

                    while (v217);
                    if ((v113 & 0xFFFFFFFC) != v113)
                    {
                      f64 = v116[2 * (v113 >> 2)].f64;
                      v221 = v113 & 0xFFFFFFFC;
                      do
                      {
                        v214 = v214 + *f64 * v97[v221++];
                        f64 = (f64 + v117);
                      }

                      while (v113 != v221);
                    }

                    *v213 = v214;
                  }

                  else
                  {
                    v222 = 0;
                    v223 = v116;
                    do
                    {
                      v224 = 0.0;
                      v225 = v223;
                      v226 = v97;
                      v227 = v113;
                      do
                      {
                        v228 = *v226++;
                        v224 = v224 + *v225 * v228;
                        v225 = (v225 + v117);
                        --v227;
                      }

                      while (v227);
                      v213[v222++] = v224;
                      ++v223;
                    }

                    while (v222 != v112);
                  }

                  ++v210;
                  v97 = (v97 + v211);
                  v212 = (v212 + v211);
                }

                while (v210 != v94);
              }

              else
              {
                for (i = 0; i != v94; ++i)
                {
                  v119 = &v248[i * v95];
                  v120 = *v119;
                  v121 = v116;
                  v122 = v111;
                  v123 = v112;
                  do
                  {
                    v124 = *v121 * v120 + 0.0;
                    if (v113 != 1)
                    {
                      v124 = v124 + v121[v112] * v119[1];
                      if (v113 != 2)
                      {
                        v124 = v124 + v121[2 * v112] * v119[2];
                      }
                    }

                    *v122++ = v124;
                    ++v121;
                    --v123;
                  }

                  while (v123);
                  v111 = (v111 + v117);
                }
              }
            }

            else
            {
              bzero(v242, 8 * v94 * v269);
              LODWORD(v113) = 0;
            }
          }

          if (!v113 || !v112)
          {
LABEL_155:
            v235 = 0x100000001;
            v230 = off_100432E78;
            v141 = &v237;
            v236 = &v237;
            v142 = v239;
            v143 = DWORD1(v239);
            v231 = v239;
            v232 = v112;
            v233 = v239 * v112;
            v234 = v239;
            if (v239 <= DWORD1(v239))
            {
              v144 = DWORD1(v239);
            }

            else
            {
              v144 = v239;
            }

            if (v113 <= v112)
            {
              v145 = v112;
            }

            else
            {
              v145 = v113;
            }

            if (v144 <= v145)
            {
              v144 = v145;
            }

            v146 = v241;
            if (v144 > 5)
            {
              cblas_dgemm_NEWLAPACK();
              v141 = v236;
            }

            else if (v112 && v239)
            {
              v147 = v112;
              if (DWORD1(v239))
              {
                v148 = 0;
                v149 = v113;
                v150 = DWORD1(v239) & 0xFFFFFFFC;
                v151 = 8 * v113;
                v152 = 8 * v239;
                v153 = &v230;
                v154 = &v237;
                v155 = v229;
                do
                {
                  if (v143 > 3)
                  {
                    v162 = (&v237 + v148 * v142);
                    if (v142 == 1)
                    {
                      v163 = 0.0;
                      v164 = v146 + 1;
                      v165 = v153;
                      v166 = v143 & 0xFFFFFFFC;
                      do
                      {
                        v167 = vmulq_f64(v164[-1], v165[-1]);
                        v168 = vmulq_f64(*v164, *v165);
                        v163 = v163 + v167.f64[0] + v167.f64[1] + v168.f64[0] + v168.f64[1];
                        v165 += 2;
                        v164 += 2;
                        v166 -= 4;
                      }

                      while (v166);
                      if (v150 != v143)
                      {
                        v169 = v146[2 * (v143 >> 2)].f64;
                        v170 = v143 & 0xFFFFFFFC;
                        do
                        {
                          v163 = v163 + *v169 * v155[v170++];
                          v169 = (v169 + v152);
                        }

                        while (v143 != v170);
                      }

                      *v162 = v163;
                    }

                    else
                    {
                      v171 = 0;
                      v172 = v146;
                      do
                      {
                        v173 = 0.0;
                        v174 = v172;
                        v175 = v155;
                        v176 = v143;
                        do
                        {
                          v177 = *v175++;
                          v173 = v173 + *v174 * v177;
                          v174 = (v174 + v152);
                          --v176;
                        }

                        while (v176);
                        v162[v171++] = v173;
                        ++v172;
                      }

                      while (v171 != v142);
                    }
                  }

                  else
                  {
                    v156 = &v229[v148 * v149];
                    v157 = *v156;
                    v158 = v146;
                    v159 = v154;
                    v160 = v142;
                    do
                    {
                      v161 = *v158 * v157 + 0.0;
                      if (v143 != 1)
                      {
                        v161 = v161 + v158[v142] * v156[1];
                        if (v143 != 2)
                        {
                          v161 = v161 + v158[2 * v142] * v156[2];
                        }
                      }

                      *v159++ = v161;
                      ++v158;
                      --v160;
                    }

                    while (v160);
                  }

                  ++v148;
                  v155 = (v155 + v151);
                  v153 = (v153 + v151);
                  v154 = (v154 + v152);
                }

                while (v148 != v147);
              }

              else
              {
                bzero(&v237, 8 * v112 * v239);
              }
            }

            v178 = *v141 & 0x7FFFFFFFFFFFFFFFLL;
            v31 = 0.0;
            if ((*v141 <= -1 || (v178 - 0x10000000000000) >> 53 >= 0x3FF) && (*v141 - 1) >= 0xFFFFFFFFFFFFFLL)
            {
              v181 = v178 == 0;
              *v141;
            }

            else
            {
              v181 = 1;
            }

            if (v181 && (v182 = sqrt(*v141), v182 <= 1.57079633))
            {
              v31 = sub_1000BC014(v16);
              v16 = sub_1000BC014(v182);
              v72 = 1;
            }

            else
            {
              v72 = 0;
            }

            cnframework::TimestampedEvent::~TimestampedEvent(v311);
            cnframework::TimestampedEvent::~TimestampedEvent(buf);
LABEL_84:
            cnnavigation::ECEFToENUJacobian::~ECEFToENUJacobian(&v293);
            *(a1 + 16) = v31;
            *(a1 + 24) = v16;
            *(a1 + 32) = v72;
            if (*(a1 + 400) != 1)
            {
LABEL_85:
              *(a1 + 40) = &off_1004331A8;
              memcpy((a1 + 48), (a2 + 8), 0x160uLL);
              *(a1 + 400) = 1;
              goto LABEL_86;
            }

LABEL_42:
            memcpy((a1 + 48), (a2 + 8), 0x160uLL);
LABEL_86:
            result = (*(*a2 + 16))(a2);
            goto LABEL_16;
          }

          v125 = 0;
          v126 = 0;
          v127 = HIDWORD(v269);
          v128 = v271;
          v129 = v112 - 1;
          while (1)
          {
            if (v112 >= 0xA)
            {
              v130 = 0;
              if (v113 == 1 && v126 + v129 >= v126 && v127 * v126 + v129 >= v127 * v126 && (&v229[v126] - &v128[v127 * v126]) >= 0x20)
              {
                v134 = v112 & 0xFFFFFFFC;
                v135 = v126;
                v136 = v125;
                do
                {
                  v137 = &v128[v136];
                  v138 = *v137;
                  v139 = *(v137 + 1);
                  v140 = &v229[v135];
                  *v140 = v138;
                  v140[1] = v139;
                  v136 += 4;
                  v135 += 4;
                  v134 -= 4;
                }

                while (v134);
                v130 = v112 & 0xFFFFFFFC;
                if (v112 == (v112 & 0xFFFFFFFC))
                {
                  goto LABEL_141;
                }
              }
            }

            else
            {
              v130 = 0;
            }

            v131 = v112 - v130;
            v132 = v126 + v113 * v130;
            v133 = v130 + v125;
            do
            {
              v229[v132] = *&v128[v133];
              v132 += v113;
              ++v133;
              --v131;
            }

            while (v131);
LABEL_141:
            ++v126;
            v125 += v127;
            if (v126 == v113)
            {
              goto LABEL_155;
            }
          }
        }

        v76 = v267;
      }

      v265 = xmmword_1003C6D30;
      *v76 = *&buf[312];
      v76[3] = *&buf[320];
      v76[6] = *&buf[328];
      v76[1] = *&buf[320];
      v76[4] = *&buf[336];
      v76[7] = *&buf[344];
      v76[2] = *&buf[328];
      v76[5] = *&buf[344];
      v76[8] = *&buf[352];
      goto LABEL_94;
    }
  }

  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v9 || v7 == v5)
  {
    v8 = *(a1 + 416);
    goto LABEL_11;
  }

  if (v7 <= v5)
  {
    goto LABEL_18;
  }

LABEL_12:
  (*(*a1 + 32))(a1);
  if (*(a1 + 400) != 1)
  {
LABEL_14:
    *(a1 + 40) = &off_1004331A8;
    memcpy((a1 + 48), (a2 + 8), 0x160uLL);
    *(a1 + 400) = 1;
    goto LABEL_15;
  }

  memcpy((a1 + 48), (a2 + 8), 0x160uLL);
LABEL_15:
  result = (*(*a2 + 16))(a2);
LABEL_16:
  *(a1 + 408) = result;
  *(a1 + 416) = v11;
  return result;
}

void sub_10002FAEC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_10045C5F8);
  cnframework::TimestampedEvent::~TimestampedEvent(&STACK[0x590]);
  cnframework::TimestampedEvent::~TimestampedEvent(&STACK[0x700]);
  cnnavigation::ECEFToENUJacobian::~ECEFToENUJacobian(&STACK[0x490]);
  _Unwind_Resume(a1);
}

double sub_10002FB94(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = 0;
  }

  if (*(a1 + 400) == 1)
  {
    cnframework::TimestampedEvent::~TimestampedEvent((a1 + 40));
    *(a1 + 400) = 0;
  }

  v3 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v3, 0, 0.0);
  result = *&v3;
  *(a1 + 408) = v3;
  return result;
}

uint64_t sub_10002FC04(uint64_t result)
{
  *result = off_100432BE8;
  if (*(result + 400) == 1)
  {
    v1 = result;
    cnframework::TimestampedEvent::~TimestampedEvent((result + 40));
    return v1;
  }

  return result;
}

void sub_10002FC5C(uint64_t a1)
{
  *a1 = off_100432BE8;
  if (*(a1 + 400) == 1)
  {
    cnframework::TimestampedEvent::~TimestampedEvent((a1 + 40));
  }

  operator delete();
}

__n128 sub_10002FCD0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[1];
  *a2 = result;
  a2[1].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

uint64_t sub_10002FCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    v146 = 0x300000003;
    v142[7] = off_100432B60;
    v5 = v148;
    v147 = v148;
    v6 = *(a1 + 24);
    v10.i64[0] = *(a2 + 8);
    v7 = v6;
    v143 = __PAIR64__(v10.u32[1], v6);
    v8 = v10.u32[1];
    v144 = v10.i32[1] * v6;
    v9 = v10.u32[0];
    v10.i64[1] = v6;
    v145 = v6;
    v11 = *(a1 + 48);
    v12 = *(a2 + 32);
    if (vmaxvq_u32(v10) > 5)
    {
      v20 = a1;
      cblas_dgemm_NEWLAPACK();
      a1 = v20;
      LODWORD(v7) = *(v20 + 24);
      LODWORD(v13) = *(v20 + 28);
    }

    else
    {
      v13 = HIDWORD(v6);
      if (v6 && v10.i32[1])
      {
        if (HIDWORD(v6))
        {
          if (HIDWORD(v6) > 3)
          {
            if (v6 == 1)
            {
              v76 = HIDWORD(v6) - (HIDWORD(v6) & 0xFFFFFFFC);
              if (HIDWORD(v6) == (HIDWORD(v6) & 0xFFFFFFFC))
              {
                v77 = (v12 + 2);
                v78 = 8 * v10.u32[0];
                do
                {
                  v79 = 0.0;
                  v80 = v11 + 1;
                  v81 = v77;
                  v82 = v13 & 0xFFFFFFFC;
                  do
                  {
                    v83 = vmulq_f64(v80[-1], v81[-1]);
                    v84 = vmulq_f64(*v80, *v81);
                    v79 = v79 + v83.f64[0] + v83.f64[1] + v84.f64[0] + v84.f64[1];
                    v81 += 2;
                    v80 += 2;
                    v82 -= 4;
                  }

                  while (v82);
                  *&v148[v76 * v7] = v79;
                  ++v76;
                  v77 = (v77 + v78);
                }

                while (v76 != v8);
              }

              else
              {
                v118 = 0;
                v119 = (v12 + 2);
                v120 = 8 * v10.u32[0];
                v121 = v11 + 1;
                v122 = &v12[4 * (HIDWORD(v6) >> 2)];
                f64 = v11[2 * (HIDWORD(v6) >> 2)].f64;
                do
                {
                  v124 = 0.0;
                  v125 = v121;
                  v126 = v119;
                  v127 = v13 & 0xFFFFFFFC;
                  do
                  {
                    v128 = vmulq_f64(v125[-1], v126[-1]);
                    v129 = vmulq_f64(*v125, *v126);
                    v124 = v124 + v128.f64[0] + v128.f64[1] + v129.f64[0] + v129.f64[1];
                    v126 += 2;
                    v125 += 2;
                    v127 -= 4;
                  }

                  while (v127);
                  v130 = f64;
                  v131 = v122;
                  v132 = v13 - (v13 & 0xFFFFFFFC);
                  do
                  {
                    v133 = *v131++;
                    v124 = v124 + *v130 * v133;
                    v130 += v7;
                    --v132;
                  }

                  while (v132);
                  *&v148[v118 * v7] = v124;
                  ++v118;
                  v119 = (v119 + v120);
                  v122 = (v122 + v120);
                }

                while (v118 != v8);
              }
            }

            else
            {
              v102 = 0;
              do
              {
                v103 = 0;
                v104 = v11;
                do
                {
                  v105 = 0.0;
                  v106 = v104;
                  v107 = v12;
                  v108 = v13;
                  do
                  {
                    v109 = *v107++;
                    v105 = v105 + *v106 * v109;
                    v106 += v7;
                    --v108;
                  }

                  while (v108);
                  *&v148[v102 * v7 + v103++] = v105;
                  ++v104;
                }

                while (v103 != v7);
                ++v102;
                v12 += v10.u32[0];
              }

              while (v102 != v10.u32[1]);
            }
          }

          else
          {
            v14 = 0;
            do
            {
              v15 = &v12[v14 * v9];
              v16 = v11;
              v17 = v5;
              v18 = v6;
              do
              {
                v19 = *v16 * *v15 + 0.0;
                if (HIDWORD(v6) != 1)
                {
                  v19 = v19 + v16[v6] * v15[1];
                  if (HIDWORD(v6) != 2)
                  {
                    v19 = v19 + v16[2 * v6] * v15[2];
                  }
                }

                *v17++ = v19;
                ++v16;
                --v18;
              }

              while (v18);
              ++v14;
              v5 += v6;
            }

            while (v14 != v8);
          }
        }

        else
        {
          v75 = a1;
          bzero(v148, 8 * v6 * v10.u32[1]);
          a1 = v75;
          LODWORD(v13) = 0;
        }
      }
    }

    v139 = 0x300000003;
    v134 = off_100432B60;
    v21 = v141;
    v140 = v141;
    v135 = v13;
    v136 = v7;
    v137 = v7 * v13;
    v138 = v13;
    if (v13 && v7)
    {
      v22 = 0;
      v23 = 0;
      v24 = *(a1 + 36);
      v25 = *(a1 + 48);
      v26 = v7 - 1;
      do
      {
        if (v7 >= 0xA)
        {
          v27 = 0;
          if (v13 == 1 && v23 + v26 >= v23 && v24 * v23 + v26 >= v24 * v23 && &v141[v23] - v25 + -8 * v24 * v23 >= 0x20)
          {
            v31 = v7 & 0xFFFFFFFC;
            v32 = v23;
            v33 = v22;
            do
            {
              v34 = (v25 + 8 * v33);
              v35 = *v34;
              v36 = v34[1];
              v37 = &v141[v32];
              *v37 = v35;
              v37[1] = v36;
              v33 += 4;
              v32 += 4;
              v31 -= 4;
            }

            while (v31);
            v27 = v7 & 0xFFFFFFFC;
            if (v7 == (v7 & 0xFFFFFFFC))
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v27 = 0;
        }

        v28 = v7 - v27;
        v29 = v23 + v13 * v27;
        v30 = v27 + v22;
        do
        {
          v141[v29] = *(v25 + 8 * v30);
          v29 += v13;
          ++v30;
          --v28;
        }

        while (v28);
LABEL_18:
        ++v23;
        v22 += v24;
      }

      while (v23 != v13);
    }

    v154 = 0x300000003;
    v149 = off_100432B60;
    v38 = v156;
    v155 = v156;
    v39 = v143;
    v40 = HIDWORD(v143);
    v150 = v143;
    v151 = v7;
    v152 = v143 * v7;
    v153 = v143;
    if (v143 <= HIDWORD(v143))
    {
      v41 = HIDWORD(v143);
    }

    else
    {
      v41 = v143;
    }

    if (v13 <= v7)
    {
      v42 = v7;
    }

    else
    {
      v42 = v13;
    }

    if (v41 <= v42)
    {
      v41 = v42;
    }

    v43 = v147;
    if (v41 > 5)
    {
      cblas_dgemm_NEWLAPACK();
    }

    else if (v7 && v143)
    {
      if (HIDWORD(v143))
      {
        v44 = v13;
        if (HIDWORD(v143) > 3)
        {
          if (v143 == 1)
          {
            v85 = 0;
            v86 = HIDWORD(v143) & 0xFFFFFFFC;
            v87 = v142;
            v88 = 8 * v44;
            v89 = &v141[4 * (HIDWORD(v143) >> 2)];
            do
            {
              v90 = 0.0;
              v91 = v43 + 1;
              v92 = v87;
              v93 = v40 & 0xFFFFFFFC;
              if (v40 == v86)
              {
                do
                {
                  v94 = vmulq_f64(v91[-1], v92[-1]);
                  v95 = vmulq_f64(*v91, *v92);
                  v90 = v90 + v94.f64[0] + v94.f64[1] + v95.f64[0] + v95.f64[1];
                  v92 += 2;
                  v91 += 2;
                  v93 -= 4;
                }

                while (v93);
              }

              else
              {
                do
                {
                  v96 = vmulq_f64(v91[-1], v92[-1]);
                  v97 = vmulq_f64(*v91, *v92);
                  v90 = v90 + v96.f64[0] + v96.f64[1] + v97.f64[0] + v97.f64[1];
                  v92 += 2;
                  v91 += 2;
                  v93 -= 4;
                }

                while (v93);
                v98 = v43[2 * (v40 >> 2)].f64;
                v99 = v89;
                v100 = v40 - (v40 & 0xFFFFFFFC);
                do
                {
                  v101 = *v99++;
                  v90 = v90 + *v98 * v101;
                  v98 += v39;
                  --v100;
                }

                while (v100);
              }

              *&v156[v85 * v39] = v90;
              ++v85;
              v87 = (v87 + v88);
              v89 = (v89 + v88);
            }

            while (v85 != v7);
          }

          else
          {
            v110 = 0;
            do
            {
              v111 = 0;
              v112 = v43;
              do
              {
                v113 = 0.0;
                v114 = v112;
                v115 = v21;
                v116 = v40;
                do
                {
                  v117 = *v115++;
                  v113 = v113 + *v114 * v117;
                  v114 += v39;
                  --v116;
                }

                while (v116);
                *&v156[v110 * v39 + v111++] = v113;
                ++v112;
              }

              while (v111 != v39);
              ++v110;
              v21 += v44;
            }

            while (v110 != v7);
          }
        }

        else
        {
          v45 = 0;
          do
          {
            v46 = &v141[v45 * v44];
            v47 = *v46;
            v48 = v43;
            v49 = v38;
            v50 = v39;
            do
            {
              v51 = *v48 * v47 + 0.0;
              if (v40 != 1)
              {
                v51 = v51 + v48[v39] * v46[1];
                if (v40 != 2)
                {
                  v51 = v51 + v48[2 * v39] * v46[2];
                }
              }

              *v49++ = v51;
              ++v48;
              --v50;
            }

            while (v50);
            ++v45;
            v38 += v39;
          }

          while (v45 != v7);
        }
      }

      else
      {
        bzero(v156, 8 * v7 * v143);
      }
    }

    if (&v149 != a3)
    {
      v53 = v150;
      v52 = v151;
      *(a3 + 8) = v150;
      *(a3 + 12) = v52;
      v54 = (v52 * v53);
      *(a3 + 16) = v54;
      *(a3 + 20) = v53;
      if (v152 > 3)
      {
        v67 = (v152 - 2);
        v68 = *(a3 + 32);
        v69 = v155;
        v70 = (v152 - 1) >> 1;
        v71 = v155;
        v72 = v68;
        do
        {
          v73 = *v71++;
          *v72++ = v73;
          --v70;
        }

        while (v70);
        *(v68 + 8 * v67) = *&v69[v67];
      }

      else if (v54 >= 1)
      {
        v55 = 0;
        v56 = v155;
        v57 = *(a3 + 32);
        if (v54 < 4)
        {
          goto LABEL_61;
        }

        if ((v57 - v155) < 0x20)
        {
          goto LABEL_61;
        }

        v55 = v54 & 0x7FFFFFFC;
        v58 = (v155 + 2);
        v59 = (v57 + 16);
        v60 = v55;
        do
        {
          v61 = *v58;
          *(v59 - 1) = *(v58 - 1);
          *v59 = v61;
          v58 += 2;
          v59 += 2;
          v60 -= 4;
        }

        while (v60);
        if (v55 != v54)
        {
LABEL_61:
          v62 = v54 - v55;
          v63 = v55;
          v64 = (v57 + v63 * 8);
          v65 = &v56[v63];
          do
          {
            v66 = *v65++;
            *v64++ = v66;
            --v62;
          }

          while (v62);
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1000304FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  *(a2 + 24) = 0x100000002;
  *a2 = off_100432D18;
  *(a2 + 32) = a2 + 40;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 16) = v3 * v2;
  *(a2 + 20) = v2;
  if (v2 && v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(result + 32);
    v7 = *(result + 20);
    do
    {
      for (i = 0; i != v3; ++i)
      {
        result = (v5 + *(a2 + 20) * i);
        *(a2 + 40 + 4 * result) = *(v6 + 4 * (v4 + i));
      }

      ++v5;
      v4 += v7;
    }

    while (v5 != v2);
  }

  return result;
}

void *sub_1000305CC(void *result)
{
  result[16] = off_100432D70;
  result[10] = off_100432D70;
  *result = off_100432BB8;
  return result;
}

void sub_100030738(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_100030848(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_100030958(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_100030A68(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

uint64_t sub_100030B3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(result + 24) = 0x200000002;
  *(result + 8) = xmmword_1003C6DE0;
  *(result + 32) = result + 40;
  *result = off_100432DE8;
  *(result + 104) = 0x100000002;
  *(result + 72) = a2;
  *(result + 80) = off_100432D18;
  *(result + 88) = xmmword_1003C6DF0;
  *(result + 112) = result + 120;
  *(result + 152) = 0x100000002;
  *(result + 128) = off_100432D18;
  *(result + 136) = xmmword_1003C6DF0;
  v4 = result + 168;
  *(result + 160) = result + 168;
  if (result + 80 == a3)
  {
    LODWORD(v7) = 2;
    goto LABEL_17;
  }

  v6 = *(a3 + 8);
  v5 = *(a3 + 12);
  *(result + 88) = v6;
  *(result + 92) = v5;
  v7 = (v5 * v6);
  *(result + 96) = v7;
  *(result + 100) = v6;
  v8 = *(a3 + 16);
  if (v8 > 3)
  {
    v16 = (v8 - 1);
    v17 = *(a3 + 32);
    if (v8 > 8 && (result - v17 + 120) >= 0x20)
    {
      v18 = v16 & 0x7FFFFFF8;
      v52 = (v17 + 16);
      v53 = (result + 136);
      v54 = v18;
      do
      {
        v55 = *v52;
        *(v53 - 1) = *(v52 - 1);
        *v53 = v55;
        v52 += 2;
        v53 += 2;
        v54 -= 8;
      }

      while (v54);
      if (v18 == v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v16 - v18;
    v20 = 4 * v18;
    v21 = (4 * v18 + result + 120);
    v22 = (v17 + v20);
    do
    {
      v23 = *v22++;
      *v21++ = v23;
      --v19;
    }

    while (v19);
LABEL_16:
    *(result + 120 + 4 * v16) = *(v17 + 4 * v16);
    goto LABEL_17;
  }

  if (v7 < 1)
  {
    goto LABEL_17;
  }

  v9 = *(a3 + 32);
  if (v7 < 8 || (result - v9 + 120) < 0x20)
  {
    v10 = 0;
LABEL_7:
    v11 = v7 - v10;
    v12 = 4 * v10;
    v13 = (4 * v10 + result + 120);
    v14 = (v9 + v12);
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v11;
    }

    while (v11);
    goto LABEL_17;
  }

  v10 = v7 & 0x7FFFFFF8;
  v60 = (v9 + 16);
  v61 = (result + 136);
  v62 = v10;
  do
  {
    v63 = *v60;
    *(v61 - 1) = *(v60 - 1);
    *v61 = v63;
    v60 += 2;
    v61 += 2;
    v62 -= 8;
  }

  while (v62);
  if (v10 != v7)
  {
    goto LABEL_7;
  }

LABEL_17:
  if (result + 128 == a4)
  {
    LODWORD(v26) = *(result + 144);
    goto LABEL_33;
  }

  v25 = *(a4 + 8);
  v24 = *(a4 + 12);
  *(result + 136) = v25;
  *(result + 140) = v24;
  v26 = (v24 * v25);
  *(result + 144) = v26;
  *(result + 148) = v25;
  v27 = *(a4 + 16);
  if (v27 > 3)
  {
    v35 = (v27 - 1);
    v36 = *(a4 + 32);
    if (v27 > 8 && (result - v36 + 168) >= 0x20)
    {
      v37 = v35 & 0x7FFFFFF8;
      v56 = (v36 + 16);
      v57 = (result + 184);
      v58 = v37;
      do
      {
        v59 = *v56;
        *(v57 - 1) = *(v56 - 1);
        *v57 = v59;
        v56 += 2;
        v57 += 2;
        v58 -= 8;
      }

      while (v58);
      if (v37 == v35)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = v35 - v37;
    v39 = 4 * v37;
    v40 = (4 * v37 + result + 168);
    v41 = (v36 + v39);
    do
    {
      v42 = *v41++;
      *v40++ = v42;
      --v38;
    }

    while (v38);
LABEL_32:
    *(v4 + 4 * v35) = *(v36 + 4 * v35);
    goto LABEL_33;
  }

  if (v26 < 1)
  {
    goto LABEL_33;
  }

  v28 = *(a4 + 32);
  if (v26 < 8 || (result - v28 + 168) < 0x20)
  {
    v29 = 0;
LABEL_23:
    v30 = v26 - v29;
    v31 = 4 * v29;
    v32 = (4 * v29 + result + 168);
    v33 = (v28 + v31);
    do
    {
      v34 = *v33++;
      *v32++ = v34;
      --v30;
    }

    while (v30);
    goto LABEL_33;
  }

  v29 = v26 & 0x7FFFFFF8;
  v64 = (v28 + 16);
  v65 = (result + 184);
  v66 = v29;
  do
  {
    v67 = *v64;
    *(v65 - 1) = *(v64 - 1);
    *v65 = v67;
    v64 += 2;
    v65 += 2;
    v66 -= 8;
  }

  while (v66);
  if (v29 != v26)
  {
    goto LABEL_23;
  }

LABEL_33:
  *(result + 8) = v7;
  *(result + 12) = v26;
  *(result + 16) = v26 * v7;
  *(result + 20) = v7;
  if (v26 && v7)
  {
    v43 = 0;
    v44 = 0;
    v45 = *(a2 + 20);
    v46 = *(a2 + 32);
    do
    {
      v47 = v45 * *(v4 + 4 * v44);
      v48 = v7;
      v49 = (result + 120);
      v50 = v43;
      do
      {
        v51 = *v49++;
        *(result + 40 + 8 * v50++) = *(v46 + 8 * (v47 + v51));
        --v48;
      }

      while (v48);
      ++v44;
      v43 += v7;
    }

    while (v44 != v26);
  }

  return result;
}

void sub_100030EBC(void *a1)
{
  a1[16] = off_100432D70;
  a1[10] = off_100432D70;
  *a1 = off_100432BB8;
  operator delete();
}

void sub_100030F38(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_100031078(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(&v12, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = v12;
        v9 = (v7 + 8);
        v10 = v6 - 1;
        v11 = v2 + v1 - v4;
        do
        {
          if (!v8)
          {
            *(v7 + 8 * (v11 % v6)) = *v9;
            v8 = 1;
          }

          v11 += v2 + v1 - v4;
          ++v9;
          --v10;
        }

        while (v10);
      }
    }
  }
}

void sub_10003116C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_100031240()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_10003128C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 96) & 4) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v17) = 12;
LABEL_27:
      cnprint::CNPrinter::Print();
      return 0;
    }

    return 0;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    v4 = *(qword_10045DB70 + 24);
  }

  v5 = *(v4 + 32);
  v17 = 0uLL;
  v6 = CNTimeSpan::SetTimeSpan(&v17, 0, v5);
  v7 = v17;
  *(a2 + 104) = v17;
  *(a2 + 8) = v7;
  if ((*(a1 + 96) & 2) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v6) > 1)
    {
      return 0;
    }

    goto LABEL_26;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    v8 = *(qword_10045DB70 + 16);
  }

  v9 = *(v8 + 32);
  v17 = 0uLL;
  v10 = CNTimeSpan::SetTimeSpan(&v17, 0, v9);
  *(a2 + 200) = v17;
  v11 = *(a1 + 96);
  if ((v11 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v10) > 1)
    {
      return 0;
    }

    goto LABEL_26;
  }

  v12 = *(a1 + 88) + 1;
  if (v12 < 6)
  {
    *(a2 + 296) = v12;
    if ((~v11 & 0x78) != 0)
    {
      if (cnprint::CNPrinter::GetLogLevel(v10) > 1)
      {
        return 0;
      }
    }

    else
    {
      v13 = sub_100031624(a1, a2 + 104);
      if (v13)
      {
        v14 = sub_100031A6C(a1);
        if (v14)
        {
          *(a2 + 1185) = sub_100031F1C(*(a1 + 64), *(a1 + 96));
          result = 1;
          *(a2 + 1184) = 1;
          return result;
        }

        if (cnprint::CNPrinter::GetLogLevel(v14) > 1)
        {
          return 0;
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v13) > 1)
      {
        return 0;
      }
    }

LABEL_26:
    LOWORD(v17) = 12;
    (*(*a2 + 16))(a2);
    goto LABEL_27;
  }

  if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
  {
    LOWORD(v17) = 12;
    (*(*a2 + 16))(a2);
    v16 = *(a1 + 88);
    goto LABEL_27;
  }

  return 0;
}

BOOL sub_100031624(uint64_t a1, uint64_t a2)
{
  if ((~*(a1 + 96) & 0x18) != 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v36) = 12;
      LOBYTE(v31) = 1;
LABEL_38:
      cnprint::CNPrinter::Print();
    }

    return 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v4 != 8 * v5)
    {
LABEL_36:
      if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
      {
        LOWORD(v36) = 12;
        LOBYTE(v31) = 1;
        goto LABEL_38;
      }

      return 0;
    }
  }

  else
  {
    v3 = *(qword_10045DB70 + 32);
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v4 != 8 * v5)
    {
      goto LABEL_36;
    }
  }

  v6 = *(v3 + 32);
  v7 = *(v3 + 64);
  if (v7 + v6 + *(v3 + 56) + *(v3 + 40) + *(v3 + 48) != v5)
  {
    goto LABEL_36;
  }

  if (v4 > 0xA8 || v5 == 0 || v7 != 3 || v6 != 9)
  {
    goto LABEL_41;
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = v11[1];
  }

  if (v12 != v4)
  {
LABEL_41:
    if (cnprint::CNPrinter::GetLogLevel(a1) > 1)
    {
      return 0;
    }

    LOWORD(v36) = 12;
    LOBYTE(v31) = 1;
    goto LABEL_38;
  }

  v13 = *(v3 + 28);
  v14 = *(v3 + 60);
  sub_100034F34(v41, v5);
  v15 = *(v11 + 23);
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = v11;
    v11 = *v11;
    v15 = v16[1];
  }

  if (v15)
  {
    memmove(v41[0], v11, v15);
  }

  v38 = 0x300000003;
  v37 = xmmword_1003C6D30;
  v36 = off_100432B60;
  v39 = v40;
  if (v13 <= 0xFFFFFFF6)
  {
    v17 = v41[0] + 8 * v13;
    v40[0] = *v17;
    v40[1] = v17[1];
    v40[2] = v17[2];
    v40[3] = v17[3];
    v40[4] = v17[4];
    v40[5] = v17[5];
    v40[6] = v17[6];
    v40[7] = v17[7];
    v40[8] = v17[8];
  }

  sub_100034794(&v36, v26);
  sub_100034714(v26, &v36, v27);
  sub_100034D40(3u, 3u, v25);
  sub_100034C80(v27, v25, v28);
  sub_100034BB4(v28, v29);
  sub_100034A20(v29, v30);
  sub_100034A20(v30, &v31);
  if (fabs(*v34) <= 0.00001 && fabs(sub_100034E90(&v36) + -1.0) <= 0.00001)
  {
    sub_100036460(&v31, &v36);
    cnrotation::CNRotation::operator=();
    v33 = 0x100000003;
    v32 = xmmword_1003C6DC0;
    v31 = off_100432C88;
    v34 = v35;
    if (v14 <= 0xFFFFFFFC)
    {
      v21 = v41[0] + 8 * v14;
      v35[0] = *v21;
      v35[1] = v21[1];
      v35[2] = v21[2];
    }

    sub_100034934(&v31);
    v19 = (v23 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      sub_100035430(a2 + 232, &v31);
    }

    else
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(v22);
      if (LogLevel <= 1)
      {
        v30[0] = 12;
        v29[0] = 1;
        cnprint::CNPrinter::Print();
      }
    }
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
    {
      LOWORD(v31) = 12;
      LOBYTE(v30[0]) = 1;
      cnprint::CNPrinter::Print();
    }

    v19 = 0;
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  return v19;
}

void sub_100031A20(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100031A6C(uint64_t a1)
{
  if ((~*(a1 + 96) & 0x60) != 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(qword_10045DB70 + 48);
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 64);
  if (v2 == 8 * v3)
  {
    v6 = v5 + v4 + *(v1 + 48) + *(v1 + 40) + *(v1 + 56);
    v7 = v3 == v6 * v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (v2 <= 0x708 && v3 != 0 && v5 == 3 && v4 == 3)
  {
    v11 = *(a1 + 56);
    v12 = *(v11 + 23);
    if (v12 < 0)
    {
      if (*(v11 + 8) != v2)
      {
        goto LABEL_27;
      }
    }

    else if (v12 != v2)
    {
      goto LABEL_27;
    }

    v13 = *(v1 + 28);
    v14 = *(v1 + 60);
    operator new();
  }

LABEL_27:
  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
LABEL_28:
    cnprint::CNPrinter::Print();
  }

  return 0;
}

uint64_t sub_100031F1C(uint64_t a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
    return 1;
  }

  v218[2] = v5;
  v218[3] = v4;
  v218[8] = v2;
  v218[9] = v3;
  if (a1)
  {
    if (*(a1 + 24) != 4)
    {
      return 0;
    }
  }

  else
  {
    a1 = *(qword_10045DB70 + 64);
    if (*(a1 + 24) != 4)
    {
      return 0;
    }
  }

  v211 = 0x400000004;
  v210 = xmmword_1003C6F70;
  v209 = off_100432F50;
  v212 = v213;
  v7 = *(a1 + 16);
  if (*(*v7 + 24) != 4)
  {
    return 0;
  }

  v8 = *(*v7 + 16);
  v213[0] = vcvtq_f64_f32(*v8);
  v213[1] = vcvtq_f64_f32(v8[1]);
  v9 = v7[1];
  if (*(v9 + 24) != 4)
  {
    return 0;
  }

  v10 = *(v9 + 16);
  v213[2] = vcvtq_f64_f32(*v10);
  v213[3] = vcvtq_f64_f32(v10[1]);
  v11 = v7[2];
  if (*(v11 + 24) != 4)
  {
    return 0;
  }

  v12 = *(v11 + 16);
  v213[4] = vcvtq_f64_f32(*v12);
  v213[5] = vcvtq_f64_f32(v12[1]);
  v13 = v7[3];
  if (*(v13 + 24) != 4)
  {
    return 0;
  }

  v14 = *(v13 + 16);
  v213[6] = vcvtq_f64_f32(*v14);
  v213[7] = vcvtq_f64_f32(v14[1]);
  v195 = &_mh_execute_header;
  v205 = 0x100000003;
  v203 = off_100432F08;
  v206 = &v207;
  v204 = xmmword_1003C6DC0;
  v208 = 2;
  v207 = &_mh_execute_header;
  sub_1000356A8(&v191, &v209, &v203, &v203);
  v199 = 0x300000003;
  v196[0] = off_100432B60;
  v15 = v192;
  v16 = DWORD1(v192);
  v196[1] = v192;
  v17 = (DWORD1(v192) * v192);
  v197 = DWORD1(v192) * v192;
  v198 = v192;
  v18 = v201;
  v200 = v201;
  v19 = DWORD2(v192);
  if (SDWORD2(v192) > 3)
  {
    v27 = v194;
    v28 = (DWORD2(v192) - 1) >> 1;
    v29 = v194;
    v30 = v201;
    do
    {
      v31 = *v29;
      v29 += 2;
      *v30++ = v31;
      --v28;
    }

    while (v28);
    *&v201[v19 - 2] = *&v27[v19 - 2];
  }

  else
  {
    if (v17 < 1)
    {
      goto LABEL_22;
    }

    v20 = v194;
    if (v17 < 6 || (v196 - v194 + 40) < 0x20)
    {
      v21 = 0;
LABEL_16:
      v22 = v17 - v21;
      v23 = v21;
      v24 = &v196[v21 + 5];
      v25 = &v20[v23];
      do
      {
        v26 = *v25++;
        *v24++ = v26;
        --v22;
      }

      while (v22);
      goto LABEL_22;
    }

    v21 = v17 & 0x7FFFFFFC;
    v133 = (v194 + 2);
    v134 = v202;
    v135 = v21;
    do
    {
      v136 = *v133;
      *(v134 - 1) = *(v133 - 1);
      *v134 = v136;
      v133 += 2;
      v134 += 2;
      v135 -= 4;
    }

    while (v135);
    if (v21 != v17)
    {
      goto LABEL_16;
    }
  }

LABEL_22:
  v149 = 0x300000003;
  v144 = off_100432B60;
  v150 = v151;
  v145 = v16;
  v146 = v15;
  v147 = v17;
  v148 = v16;
  if (v16 && v15)
  {
    v32 = 0;
    v33 = 0;
    v34 = v15 - 1;
    do
    {
      if (v15 < 0xA || (v33 * v15 + v34 >= v33 * v15 ? (v35 = v16 == 1) : (v35 = 0), v35 ? (v36 = v33 + v34 < v33) : (v36 = 1), v36))
      {
        v37 = 0;
      }

      else
      {
        v41 = v15 & 0xFFFFFFFC;
        v42 = v33;
        v43 = v32;
        do
        {
          v44 = &v201[v43];
          v45 = *v44;
          v46 = v44[1];
          v47 = &v151[v42];
          *v47 = v45;
          v47[1] = v46;
          v43 += 4;
          v42 += 4;
          v41 -= 4;
        }

        while (v41);
        v37 = v15 & 0xFFFFFFFC;
        if (v15 == (v15 & 0xFFFFFFFC))
        {
          goto LABEL_25;
        }
      }

      v38 = v15 - v37;
      v39 = v33 + v16 * v37;
      v40 = v37 + v32;
      do
      {
        v151[v39] = v201[v40];
        v39 += v16;
        ++v40;
        --v38;
      }

      while (v38);
LABEL_25:
      ++v33;
      v32 += v15;
    }

    while (v33 != v16);
  }

  v157 = 0x300000003;
  v152[7] = off_100432B60;
  v48 = v159;
  v158 = v159;
  v153 = v16;
  v154 = v16;
  v155 = v16 * v16;
  v156 = v16;
  if (v16 <= v15)
  {
    v49 = v15;
  }

  else
  {
    v49 = v16;
  }

  if (v49 > 5)
  {
    v48 = cblas_dgemm_NEWLAPACK();
    v58 = v153;
    LODWORD(v16) = v154;
  }

  else if (v16)
  {
    if (v15)
    {
      v50 = 8 * v16;
      if (v15 >= 4)
      {
        v114 = 0;
        v115 = 8 * v15;
        v116 = v202;
        do
        {
          v117 = &v159[v114 * v16];
          if (v16 == 1)
          {
            v118 = 0.0;
            v119 = v152;
            v120 = v116;
            v121 = v15 & 0xFFFFFFFC;
            do
            {
              v122 = vmulq_f64(v119[-1], v120[-1]);
              v123 = vmulq_f64(*v119, *v120);
              v118 = v118 + v122.f64[0] + v122.f64[1] + v123.f64[0] + v123.f64[1];
              v120 += 2;
              v119 += 2;
              v121 -= 4;
            }

            while (v121);
            if ((v15 & 0xFFFFFFFC) != v15)
            {
              v124 = &v151[4 * (v15 >> 2)];
              v125 = v15 & 0xFFFFFFFC;
              do
              {
                v118 = v118 + *v124 * v18[v125++];
                v124 = (v124 + v50);
              }

              while (v15 != v125);
            }

            *v117 = v118;
          }

          else
          {
            v126 = 0;
            v127 = v151;
            do
            {
              v128 = 0.0;
              v129 = v127;
              v130 = v18;
              v131 = v15;
              do
              {
                v132 = *v130++;
                v128 = v128 + *v129 * v132;
                v129 = (v129 + v50);
                --v131;
              }

              while (v131);
              v117[v126++] = v128;
              ++v127;
            }

            while (v126 != v16);
          }

          ++v114;
          v18 = (v18 + v115);
          v116 = (v116 + v115);
        }

        while (v114 != v16);
      }

      else
      {
        for (i = 0; i != v16; ++i)
        {
          v52 = &v201[i * v15];
          v53 = *v52;
          v54 = v151;
          v55 = v48;
          v56 = v16;
          do
          {
            v57 = *v54 * v53 + 0.0;
            if (v15 != 1)
            {
              v57 = v57 + v54[v16] * v52[1];
              if (v15 != 2)
              {
                v57 = v57 + v54[2 * v16] * v52[2];
              }
            }

            *v55++ = v57;
            ++v54;
            --v56;
          }

          while (v56);
          v48 = (v48 + v50);
        }
      }
    }

    else
    {
      bzero(v159, 8 * v16 * v16);
    }

    v58 = v16;
  }

  else
  {
    v58 = 0;
  }

  v59 = &v137;
  v138 = 0u;
  v139 = 0;
  v141 = 0u;
  v137 = 0x3FF0000000000000;
  v140 = 0x3FF0000000000000;
  v142 = 0;
  v143 = 0x3FF0000000000000;
  v165 = 0x300000003;
  v160 = off_100432B60;
  v60 = v167;
  v166 = v167;
  v161 = v58;
  v162 = v16;
  v61 = v16 * v58;
  v163 = v61;
  v164 = v58;
  if (v61 > 3)
  {
    v67 = v158;
    v68 = (v61 - 1) >> 1;
    v69 = v158;
    v70 = &v137;
    v71 = v167;
    do
    {
      v72 = *v69++;
      v73 = v72;
      v74 = *v70++;
      *v71++ = vsubq_f64(v73, v74);
      --v68;
    }

    while (v68);
    *&v167[(v61 - 2)] = vsubq_f64(*&v67[(v61 - 2)], *(&v137 + (v61 - 2)));
  }

  else if (v61 >= 1)
  {
    v62 = v158;
    v63 = v16 * v58;
    do
    {
      v64 = *v62++;
      v65 = v64;
      v66 = *v59++;
      *v60++ = v65 - v66;
      --v63;
    }

    while (v63);
  }

  v174 = 0x300000003;
  v169 = off_100432B60;
  v175 = v176;
  v170 = v58;
  v171 = v16;
  v172 = v16 * v58;
  v173 = v58;
  if (v61 >= 1)
  {
    if (v61 < 4)
    {
      v75 = 0;
LABEL_74:
      v80 = v61 - v75;
      v81 = 8 * v75 + 40;
      v82 = (&v169 + v81);
      v83 = (&v160 + v81);
      do
      {
        v84 = *v83++;
        *v82++ = fabs(v84);
        --v80;
      }

      while (v80);
      goto LABEL_76;
    }

    v75 = v61 & 0x7FFFFFFC;
    v76 = &v168;
    v77 = v177;
    v78 = v75;
    do
    {
      v79 = vabsq_f64(*v76);
      v77[-1] = vabsq_f64(v76[-1]);
      *v77 = v79;
      v76 += 2;
      v77 += 2;
      v78 -= 4;
    }

    while (v78);
    if (v75 != v61)
    {
      goto LABEL_74;
    }
  }

LABEL_76:
  v179 = 3;
  v177[7] = off_100432B60;
  v180 = v181;
  *v178 = 1;
  *&v178[4] = v16;
  *&v178[8] = v16;
  *&v178[12] = 0x300000001;
  if (!v16)
  {
    if (v58 != 1)
    {
      LODWORD(v16) = 0;
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  if (v58 < 2)
  {
    v90 = 0;
    if (v16 < 4)
    {
      goto LABEL_92;
    }

    if (v58 != 1)
    {
      goto LABEL_92;
    }

    v90 = v16 & 0xFFFFFFFC;
    v91 = v177;
    v92 = v183;
    v93 = v90;
    do
    {
      v94 = *v91;
      *(v92 - 1) = *(v91 - 1);
      *v92 = v94;
      v91 += 2;
      v92 += 2;
      v93 -= 4;
    }

    while (v93);
    if (v90 != v16)
    {
LABEL_92:
      v95 = v16 - v90;
      v96 = &v181[v90];
      v97 = v58 * v90;
      do
      {
        *v96++ = v176[v97];
        v97 += v58;
        --v95;
      }

      while (v95);
    }
  }

  else
  {
    v85 = 0;
    v86 = 1;
    do
    {
      v87 = *&v176[v58 * v85];
      v88 = v86;
      v89 = v58 - 1;
      do
      {
        if (*&v176[v88] > v87)
        {
          v87 = *&v176[v88];
        }

        ++v88;
        --v89;
      }

      while (v89);
      *&v181[v85++] = v87;
      v86 += v58;
    }

    while (v85 != v16);
  }

  if (v58 == 1 || v16 == 1)
  {
    if (v16 >= 2)
    {
      v98 = *v181;
      v99 = v16 - 1;
      v100 = &v182;
      do
      {
        v101 = *v100;
        if (*v100 > v98)
        {
          *v181 = *v100;
          v98 = v101;
        }

        ++v100;
        --v99;
      }

      while (v99);
    }

LABEL_101:
    *&v102 = 0x100000001;
    *(&v102 + 1) = 0x100000001;
    *v178 = v102;
    LODWORD(v16) = 1;
  }

LABEL_102:
  v186 = 0x300000003;
  v184 = off_100432B60;
  v187 = v188;
  if (!v16)
  {
    goto LABEL_114;
  }

  if (v16 < 4)
  {
    v103 = 0;
    do
    {
LABEL_108:
      v188[v103] = v181[v103];
      ++v103;
    }

    while (v16 != v103);
    goto LABEL_109;
  }

  v103 = v16 & 0xFFFFFFFC;
  v104 = v183;
  v105 = &v190;
  v106 = v103;
  do
  {
    v107 = *v104;
    *(v105 - 1) = *(v104 - 1);
    *v105 = v107;
    v104 += 2;
    v105 += 4;
    v106 -= 4;
  }

  while (v106);
  if (v103 != v16)
  {
    goto LABEL_108;
  }

LABEL_109:
  if (v16 >= 2)
  {
    v108 = *v188;
    v109 = v16 - 1;
    v110 = &v189;
    do
    {
      v111 = *v110;
      if (*v110 > v108)
      {
        *v188 = *v110;
        v108 = v111;
      }

      ++v110;
      --v109;
    }

    while (v109);
  }

LABEL_114:
  *&v112 = 0x100000001;
  *(&v112 + 1) = 0x100000001;
  v185 = v112;
  if (fabs(*v188) > 0.00001)
  {
    goto LABEL_116;
  }

  v216 = 0x100000003;
  v215 = xmmword_1003C6DC0;
  v214 = off_100432F08;
  v217 = v218;
  v193 = 0x300000003;
  v192 = xmmword_1003C6D30;
  v191 = off_100432B60;
  v194 = &v195;
  if (fabs(sub_100034FD8(v196, &v214, &v191) + -1.0) > 0.00001)
  {
LABEL_116:
    if (cnprint::CNPrinter::GetLogLevel(v48) <= 1)
    {
      LOWORD(v191) = 12;
      LOBYTE(v184) = 1;
LABEL_118:
      cnprint::CNPrinter::Print();
    }

    return 0;
  }

  v113 = cntransformation::CNRigidTransformation::SetTransformationMatrix();
  if ((v113 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v113) > 1)
    {
      return 0;
    }

    LOWORD(v191) = 12;
    LOBYTE(v184) = 1;
    goto LABEL_118;
  }

  return 1;
}

uint64_t sub_100032AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 52) & 4) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      *v258 = 12;
      LOBYTE(v248) = 1;
LABEL_142:
      cnprint::CNPrinter::Print();
    }

    return 0;
  }

  v5 = *(a2 + 32);
  *&v258[8] = 0;
  *v258 = 0;
  v6 = CNTimeSpan::SetTimeSpan(v258, 0, v5);
  *(a3 + 8) = *v258;
  if ((*(a1 + 64) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v6) > 1)
    {
      return 0;
    }

LABEL_6:
    *v258 = 12;
    LOBYTE(v248) = 1;
    (*(*a3 + 16))(a3);
    goto LABEL_142;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    v7 = *(qword_10045DBC8 + 16);
  }

  v8 = *(v7 + 32);
  *&v258[8] = 0;
  *v258 = 0;
  LogLevel = CNTimeSpan::SetTimeSpan(v258, 0, v8);
  *(a3 + 104) = *v258;
  v10 = *(a1 + 64);
  if ((v10 & 0x10) == 0 || ((v11 = *(a1 + 56), v11 >= 0.0) ? (v12 = v11 > 1.0) : (v12 = 1), v12))
  {
    if (cnprint::CNPrinter::GetLogLevel(LogLevel) > 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  *(a3 + 1088) = v11;
  if ((v10 & 4) == 0)
  {
    goto LABEL_140;
  }

  v13 = *(a1 + 32);
  if (!v13)
  {
    v13 = *(qword_10045DBC8 + 32);
  }

  if (*(v13 + 24) != 4)
  {
    goto LABEL_140;
  }

  v250 = 0x400000004;
  v249 = xmmword_1003C6F70;
  v248 = off_100432F50;
  v251 = v252;
  v14 = *(v13 + 16);
  if (*(*v14 + 24) != 4)
  {
    goto LABEL_140;
  }

  v15 = *(*v14 + 16);
  v252[0] = *v15;
  v252[1] = v15[1];
  v252[2] = v15[2];
  v252[3] = v15[3];
  v16 = v14[1];
  if (*(v16 + 24) != 4)
  {
    goto LABEL_140;
  }

  v17 = *(v16 + 16);
  v252[4] = *v17;
  v252[5] = v17[1];
  v252[6] = v17[2];
  v252[7] = v17[3];
  v18 = v14[2];
  if (*(v18 + 24) != 4)
  {
    goto LABEL_140;
  }

  v19 = *(v18 + 16);
  v252[8] = *v19;
  v252[9] = v19[1];
  v252[10] = v19[2];
  v252[11] = v19[3];
  v20 = v14[3];
  if (*(v20 + 24) != 4)
  {
    goto LABEL_140;
  }

  v21 = *(v20 + 16);
  v252[12] = *v21;
  v252[13] = v21[1];
  v252[14] = v21[2];
  v252[15] = v21[3];
  v261[0] = &_mh_execute_header;
  v244 = 0x100000003;
  v242 = off_100432F08;
  v245 = &v246;
  v243 = xmmword_1003C6DC0;
  v247 = 2;
  v246 = &_mh_execute_header;
  sub_1000356A8(v258, &v248, &v242, &v242);
  v186 = 0x300000003;
  v183[0] = off_100432B60;
  v22 = *&v258[8];
  v23 = *&v258[12];
  v183[1] = *&v258[8];
  v24 = (*&v258[12] * *&v258[8]);
  v184 = *&v258[12] * *&v258[8];
  v185 = *&v258[8];
  v187 = v188;
  v25 = *&v258[16];
  if (*&v258[16] > 3)
  {
    v33 = v260;
    v34 = (*&v258[16] - 1) >> 1;
    v35 = v260;
    v36 = v188;
    do
    {
      v37 = *v35++;
      *v36++ = v37;
      --v34;
    }

    while (v34);
    *&v188[v25 - 2] = *&v33[v25 - 2];
  }

  else
  {
    if (v24 < 1)
    {
      goto LABEL_36;
    }

    v26 = v260;
    if (v24 < 6 || (v183 - v260 + 40) < 0x20)
    {
      v27 = 0;
LABEL_30:
      v28 = v24 - v27;
      v29 = v27;
      v30 = &v183[v27 + 5];
      v31 = &v26[v29];
      do
      {
        v32 = *v31++;
        *v30++ = v32;
        --v28;
      }

      while (v28);
      goto LABEL_36;
    }

    v27 = v24 & 0x7FFFFFFC;
    v167 = (v260 + 2);
    v168 = v189;
    v169 = v27;
    do
    {
      v170 = *v167;
      *(v168 - 1) = *(v167 - 1);
      *v168 = v170;
      v167 += 2;
      v168 += 2;
      v169 -= 4;
    }

    while (v169);
    if (v27 != v24)
    {
      goto LABEL_30;
    }
  }

LABEL_36:
  v206 = 0x300000003;
  v201 = off_100432B60;
  v207 = v208;
  v202 = v23;
  v203 = v22;
  v204 = v24;
  v205 = v23;
  if (v23 && v22)
  {
    v38 = 0;
    v39 = 0;
    v40 = v22 - 1;
    do
    {
      if (v22 < 0xA || (v39 * v22 + v40 >= v39 * v22 ? (v41 = v23 == 1) : (v41 = 0), v41 ? (v42 = v39 + v40 < v39) : (v42 = 1), v42))
      {
        v43 = 0;
      }

      else
      {
        v47 = v22 & 0xFFFFFFFC;
        v48 = v39;
        v49 = v38;
        do
        {
          v50 = &v188[v49];
          v51 = *v50;
          v52 = v50[1];
          v53 = &v208[v48];
          *v53 = v51;
          v53[1] = v52;
          v49 += 4;
          v48 += 4;
          v47 -= 4;
        }

        while (v47);
        v43 = v22 & 0xFFFFFFFC;
        if (v22 == (v22 & 0xFFFFFFFC))
        {
          goto LABEL_39;
        }
      }

      v44 = v22 - v43;
      v45 = v39 + v23 * v43;
      v46 = v43 + v38;
      do
      {
        v208[v45] = v188[v46];
        v45 += v23;
        ++v46;
        --v44;
      }

      while (v44);
LABEL_39:
      ++v39;
      v38 += v22;
    }

    while (v39 != v23);
  }

  v215 = 0x300000003;
  v210 = off_100432B60;
  v216 = v217;
  v211 = v23;
  v212 = v23;
  v213 = v23 * v23;
  v214 = v23;
  if (v23 <= v22)
  {
    v54 = v22;
  }

  else
  {
    v54 = v23;
  }

  if (v54 > 5)
  {
    cblas_dgemm_NEWLAPACK();
    v83 = v211;
    LODWORD(v23) = v212;
  }

  else if (v23)
  {
    if (v22)
    {
      v55 = 0;
      v56 = 8 * v22;
      v57 = 8 * v23;
      v58 = v189;
      v59 = v217;
      v60 = v188;
      do
      {
        if (v22 > 3)
        {
          v67 = &v217[v55 * v23];
          if (v23 == 1)
          {
            v68 = 0.0;
            v69 = &v209;
            v70 = v58;
            v71 = v22 & 0xFFFFFFFC;
            do
            {
              v72 = vmulq_f64(v69[-1], v70[-1]);
              v73 = vmulq_f64(*v69, *v70);
              v68 = v68 + v72.f64[0] + v72.f64[1] + v73.f64[0] + v73.f64[1];
              v70 += 2;
              v69 += 2;
              v71 -= 4;
            }

            while (v71);
            if ((v22 & 0xFFFFFFFC) != v22)
            {
              v74 = &v208[4 * (v22 >> 2)];
              v75 = v22 & 0xFFFFFFFC;
              do
              {
                v68 = v68 + *v74 * v60[v75++];
                v74 = (v74 + v57);
              }

              while (v22 != v75);
            }

            *v67 = v68;
          }

          else
          {
            v76 = 0;
            v77 = v208;
            do
            {
              v78 = 0.0;
              v79 = v77;
              v80 = v60;
              v81 = v22;
              do
              {
                v82 = *v80++;
                v78 = v78 + *v79 * v82;
                v79 = (v79 + v57);
                --v81;
              }

              while (v81);
              v67[v76++] = v78;
              ++v77;
            }

            while (v76 != v23);
          }
        }

        else
        {
          v61 = &v188[v55 * v22];
          v62 = *v61;
          v63 = v208;
          v64 = v59;
          v65 = v23;
          do
          {
            v66 = *v63 * v62 + 0.0;
            if (v22 != 1)
            {
              v66 = v66 + v63[v23] * v61[1];
              if (v22 != 2)
              {
                v66 = v66 + v63[2 * v23] * v61[2];
              }
            }

            *v64++ = v66;
            ++v63;
            --v65;
          }

          while (v65);
        }

        ++v55;
        v60 = (v60 + v56);
        v58 = (v58 + v56);
        v59 = (v59 + v57);
      }

      while (v55 != v23);
    }

    else
    {
      bzero(v217, 8 * v23 * v23);
    }

    v83 = v23;
  }

  else
  {
    v83 = 0;
  }

  v192 = 0x300000003;
  v190 = off_100432B60;
  v84 = &v194;
  v191 = xmmword_1003C6D30;
  v195 = 0u;
  v196 = 0;
  v198 = 0u;
  v193 = &v194;
  v194 = 0x3FF0000000000000;
  v197 = 0x3FF0000000000000;
  v199 = 0;
  v200 = 0x3FF0000000000000;
  v222 = 0x300000003;
  v218 = off_100432B60;
  v85 = v224;
  v223 = v224;
  v219 = __PAIR64__(v23, v83);
  v86 = v83 * v23;
  v220 = v86;
  v221 = v83;
  if (v86 > 3)
  {
    v92 = v216;
    v93 = (v86 - 1) >> 1;
    v94 = v216;
    v95 = &v194;
    v96 = v224;
    do
    {
      v97 = *v94++;
      v98 = v97;
      v99 = *v95++;
      *v96++ = vsubq_f64(v98, v99);
      --v93;
    }

    while (v93);
    *&v224[(v86 - 2)] = vsubq_f64(*&v92[(v86 - 2)], *(&v194 + (v86 - 2)));
  }

  else if (v86 >= 1)
  {
    v87 = v216;
    v88 = v83 * v23;
    do
    {
      v89 = *v87++;
      v90 = v89;
      v91 = *v84++;
      *v85++ = v90 - v91;
      --v88;
    }

    while (v88);
  }

  v230 = 0x300000003;
  v226 = off_100432B60;
  v231 = v232;
  v227 = __PAIR64__(v23, v83);
  v228 = v83 * v23;
  v229 = v83;
  if (v86 >= 1)
  {
    if (v86 < 4)
    {
      v100 = 0;
LABEL_101:
      v105 = v86 - v100;
      v106 = 8 * v100 + 40;
      v107 = (&v226 + v106);
      v108 = (&v218 + v106);
      do
      {
        v109 = *v108++;
        *v107++ = fabs(v109);
        --v105;
      }

      while (v105);
      goto LABEL_103;
    }

    v100 = v86 & 0x7FFFFFFC;
    v101 = &v225;
    v102 = v233;
    v103 = v100;
    do
    {
      v104 = vabsq_f64(*v101);
      v102[-1] = vabsq_f64(v101[-1]);
      *v102 = v104;
      v101 += 2;
      v102 += 2;
      v103 -= 4;
    }

    while (v103);
    if (v100 != v86)
    {
      goto LABEL_101;
    }
  }

LABEL_103:
  *&v235[20] = 3;
  v234 = off_100432B60;
  v236 = &v237;
  *v235 = 1;
  *&v235[4] = v23;
  *&v235[8] = v23;
  *&v235[12] = 0x300000001;
  if (!v23)
  {
    if (v83 != 1)
    {
      LODWORD(v23) = 0;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

  if (v83 < 2)
  {
    v115 = 0;
    if (v23 < 4)
    {
      goto LABEL_119;
    }

    if (v83 != 1)
    {
      goto LABEL_119;
    }

    v115 = v23 & 0xFFFFFFFC;
    v116 = v233;
    v117 = &v238;
    v118 = v115;
    do
    {
      v119 = *v116;
      *(v117 - 1) = *(v116 - 1);
      *v117 = v119;
      v116 += 2;
      v117 += 2;
      v118 -= 4;
    }

    while (v118);
    if (v115 != v23)
    {
LABEL_119:
      v120 = v23 - v115;
      v121 = &v237 + v115;
      v122 = v83 * v115;
      do
      {
        *v121++ = v232[v122];
        v122 += v83;
        --v120;
      }

      while (v120);
    }
  }

  else
  {
    v110 = 0;
    v111 = 1;
    do
    {
      v112 = *&v232[v83 * v110];
      v113 = v111;
      v114 = v83 - 1;
      do
      {
        if (*&v232[v113] > v112)
        {
          v112 = *&v232[v113];
        }

        ++v113;
        --v114;
      }

      while (v114);
      *(&v237 + v110++) = v112;
      v111 += v83;
    }

    while (v110 != v23);
  }

  if (v23 == 1 || v83 == 1)
  {
    if (v23 >= 2)
    {
      v123 = *&v237;
      v124 = v23 - 1;
      v125 = &v237 + 1;
      do
      {
        v126 = *v125;
        if (*v125 > v123)
        {
          *&v237 = *v125;
          v123 = v126;
        }

        ++v125;
        --v124;
      }

      while (v124);
    }

LABEL_128:
    *&v127 = 0x100000001;
    *(&v127 + 1) = 0x100000001;
    *v235 = v127;
    LODWORD(v23) = 1;
  }

LABEL_129:
  v179 = 0x300000003;
  v128 = &v181;
  v177 = off_100432B60;
  v180 = &v181;
  if (v23)
  {
    v128 = memcpy(&v181, &v237, 8 * v23);
    v129 = v181;
    if (v23 >= 2)
    {
      v130 = v23 - 1;
      v131 = &v182;
      do
      {
        v132 = *v131;
        if (*v131 > v129)
        {
          v181 = *v131;
          v129 = v132;
        }

        ++v131;
        --v130;
      }

      while (v130);
    }
  }

  else
  {
    v129 = v181;
  }

  *&v133 = 0x100000001;
  *(&v133 + 1) = 0x100000001;
  v178 = v133;
  if (fabs(v129) > 0.00001)
  {
    goto LABEL_138;
  }

  v255 = 0x100000003;
  v254 = xmmword_1003C6DC0;
  v253 = off_100432F08;
  v256 = &v257;
  v259 = 0x300000003;
  *&v258[8] = xmmword_1003C6D30;
  *v258 = off_100432B60;
  v260 = v261;
  if (fabs(sub_100034FD8(v183, &v253, v258) + -1.0) > 0.00001)
  {
LABEL_138:
    LogLevel = cnprint::CNPrinter::GetLogLevel(v128);
    if (LogLevel <= 1)
    {
      *v258 = 12;
      LOBYTE(v177) = 1;
      LogLevel = cnprint::CNPrinter::Print();
    }

LABEL_140:
    if (cnprint::CNPrinter::GetLogLevel(LogLevel) > 1)
    {
      return 0;
    }

LABEL_141:
    *v258 = 12;
    LOBYTE(v248) = 1;
    (*(*a3 + 16))(a3);
    goto LABEL_142;
  }

  v179 = 0x100000001;
  v177 = off_100432FE0;
  *&v135 = 0x100000001;
  *(&v135 + 1) = 0x100000001;
  v178 = v135;
  v180 = &v181;
  LODWORD(v181) = 3;
  sub_100035C0C(v258, &v248, &v242, &v177);
  v230 = 0x100000003;
  v226 = off_100432C88;
  v227 = *&v258[8];
  v136 = (*&v258[12] * *&v258[8]);
  v228 = *&v258[12] * *&v258[8];
  v229 = *&v258[8];
  v231 = v232;
  v137 = *&v258[16];
  if (*&v258[16] > 3)
  {
    v145 = v260;
    v146 = (*&v258[16] - 1) >> 1;
    v147 = v260;
    v148 = v232;
    do
    {
      v149 = *v147++;
      *v148++ = v149;
      --v146;
    }

    while (v146);
    *&v232[v137 - 2] = *&v145[v137 - 2];
  }

  else
  {
    if (v136 < 1)
    {
      goto LABEL_155;
    }

    v138 = v260;
    if (v136 < 6 || (&v226 - v260 + 40) < 0x20)
    {
      v139 = 0;
LABEL_149:
      v140 = v136 - v139;
      v141 = v139;
      v142 = &(&v226)[v139 + 5];
      v143 = &v138[v141];
      do
      {
        v144 = *v143++;
        *v142++ = v144;
        --v140;
      }

      while (v140);
      goto LABEL_155;
    }

    v139 = v136 & 0x7FFFFFFC;
    v173 = (v260 + 2);
    v174 = v233;
    v175 = v139;
    do
    {
      v176 = *v173;
      *(v174 - 1) = *(v173 - 1);
      *v174 = v176;
      v173 += 2;
      v174 += 2;
      v175 -= 4;
    }

    while (v175);
    if (v139 != v136)
    {
      goto LABEL_149;
    }
  }

LABEL_155:
  v179 = 0x100000003;
  v177 = off_100432C88;
  v178 = xmmword_1003C6DC0;
  v180 = &v181;
  v259 = 0x100000134;
  *&v258[8] = xmmword_1003C6F80;
  *v258 = off_1004330B8;
  v260 = v261;
  *&v235[16] = 0x100000003;
  *v235 = xmmword_1003C6DC0;
  v234 = off_100432C88;
  v236 = &v237;
  sub_100036CB0(&v226, &v177, v258, &v234, "2");
  if ((v151 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(v150);
    if (LogLevel > 1)
    {
      goto LABEL_140;
    }

    goto LABEL_157;
  }

  v152 = cntransformation::CNRigidTransformation::SetTransformationMatrix();
  if ((v152 & 1) == 0)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(v152);
    if (LogLevel > 1)
    {
      goto LABEL_140;
    }

LABEL_157:
    *v258 = 12;
    LOBYTE(v177) = 1;
    LogLevel = cnprint::CNPrinter::Print();
    goto LABEL_140;
  }

  v153 = sub_100033E44(*(a1 + 40), *(a1 + 64));
  if ((v153 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v153) > 1)
    {
      return 0;
    }

    goto LABEL_141;
  }

  sub_10003412C(a3 + 640, a3 + 200);
  *&v235[16] = 0x300000003;
  v234 = off_100432B60;
  v236 = &v237;
  *v235 = xmmword_1003C6D30;
  v240 = 0u;
  v239 = 0u;
  v238 = 0u;
  v237 = 0u;
  v241 = 0;
  *&v240 = 0xBFF0000000000000;
  *&v239 = 0xBFF0000000000000;
  *&v238 = 0xBFF0000000000000;
  sub_100036460(&v210, &v234);
  cnrotation::CNRotation::CNRotation(&v201, (a3 + 640));
  cnrotation::Cat(&v190, &v201, &v210, v154);
  cnrotation::CNRotation::operator=();
  cnrotation::CNRotation::drdq(v183, &v190);
  cnrotation::CNRotation::dqaqdqa(v258, &v210);
  sub_100034548(v183, v258, &v248);
  cnrotation::CNRotation::dqdr(&v177, &v201);
  sub_1000344C8(&v248, &v177, &v226);
  sub_10003460C(v258, a3 + 736);
  sub_10003460C(&v248, a3 + 960);
  sub_100034714(&v226, v258, &v177);
  sub_100034794(&v226, &v218);
  sub_100034714(&v177, &v218, v183);
  cntransformation::CNRigidTransformation::SetPrr();
  sub_100034714(&v226, &v248, v183);
  cntransformation::CNRigidTransformation::SetPrp();
  *(a3 + 1080) = 1;
  sub_10003460C(v183, a3 + 848);
  sub_100034934(a3 + 672);
  v158 = (*v187 < 0 || ((*v187 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*v187 - 1) > 0xFFFFFFFFFFFFELL;
  v166 = !v158 && ((v159 = v187[v185 + 1], v159 >= 0) ? (v160 = ((v159 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v160 = 1), v160 ? (v161 = (v159 - 1) > 0xFFFFFFFFFFFFELL) : (v161 = 0), !v161 && ((v162 = v187[2 * v185 + 2], v162 >= 0) ? (v163 = ((v162 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v163 = 1), v163 ? (v164 = (v162 - 1) > 0xFFFFFFFFFFFFELL) : (v164 = 0), !v164)) && v156 > 3185504.5 && (*&v156 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if (!cnprint::CNPrinter::GetLogLevel(v155))
  {
    LOWORD(v253) = 12;
    LOBYTE(v242) = 0;
    (*(*a3 + 16))(a3);
    v171 = *(a3 + 112);
    v177 = *(a3 + 104);
    *&v178 = v171;
    v218 = (*(*a3 + 16))(a3);
    v219 = v172;
    CNTimeSpan::operator-();
    cnprint::CNPrinter::Print();
  }

  return v166 & *(a3 + 1080);
}

uint64_t sub_100033E44(uint64_t a1, char a2)
{
  if ((a2 & 8) == 0)
  {
    return 0;
  }

  if (a1)
  {
    if (*(a1 + 24) == 6)
    {
      goto LABEL_5;
    }

    return 0;
  }

  a1 = *(qword_10045DBC8 + 40);
  if (*(a1 + 24) != 6)
  {
    return 0;
  }

LABEL_5:
  v3 = *(a1 + 16);
  if (*(*v3 + 24) == 6)
  {
    v4 = *(*v3 + 16);
    v37 = *v4;
    v43 = v4[1];
    v49 = v4[2];
    v19 = v4[3];
    v25 = v4[4];
    v31 = v4[5];
    v5 = v3[1];
    if (*(v5 + 24) == 6)
    {
      v6 = *(v5 + 16);
      v38 = *v6;
      v44 = v6[1];
      v50 = v6[2];
      v20 = v6[3];
      v26 = v6[4];
      v32 = v6[5];
      v7 = v3[2];
      if (*(v7 + 24) == 6)
      {
        v8 = *(v7 + 16);
        v39 = *v8;
        v45 = v8[1];
        v51 = v8[2];
        v21 = v8[3];
        v27 = v8[4];
        v33 = v8[5];
        v9 = v3[3];
        if (*(v9 + 24) == 6)
        {
          v10 = *(v9 + 16);
          v34 = *v10;
          v40 = v10[1];
          v46 = v10[2];
          v16 = v10[3];
          v22 = v10[4];
          v28 = v10[5];
          v11 = v3[4];
          if (*(v11 + 24) == 6)
          {
            v12 = *(v11 + 16);
            v35 = *v12;
            v41 = v12[1];
            v47 = v12[2];
            v17 = v12[3];
            v23 = v12[4];
            v29 = v12[5];
            v13 = v3[5];
            if (*(v13 + 24) == 6)
            {
              v14 = *(v13 + 16);
              v36 = *v14;
              v42 = v14[1];
              v48 = v14[2];
              v18 = v14[3];
              v24 = v14[4];
              v30 = v14[5];
              v15 = cntransformation::CNRigidTransformation::SetCovarianceMatrix();
              if (v15)
              {
                return 1;
              }

              if (cnprint::CNPrinter::GetLogLevel(v15) <= 1)
              {
                cnprint::CNPrinter::Print();
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10003412C(uint64_t a1, uint64_t a2)
{
  cnrotation::CNRotation::operator=();
  if (a1 == a2)
  {
LABEL_50:
    *(a1 + 432) = *(a2 + 432);
    return a1;
  }

  v5 = *(a2 + 40);
  v4 = *(a2 + 44);
  *(a1 + 40) = v5;
  *(a1 + 44) = v4;
  v6 = (v4 * v5);
  *(a1 + 48) = v6;
  *(a1 + 52) = v5;
  v7 = *(a2 + 48);
  if (v7 > 3)
  {
    v20 = (v7 - 2);
    v21 = *(a1 + 64);
    v22 = *(a2 + 64);
    v23 = (v7 - 1) >> 1;
    v24 = v22;
    v25 = v21;
    do
    {
      v26 = *v24++;
      *v25++ = v26;
      --v23;
    }

    while (v23);
    *(v21 + 8 * v20) = *(v22 + 8 * v20);
  }

  else if (v6 >= 1)
  {
    v8 = 0;
    v9 = *(a2 + 64);
    v10 = *(a1 + 64);
    if (v6 < 4)
    {
      goto LABEL_9;
    }

    if ((v10 - v9) < 0x20)
    {
      goto LABEL_9;
    }

    v8 = v6 & 0x7FFFFFFC;
    v11 = (v9 + 16);
    v12 = (v10 + 16);
    v13 = v8;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    if (v8 != v6)
    {
LABEL_9:
      v15 = v6 - v8;
      v16 = 8 * v8;
      v17 = (v10 + v16);
      v18 = (v9 + v16);
      do
      {
        v19 = *v18++;
        *v17++ = v19;
        --v15;
      }

      while (v15);
    }
  }

  v28 = *(a2 + 104);
  v27 = *(a2 + 108);
  *(a1 + 104) = v28;
  *(a1 + 108) = v27;
  v29 = (v27 * v28);
  *(a1 + 112) = v29;
  *(a1 + 116) = v28;
  v30 = *(a2 + 112);
  if (v30 > 3)
  {
    v43 = (v30 - 2);
    v44 = *(a1 + 128);
    v45 = *(a2 + 128);
    v46 = (v30 - 1) >> 1;
    v47 = v45;
    v48 = v44;
    do
    {
      v49 = *v47++;
      *v48++ = v49;
      --v46;
    }

    while (v46);
    *(v44 + 8 * v43) = *(v45 + 8 * v43);
  }

  else if (v29 >= 1)
  {
    v31 = 0;
    v32 = *(a2 + 128);
    v33 = *(a1 + 128);
    if (v29 < 4)
    {
      goto LABEL_22;
    }

    if ((v33 - v32) < 0x20)
    {
      goto LABEL_22;
    }

    v31 = v29 & 0x7FFFFFFC;
    v34 = (v32 + 16);
    v35 = (v33 + 16);
    v36 = v31;
    do
    {
      v37 = *v34;
      *(v35 - 1) = *(v34 - 1);
      *v35 = v37;
      v34 += 2;
      v35 += 2;
      v36 -= 4;
    }

    while (v36);
    if (v31 != v29)
    {
LABEL_22:
      v38 = v29 - v31;
      v39 = 8 * v31;
      v40 = (v33 + v39);
      v41 = (v32 + v39);
      do
      {
        v42 = *v41++;
        *v40++ = v42;
        --v38;
      }

      while (v38);
    }
  }

  v51 = *(a2 + 216);
  v50 = *(a2 + 220);
  *(a1 + 216) = v51;
  *(a1 + 220) = v50;
  v52 = (v50 * v51);
  *(a1 + 224) = v52;
  *(a1 + 228) = v51;
  v53 = *(a2 + 224);
  if (v53 > 3)
  {
    v66 = (v53 - 2);
    v67 = *(a1 + 240);
    v68 = *(a2 + 240);
    v69 = (v53 - 1) >> 1;
    v70 = v68;
    v71 = v67;
    do
    {
      v72 = *v70++;
      *v71++ = v72;
      --v69;
    }

    while (v69);
    *(v67 + 8 * v66) = *(v68 + 8 * v66);
  }

  else if (v52 >= 1)
  {
    v54 = 0;
    v55 = *(a2 + 240);
    v56 = *(a1 + 240);
    if (v52 < 4)
    {
      goto LABEL_35;
    }

    if ((v56 - v55) < 0x20)
    {
      goto LABEL_35;
    }

    v54 = v52 & 0x7FFFFFFC;
    v57 = (v55 + 16);
    v58 = (v56 + 16);
    v59 = v54;
    do
    {
      v60 = *v57;
      *(v58 - 1) = *(v57 - 1);
      *v58 = v60;
      v57 += 2;
      v58 += 2;
      v59 -= 4;
    }

    while (v59);
    if (v54 != v52)
    {
LABEL_35:
      v61 = v52 - v54;
      v62 = 8 * v54;
      v63 = (v56 + v62);
      v64 = (v55 + v62);
      do
      {
        v65 = *v64++;
        *v63++ = v65;
        --v61;
      }

      while (v61);
    }
  }

  v73 = *(a2 + 328);
  v74 = *(a2 + 332);
  *(a1 + 328) = v73;
  *(a1 + 332) = v74;
  v75 = (v74 * v73);
  *(a1 + 336) = v75;
  *(a1 + 340) = v73;
  v76 = *(a2 + 336);
  if (v76 <= 3)
  {
    if (v75 >= 1)
    {
      v77 = 0;
      v78 = *(a2 + 352);
      v79 = *(a1 + 352);
      if (v75 < 4)
      {
        goto LABEL_48;
      }

      if ((v79 - v78) < 0x20)
      {
        goto LABEL_48;
      }

      v77 = v75 & 0x7FFFFFFC;
      v80 = (v78 + 16);
      v81 = (v79 + 16);
      v82 = v77;
      do
      {
        v83 = *v80;
        *(v81 - 1) = *(v80 - 1);
        *v81 = v83;
        v80 += 2;
        v81 += 2;
        v82 -= 4;
      }

      while (v82);
      if (v77 != v75)
      {
LABEL_48:
        v84 = v75 - v77;
        v85 = 8 * v77;
        v86 = (v79 + v85);
        v87 = (v78 + v85);
        do
        {
          v88 = *v87++;
          *v86++ = v88;
          --v84;
        }

        while (v84);
      }
    }

    goto LABEL_50;
  }

  v90 = (v76 - 2);
  v91 = *(a1 + 352);
  v92 = *(a2 + 352);
  v93 = (v76 - 1) >> 1;
  v94 = v92;
  v95 = v91;
  do
  {
    v96 = *v94++;
    *v95++ = v96;
    --v93;
  }

  while (v93);
  *(v91 + 8 * v90) = *(v92 + 8 * v90);
  *(a1 + 432) = *(a2 + 432);
  return a1;
}

void sub_1000344C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = off_100432B60;
  *(a3 + 8) = xmmword_1003C6D30;
  *(a3 + 32) = a3 + 40;
  sub_100036154(a1, a2, a3);
}

void sub_100034548(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x400000003;
  *a3 = off_100433100;
  *(a3 + 8) = xmmword_1003C6FA0;
  *(a3 + 32) = a3 + 40;
  sub_100036154(a1, a2, a3);
}

__n128 sub_10003460C(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000003;
  *(a1 + 24) = 0x300000003;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100432B60;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = (v3 * v4);
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  *(a1 + 32) = a1 + 40;
  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v14 = (v6 - 2);
    v15 = *(a2 + 32);
    v16 = (v6 - 1) >> 1;
    v17 = v15;
    v18 = (a1 + 40);
    do
    {
      v19 = *v17++;
      *v18++ = v19;
      --v16;
    }

    while (v16);
    v20 = 8 * v14;
    result = *(v15 + v20);
    *(a1 + 40 + v20) = result;
  }

  else
  {
    if (v5 < 1)
    {
      return result;
    }

    v7 = *(a2 + 32);
    if (v5 < 6 || (a1 - v7 + 40) < 0x20)
    {
      v8 = 0;
LABEL_6:
      v9 = v5 - v8;
      v10 = v8;
      v11 = (8 * v8 + a1 + 40);
      v12 = &v7->n128_u64[v10];
      do
      {
        v13 = *v12++;
        result.n128_u64[0] = v13;
        *v11++ = v13;
        --v9;
      }

      while (v9);
      return result;
    }

    v8 = v5 & 0x7FFFFFFC;
    v21 = v7 + 1;
    v22 = (a1 + 56);
    v23 = v8;
    do
    {
      result = v21[-1];
      v24 = *v21;
      v22[-1] = result;
      *v22 = v24;
      v21 += 2;
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    if (v8 != v5)
    {
      goto LABEL_6;
    }
  }

  return result;
}

void sub_100034714(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = off_100432B60;
  *(a3 + 8) = xmmword_1003C6D30;
  *(a3 + 32) = a3 + 40;
  sub_100036154(a1, a2, a3);
}

double sub_100034794@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  *&v4 = 0x300000003;
  *(a2 + 24) = 0x300000003;
  *a2 = off_100432B60;
  v5 = a2 + 40;
  *(a2 + 32) = a2 + 40;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 16) = v3 * v2;
  *(a2 + 20) = v2;
  if (v2 && v3)
  {
    v6 = *(a1 + 20);
    v7 = *(a1 + 32);
    v8 = a2 + 40;
    if (v3 > 9)
    {
      if (v2 == 1)
      {
        v15 = v3 & 0xFFFFFFFC;
        v16 = v8 - v7;
        v18 = (v3 - 1) < 0 || v16 < 0x20;
        if (v3 == v15)
        {
          if (v18)
          {
            v19 = 0;
            for (i = 0; i != v3; ++i)
            {
              *&v4 = *(v7 + 8 * i);
              *(v5 + 8 * v19++) = v4;
            }
          }

          else
          {
            v26 = (a2 + 56);
            v27 = (v7 + 16);
            do
            {
              v4 = *(v27 - 1);
              v28 = *v27;
              *(v26 - 1) = v4;
              *v26 = v28;
              v26 += 2;
              v27 += 2;
              v15 -= 4;
            }

            while (v15);
          }
        }

        else
        {
          if (v18)
          {
            v15 = 0;
          }

          else
          {
            v29 = (a2 + 56);
            v30 = (v7 + 16);
            v31 = v3 & 0xFFFFFFFC;
            do
            {
              v32 = *v30;
              *(v29 - 1) = *(v30 - 1);
              *v29 = v32;
              v29 += 2;
              v30 += 2;
              v31 -= 4;
            }

            while (v31);
          }

          v33 = v15;
          do
          {
            *&v4 = *(v7 + 8 * v15);
            *(v5 + 8 * v33) = v4;
            ++v15;
            ++v33;
          }

          while (v3 != v15);
        }
      }

      else
      {
        v21 = 0;
        for (j = 0; j != v2; ++j)
        {
          v23 = v21;
          v24 = j;
          v25 = v3;
          do
          {
            *&v4 = *(v7 + 8 * v23);
            *(v5 + 8 * v24) = v4;
            v24 += v2;
            ++v23;
            --v25;
          }

          while (v25);
          v21 += v6;
        }
      }
    }

    else
    {
      v9 = 0;
      for (k = 0; k != v2; ++k)
      {
        v11 = (v8 + 8 * k);
        v12 = v3;
        v13 = (v7 + 8 * v9);
        do
        {
          v14 = *v13++;
          *&v4 = v14;
          *v11 = v14;
          v11 += v2;
          --v12;
        }

        while (v12);
        v9 += v6;
      }
    }
  }

  return *&v4;
}

void sub_100034934(uint64_t a1)
{
  v13 = 0x100000003;
  v11 = off_100432C88;
  v12 = xmmword_1003C6DC0;
  v14 = &v15;
  v8 = 0x100000134;
  v6 = off_1004330B8;
  v7 = xmmword_1003C6F80;
  v9 = &v10;
  v3 = 0x100000003;
  v1 = off_100432C88;
  v2 = xmmword_1003C6DC0;
  v4 = &v5;
  sub_100036CB0(a1, &v11, &v6, &v1, "2");
}

__n128 sub_100034A20@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 28) = 3;
  *a2 = off_100432B60;
  v2 = (a2 + 40);
  *(a2 + 32) = a2 + 40;
  v3 = *(a1 + 12);
  *(a2 + 8) = 1;
  *(a2 + 12) = v3;
  *(a2 + 16) = v3;
  result.n128_u64[0] = 0x300000001;
  *(a2 + 20) = 0x300000001;
  if (!v3)
  {
    if (*(a1 + 8) != 1)
    {
      return result;
    }

LABEL_29:
    result.n128_u64[0] = 0x100000001;
    result.n128_u64[1] = 0x100000001;
    *(a2 + 8) = result;
    return result;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 8);
  if (v6 < 2)
  {
    v10 = 0;
    if (v3 >= 8 && v6 == 1)
    {
      if ((a2 - v5 + 40) >= 0x20)
      {
        v10 = v3 & 0xFFFFFFFC;
        v11 = v5 + 1;
        v12 = (a2 + 56);
        v13 = v10;
        do
        {
          result = v11[-1];
          v14 = *v11;
          v12[-1] = result;
          *v12 = v14;
          v11 += 2;
          v12 += 2;
          v13 -= 4;
        }

        while (v13);
        if (v10 == v3)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    v15 = v3 - v10;
    v16 = (a2 + 8 * v10 + 40);
    v17 = v6 * v10;
    do
    {
      result.n128_u64[0] = v5->n128_u64[v17];
      *v16++ = result.n128_u64[0];
      v17 += v6;
      --v15;
    }

    while (v15);
    goto LABEL_21;
  }

  v7 = 0;
  for (i = 0; i != v3; ++i)
  {
    result.n128_u64[0] = v5->n128_u64[(v6 * i)];
    for (j = 1; j != v6; ++j)
    {
      if (v5->n128_f64[(v7 + j)] > result.n128_f64[0])
      {
        result.n128_u64[0] = v5->n128_u64[(v7 + j)];
      }
    }

    v2[i] = result.n128_f64[0];
    v7 += v6;
  }

LABEL_21:
  if (v3 == 1 || v6 == 1)
  {
    if (v3 >= 2)
    {
      v18 = *(a2 + 40);
      v19 = (a2 + 48);
      for (k = 1; k < v3; ++k)
      {
        v21 = *v19;
        if (*v19 > v18)
        {
          *v2 = v21;
          v18 = v21;
        }

        ++v19;
      }
    }

    goto LABEL_29;
  }

  return result;
}

float64x2_t sub_100034BB4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  *&result.f64[0] = 0x300000003;
  *(a2 + 24) = 0x300000003;
  *a2 = off_100432B60;
  v5 = (v3 * v2);
  *(a2 + 32) = a2 + 40;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 16) = v5;
  *(a2 + 20) = v2;
  if (v5 >= 1)
  {
    v6 = *(a1 + 32);
    if (v5 < 6 || (a2 - v6 + 40) < 0x20)
    {
      v7 = 0;
LABEL_5:
      v8 = v5 - v7;
      v9 = v7;
      v10 = (v9 * 8 + a2 + 40);
      v11 = &v6->f64[v9];
      do
      {
        v12 = *v11++;
        result.f64[0] = fabs(v12);
        *v10++ = result.f64[0];
        --v8;
      }

      while (v8);
      return result;
    }

    v7 = v5 & 0x7FFFFFFC;
    v13 = v6 + 1;
    v14 = (a2 + 56);
    v15 = v7;
    do
    {
      result = vabsq_f64(v13[-1]);
      v16 = vabsq_f64(*v13);
      v14[-1] = result;
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v7 != v5)
    {
      goto LABEL_5;
    }
  }

  return result;
}

float64x2_t sub_100034C80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&result.f64[0] = 0x300000003;
  *(a3 + 24) = 0x300000003;
  *a3 = off_100432B60;
  v4 = (a3 + 40);
  *(a3 + 32) = a3 + 40;
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  *(a3 + 8) = v6;
  *(a3 + 12) = v5;
  v7 = (v5 * v6);
  *(a3 + 16) = v7;
  *(a3 + 20) = v6;
  if (v7 > 3)
  {
    v13 = (v7 - 2);
    v14 = *(a1 + 32);
    v15 = *(a2 + 32);
    v16 = (v15 + 8 * v13);
    v17 = (v7 - 1) >> 1;
    v18 = v14;
    v19 = v4;
    do
    {
      v20 = *v18++;
      v21 = v20;
      v22 = *v15++;
      *v19++ = vsubq_f64(v21, v22);
      --v17;
    }

    while (v17);
    result = vsubq_f64(*(v14 + 8 * v13), *v16);
    *&v4[v13] = result;
  }

  else if (v7 >= 1)
  {
    v8 = *(a1 + 32);
    v9 = *(a2 + 32);
    do
    {
      v10 = *v8++;
      v11 = v10;
      v12 = *v9++;
      result.f64[0] = v11 - v12;
      *v4++ = result.f64[0];
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_100034D40(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = off_100432B60;
  v6 = (a3 + 40);
  *(a3 + 32) = a3 + 40;
  v7 = a2 * a1;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;
  if ((a2 * a1) > 3)
  {
    v8 = &v6[8 * v7];
    bzero(v6, 16 * ((v7 - 1) >> 1));
    *(v8 - 2) = 0;
    *(v8 - 1) = 0;
  }

  else if (v7 >= 1)
  {
    bzero(v6, 8 * a2 * a1);
  }

  if (a1 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  if (v9 >= 1)
  {
    v10 = a1 + 1;
    v11 = *(a3 + 32);
    v12 = 0;
    if (v9 == 1)
    {
      goto LABEL_10;
    }

    v15 = v10 < 0 ? ~a1 : a1 + 1;
    v16 = v15 * (v9 - 1);
    v17 = (v16 & 0x80000000) != 0;
    if (v10 < 0)
    {
      v17 = v16 > 0x80000000;
    }

    v18 = (v16 & 0xFFFFFFFF00000000) != 0;
    if (v17)
    {
      goto LABEL_10;
    }

    if (v18)
    {
      goto LABEL_10;
    }

    v19 = 0;
    v12 = v9 & 0x7FFFFFFE;
    v20 = v12;
    do
    {
      *(v11 + 8 * v19) = 0x3FF0000000000000;
      *(v11 + 8 * (v10 + v19)) = 0x3FF0000000000000;
      v19 += 2 * a1 + 2;
      v20 -= 2;
    }

    while (v20);
    if (v12 != v9)
    {
LABEL_10:
      v13 = v9 - v12;
      v14 = v10 * v12;
      do
      {
        *(v11 + 8 * v14) = 0x3FF0000000000000;
        v14 += v10;
        --v13;
      }

      while (v13);
    }
  }
}

double sub_100034E90(uint64_t a1)
{
  v9 = 0x100000003;
  v7 = off_100432F08;
  v8 = xmmword_1003C6DC0;
  v10 = &v11;
  v4 = 0x300000003;
  v2 = off_100432B60;
  v3 = xmmword_1003C6D30;
  v5 = &v6;
  return sub_100034FD8(a1, &v7, &v2);
}

void *sub_100034F34(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_100034FBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_100034FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a1)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 12);
    *(a3 + 8) = v6;
    *(a3 + 12) = v5;
    v7 = (v5 * v6);
    *(a3 + 16) = v7;
    *(a3 + 20) = v6;
    v8 = *(a1 + 16);
    if (v8 > 3)
    {
      v21 = (v8 - 2);
      v22 = *(a3 + 32);
      v23 = *(a1 + 32);
      v24 = (v22 + 8 * v21);
      v25 = (v8 - 1) >> 1;
      v26 = v23;
      do
      {
        v27 = *v26++;
        *v22++ = v27;
        --v25;
      }

      while (v25);
      *v24 = *(v23 + 8 * v21);
    }

    else if (v7 >= 1)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = *(a3 + 32);
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if ((v11 - v10) < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v7 & 0x7FFFFFFC;
      v12 = (v10 + 16);
      v13 = (v11 + 16);
      v14 = v9;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v9 != v7)
      {
LABEL_9:
        v16 = v7 - v9;
        v17 = 8 * v9;
        v18 = (v11 + v17);
        v19 = (v10 + v17);
        do
        {
          v20 = *v19++;
          *v18++ = v20;
          --v16;
        }

        while (v16);
      }
    }
  }

  v28 = *(a3 + 8);
  v29 = *(a3 + 12);
  v30 = *(a3 + 32);
  v31 = *(a2 + 32);
  v61 = *(a3 + 20);
  if (v28 >= 1)
  {
    v32 = 4 * v28;
    v33 = operator new[](4 * v28, &std::nothrow);
    if (v33)
    {
      v34 = v33;
      dgetrf_NEWLAPACK();
      memcpy(v31, v34, v32);
      operator delete[]();
    }
  }

  cnprint::CNPrinter::Print();
  v35 = *(a3 + 32);
  result = *v35;
  if (v29 >= 2)
  {
    v37 = v29 - 1;
    v38 = v29 + 1;
    do
    {
      result = result * v35[v38];
      v38 += v29 + 1;
      --v37;
    }

    while (v37);
  }

  if (v29 >= 1)
  {
    v39 = *(a2 + 32);
    if (v29 > 7)
    {
      v42 = vdupq_n_s64(v29);
      v41 = v29 & 7;
      v43 = vaddq_s64(v42, xmmword_1003C6FB0);
      v44 = vaddq_s64(v42, xmmword_1003C6FC0);
      v45 = (v39 + 4 * v29 - 16);
      v46 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
      v47 = 0uLL;
      v48 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
      v49 = v29 & 0x7FFFFFF8;
      v50 = 0uLL;
      do
      {
        v51 = vrev64q_s32(*v45);
        v52 = vextq_s8(v51, v51, 8uLL);
        v53 = vrev64q_s32(v45[-1]);
        v54 = vextq_s8(v53, v53, 8uLL);
        v55.i64[0] = v52.u32[0];
        v55.i64[1] = v52.u32[1];
        v56 = v55;
        v55.i64[0] = v52.u32[2];
        v55.i64[1] = v52.u32[3];
        v57 = v55;
        v55.i64[0] = v54.u32[0];
        v55.i64[1] = v54.u32[1];
        v58 = v55;
        v55.i64[0] = v54.u32[2];
        v55.i64[1] = v54.u32[3];
        v47 = vsubq_s32(v47, vmvnq_s8(vuzp1q_s32(vceqq_s64(v44, v56), vceqq_s64(v43, v57))));
        v50 = vsubq_s32(v50, vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v44, v46), v58), vceqq_s64(vaddq_s64(v43, v46), v55))));
        v43 = vaddq_s64(v43, v48);
        v44 = vaddq_s64(v44, v48);
        v45 -= 2;
        v49 -= 8;
      }

      while (v49);
      v40 = vaddvq_s32(vaddq_s32(v50, v47));
      if ((v29 & 0x7FFFFFF8) == v29)
      {
LABEL_31:
        if (v40)
        {
          return -result;
        }

        return result;
      }
    }

    else
    {
      v40 = 0;
      v41 = v29;
    }

    v59 = v39 - 4;
    do
    {
      if (v41 != *(v59 + 4 * v41))
      {
        ++v40;
      }
    }

    while (v41-- > 1);
    goto LABEL_31;
  }

  return result;
}

void sub_10003535C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

__n128 sub_100035430(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v2 = *(a2 + 12);
    *(a1 + 8) = v3;
    *(a1 + 12) = v2;
    v4 = (v2 * v3);
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v19 = (v5 - 2);
      v20 = *(a1 + 32);
      v21 = *(a2 + 32);
      v22 = (v20 + 8 * v19);
      v23 = (v5 - 1) >> 1;
      v24 = v21;
      do
      {
        v25 = *v24++;
        *v20++ = v25;
        --v23;
      }

      while (v23);
      result = *(v21 + 8 * v19);
      *v22 = result;
    }

    else if (v4 >= 1)
    {
      v6 = 0;
      v7 = *(a2 + 32);
      v8 = *(a1 + 32);
      if (v4 < 4)
      {
        goto LABEL_9;
      }

      if ((v8 - v7) < 0x20)
      {
        goto LABEL_9;
      }

      v6 = v4 & 0x7FFFFFFC;
      v9 = v7 + 1;
      v10 = v8 + 1;
      v11 = v6;
      do
      {
        result = v9[-1];
        v13 = *v9;
        v10[-1] = result;
        *v10 = v13;
        v9 += 2;
        v10 += 2;
        v11 -= 4;
      }

      while (v11);
      if (v6 != v4)
      {
LABEL_9:
        v14 = v4 - v6;
        v15 = v6;
        v16 = &v8->n128_u64[v15];
        v17 = &v7->n128_u64[v15];
        do
        {
          v18 = *v17++;
          result.n128_u64[0] = v18;
          *v16++ = v18;
          --v14;
        }

        while (v14);
      }
    }
  }

  return result;
}

void *sub_10003550C(void *result)
{
  result[22] = off_100432D70;
  result[15] = off_100432D70;
  *result = off_100432BB8;
  return result;
}

void sub_1000355A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

uint64_t sub_1000356A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(result + 24) = 0x300000003;
  *(result + 8) = xmmword_1003C6D30;
  *(result + 32) = result + 40;
  *result = off_100432F98;
  *(result + 144) = 0x100000003;
  *(result + 112) = a2;
  *(result + 120) = off_100432F08;
  *(result + 128) = xmmword_1003C6DC0;
  *(result + 152) = result + 160;
  *(result + 200) = 0x100000003;
  *(result + 176) = off_100432F08;
  *(result + 184) = xmmword_1003C6DC0;
  v4 = result + 216;
  *(result + 208) = result + 216;
  if (result + 120 == a3)
  {
    LODWORD(v7) = 3;
    goto LABEL_17;
  }

  v6 = *(a3 + 8);
  v5 = *(a3 + 12);
  *(result + 128) = v6;
  *(result + 132) = v5;
  v7 = (v5 * v6);
  *(result + 136) = v7;
  *(result + 140) = v6;
  v8 = *(a3 + 16);
  if (v8 > 3)
  {
    v16 = (v8 - 1);
    v17 = *(a3 + 32);
    if (v8 > 8 && (result - v17 + 160) >= 0x20)
    {
      v18 = v16 & 0x7FFFFFF8;
      v52 = (v17 + 16);
      v53 = v18;
      v54 = (result + 176);
      do
      {
        v55 = *v52;
        *(v54 - 1) = *(v52 - 1);
        *v54 = v55;
        v52 += 2;
        v54 += 2;
        v53 -= 8;
      }

      while (v53);
      if (v18 == v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v16 - v18;
    v20 = 4 * v18;
    v21 = (4 * v18 + result + 160);
    v22 = (v17 + v20);
    do
    {
      v23 = *v22++;
      *v21++ = v23;
      --v19;
    }

    while (v19);
LABEL_16:
    *(result + 160 + 4 * v16) = *(v17 + 4 * v16);
    goto LABEL_17;
  }

  if (v7 < 1)
  {
    goto LABEL_17;
  }

  v9 = *(a3 + 32);
  if (v7 < 8 || (result - v9 + 160) < 0x20)
  {
    v10 = 0;
LABEL_7:
    v11 = v7 - v10;
    v12 = 4 * v10;
    v13 = (4 * v10 + result + 160);
    v14 = (v9 + v12);
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v11;
    }

    while (v11);
    goto LABEL_17;
  }

  v10 = v7 & 0x7FFFFFF8;
  v60 = (v9 + 16);
  v61 = v10;
  v62 = (result + 176);
  do
  {
    v63 = *v60;
    *(v62 - 1) = *(v60 - 1);
    *v62 = v63;
    v60 += 2;
    v62 += 2;
    v61 -= 8;
  }

  while (v61);
  if (v10 != v7)
  {
    goto LABEL_7;
  }

LABEL_17:
  if (result + 176 == a4)
  {
    LODWORD(v26) = *(result + 192);
    goto LABEL_33;
  }

  v25 = *(a4 + 8);
  v24 = *(a4 + 12);
  *(result + 184) = v25;
  *(result + 188) = v24;
  v26 = (v24 * v25);
  *(result + 192) = v26;
  *(result + 196) = v25;
  v27 = *(a4 + 16);
  if (v27 > 3)
  {
    v35 = (v27 - 1);
    v36 = *(a4 + 32);
    if (v27 > 8 && (result - v36 + 216) >= 0x20)
    {
      v37 = v35 & 0x7FFFFFF8;
      v56 = (v36 + 16);
      v57 = (result + 232);
      v58 = v37;
      do
      {
        v59 = *v56;
        *(v57 - 1) = *(v56 - 1);
        *v57 = v59;
        v56 += 2;
        v57 += 2;
        v58 -= 8;
      }

      while (v58);
      if (v37 == v35)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = v35 - v37;
    v39 = 4 * v37;
    v40 = (4 * v37 + result + 216);
    v41 = (v36 + v39);
    do
    {
      v42 = *v41++;
      *v40++ = v42;
      --v38;
    }

    while (v38);
LABEL_32:
    *(v4 + 4 * v35) = *(v36 + 4 * v35);
    goto LABEL_33;
  }

  if (v26 < 1)
  {
    goto LABEL_33;
  }

  v28 = *(a4 + 32);
  if (v26 < 8 || (result - v28 + 216) < 0x20)
  {
    v29 = 0;
LABEL_23:
    v30 = v26 - v29;
    v31 = 4 * v29;
    v32 = (4 * v29 + result + 216);
    v33 = (v28 + v31);
    do
    {
      v34 = *v33++;
      *v32++ = v34;
      --v30;
    }

    while (v30);
    goto LABEL_33;
  }

  v29 = v26 & 0x7FFFFFF8;
  v64 = (v28 + 16);
  v65 = (result + 232);
  v66 = v29;
  do
  {
    v67 = *v64;
    *(v65 - 1) = *(v64 - 1);
    *v65 = v67;
    v64 += 2;
    v65 += 2;
    v66 -= 8;
  }

  while (v66);
  if (v29 != v26)
  {
    goto LABEL_23;
  }

LABEL_33:
  *(result + 8) = v7;
  *(result + 12) = v26;
  *(result + 16) = v26 * v7;
  *(result + 20) = v7;
  if (v26 && v7)
  {
    v43 = 0;
    v44 = 0;
    v45 = *(a2 + 20);
    v46 = *(a2 + 32);
    do
    {
      v47 = v45 * *(v4 + 4 * v44);
      v48 = v7;
      v49 = (result + 160);
      v50 = v43;
      do
      {
        v51 = *v49++;
        *(result + 40 + 8 * v50++) = *(v46 + 8 * (v47 + v51));
        --v48;
      }

      while (v48);
      ++v44;
      v43 += v7;
    }

    while (v44 != v26);
  }

  return result;
}

void sub_100035A28(void *a1)
{
  a1[22] = off_100432D70;
  a1[15] = off_100432D70;
  *a1 = off_100432BB8;
  operator delete();
}

void *sub_100035A98(void *result)
{
  result[16] = off_100432D70;
  result[9] = off_100432D70;
  *result = off_100432BB8;
  return result;
}

void sub_100035B54(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(&v12, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = v12;
        v9 = (v7 + 4);
        v10 = v6 - 1;
        v11 = v2 + v1 - v4;
        do
        {
          if (!v8)
          {
            *(v7 + 4 * (v11 % v6)) = *v9;
            v8 = 1;
          }

          v11 += v2 + v1 - v4;
          ++v9;
          --v10;
        }

        while (v10);
      }
    }
  }
}

uint64_t sub_100035C0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(result + 24) = 0x100000003;
  *(result + 8) = xmmword_1003C6DC0;
  *(result + 32) = result + 40;
  *result = off_100433028;
  *(result + 96) = 0x100000003;
  *(result + 64) = a2;
  *(result + 72) = off_100432F08;
  *(result + 80) = xmmword_1003C6DC0;
  *(result + 104) = result + 112;
  *(result + 152) = 0x100000001;
  *(result + 128) = off_100432FE0;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  *(result + 136) = v4;
  v5 = result + 168;
  *(result + 160) = result + 168;
  if (result + 72 == a3)
  {
    LODWORD(v8) = 3;
    goto LABEL_17;
  }

  v7 = *(a3 + 8);
  v6 = *(a3 + 12);
  *(result + 80) = v7;
  *(result + 84) = v6;
  v8 = (v6 * v7);
  *(result + 88) = v8;
  *(result + 92) = v7;
  v9 = *(a3 + 16);
  if (v9 > 3)
  {
    v17 = (v9 - 1);
    v18 = *(a3 + 32);
    if (v9 > 8 && (result - v18 + 112) >= 0x20)
    {
      v19 = v17 & 0x7FFFFFF8;
      v53 = (v18 + 16);
      v54 = v19;
      v55 = (result + 128);
      do
      {
        v56 = *v53;
        *(v55 - 1) = *(v53 - 1);
        *v55 = v56;
        v53 += 2;
        v55 += 2;
        v54 -= 8;
      }

      while (v54);
      if (v19 == v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = v17 - v19;
    v21 = 4 * v19;
    v22 = (4 * v19 + result + 112);
    v23 = (v18 + v21);
    do
    {
      v24 = *v23++;
      *v22++ = v24;
      --v20;
    }

    while (v20);
LABEL_16:
    *(result + 112 + 4 * v17) = *(v18 + 4 * v17);
    goto LABEL_17;
  }

  if (v8 < 1)
  {
    goto LABEL_17;
  }

  v10 = *(a3 + 32);
  if (v8 < 8 || (result - v10 + 112) < 0x20)
  {
    v11 = 0;
LABEL_7:
    v12 = v8 - v11;
    v13 = 4 * v11;
    v14 = (4 * v11 + result + 112);
    v15 = (v10 + v13);
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v12;
    }

    while (v12);
    goto LABEL_17;
  }

  v11 = v8 & 0x7FFFFFF8;
  v61 = (v10 + 16);
  v62 = v11;
  v63 = (result + 128);
  do
  {
    v64 = *v61;
    *(v63 - 1) = *(v61 - 1);
    *v63 = v64;
    v61 += 2;
    v63 += 2;
    v62 -= 8;
  }

  while (v62);
  if (v11 != v8)
  {
    goto LABEL_7;
  }

LABEL_17:
  if (result + 128 == a4)
  {
    LODWORD(v27) = *(result + 144);
    goto LABEL_33;
  }

  v26 = *(a4 + 8);
  v25 = *(a4 + 12);
  *(result + 136) = v26;
  *(result + 140) = v25;
  v27 = (v25 * v26);
  *(result + 144) = v27;
  *(result + 148) = v26;
  v28 = *(a4 + 16);
  if (v28 > 3)
  {
    v36 = (v28 - 1);
    v37 = *(a4 + 32);
    if (v28 > 8 && (result - v37 + 168) >= 0x20)
    {
      v38 = v36 & 0x7FFFFFF8;
      v57 = (v37 + 16);
      v58 = (result + 184);
      v59 = v38;
      do
      {
        v60 = *v57;
        *(v58 - 1) = *(v57 - 1);
        *v58 = v60;
        v57 += 2;
        v58 += 2;
        v59 -= 8;
      }

      while (v59);
      if (v38 == v36)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = v36 - v38;
    v40 = 4 * v38;
    v41 = (4 * v38 + result + 168);
    v42 = (v37 + v40);
    do
    {
      v43 = *v42++;
      *v41++ = v43;
      --v39;
    }

    while (v39);
LABEL_32:
    *(v5 + 4 * v36) = *(v37 + 4 * v36);
    goto LABEL_33;
  }

  if (v27 < 1)
  {
    goto LABEL_33;
  }

  v29 = *(a4 + 32);
  if (v27 < 8 || (result - v29 + 168) < 0x20)
  {
    v30 = 0;
LABEL_23:
    v31 = v27 - v30;
    v32 = 4 * v30;
    v33 = (4 * v30 + result + 168);
    v34 = (v29 + v32);
    do
    {
      v35 = *v34++;
      *v33++ = v35;
      --v31;
    }

    while (v31);
    goto LABEL_33;
  }

  v30 = v27 & 0x7FFFFFF8;
  v65 = (v29 + 16);
  v66 = (result + 184);
  v67 = v30;
  do
  {
    v68 = *v65;
    *(v66 - 1) = *(v65 - 1);
    *v66 = v68;
    v65 += 2;
    v66 += 2;
    v67 -= 8;
  }

  while (v67);
  if (v30 != v27)
  {
    goto LABEL_23;
  }

LABEL_33:
  *(result + 8) = v8;
  *(result + 12) = v27;
  *(result + 16) = v27 * v8;
  *(result + 20) = v8;
  if (v27 && v8)
  {
    v44 = 0;
    v45 = 0;
    v46 = *(a2 + 20);
    v47 = *(a2 + 32);
    do
    {
      v48 = v46 * *(v5 + 4 * v45);
      v49 = v8;
      v50 = (result + 112);
      v51 = v44;
      do
      {
        v52 = *v50++;
        *(result + 40 + 8 * v51++) = *(v47 + 8 * (v48 + v52));
        --v49;
      }

      while (v49);
      ++v45;
      v44 += v8;
    }

    while (v45 != v27);
  }

  return result;
}

void sub_100035F88(void *a1)
{
  a1[16] = off_100432D70;
  a1[9] = off_100432D70;
  *a1 = off_100432BB8;
  operator delete();
}

void sub_100036054(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_100036154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3;
  *(a3 + 8) = __PAIR64__(HIDWORD(v4), v3);
  v6 = HIDWORD(v4);
  *(a3 + 16) = HIDWORD(v4) * v3;
  *(a3 + 20) = v3;
  v7.i64[0] = v4;
  v7.i64[1] = v3;
  v8 = *(a1 + 32);
  if (vmaxvq_u32(v7) > 5)
  {
    v54 = *(a3 + 32);
    v53 = *(a2 + 32);
    cblas_dgemm_NEWLAPACK();
  }

  else
  {
    if (HIDWORD(v4))
    {
      v9 = v3 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *(a3 + 32);
      v11 = HIDWORD(v3);
      if (HIDWORD(v3))
      {
        v12 = *(a2 + 32);
        if (HIDWORD(v3) > 3)
        {
          if (v3 == 1)
          {
            v19 = HIDWORD(v3) & 0xFFFFFFFC;
            v20 = HIDWORD(v3) - v19;
            if (HIDWORD(v3) == v19)
            {
              v21 = 0;
              v22 = (v12 + 2);
              v23 = 8 * v4;
              do
              {
                v24 = 0.0;
                v25 = v8 + 1;
                v26 = v22;
                v27 = v19;
                do
                {
                  v28 = vmulq_f64(v25[-1], v26[-1]);
                  v29 = vmulq_f64(*v25, *v26);
                  v24 = v24 + v28.f64[0] + v28.f64[1] + v29.f64[0] + v29.f64[1];
                  v26 += 2;
                  v25 += 2;
                  v27 -= 4;
                }

                while (v27);
                v10[v21 * v5] = v24;
                ++v21;
                v22 = (v22 + v23);
              }

              while (v21 != v6);
            }

            else
            {
              v38 = 0;
              v39 = (v12 + 2);
              v40 = 8 * v4;
              v41 = HIDWORD(v3) >> 2;
              v42 = &v12[4 * v41];
              do
              {
                v43 = 0.0;
                v44 = v8 + 1;
                v45 = v39;
                v46 = v19;
                do
                {
                  v47 = vmulq_f64(v44[-1], v45[-1]);
                  v48 = vmulq_f64(*v44, *v45);
                  v43 = v43 + v47.f64[0] + v47.f64[1] + v48.f64[0] + v48.f64[1];
                  v45 += 2;
                  v44 += 2;
                  v46 -= 4;
                }

                while (v46);
                f64 = v8[2 * v41].f64;
                v50 = v42;
                v51 = v20;
                do
                {
                  v52 = *v50++;
                  v43 = v43 + *f64 * v52;
                  f64 += v5;
                  --v51;
                }

                while (v51);
                v10[v38 * v5] = v43;
                ++v38;
                v39 = (v39 + v40);
                v42 = (v42 + v40);
              }

              while (v38 != v6);
            }
          }

          else
          {
            v30 = 0;
            do
            {
              v31 = 0;
              v32 = v8;
              do
              {
                v33 = 0.0;
                v34 = v11;
                v35 = v12;
                v36 = v32;
                do
                {
                  v37 = *v35++;
                  v33 = v33 + *v36 * v37;
                  v36 += v5;
                  --v34;
                }

                while (v34);
                v10[v30 * v5 + v31++] = v33;
                ++v32;
              }

              while (v31 != v5);
              ++v30;
              v12 += v4;
            }

            while (v30 != HIDWORD(v4));
          }
        }

        else
        {
          v13 = 0;
          do
          {
            v14 = &v12[v13 * v4];
            v15 = v8;
            v16 = v10;
            v17 = v3;
            do
            {
              v18 = *v15 * *v14 + 0.0;
              if (HIDWORD(v3) != 1)
              {
                v18 = v18 + v15[v3] * v14[1];
                if (HIDWORD(v3) != 2)
                {
                  v18 = v18 + v15[2 * v3] * v14[2];
                }
              }

              *v16++ = v18;
              ++v15;
              --v17;
            }

            while (v17);
            ++v13;
            v10 += v3;
          }

          while (v13 != HIDWORD(v4));
        }
      }

      else
      {

        bzero(v10, 8 * v3 * HIDWORD(v4));
      }
    }
  }
}

void sub_100036CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s1)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  v9 = *__s1;
  if (v8 != 1 && v7 != 1)
  {
    if (v9 == 50)
    {
      if (!__s1[1])
      {
        sub_1000375CC(a1, a2, a3, a4);
        v15 = **(a4 + 32);
        return;
      }

LABEL_24:
      if (strcmp(__s1, "inf"))
      {
        if (strcmp(__s1, "fro"))
        {
          v129 = 4;
          v128 = 5;
          goto LABEL_69;
        }

        v60 = *(a1 + 32);
        v61 = *v60 * *v60;
        if (v5 != 1)
        {
          if (v5 <= 2)
          {
            v62 = 1;
LABEL_117:
            v101 = &v60[v62];
            v102 = v5 - v62;
            do
            {
              v103 = *v101++;
              v61 = v61 + v103 * v103;
              --v102;
            }

            while (v102);
            return;
          }

          v62 = (v5 - 1) | 1;
          v99 = v60 + 2;
          v100 = (v5 - 1) & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v61 = v61 + *(v99 - 1) * *(v99 - 1) + *v99 * *v99;
            v99 += 2;
            v100 -= 2;
          }

          while (v100);
          if (v5 - 1 != ((v5 - 1) & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_117;
          }
        }

        return;
      }

      if (v8)
      {
        v26 = 0;
        v27 = *(a1 + 32);
        v28 = a2;
        v29 = *(a2 + 32);
        if (v8 < 4)
        {
          goto LABEL_39;
        }

        if ((v29 - v27) <= 0x1F)
        {
          goto LABEL_39;
        }

        v26 = v8 & 0xFFFFFFFC;
        v30 = v27 + 1;
        v31 = v29 + 1;
        v32 = v26;
        do
        {
          v33 = vabsq_f64(*v30);
          v31[-1] = vabsq_f64(v30[-1]);
          *v31 = v33;
          v30 += 2;
          v31 += 2;
          v32 -= 4;
        }

        while (v32);
        if (v26 != v8)
        {
LABEL_39:
          v34 = &v27->f64[v26];
          v35 = &v29->f64[v26];
          v36 = v8 - v26;
          do
          {
            v37 = *v34++;
            *v35++ = fabs(v37);
            --v36;
          }

          while (v36);
        }

        if (v7 > 1)
        {
          v38 = 0;
          v39 = *(a1 + 32);
          v40 = *(a2 + 32);
          v41 = 1;
          v42 = v8;
          while (1)
          {
            ++v38;
            if (v8 >= 6)
            {
              v43 = 0;
              if (__CFADD__(v8 * v38, v8 - 1) || (v8 - 1) >> 32)
              {
                goto LABEL_45;
              }

              v47 = 8 * (v8 * v38);
              if (v40 >= v39 + 8 * v8 + v47 || v39 + v47 >= &v40[v8])
              {
                v49 = v42;
                v50 = v8 & 0xFFFFFFFC;
                v51 = (v40 + 2);
                do
                {
                  v52 = (v39 + 8 * v49);
                  v53 = vaddq_f64(vabsq_f64(v52[1]), *v51);
                  v51[-1] = vaddq_f64(vabsq_f64(*v52), v51[-1]);
                  *v51 = v53;
                  v51 += 2;
                  v49 += 4;
                  v50 -= 4;
                }

                while (v50);
                v43 = v8 & 0xFFFFFFFC;
                if (v43 == v8)
                {
                  goto LABEL_47;
                }

                goto LABEL_45;
              }
            }

            v43 = 0;
LABEL_45:
            v44 = &v40[v43];
            v45 = v42 + v43;
            v46 = v8 - v43;
            do
            {
              *v44 = fabs(*(v39 + 8 * v45)) + *v44;
              ++v44;
              ++v45;
              --v46;
            }

            while (v46);
LABEL_47:
            ++v41;
            v42 += v8;
            if (v41 == v7)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else
      {
        v28 = a2;
        if (v7 >= 2)
        {
          v63 = **(a2 + 32);
          return;
        }
      }

      v40 = *(v28 + 32);
LABEL_73:
      v64 = *v40;
      if (v8 >= 2)
      {
        v65 = v40 + 1;
        v66 = v8 - 1;
        do
        {
          v67 = *v65++;
          v68 = v67;
          if (v67 > v64)
          {
            v64 = v68;
          }

          --v66;
        }

        while (v66);
      }

      return;
    }

    if (v9 != 49 || __s1[1])
    {
      goto LABEL_24;
    }

    if (!v7)
    {
      v104 = **(a2 + 32);
      return;
    }

    v72 = *(a1 + 32);
    v73 = *(a2 + 32);
    if (v8 <= 1)
    {
      v105 = *(a1 + 12);
      v106 = *(a2 + 32);
      do
      {
        *v106++ = fabs(*v72);
        v72 += v8;
        --v105;
      }

      while (v105);
LABEL_123:
      v107 = *v73;
      if (v7 != 1)
      {
        v108 = v73 + 1;
        v109 = v7 - 1;
        do
        {
          v110 = *v108++;
          v111 = v110;
          if (v110 > v107)
          {
            v107 = v111;
          }

          --v109;
        }

        while (v109);
      }

      return;
    }

    v74 = 0;
    v75 = 0;
    v76 = (v8 - 1) & 0xFFFFFFFFFFFFFFFCLL;
    v77 = 1;
    while (1)
    {
      v78 = v8 * v75;
      v79 = fabs(v72[(v8 * v75)]);
      v73[v75] = v79;
      if (v8 >= 9 && (-2 - v78 >= (v8 - 2) ? (v80 = (v8 - 2) >> 32 == 0) : (v80 = 0), v80 && ((v81 = (v78 + 1), v73 < &v72[v8 - 1 + v81]) ? (v82 = &v72[v81] >= &v73[v7]) : (v82 = 1), v82)))
      {
        v83 = (v8 - 1) & 0xFFFFFFFFFFFFFFFCLL;
        v84 = v77;
        do
        {
          v85 = &v72[v84];
          v86 = vabsq_f64(*v85);
          v87 = vabsq_f64(v85[1]);
          v79 = v79 + v86.f64[0] + v86.f64[1] + v87.f64[0] + v87.f64[1];
          v84 += 4;
          v83 -= 4;
        }

        while (v83);
        v73[v75] = v79;
        v88 = v76 | 1;
        if (v8 - 1 == v76)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v88 = 1;
      }

      v89 = v74 + v88;
      v90 = v8 - v88;
      do
      {
        v79 = v79 + fabs(v72[v89]);
        v73[v75] = v79;
        ++v89;
        --v90;
      }

      while (v90);
LABEL_103:
      ++v75;
      v77 += v8;
      v74 += v8;
      if (v75 == v7)
      {
        goto LABEL_123;
      }
    }
  }

  if (v9 == 50)
  {
    if (!__s1[1])
    {
      v11 = *(a1 + 32);
      v12 = *v11 * *v11;
      if (v5 == 1)
      {
        return;
      }

      if (v5 > 2)
      {
        v13 = (v5 - 1) | 1;
        v94 = v11 + 2;
        v95 = (v5 - 1) & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v12 = v12 + *(v94 - 1) * *(v94 - 1) + *v94 * *v94;
          v94 += 2;
          v95 -= 2;
        }

        while (v95);
        if (v5 - 1 == ((v5 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          return;
        }
      }

      else
      {
        v13 = 1;
      }

      v96 = &v11[v13];
      v97 = v5 - v13;
      do
      {
        v98 = *v96++;
        v12 = v12 + v98 * v98;
        --v97;
      }

      while (v97);
      return;
    }
  }

  else if (v9 == 49 && !__s1[1])
  {
    v69 = *(a1 + 32);
    v70 = fabs(*v69);
    if (v5 == 1)
    {
      return;
    }

    if (v5 >= 5)
    {
      v112 = (v5 - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v71 = v112 | 1;
      v113 = (v69 + 3);
      v114 = v112;
      do
      {
        v115 = vabsq_f64(v113[-1]);
        v116 = vabsq_f64(*v113);
        v70 = v70 + v115.f64[0] + v115.f64[1] + v116.f64[0] + v116.f64[1];
        v113 += 2;
        v114 -= 4;
      }

      while (v114);
      if (v5 - 1 == v112)
      {
        return;
      }
    }

    else
    {
      v71 = 1;
    }

    v117 = &v69[v71];
    v118 = v5 - v71;
    do
    {
      v119 = *v117++;
      v70 = v70 + fabs(v119);
      --v118;
    }

    while (v118);
    return;
  }

  if (!strcmp(__s1, "inf"))
  {
    v20 = *(a1 + 32);
    v21 = fabs(*v20);
    if (v5 != 1)
    {
      v22 = v20 + 1;
      v23 = v5 - 1;
      do
      {
        v24 = *v22++;
        v25 = fabs(v24);
        if (v25 > v21)
        {
          v21 = v25;
        }

        --v23;
      }

      while (v23);
    }

    return;
  }

  if (!strcmp(__s1, "-inf"))
  {
    v54 = *(a1 + 32);
    v55 = fabs(*v54);
    if (v5 != 1)
    {
      v56 = v54 + 1;
      v57 = v5 - 1;
      do
      {
        v58 = *v56++;
        v59 = fabs(v58);
        if (v59 < v55)
        {
          v55 = v59;
        }

        --v57;
      }

      while (v57);
    }

    return;
  }

  v127 = 0.0;
  if (sscanf(__s1, "%lg", &v127) != 1)
  {
LABEL_69:
    cnprint::CNPrinter::Print();
    return;
  }

  v17 = v127;
  if (fabs(v127) >= 2.22044605e-16)
  {
    v91 = *(a1 + 32);
    v92 = pow(fabs(*v91), v127);
    if (v5 != 1)
    {
      if (v5 >= 3)
      {
        v93 = (v5 - 1) | 1;
        v120 = v91 + 2;
        v121 = (v5 - 1) & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v122 = fabs(*v120);
          v123 = pow(fabs(*(v120 - 1)), v17);
          v92 = v92 + v123 + pow(v122, v17);
          v120 += 2;
          v121 -= 2;
        }

        while (v121);
        if (v5 - 1 == ((v5 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_140;
        }
      }

      else
      {
        v93 = 1;
      }

      v124 = &v91[v93];
      v125 = v5 - v93;
      do
      {
        v126 = *v124++;
        v92 = v92 + pow(fabs(v126), v17);
        --v125;
      }

      while (v125);
    }

LABEL_140:
    pow(v92, 1.0 / v17);
  }
}

void sub_1000374C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

cnprint::CNPrinter *sub_1000375CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = *(a3 + 28) * *(a3 + 24);
  if (a2 != a1)
  {
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
    v9 = v7 * v6;
    *(a2 + 16) = v9;
    *(a2 + 20) = v6;
    v10 = *(a1 + 16);
    if (v10 > 3)
    {
      v23 = (v10 - 2);
      v24 = *(a2 + 32);
      v25 = *(a1 + 32);
      v26 = (v24 + 8 * v23);
      v27 = (v10 - 1) >> 1;
      v28 = v25;
      do
      {
        v29 = *v28++;
        *v24++ = v29;
        --v27;
      }

      while (v27);
      *v26 = *(v25 + 8 * v23);
    }

    else if (v9 >= 1)
    {
      v11 = 0;
      v12 = *(a1 + 32);
      v13 = *(a2 + 32);
      if (v9 < 4)
      {
        goto LABEL_9;
      }

      if ((v13 - v12) < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v9 & 0x7FFFFFFC;
      v14 = (v12 + 16);
      v15 = (v13 + 16);
      v16 = v11;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v11 != v9)
      {
LABEL_9:
        v18 = v9 - v11;
        v19 = 8 * v11;
        v20 = (v13 + v19);
        v21 = (v12 + v19);
        do
        {
          v22 = *v21++;
          *v20++ = v22;
          --v18;
        }

        while (v18);
      }
    }
  }

  v30 = *(a2 + 32);
  v31 = *(a4 + 32);
  v32 = *(a3 + 32);
  v38 = *(a2 + 12);
  v37 = *(a2 + 8);
  result = dgesvd_NEWLAPACK();
  if (v8 < **(a3 + 32))
  {
    result = cnprint::CNPrinter::GetLogLevel(result);
    if (result <= 1)
    {
      result = cnprint::CNPrinter::Print();
    }
  }

  if (v7 >= v6)
  {
    v34 = v6;
  }

  else
  {
    v34 = v7;
  }

  v35 = *(a3 + 24);
  v36 = *(a3 + 28);
  *(a3 + 8) = v35;
  *(a3 + 12) = v36;
  *(a3 + 16) = v36 * v35;
  *(a3 + 20) = v35;
  *(a4 + 8) = v34;
  *(a4 + 12) = 1;
  *(a4 + 16) = v34;
  *(a4 + 20) = v34;
  return result;
}

void sub_100037848(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v2 = *(a1 + 12);
    if (v2 >= 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 20);
      bzero(v13, v3);
      if (v3 >= 3)
      {
        v6 = (v3 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v2 + v1 - v4)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_10003794C(cnframework::TimestampedEvent *a1)
{
  cnframework::TimestampedEvent::~TimestampedEvent(a1);

  operator delete();
}

void sub_100037984(cnframework::TimestampedEvent *a1)
{
  *a1 = off_100433148;
  *(a1 + 133) = off_100432BB8;
  *(a1 + 119) = off_100432BB8;
  *(a1 + 105) = off_100432BB8;
  *(a1 + 97) = off_100432BB8;
  *(a1 + 78) = off_100432BB8;
  *(a1 + 64) = off_100432BB8;
  *(a1 + 50) = off_100432BB8;
  *(a1 + 42) = off_100432BB8;
  cnframework::TimestampedEvent::~TimestampedEvent(a1);
}

void sub_100037AA4(cnframework::TimestampedEvent *a1)
{
  *a1 = off_100433148;
  *(a1 + 133) = off_100432BB8;
  *(a1 + 119) = off_100432BB8;
  *(a1 + 105) = off_100432BB8;
  *(a1 + 97) = off_100432BB8;
  *(a1 + 78) = off_100432BB8;
  *(a1 + 64) = off_100432BB8;
  *(a1 + 50) = off_100432BB8;
  *(a1 + 42) = off_100432BB8;
  cnframework::TimestampedEvent::~TimestampedEvent(a1);

  operator delete();
}

void sub_100037BF8(cnframework::TimestampedEvent *a1)
{
  *a1 = off_100433178;
  *(a1 + 120) = off_100432BB8;
  *(a1 + 106) = off_100432BB8;
  *(a1 + 92) = off_100432BB8;
  *(a1 + 84) = off_100432BB8;
  *(a1 + 65) = off_100432BB8;
  *(a1 + 51) = off_100432BB8;
  *(a1 + 37) = off_100432BB8;
  *(a1 + 29) = off_100432BB8;
  cnframework::TimestampedEvent::~TimestampedEvent(a1);
}

void sub_100037D18(cnframework::TimestampedEvent *a1)
{
  *a1 = off_100433178;
  *(a1 + 120) = off_100432BB8;
  *(a1 + 106) = off_100432BB8;
  *(a1 + 92) = off_100432BB8;
  *(a1 + 84) = off_100432BB8;
  *(a1 + 65) = off_100432BB8;
  *(a1 + 51) = off_100432BB8;
  *(a1 + 37) = off_100432BB8;
  *(a1 + 29) = off_100432BB8;
  cnframework::TimestampedEvent::~TimestampedEvent(a1);

  operator delete();
}

void sub_1000380A0(uint64_t a1, uint64_t a2)
{
  *a1 = off_100433220;
  v2 = *(a2 + 16);
  *(a1 + 8) = *a2;
  v3 = *(a1 + 8) * 1000000000.0;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  sub_10004119C(a1 + 40, (a1 + 8));
  operator new();
}

uint64_t sub_1000381D8(uint64_t a1)
{
  *a1 = off_100433220;
  v2 = *(a1 + 7960);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 7928);
  if (v3)
  {
    *(a1 + 7936) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 7864));
  if (*(a1 + 6664) == 1)
  {
    sub_100037984((a1 + 6672));
    *(a1 + 6664) = 0;
    if (*(a1 + 5552) != 1)
    {
LABEL_8:
      if (*(a1 + 5528) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if (*(a1 + 5552) != 1)
  {
    goto LABEL_8;
  }

  sub_100037BF8((a1 + 5560));
  *(a1 + 5552) = 0;
  if (*(a1 + 5528) != 1)
  {
LABEL_9:
    if (*(a1 + 4320) != 1)
    {
      goto LABEL_10;
    }

LABEL_15:
    sub_100037984((a1 + 4336));
    *(a1 + 4320) = 0;
    v4 = *(a1 + 4312);
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_14:
  *(a1 + 5528) = 0;
  if (*(a1 + 4320) == 1)
  {
    goto LABEL_15;
  }

LABEL_10:
  v4 = *(a1 + 4312);
  if (!v4)
  {
LABEL_11:
    sub_10003DFF4(a1 + 40);
    return a1;
  }

LABEL_16:
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_11;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  sub_10003DFF4(a1 + 40);
  return a1;
}

void sub_10003837C(uint64_t a1)
{
  sub_1000381D8(a1);

  operator delete();
}

void sub_1000383B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = 0uLL;
  v63 = off_100433148;
  CNTimeSpan::SetTimeSpan(&v64, 0, 0.0);
  LOBYTE(v65) = 0;
  *(&v65 + 1) = 0;
  *&v66 = 0;
  CNTimeSpan::SetTimeSpan((&v65 + 8), 0, 0.0);
  BYTE8(v66) = 0;
  v67 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v67, 0, 0.0);
  LOBYTE(v68) = 0;
  *(&v68 + 1) = 0;
  *&v69 = 0;
  CNTimeSpan::SetTimeSpan((&v68 + 8), 0, 0.0);
  *(&v69 + 1) = 0x7FF8000000000000;
  sub_10003E3B0(&v70);
  if ((sub_10003128C(a3, &v63) & 1) == 0)
  {
    if (qword_10045B050 != -1)
    {
      sub_100382F88();
    }

    v10 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v11 = "Bad VIO estimate; skip it";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, 2u);
    goto LABEL_62;
  }

  if ((v85 & 1) == 0)
  {
    if (qword_10045B050 != -1)
    {
      sub_100382F88();
    }

    v14 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v11 = "Current VIO estimate of IMU pose is not Valid";
    v12 = v14;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_24;
  }

  if (v82 == 1)
  {
    if (*(a1 + 6664) == 1)
    {
      v6 = *(a1 + 6776);
      v7 = *(a1 + 6784);
      if ((v70 || (*(&v70 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v6 || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v70 != v6)
      {
        if (v70 < v6)
        {
LABEL_11:
          if (qword_10045B050 != -1)
          {
            sub_100382F88();
          }

          v8 = qword_10045B058;
          if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            v9 = *(a1 + 6784) + *(a1 + 6776);
            *buf = 134349312;
            *&buf[4] = *(&v70 + 1) + v70;
            *&buf[12] = 2050;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Current VIO estimate's Time %{public}.3lf is before the previous VIO estimate %{public}.3lf", buf, 0x16u);
          }

          sub_100037F04(a1);
        }
      }

      else if (*(&v70 + 1) < v7)
      {
        goto LABEL_11;
      }

      *buf = v76;
      *v110 = *(a1 + 6872);
      v17 = CNTimeSpan::operator-();
      if (fabs(v18 + v17) >= 2.22044605e-16)
      {
        if (qword_10045B050 != -1)
        {
          sub_100382F88();
        }

        v19 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
        {
          v20 = *(a1 + 6880) + *(a1 + 6872);
          *buf = 134349568;
          *&buf[4] = v20;
          *&buf[12] = 2050;
          *&buf[14] = *(&v76 + 1) + v76;
          *&buf[22] = 2050;
          *&buf[24] = *(&v70 + 1) + v70;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "VIO estimate session start time changed from %{public}.3lf to %{public}.3lf; change the VIO reference frame at the event applicable time %{public}.3lf", buf, 0x20u);
        }

        sub_100037F04(a1);
      }
    }

    if (*(a1 + 6664) == 1 && (sub_100039030(a1 + 6672, &v63, 1, buf), buf[0] == 1) && (v21 = *&buf[8], *&buf[8] > 8.0))
    {
      if (qword_10045B050 != -1)
      {
        sub_100382F88();
      }

      v22 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *v110 = 134283777;
        *&v110[4] = v21;
        *&v110[12] = 2049;
        *&v110[14] = 0x4020000000000000;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Inferred horizontal speed of VIO estimate %{private}.3lf exceeds the threshold %{private}.3lf", v110, 0x16u);
      }
    }

    else
    {
      v23 = sub_10002BCD0(a2);
      v24 = *(a1 + 4304);
      *buf = v23;
      *&buf[8] = off_100433148;
      v89 = v66;
      v90 = v67;
      v91 = v68;
      v92 = v69;
      *&buf[16] = v64;
      v88 = v65;
      v95 = v72;
      v96 = v73;
      v93 = v70;
      v94 = v71;
      v99 = v76;
      v100 = v77;
      v97 = v74;
      v98 = v75;
      v105 = v82;
      v103 = v80;
      v104 = v81;
      v101 = v78;
      v102 = v79;
      sub_10003E58C(v106, v83);
      sub_10003E58C(v107, v84);
      v108 = v85;
      v109 = v86;
      v25 = v24[2];
      if (v25 >= v24[3])
      {
        v40 = sub_10003EC74(v24 + 1, buf);
      }

      else
      {
        *v25 = *buf;
        *(v25 + 8) = off_100433148;
        v26 = v88;
        *(v25 + 16) = *&buf[16];
        *(v25 + 32) = v26;
        v27 = v89;
        v28 = v90;
        v29 = v92;
        *(v25 + 80) = v91;
        *(v25 + 96) = v29;
        *(v25 + 48) = v27;
        *(v25 + 64) = v28;
        *(v25 + 112) = v93;
        v30 = v94;
        v31 = v95;
        v32 = v97;
        *(v25 + 160) = v96;
        *(v25 + 176) = v32;
        *(v25 + 128) = v30;
        *(v25 + 144) = v31;
        v33 = v98;
        v34 = v99;
        v35 = v101;
        *(v25 + 224) = v100;
        *(v25 + 240) = v35;
        *(v25 + 192) = v33;
        *(v25 + 208) = v34;
        v36 = v102;
        v37 = v103;
        v38 = v104;
        *(v25 + 304) = v105;
        *(v25 + 272) = v37;
        *(v25 + 288) = v38;
        *(v25 + 256) = v36;
        sub_10003E58C((v25 + 312), v106);
        sub_10003E58C((v25 + 752), v107);
        v39 = v108;
        *(v25 + 1194) = v109;
        *(v25 + 1192) = v39;
        v40 = v25 + 1200;
        v24[2] = v25 + 1200;
      }

      v24[2] = v40;
      sub_10003EAF4(v24, 0x2FC962FC962FC963 * ((v40 - v24[1]) >> 4) - 1);
      sub_100037984(&buf[8]);
      if (*(a1 + 6664) == 1)
      {
        v41 = v67;
        *(a1 + 6712) = v66;
        *(a1 + 6728) = v41;
        v42 = v69;
        *(a1 + 6744) = v68;
        *(a1 + 6760) = v42;
        v43 = v65;
        *(a1 + 6680) = v64;
        *(a1 + 6696) = v43;
        *(a1 + 6968) = v82;
        v44 = v81;
        *(a1 + 6936) = v80;
        *(a1 + 6952) = v44;
        v45 = v79;
        *(a1 + 6904) = v78;
        *(a1 + 6920) = v45;
        v46 = v77;
        *(a1 + 6872) = v76;
        *(a1 + 6888) = v46;
        v47 = v75;
        *(a1 + 6840) = v74;
        *(a1 + 6856) = v47;
        v48 = v73;
        *(a1 + 6808) = v72;
        *(a1 + 6824) = v48;
        v49 = v71;
        *(a1 + 6776) = v70;
        *(a1 + 6792) = v49;
        sub_10003412C(a1 + 6976, v83);
        sub_10003412C(a1 + 7416, v84);
        *(a1 + 7856) = v85;
        *(a1 + 7858) = v86;
      }

      else
      {
        *(a1 + 6672) = off_100433148;
        v50 = v67;
        *(a1 + 6712) = v66;
        *(a1 + 6728) = v50;
        v51 = v69;
        *(a1 + 6744) = v68;
        *(a1 + 6760) = v51;
        v52 = v65;
        *(a1 + 6680) = v64;
        *(a1 + 6696) = v52;
        v53 = v70;
        v54 = v71;
        v55 = v73;
        *(a1 + 6808) = v72;
        *(a1 + 6824) = v55;
        *(a1 + 6776) = v53;
        *(a1 + 6792) = v54;
        v56 = v74;
        v57 = v75;
        v58 = v77;
        *(a1 + 6872) = v76;
        *(a1 + 6888) = v58;
        *(a1 + 6840) = v56;
        *(a1 + 6856) = v57;
        v59 = v78;
        v60 = v79;
        v61 = v80;
        v62 = v81;
        *(a1 + 6968) = v82;
        *(a1 + 6936) = v61;
        *(a1 + 6952) = v62;
        *(a1 + 6904) = v59;
        *(a1 + 6920) = v60;
        sub_10003E58C((a1 + 6976), v83);
        sub_10003E58C((a1 + 7416), v84);
        *(a1 + 7856) = v85;
        *(a1 + 7858) = v86;
        *(a1 + 6664) = 1;
      }

      sub_100039C9C(a1, 0);
      sub_100039E8C(a1, *(a2 + 40), (*(*(a1 + 4304) + 16) - 1200));
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100382F88();
    }

    v15 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      if (v82 > 2u)
      {
        if (v82 == 3)
        {
          operator new();
        }

        if (v82 == 4)
        {
          operator new();
        }

        v16 = &buf[21];
        buf[23] = 21;
        qmemcpy(buf, "Unacceptable_LowLight", 21);
      }

      else
      {
        v16 = &buf[7];
        if (v82)
        {
          if (v82 == 1)
          {
            buf[23] = 7;
            qmemcpy(buf, "Nominal", 7);
          }

          else
          {
            v16 = &buf[12];
            buf[23] = 12;
            qmemcpy(buf, "Unacceptable", 12);
          }
        }

        else
        {
          buf[23] = 7;
          qmemcpy(buf, "Unknown", 7);
        }
      }

      *v16 = 0;
      *v110 = 136446210;
      *&v110[4] = buf;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Current VIO estimate is not in Nominal Tracking State [Status: %{public}s]", v110, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_62:
  sub_100037984(&v63);
}

void sub_100038DBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100037984(va);
  _Unwind_Resume(a1);
}

void sub_100038DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100037984(va);
  _Unwind_Resume(a1);
}

void sub_100038DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v2[912] = off_100432BB8;
  v2[898] = off_100432BB8;
  v2[884] = off_100432BB8;
  v2[876] = off_100432BB8;
  cnframework::TimestampedEvent::~TimestampedEvent(v3);
  sub_100037984(va);
  _Unwind_Resume(a1);
}

void sub_100038FF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100037984(va);
  _Unwind_Resume(a1);
}

void sub_100039008(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100037984(va);
  _Unwind_Resume(a1);
}

void sub_10003901C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  cnframework::TimestampedEvent::~TimestampedEvent(va);
  _Unwind_Resume(a1);
}

void sub_100039030(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 112) + *(a2 + 104);
  v6 = *(a1 + 112) + *(a1 + 104);
  v7 = vabdd_f64(v5, v6);
  if (v7 < 2.22044605e-16)
  {
    if (qword_10045B050 != -1)
    {
      sub_100382FB0();
    }

    v8 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to estimate speed stats from VIO estimates: Time difference is too small", buf, 2u);
    }

    *a4 = 0;
    goto LABEL_87;
  }

  v172 = 0x100000003;
  v167 = off_100432C88;
  p_x = &__x;
  v173 = &__x;
  v13 = *(a2 + 348);
  v168 = *(a2 + 344);
  v169 = v13;
  v14 = (v13 * v168);
  v170 = v14;
  v171 = v168;
  if (v14 > 3)
  {
    v23 = (v14 - 2);
    v24 = *(a2 + 368);
    v25 = v14 - 1;
    v26 = *(a1 + 368);
    v27 = v25 >> 1;
    v28 = v24;
    v29 = v26;
    v30 = &__x;
    do
    {
      v31 = *v28++;
      v32 = v31;
      v33 = *v29++;
      *v30++ = vsubq_f64(v32, v33);
      --v27;
    }

    while (v27);
    *(&__x + v23) = vsubq_f64(*(v24 + 8 * v23), *(v26 + 8 * v23));
    v21 = hypot(__x, __y);
    v22 = v21 / v7;
    if (a3)
    {
LABEL_12:
      *(a4 + 8) = v22;
      *(a4 + 16) = 0;
LABEL_86:
      *a4 = 1;
LABEL_87:
      *(a4 + 24) = 0;
      return;
    }
  }

  else
  {
    if (v14 >= 1)
    {
      v15 = *(a2 + 368);
      v16 = *(a1 + 368);
      do
      {
        v17 = *v15++;
        v18 = v17;
        v19 = *v16++;
        *p_x++ = v18 - v19;
        --v14;
      }

      while (v14);
    }

    v21 = hypot(__x, __y);
    v22 = v21 / v7;
    if (a3)
    {
      goto LABEL_12;
    }
  }

  v34 = v21;
  cntransformation::Inv(buf, (a1 + 304), v20);
  cntransformation::Cat(v163, buf, (a2 + 304), v35);
  cnrotation::CNRotation::RotationMatrix(&v150, (a1 + 304));
  v182 = 0x300000003;
  *v181 = off_100432B60;
  v36 = v184;
  v183 = v184;
  v37 = v164;
  v38 = v151;
  *&v181[8] = __PAIR64__(HIDWORD(v164), v151);
  v39 = HIDWORD(v164);
  *&v181[16] = HIDWORD(v164) * v151;
  *&v181[20] = v151;
  v40.i64[0] = v164;
  v40.i64[1] = v151;
  v41 = v153;
  if (vmaxvq_u32(v40) > 5)
  {
    cblas_dgemm_NEWLAPACK();
  }

  else if (v151 && HIDWORD(v164))
  {
    v42 = DWORD1(v151);
    if (DWORD1(v151))
    {
      v43 = v165;
      v44 = 8 * v151;
      if (DWORD1(v151) >= 4)
      {
        v106 = 0;
        v107 = 8 * v164;
        v108 = v165 + 1;
        do
        {
          v109 = &v184[v106 * v38];
          if (v38 == 1)
          {
            v110 = 0.0;
            v111 = v41 + 1;
            v112 = v108;
            v113 = v42 & 0xFFFFFFFC;
            do
            {
              v114 = vmulq_f64(v111[-1], v112[-1]);
              v115 = vmulq_f64(*v111, *v112);
              v110 = v110 + v114.f64[0] + v114.f64[1] + v115.f64[0] + v115.f64[1];
              v112 += 2;
              v111 += 2;
              v113 -= 4;
            }

            while (v113);
            if ((v42 & 0xFFFFFFFC) != v42)
            {
              f64 = v41[2 * (v42 >> 2)].f64;
              v117 = v42 & 0xFFFFFFFC;
              do
              {
                v110 = v110 + *f64 * v43[v117++];
                f64 = (f64 + v44);
              }

              while (v42 != v117);
            }

            *v109 = v110;
          }

          else
          {
            v118 = 0;
            v119 = v41;
            do
            {
              v120 = 0.0;
              v121 = v119;
              v122 = v43;
              v123 = v42;
              do
              {
                v124 = *v122++;
                v120 = v120 + *v121 * v124;
                v121 = (v121 + v44);
                --v123;
              }

              while (v123);
              v109[v118++] = v120;
              ++v119;
            }

            while (v118 != v38);
          }

          ++v106;
          v43 = (v43 + v107);
          v108 = (v108 + v107);
        }

        while (v106 != v39);
      }

      else
      {
        v45 = 0;
        do
        {
          v46 = &v43[v45 * v37];
          v47 = v41;
          v48 = v36;
          v49 = v38;
          do
          {
            v50 = *v47 * *v46 + 0.0;
            if (v42 != 1)
            {
              v50 = v50 + v47[v38] * v46[1];
              if (v42 != 2)
              {
                v50 = v50 + v47[2 * v38] * v46[2];
              }
            }

            *v48++ = v50;
            ++v47;
            --v49;
          }

          while (v49);
          ++v45;
          v36 = (v36 + v44);
        }

        while (v45 != v39);
      }
    }

    else
    {
      bzero(v184, 8 * v151 * HIDWORD(v164));
    }
  }

  cnrotation::CNRotation::RotationMatrix(&v145, (a1 + 304));
  v51 = v146;
  v52 = DWORD1(v146);
  v177 = 0x300000003;
  *v176 = off_100432B60;
  v53 = v179;
  v178 = v179;
  *&v176[8] = DWORD1(v146);
  *&v176[12] = v146;
  *&v176[16] = v146 * DWORD1(v146);
  *&v176[20] = DWORD1(v146);
  if (DWORD1(v146) && v146)
  {
    v54 = 0;
    v55 = 0;
    v56 = HIDWORD(v146);
    v57 = v148;
    v58 = v146 - 1;
    do
    {
      if (v51 >= 0xA)
      {
        v59 = 0;
        if (v52 == 1 && v55 + v58 >= v55 && v56 * v55 + v58 >= v56 * v55 && (&v179[v55] - &v57[v56 * v55]) >= 0x20)
        {
          v63 = v51 & 0xFFFFFFFC;
          v64 = v55;
          v65 = v54;
          do
          {
            v66 = &v57[v65];
            v67 = *v66;
            v68 = *(v66 + 1);
            v69 = &v179[v64];
            *v69 = v67;
            v69[1] = v68;
            v65 += 4;
            v64 += 4;
            v63 -= 4;
          }

          while (v63);
          v59 = v51 & 0xFFFFFFFC;
          if (v51 == (v51 & 0xFFFFFFFC))
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v59 = 0;
      }

      v60 = v51 - v59;
      v61 = v55 + v52 * v59;
      v62 = v59 + v54;
      do
      {
        v179[v61] = v57[v62];
        v61 += v52;
        ++v62;
        --v60;
      }

      while (v60);
LABEL_32:
      ++v55;
      v54 += v56;
    }

    while (v55 != v52);
  }

  v160 = 0x300000003;
  v155 = off_100432B60;
  v70 = v162;
  v161 = v162;
  v72 = *&v181[8];
  v71 = *&v181[12];
  v156 = *&v181[8];
  v157 = v51;
  v158 = *&v181[8] * v51;
  v159 = *&v181[8];
  if (*&v181[8] <= *&v181[12])
  {
    v73 = *&v181[12];
  }

  else
  {
    v73 = *&v181[8];
  }

  if (v52 <= v51)
  {
    v74 = v51;
  }

  else
  {
    v74 = v52;
  }

  if (v73 <= v74)
  {
    v73 = v74;
  }

  v75 = v183;
  if (v73 > 5)
  {
    cblas_dgemm_NEWLAPACK();
    v70 = v161;
    LODWORD(v72) = v159;
  }

  else if (v51 && *&v181[8])
  {
    if (*&v181[12])
    {
      if (*&v181[12] >= 4u)
      {
        v125 = 0;
        v126 = 8 * v52;
        v127 = 8 * *&v181[8];
        v128 = &v180;
        do
        {
          v129 = &v162[v125 * v72];
          if (v72 == 1)
          {
            v130 = 0.0;
            v131 = v75 + 1;
            v132 = v128;
            v133 = v71 & 0xFFFFFFFC;
            do
            {
              v134 = vmulq_f64(v131[-1], v132[-1]);
              v135 = vmulq_f64(*v131, *v132);
              v130 = v130 + v134.f64[0] + v134.f64[1] + v135.f64[0] + v135.f64[1];
              v132 += 2;
              v131 += 2;
              v133 -= 4;
            }

            while (v133);
            if ((v71 & 0xFFFFFFFC) != v71)
            {
              v136 = v75[2 * (v71 >> 2)].f64;
              v137 = v71 & 0xFFFFFFFC;
              do
              {
                v130 = v130 + *v136 * v53[v137++];
                v136 = (v136 + v127);
              }

              while (v71 != v137);
            }

            *v129 = v130;
          }

          else
          {
            v138 = 0;
            v139 = v75;
            do
            {
              v140 = 0.0;
              v141 = v139;
              v142 = v53;
              v143 = v71;
              do
              {
                v144 = *v142++;
                v140 = v140 + *v141 * v144;
                v141 = (v141 + v127);
                --v143;
              }

              while (v143);
              v129[v138++] = v140;
              ++v139;
            }

            while (v138 != v72);
          }

          ++v125;
          v53 = (v53 + v126);
          v128 = (v128 + v126);
        }

        while (v125 != v51);
      }

      else
      {
        v76 = 0;
        v77 = v162;
        do
        {
          v78 = &v179[v76 * v52];
          v79 = *v78;
          v80 = v75;
          v81 = v77;
          v82 = v72;
          do
          {
            v83 = *v80 * v79 + 0.0;
            if (v71 != 1)
            {
              v83 = v83 + v80[v72] * v78[1];
              if (v71 != 2)
              {
                v83 = v83 + v80[2 * v72] * v78[2];
              }
            }

            *v81++ = v83;
            ++v80;
            --v82;
          }

          while (v82);
          ++v76;
          v77 += v72;
        }

        while (v76 != v51);
      }
    }

    else
    {
      bzero(v162, 8 * v51 * *&v181[8]);
    }
  }

  v84 = *v70;
  v85 = v70[v72 + 1];
  if (qword_10045B050 != -1)
  {
    sub_100382F88();
  }

  v86 = (v85 * v85 + v84 * v84 + v85 * v85 + v84 * v84) / ((v5 - v6) * (v5 - v6));
  v87 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    *v181 = 134349312;
    *&v181[4] = v22;
    *&v181[12] = 2050;
    *&v181[14] = v86;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "VIO inferred speed, mean, %{public}f, var, %{public}f", v181, 0x16u);
  }

  if (fabs(v34) < 2.22044605e-16)
  {
    if (qword_10045B050 != -1)
    {
      sub_100382F88();
    }

    v88 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    *v181 = 0;
    v89 = "Failed to estimate the course stats from VIO estimates: Distance of travel is too small";
    v90 = v181;
LABEL_84:
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, v89, v90, 2u);
LABEL_85:
    *(a4 + 8) = v22;
    *(a4 + 16) = v86;
    goto LABEL_86;
  }

  v91 = v173;
  v92 = v173[1];
  v93 = atan2(v92, *v173);
  v152 = 0x200000001;
  v151 = xmmword_1003C6DD0;
  v150 = off_100432CD0;
  v153 = &v154;
  v94 = -v92 / (v34 * v34);
  v154.f64[0] = v94;
  v95 = *v91 / (v34 * v34);
  v154.f64[1] = v95;
  v184[0] = &_mh_execute_header;
  v147 = 0x100000002;
  v145 = off_100432D18;
  v146 = xmmword_1003C6DF0;
  v148 = &v149;
  v149 = &_mh_execute_header;
  v182 = 0x200000002;
  *&v181[8] = xmmword_1003C6DE0;
  *v181 = off_100432E48;
  v183 = v184;
  *v184 = v161[v149 + v149 * v159];
  v97 = &_mh_execute_header >> 32;
  v98 = (&_mh_execute_header >> 32) + &_mh_execute_header * v159;
  v99 = v161[v98];
  if (v93 >= 0.0)
  {
    v100 = v93;
  }

  else
  {
    v100 = v93 + 6.28318531;
  }

  *&v184[1] = v161[v98];
  *&v184[2] = v161[&_mh_execute_header + v97 * v159];
  *&v184[3] = v161[(v97 + v97 * v159)];
  v177 = 0x200000001;
  *v176 = off_100432CD0;
  v178 = v179;
  *&v176[8] = xmmword_1003C6DD0;
  v96 = v184;
  v185 = vld2q_f64(v96);
  v185.val[0] = vmulq_f64(vmlaq_n_f64(vmlaq_n_f64(0, v185.val[0], v94), v185.val[1], v95), v154);
  v101 = v185.val[0].f64[0] + 0.0 + v185.val[0].f64[1];
  if (v101 < 0.0)
  {
    if (qword_10045B050 != -1)
    {
      sub_100382F88();
    }

    v88 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    *v176 = 0;
    v89 = "Course estimate variance is NEGATIVE; drop it.";
    v90 = v176;
    goto LABEL_84;
  }

  v102 = qword_10045B050;
  *&v103 = 9.8696044;
  if (v101 > 9.8696044)
  {
    if (qword_10045B050 != -1)
    {
      sub_100382F88();
    }

    v104 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    *v176 = 134349056;
    *&v176[4] = v101;
    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Course estimate variance is too big: %{public}f; flooring it to pi^2", v176, 0xCu);
    v102 = qword_10045B050;
    v101 = 9.8696044;
  }

  if (v102 != -1)
  {
    sub_100382F88();
    goto LABEL_96;
  }

  *&v103 = v101;
LABEL_95:
  v101 = *&v103;
LABEL_96:
  v105 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    *v176 = 134349312;
    *&v176[4] = v100;
    *&v176[12] = 2050;
    *&v176[14] = v101;
    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEBUG, "VIO inferred course, mean, %{public}f, var, %{public}f", v176, 0x16u);
  }

  *(a4 + 8) = v22;
  *(a4 + 16) = v86;
  *a4 = 1;
  *(a4 + 32) = v100;
  *(a4 + 40) = v101;
  *(a4 + 24) = 1;
}