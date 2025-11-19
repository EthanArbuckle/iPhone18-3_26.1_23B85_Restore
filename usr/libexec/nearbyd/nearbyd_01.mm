void *sub_10000FABC(void *result)
{
  v1 = result[4];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[7];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[8];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  return result;
}

void sub_100010060(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100019B38();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100012410(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void sub_100010168(uint64_t a1, __n128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = &a2[-2].n128_i8[8];
  v9 = a2 - 3;
  v10 = &a2[-5].n128_i8[8];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      v182 = *a3;
      v183 = *(&a2[-2] + 8);
      v198 = a2[-1].n128_u64[1];
      v197 = v183;
      v184 = *v11;
      v196 = *(v11 + 2);
      v195 = v184;
      if (!v182(&v197, &v195))
      {
        return;
      }

LABEL_78:
      v185 = *v11;
      v198 = *(v11 + 2);
      v197 = v185;
      v186 = *v8;
      *(v11 + 2) = a2[-1].n128_u64[1];
      *v11 = v186;
      *v8 = v197;
      v167 = v198;
      goto LABEL_79;
    }

LABEL_10:
    if (v14 <= 575)
    {
      if (a5)
      {
        sub_1001A9A3C(v11, a2, a3);
      }

      else
      {
        sub_1001A9B6C(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {
        sub_1001AA724(v11, a2, a2, a3);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = v11 + 24 * (v15 >> 1);
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = *v17;
      v198 = *(v17 + 2);
      v197 = v19;
      v20 = *v11;
      v196 = *(v11 + 2);
      v195 = v20;
      v21 = v18(&v197, &v195);
      v22 = *a3;
      if (v21)
      {
        v23 = *v8;
        v198 = a2[-1].n128_u64[1];
        v197 = v23;
        v24 = *v17;
        v196 = *(v17 + 2);
        v195 = v24;
        if (v22(&v197, &v195))
        {
          v25 = *v11;
          v198 = *(v11 + 2);
          v197 = v25;
          v26 = *v8;
          *(v11 + 2) = a2[-1].n128_u64[1];
          *v11 = v26;
          goto LABEL_27;
        }

        v55 = *v11;
        v198 = *(v11 + 2);
        v197 = v55;
        v56 = *v17;
        *(v11 + 2) = *(v17 + 2);
        *v11 = v56;
        v57 = v197;
        *(v17 + 2) = v198;
        *v17 = v57;
        v58 = *a3;
        v59 = *v8;
        v198 = a2[-1].n128_u64[1];
        v197 = v59;
        v60 = *v17;
        v196 = *(v17 + 2);
        v195 = v60;
        if (v58(&v197, &v195))
        {
          v61 = *v17;
          v198 = *(v17 + 2);
          v197 = v61;
          v62 = *v8;
          *(v17 + 2) = a2[-1].n128_u64[1];
          *v17 = v62;
LABEL_27:
          *v8 = v197;
          a2[-1].n128_u64[1] = v198;
        }
      }

      else
      {
        v35 = *v8;
        v198 = a2[-1].n128_u64[1];
        v197 = v35;
        v36 = *v17;
        v196 = *(v17 + 2);
        v195 = v36;
        if (v22(&v197, &v195))
        {
          v37 = *v17;
          v198 = *(v17 + 2);
          v197 = v37;
          v38 = *v8;
          *(v17 + 2) = a2[-1].n128_u64[1];
          *v17 = v38;
          *v8 = v197;
          a2[-1].n128_u64[1] = v198;
          v39 = *a3;
          v40 = *v17;
          v198 = *(v17 + 2);
          v197 = v40;
          v41 = *v11;
          v196 = *(v11 + 2);
          v195 = v41;
          if (v39(&v197, &v195))
          {
            v42 = *v11;
            v198 = *(v11 + 2);
            v197 = v42;
            v43 = *v17;
            *(v11 + 2) = *(v17 + 2);
            *v11 = v43;
            v44 = v197;
            *(v17 + 2) = v198;
            *v17 = v44;
          }
        }
      }

      v63 = v11 + 24 * v16;
      v64 = v63 - 24;
      v65 = *a3;
      v66 = *(v63 - 24);
      v198 = *(v63 - 1);
      v197 = v66;
      v195 = *(a1 + 24);
      v196 = *(a1 + 40);
      v67 = v65(&v197, &v195);
      v68 = *a3;
      if (v67)
      {
        v69 = *v9;
        v198 = a2[-2].n128_u64[0];
        v197 = v69;
        v70 = *v64;
        v196 = *(v64 + 2);
        v195 = v70;
        if (v68(&v197, &v195))
        {
          v71 = *(a1 + 40);
          v72 = *(a1 + 24);
          v73 = a2[-2].n128_u64[0];
          *(a1 + 24) = *v9;
          *(a1 + 40) = v73;
          *v9 = v72;
          goto LABEL_39;
        }

        v197 = *(a1 + 24);
        v91 = v197;
        v198 = *(a1 + 40);
        v92 = v198;
        v93 = *(v64 + 2);
        *(a1 + 24) = *v64;
        *(a1 + 40) = v93;
        *(v64 + 2) = v92;
        *v64 = v91;
        v94 = *a3;
        v95 = *v9;
        v198 = a2[-2].n128_u64[0];
        v197 = v95;
        v96 = *v64;
        v196 = *(v64 + 2);
        v195 = v96;
        if (v94(&v197, &v195))
        {
          v97 = *v64;
          v198 = *(v64 + 2);
          v197 = v97;
          v98 = *v9;
          *(v64 + 2) = a2[-2].n128_u64[0];
          *v64 = v98;
          *v9 = v197;
          v71 = v198;
LABEL_39:
          a2[-2].n128_u64[0] = v71;
        }
      }

      else
      {
        v74 = *v9;
        v198 = a2[-2].n128_u64[0];
        v197 = v74;
        v75 = *v64;
        v196 = *(v64 + 2);
        v195 = v75;
        if (v68(&v197, &v195))
        {
          v76 = *v64;
          v198 = *(v64 + 2);
          v197 = v76;
          v77 = *v9;
          *(v64 + 2) = a2[-2].n128_u64[0];
          *v64 = v77;
          *v9 = v197;
          a2[-2].n128_u64[0] = v198;
          v78 = *a3;
          v79 = *v64;
          v198 = *(v64 + 2);
          v197 = v79;
          v195 = *(a1 + 24);
          v196 = *(a1 + 40);
          if (v78(&v197, &v195))
          {
            v197 = *(a1 + 24);
            v80 = v197;
            v198 = *(a1 + 40);
            v81 = v198;
            v82 = *(v64 + 2);
            *(a1 + 24) = *v64;
            *(a1 + 40) = v82;
            *(v64 + 2) = v81;
            *v64 = v80;
          }
        }
      }

      v99 = a1 + 24 * v16;
      v100 = *a3;
      v101 = *(v99 + 24);
      v198 = *(v99 + 40);
      v197 = v101;
      v195 = *(a1 + 48);
      v196 = *(a1 + 64);
      v102 = v100(&v197, &v195);
      v103 = *a3;
      if (v102)
      {
        v104 = *v10;
        v198 = a2[-4].n128_u64[1];
        v197 = v104;
        v105 = *(v99 + 24);
        v196 = *(v99 + 40);
        v195 = v105;
        if (v103(&v197, &v195))
        {
          v106 = *(a1 + 64);
          v107 = *(a1 + 48);
          v108 = a2[-4].n128_u64[1];
          *(a1 + 48) = *v10;
          *(a1 + 64) = v108;
          *v10 = v107;
          goto LABEL_48;
        }

        v197 = *(a1 + 48);
        v118 = v197;
        v198 = *(a1 + 64);
        v119 = v198;
        v120 = *(v99 + 40);
        *(a1 + 48) = *(v99 + 24);
        *(a1 + 64) = v120;
        *(v99 + 40) = v119;
        *(v99 + 24) = v118;
        v121 = *a3;
        v122 = *v10;
        v198 = a2[-4].n128_u64[1];
        v197 = v122;
        v123 = *(v99 + 24);
        v196 = *(v99 + 40);
        v195 = v123;
        if (v121(&v197, &v195))
        {
          v124 = *(v99 + 24);
          v198 = *(v99 + 40);
          v197 = v124;
          v125 = *v10;
          *(v99 + 40) = a2[-4].n128_u64[1];
          *(v99 + 24) = v125;
          *v10 = v197;
          v106 = v198;
LABEL_48:
          a2[-4].n128_u64[1] = v106;
        }
      }

      else
      {
        v109 = *v10;
        v198 = a2[-4].n128_u64[1];
        v197 = v109;
        v110 = *(v99 + 24);
        v196 = *(v99 + 40);
        v195 = v110;
        if (v103(&v197, &v195))
        {
          v111 = *(v99 + 24);
          v198 = *(v99 + 40);
          v197 = v111;
          v112 = *v10;
          *(v99 + 40) = a2[-4].n128_u64[1];
          *(v99 + 24) = v112;
          *v10 = v197;
          a2[-4].n128_u64[1] = v198;
          v113 = *a3;
          v114 = *(v99 + 24);
          v198 = *(v99 + 40);
          v197 = v114;
          v195 = *(a1 + 48);
          v196 = *(a1 + 64);
          if (v113(&v197, &v195))
          {
            v197 = *(a1 + 48);
            v115 = v197;
            v198 = *(a1 + 64);
            v116 = v198;
            v117 = *(v99 + 40);
            *(a1 + 48) = *(v99 + 24);
            *(a1 + 64) = v117;
            *(v99 + 40) = v116;
            *(v99 + 24) = v115;
          }
        }
      }

      v126 = *a3;
      v127 = *v17;
      v198 = *(v17 + 2);
      v197 = v127;
      v128 = *v64;
      v196 = *(v64 + 2);
      v195 = v128;
      v129 = v126(&v197, &v195);
      v130 = *a3;
      if (v129)
      {
        v131 = *(v99 + 24);
        v198 = *(v99 + 40);
        v197 = v131;
        v132 = *v17;
        v196 = *(v17 + 2);
        v195 = v132;
        if (v130(&v197, &v195))
        {
          v133 = *v64;
          v198 = *(v64 + 2);
          v197 = v133;
          *v64 = *(v99 + 24);
          *(v64 + 2) = *(v99 + 40);
          goto LABEL_57;
        }

        v143 = *v64;
        v198 = *(v64 + 2);
        v197 = v143;
        *v64 = *v17;
        *(v64 + 2) = *(v17 + 2);
        v144 = v197;
        *(v17 + 2) = v198;
        *v17 = v144;
        v145 = *a3;
        v146 = *(v99 + 24);
        v198 = *(v99 + 40);
        v197 = v146;
        v147 = *v17;
        v196 = *(v17 + 2);
        v195 = v147;
        if (v145(&v197, &v195))
        {
          v148 = *v17;
          v198 = *(v17 + 2);
          v197 = v148;
          *v17 = *(v99 + 24);
          *(v17 + 2) = *(v99 + 40);
LABEL_57:
          v149 = v197;
          *(v99 + 40) = v198;
          *(v99 + 24) = v149;
        }
      }

      else
      {
        v134 = *(v99 + 24);
        v198 = *(v99 + 40);
        v197 = v134;
        v135 = *v17;
        v196 = *(v17 + 2);
        v195 = v135;
        if (v130(&v197, &v195))
        {
          v136 = *v17;
          v198 = *(v17 + 2);
          v197 = v136;
          *v17 = *(v99 + 24);
          *(v17 + 2) = *(v99 + 40);
          v137 = v197;
          *(v99 + 40) = v198;
          *(v99 + 24) = v137;
          v138 = *a3;
          v139 = *v17;
          v198 = *(v17 + 2);
          v197 = v139;
          v140 = *v64;
          v196 = *(v64 + 2);
          v195 = v140;
          if (v138(&v197, &v195))
          {
            v141 = *v64;
            v198 = *(v64 + 2);
            v197 = v141;
            *v64 = *v17;
            *(v64 + 2) = *(v17 + 2);
            v142 = v197;
            *(v17 + 2) = v198;
            *v17 = v142;
          }
        }
      }

      v150 = *a1;
      v198 = *(a1 + 16);
      v197 = v150;
      v151 = *v17;
      *(a1 + 16) = *(v17 + 2);
      *a1 = v151;
      v152 = v197;
      *(v17 + 2) = v198;
      *v17 = v152;
      goto LABEL_59;
    }

    v27 = *v11;
    v198 = *(v11 + 2);
    v197 = v27;
    v28 = *v17;
    v196 = *(v17 + 2);
    v195 = v28;
    v29 = v18(&v197, &v195);
    v30 = *a3;
    if (v29)
    {
      v31 = *v8;
      v198 = a2[-1].n128_u64[1];
      v197 = v31;
      v32 = *v11;
      v196 = *(v11 + 2);
      v195 = v32;
      if (v30(&v197, &v195))
      {
        v33 = *v17;
        v198 = *(v17 + 2);
        v197 = v33;
        v34 = *v8;
        *(v17 + 2) = a2[-1].n128_u64[1];
        *v17 = v34;
LABEL_36:
        *v8 = v197;
        a2[-1].n128_u64[1] = v198;
        goto LABEL_59;
      }

      v83 = *v17;
      v198 = *(v17 + 2);
      v197 = v83;
      v84 = *v11;
      *(v17 + 2) = *(v11 + 2);
      *v17 = v84;
      v85 = v197;
      *(v11 + 2) = v198;
      *v11 = v85;
      v86 = *a3;
      v87 = *v8;
      v198 = a2[-1].n128_u64[1];
      v197 = v87;
      v88 = *v11;
      v196 = *(v11 + 2);
      v195 = v88;
      if (v86(&v197, &v195))
      {
        v89 = *v11;
        v198 = *(v11 + 2);
        v197 = v89;
        v90 = *v8;
        *(v11 + 2) = a2[-1].n128_u64[1];
        *v11 = v90;
        goto LABEL_36;
      }
    }

    else
    {
      v45 = *v8;
      v198 = a2[-1].n128_u64[1];
      v197 = v45;
      v46 = *v11;
      v196 = *(v11 + 2);
      v195 = v46;
      if (v30(&v197, &v195))
      {
        v47 = *v11;
        v198 = *(v11 + 2);
        v197 = v47;
        v48 = *v8;
        *(v11 + 2) = a2[-1].n128_u64[1];
        *v11 = v48;
        *v8 = v197;
        a2[-1].n128_u64[1] = v198;
        v49 = *a3;
        v50 = *v11;
        v198 = *(v11 + 2);
        v197 = v50;
        v51 = *v17;
        v196 = *(v17 + 2);
        v195 = v51;
        if (v49(&v197, &v195))
        {
          v52 = *v17;
          v198 = *(v17 + 2);
          v197 = v52;
          v53 = *v11;
          *(v17 + 2) = *(v11 + 2);
          *v17 = v53;
          v54 = v197;
          *(v11 + 2) = v198;
          *v11 = v54;
        }
      }
    }

LABEL_59:
    if ((a5 & 1) == 0)
    {
      v153 = *a3;
      v154 = *(a1 - 24);
      v198 = *(a1 - 8);
      v197 = v154;
      v155 = *a1;
      v196 = *(a1 + 16);
      v195 = v155;
      if ((v153(&v197, &v195) & 1) == 0)
      {
        v11 = sub_1001A9C74(a1, a2, a3);
        goto LABEL_66;
      }
    }

    v156 = sub_1001A9EAC(a1, a2, a3);
    if ((v157 & 1) == 0)
    {
      goto LABEL_64;
    }

    v158 = sub_1001AA0BC(a1, v156, a3);
    v11 = &v156[1].n128_i8[8];
    if (sub_1001AA0BC(&v156[1].n128_i64[1], a2, a3))
    {
      a4 = -v13;
      a2 = v156;
      if (v158)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v158)
    {
LABEL_64:
      sub_100010168(a1, v156, a3, -v13, a5 & 1);
      v11 = &v156[1].n128_i8[8];
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      sub_1001A9758(v11, (v11 + 24), v11 + 3, (a2 - 24), a3);
      return;
    }

    if (v15 == 5)
    {
      sub_1001A9758(v11, (v11 + 24), v11 + 3, (v11 + 72), a3);
      v170 = *a3;
      v171 = *(&a2[-2] + 8);
      v198 = a2[-1].n128_u64[1];
      v197 = v171;
      v195 = *(v11 + 72);
      v196 = *(v11 + 11);
      if (v170(&v197, &v195))
      {
        v172 = *(v11 + 11);
        v173 = *(v11 + 72);
        v174 = a2[-1].n128_u64[1];
        *(v11 + 72) = *v8;
        *(v11 + 11) = v174;
        *v8 = v173;
        a2[-1].n128_u64[1] = v172;
        v175 = *a3;
        v197 = *(v11 + 72);
        v198 = *(v11 + 11);
        v195 = v11[3];
        v196 = *(v11 + 8);
        if (v175(&v197, &v195))
        {
          v176 = *(v11 + 8);
          v177 = v11[3];
          v11[3] = *(v11 + 72);
          v178 = *(v11 + 11);
          *(v11 + 8) = v178;
          *(v11 + 72) = v177;
          *(v11 + 11) = v176;
          v179 = *a3;
          v197 = v11[3];
          v198 = v178;
          v195 = *(v11 + 24);
          v196 = *(v11 + 5);
          if (v179(&v197, &v195))
          {
            v180 = *(v11 + 5);
            v181 = *(v11 + 24);
            *(v11 + 24) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v181;
            *(v11 + 8) = v180;
LABEL_87:
            v191 = *a3;
            v197 = *(v11 + 24);
            v198 = *(v11 + 5);
            v192 = *v11;
            v196 = *(v11 + 2);
            v195 = v192;
            if (v191(&v197, &v195))
            {
              v193 = *v11;
              v198 = *(v11 + 2);
              v197 = v193;
              *v11 = *(v11 + 24);
              *(v11 + 2) = *(v11 + 5);
              *(v11 + 24) = v197;
              *(v11 + 5) = v198;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v159 = *a3;
  v197 = *(v11 + 24);
  v198 = *(v11 + 5);
  v160 = *v11;
  v196 = *(v11 + 2);
  v195 = v160;
  v161 = v159(&v197, &v195);
  v162 = *a3;
  if (v161)
  {
    v163 = *v8;
    v198 = a2[-1].n128_u64[1];
    v197 = v163;
    v195 = *(v11 + 24);
    v196 = *(v11 + 5);
    if (v162(&v197, &v195))
    {
      goto LABEL_78;
    }

    v164 = *v11;
    v198 = *(v11 + 2);
    v197 = v164;
    *v11 = *(v11 + 24);
    *(v11 + 2) = *(v11 + 5);
    *(v11 + 24) = v197;
    *(v11 + 5) = v198;
    v165 = *a3;
    v166 = *v8;
    v198 = a2[-1].n128_u64[1];
    v197 = v166;
    v195 = *(v11 + 24);
    v196 = *(v11 + 5);
    if (!v165(&v197, &v195))
    {
      return;
    }

    v167 = *(v11 + 5);
    v168 = *(v11 + 24);
    v169 = a2[-1].n128_u64[1];
    *(v11 + 24) = *v8;
    *(v11 + 5) = v169;
    *v8 = v168;
LABEL_79:
    a2[-1].n128_u64[1] = v167;
    return;
  }

  v187 = *v8;
  v198 = a2[-1].n128_u64[1];
  v197 = v187;
  v195 = *(v11 + 24);
  v196 = *(v11 + 5);
  if (v162(&v197, &v195))
  {
    v188 = *(v11 + 5);
    v189 = *(v11 + 24);
    v190 = a2[-1].n128_u64[1];
    *(v11 + 24) = *v8;
    *(v11 + 5) = v190;
    *v8 = v189;
    a2[-1].n128_u64[1] = v188;
    goto LABEL_87;
  }
}

void *sub_100011060(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1000112A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100022D34(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000112BC@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v14 = a2;
  v13 = a3;
  if (!result[34])
  {
    goto LABEL_8;
  }

  v5 = result;
  v6 = result[33];
  if (!v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = *(v6 + 32);
    if (v8 <= a3)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v8 < a3)
  {
    v6 += 8;
    goto LABEL_7;
  }

  result = sub_100011390((result + 32), &v13);
  v9 = result[1];
  if (!v9)
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  while (1)
  {
    v10 = *(v9 + 32);
    if (v10 <= a2)
    {
      break;
    }

LABEL_14:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  if (v10 < a2)
  {
    v9 += 8;
    goto LABEL_14;
  }

  v11 = sub_100011390((v5 + 32), &v13);
  result = sub_1000113E8(v11, &v14);
  v12 = result[1];
  *a4 = *result;
  a4[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_100011390(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10017C290("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
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
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1000113E8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10017C290("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 32);
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
      return (v2 + 5);
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

BOOL sub_100011440(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = a3;
  v7 = a2;
  if (!sub_100009978((a1 + 320), &v7))
  {
    return 1;
  }

  v4 = sub_100009978((a1 + 320), &v7);
  if (!v4)
  {
    sub_10017C290("unordered_map::at: key not found");
  }

  return !sub_100009BCC(v4 + 3, &v6);
}

void *sub_1000114B4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10001150C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10001150C(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10038F1D0(v5, (v5 + 8), (v4 + 4));
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

void sub_100011594(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, int a6, int a7)
{
  if (a4 - *a2 <= 60.0)
  {
    if (sub_100011440(a1, *(a2 + 72), *(a2 + 80)))
    {
      sub_1000114B4(v38, a3);
      if (!v38[2])
      {
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          v32 = (a2 + 24);
          v33 = *(a2 + 72);
          v34 = *(a2 + 80);
          if (*(a2 + 47) < 0)
          {
            v32 = *(a2 + 24);
          }

          *buf = 134218498;
          *&buf[4] = v33;
          *&buf[12] = 2048;
          *&buf[14] = v34;
          v42 = 2080;
          v43 = v32;
          _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "#regionmon init bluetooth device with no thresholds for device-part: 0x%llx-0x%llx with model: %s. Using default threshold", buf, 0x20u);
        }

        *buf = 0x300000008;
        *&buf[8] = 0xC04E800000000000;
        v39[0] = 0xC04E800000000000;
        sub_1001BD370(&buf[16], v39, 1);
        *&v45[3] = xmmword_100563C70;
        *&v45[11] = 0x4024000000000000;
        v46 = 45;
        LOBYTE(__p) = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 1;
        v53 = 1;
        v54 = xmmword_100563C80;
        v55 = xmmword_100563C90;
        __asm { FMOV            V0.2D, #1.0 }

        v56 = _Q0;
        v57 = 0xC059000000000000;
        v58 = xmmword_100563CA0;
        v59 = vdup_n_s32(0x3DCCCCCDu);
        v60 = xmmword_100563BE0;
        v62 = 0;
        v63 = 0;
        v61 = 0x3FD999999999999ALL;
        v64 = xmmword_100563BF0;
        v65 = 5;
        v66 = 0x4000000000000000;
        v67 = 10;
        v68 = 0x4034000000000000;
        v69 = 3;
        v70 = xmmword_100563CB0;
        sub_10038EFA4(v38, buf);
        if (v49 == 1 && v48 < 0)
        {
          operator delete(__p);
        }

        sub_10002074C(&buf[16], v43);
      }

      sub_10000B41C(v39, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
      v21 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v22 = (a2 + 24);
        v23 = *(a2 + 72);
        v24 = *(a2 + 80);
        if (*(a2 + 47) < 0)
        {
          v22 = *(a2 + 24);
        }

        v25 = v39;
        if (v40 < 0)
        {
          v25 = v39[0];
        }

        *buf = 134218754;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = v24;
        v42 = 2080;
        v43 = v22;
        v44 = 2080;
        *v45 = v25;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#regionmon init bluetooth device-part: 0x%llx-0x%llx with model: %s with btDevIdentifier: %s", buf, 0x2Au);
      }

      if (*(a2 + 47) < 0)
      {
        sub_1000056BC(__dst, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        *__dst = *(a2 + 24);
        v37 = *(a2 + 40);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(__dst[0]);
      }

      v26 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a6;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#regionmon Initializing BT device monitoring without spatial gesture detection, allowCoarseEstimation: %d.", buf, 8u);
      }

      v27 = *(a2 + 72);
      v28 = *(a2 + 80);
      sub_1000114B4(v35, v38);
      sub_10040EFAC(a1, v27, v28, v35, 3, a6, a7, *a2);
      sub_100013328(v35, v35[1]);
      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      sub_100013328(v38, v38[1]);
    }

    v29 = sub_100009978((a1 + 320), (a2 + 72));
    if (!v29)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    v30 = sub_100009978(v29 + 3, (a2 + 80));
    v31 = v30;
    if (!v30)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    if (sub_100012384((v30 + 3)))
    {
      sub_100011AE4((v31 + 3), a2);
    }
  }

  else
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a2;
      *buf = 134218240;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#regionmon stale sample being ignored, current time: %f, sample timestamp: %f", buf, 0x16u);
    }
  }
}

void sub_100011A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  sub_10029B230(&a26);
  sub_100013328(&a16, a17);
  _Unwind_Resume(a1);
}

void sub_100011AE4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = *(a1 + 144);
  v6 = *(a2 + 92) == 1 && *(a2 + 22) == 1;
  if (v6)
  {
    if (!v5)
    {
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 0x40000000;
      aBlock[2] = sub_1003FF6EC;
      aBlock[3] = &unk_1009AA880;
      aBlock[4] = a1;
      v83 = 0;
      v81 = off_1009AA8B0;
      v82 = _Block_copy(aBlock);
      v83 = &v81;
      operator new();
    }
  }

  else if (v5)
  {
    sub_1003FFEE0((a1 + 144), 0);
    sub_1003FF6F4(a1, 0);
  }

  v7 = *(a1 + 120);
  v49 = *a2;
  v50 = *(a2 + 4);
  if (*(a2 + 47) < 0)
  {
    sub_1000056BC(&v51, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v51 = *(a2 + 24);
    v52 = *(a2 + 5);
  }

  __p = 0;
  v54 = 0;
  v55 = 0;
  sub_100009A48(&__p, *(a2 + 6), *(a2 + 7), *(a2 + 7) - *(a2 + 6));
  v56[0] = *(a2 + 72);
  *(v56 + 13) = *(a2 + 85);
  (*(*v7 + 24))(buf, v7, &v49, 0);
  v8 = *buf;
  v9 = buf[8];
  v10 = *&buf[16];
  v35 = v59;
  v11 = v60;
  v12 = BYTE4(v60);
  v13 = v66;
  v14 = BYTE4(v66);
  v15 = v67;
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
    if ((v15 & 1) == 0)
    {
      return;
    }
  }

  else if ((v15 & 1) == 0)
  {
    return;
  }

  if (v12)
  {
    v16 = *(a1 + 104);
    if (v11)
    {
      *buf = *v16;
      sub_1000131C8(buf, v11 - 1);
      v17 = *buf;
    }

    else
    {
      v20 = v16[1];
      v18 = v16 + 1;
      v19 = v20;
      if (v20)
      {
        do
        {
          v17 = v19;
          v19 = *(v19 + 8);
        }

        while (v19);
      }

      else
      {
        do
        {
          v17 = v18[2];
          v6 = *v17 == v18;
          v18 = v17;
        }

        while (v6);
      }
    }

    v21 = *(v17 + 56) + -0.101;
    sub_10001296C(a1 + 160, 0x13F800000, &v81, v21);
    if (v81 == 1)
    {
      sub_100012FB4(__dst, (a1 + 256));
      sub_100012FB4(v42, (a1 + 368));
      v22 = *a1;
      v23 = v47;
      v24 = *(a1 + 152);
      if ((v14 & 1) != 0 && v13 < *(a1 + 864))
      {
        v25 = qword_1009F9820;
        if (v11)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            if ((v9 & 1) == 0)
            {
              sub_1000195BC();
            }

            *buf = 134218496;
            *&buf[4] = v23;
            *&buf[12] = 2048;
            *&buf[14] = v8;
            *&buf[22] = 1024;
            LODWORD(v59) = v13;
            _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "#regionmon BT threshold detector early return with estimate, range:%f  RSSI: %f, numSamples: %d", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          if ((v9 & 1) == 0)
          {
            sub_1000195BC();
          }

          sub_1004CE4D0(v80, v8, v13, v25);
        }
      }

      v26 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        v27 = *(a2 + 10);
        if (*(a2 + 47) >= 0)
        {
          v28 = a2 + 24;
        }

        else
        {
          v28 = *(a2 + 3);
        }

        v29 = *(a2 + 1);
        *buf = 134218498;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = v28;
        *&buf[22] = 2048;
        v59 = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "#regionmon Device Monitor suggested region change for device %llu (%s) with current RSSI of %f", buf, 0x20u);
      }

      v30 = *a1;
      sub_100012FB4(v39, __dst);
      sub_100012FB4(v36, v42);
      *buf = v22;
      *&buf[8] = v4;
      *&buf[16] = v23;
      *&buf[20] = 3;
      v61 = 0;
      v59 = 0;
      v60 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0u;
      v69 = 0u;
      v70 = v24;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v79 = 1;
      sub_1003FF284(a1 + 8, v30, v39, v36, buf, 0x13F800000, 0, *&v4);
      if (v38 == 1 && v37 < 0)
      {
        operator delete(v36[0]);
      }

      if (v41 == 1 && v40 < 0)
      {
        operator delete(v39[0]);
      }

      if (v44 == 1 && v43 < 0)
      {
        operator delete(v42[0]);
      }

      if (v48 == 1 && v46 < 0)
      {
        operator delete(__dst[0]);
      }
    }

    if (*(a1 + 976) != 1 || (v35 & 1) == 0)
    {
      goto LABEL_60;
    }

    v31 = *a1;
    v32 = *(a1 + 280);
    v33 = *(a1 + 152);
    if (*(a1 + 136) == 1)
    {
      if (vabdd_f64(*(a1 + 128), v10) <= 0.005)
      {
        goto LABEL_60;
      }

      *buf = *a1;
      *&buf[8] = v4;
      *&buf[16] = v32;
      *&buf[20] = 3;
      v61 = 0;
      v59 = 0;
      v60 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0u;
      v69 = 0u;
      v70 = v33;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      *&v74 = v10;
      *(&v74 + 1) = v35;
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v79 = 1;
      __dst[0] = v4;
      v42[0] = v31;
      sub_1004002A8(a1 + 40);
    }

    else
    {
      *buf = *a1;
      *&buf[8] = v4;
      *&buf[16] = v32;
      *&buf[20] = 3;
      v61 = 0;
      v59 = 0;
      v60 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0u;
      v69 = 0u;
      v70 = v33;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      *&v74 = v10;
      *(&v74 + 1) = v35;
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v79 = 1;
      __dst[0] = v4;
      v42[0] = v31;
      v34 = *(a1 + 64);
      if (!v34)
      {
        sub_100037B10();
      }

      (*(*v34 + 48))(v34, __dst, v42, buf);
    }

    *(a1 + 128) = v10;
    *(a1 + 136) = 1;
LABEL_60:
    *(a1 + 424) = v4;
    *(a1 + 432) = 1;
    if (v84 == 1 && SHIBYTE(v83) < 0)
    {
      operator delete(v82);
    }
  }
}

void sub_100012250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a34 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  if (a44 == 1 && a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v44 - 144) == 1 && *(v44 - 169) < 0)
  {
    operator delete(*(v44 - 192));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100012394(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100012468(result, a4);
  }

  return result;
}

void sub_1000123F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100012410(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_100012468(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100012410(a1, a2);
  }

  sub_100019B38();
}

double sub_1000124B4(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = *a2;
  if (v3 == *a2)
  {
    return 0.0;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3);
  v6 = v5 >> 1;
  v8 = sub_10001104C;
  sub_100010168(v4, v3, &v8, 126 - 2 * __clz(v5), 1);
  result = *(*a2 + 24 * v6 + 8);
  if (((*(a2 + 2) - *a2) & 8) == 0)
  {
    return (result + *(*a2 + 24 * v6 - 16)) * 0.5;
  }

  return result;
}

void sub_100012564(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1000125AC(unsigned int *a1, double a2, double a3)
{
  v5 = *(a1 + 5);
  v6 = (a1 + 12);
  if (v5 == a1 + 12)
  {
    v14 = 1;
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 5);
    do
    {
      v9 = v8[4];
      if (v9 < a2)
      {
        v10 = v7;
      }

      else
      {
        v10 = v7 + 1;
      }

      if (v9 < a2)
      {
        break;
      }

      v11 = *(v8 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v8 + 2);
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v7 = v10;
      v8 = v12;
    }

    while (v12 != v6);
    v14 = (v7 + 1);
  }

  v15 = *(a1 + 7);
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  result = *a1;
  if (result == -1)
  {
    *a1 = v16;
    return v16;
  }

  if (result == v16)
  {
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }

    a1[86] = 0;
    return v16;
  }

  v18 = a1[86] + 1;
  a1[86] = v18;
  if ((a1[4] & 1) == 0)
  {
    *(a1 + 1) = a3;
    *(a1 + 16) = 1;
  }

  v19 = a3 - *(a1 + 1);
  v20 = *(a1 + 8);
  v21 = v20 - v19;
  if (v20 - v19 < 0.0)
  {
    v21 = 0.0;
  }

  v22 = v21 / v20;
  v23 = a1[22];
  v24 = (v23 - v18) & ~((v23 - v18) >> 31);
  if (v24 / v23 >= v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = v24 / v23;
  }

  if (v15 >= v14)
  {
    if (result && v14 > result)
    {
      *v40 = v5;
      sub_1000131C8(v40, result - 1);
    }

    else
    {
      *v40 = v5;
      sub_1000131C8(v40, v14 - 1);
    }

    v28 = *(*v40 + 32);
    v29 = vabdd_f64(a2, v28);
    result = *a1;
    if (v14 < result || !result)
    {
      if (v29 >= v25 * *(a1 + 9))
      {
        v35 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v36 = a1[86];
          v37 = a1[22];
          v38 = *(a1 + 7);
          v39 = *(a1 + 8);
          *v40 = 134220032;
          *&v40[4] = v38;
          v41 = 2048;
          v42 = a2;
          v43 = 2048;
          v44 = v28;
          v45 = 2048;
          v46 = v29;
          v47 = 2048;
          v48 = v25;
          v49 = 1024;
          v50 = v36;
          v51 = 1024;
          v52 = v37;
          v53 = 2048;
          v54 = v19;
          v55 = 2048;
          v56 = v39;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#threshold-detector, threshsize:%zu [in] rssi: %f, rssiBorder: %f, rssiDelta: %f, mindecayfactor: %f, samples: %d/%d, time: %f/%f", v40, 0x54u);
        }

        *a1 = v14;
        if (*(a1 + 16) == 1)
        {
          *(a1 + 16) = 0;
        }

        return v14;
      }

      return result;
    }
  }

  else
  {
    v26 = *v6;
    if (*v6)
    {
      do
      {
        v27 = v26;
        v26 = *(v26 + 1);
      }

      while (v26);
    }

    else
    {
      do
      {
        v27 = *(v6 + 2);
        v13 = *v27 == v6;
        v6 = v27;
      }

      while (v13);
    }

    v28 = v27[4];
    v29 = vabdd_f64(a2, v28);
  }

  if (v29 >= v25 * *(a1 + 10))
  {
    v30 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v31 = a1[86];
      v32 = a1[22];
      v33 = *(a1 + 7);
      v34 = *(a1 + 8);
      *v40 = 134220032;
      *&v40[4] = v33;
      v41 = 2048;
      v42 = a2;
      v43 = 2048;
      v44 = v28;
      v45 = 2048;
      v46 = v29;
      v47 = 2048;
      v48 = v25;
      v49 = 1024;
      v50 = v31;
      v51 = 1024;
      v52 = v32;
      v53 = 2048;
      v54 = v19;
      v55 = 2048;
      v56 = v34;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#threshold-detector, threshsize:%zu [out] rssi: %f, rssiBorder: %f, rssiDelta: %f, mindecayfactor: %f, samples: %d/%d, time: %f/%f", v40, 0x54u);
    }

    *a1 = v16;
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }

    return v16;
  }

  return result;
}

void sub_10001296C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, float a4@<S0>)
{
  v8 = *(a1 + 80);
  v11 = *(v8 + 8);
  v10 = (v8 + 8);
  v9 = v11;
  if (v11)
  {
    v12 = v10;
    do
    {
      v13 = v9[14];
      if (v13 > a4)
      {
        v12 = v9;
      }

      v9 = *&v9[2 * (v13 <= a4)];
    }

    while (v9);
  }

  else
  {
    v12 = v10;
  }

  v14 = *(a1 + 144);
  LOBYTE(__p) = 0;
  v57 = 0;
  v58 = 0;
  v15 = v59;
  sub_100012FB4(v59, &__p);
  if (v57 == 1 && v56 < 0)
  {
    operator delete(__p);
  }

  LOBYTE(v48) = 0;
  v50 = 0;
  v51 = 1;
  v16 = v52;
  sub_100012FB4(v52, &v48);
  if (v50 == 1 && v49 < 0)
  {
    operator delete(v48);
  }

  if (v12 == v10)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    if ((*(a1 + 144) & 1) == 0)
    {
      v42 = 106;
      goto LABEL_87;
    }

    if ((*(a1 + 120) + *a1) < a4)
    {
      sub_1003FFAA0((a1 + 208), (a1 + 96));
      if (*(a1 + 144) == 1)
      {
        if (*(a1 + 119) < 0)
        {
          operator delete(*(a1 + 96));
        }

        *(a1 + 144) = 0;
      }

      v21 = *(a1 + 80);
      v24 = *(v21 + 8);
      v22 = v21 + 8;
      v23 = v24;
      if (v24)
      {
        do
        {
          v25 = v23;
          v23 = *(v23 + 8);
        }

        while (v23);
      }

      else
      {
        do
        {
          v25 = *(v22 + 16);
          v17 = *v25 == v22;
          v22 = v25;
        }

        while (v17);
      }

      sub_10001308C((a1 + 152), (v25 + 32));
      v26 = &v51;
      v15 = v52;
    }

    else
    {
LABEL_38:
      v26 = &v58;
    }

    *a3 = *v26;
    sub_100012FB4(a3 + 8, v15);
    goto LABEL_78;
  }

  v17 = *(v12 + 72) != 1 || (a2 & &_mh_execute_header) == 0;
  if (v17 || (v18 = *(a1 + 8), v18 <= *&a2))
  {
    if ((v14 & 1) == 0)
    {
      v27 = *(a1 + 80);
      v30 = *(v27 + 8);
      v28 = v27 + 8;
      v29 = v30;
      if (v30)
      {
        do
        {
          v31 = v29;
          v29 = *(v29 + 8);
        }

        while (v29);
      }

      else
      {
        do
        {
          v31 = *(v28 + 16);
          v17 = *v31 == v28;
          v28 = v31;
        }

        while (v17);
      }

      if ((*(v31 + 56) - *(a1 + 4)) >= a4)
      {
        sub_1003FFAA0((a1 + 208), (a1 + 96));
        sub_10001308C((a1 + 96), (v12 + 4));
        if (v12 == **(a1 + 80))
        {
          if (*(a1 + 200) == 1)
          {
            if (*(a1 + 175) < 0)
            {
              operator delete(*(a1 + 152));
            }

            *(a1 + 200) = 0;
          }
        }

        else
        {
          v34 = *v12;
          if (*v12)
          {
            do
            {
              v35 = v34;
              v34 = v34[1];
            }

            while (v34);
          }

          else
          {
            do
            {
              v35 = v12[2];
              v17 = *v35 == v12;
              v12 = v35;
            }

            while (v17);
          }

          sub_10001308C((a1 + 152), (v35 + 4));
        }

        v32 = &v51;
      }

      else
      {
        v32 = &v58;
        v16 = v59;
      }

      *a3 = *v32;
      sub_100012FB4(a3 + 8, v16);
      goto LABEL_78;
    }

    if (*(a1 + 144))
    {
      buf[0].__r_.__value_.__s.__data_[0] = 0;
      v63 = 0;
      if (v12 != **(a1 + 80))
      {
        v19 = *v12;
        if (*v12)
        {
          do
          {
            v20 = v19;
            v19 = v19[1];
          }

          while (v19);
        }

        else
        {
          v37 = v12;
          do
          {
            v20 = v37[2];
            v17 = *v20 == v37;
            v37 = v20;
          }

          while (v17);
        }

        sub_10001308C(buf, (v20 + 4));
      }

      v38 = sub_100013254(a1, (a1 + 96), (v12 + 4), buf, a4);
      v39 = &v58;
      if (v38)
      {
        v39 = &v51;
      }

      *a3 = *v39;
      v40 = a3 + 8;
      if (v38)
      {
        v41 = v52;
      }

      else
      {
        v41 = v59;
      }

      sub_100012FB4(v40, v41);
      if (v63 == 1 && SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        v36 = buf[0].__r_.__value_.__r.__words[0];
        goto LABEL_71;
      }

      goto LABEL_78;
    }

    v42 = 143;
LABEL_87:
    __assert_rtn("checkForRegionChange", "NRBYDeviceMonitor.cpp", v42, "_currentRegion.has_value()");
  }

  v33 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 134218240;
    *(buf[0].__r_.__value_.__r.__words + 4) = *&a2;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2048;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v18;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#regionmon region change supressed: intent score: %f, required score: %f", buf, 0x16u);
  }

  if (*(v12 + 55) < 0)
  {
    sub_1000056BC(&v43, v12[4], v12[5]);
  }

  else
  {
    v43 = *(v12 + 2);
    v44 = v12[6];
  }

  v45 = *(v12 + 7);
  v46 = *(v12 + 36);
  v47 = 1;
  *a3 = 0;
  sub_100012FB4(a3 + 8, &v43);
  if (v47 == 1 && SHIBYTE(v44) < 0)
  {
    v36 = v43;
LABEL_71:
    operator delete(v36);
  }

LABEL_78:
  if (v54 == 1 && v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (v61 == 1 && v60 < 0)
  {
    operator delete(v59[0]);
  }
}

void sub_100012E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a40 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  if (a61 == 1 && a57 < 0)
  {
    operator delete(a52);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100012F38(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100013050(result, a4);
  }

  return result;
}

void sub_100012F98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100012FB4(char *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[48] = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_1000056BC(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    v5 = *(a2 + 24);
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 24) = v5;
    __dst[48] = 1;
  }

  return __dst;
}

void sub_100013030(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    sub_1004C68E0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100013050(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100012564(a1, a2);
  }

  sub_100019B38();
}

char *sub_10001308C(char *__dst, std::string *__str)
{
  if (__dst[48] == 1)
  {
    std::string::operator=(__dst, __str);
    v4 = __str[1].__r_.__value_.__r.__words[2];
    *(__dst + 24) = *&__str[1].__r_.__value_.__l.__data_;
    *(__dst + 20) = v4;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      *(__dst + 2) = *(&__str->__r_.__value_.__l + 2);
      *__dst = v5;
    }

    v6 = *&__str[1].__r_.__value_.__l.__data_;
    *(__dst + 20) = __str[1].__r_.__value_.__r.__words[2];
    *(__dst + 24) = v6;
    __dst[48] = 1;
  }

  return __dst;
}

BOOL sub_100013120(char *a1, float *a2)
{
  if (*(a1 + 6) != a2[6])
  {
    return 0;
  }

  v2 = a2;
  v3 = a1;
  v4 = a1[23];
  if (v4 >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    v5 = *(a1 + 1);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 1);
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v7 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v5) && *(v3 + 9) == *(v2 + 9);
}

void **sub_1000131C8(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

uint64_t sub_100013254(uint64_t a1, float *a2, uint64_t a3, std::string *a4, float a5)
{
  if (sub_100013120(a3, a2))
  {
    return 0;
  }

  if (*(a3 + 24) >= a2[6])
  {
    if ((*(a1 + 144) & 1) == 0)
    {
      sub_1004CE214();
    }

    if ((*(a1 + 120) + *a1) >= a5)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 200) != 1)
    {
      sub_1004CE240();
    }

    if ((*(a1 + 176) - *(a1 + 4)) <= a5)
    {
      return 0;
    }
  }

  sub_1003FFAA0((a1 + 208), (a1 + 96));
  sub_10001308C((a1 + 96), a3);
  sub_1003FFAA0((a1 + 152), a4);
  return 1;
}

void sub_100013328(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100013328(a1, *a2);
    sub_100013328(a1, a2[1]);
    sub_10038EF50((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_100013384(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  if (v4 == 1)
  {
    std::string::operator=((a1 + 24), (a2 + 24));
    if (a1 != a2)
    {
      sub_1000134D0((a1 + 48), *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    }

    v6 = *(a2 + 72);
    *(a1 + 85) = *(a2 + 85);
    *(a1 + 72) = v6;
  }

  else
  {
    if (*(a2 + 47) < 0)
    {
      sub_1000056BC((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v7 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v7;
    }

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    sub_100009A48(a1 + 48, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    v8 = *(a2 + 72);
    *(a1 + 85) = *(a2 + 85);
    *(a1 + 72) = v8;
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_100013458(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100013474(std::string *a1, const std::string *a2)
{
  if ((a1[10].__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    sub_100013384(&a1[6].__r_.__value_.__l.__size_, a2);
    std::string::operator=(a1 + 1, a2 + 1);
  }

  return sub_100013384(&a1[2], a2);
}

void *sub_1000134D0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100009AC4(v6, v10);
    }

    sub_100019B38();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_1000135F8(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100013840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100022D34(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100013854(void *a1, unsigned int a2, double a3, double a4, double a5)
{
  v16 = a4;
  v17 = a3;
  v15 = a5;
  sub_100013A08(a1, &v17);
  sub_100013A08((a1 + 6), &v16);
  sub_100013A08((a1 + 12), &v15);
  v7 = a1[5];
  if (v7 >= 0xB)
  {
    ++a1[4];
    a1[5] = v7 - 1;
    sub_1000139A8(a1, 1);
  }

  v8 = a1[11];
  if (v8 >= 0xB)
  {
    ++a1[10];
    a1[11] = v8 - 1;
    sub_1000139A8((a1 + 6), 1);
  }

  v9 = a1[17];
  if (v9 >= 0xB)
  {
    ++a1[16];
    a1[17] = v9 - 1;
    sub_1000139A8((a1 + 12), 1);
  }

  v10 = a1[5];
  if (v10 != a1[11])
  {
    sub_1004AD4A4();
  }

  if (v10 != a1[17])
  {
    sub_1004AD4D0();
  }

  if (v10 >= 0xA)
  {
    if (v10 != 10)
    {
      sub_1004AD4FC();
    }

    v13 = sub_10000ADF0(a1, a1, a1 + 6, a1 + 12);
    if (a2 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
      if (v13 > *(a1 + qword_100565FC0[a2]))
      {
        v11 = 1;
      }
    }

    v12 = &_mh_execute_header;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  return v12 | v11;
}

uint64_t sub_1000139A8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
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
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

double sub_100013A08(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(a1 + 40);
  v9 = v8 + *(a1 + 32);
  if (v7 == v9)
  {
    sub_1002248FC(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32) + v8;
  }

  result = *a2;
  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  return result;
}

void sub_100013A90(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000199AC(exception, a1);
}

void sub_100013B04()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_100013F40(void *result, uint64_t a2, uint64_t a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2080;
  *(a2 + 14) = v5;
  return result;
}

_BYTE *sub_100013F64(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

uint64_t *sub_100013F94@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

const char *sub_100013FA0(uint64_t a1)
{
  v2 = atomic_load((a1 + 1240));
  v3 = sub_10025911C(a1, v2);

  return sub_100261E38(v3, v1);
}

uint64_t *sub_100013FF0(uint64_t *result, uint64_t a2)
{
  if (*(result + 23) < 0)
  {
    v2 = *result;
  }

  v3 = *(a2 + 32);
  return result;
}

void sub_1000140C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000140E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "failedToAddPeer");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v9 < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 136);
    *__p = 138412546;
    *&__p[4] = @"failedToAddPeer";
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@", __p, 0x16u);
  }
}

void sub_1000141FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000143B0(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

unint64_t sub_100014428(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_100021450(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_1000213A4(a2, a3);
  }

  else
  {
    return sub_1000149EC(a2, a3);
  }
}

unint64_t sub_100014630(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_100014428(&v5, a2, v3);
}

const void **sub_100014680(void *a1, const void **a2)
{
  v4 = sub_100014630(a1, a2);
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

  if (!sub_1000143B0(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_100014900(int a1)
{
  result = 1;
  if (a1 > 199)
  {
    if ((a1 - 200) >= 3 && a1 != 999 && a1 != 997)
    {
      return result;
    }

    return 0;
  }

  if ((a1 - 100) < 0x1B || (a1 - 11) < 0x11)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000149EC(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

void *sub_100014B54()
{
  if ((atomic_load_explicit(&qword_1009EC980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009EC980))
  {
    sub_10002F0B4(&unk_1009EC7A8);
    __cxa_atexit(sub_10002DBA8, &unk_1009EC7A8, &_mh_execute_header);
    __cxa_guard_release(&qword_1009EC980);
  }

  return &unk_1009EC7A8;
}

uint64_t sub_100014BF0(uint64_t a1)
{
  std::mutex::lock((a1 + 88));
  v2 = sub_100014C40();
  std::mutex::unlock((a1 + 88));
  return v2;
}

uint64_t sub_100014C40()
{
  v0 = sub_10001503C();
  v1 = sub_100015080();
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#wifi-service,wifi chipset: %@", &v10, 0xCu);
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#wifi-service,productType: %@", &v10, 0xCu);
  }

  if (v0)
  {
    if ((([v0 hasPrefix:@"4357"] & 1) != 0 || (objc_msgSend(v0, "hasPrefix:", @"4377") & 1) != 0 || (objc_msgSend(v0, "hasPrefix:", @"4378") & 1) != 0 || (objc_msgSend(v0, "hasPrefix:", @"4387") & 1) != 0 || (objc_msgSend(v0, "hasPrefix:", @"4388") & 1) != 0 || (objc_msgSend(v0, "hasPrefix:", @"proxima") & 1) != 0 || (objc_msgSend(v0, "hasPrefix:", @"4399") & 1) != 0 || (objc_msgSend(v0, "hasPrefix:", @"7932") & 1) != 0 || objc_msgSend(v0, "hasPrefix:", @"marconi")) && ((objc_msgSend(v1, "hasPrefix:", @"iPhone") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"AudioAccessory1") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"Mac") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"iMac") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"RealityDevice") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"Watch") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"AudioAccessory6,1") & 1) != 0 || objc_msgSend(v1, "hasPrefix:", @"AudioAccessory5,1")))
    {
      v4 = qword_1009F9820;
      v5 = 1;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        v6 = "#wifi-service,Found ranging supported capability via chipset.";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v6, &v10, 2u);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      v9 = "#wifi-service,Ranging not supported - via chipset.";
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  if (!v1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049B654();
    }

    goto LABEL_36;
  }

  if (([v1 hasPrefix:@"Watch"] & 1) == 0 && (objc_msgSend(v1, "hasPrefix:", @"Mac") & 1) == 0 && (objc_msgSend(v1, "hasPrefix:", @"iMac") & 1) == 0 && (objc_msgSend(v1, "hasPrefix:", @"AudioAccessory6,1") & 1) == 0 && !objc_msgSend(v1, "hasPrefix:", @"AudioAccessory5,"))
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      v9 = "#wifi-service,Ranging not supported - via product type.";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, &v10, 2u);
    }

LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  v4 = qword_1009F9820;
  v5 = 1;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    v6 = "#wifi-service,Found ranging supported capability via product type.";
    goto LABEL_33;
  }

LABEL_37:

  return v5;
}

id sub_10001503C()
{
  if (qword_1009F25E0 != -1)
  {
    sub_100015160();
  }

  v1 = qword_1009F25D8;

  return v1;
}

__CFString *sub_100015080()
{
  if (qword_1009F25C0 != -1)
  {
    sub_1004B15FC();
  }

  v1 = off_1009EBAD8;

  return v1;
}

uint64_t sub_100015D94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015E84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100016A9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 96));
  objc_destroyWeak((v5 - 88));

  _Unwind_Resume(a1);
}

void sub_100016B10(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connection interrupted for pid: %d", v6, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [WeakRetained handleXPCDisconnection:v5];
  }
}

void sub_100016BE8(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_100016C08(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connection invalidated for pid: %d", v6, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [WeakRetained handleXPCDisconnection:v5];
  }
}

void sub_100016CE0(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

id PRErrorWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = v4;
  v6 = NSLocalizedDescriptionKey;
  if (a1 <= 109)
  {
    if (a1 <= 102)
    {
      if (a1 > 100)
      {
        if (a1 == 101)
        {
          v7 = @"Failed to place service request.";
        }

        else
        {
          v7 = @"Failed to initiate a ranging session.";
        }

        goto LABEL_45;
      }

      if (a1 == 10)
      {
        [v4 setObject:@"Unsupported operation." forKeyedSubscript:NSLocalizedDescriptionKey];
        v6 = NSLocalizedFailureReasonErrorKey;
        v7 = @"This platform does not support the operation requested.";
        goto LABEL_45;
      }

      if (a1 == 100)
      {
        [v4 setObject:@"Unsupported ranging configuration." forKeyedSubscript:NSLocalizedDescriptionKey];
        [v5 setObject:@"Missing parameters or invalid values provided." forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
        v6 = NSLocalizedRecoverySuggestionErrorKey;
        v7 = @"Make sure that the values provided are supported in this version.";
        goto LABEL_45;
      }
    }

    else if (a1 <= 105)
    {
      if (a1 == 103)
      {
        v7 = @"Failed to stop a ranging session.";
        goto LABEL_45;
      }

      if (a1 == 104)
      {
        v7 = @"Failed to set Rose config.";
        goto LABEL_45;
      }
    }

    else
    {
      switch(a1)
      {
        case 'j':
          v7 = @"Invalid peer information.";
          goto LABEL_45;
        case 'l':
          v7 = @"Invalid ticket id.";
          goto LABEL_45;
        case 'm':
          v7 = @"Rose Provider not ready.";
          goto LABEL_45;
      }
    }

LABEL_44:
    v7 = @"Undefined Error";
    goto LABEL_45;
  }

  if (a1 > 200)
  {
    if (a1 <= 998)
    {
      if (a1 == 201)
      {
        v7 = @"Failed to stop estimating proximity to peer.";
        goto LABEL_45;
      }

      if (a1 == 202)
      {
        v7 = @"Failed to consume RSSI sample.";
        goto LABEL_45;
      }
    }

    else
    {
      switch(a1)
      {
        case 999:
          v7 = @"Internal Error";
          goto LABEL_45;
        case 2000:
          v7 = @"Unsupported global parameters combination.";
          goto LABEL_45;
        case 2002:
          v7 = @"Time conversion failed.";
          goto LABEL_45;
      }
    }

    goto LABEL_44;
  }

  if (a1 > 111)
  {
    switch(a1)
    {
      case 112:
        v7 = @"Not user triggered request.";
        goto LABEL_45;
      case 113:
        v7 = @"Client has no registered request.";
        goto LABEL_45;
      case 200:
        v7 = @"Failed to start estimating proximity to peer.";
        goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (a1 == 110)
  {
    v7 = @"Timeout.";
  }

  else
  {
    v7 = @"Unexpected service state.";
  }

LABEL_45:
  [v5 setObject:v7 forKeyedSubscript:v6];
  if (v3)
  {
    [v5 addEntriesFromDictionary:v3];
  }

  v8 = [NSError errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:a1 userInfo:v5];

  return v8;
}

_BYTE *sub_100017284@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v2 = "TriggerRequired";
  }

  else
  {
    v2 = "NoTriggerRequired";
  }

  return sub_100004A08(a2, v2);
}

_BYTE *sub_1000172A4@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v2 = "BTAidedAcquisition";
  }

  else
  {
    v2 = "DirectAcquisition";
  }

  return sub_100004A08(a2, v2);
}

_BYTE *sub_1000172C4@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 == 100)
  {
    v2 = "Unspecified";
  }

  else if (a1 == 1)
  {
    v2 = "Responder";
  }

  else
  {
    v2 = "Initiator";
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_100017360(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

id sub_10001779C(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.private.nearbyd.regulatory-assistance"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100017818(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connection interrupted for pid: %d", v6, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleXPCDisconnection];
  }
}

void sub_1000178F4(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connection invalidated for pid: %d", v6, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleXPCDisconnection];
  }
}

void sub_100017AEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 && (*(a3 + 24) & 1) != 0)
  {
    WORD1(v6) = *(a3 + 20);
    LOBYTE(v6) = *(a3 + 18);
    v7 = [[PRChipInfo alloc] initWithECID:*a3 chipID:*(a3 + 8) boardID:*(a3 + 10) bootMode:*(a3 + 12) prodMode:*(a3 + 16) secureMode:*(a3 + 17) securityDomain:v6 chipRevision:?];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

void sub_100017E00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;

  sub_100017E34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100017E34(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 96) == 1)
    {
      if (*(a1 + 95) < 0)
      {
        operator delete(*(a1 + 72));
      }

      if (*(a1 + 63) < 0)
      {
        operator delete(*(a1 + 40));
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_100018584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_100017E34(&a9);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100018608(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "    %@ : %@", &v8, 0x16u);
  }
}

void sub_1000186D8(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138477827;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{private}@", &v6, 0xCu);
  }
}

void sub_100018784(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
  }
}

void sub_10001906C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100019280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000195BC()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_100019608(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100019668(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1000196B0(uint64_t a1)
{
  sub_1000197C8(a1 + 712);
  std::mutex::~mutex((a1 + 648));
  std::mutex::~mutex((a1 + 584));
  if (*(a1 + 568) == 1)
  {
    v7 = (a1 + 544);
    sub_100019848(&v7);
    if (*(a1 + 528) == 1)
    {
      v2 = *(a1 + 504);
      if (v2)
      {
        *(a1 + 512) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 464) == 1)
    {
      v3 = *(a1 + 440);
      if (v3)
      {
        *(a1 + 448) = v3;
        operator delete(v3);
      }
    }

    if (*(a1 + 400) == 1)
    {
      v4 = *(a1 + 376);
      if (v4)
      {
        *(a1 + 384) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 336) == 1)
    {
      v5 = *(a1 + 312);
      if (v5)
      {
        *(a1 + 320) = v5;
        operator delete(v5);
      }
    }
  }

  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 96) == 1)
    {
      if (*(a1 + 95) < 0)
      {
        operator delete(*(a1 + 72));
      }

      if (*(a1 + 63) < 0)
      {
        operator delete(*(a1 + 40));
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_1000197C8(uint64_t a1)
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

void sub_100019848(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10001989C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10001989C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
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

_BYTE *sub_1000198EC(_BYTE *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[112] = 0;
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_1000056BC(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    *(__dst + 6) = *(a2 + 6);
    sub_1000199E0((__dst + 32), a2 + 8);
    *(__dst + 13) = *(a2 + 13);
    __dst[112] = 1;
  }

  return __dst;
}

void sub_100019974(_Unwind_Exception *exception_object)
{
  if (*(v1 + 112) == 1)
  {
    sub_100019608(v1);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *sub_1000199AC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_1000199E0(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v4 = *a2;
    *(a1 + 4) = *(a2 + 2);
    *a1 = v4;
    if (*(a2 + 31) < 0)
    {
      sub_1000056BC((a1 + 8), *(a2 + 1), *(a2 + 2));
    }

    else
    {
      v5 = *(a2 + 2);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 8) = v5;
    }

    *(a1 + 32) = *(a2 + 4);
    if (*(a2 + 63) < 0)
    {
      sub_1000056BC((a1 + 40), *(a2 + 5), *(a2 + 6));
    }

    else
    {
      v6 = *(a2 + 10);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 40) = v6;
    }

    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_100019A8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  if (*(v1 + 64) == 1)
  {
    sub_100019668(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100019AC4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100013050(result, a4);
  }

  return result;
}

void sub_100019B1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100019B50()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_100019C00()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100019CB0()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100019D60()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100019E10()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100019EC0()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100019F70()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_10001A020()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_10001A0D0()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100548B78;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_10001A1C4()
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
  qword_1009EC510 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009EC500 = v4;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC500, &_mh_execute_header);
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
  qword_1009EC528 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009EC518 = v8;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC518, &_mh_execute_header);
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
  qword_1009EC540 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009EC530 = v12;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC530, &_mh_execute_header);
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
  qword_1009EC558 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009EC548 = v16;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC548, &_mh_execute_header);
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
  qword_1009EC570 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009EC560 = v20;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC560, &_mh_execute_header);
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
  qword_1009EC588 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009EC578 = v24;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC578, &_mh_execute_header);
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
  qword_1009EC5A0 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009EC590 = v28;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC590, &_mh_execute_header);
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
  qword_1009EC5B8 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009EC5A8 = v32;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC5A8, &_mh_execute_header);
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
  qword_1009EC5D0 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009EC5C0 = v36;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC5C0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10001A804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10001AE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10001AFB8(id a1)
{
  v1 = [[NIServerGRResponderRangingService alloc] _initInternal];
  v2 = qword_1009EC6B0;
  qword_1009EC6B0 = v1;
}

char *sub_10001B1BC(uint64_t a1)
{
  v1 = [*(a1 + 32) _internalPrintableState];
  v2 = sub_10003FA2C(@"GR Responder Home Service", v1);

  return v2;
}

uint64_t sub_10001B430(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 50) = *(a2 + 50);
  *(result + 48) = v2;
  return result;
}

void sub_10001B448(uint64_t a1)
{
  sub_100004A08(v47, [*(a1 + 32) UTF8String]);
  if (!sub_100021574((*(a1 + 40) + 56), v47))
  {
    v2 = [[NIServerGRResponderRangingServiceClient alloc] initWithClientIdentifier:*(a1 + 32) clientQueue:*(a1 + 48) delegate:*(a1 + 56)];
    v3 = *(a1 + 40);
    *buf = v47;
    v4 = sub_100022718((v3 + 56), v47);
    v5 = v4[5];
    v4[5] = v2;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = *(a1 + 40);
    *buf = [v6 u64Identifier];
    if (sub_100009BCC((v7 + 16), buf))
    {
      v8 = *(a1 + 40);
      *v50 = [*(a1 + 64) u64Identifier];
      *buf = v50;
      v9 = sub_100022AD8((v8 + 16), v50)[3];
      if (SHIBYTE(v48) < 0)
      {
        sub_1000056BC(__p, v47[0], v47[1]);
      }

      else
      {
        *__p = *v47;
        v46 = v48;
      }

      [v9 setRate:__p forClient:0 shouldReplace:0.0];
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
      }

      v10 = *(a1 + 40);
      v11 = [v9 gr_session_ticket_id];
      if (v10)
      {
        [(std::__shared_weak_count *)v10 _getSession:v11];
        v12 = *buf;
        v10 = *&buf[8];
      }

      else
      {
        v12 = 0;
      }

      v13 = qword_1009F9820;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 64) u64Identifier];
        *buf = 134217984;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,getSessionTicketForDevice Already have GR session for address: %llu already exsitis, reused", buf, 0xCu);
      }

      if (v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0;
    }

    v23 = *(a1 + 40);
    if (v23)
    {
      [v23 _prepareServiceRequestWithDevice:*(a1 + 64)];
      if (v54)
      {
        v24 = *(a1 + 40);
        v25 = [*(a1 + 64) u64Identifier];
        if (v24)
        {
          [v24 _buildGRSession:buf forDevice:v25];
          v12 = *v50;
          v26 = *&v50[8];
        }

        else
        {
          v26 = 0;
          v12 = 0;
        }

        *v50 = 0;
        *&v50[8] = 0;
        if (v10)
        {
          sub_10000AD84(v10);
          if (*&v50[8])
          {
            sub_10000AD84(*&v50[8]);
          }
        }

        if (v12 && (v27 = *(v12 + 752), (v27 & 0x10000) != 0))
        {
          v29 = *(a1 + 40);
          BYTE2(v49) = BYTE2(*(v12 + 752));
          LOWORD(v49) = v27;
          *v50 = &v49;
          v30 = sub_100022D80((v29 + 96), &v49);
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v31 = v30[4];
          v30[3] = v12;
          v30[4] = v26;
          if (v31)
          {
            sub_10000AD84(v31);
          }

          v32 = [SessionBTDevice alloc];
          v33 = [*(a1 + 64) u64Identifier];
          v34 = *(v12 + 752);
          if ((v34 & 0x10000) == 0)
          {
            sub_1000195BC();
          }

          v35 = v33;
          if (SHIBYTE(v48) < 0)
          {
            sub_1000056BC(__dst, v47[0], v47[1]);
          }

          else
          {
            *__dst = *v47;
            v43 = v48;
          }

          v44 = [(SessionBTDevice *)v32 initWithUWBAddr:v35 ticketID:v34 clientId:__dst throttleRate:0.0];
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__dst[0]);
          }

          v36 = *(a1 + 40);
          v41 = [*(a1 + 64) u64Identifier];
          *v50 = &v41;
          v49 = &v44;
          sub_100023038((v36 + 16), &v41);
          v37 = qword_1009F9820;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [*(a1 + 64) u64Identifier];
            v39 = v47;
            if (v48 < 0)
            {
              v39 = v47[0];
            }

            v40 = *(*(a1 + 40) + 40);
            *v50 = 134218498;
            *&v50[4] = v38;
            *&v50[12] = 2080;
            *&v50[14] = v39;
            v51 = 2048;
            v52 = v40;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,getSessionTicketForDevice: Create a new GR session for address: %llu client Id: %s, deviceMap: %zu", v50, 0x20u);
          }

          v10 = v26;
        }

        else
        {
          v28 = qword_1009F9820;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_100499D20(v47, v50, [*(a1 + 64) u64Identifier]);
          }

          v10 = v26;
          if (!v12)
          {
            goto LABEL_32;
          }
        }

LABEL_19:
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          if ((*(v12 + 752) & 0x10000) != 0)
          {
            v17 = *(v12 + 752);
          }

          else
          {
            v17 = 0xFFFF;
          }

          *buf = 138412546;
          *&buf[4] = v16;
          *&buf[12] = 1024;
          *&buf[14] = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,Client %@ add interested device list for ticket: %d", buf, 0x12u);
        }

        v18 = *(v12 + 752);
        v19 = *(*(a1 + 72) + 8);
        *(v19 + 50) = BYTE2(v18);
        *(v19 + 48) = v18;
        v20 = *(a1 + 40);
        *buf = v47;
        v21 = sub_100022718((v20 + 56), v47)[5];
        v22 = *(a1 + 40);
        v49 = [*(a1 + 64) u64Identifier];
        *buf = &v49;
        [v21 addInterestedDevice:sub_100022AD8((v22 + 16) withThrottleRate:{&v49)[3], 0.0}];
LABEL_32:
        if (v10)
        {
          sub_10000AD84(v10);
        }

        goto LABEL_34;
      }
    }

    else
    {
      bzero(buf, 0x248uLL);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_100499D6C();
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_100499DA0();
  }

LABEL_34:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }
}

void sub_10001BA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v31)
  {
    sub_10000AD84(v31);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10001BE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a16, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10001BE94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001BEAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 72);
  *buf = a1 + 72;
  if (sub_100022718((v2 + 56), (a1 + 72))[5])
  {
    v4 = *(a1 + 32);
    *buf = v3;
    v5 = sub_100022718((v4 + 56), v3)[5];
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) u64Identifier];
      v9 = [*(a1 + 56) u64Identifier];
      *buf = 138412802;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2048;
      *&buf[24] = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,Client %@ request range old device addr: %llu, new device addr: %llu", buf, 0x20u);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      [v10 _getSession:*(a1 + 208)];
      if (v48)
      {
        v11 = *(a1 + 32);
        *v52 = [*(a1 + 56) u64Identifier];
        if (sub_100009BCC((v11 + 16), v52) && (v12 = *(a1 + 32), v51[0] = [*(a1 + 56) u64Identifier], *buf = v51, (objc_msgSend(sub_100022AD8((v12 + 16), v51)[3], "isRunning") & 1) == 0))
        {
          v17 = sub_10034024C(v48, (a1 + 96));
          v18 = qword_1009F9820;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [*(a1 + 56) u64Identifier];
            *buf = 134218240;
            *&buf[4] = v19;
            *&buf[12] = 1024;
            *&buf[14] = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,triggerRangingForRoseSession: Start ranging for device uwb address: %llu, result: %d", buf, 0x12u);
          }

          if (v17)
          {
            v20 = qword_1009F9820;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100342F8C(v17, buf);
              sub_100499DD4(buf);
            }

            v21 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
            v22 = *(*(a1 + 64) + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = v21;
          }

          else
          {
            v25 = *(a1 + 32);
            *v52 = [*(a1 + 48) u64Identifier];
            *buf = v52;
            [sub_100022AD8((v25 + 16) v52)[3]];
            v26 = [*(a1 + 56) u64Identifier];
            v27 = *(a1 + 32);
            *v52 = [*(a1 + 48) u64Identifier];
            *buf = v52;
            [sub_100022AD8((v27 + 16) v52)[3]];
          }
        }

        else if (*(a1 + 210) == 1)
        {
          v13 = *(a1 + 32);
          *buf = [*(a1 + 48) u64Identifier];
          if (!sub_100009BCC((v13 + 16), buf))
          {
            v16 = qword_1009F9820;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [*(a1 + 48) u64Identifier];
              *buf = 134217984;
              *&buf[4] = v24;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,Re-Start ranging failure, since can't get record for old device uwb address: %llu, return", buf, 0xCu);
            }

            goto LABEL_25;
          }

          v50 = [*(a1 + 56) u64Identifier];
          v14 = sub_100009BCC((*(a1 + 32) + 16), &v50);
          v15 = *(a1 + 32);
          if (v14)
          {
            *v52 = [*(a1 + 56) u64Identifier];
            *buf = v52;
            v16 = sub_100022AD8((v15 + 16), v52)[3];
          }

          else
          {
            *v52 = [*(a1 + 48) u64Identifier];
            *buf = v52;
            v28 = sub_100022AD8((v15 + 16), v52)[3];
            v16 = v28;
            v29 = sub_100005288();
            if (v16)
            {
              [v16 queued_address];
              v30 = *&buf[16];
              while (v30)
              {
                if (v29 - *(v30 + 24) <= 3600.0)
                {
                  v30 = *v30;
                }

                else
                {
                  sub_1000232B4((*(a1 + 32) + 16), (v30 + 16));
                  v30 = sub_1000223BC(buf, v30);
                }
              }
            }

            else
            {
              v54 = 0;
              memset(buf, 0, sizeof(buf));
            }

            if (!sub_100009BCC(buf, &v50))
            {
              v31 = *(a1 + 32);
              *v52 = &v50;
              v32 = sub_100023300((v31 + 16), &v50);
              objc_storeStrong(v32 + 3, v28);
            }

            *v52 = &v50;
            *(sub_10002355C(buf, &v50) + 3) = v29;
            v33 = qword_1009F9820;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_100499E38([v16 gr_session_ticket_id], &v50, v52, v33);
            }

            sub_100021914(buf);
          }

          v34 = [v16 currentRangingAddr];
          if (v34 == [*(a1 + 56) u64Identifier] && -[NSObject isRunning](v16, "isRunning"))
          {
            v35 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v50;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,triggerRangingForRoseSession NOT trigger startRanging again, since we are currently ranging with this rotated addr: %llu", buf, 0xCu);
            }

LABEL_25:

LABEL_54:
            if (v49)
            {
              sub_10000AD84(v49);
            }

            return;
          }

          v36 = sub_10034024C(v48, (a1 + 96));
          v37 = qword_1009F9820;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [*(a1 + 56) u64Identifier];
            v39 = *(*(a1 + 32) + 40);
            *buf = 134218496;
            *&buf[4] = v38;
            *&buf[12] = 1024;
            *&buf[14] = v36;
            *&buf[18] = 2048;
            *&buf[20] = v39;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,Re-Start ranging for device rotated uwb address: %llu, result: %d, device map size: %zu", buf, 0x1Cu);
          }

          if (v36)
          {
            v40 = qword_1009F9820;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_100342F8C(v36, buf);
              sub_100499E98(buf);
            }

            v41 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
            v42 = *(*(a1 + 64) + 8);
            v43 = *(v42 + 40);
            *(v42 + 40) = v41;
          }

          else
          {
            [v16 setIsRunning:1];
            v44 = [*(a1 + 56) u64Identifier];
            v45 = *(a1 + 32);
            v51[0] = [*(a1 + 48) u64Identifier];
            *buf = v51;
            [sub_100022AD8((v45 + 16) v51)[3]];
          }
        }

        v46 = *(a1 + 32);
        v47 = [*(a1 + 56) u64Identifier];
        v50 = &v47;
        [v5 addInterestedDevice:sub_100022AD8((v46 + 16) withThrottleRate:{&v47)[3], 0.0}];
        goto LABEL_54;
      }
    }

    else
    {
      v48 = 0;
      v49 = 0;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_100499EFC((a1 + 208));
    }

    goto LABEL_54;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_100499F6C();
  }
}

void sub_10001C6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_100021914(va);
  if (a5)
  {
    sub_10000AD84(a5);
  }

  _Unwind_Resume(a1);
}

char *sub_10001C7B4(char *result, uint64_t a2)
{
  if (*(a2 + 95) < 0)
  {
    return sub_1000056BC(result + 72, *(a2 + 72), *(a2 + 80));
  }

  v2 = *(a2 + 72);
  *(result + 11) = *(a2 + 88);
  *(result + 72) = v2;
  return result;
}

void sub_10001C7E0(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }
}

void sub_10001C8B4(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 58);
    *buf = 138412802;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    *&buf[22] = 1024;
    *&buf[24] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,stopRangingForRoseSession for client :%@, device address: %llu, sending hang up: %d", buf, 0x1Cu);
  }

  sub_100004A08(__p, [*(a1 + 32) UTF8String]);
  v6 = *(a1 + 40);
  *buf = __p;
  if (sub_100022718((v6 + 56), __p)[5])
  {
    v7 = *(a1 + 40);
    *buf = __p;
    v8 = sub_100022718((v7 + 56), __p)[5];
    v9 = (a1 + 56);
    if (([v8 isInterestedSession:*(a1 + 56)] & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_100499FA0(v9);
      }

      goto LABEL_45;
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      [v10 _getSession:*v9];
      if (v33)
      {
        v11 = (a1 + 48);
        v12 = sub_100009BCC((*(a1 + 40) + 16), (a1 + 48));
        v13 = qword_1009F9820;
        if (v12)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 58);
            v15 = *(a1 + 56);
            *buf = 67109376;
            *&buf[4] = v14;
            *&buf[8] = 1024;
            *&buf[10] = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,stopRangingForRoseSession should sendingHangUp ?: %d ticket: %hu", buf, 0xEu);
          }

          v16 = *(a1 + 40);
          *buf = a1 + 48;
          if ([v8 removeInterestedDevice:sub_100023300((v16 + 16) ticketId:{(a1 + 48))[3], *v9}])
          {
            if (*(a1 + 58) == 1)
            {
              v17 = *(a1 + 40);
              v31 = v33;
              v32 = v34;
              if (v34)
              {
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              [v17 _sendHangupSignalForSession:&v31];
              if (v32)
              {
                sub_10000AD84(v32);
              }
            }

            v18 = *(a1 + 40);
            *buf = a1 + 48;
            v19 = sub_100023300((v18 + 16), (a1 + 48))[3];
            v20 = v19;
            if (v19)
            {
              [v19 queued_address];
              v21 = *&buf[16];
              if (*&buf[16])
              {
                do
                {
                  if (sub_100009BCC((*(a1 + 40) + 16), v21 + 2))
                  {
                    sub_1000232B4((*(a1 + 40) + 16), v21 + 2);
                  }

                  v21 = *v21;
                }

                while (v21);
              }
            }

            else
            {
              v42 = 0;
              memset(buf, 0, sizeof(buf));
            }

            sub_100022400(buf);
            v25 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(a1 + 48);
              v27 = *(*(a1 + 40) + 40);
              *v37 = 134218240;
              v38 = v26;
              v39 = 2048;
              v40 = v27;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,stop range and remove this device: %llu since no client ranging to it device map size: %zu", v37, 0x16u);
            }

            sub_10033B864(v33);
            sub_10002378C((*(a1 + 40) + 96), (a1 + 56));
            v28 = v34;
            v33 = 0;
            v34 = 0;
            if (v28)
            {
              sub_10000AD84(v28);
            }

            sub_100021914(buf);
          }

          else
          {
            v22 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,Not stop range and check update throttle if needed", buf, 2u);
            }

            v23 = *(a1 + 40);
            *buf = v11;
            v24 = sub_100023300(v23 + 2, v11)[3];
            v29 = v33;
            v30 = v34;
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            [v23 _updateThrottleRateForDevice:v24 session:&v29 ticketId:*v9];
            if (v30)
            {
              sub_10000AD84(v30);
            }
          }
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049A010((a1 + 48));
        }

LABEL_43:
        if (v34)
        {
          sub_10000AD84(v34);
        }

LABEL_45:

        goto LABEL_46;
      }
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049A088(v9);
    }

    goto LABEL_43;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049A0F8();
  }

LABEL_46:
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10001CD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a12)
  {
    sub_10000AD84(a12);
  }

  if (a14)
  {
    sub_10000AD84(a14);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10001CF04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 _getSession:*(a1 + 60)];
    if (v19)
    {
      if (sub_10033D950(v19) == *(a1 + 56))
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049A1C8((a1 + 56));
        }
      }

      else
      {
        sub_100004A08(v17, [*(a1 + 40) UTF8String]);
        if (sub_100021574((*(a1 + 32) + 56), v17))
        {
          v3 = *(a1 + 32);
          v21 = v17;
          v4 = sub_100022718((v3 + 56), v17)[5];
          v5 = v4;
          if (v4)
          {
            if ([v4 isInterestedSession:*(a1 + 60)])
            {
              v6 = *(a1 + 32);
              v15 = v19;
              v16 = v20;
              if (v20)
              {
                atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v7 = [v6 _getDevice:&v15];
              if (v16)
              {
                sub_10000AD84(v16);
              }

              if (v7)
              {
                v8 = *(a1 + 56);
                if (SHIBYTE(v18) < 0)
                {
                  sub_1000056BC(__p, v17[0], v17[1]);
                }

                else
                {
                  HIDWORD(v9) = HIDWORD(v17[0]);
                  *__p = *v17;
                  v14 = v18;
                }

                LODWORD(v9) = v8;
                [v7 setRate:__p forClient:1 shouldReplace:v9];
                if (SHIBYTE(v14) < 0)
                {
                  operator delete(__p[0]);
                }

                v10 = *(a1 + 32);
                v11 = v19;
                v12 = v20;
                if (v20)
                {
                  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                *(*(*(a1 + 48) + 8) + 24) = [v10 _updateThrottleRateForDevice:v7 session:&v11 ticketId:*(a1 + 60)];
                if (v12)
                {
                  sub_10000AD84(v12);
                }
              }

              else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_10049A160();
              }
            }

            else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_10049A12C();
            }
          }

          else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049A194();
          }
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049A0F8();
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }
      }

      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049A244((a1 + 60));
  }

LABEL_9:
  if (v20)
  {
    sub_10000AD84(v20);
  }
}

void sub_10001D1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    sub_10000AD84(a26);
  }

  _Unwind_Resume(a1);
}

void sub_10001D2FC(uint64_t a1)
{
  v2 = (a1 + 32);
  sub_100004A08(__p, [*(a1 + 32) UTF8String]);
  if (sub_100021574((*(a1 + 40) + 56), __p))
  {
    v3 = *(a1 + 40);
    *buf = __p;
    v4 = sub_100022718((v3 + 56), __p)[5];
    [v4 clear];
    sub_100023810((*(a1 + 40) + 56), __p);
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v2;
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,removeServiceClient: remove %@. ", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    if (!*(v7 + 80))
    {
      v8 = *(v7 + 32);
      if (v8)
      {
        do
        {
          v12 = [v8[3] gr_session_ticket_id];
          if (sub_1000222CC((*(a1 + 40) + 96), &v12))
          {
            v9 = *(a1 + 40);
            *buf = &v12;
            v10 = sub_10002385C((v9 + 96), &v12);
            sub_10033B864(v10[3]);
            sub_10002378C((*(a1 + 40) + 96), &v12);
          }

          [v8[3] clear];
          v8 = *v8;
        }

        while (v8);
        v7 = *(a1 + 40);
      }

      sub_100023AB4(v7 + 16);
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,Clear all session since no client.", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049A2B4(v2);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10001D53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001D664(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrintableState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10001DC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_10000AD84(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10001E184(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_35;
  }

  if (![v1 hasPrefix:@"AudioAccessory"])
  {
    if ([v2 hasPrefix:@"iPhone"])
    {
      v10 = 0;
      v9 = 0;
      v3 = 999;
      if (sscanf([v2 UTF8String], "iPhone%d,%d", &v10, &v9) < 2)
      {
        goto LABEL_36;
      }

      if (v10 <= 14)
      {
        if (v10 == 12)
        {
          v4 = v9 - 1;
          if ((v9 - 1) >= 5)
          {
            goto LABEL_36;
          }

          v5 = &unk_1005493EC;
          goto LABEL_42;
        }

        if (v10 != 13)
        {
          if (v10 != 14)
          {
            goto LABEL_36;
          }

          v4 = v9 - 2;
          if ((v9 - 2) >= 7)
          {
            goto LABEL_36;
          }

          v5 = &unk_100549400;
LABEL_42:
          v3 = v5[v4];
          goto LABEL_36;
        }

        v6 = v9 - 1;
        v7 = v9 + 2;
      }

      else if (v10 > 16)
      {
        if (v10 == 17)
        {
          v4 = v9 - 1;
          if ((v9 - 1) >= 4)
          {
            goto LABEL_36;
          }

          v5 = &unk_100548C10;
          goto LABEL_42;
        }

        if (v10 != 18)
        {
          goto LABEL_36;
        }

        v6 = v9 - 1;
        v7 = v9 + 23;
      }

      else
      {
        if (v10 != 15)
        {
          v4 = v9 - 1;
          if ((v9 - 1) >= 3)
          {
            goto LABEL_36;
          }

          v5 = &unk_10054941C;
          goto LABEL_42;
        }

        v6 = v9 - 2;
        v7 = v9 + 11;
      }

      if (v6 >= 4)
      {
        v3 = 999;
      }

      else
      {
        v3 = v7;
      }

      goto LABEL_36;
    }

    if ([v2 hasPrefix:@"Watch"])
    {
      v10 = 0;
      v9 = 0;
      if (sscanf([v2 UTF8String], "Watch%d,%d", &v10, &v9) >= 2)
      {
        if (v10 == 7)
        {
          v4 = v9 - 1;
          if ((v9 - 1) < 0x10)
          {
            v5 = &unk_100549470;
            goto LABEL_42;
          }
        }

        else if (v10 == 6)
        {
          v4 = v9 - 1;
          if ((v9 - 1) < 0x12)
          {
            v5 = &unk_100549428;
            goto LABEL_42;
          }
        }
      }
    }

LABEL_35:
    v3 = 999;
    goto LABEL_36;
  }

  v10 = 0;
  v9 = 0;
  v3 = 999;
  if (sscanf([v2 UTF8String], "AudioAccessory%d,%d", &v10, &v9) >= 2)
  {
    if (v10 == 6)
    {
      if (v9 == 1)
      {
        v3 = 201;
      }

      else
      {
        v3 = 999;
      }
    }

    else if (v10 == 5)
    {
      if (v9 == 1)
      {
        v3 = 200;
      }

      else
      {
        v3 = 999;
      }
    }
  }

LABEL_36:

  return v3;
}

void sub_10001E75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001EA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  sub_10001EEE4(v11 + 32);
  if (a11)
  {
    sub_10000AD84(a11);
  }

  sub_10001EEE4(&STACK[0x6D0]);
  _Unwind_Resume(a1);
}

void sub_10001EB00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10001ED4C;
    block[3] = &unk_10098A338;
    v9 = v5;
    v7 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = v7;
    v12 = *(a1 + 64);
    sub_100020458(&v13, a1 + 80);
    sub_1000206E0(v19, a1 + 640);
    sub_1000207A0(&v22, (a1 + 792));
    memcpy(v26, (a1 + 912), sizeof(v26));
    sub_10002096C(&v27, (a1 + 1488));
    dispatch_async(v6, block);
    if (v30 == 1 && __p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v25 == 1 && v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (v21 == 1)
    {
      sub_10002074C(v20, v20[1]);
    }

    if (v18 == 1)
    {
      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }
    }
  }
}

void sub_10001ECC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (LOBYTE(STACK[0x398]) == 1)
  {
    v18 = STACK[0x370];
    if (STACK[0x370])
    {
      STACK[0x378] = v18;
      operator delete(v18);
    }
  }

  if (LOBYTE(STACK[0x320]) == 1)
  {
    sub_10002074C(&STACK[0x2A0], STACK[0x2A8]);
  }

  sub_100020B80(v16 + 88);

  _Unwind_Resume(a1);
}

uint64_t sub_10001ED5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  sub_100020458(a1 + 88, a2 + 88);
  sub_1000206E0((a1 + 648), a2 + 648);
  sub_1000207A0(a1 + 800, (a2 + 800));
  memcpy((a1 + 920), (a2 + 920), 0x239uLL);
  return sub_10002096C(a1 + 1496, (a2 + 1496));
}

void sub_10001EDD8(_Unwind_Exception *a1)
{
  if (*(v1 + 912) == 1)
  {
    v3 = *(v1 + 872);
    if (v3)
    {
      *(v1 + 880) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 792) == 1)
  {
    sub_10002074C(v1 + 664, *(v1 + 672));
  }

  sub_100020B80(v1 + 88);
  _Unwind_Resume(a1);
}

void sub_10001EE30(uint64_t a1)
{
  if (*(a1 + 1720) == 1)
  {
    v2 = *(a1 + 1696);
    if (v2)
    {
      *(a1 + 1704) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 912) == 1)
  {
    v3 = *(a1 + 872);
    if (v3)
    {
      *(a1 + 880) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 792) == 1)
  {
    sub_10002074C(a1 + 664, *(a1 + 672));
  }

  if (*(a1 + 640) == 1)
  {
    v4 = *(a1 + 224);
    if (v4)
    {
      *(a1 + 232) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 160);
    if (v5)
    {
      *(a1 + 168) = v5;

      operator delete(v5);
    }
  }
}

uint64_t sub_10001EEE4(uint64_t a1)
{
  if (*(a1 + 1680) == 1)
  {
    v2 = *(a1 + 1656);
    if (v2)
    {
      *(a1 + 1664) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 872) == 1)
  {
    v3 = *(a1 + 832);
    if (v3)
    {
      *(a1 + 840) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 752) == 1)
  {
    sub_10002074C(a1 + 624, *(a1 + 632));
  }

  if (*(a1 + 600) == 1)
  {
    v4 = *(a1 + 184);
    if (v4)
    {
      *(a1 + 192) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 120);
    if (v5)
    {
      *(a1 + 128) = v5;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_10001EF84(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 32) = v4;
  sub_100020458(a1 + 80, a2 + 80);
  sub_1000206E0((a1 + 640), a2 + 640);
  sub_1000207A0(a1 + 792, (a2 + 792));
  memcpy((a1 + 912), (a2 + 912), 0x239uLL);
  return sub_10002096C(a1 + 1488, (a2 + 1488));
}

void sub_10001EFF8(_Unwind_Exception *a1)
{
  if (*(v1 + 904) == 1)
  {
    v3 = *(v1 + 864);
    if (v3)
    {
      *(v1 + 872) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 784) == 1)
  {
    sub_10002074C(v1 + 656, *(v1 + 664));
  }

  sub_100020B80(v1 + 80);
  _Unwind_Resume(a1);
}

void sub_10001F050(uint64_t a1)
{
  if (*(a1 + 1712) == 1)
  {
    v2 = *(a1 + 1688);
    if (v2)
    {
      *(a1 + 1696) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 904) == 1)
  {
    v3 = *(a1 + 864);
    if (v3)
    {
      *(a1 + 872) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 784) == 1)
  {
    sub_10002074C(a1 + 656, *(a1 + 664));
  }

  if (*(a1 + 632) == 1)
  {
    v4 = *(a1 + 216);
    if (v4)
    {
      *(a1 + 224) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 152);
    if (v5)
    {
      *(a1 + 160) = v5;

      operator delete(v5);
    }
  }
}

void sub_10001F228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_10000AD84(a20);
  }

  v22 = *(v20 - 72);
  if (v22)
  {
    *(v20 - 64) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001F268(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10001F384;
    block[3] = &unk_10098A3A0;
    v8 = v5;
    v9 = *(a1 + 32);
    v11 = 0;
    v12 = 0;
    __p = 0;
    sub_100009A48(&__p, *(a1 + 40), *(a1 + 48), *(a1 + 48) - *(a1 + 40));
    v13 = *(a1 + 64);
    dispatch_async(v6, block);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }
}

__n128 sub_10001F394(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 48) = 0;
  v4 = a1 + 48;
  *(a1 + 40) = v3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_100009A48(a1 + 48, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
  result = *(a2 + 72);
  *(v4 + 24) = result;
  return result;
}

void sub_10001F3E4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_10001F3FC(uint64_t a1, __n128 *a2)
{
  v3 = a2[2].n128_u16[0];
  *(a1 + 40) = 0;
  v4 = a1 + 40;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_100009A48(a1 + 40, a2[2].n128_i64[1], a2[3].n128_i64[0], a2[3].n128_u64[0] - a2[2].n128_u64[1]);
  result = a2[4];
  *(v4 + 24) = result;
  return result;
}

void sub_10001F44C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_10001F504(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001F51C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F5FC;
    block[3] = &unk_10098A408;
    v7 = v5;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v12 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void sub_10001F724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_10000AD84(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001F74C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001F828;
    v7[3] = &unk_10098A450;
    v8 = v5;
    v9 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

id sub_10001F828(uint64_t a1)
{
  if ((*(a1 + 46) & 1) == 0)
  {
    sub_1000195BC();
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  v4 = *(a1 + 32);

  return [v4 responderSessionDidInvalidatedWithReason:v2 serviceTicketId:v3];
}

void sub_10001F958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a36)
  {
    sub_10000AD84(a36);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001F970(_OWORD *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001FA8C;
    block[3] = &unk_10098A498;
    v7 = v5;
    v8 = a1[8];
    v23 = a1[9];
    v9 = a1[11];
    v24 = a1[10];
    v25 = v9;
    v26 = a1[12];
    v10 = a1[4];
    v11 = a1[6];
    v12 = a1[7];
    v19 = a1[5];
    v20 = v11;
    v21 = v12;
    v22 = v8;
    v13 = a1[3];
    v16 = a1[2];
    v17 = v13;
    v15 = v7;
    v18 = v10;
    dispatch_async(v6, block);
  }
}

void sub_10001FBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20)
{
  if (a18)
  {
    sub_10000AD84(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001FC00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001FCEC;
    v7[3] = &unk_10098A4E0;
    v8 = v5;
    v9 = *(a1 + 32);
    v10 = *(a1 + 36);
    v11 = *(a1 + 44);
    dispatch_async(v6, v7);
  }
}

id sub_10001FCEC(uint64_t a1, double a2, double a3)
{
  if ((*(a1 + 58) & 1) == 0)
  {
    sub_1000195BC();
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  LODWORD(a2) = *(a1 + 44);
  LODWORD(a3) = *(a1 + 48);
  v6 = *(a1 + 52);
  v7 = *(a1 + 32);

  return [v7 responderServiceTicketId:v4 didChangeRangingUpdateRate:v5 newThrottleRate:v6 prevThrottleRate:a2 effectiveSinceCycleInde:a3];
}

uint64_t sub_100020458(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 552) = 0;
  if (*(a2 + 552) == 1)
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
  }

  return a1;
}

void sub_10002053C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  if (*(v1 + 552) == 1)
  {
    sub_10002069C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100020574(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000205F0(result, a4);
  }

  return result;
}

void sub_1000205D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000205F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_100020640(a1, a2);
  }

  sub_100019B38();
}

void sub_100020640(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013B04();
}

void *sub_10002069C(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  return a1;
}

_BYTE *sub_1000206E0(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[144] = 0;
  if (*(a2 + 144) == 1)
  {
    sub_100498E54(a1);
    a1[144] = 1;
  }

  return a1;
}

void sub_100020728(_Unwind_Exception *exception_object)
{
  if (*(v1 + 144) == 1)
  {
    sub_10002074C(v1 + 16, *(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_10002074C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10002074C(a1, *a2);
    sub_10002074C(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_1000207A0(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    v4 = *a2;
    *(a1 + 8) = *(a2 + 4);
    *a1 = v4;
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *(a2 + 3);
    LODWORD(v4) = *(a2 + 16);
    *(a1 + 72) = 0;
    *(a1 + 64) = v4;
    *(a1 + 48) = v7;
    *(a1 + 32) = v6;
    *(a1 + 16) = v5;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    sub_10002086C(a1 + 72, a2[9], a2[10], (a2[10] - a2[9]) >> 4);
    *(a1 + 96) = *(a2 + 6);
    *(a1 + 112) = 1;
  }

  return a1;
}

void sub_100020844(_Unwind_Exception *exception_object)
{
  if (*(v1 + 112) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 80) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002086C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000208E8(result, a4);
  }

  return result;
}

void sub_1000208CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000208E8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100020924(a1, a2);
  }

  sub_100019B38();
}

void sub_100020924(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10002096C(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    v3 = *a2;
    *(a1 + 10) = *(a2 + 10);
    *a1 = v3;
    v4 = a2[10];
    v5 = a2[11];
    v6 = *(a2 + 192);
    v7 = a2[6];
    v8 = a2[7];
    v10 = a2[8];
    v9 = a2[9];
    v12 = a2[4];
    v11 = a2[5];
    v14 = a2[2];
    v13 = a2[3];
    *(a1 + 200) = 0;
    *(a1 + 32) = v14;
    *(a1 + 64) = v12;
    *(a1 + 48) = v13;
    *(a1 + 128) = v10;
    *(a1 + 112) = v8;
    *(a1 + 96) = v7;
    *(a1 + 80) = v11;
    *(a1 + 192) = v6;
    *(a1 + 176) = v5;
    *(a1 + 160) = v4;
    *(a1 + 144) = v9;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    sub_100020A60(a1 + 200, *(a2 + 25), *(a2 + 26), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 26) - *(a2 + 25)) >> 3));
    *(a1 + 224) = 1;
  }

  return a1;
}

void sub_100020A38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 224) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 208) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100020A60(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100020ADC(result, a4);
  }

  return result;
}

void sub_100020AC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100020ADC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    sub_100020B28(a1, a2);
  }

  sub_100019B38();
}

void sub_100020B28(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100020B80(uint64_t a1)
{
  if (*(a1 + 552) == 1)
  {
    v2 = *(a1 + 136);
    if (v2)
    {
      *(a1 + 144) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      *(a1 + 80) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

void *sub_100020BD0(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100020E18(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100020F08(a1, prime);
    }
  }
}

void sub_100020F08(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100013B04();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

const void **sub_10002106C(void *a1, const void **a2)
{
  v4 = sub_100014630(a1, a2);
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
    sub_1000212E4();
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

  if (!sub_1000143B0(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1000212C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_100021510(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100021388(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100021510(v3, v2);
  _Unwind_Resume(a1);
}

unint64_t sub_1000213A4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_100021450(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void sub_100021510(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **sub_100021574(void *a1, const void **a2)
{
  v4 = sub_100014630(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_1000143B0(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_100021670(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_100020E18(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1000216E8(a1, i + 2);
  }

  return a1;
}

void *sub_1000216E8(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_100021914(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_100021960(void *a1, const void **a2)
{
  result = sub_100021998(a1, a2);
  if (result)
  {
    sub_100021A94(a1, result);
    return 1;
  }

  return result;
}

const void **sub_100021998(void *a1, const void **a2)
{
  v4 = sub_100014630(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_1000143B0(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_100021A94(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100021AE0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_100021510(&v6, v3);
  }

  return v2;
}

void *sub_100021AE0@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t sub_100021C1C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_100020E18(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_100021C94(a1, i + 2);
  }

  return a1;
}

const void **sub_100021C94(void *a1, const void **a2)
{
  v4 = sub_100014630(a1, a2);
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
    sub_100021EF4();
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

  if (!sub_1000143B0(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100021ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_100021510(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100021F98(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100021510(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100021FB4(uint64_t a1)
{
  sub_100021FF0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100021FF0(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
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

void sub_10002203C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100021FF0(a1, *(a1 + 16));
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

uint64_t **sub_100022098(void *a1, unsigned __int16 *a2)
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

uint64_t **sub_1000222CC(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_100022384(void *a1, unsigned __int16 *a2)
{
  result = sub_1000222CC(a1, a2);
  if (result)
  {
    sub_1000223BC(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_1000223BC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100021AE0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_100022400(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t sub_10002246C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_100020E18(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1000224E4(a1, i + 8);
  }

  return a1;
}

uint64_t **sub_1000224E4(void *a1, unsigned __int16 *a2)
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

const void **sub_100022718(void *a1, const void **a2)
{
  v4 = sub_100014630(a1, a2);
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
    sub_10002298C();
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

  if (!sub_1000143B0(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100022978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100022A3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100022A3C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100022A88(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_100022A88(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *sub_100022AD8(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100022D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100022D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100022D34(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_100022D80(void *a1, unsigned __int16 *a2)
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

void sub_100022FD8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_10000AD84(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_100023038(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1000232A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100022D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000232B4(void *a1, unint64_t *a2)
{
  result = sub_100009978(a1, a2);
  if (result)
  {
    sub_100021AE0(a1, result, v4);
    sub_100022D34(v4);
    return 1;
  }

  return result;
}

void *sub_100023300(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100023548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100022D34(va);
  _Unwind_Resume(a1);
}

void *sub_10002355C(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_10002378C(void *a1, unsigned __int16 *a2)
{
  result = sub_1000222CC(a1, a2);
  if (result)
  {
    sub_1000237C4(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_1000237C4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100021AE0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_100022FD8(&v6, v3);
  }

  return v2;
}

const void **sub_100023810(void *a1, const void **a2)
{
  result = sub_100021998(a1, a2);
  if (result)
  {
    sub_100021AE0(a1, result, v4);
    sub_100022A3C(v4);
    return 1;
  }

  return result;
}

uint64_t **sub_10002385C(void *a1, unsigned __int16 *a2)
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

void sub_100023AB4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100023B10(a1, *(a1 + 16));
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

void sub_100023B10(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_100023B54(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = *(a2 + 3);
  return __dst;
}

uint64_t sub_100023BB0(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100023C0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10098A530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100023CB4(uint64_t a1)
{

  operator delete();
}

id sub_100023D68(uint64_t a1, void *a2)
{
  *a2 = off_10098A580;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100023DB8(id *a1)
{

  operator delete(a1);
}

void sub_100023DF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  v7 = *(a1 + 8);
  v8 = *a3;
  v9 = *(a3 + 2);
  v10 = v6;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v7 _serviceRequestDidUpdateStatus:v8 session:{v9, &v10}];
  if (v11)
  {
    sub_10000AD84(v11);
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100023E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  if (v10)
  {
    sub_10000AD84(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100023EA8(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10098A5F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100023EF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_100023F74(uint64_t a1)
{

  operator delete();
}

id sub_100024028(uint64_t a1, void *a2)
{
  *a2 = off_10098A610;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100024078(id *a1)
{

  operator delete(a1);
}

void sub_1000240B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  v7 = *(a1 + 8);
  v8 = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v7 _didReceiveNewSolution:a3 session:&v8];
  if (v9)
  {
    sub_10000AD84(v9);
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100024138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  if (v10)
  {
    sub_10000AD84(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100024164(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10098A680))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000241DC(uint64_t a1)
{

  operator delete();
}

id sub_100024290(uint64_t a1, void *a2)
{
  *a2 = off_10098A6A0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1000242E0(id *a1)
{

  operator delete(a1);
}

void sub_10002431C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  v7 = *(a1 + 8);
  v8 = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v7 _didReceiveRemoteData:a3 session:&v8];
  if (v9)
  {
    sub_10000AD84(v9);
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_1000243A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  if (v10)
  {
    sub_10000AD84(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000243CC(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10098A710))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100024444(uint64_t a1)
{

  operator delete();
}

id sub_1000244F8(uint64_t a1, void *a2)
{
  *a2 = off_10098A730;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100024548(id *a1)
{

  operator delete(a1);
}

void sub_100024584(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  v7 = *(a1 + 8);
  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v7 _sessionDidInvalidatedWithReason:v6 session:&v8];
  if (v9)
  {
    sub_10000AD84(v9);
  }

  if (v4)
  {
    sub_10000AD84(v4);
  }
}

void sub_100024608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  if (v10)
  {
    sub_10000AD84(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100024634(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10098A7A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000246AC(uint64_t a1)
{

  operator delete();
}

id sub_100024760(uint64_t a1, void *a2)
{
  *a2 = off_10098A7C0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1000247B0(id *a1)
{

  operator delete(a1);
}

void sub_1000247EC(uint64_t a1, uint64_t *a2, unsigned int *a3, int *a4, int *a5, unsigned int *a6)
{
  v8 = *a2;
  v7 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  v15 = *(a1 + 8);
  v16 = v8;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LODWORD(v13) = v10;
  LODWORD(v14) = v11;
  [v15 _roseSession:&v16 didChangeRangingUpdateRate:v9 newThrottleRate:v12 prevThrottleRate:v13 effectiveSinceCycleInde:v14];
  if (v17)
  {
    sub_10000AD84(v17);
  }

  if (v7)
  {
    sub_10000AD84(v7);
  }
}

void sub_100024898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  if (v10)
  {
    sub_10000AD84(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000248C4(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10098A830))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10002493C(uint64_t a1)
{

  operator delete();
}

id sub_1000249F0(uint64_t a1, void *a2)
{
  *a2 = off_10098A850;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100024A40(id *a1)
{

  operator delete(a1);
}

void sub_100024A7C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  v7 = *(a1 + 8);
  v8 = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v7 _didReceiveDeviceMotion:a3 session:&v8];
  if (v9)
  {
    sub_10000AD84(v9);
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100024B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  if (v10)
  {
    sub_10000AD84(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100024B2C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10098A8C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100024B7C(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_100024BBC(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

uint64_t sub_100024BF8(uint64_t a1)
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

uint64_t sub_100024C78(uint64_t a1)
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

uint64_t sub_100024CF8(uint64_t a1)
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

uint64_t sub_100024D78(uint64_t a1)
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

uint64_t sub_100024DF8(uint64_t a1)
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

uint64_t sub_100024E78(uint64_t a1)
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

uint64_t sub_100024EF8(uint64_t a1)
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

uint64_t sub_100024F78(uint64_t a1)
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

uint64_t sub_100024FF8(uint64_t a1)
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

void sub_100025078(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_10000AD84(v5);
      }
    }
  }
}

void *sub_100025100(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100009AC4(result, a2);
  }

  return result;
}

void sub_100025164(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100025180(uint64_t a1)
{
  sub_100023B10(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000251BC(uint64_t a1)
{
  sub_1000251F8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000251F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100022A88((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10002523C(uint64_t a1)
{
  sub_100025278(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100025278(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_10000AD84(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1000252CC()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_10002537C()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_10002542C()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_1000254DC()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_10002558C()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_10002563C()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_1000256EC()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_10002579C()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_10002584C()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100548C40;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100025940()
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
  qword_1009EC5E8 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009EC5D8 = v4;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC5D8, &_mh_execute_header);
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
  qword_1009EC600 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009EC5F0 = v8;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC5F0, &_mh_execute_header);
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
  qword_1009EC618 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009EC608 = v12;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC608, &_mh_execute_header);
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
  qword_1009EC630 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009EC620 = v16;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC620, &_mh_execute_header);
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
  qword_1009EC648 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009EC638 = v20;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC638, &_mh_execute_header);
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
  qword_1009EC660 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009EC650 = v24;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC650, &_mh_execute_header);
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
  qword_1009EC678 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009EC668 = v28;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC668, &_mh_execute_header);
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
  qword_1009EC690 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009EC680 = v32;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC680, &_mh_execute_header);
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
  qword_1009EC6A8 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009EC698 = v36;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009EC698, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}