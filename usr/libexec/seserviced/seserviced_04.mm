uint64_t sub_100078B44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = (*a4 + 56 * a3);
    v5 = result - a3;
LABEL_5:
    v20 = v4;
    v21 = a3;
    v6 = (v22 + 56 * a3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v12 = v6[4];
    v11 = v6[5];
    v13 = v6[6];
    v19 = v5;
    v23 = v5;
    while (1)
    {
      v14 = *(v4 - 7);
      v24 = *(v4 - 6);
      v30 = *(v4 - 5);
      v25 = *(v4 - 3);
      v26 = *(v4 - 4);
      v27 = *(v4 - 1);
      v28 = *(v4 - 2);

      sub_100069E2C(v8, v9);
      sub_100069E2C(v10, v12);
      sub_100069E2C(v11, v13);

      sub_100069E2C(v24, v30);
      sub_100069E2C(v26, v25);
      sub_100069E2C(v28, v27);
      v29 = static UUID.< infix(_:_:)();

      sub_10006A178(v24, v30);
      sub_10006A178(v26, v25);
      sub_10006A178(v28, v27);

      sub_10006A178(v8, v9);
      sub_10006A178(v10, v12);
      result = sub_10006A178(v11, v13);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v21 + 1;
        v4 = v20 + 7;
        v5 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v15 = *v4;
      v8 = v4[1];
      v9 = v4[2];
      v10 = v4[3];
      v12 = v4[4];
      v11 = v4[5];
      v13 = v4[6];
      v16 = *(v4 - 5);
      *v4 = *(v4 - 7);
      *(v4 + 1) = v16;
      *(v4 + 2) = *(v4 - 3);
      v4[6] = *(v4 - 1);
      *(v4 - 6) = v8;
      *(v4 - 5) = v9;
      *(v4 - 4) = v10;
      *(v4 - 3) = v12;
      *(v4 - 2) = v11;
      *(v4 - 1) = v13;
      *(v4 - 7) = v15;
      v4 -= 7;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100078D74(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v117 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_100079C78(v10);
      v10 = result;
    }

    v107 = v10;
    v108 = *(v10 + 16);
    if (v108 >= 2)
    {
      v10 = 56;
      while (1)
      {
        v109 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = *&v107[16 * v108];
        v110 = *&v107[16 * v108 + 24];
        sub_1000796FC((v109 + 56 * v7), (v109 + 56 * *&v107[16 * v108 + 16]), v109 + 56 * v110, v5);
        if (v6)
        {
        }

        if (v110 < v7)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_100079C78(v107);
        }

        if (v108 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v111 = &v107[16 * v108];
        *v111 = v7;
        *(v111 + 1) = v110;
        result = sub_100079BEC(v108 - 1);
        v108 = *(v107 + 2);
        v7 = a3;
        if (v108 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v9 + 1 >= v8)
    {
      v22 = v9 + 1;
    }

    else
    {
      v125 = v8;
      v113 = v10;
      v115 = v6;
      v11 = *v7 + 56 * (v9 + 1);
      v5 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = *(v11 + 40);
      v147 = *(v11 + 48);
      v149 = *(v11 + 32);
      v128 = 56 * v9;
      v16 = (*v7 + 56 * v9);
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[2];
      v138 = v16[3];
      v135 = v16[4];
      v144 = v16[5];
      v141 = v16[6];
      v118 = v9;

      sub_100069E2C(v12, v14);
      sub_100069E2C(v13, v149);
      sub_100069E2C(v15, v147);

      sub_100069E2C(v17, v19);
      sub_100069E2C(v138, v135);
      sub_100069E2C(v144, v141);
      v130 = static UUID.< infix(_:_:)();

      sub_10006A178(v17, v19);
      sub_10006A178(v138, v135);
      sub_10006A178(v144, v141);

      sub_10006A178(v12, v14);
      sub_10006A178(v13, v149);
      result = sub_10006A178(v15, v147);
      v20 = v9 + 2;
      v21 = v16 + 20;
      while (1)
      {
        v22 = v125;
        if (v125 == v20)
        {
          break;
        }

        v23 = *(v21 - 5);
        v24 = *(v21 - 4);
        v25 = *(v21 - 3);
        v148 = *(v21 - 2);
        v26 = *(v21 - 1);
        v146 = v26;
        v150 = *v21;
        v27 = *(v21 - 12);
        v28 = *(v21 - 11);
        v134 = *(v21 - 9);
        v136 = *(v21 - 10);
        v145 = *(v21 - 8);
        v139 = *(v21 - 7);
        v142 = *(v21 - 6);

        sub_100069E2C(v23, v24);
        sub_100069E2C(v25, v148);
        sub_100069E2C(v26, v150);

        sub_100069E2C(v27, v28);
        v5 = v136;
        sub_100069E2C(v136, v134);
        sub_100069E2C(v145, v139);
        v29 = static UUID.< infix(_:_:)() & 1;

        sub_10006A178(v27, v28);
        sub_10006A178(v136, v134);
        sub_10006A178(v145, v139);

        sub_10006A178(v23, v24);
        sub_10006A178(v25, v148);
        result = sub_10006A178(v146, v150);
        ++v20;
        v21 += 7;
        if ((v130 & 1) != v29)
        {
          v22 = v20 - 1;
          break;
        }
      }

      v10 = v113;
      v6 = v115;
      v9 = v118;
      v7 = a3;
      if (v130)
      {
        if (v22 < v118)
        {
          goto LABEL_118;
        }

        if (v118 < v22)
        {
          v30 = 56 * v22 - 56;
          v31 = v128 + 40;
          v32 = v22;
          v33 = v118;
          do
          {
            if (v33 != --v32)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = (v43 + v31);
              v35 = *(v43 + v31 - 40);
              v36 = v43 + v30;
              v37 = *(v34 - 2);
              v38 = *(v34 - 1);
              v39 = *v34;
              v41 = *(v36 + 16);
              v40 = *(v36 + 32);
              v42 = *(v36 + 48);
              *(v34 - 40) = *v36;
              *(v34 + 1) = v42;
              *(v34 - 8) = v40;
              *(v34 - 24) = v41;
              *v36 = v35;
              *(v36 + 8) = v37;
              *(v36 + 24) = v38;
              *(v36 + 40) = v39;
            }

            ++v33;
            v30 -= 56;
            v31 += 56;
          }

          while (v33 < v32);
        }
      }
    }

    v44 = *(v7 + 8);
    if (v22 < v44)
    {
      if (__OFSUB__(v22, v9))
      {
        goto LABEL_117;
      }

      if (v22 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v44)
        {
          v45 = *(v7 + 8);
        }

        else
        {
          v45 = v9 + a4;
        }

        if (v45 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v22 != v45)
        {
          break;
        }
      }
    }

    v46 = v22;
    if (v22 < v9)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100079C8C(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v48 = *(v10 + 16);
    v47 = *(v10 + 24);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_100079C8C((v47 > 1), v48 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v49;
    v50 = v10 + 16 * v48;
    *(v50 + 32) = v9;
    *(v50 + 40) = v46;
    v51 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    v121 = v46;
    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v10 + 32);
          v54 = *(v10 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_48:
          if (v56)
          {
            goto LABEL_105;
          }

          v69 = (v10 + 16 * v49);
          v71 = *v69;
          v70 = v69[1];
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_108;
          }

          v75 = (v10 + 32 + 16 * v52);
          v77 = *v75;
          v76 = v75[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_112;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v79 = (v10 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_62:
        if (v74)
        {
          goto LABEL_107;
        }

        v82 = v10 + 16 * v52;
        v84 = *(v82 + 32);
        v83 = *(v82 + 40);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_110;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_69:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v91 = *(v10 + 32 + 16 * v90);
        v5 = *(v10 + 32 + 16 * v52 + 8);
        sub_1000796FC((*v7 + 56 * v91), (*v7 + 56 * *(v10 + 32 + 16 * v52)), *v7 + 56 * v5, v51);
        if (v6)
        {
        }

        if (v5 < v91)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100079C78(v10);
        }

        if (v90 >= *(v10 + 16))
        {
          goto LABEL_102;
        }

        v92 = v10 + 16 * v90;
        *(v92 + 32) = v91;
        *(v92 + 40) = v5;
        result = sub_100079BEC(v52);
        v49 = *(v10 + 16);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = v10 + 32 + 16 * v49;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_103;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_104;
      }

      v64 = (v10 + 16 * v49);
      v66 = *v64;
      v65 = v64[1];
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_106;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_109;
      }

      if (v68 >= v60)
      {
        v86 = (v10 + 32 + 16 * v52);
        v88 = *v86;
        v87 = v86[1];
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_113;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v121;
    if (v121 >= v8)
    {
      goto LABEL_88;
    }
  }

  v114 = v10;
  v116 = v6;
  v127 = *v7;
  v93 = (*v7 + 56 * v22);
  v119 = v9;
  v94 = v9 - v22;
  v122 = v45;
LABEL_80:
  v124 = v93;
  v126 = v22;
  v95 = (v127 + 56 * v22);
  v96 = *v95;
  v97 = v95[1];
  v99 = v95[2];
  v98 = v95[3];
  v100 = v95[4];
  v101 = v95[5];
  v102 = v95[6];
  v123 = v94;
  v103 = v94;
  while (1)
  {
    v104 = *(v93 - 7);
    v5 = (v93 - 7);
    v129 = v103;
    v131 = *(v93 - 6);
    v151 = *(v93 - 5);
    v132 = *(v93 - 3);
    v133 = *(v93 - 4);
    v137 = *(v93 - 1);
    v140 = *(v93 - 2);

    sub_100069E2C(v97, v99);
    sub_100069E2C(v98, v100);
    sub_100069E2C(v101, v102);

    sub_100069E2C(v131, v151);
    sub_100069E2C(v133, v132);
    sub_100069E2C(v140, v137);
    v143 = static UUID.< infix(_:_:)();

    sub_10006A178(v131, v151);
    sub_10006A178(v133, v132);
    sub_10006A178(v140, v137);

    sub_10006A178(v97, v99);
    sub_10006A178(v98, v100);
    result = sub_10006A178(v101, v102);
    if ((v143 & 1) == 0)
    {
LABEL_79:
      v22 = v126 + 1;
      v93 = v124 + 7;
      v46 = v122;
      v94 = v123 - 1;
      if (v126 + 1 != v122)
      {
        goto LABEL_80;
      }

      v10 = v114;
      v6 = v116;
      v9 = v119;
      v7 = a3;
      if (v122 < v119)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v127)
    {
      break;
    }

    v105 = *v93;
    v97 = v93[1];
    v99 = v93[2];
    v98 = v93[3];
    v100 = v93[4];
    v101 = v93[5];
    v102 = v93[6];
    v106 = *(v93 - 5);
    *v93 = *v5;
    *(v93 + 1) = v106;
    *(v93 + 2) = *(v93 - 3);
    v93[6] = *(v93 - 1);
    *(v93 - 6) = v97;
    *(v93 - 5) = v99;
    *(v93 - 4) = v98;
    *(v93 - 3) = v100;
    *(v93 - 2) = v101;
    *(v93 - 1) = v102;
    *(v93 - 7) = v105;
    v93 -= 7;
    v103 = v129 + 1;
    if (v129 == -1)
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_1000796FC(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v66 = &v4[56 * v11];
    if (v10 >= 56 && v6 > v7)
    {
      v65 = v4;
      v57 = v7;
LABEL_23:
      v45 = v6 - 56;
      v26 = v5 - 56;
      v27 = v66;
      v46 = v6;
      do
      {
        v28 = *(v27 - 7);
        v29 = *(v27 - 6);
        v27 -= 56;
        v63 = v26;
        v31 = *(v27 + 2);
        v30 = *(v27 + 3);
        v55 = (v26 + 56);
        v32 = *(v27 + 5);
        v61 = *(v27 + 4);
        v59 = *(v27 + 6);
        v34 = *(v6 - 7);
        v33 = *(v6 - 6);
        v35 = *(v6 - 5);
        v47 = *(v6 - 3);
        v53 = *(v6 - 2);
        v49 = *(v6 - 4);
        v51 = *(v6 - 1);

        sub_100069E2C(v29, v31);
        sub_100069E2C(v30, v61);
        sub_100069E2C(v32, v59);

        sub_100069E2C(v33, v35);
        sub_100069E2C(v49, v47);
        sub_100069E2C(v53, v51);
        v36 = static UUID.< infix(_:_:)();

        sub_10006A178(v33, v35);
        sub_10006A178(v49, v47);
        sub_10006A178(v53, v51);

        sub_10006A178(v29, v31);
        sub_10006A178(v30, v61);
        sub_10006A178(v32, v59);
        if (v36)
        {
          v5 = v63;
          v4 = v65;
          if (v55 != v46)
          {
            v40 = *v45;
            v41 = *(v45 + 1);
            v42 = *(v45 + 2);
            *(v63 + 48) = *(v45 + 6);
            *(v63 + 16) = v41;
            *(v63 + 32) = v42;
            *v63 = v40;
          }

          if (v66 <= v65 || (v6 = v45, v45 <= v57))
          {
            v6 = v45;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        v4 = v65;
        if (v55 != v66)
        {
          v37 = *v27;
          v38 = *(v27 + 1);
          v39 = *(v27 + 2);
          *(v63 + 48) = *(v27 + 6);
          *(v63 + 16) = v38;
          *(v63 + 32) = v39;
          *v63 = v37;
        }

        v26 = v63 - 56;
        v66 = v27;
        v6 = v46;
      }

      while (v27 > v65);
      v66 = v27;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v66 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      v62 = v5;
      while (1)
      {
        v12 = *(v6 + 1);
        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        v56 = v7;
        v15 = *(v6 + 5);
        v60 = *(v6 + 4);
        v58 = *(v6 + 6);
        v17 = *v4;
        v16 = *(v4 + 1);
        v48 = *(v4 + 2);
        v50 = *(v4 + 4);
        v52 = *(v4 + 3);
        v54 = *(v4 + 5);
        v64 = v4;
        v18 = *(v4 + 6);

        sub_100069E2C(v12, v14);
        sub_100069E2C(v13, v60);
        sub_100069E2C(v15, v58);

        sub_100069E2C(v16, v48);
        sub_100069E2C(v52, v50);
        sub_100069E2C(v54, v18);
        v19 = static UUID.< infix(_:_:)();

        sub_10006A178(v16, v48);
        sub_10006A178(v52, v50);
        sub_10006A178(v54, v18);

        sub_10006A178(v12, v14);
        sub_10006A178(v13, v60);
        sub_10006A178(v15, v58);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v20 = v6;
        v21 = v56;
        v22 = v56 == v6;
        v6 += 56;
        if (!v22)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 = v21 + 56;
        if (v4 >= v66 || v6 >= v62)
        {
          goto LABEL_16;
        }
      }

      v20 = v4;
      v4 += 56;
      v21 = v56;
      if (v56 == v64)
      {
        goto LABEL_14;
      }

LABEL_13:
      v23 = *v20;
      v24 = *(v20 + 1);
      v25 = *(v20 + 2);
      *(v21 + 6) = *(v20 + 6);
      *(v21 + 1) = v24;
      *(v21 + 2) = v25;
      *v21 = v23;
      goto LABEL_14;
    }

LABEL_16:
    v6 = v7;
  }

LABEL_34:
  v43 = (v66 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v43])
  {
    memmove(v6, v4, 56 * v43);
  }

  return 1;
}

uint64_t sub_100079BEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100079C78(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100079C8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&qword_1005025F8, &qword_100409A20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100079DB8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100079E24()
{
  result = qword_1005025E8;
  if (!qword_1005025E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005025E8);
  }

  return result;
}

uint64_t sub_100079E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100079E98()
{
  if (qword_100501A18 != -1)
  {
    swift_once();
  }

  sub_100074984(0xD000000000000019, 0x80000001004618E0);
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  if (v0[2] != 4)
  {

LABEL_10:
    v30 = &type metadata for String;
    *&v29 = 0xD00000000000001DLL;
    *(&v29 + 1) = 0x80000001004619A0;
    goto LABEL_11;
  }

  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004099F0;
  *(inited + 32) = 811889762;
  *(inited + 40) = 0xE400000000000000;
  v3 = v1[4];
  v4 = v1[5];
  sub_100069E2C(v3, v4);
  *&v29 = sub_100288788(v3, v4);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v5 = BidirectionalCollection<>.joined(separator:)();
  v7 = v6;
  sub_10006A178(v3, v4);

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 64) = 812802403;
  *(inited + 72) = 0xE400000000000000;
  if (v1[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v1[6];
  v10 = v1[7];
  sub_100069E2C(v9, v10);
  *&v29 = sub_100288788(v9, v10);
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;
  sub_10006A178(v9, v10);

  *(inited + 80) = v11;
  *(inited + 88) = v13;
  *(inited + 96) = 829579619;
  *(inited + 104) = 0xE400000000000000;
  if (v1[2] < 3uLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v1[8];
  v15 = v1[9];
  sub_100069E2C(v14, v15);
  *&v29 = sub_100288788(v14, v15);
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;
  sub_10006A178(v14, v15);

  *(inited + 112) = v16;
  *(inited + 120) = v18;
  *(inited + 128) = 846356835;
  *(inited + 136) = 0xE400000000000000;
  if (v1[2] >= 4uLL)
  {
    v19 = v1[10];
    v20 = v1[11];
    sub_100069E2C(v19, v20);

    sub_100288788(v19, v20);
    v21 = BidirectionalCollection<>.joined(separator:)();
    v23 = v22;
    sub_10006A178(v19, v20);

    *(inited + 144) = v21;
    *(inited + 152) = v23;
    v24 = sub_1000910F0(inited);
    swift_setDeallocating();
    sub_100068FC4(&unk_100504020, &qword_100409CC0);
    swift_arrayDestroy();
    v30 = sub_100068FC4(&qword_100502600, &unk_100417140);
    *&v29 = v24;
LABEL_11:
    sub_100075D50(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v28, 0xD000000000000012, 0x8000000100461980, isUniquelyReferenced_nonNull_native);
    sub_1001950D4(&_swiftEmptyDictionarySingleton);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = sub_100015DA0("alishalpem.state", isa);

    return v27;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_10007A2D0()
{
  result = qword_100504780;
  if (!qword_100504780)
  {
    sub_1000692D8(&unk_100503E60, &qword_10040A3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504780);
  }

  return result;
}

void sub_10007A334(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10006928C();
  if (qword_100501D80 != -1)
  {
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  if ((v10 & 1) != 0 || v9 != 0x534F534543555245)
  {
    v8 = sub_1003AF3D8(a4);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    sub_10007A564(a4, 1, a1, a2, a3);
  }
}

uint64_t sub_10007A564(uint64_t *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v107 = xmmword_1004098D0;
  v9 = *(a5 + 16);
  if (v9)
  {
    v6 = (a5 + 32);
    v8 = &v101;
    v5 = &qword_100502608;
    while (1)
    {
      v12 = *v6++;
      v11 = v12;
      if (v12 > 4)
      {
        if (v11 <= 6)
        {
          if (v11 == 5)
          {
            v7 = 160;
          }

          else
          {
            v7 = 164;
          }
        }

        else if (v11 == 7)
        {
          v7 = 165;
        }

        else if (v11 == 8)
        {
          v7 = 197;
        }

        else
        {
          v7 = 218;
        }

        goto LABEL_24;
      }

      if (v11 <= 1)
      {
        if (v11)
        {
          v7 = 132;
        }

        else
        {
          v7 = 79;
        }

        goto LABEL_24;
      }

      if (v11 == 2)
      {
        break;
      }

      if (v11 == 3)
      {
        v7 = 204;
LABEL_24:
        if (*(&v107 + 1) >> 62 == 2)
        {
          v16 = *(v107 + 24);
        }

        v10 = sub_100068FC4(&qword_100502608, &qword_100409A28);
        v105 = v10;
        v106 = sub_10007FBA8();
        LOBYTE(v103) = v7;
        LOBYTE(v101) = *sub_1000752B0(&v103, v10);
        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_4;
      }

      LOWORD(v101) = 28831;
      v105 = &type metadata for UnsafeRawBufferPointer;
      v106 = &protocol witness table for UnsafeRawBufferPointer;
      v103 = &v101;
      v104 = &v101 + 2;
      v13 = sub_1000752B0(&v103, &type metadata for UnsafeRawBufferPointer);
      v15 = *v13;
      v14 = v13[1];
      Data._Representation.append(contentsOf:)();
LABEL_4:
      sub_1000752F4(&v103);
      if (!--v9)
      {
        goto LABEL_26;
      }
    }

    v7 = 196;
    goto LABEL_24;
  }

LABEL_26:
  if (a4 >> 60 == 15)
  {
LABEL_27:
    i = 0;
    goto LABEL_28;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_40;
  }

  if (i)
  {
    goto LABEL_67;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_28:
      v18 = __OFADD__(i, 2);
      v19 = i + 2;
      if (v18)
      {
        goto LABEL_141;
      }

      v18 = __OFADD__(v19, 2);
      i = v19 + 2;
      if (v18)
      {
        goto LABEL_142;
      }

      v7 = *(&v107 + 1);
      v6 = v107;
      v5 = (*(&v107 + 1) >> 62);
      if ((*(&v107 + 1) >> 62) <= 1)
      {
        v8 = a1;
        if (!v5)
        {
          v20 = BYTE14(v107);
          break;
        }

        goto LABEL_44;
      }

      v8 = a1;
      if (v5 != 2)
      {
        v20 = 0;
        break;
      }

      v22 = *(v107 + 16);
      v21 = *(v107 + 24);
      v18 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v18)
      {
        break;
      }

      __break(1u);
LABEL_40:
      if (i != 2)
      {
        goto LABEL_27;
      }

      v24 = *(a3 + 16);
      v23 = *(a3 + 24);
      v18 = __OFSUB__(v23, v24);
      i = v23 - v24;
      if (v18)
      {
        __break(1u);
LABEL_44:
        LODWORD(v20) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_152;
        }

        v20 = v20;
        break;
      }
    }

    v25 = i + v20;
    if (__OFADD__(i, v20))
    {
      goto LABEL_143;
    }

    if (__OFADD__(v25, 9))
    {
      goto LABEL_144;
    }

    v101 = sub_1001303A8(v25 + 9);
    v102 = v26;
    v98 = -20608;
    if (a2)
    {
      v27 = 64;
    }

    else
    {
      v27 = 16;
    }

    v99 = v27;
    v100 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_145;
    }

    if (v25 >> 16)
    {
      goto LABEL_146;
    }

    v96 = bswap32(v25) >> 16;
    v105 = &type metadata for UnsafeRawBufferPointer;
    v106 = &protocol witness table for UnsafeRawBufferPointer;
    v103 = &v96;
    v104 = v97;
    v28 = sub_1000752B0(&v103, &type metadata for UnsafeRawBufferPointer);
    v30 = *v28;
    v29 = v28[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v103);
    if (v102 >> 62 == 2)
    {
      v31 = *(v101 + 24);
    }

    v32 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v105 = v32;
    v33 = sub_10007FBA8();
    v106 = v33;
    LOBYTE(v103) = 79;
    LOBYTE(v96) = *sub_1000752B0(&v103, v32);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v103);
    if (a4 >> 60 == 15)
    {
      break;
    }

    v34 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (v34)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_155;
        }

        v35 = HIDWORD(a3) - a3;
LABEL_71:
        sub_100069E2C(a3, a4);
        if ((v35 & 0x8000000000000000) != 0)
        {
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (v35 > 0xFF)
        {
          __break(1u);
          goto LABEL_74;
        }
      }

      else
      {
        v35 = HIWORD(a4);
      }

LABEL_76:
      if (v102 >> 62 == 2)
      {
        v39 = *(v101 + 24);
      }

      v105 = v32;
      v106 = v33;
      LOBYTE(v103) = v35;
      LOBYTE(v96) = *sub_1000752B0(&v103, v32);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v103);
      Data.append(_:)();
      sub_10006A2D0(a3, a4);
      goto LABEL_79;
    }

    if (v34 != 2)
    {
      LOBYTE(v35) = 0;
      goto LABEL_76;
    }

    v38 = *(a3 + 16);
    v37 = *(a3 + 24);
    v35 = v37 - v38;
    if (!__OFSUB__(v37, v38))
    {
      goto LABEL_71;
    }

    __break(1u);
LABEL_67:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_154;
    }
  }

  if (v102 >> 62 == 2)
  {
    v36 = *(v101 + 24);
  }

LABEL_74:
  v105 = v32;
  v106 = v33;
  LOBYTE(v103) = 0;
  LOBYTE(v96) = *sub_1000752B0(&v103, v32);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v103);
LABEL_79:
  if (v102 >> 62 == 2)
  {
    v40 = *(v101 + 24);
  }

  v105 = v32;
  v106 = v33;
  LOBYTE(v103) = 92;
  LOBYTE(v96) = *sub_1000752B0(&v103, v32);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v103);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v41 = HIWORD(v7);
      goto LABEL_94;
    }

LABEL_88:
    LODWORD(v41) = HIDWORD(v6) - v6;
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      v41 = v41;
      goto LABEL_90;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
  }

  if (v5 != 2)
  {
LABEL_93:
    LOBYTE(v41) = 0;
    goto LABEL_94;
  }

  v43 = *(v6 + 2);
  v42 = *(v6 + 3);
  v18 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v18)
  {
    __break(1u);
    goto LABEL_88;
  }

LABEL_90:
  if ((v41 & 0x8000000000000000) != 0)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v41 > 0xFF)
  {
    __break(1u);
    goto LABEL_93;
  }

LABEL_94:
  if (v102 >> 62 == 2)
  {
    v44 = *(v101 + 24);
  }

  v105 = v32;
  v106 = v33;
  LOBYTE(v103) = v41;
  LOBYTE(v96) = *sub_1000752B0(&v103, v32);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v103);
  Data.append(_:)();
  v96 = 0;
  v105 = &type metadata for UnsafeRawBufferPointer;
  v106 = &protocol witness table for UnsafeRawBufferPointer;
  v103 = &v96;
  v104 = v97;
  v45 = sub_1000752B0(&v103, &type metadata for UnsafeRawBufferPointer);
  v47 = *v45;
  v46 = v45[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v103);
  v48 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v49 >> 60 == 15)
  {
    goto LABEL_159;
  }

  v50 = v48;
  v51 = v49;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v50, v51);
  v53 = sub_1003AF1FC(v8, isa);

  if (v53)
  {
    swift_willThrow();
    sub_10006A178(v101, v102);
    return sub_10006A178(v6, v7);
  }

  v92 = v7;
  v94 = v6;
  v54 = [objc_allocWithZone(RAPDU) init];
  v56 = v101;
  v55 = v102;
  while (2)
  {
    v59 = v54;
    v60 = Data._bridgeToObjectiveC()().super.isa;
    v103 = 0;
    v54 = sub_1003AEB5C(v8, v60, &v103);

    v61 = v103;
    if (!v54)
    {
      v88 = v61;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10006A178(v56, v55);
      v7 = v92;
      v6 = v94;
      return sub_10006A178(v6, v7);
    }

    v62 = sub_1003B0934(v54);
    v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    sub_10006A178(v63, v65);
    v66 = v55 >> 62;
    if ((v55 >> 62) > 1)
    {
      if (v66 != 2)
      {
        goto LABEL_156;
      }

      v68 = v55 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10006A178(v56, v55);
      sub_10006A178(0, 0xC000000000000000);
      if (*(v56 + 16) > 3)
      {
        goto LABEL_136;
      }

      if (*(v56 + 24) < 4)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = *(v56 + 16);
        v70 = *(v56 + 24);
        if (__DataStorage._bytes.getter())
        {
          if (__OFSUB__(v69, __DataStorage._offset.getter()))
          {
            goto LABEL_150;
          }

          if (__OFSUB__(v70, v69))
          {
            goto LABEL_148;
          }
        }

        else if (__OFSUB__(v70, v69))
        {
          goto LABEL_148;
        }

        v78 = type metadata accessor for __DataStorage();
        v79 = *(v78 + 48);
        v80 = *(v78 + 52);
        swift_allocObject();
        v81 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v68 = v81;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = *(v56 + 16);
        v83 = *(v56 + 24);
        type metadata accessor for Data.RangeReference();
        v84 = swift_allocObject();
        *(v84 + 16) = v82;
        *(v84 + 24) = v83;

        v56 = v84;
      }

      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
      v85 = __DataStorage._bytes.getter();
      if (!v85)
      {
        goto LABEL_158;
      }

      v86 = v85;
      v87 = __DataStorage._offset.getter();
      if (__OFSUB__(3, v87))
      {
        goto LABEL_140;
      }

      *(v86 + 3 - v87) = 3;
      v55 = v68 | 0x8000000000000000;
      goto LABEL_102;
    }

    if (!v66)
    {
      sub_10006A178(v56, v55);
      v57 = BYTE6(v55);
      if (BYTE6(v55) >= 4uLL)
      {
        v56 = v56 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v58 = v53 & 0xF00000000000000 | v55 & 0xFFFFFFFFFFFFLL;
        v55 = v58 | (BYTE6(v55) << 48);
        v53 = v58 | (v57 << 48);
        goto LABEL_102;
      }

      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v67 = v55 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10006A178(v56, v55);
    sub_10006A178(0, 0xC000000000000000);
    if (v56 >> 32 < 4 || v56 > 3)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(v56, __DataStorage._offset.getter()))
      {
        goto LABEL_149;
      }

      v71 = type metadata accessor for __DataStorage();
      v72 = *(v71 + 48);
      v73 = *(v71 + 52);
      swift_allocObject();
      v74 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v67 = v74;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
    v75 = __DataStorage._bytes.getter();
    if (!v75)
    {
      goto LABEL_157;
    }

    v76 = v75;
    v77 = __DataStorage._offset.getter();
    if (__OFSUB__(3, v77))
    {
      goto LABEL_139;
    }

    *(v76 + 3 - v77) = 3;
    v55 = v67 | 0x4000000000000000;
LABEL_102:
    v8 = a1;
    if (sub_1003B0984(v54) == 25360)
    {
      continue;
    }

    break;
  }

  sub_10006A178(v56, v55);
  return sub_10006A178(v94, v92);
}

uint64_t sub_10007B128(void *a1, char a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v130 = xmmword_1004098D0;
  v9 = *(a5 + 16);
  if (v9)
  {
    v7 = (a5 + 32);
    v6 = &qword_100502608;
    while (1)
    {
      v12 = *v7++;
      v11 = v12;
      if (v12 > 4)
      {
        if (v11 <= 6)
        {
          if (v11 == 5)
          {
            v13 = -96;
          }

          else
          {
            v13 = -92;
          }
        }

        else if (v11 == 7)
        {
          v13 = -91;
        }

        else if (v11 == 8)
        {
          v13 = -59;
        }

        else
        {
          v13 = -38;
        }

        goto LABEL_24;
      }

      if (v11 <= 1)
      {
        if (v11)
        {
          v13 = -124;
        }

        else
        {
          v13 = 79;
        }

        goto LABEL_24;
      }

      if (v11 == 2)
      {
        break;
      }

      if (v11 == 3)
      {
        v13 = -52;
LABEL_24:
        if (*(&v130 + 1) >> 62 == 2)
        {
          v17 = *(v130 + 24);
        }

        v10 = sub_100068FC4(&qword_100502608, &qword_100409A28);
        v128 = v10;
        v129 = sub_10007FBA8();
        LOBYTE(v126) = v13;
        LOBYTE(v124) = *sub_1000752B0(&v126, v10);
        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_4;
      }

      LOWORD(v124) = 28831;
      v128 = &type metadata for UnsafeRawBufferPointer;
      v129 = &protocol witness table for UnsafeRawBufferPointer;
      v126 = &v124;
      v127 = &v124 + 2;
      v14 = sub_1000752B0(&v126, &type metadata for UnsafeRawBufferPointer);
      v16 = *v14;
      v15 = v14[1];
      Data._Representation.append(contentsOf:)();
LABEL_4:
      sub_1000752F4(&v126);
      if (!--v9)
      {
        goto LABEL_26;
      }
    }

    v13 = -60;
    goto LABEL_24;
  }

LABEL_26:
  v18 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
LABEL_27:
    i = 0;
    goto LABEL_28;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_40;
  }

  if (i)
  {
    goto LABEL_67;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_28:
      v20 = __OFADD__(i, 2);
      v21 = i + 2;
      if (v20)
      {
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      v20 = __OFADD__(v21, 2);
      i = v21 + 2;
      if (v20)
      {
        goto LABEL_155;
      }

      v113 = *(&v130 + 1);
      v7 = v130;
      v6 = (*(&v130 + 1) >> 62);
      if ((*(&v130 + 1) >> 62) <= 1)
      {
        if (!v6)
        {
          v22 = BYTE14(v130);
          break;
        }

        goto LABEL_44;
      }

      if (v6 != 2)
      {
        v22 = 0;
        break;
      }

      v24 = *(v130 + 16);
      v23 = *(v130 + 24);
      v20 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (!v20)
      {
        break;
      }

      __break(1u);
LABEL_40:
      if (i != 2)
      {
        goto LABEL_27;
      }

      v26 = *(a3 + 16);
      v25 = *(a3 + 24);
      v20 = __OFSUB__(v25, v26);
      i = v25 - v26;
      if (v20)
      {
        __break(1u);
LABEL_44:
        LODWORD(v22) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_169;
        }

        v22 = v22;
        break;
      }
    }

    v27 = i + v22;
    if (__OFADD__(i, v22))
    {
      goto LABEL_156;
    }

    if (__OFADD__(v27, 9))
    {
      goto LABEL_157;
    }

    v124 = sub_1001303A8(v27 + 9);
    v125 = v28;
    v121 = -20608;
    if (a2)
    {
      v29 = 64;
    }

    else
    {
      v29 = 16;
    }

    v122 = v29;
    v123 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_158;
    }

    if (v27 >> 16)
    {
      goto LABEL_159;
    }

    v119 = bswap32(v27) >> 16;
    v128 = &type metadata for UnsafeRawBufferPointer;
    v129 = &protocol witness table for UnsafeRawBufferPointer;
    v126 = &v119;
    v127 = v120;
    v30 = sub_1000752B0(&v126, &type metadata for UnsafeRawBufferPointer);
    v32 = *v30;
    v31 = v30[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v126);
    if (v125 >> 62 == 2)
    {
      v33 = *(v124 + 24);
    }

    v34 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v128 = v34;
    v35 = sub_10007FBA8();
    v129 = v35;
    LOBYTE(v126) = 79;
    LOBYTE(v119) = *sub_1000752B0(&v126, v34);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v126);
    if (v18 > 0xE)
    {
      break;
    }

    v36 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      v18 = a3;
      if (v36)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_174;
        }

        v37 = HIDWORD(a3) - a3;
LABEL_71:
        sub_100069E2C(v18, a4);
        if ((v37 & 0x8000000000000000) != 0)
        {
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        if (v37 > 0xFF)
        {
          __break(1u);
          goto LABEL_74;
        }
      }

      else
      {
        v37 = HIWORD(a4);
      }

LABEL_76:
      if (v125 >> 62 == 2)
      {
        v41 = *(v124 + 24);
      }

      v128 = v34;
      v129 = v35;
      LOBYTE(v126) = v37;
      LOBYTE(v119) = *sub_1000752B0(&v126, v34);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v126);
      Data.append(_:)();
      sub_10006A2D0(v18, a4);
      goto LABEL_79;
    }

    v18 = a3;
    if (v36 != 2)
    {
      LOBYTE(v37) = 0;
      goto LABEL_76;
    }

    v40 = *(a3 + 16);
    v39 = *(a3 + 24);
    v37 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
      goto LABEL_71;
    }

    __break(1u);
LABEL_67:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_173;
    }
  }

  if (v125 >> 62 == 2)
  {
    v38 = *(v124 + 24);
  }

LABEL_74:
  v128 = v34;
  v129 = v35;
  LOBYTE(v126) = 0;
  LOBYTE(v119) = *sub_1000752B0(&v126, v34);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v126);
LABEL_79:
  if (v125 >> 62 == 2)
  {
    v42 = *(v124 + 24);
  }

  v128 = v34;
  v129 = v35;
  LOBYTE(v126) = 92;
  LOBYTE(v119) = *sub_1000752B0(&v126, v34);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v126);
  if (v6 <= 1)
  {
    if (!v6)
    {
      v43 = HIWORD(v113);
      goto LABEL_94;
    }

LABEL_88:
    LODWORD(v43) = HIDWORD(v7) - v7;
    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      v43 = v43;
      goto LABEL_90;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }

  if (v6 != 2)
  {
LABEL_93:
    LOBYTE(v43) = 0;
    goto LABEL_94;
  }

  v45 = *(v7 + 2);
  v44 = *(v7 + 3);
  v20 = __OFSUB__(v44, v45);
  v43 = v44 - v45;
  if (v20)
  {
    __break(1u);
    goto LABEL_88;
  }

LABEL_90:
  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_160;
  }

  if (v43 > 0xFF)
  {
    __break(1u);
    goto LABEL_93;
  }

LABEL_94:
  if (v125 >> 62 == 2)
  {
    v46 = *(v124 + 24);
  }

  v128 = v34;
  v129 = v35;
  LOBYTE(v126) = v43;
  LOBYTE(v119) = *sub_1000752B0(&v126, v34);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v126);
  Data.append(_:)();
  v119 = 0;
  v128 = &type metadata for UnsafeRawBufferPointer;
  v129 = &protocol witness table for UnsafeRawBufferPointer;
  v126 = &v119;
  v127 = v120;
  v47 = sub_1000752B0(&v126, &type metadata for UnsafeRawBufferPointer);
  v49 = *v47;
  v48 = v47[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v126);
  v50 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v51 >> 60 == 15)
  {
    goto LABEL_175;
  }

  v52 = v50;
  v53 = v51;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v52, v53);
  v55 = a1;
  v56 = sub_1003AF1FC(a1, isa);

  if (!v56)
  {
    v110 = v7;
    v57 = [objc_allocWithZone(RAPDU) init];
    v58 = v124;
    v117 = v125;
    while (1)
    {
      v60 = Data._bridgeToObjectiveC()().super.isa;
      v126 = 0;
      v61 = sub_1003AEB5C(v55, v60, &v126);

      v62 = v126;
      if (!v61)
      {
        v101 = v62;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10006A178(v58, v117);
        v7 = v110;
        return sub_10006A178(v7, v113);
      }

      v63 = sub_1003B0934(v61);
      v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v126 = v64;
      v127 = v66;
      sub_100069E2C(v64, v66);
      v67 = sub_1001AD294(&v126, 0);
      if (v115)
      {
        v124 = v58;
        v125 = v117;
        v102 = v126;
        v103 = v127;
        goto LABEL_152;
      }

      v70 = v67;
      v71 = v68;
      v72 = v69;
      sub_10006A178(v126, v127);
      if (v70 != 227)
      {
        v104 = 0;
        v124 = v58;
        v125 = v117;
        v105 = v66 >> 62;
        if ((v66 >> 62) > 1)
        {
          if (v105 == 2)
          {
            v104 = v64[2];
          }
        }

        else if (v105)
        {
          v104 = v64;
        }

        sub_10007FC0C();
        swift_allocError();
        *v108 = v70;
        *(v108 + 8) = 227;
        *(v108 + 16) = v104;
        *(v108 + 24) = 0;
        swift_willThrow();
LABEL_151:
        v102 = v71;
        v103 = v72;
LABEL_152:
        sub_10006A178(v102, v103);
        sub_10006A178(v64, v66);

        sub_10006A178(v124, v125);
        v113 = *(&v130 + 1);
        v7 = v130;
        return sub_10006A178(v7, v113);
      }

      v126 = v71;
      v127 = v72;
      sub_100069E2C(v71, v72);
      v115 = 0;
      v73 = sub_1001AD294(&v126, 0);
      v75 = v74;
      v77 = v76;
      sub_10006A178(v126, v127);
      if (v73 != 218)
      {
        v106 = 0;
        v124 = v58;
        v125 = v117;
        v107 = v72 >> 62;
        if ((v72 >> 62) > 1)
        {
          if (v107 == 2)
          {
            v106 = v71[2];
          }
        }

        else if (v107)
        {
          v106 = v71;
        }

        v118 = v106;
        sub_10007FC0C();
        swift_allocError();
        *v109 = v73;
        *(v109 + 8) = 218;
        *(v109 + 16) = v118;
        *(v109 + 24) = 0;
        swift_willThrow();
        sub_10006A178(v75, v77);
        goto LABEL_151;
      }

      sub_10006A178(v71, v72);
      v78 = *a6;
      v79 = a6[1];
      *a6 = v75;
      a6[1] = v77;
      sub_10006A2D0(v78, v79);
      result = sub_10006A178(v64, v66);
      v81 = v117 >> 62;
      if ((v117 >> 62) > 1)
      {
        if (v81 != 2)
        {
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          return result;
        }

        v57 = v61;
        v82 = v117 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v58, v117);
        sub_10006A178(0, 0xC000000000000000);
        if (*(v58 + 16) > 3)
        {
          goto LABEL_162;
        }

        if (*(v58 + 24) < 4)
        {
          goto LABEL_164;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = *(v58 + 16);
          v84 = *(v58 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v83, __DataStorage._offset.getter()))
            {
              goto LABEL_172;
            }

            if (__OFSUB__(v84, v83))
            {
              goto LABEL_168;
            }
          }

          else if (__OFSUB__(v84, v83))
          {
            goto LABEL_168;
          }

          v92 = type metadata accessor for __DataStorage();
          v93 = *(v92 + 48);
          v94 = *(v92 + 52);
          swift_allocObject();
          v95 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v82 = v95;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = *(v58 + 16);
          v97 = *(v58 + 24);
          type metadata accessor for Data.RangeReference();
          v98 = swift_allocObject();
          *(v98 + 16) = v96;
          *(v98 + 24) = v97;

          v58 = v98;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_178;
        }

        v99 = result;
        v100 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v100))
        {
          goto LABEL_166;
        }

        *(v99 + 3 - v100) = 3;
        v59 = v82 | 0x8000000000000000;
      }

      else
      {
        v57 = v61;
        if (!v81)
        {
          sub_10006A178(v58, v117);
          v55 = a1;
          if (BYTE6(v117) < 4uLL)
          {
            goto LABEL_161;
          }

          v58 = v58 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
          v117 = a3 & 0xF00000000000000 | v117 & 0xFFFFFFFFFFFFLL | (BYTE6(v117) << 48);
          a3 = v117;
          goto LABEL_101;
        }

        v85 = v117 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v58, v117);
        sub_10006A178(0, 0xC000000000000000);
        if (v58 >> 32 < 4 || v58 > 3)
        {
          goto LABEL_163;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v58, __DataStorage._offset.getter()))
          {
            goto LABEL_171;
          }

          v86 = type metadata accessor for __DataStorage();
          v87 = *(v86 + 48);
          v88 = *(v86 + 52);
          swift_allocObject();
          v89 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v85 = v89;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_177;
        }

        v90 = result;
        v91 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v91))
        {
          goto LABEL_165;
        }

        *(v90 + 3 - v91) = 3;
        v59 = v85 | 0x4000000000000000;
      }

      v117 = v59;
      v55 = a1;
LABEL_101:
      if (sub_1003B0984(v57) != 25360)
      {

        sub_10006A178(v58, v117);
        return sub_10006A178(v110, v113);
      }
    }
  }

  swift_willThrow();
  sub_10006A178(v124, v125);
  return sub_10006A178(v7, v113);
}

uint64_t sub_10007BF2C(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v107 = xmmword_1004098D0;
  v8 = *(a5 + 16);
  if (v8)
  {
    v5 = (a5 + 32);
    while (1)
    {
      v11 = *v5++;
      v10 = v11;
      if (v11 > 4)
      {
        if (v10 <= 6)
        {
          if (v10 == 5)
          {
            v6 = 160;
          }

          else
          {
            v6 = 164;
          }
        }

        else if (v10 == 7)
        {
          v6 = 165;
        }

        else if (v10 == 8)
        {
          v6 = 197;
        }

        else
        {
          v6 = 218;
        }

        goto LABEL_24;
      }

      if (v10 <= 1)
      {
        if (v10)
        {
          v6 = 132;
        }

        else
        {
          v6 = 79;
        }

        goto LABEL_24;
      }

      if (v10 == 2)
      {
        break;
      }

      if (v10 == 3)
      {
        v6 = 204;
LABEL_24:
        if (*(&v107 + 1) >> 62 == 2)
        {
          v15 = *(v107 + 24);
        }

        v9 = sub_100068FC4(&qword_100502608, &qword_100409A28);
        v105 = v9;
        v106 = sub_10007FBA8();
        LOBYTE(v103) = v6;
        LOBYTE(v101) = *sub_1000752B0(&v103, v9);
        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_4;
      }

      LOWORD(v101) = 28831;
      v105 = &type metadata for UnsafeRawBufferPointer;
      v106 = &protocol witness table for UnsafeRawBufferPointer;
      v103 = &v101;
      v104 = &v101 + 2;
      v12 = sub_1000752B0(&v103, &type metadata for UnsafeRawBufferPointer);
      v14 = *v12;
      v13 = v12[1];
      Data._Representation.append(contentsOf:)();
LABEL_4:
      sub_1000752F4(&v103);
      if (!--v8)
      {
        goto LABEL_26;
      }
    }

    v6 = 196;
    goto LABEL_24;
  }

LABEL_26:
  v16 = a4;
  v17 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
LABEL_27:
    i = 0;
    goto LABEL_28;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_40;
  }

  if (i)
  {
    goto LABEL_67;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_28:
      v19 = __OFADD__(i, 2);
      v20 = i + 2;
      if (v19)
      {
        goto LABEL_141;
      }

      v19 = __OFADD__(v20, 2);
      i = v20 + 2;
      if (v19)
      {
        goto LABEL_142;
      }

      a4 = *(&v107 + 1);
      v6 = v107;
      v5 = (*(&v107 + 1) >> 62);
      if ((*(&v107 + 1) >> 62) <= 1)
      {
        if (!v5)
        {
          v21 = BYTE14(v107);
          break;
        }

        goto LABEL_44;
      }

      if (v5 != 2)
      {
        v21 = 0;
        break;
      }

      v23 = *(v107 + 16);
      v22 = *(v107 + 24);
      v19 = __OFSUB__(v22, v23);
      v21 = v22 - v23;
      if (!v19)
      {
        break;
      }

      __break(1u);
LABEL_40:
      if (i != 2)
      {
        goto LABEL_27;
      }

      v25 = *(a3 + 16);
      v24 = *(a3 + 24);
      v19 = __OFSUB__(v24, v25);
      i = v24 - v25;
      if (v19)
      {
        __break(1u);
LABEL_44:
        LODWORD(v21) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_152;
        }

        v21 = v21;
        break;
      }
    }

    v26 = i + v21;
    if (__OFADD__(i, v21))
    {
      goto LABEL_143;
    }

    if (__OFADD__(v26, 9))
    {
      goto LABEL_144;
    }

    v101 = sub_1001303A8(v26 + 9);
    v102 = v27;
    v98 = -20608;
    if (a2)
    {
      v28 = 64;
    }

    else
    {
      v28 = 16;
    }

    v99 = v28;
    v100 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_145;
    }

    if (v26 >> 16)
    {
      goto LABEL_146;
    }

    v96 = bswap32(v26) >> 16;
    v105 = &type metadata for UnsafeRawBufferPointer;
    v106 = &protocol witness table for UnsafeRawBufferPointer;
    v103 = &v96;
    v104 = v97;
    v29 = sub_1000752B0(&v103, &type metadata for UnsafeRawBufferPointer);
    v31 = *v29;
    v30 = v29[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v103);
    if (v102 >> 62 == 2)
    {
      v32 = *(v101 + 24);
    }

    v33 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v105 = v33;
    v34 = sub_10007FBA8();
    v106 = v34;
    LOBYTE(v103) = 79;
    LOBYTE(v96) = *sub_1000752B0(&v103, v33);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v103);
    if (v17 > 0xE)
    {
      break;
    }

    v35 = v16 >> 62;
    if ((v16 >> 62) <= 1)
    {
      if (v35)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_155;
        }

        v36 = HIDWORD(a3) - a3;
LABEL_71:
        sub_100069E2C(a3, v16);
        if ((v36 & 0x8000000000000000) != 0)
        {
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (v36 > 0xFF)
        {
          __break(1u);
          goto LABEL_74;
        }
      }

      else
      {
        v36 = HIWORD(v16);
      }

LABEL_76:
      if (v102 >> 62 == 2)
      {
        v40 = *(v101 + 24);
      }

      v105 = v33;
      v106 = v34;
      LOBYTE(v103) = v36;
      LOBYTE(v96) = *sub_1000752B0(&v103, v33);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v103);
      Data.append(_:)();
      sub_10006A2D0(a3, v16);
      goto LABEL_79;
    }

    if (v35 != 2)
    {
      LOBYTE(v36) = 0;
      goto LABEL_76;
    }

    v39 = *(a3 + 16);
    v38 = *(a3 + 24);
    v36 = v38 - v39;
    if (!__OFSUB__(v38, v39))
    {
      goto LABEL_71;
    }

    __break(1u);
LABEL_67:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_154;
    }
  }

  if (v102 >> 62 == 2)
  {
    v37 = *(v101 + 24);
  }

LABEL_74:
  v105 = v33;
  v106 = v34;
  LOBYTE(v103) = 0;
  LOBYTE(v96) = *sub_1000752B0(&v103, v33);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v103);
LABEL_79:
  if (v102 >> 62 == 2)
  {
    v41 = *(v101 + 24);
  }

  v105 = v33;
  v106 = v34;
  LOBYTE(v103) = 92;
  LOBYTE(v96) = *sub_1000752B0(&v103, v33);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v103);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v42 = HIWORD(a4);
      goto LABEL_94;
    }

LABEL_88:
    LODWORD(v42) = HIDWORD(v6) - v6;
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      v42 = v42;
      goto LABEL_90;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
  }

  if (v5 != 2)
  {
LABEL_93:
    LOBYTE(v42) = 0;
    goto LABEL_94;
  }

  v44 = *(v6 + 16);
  v43 = *(v6 + 24);
  v19 = __OFSUB__(v43, v44);
  v42 = v43 - v44;
  if (v19)
  {
    __break(1u);
    goto LABEL_88;
  }

LABEL_90:
  if ((v42 & 0x8000000000000000) != 0)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v42 > 0xFF)
  {
    __break(1u);
    goto LABEL_93;
  }

LABEL_94:
  if (v102 >> 62 == 2)
  {
    v45 = *(v101 + 24);
  }

  v105 = v33;
  v106 = v34;
  LOBYTE(v103) = v42;
  LOBYTE(v96) = *sub_1000752B0(&v103, v33);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v103);
  Data.append(_:)();
  v96 = 0;
  v105 = &type metadata for UnsafeRawBufferPointer;
  v106 = &protocol witness table for UnsafeRawBufferPointer;
  v103 = &v96;
  v104 = v97;
  v46 = sub_1000752B0(&v103, &type metadata for UnsafeRawBufferPointer);
  v48 = *v46;
  v47 = v46[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v103);
  v49 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v50 >> 60 == 15)
  {
    goto LABEL_159;
  }

  v51 = v49;
  v52 = v50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v51, v52);
  v54 = a1;
  v55 = sub_1003AF1FC(a1, isa);

  if (v55)
  {
    swift_willThrow();
    sub_10006A178(v101, v102);
    return sub_10006A178(v6, a4);
  }

  v94 = v6;
  v56 = [objc_allocWithZone(RAPDU) init];
  v58 = v101;
  v57 = v102;
  while (2)
  {
    v61 = v56;
    v62 = Data._bridgeToObjectiveC()().super.isa;
    v103 = 0;
    v56 = sub_1003AEB5C(v54, v62, &v103);

    v63 = v103;
    if (!v56)
    {
      v90 = v63;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10006A178(v58, v57);
      v6 = v94;
      return sub_10006A178(v6, a4);
    }

    v64 = sub_1003B0934(v56);
    v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    Data.append(_:)();
    sub_10006A178(v65, v67);
    v68 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      if (v68 != 2)
      {
        goto LABEL_156;
      }

      v70 = v57 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10006A178(v58, v57);
      sub_10006A178(0, 0xC000000000000000);
      if (*(v58 + 16) > 3)
      {
        goto LABEL_136;
      }

      if (*(v58 + 24) < 4)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = *(v58 + 16);
        v72 = *(v58 + 24);
        if (__DataStorage._bytes.getter())
        {
          if (__OFSUB__(v71, __DataStorage._offset.getter()))
          {
            goto LABEL_150;
          }

          if (__OFSUB__(v72, v71))
          {
            goto LABEL_148;
          }
        }

        else if (__OFSUB__(v72, v71))
        {
          goto LABEL_148;
        }

        v80 = type metadata accessor for __DataStorage();
        v81 = *(v80 + 48);
        v82 = *(v80 + 52);
        swift_allocObject();
        v83 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v70 = v83;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = *(v58 + 16);
        v85 = *(v58 + 24);
        type metadata accessor for Data.RangeReference();
        v86 = swift_allocObject();
        *(v86 + 16) = v84;
        *(v86 + 24) = v85;

        v58 = v86;
      }

      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
      v87 = __DataStorage._bytes.getter();
      if (!v87)
      {
        goto LABEL_158;
      }

      v88 = v87;
      v89 = __DataStorage._offset.getter();
      if (__OFSUB__(3, v89))
      {
        goto LABEL_140;
      }

      *(v88 + 3 - v89) = 3;
      v57 = v70 | 0x8000000000000000;
      v54 = a1;
      goto LABEL_102;
    }

    if (!v68)
    {
      sub_10006A178(v58, v57);
      v59 = BYTE6(v57);
      if (BYTE6(v57) >= 4uLL)
      {
        v58 = v58 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v60 = v55 & 0xF00000000000000 | v57 & 0xFFFFFFFFFFFFLL;
        v57 = v60 | (BYTE6(v57) << 48);
        v55 = v60 | (v59 << 48);
        goto LABEL_102;
      }

      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v69 = v57 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10006A178(v58, v57);
    sub_10006A178(0, 0xC000000000000000);
    if (v58 >> 32 < 4 || v58 > 3)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(v58, __DataStorage._offset.getter()))
      {
        goto LABEL_149;
      }

      v73 = type metadata accessor for __DataStorage();
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      v76 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v69 = v76;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
    v77 = __DataStorage._bytes.getter();
    if (!v77)
    {
      goto LABEL_157;
    }

    v78 = v77;
    v79 = __DataStorage._offset.getter();
    if (__OFSUB__(3, v79))
    {
      goto LABEL_139;
    }

    *(v78 + 3 - v79) = 3;
    v57 = v69 | 0x4000000000000000;
    v54 = a1;
LABEL_102:
    if (sub_1003B0984(v56) == 25360)
    {
      continue;
    }

    break;
  }

  sub_10006A178(v58, v57);
  return sub_10006A178(v94, a4);
}

uint64_t sub_10007CB00(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t))
{
  v114 = xmmword_1004098D0;
  v9 = *(a5 + 16);
  if (v9)
  {
    v10 = (a5 + 32);
    v8 = &v108 + 2;
    while (1)
    {
      v13 = *v10++;
      v12 = v13;
      if (v13 > 4)
      {
        break;
      }

      if (v12 <= 1)
      {
        if (v12)
        {
          v14 = -124;
        }

        else
        {
          v14 = 79;
        }

        goto LABEL_27;
      }

      if (v12 == 2)
      {
        v14 = -60;
        goto LABEL_27;
      }

      if (v12 == 3)
      {
        v14 = -52;
        goto LABEL_27;
      }

      LOWORD(v108) = 28831;
      v112 = &type metadata for UnsafeRawBufferPointer;
      v113 = &protocol witness table for UnsafeRawBufferPointer;
      v110 = &v108;
      v111 = &v108 + 2;
      v15 = sub_1000752B0(&v110, &type metadata for UnsafeRawBufferPointer);
      v17 = *v15;
      v16 = v15[1];
      Data._Representation.append(contentsOf:)();
LABEL_7:
      sub_1000752F4(&v110);
      if (!--v9)
      {
        goto LABEL_31;
      }
    }

    if (v12 <= 6)
    {
      if (v12 == 5)
      {
        v14 = -96;
      }

      else
      {
        v14 = -92;
      }
    }

    else if (v12 == 7)
    {
      v14 = -91;
    }

    else if (v12 == 8)
    {
      v14 = -59;
    }

    else
    {
      v14 = -38;
    }

LABEL_27:
    v18 = *(&v114 + 1) >> 62;
    if ((*(&v114 + 1) >> 62) <= 1)
    {
      if (v18)
      {
        LODWORD(v7) = DWORD1(v114);
      }

      else
      {
        LODWORD(v7) = BYTE14(v114);
      }
    }

    else if (v18 == 2)
    {
      v7 = *(v114 + 24);
    }

    else
    {
      LODWORD(v7) = 0;
    }

    v11 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v112 = v11;
    v113 = sub_10007FBA8();
    LOBYTE(v110) = v14;
    LOBYTE(v108) = *sub_1000752B0(&v110, v11);
    Data._Representation.replaceSubrange(_:with:count:)();
    goto LABEL_7;
  }

LABEL_31:
  v19 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
LABEL_32:
    i = 0;
    goto LABEL_33;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_45;
  }

  if (i)
  {
    goto LABEL_74;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_33:
      v21 = __OFADD__(i, 2);
      v22 = i + 2;
      if (v21)
      {
        goto LABEL_151;
      }

      v21 = __OFADD__(v22, 2);
      i = v22 + 2;
      if (v21)
      {
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v99 = *(&v114 + 1);
      v8 = v114;
      v7 = *(&v114 + 1) >> 62;
      if ((*(&v114 + 1) >> 62) <= 1)
      {
        if (!v7)
        {
          v23 = BYTE14(v114);
          break;
        }

        goto LABEL_49;
      }

      if (v7 != 2)
      {
        v23 = 0;
        break;
      }

      v25 = *(v114 + 16);
      v24 = *(v114 + 24);
      v21 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (!v21)
      {
        break;
      }

      __break(1u);
LABEL_45:
      if (i != 2)
      {
        goto LABEL_32;
      }

      v27 = *(a3 + 16);
      v26 = *(a3 + 24);
      v21 = __OFSUB__(v26, v27);
      i = v26 - v27;
      if (v21)
      {
        __break(1u);
LABEL_49:
        LODWORD(v23) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_162;
        }

        v23 = v23;
        break;
      }
    }

    v28 = i + v23;
    if (__OFADD__(i, v23))
    {
      goto LABEL_153;
    }

    if (__OFADD__(v28, 9))
    {
      goto LABEL_154;
    }

    v108 = sub_1001303A8(v28 + 9);
    v109 = v29;
    v105 = -20608;
    if (a2)
    {
      v30 = 64;
    }

    else
    {
      v30 = 16;
    }

    v106 = v30;
    v107 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_155;
    }

    if (v28 >> 16)
    {
      goto LABEL_156;
    }

    v103 = bswap32(v28) >> 16;
    v112 = &type metadata for UnsafeRawBufferPointer;
    v113 = &protocol witness table for UnsafeRawBufferPointer;
    v110 = &v103;
    v111 = v104;
    v31 = sub_1000752B0(&v110, &type metadata for UnsafeRawBufferPointer);
    v33 = *v31;
    v32 = v31[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v110);
    if ((v109 >> 62) > 1)
    {
      v34 = a4;
      if (v109 >> 62 == 2)
      {
        v35 = *(v108 + 24);
      }
    }

    else
    {
      v34 = a4;
    }

    v36 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v112 = v36;
    v37 = sub_10007FBA8();
    v113 = v37;
    LOBYTE(v110) = 79;
    LOBYTE(v103) = *sub_1000752B0(&v110, v36);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v110);
    if (v19 > 0xE)
    {
      break;
    }

    v38 = v34 >> 62;
    v19 = v99;
    if ((v34 >> 62) <= 1)
    {
      if (v38)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_165;
        }

        v39 = HIDWORD(a3) - a3;
LABEL_78:
        sub_100069E2C(a3, v34);
        if ((v39 & 0x8000000000000000) != 0)
        {
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (v39 > 0xFF)
        {
          __break(1u);
          goto LABEL_81;
        }
      }

      else
      {
        v39 = HIWORD(v34);
      }

LABEL_83:
      if (v109 >> 62 == 2)
      {
        v43 = *(v108 + 24);
      }

      v112 = v36;
      v113 = v37;
      LOBYTE(v110) = v39;
      LOBYTE(v103) = *sub_1000752B0(&v110, v36);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v110);
      Data.append(_:)();
      sub_10006A2D0(a3, v34);
      goto LABEL_86;
    }

    if (v38 != 2)
    {
      LOBYTE(v39) = 0;
      goto LABEL_83;
    }

    v42 = *(a3 + 16);
    v41 = *(a3 + 24);
    v39 = v41 - v42;
    if (!__OFSUB__(v41, v42))
    {
      goto LABEL_78;
    }

    __break(1u);
LABEL_74:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_164;
    }
  }

  v19 = v99;
  if (v109 >> 62 == 2)
  {
    v40 = *(v108 + 24);
  }

LABEL_81:
  v112 = v36;
  v113 = v37;
  LOBYTE(v110) = 0;
  LOBYTE(v103) = *sub_1000752B0(&v110, v36);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v110);
LABEL_86:
  if (v109 >> 62 == 2)
  {
    v44 = *(v108 + 24);
  }

  v112 = v36;
  v113 = v37;
  LOBYTE(v110) = 92;
  LOBYTE(v103) = *sub_1000752B0(&v110, v36);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v110);
  if (v7 <= 1)
  {
    if (!v7)
    {
      v45 = HIWORD(v19);
      goto LABEL_101;
    }

LABEL_95:
    LODWORD(v45) = HIDWORD(v8) - v8;
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      v45 = v45;
      goto LABEL_97;
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
  }

  if (v7 != 2)
  {
LABEL_100:
    LOBYTE(v45) = 0;
    goto LABEL_101;
  }

  v47 = *(v8 + 2);
  v46 = *(v8 + 3);
  v21 = __OFSUB__(v46, v47);
  v45 = v46 - v47;
  if (v21)
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_97:
  if ((v45 & 0x8000000000000000) != 0)
  {
    goto LABEL_157;
  }

  if (v45 > 0xFF)
  {
    __break(1u);
    goto LABEL_100;
  }

LABEL_101:
  if (v109 >> 62 == 2)
  {
    v48 = *(v108 + 24);
  }

  v112 = v36;
  v113 = v37;
  LOBYTE(v110) = v45;
  LOBYTE(v103) = *sub_1000752B0(&v110, v36);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v110);
  Data.append(_:)();
  v103 = 0;
  v112 = &type metadata for UnsafeRawBufferPointer;
  v113 = &protocol witness table for UnsafeRawBufferPointer;
  v110 = &v103;
  v111 = v104;
  v49 = sub_1000752B0(&v110, &type metadata for UnsafeRawBufferPointer);
  v51 = *v49;
  v50 = v49[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v110);
  v52 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v53 >> 60 == 15)
  {
    goto LABEL_169;
  }

  v54 = v52;
  v55 = v53;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v54, v55);
  v57 = a1;
  v58 = sub_1003AF1FC(a1, isa);

  if (!v58)
  {
    v59 = [objc_allocWithZone(RAPDU) init];
    v60 = v108;
    v61 = v109;
    while (1)
    {
      v62 = v59;
      v63 = Data._bridgeToObjectiveC()().super.isa;
      v110 = 0;
      v59 = sub_1003AEB5C(v57, v63, &v110);

      v64 = v110;
      if (!v59)
      {
        break;
      }

      v65 = sub_1003B0934(v59);
      v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      a6(v66, v68);
      sub_10006A178(v66, v68);
      if (v6)
      {

        goto LABEL_141;
      }

      v69 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v69 != 2)
        {
          goto LABEL_166;
        }

        v72 = v61 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v60, v61);
        sub_10006A178(0, 0xC000000000000000);
        if (*(v60 + 16) > 3)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (*(v60 + 24) < 4)
        {
          goto LABEL_148;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = *(v60 + 16);
          v74 = *(v60 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v73, __DataStorage._offset.getter()))
            {
              goto LABEL_161;
            }

            if (__OFSUB__(v74, v73))
            {
              goto LABEL_158;
            }
          }

          else if (__OFSUB__(v74, v73))
          {
            goto LABEL_158;
          }

          v83 = type metadata accessor for __DataStorage();
          v84 = *(v83 + 48);
          v85 = *(v83 + 52);
          swift_allocObject();
          v86 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v72 = v86;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = *(v60 + 16);
          v88 = *(v60 + 24);
          type metadata accessor for Data.RangeReference();
          v89 = swift_allocObject();
          *(v89 + 16) = v87;
          *(v89 + 24) = v88;

          v60 = v89;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v90 = __DataStorage._bytes.getter();
        if (!v90)
        {
          goto LABEL_168;
        }

        v91 = v90;
        v92 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v92))
        {
          goto LABEL_150;
        }

        *(v91 + 3 - v92) = 3;
        v61 = v72 | 0x8000000000000000;
        v57 = a1;
      }

      else if (v69)
      {
        v75 = v61 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v60, v61);
        sub_10006A178(0, 0xC000000000000000);
        if (v60 >> 32 < 4 || v60 > 3)
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v60, __DataStorage._offset.getter()))
          {
            goto LABEL_160;
          }

          v76 = type metadata accessor for __DataStorage();
          v77 = *(v76 + 48);
          v78 = *(v76 + 52);
          swift_allocObject();
          v79 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v75 = v79;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v80 = __DataStorage._bytes.getter();
        if (!v80)
        {
          goto LABEL_167;
        }

        v81 = v80;
        v82 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v82))
        {
          goto LABEL_149;
        }

        *(v81 + 3 - v82) = 3;
        v61 = v75 | 0x4000000000000000;
        v57 = a1;
      }

      else
      {
        sub_10006A178(v60, v61);
        v70 = BYTE6(v61);
        if (BYTE6(v61) < 4uLL)
        {
          goto LABEL_146;
        }

        v60 = v60 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v71 = a4 & 0xF00000000000000 | v61 & 0xFFFFFFFFFFFFLL;
        v61 = v71 | (BYTE6(v61) << 48);
        a4 = v71 | (v70 << 48);
      }

      if (sub_1003B0984(v59) != 25360)
      {

        sub_10006A178(v60, v61);
        v94 = v8;
        v95 = v99;
        return sub_10006A178(v94, v95);
      }
    }

    v93 = v64;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_141:
    sub_10006A178(v60, v61);
    v19 = v99;
    goto LABEL_142;
  }

  swift_willThrow();
  sub_10006A178(v108, v109);
LABEL_142:
  v94 = v8;
  v95 = v19;
  return sub_10006A178(v94, v95);
}

uint64_t sub_10007D708(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v103 = xmmword_1004098D0;
  v8 = *(a5 + 16);
  if (v8)
  {
    v9 = (a5 + 32);
    v6 = 13403215;
    do
    {
      v12 = *(&v103 + 1) >> 62;
      if ((*(&v103 + 1) >> 62) <= 1)
      {
        if (v12)
        {
          LODWORD(v5) = DWORD1(v103);
        }

        else
        {
          LODWORD(v5) = BYTE14(v103);
        }
      }

      else if (v12 == 2)
      {
        v5 = *(v103 + 24);
      }

      else
      {
        LODWORD(v5) = 0;
      }

      v10 = *v9++;
      v11 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v101 = v11;
      v102 = sub_10007FBA8();
      LOBYTE(v99) = 0xCC844Fu >> (8 * v10);
      LOBYTE(v97) = *sub_1000752B0(&v99, v11);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v99);
      --v8;
    }

    while (v8);
  }

  v13 = (a4 >> 60);
  if (a4 >> 60 == 15)
  {
LABEL_12:
    i = 0;
    goto LABEL_13;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_25;
  }

  if (i)
  {
    goto LABEL_54;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_13:
      v15 = __OFADD__(i, 2);
      v16 = i + 2;
      if (v15)
      {
        goto LABEL_128;
      }

      v15 = __OFADD__(v16, 2);
      i = v16 + 2;
      if (v15)
      {
        goto LABEL_129;
      }

      v6 = v103;
      v5 = *(&v103 + 1) >> 62;
      v90 = *(&v103 + 1);
      if ((*(&v103 + 1) >> 62) <= 1)
      {
        if (!v5)
        {
          v17 = BYTE14(v103);
          break;
        }

        goto LABEL_29;
      }

      if (v5 != 2)
      {
        v17 = 0;
        break;
      }

      v19 = *(v103 + 16);
      v18 = *(v103 + 24);
      v15 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (!v15)
      {
        break;
      }

      __break(1u);
LABEL_25:
      if (i != 2)
      {
        goto LABEL_12;
      }

      v21 = *(a3 + 16);
      v20 = *(a3 + 24);
      v15 = __OFSUB__(v20, v21);
      i = v20 - v21;
      if (v15)
      {
        __break(1u);
LABEL_29:
        LODWORD(v17) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_139;
        }

        v17 = v17;
        break;
      }
    }

    v22 = i + v17;
    if (__OFADD__(i, v17))
    {
      goto LABEL_130;
    }

    if (__OFADD__(v22, 9))
    {
      goto LABEL_131;
    }

    v97 = sub_1001303A8(v22 + 9);
    v98 = v23;
    v94 = -20608;
    if (a2)
    {
      v24 = 64;
    }

    else
    {
      v24 = 16;
    }

    v95 = v24;
    v96 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_132;
    }

    if (v22 >> 16)
    {
      goto LABEL_133;
    }

    v92 = bswap32(v22) >> 16;
    v101 = &type metadata for UnsafeRawBufferPointer;
    v102 = &protocol witness table for UnsafeRawBufferPointer;
    v99 = &v92;
    v100 = v93;
    v25 = sub_1000752B0(&v99, &type metadata for UnsafeRawBufferPointer);
    v27 = *v25;
    v26 = v25[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v99);
    if ((v98 >> 62) > 1)
    {
      v28 = v90;
      if (v98 >> 62 == 2)
      {
        v29 = *(v97 + 24);
      }
    }

    else
    {
      v28 = v90;
    }

    v30 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v101 = v30;
    v31 = sub_10007FBA8();
    v102 = v31;
    LOBYTE(v99) = 79;
    LOBYTE(v92) = *sub_1000752B0(&v99, v30);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v99);
    if (v13 > 0xE)
    {
      break;
    }

    v32 = a4 >> 62;
    v13 = a1;
    if ((a4 >> 62) <= 1)
    {
      if (v32)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_142;
        }

        v33 = HIDWORD(a3) - a3;
LABEL_58:
        sub_100069E2C(a3, a4);
        if ((v33 & 0x8000000000000000) != 0)
        {
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v33 > 0xFF)
        {
          __break(1u);
          goto LABEL_61;
        }
      }

      else
      {
        v33 = HIWORD(a4);
      }

LABEL_63:
      if (v98 >> 62 == 2)
      {
        v37 = *(v97 + 24);
      }

      v101 = v30;
      v102 = v31;
      LOBYTE(v99) = v33;
      LOBYTE(v92) = *sub_1000752B0(&v99, v30);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v99);
      Data.append(_:)();
      sub_10006A2D0(a3, a4);
      goto LABEL_66;
    }

    if (v32 != 2)
    {
      LOBYTE(v33) = 0;
      goto LABEL_63;
    }

    v36 = *(a3 + 16);
    v35 = *(a3 + 24);
    v33 = v35 - v36;
    if (!__OFSUB__(v35, v36))
    {
      goto LABEL_58;
    }

    __break(1u);
LABEL_54:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_141;
    }
  }

  v13 = a1;
  if (v98 >> 62 == 2)
  {
    v34 = *(v97 + 24);
  }

LABEL_61:
  v101 = v30;
  v102 = v31;
  LOBYTE(v99) = 0;
  LOBYTE(v92) = *sub_1000752B0(&v99, v30);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v99);
LABEL_66:
  if (v98 >> 62 == 2)
  {
    v38 = *(v97 + 24);
  }

  v101 = v30;
  v102 = v31;
  LOBYTE(v99) = 92;
  LOBYTE(v92) = *sub_1000752B0(&v99, v30);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v99);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v39 = HIWORD(v28);
      goto LABEL_81;
    }

LABEL_75:
    LODWORD(v39) = HIDWORD(v6) - v6;
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      v39 = v39;
      goto LABEL_77;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
  }

  if (v5 != 2)
  {
LABEL_80:
    LOBYTE(v39) = 0;
    goto LABEL_81;
  }

  v41 = *(v6 + 16);
  v40 = *(v6 + 24);
  v15 = __OFSUB__(v40, v41);
  v39 = v40 - v41;
  if (v15)
  {
    __break(1u);
    goto LABEL_75;
  }

LABEL_77:
  if ((v39 & 0x8000000000000000) != 0)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v39 > 0xFF)
  {
    __break(1u);
    goto LABEL_80;
  }

LABEL_81:
  if (v98 >> 62 == 2)
  {
    v42 = *(v97 + 24);
  }

  v101 = v30;
  v102 = v31;
  LOBYTE(v99) = v39;
  LOBYTE(v92) = *sub_1000752B0(&v99, v30);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v99);
  Data.append(_:)();
  v92 = 0;
  v101 = &type metadata for UnsafeRawBufferPointer;
  v102 = &protocol witness table for UnsafeRawBufferPointer;
  v99 = &v92;
  v100 = v93;
  v43 = sub_1000752B0(&v99, &type metadata for UnsafeRawBufferPointer);
  v45 = *v43;
  v44 = v43[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v99);
  v46 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v47 >> 60 == 15)
  {
    goto LABEL_146;
  }

  v48 = v46;
  v49 = v47;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v48, v49);
  v51 = sub_1003AF1FC(v13, isa);

  if (v51)
  {
    swift_willThrow();
    sub_10006A178(v97, v98);
    return sub_10006A178(v6, v28);
  }

  v52 = [objc_allocWithZone(RAPDU) init];
  v54 = v97;
  v53 = v98;
  while (2)
  {
    v57 = v52;
    v58 = Data._bridgeToObjectiveC()().super.isa;
    v99 = 0;
    v52 = sub_1003AEB5C(v13, v58, &v99);

    v59 = v99;
    if (!v52)
    {
      v86 = v59;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10006A178(v54, v53);
      v28 = v90;
      return sub_10006A178(v6, v28);
    }

    v60 = sub_1003B0934(v52);
    v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    Data.append(_:)();
    sub_10006A178(v61, v63);
    v64 = v53 >> 62;
    if ((v53 >> 62) > 1)
    {
      if (v64 != 2)
      {
        goto LABEL_143;
      }

      v66 = v53 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10006A178(v54, v53);
      sub_10006A178(0, 0xC000000000000000);
      if (*(v54 + 16) > 3)
      {
        goto LABEL_123;
      }

      if (*(v54 + 24) < 4)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = *(v54 + 16);
        v68 = *(v54 + 24);
        if (__DataStorage._bytes.getter())
        {
          if (__OFSUB__(v67, __DataStorage._offset.getter()))
          {
            goto LABEL_137;
          }

          if (__OFSUB__(v68, v67))
          {
            goto LABEL_135;
          }
        }

        else if (__OFSUB__(v68, v67))
        {
          goto LABEL_135;
        }

        v76 = type metadata accessor for __DataStorage();
        v77 = *(v76 + 48);
        v78 = *(v76 + 52);
        swift_allocObject();
        v79 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v66 = v79;
        v13 = a1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = *(v54 + 16);
        v81 = *(v54 + 24);
        type metadata accessor for Data.RangeReference();
        v82 = swift_allocObject();
        *(v82 + 16) = v80;
        *(v82 + 24) = v81;
        v13 = a1;

        v54 = v82;
      }

      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
      v83 = __DataStorage._bytes.getter();
      if (!v83)
      {
        goto LABEL_145;
      }

      v84 = v83;
      v85 = __DataStorage._offset.getter();
      if (__OFSUB__(3, v85))
      {
        goto LABEL_127;
      }

      *(v84 + 3 - v85) = 3;
      v53 = v66 | 0x8000000000000000;
      goto LABEL_89;
    }

    if (!v64)
    {
      sub_10006A178(v54, v53);
      v55 = BYTE6(v53);
      if (BYTE6(v53) >= 4uLL)
      {
        v54 = v54 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v56 = v28 & 0xF00000000000000 | v53 & 0xFFFFFFFFFFFFLL;
        v53 = v56 | (BYTE6(v53) << 48);
        v28 = v56 | (v55 << 48);
        goto LABEL_89;
      }

      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v65 = v53 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10006A178(v54, v53);
    sub_10006A178(0, 0xC000000000000000);
    if (v54 >> 32 < 4 || v54 > 3)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(v54, __DataStorage._offset.getter()))
      {
        goto LABEL_136;
      }

      v69 = type metadata accessor for __DataStorage();
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      swift_allocObject();
      v72 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v65 = v72;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
    v73 = __DataStorage._bytes.getter();
    if (!v73)
    {
      goto LABEL_144;
    }

    v74 = v73;
    v75 = __DataStorage._offset.getter();
    v13 = a1;
    if (__OFSUB__(3, v75))
    {
      goto LABEL_126;
    }

    *(v74 + 3 - v75) = 3;
    v53 = v65 | 0x4000000000000000;
LABEL_89:
    if (sub_1003B0984(v52) == 25360)
    {
      continue;
    }

    break;
  }

  sub_10006A178(v54, v53);
  return sub_10006A178(v6, v90);
}

uint64_t sub_10007E228(void *a1, char a2, unint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t))
{
  v107 = xmmword_1004098D0;
  v8 = *(a5 + 16);
  if (v8)
  {
    v7 = (a5 + 32);
    do
    {
      if (*(&v107 + 1) >> 62 == 2)
      {
        v11 = *(v107 + 24);
      }

      v9 = *v7++;
      v10 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v105 = v10;
      v106 = sub_10007FBA8();
      LOBYTE(v103) = 0xCC844Fu >> (8 * v9);
      LOBYTE(v101) = *sub_1000752B0(&v103, v10);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v103);
      --v8;
    }

    while (v8);
  }

  v12 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
LABEL_7:
    i = 0;
    goto LABEL_8;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_20;
  }

  if (i)
  {
    goto LABEL_47;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_8:
      v14 = __OFADD__(i, 2);
      v15 = i + 2;
      if (v14)
      {
        goto LABEL_124;
      }

      v14 = __OFADD__(v15, 2);
      i = v15 + 2;
      if (v14)
      {
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v92 = *(&v107 + 1);
      v7 = v107;
      v8 = *(&v107 + 1) >> 62;
      if ((*(&v107 + 1) >> 62) <= 1)
      {
        if (!v8)
        {
          v16 = BYTE14(v107);
          break;
        }

        goto LABEL_24;
      }

      if (v8 != 2)
      {
        v16 = 0;
        break;
      }

      v18 = *(v107 + 16);
      v17 = *(v107 + 24);
      v14 = __OFSUB__(v17, v18);
      v16 = v17 - v18;
      if (!v14)
      {
        break;
      }

      __break(1u);
LABEL_20:
      if (i != 2)
      {
        goto LABEL_7;
      }

      v20 = *(a3 + 16);
      v19 = *(a3 + 24);
      v14 = __OFSUB__(v19, v20);
      i = v19 - v20;
      if (v14)
      {
        __break(1u);
LABEL_24:
        LODWORD(v16) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_135;
        }

        v16 = v16;
        break;
      }
    }

    v21 = i + v16;
    if (__OFADD__(i, v16))
    {
      goto LABEL_126;
    }

    if (__OFADD__(v21, 9))
    {
      goto LABEL_127;
    }

    v101 = sub_1001303A8(v21 + 9);
    v102 = v22;
    v98 = -20608;
    if (a2)
    {
      v23 = 64;
    }

    else
    {
      v23 = 16;
    }

    v99 = v23;
    v100 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_128;
    }

    if (v21 >> 16)
    {
      goto LABEL_129;
    }

    v96 = bswap32(v21) >> 16;
    v105 = &type metadata for UnsafeRawBufferPointer;
    v106 = &protocol witness table for UnsafeRawBufferPointer;
    v103 = &v96;
    v104 = v97;
    v24 = sub_1000752B0(&v103, &type metadata for UnsafeRawBufferPointer);
    v26 = *v24;
    v25 = v24[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v103);
    if (v102 >> 62 == 2)
    {
      v27 = *(v101 + 24);
    }

    v28 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v105 = v28;
    v29 = sub_10007FBA8();
    v106 = v29;
    LOBYTE(v103) = 79;
    LOBYTE(v96) = *sub_1000752B0(&v103, v28);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v103);
    if (v12 > 0xE)
    {
      break;
    }

    v30 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      v12 = a3;
      if (v30)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_138;
        }

        v31 = HIDWORD(a3) - a3;
LABEL_51:
        sub_100069E2C(v12, a4);
        if ((v31 & 0x8000000000000000) != 0)
        {
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v31 > 0xFF)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
        v31 = HIWORD(a4);
      }

LABEL_56:
      if (v102 >> 62 == 2)
      {
        v35 = *(v101 + 24);
      }

      v105 = v28;
      v106 = v29;
      LOBYTE(v103) = v31;
      LOBYTE(v96) = *sub_1000752B0(&v103, v28);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v103);
      Data.append(_:)();
      sub_10006A2D0(v12, a4);
      goto LABEL_59;
    }

    v12 = a3;
    if (v30 != 2)
    {
      LOBYTE(v31) = 0;
      goto LABEL_56;
    }

    v34 = *(a3 + 16);
    v33 = *(a3 + 24);
    v31 = v33 - v34;
    if (!__OFSUB__(v33, v34))
    {
      goto LABEL_51;
    }

    __break(1u);
LABEL_47:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_137;
    }
  }

  if (v102 >> 62 == 2)
  {
    v32 = *(v101 + 24);
  }

LABEL_54:
  v105 = v28;
  v106 = v29;
  LOBYTE(v103) = 0;
  LOBYTE(v96) = *sub_1000752B0(&v103, v28);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v103);
LABEL_59:
  if (v102 >> 62 == 2)
  {
    v36 = *(v101 + 24);
  }

  v105 = v28;
  v106 = v29;
  LOBYTE(v103) = 92;
  LOBYTE(v96) = *sub_1000752B0(&v103, v28);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v103);
  if (v8 <= 1)
  {
    if (!v8)
    {
      v37 = v92;
      v38 = HIWORD(v92);
      goto LABEL_74;
    }

LABEL_68:
    LODWORD(v38) = HIDWORD(v7) - v7;
    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      v38 = v38;
      v37 = v92;
      goto LABEL_70;
    }

LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
  }

  if (v8 != 2)
  {
LABEL_73:
    LOBYTE(v38) = 0;
    v37 = v92;
    goto LABEL_74;
  }

  v40 = *(v7 + 2);
  v39 = *(v7 + 3);
  v14 = __OFSUB__(v39, v40);
  v38 = v39 - v40;
  v37 = v92;
  if (v14)
  {
    __break(1u);
    goto LABEL_68;
  }

LABEL_70:
  if ((v38 & 0x8000000000000000) != 0)
  {
    goto LABEL_130;
  }

  if (v38 > 0xFF)
  {
    __break(1u);
    goto LABEL_73;
  }

LABEL_74:
  if (v102 >> 62 == 2)
  {
    v41 = *(v101 + 24);
  }

  v105 = v28;
  v106 = v29;
  LOBYTE(v103) = v38;
  LOBYTE(v96) = *sub_1000752B0(&v103, v28);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v103);
  Data.append(_:)();
  v96 = 0;
  v105 = &type metadata for UnsafeRawBufferPointer;
  v106 = &protocol witness table for UnsafeRawBufferPointer;
  v103 = &v96;
  v104 = v97;
  v42 = sub_1000752B0(&v103, &type metadata for UnsafeRawBufferPointer);
  v44 = *v42;
  v43 = v42[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v103);
  v45 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v46 >> 60 == 15)
  {
    goto LABEL_142;
  }

  v47 = v45;
  v48 = v46;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v47, v48);
  v50 = sub_1003AF1FC(a1, isa);

  if (!v50)
  {
    v91 = v7;
    v51 = [objc_allocWithZone(RAPDU) init];
    v53 = v101;
    v52 = v102;
    while (1)
    {
      v54 = v51;
      v55 = Data._bridgeToObjectiveC()().super.isa;
      v103 = 0;
      v51 = sub_1003AEB5C(a1, v55, &v103);

      v56 = v103;
      if (!v51)
      {
        break;
      }

      v57 = sub_1003B0934(v51);
      v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      a6(v58, v60);
      sub_10006A178(v58, v60);
      if (v6)
      {

        goto LABEL_114;
      }

      v61 = v52 >> 62;
      if ((v52 >> 62) > 1)
      {
        if (v61 != 2)
        {
          goto LABEL_139;
        }

        v64 = v52 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v53, v52);
        sub_10006A178(0, 0xC000000000000000);
        if (*(v53 + 16) > 3)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (*(v53 + 24) < 4)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = *(v53 + 16);
          v66 = *(v53 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v65, __DataStorage._offset.getter()))
            {
              goto LABEL_134;
            }

            if (__OFSUB__(v66, v65))
            {
              goto LABEL_131;
            }
          }

          else if (__OFSUB__(v66, v65))
          {
            goto LABEL_131;
          }

          v75 = type metadata accessor for __DataStorage();
          v76 = *(v75 + 48);
          v77 = *(v75 + 52);
          swift_allocObject();
          v78 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v64 = v78;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = *(v53 + 16);
          v80 = *(v53 + 24);
          type metadata accessor for Data.RangeReference();
          v81 = swift_allocObject();
          *(v81 + 16) = v79;
          *(v81 + 24) = v80;

          v53 = v81;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v82 = __DataStorage._bytes.getter();
        if (!v82)
        {
          goto LABEL_141;
        }

        v83 = v82;
        v84 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v84))
        {
          goto LABEL_123;
        }

        *(v83 + 3 - v84) = 3;
        v52 = v64 | 0x8000000000000000;
      }

      else if (v61)
      {
        v67 = v52 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v53, v52);
        sub_10006A178(0, 0xC000000000000000);
        if (v53 >> 32 < 4 || v53 > 3)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v53, __DataStorage._offset.getter()))
          {
            goto LABEL_133;
          }

          v68 = type metadata accessor for __DataStorage();
          v69 = *(v68 + 48);
          v70 = *(v68 + 52);
          swift_allocObject();
          v71 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v67 = v71;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v72 = __DataStorage._bytes.getter();
        if (!v72)
        {
          goto LABEL_140;
        }

        v73 = v72;
        v74 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v74))
        {
          goto LABEL_122;
        }

        *(v73 + 3 - v74) = 3;
        v52 = v67 | 0x4000000000000000;
      }

      else
      {
        sub_10006A178(v53, v52);
        v62 = BYTE6(v52);
        if (BYTE6(v52) < 4uLL)
        {
          goto LABEL_119;
        }

        v53 = v53 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v63 = a4 & 0xF00000000000000 | v52 & 0xFFFFFFFFFFFFLL;
        v52 = v63 | (BYTE6(v52) << 48);
        a4 = v63 | (v62 << 48);
      }

      if (sub_1003B0984(v51) != 25360)
      {

        sub_10006A178(v53, v52);
        v86 = v91;
        v87 = v92;
        return sub_10006A178(v86, v87);
      }
    }

    v85 = v56;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_114:
    sub_10006A178(v53, v52);
    v7 = v91;
    v37 = v92;
    goto LABEL_115;
  }

  swift_willThrow();
  sub_10006A178(v101, v102);
LABEL_115:
  v86 = v7;
  v87 = v37;
  return sub_10006A178(v86, v87);
}

void sub_10007EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10006928C();
  if (qword_100501D80 != -1)
  {
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  if ((v17 & 1) != 0 || v16 != 0x534F534543555245)
  {
    v15 = sub_1003AF3D8(a4);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    a8(a4, a7, a1, a2, a3, a5);
  }
}

uint64_t sub_10007EF98(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, size_t *a7)
{
  v114 = xmmword_1004098D0;
  v9 = *(a5 + 16);
  if (v9)
  {
    v10 = (a5 + 32);
    v8 = &v108 + 2;
    while (1)
    {
      v13 = *v10++;
      v12 = v13;
      if (v13 > 4)
      {
        if (v12 <= 6)
        {
          if (v12 == 5)
          {
            v14 = -96;
          }

          else
          {
            v14 = -92;
          }
        }

        else if (v12 == 7)
        {
          v14 = -91;
        }

        else if (v12 == 8)
        {
          v14 = -59;
        }

        else
        {
          v14 = -38;
        }

        goto LABEL_24;
      }

      if (v12 <= 1)
      {
        if (v12)
        {
          v14 = -124;
        }

        else
        {
          v14 = 79;
        }

        goto LABEL_24;
      }

      if (v12 == 2)
      {
        break;
      }

      if (v12 == 3)
      {
        v14 = -52;
LABEL_24:
        if (*(&v114 + 1) >> 62 == 2)
        {
          v18 = *(v114 + 24);
        }

        v11 = sub_100068FC4(&qword_100502608, &qword_100409A28);
        v112 = v11;
        v113 = sub_10007FBA8();
        LOBYTE(v110) = v14;
        LOBYTE(v108) = *sub_1000752B0(&v110, v11);
        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_4;
      }

      LOWORD(v108) = 28831;
      v112 = &type metadata for UnsafeRawBufferPointer;
      v113 = &protocol witness table for UnsafeRawBufferPointer;
      v110 = &v108;
      v111 = &v108 + 2;
      v15 = sub_1000752B0(&v110, &type metadata for UnsafeRawBufferPointer);
      v17 = *v15;
      v16 = v15[1];
      Data._Representation.append(contentsOf:)();
LABEL_4:
      sub_1000752F4(&v110);
      if (!--v9)
      {
        goto LABEL_26;
      }
    }

    v14 = -60;
    goto LABEL_24;
  }

LABEL_26:
  if (a4 >> 60 == 15)
  {
LABEL_27:
    i = 0;
    goto LABEL_28;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_40;
  }

  if (i)
  {
    goto LABEL_67;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_28:
      v20 = __OFADD__(i, 2);
      v21 = i + 2;
      if (v20)
      {
        goto LABEL_144;
      }

      v20 = __OFADD__(v21, 2);
      i = v21 + 2;
      if (v20)
      {
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      v99 = *(&v114 + 1);
      v8 = v114;
      v9 = *(&v114 + 1) >> 62;
      if ((*(&v114 + 1) >> 62) <= 1)
      {
        if (!v9)
        {
          v22 = BYTE14(v114);
          break;
        }

        goto LABEL_44;
      }

      if (v9 != 2)
      {
        v22 = 0;
        break;
      }

      v24 = *(v114 + 16);
      v23 = *(v114 + 24);
      v20 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (!v20)
      {
        break;
      }

      __break(1u);
LABEL_40:
      if (i != 2)
      {
        goto LABEL_27;
      }

      v26 = *(a3 + 16);
      v25 = *(a3 + 24);
      v20 = __OFSUB__(v25, v26);
      i = v25 - v26;
      if (v20)
      {
        __break(1u);
LABEL_44:
        LODWORD(v22) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_155;
        }

        v22 = v22;
        break;
      }
    }

    v27 = i + v22;
    if (__OFADD__(i, v22))
    {
      goto LABEL_146;
    }

    if (__OFADD__(v27, 9))
    {
      goto LABEL_147;
    }

    v108 = sub_1001303A8(v27 + 9);
    v109 = v28;
    v105 = -20608;
    if (a2)
    {
      v29 = 64;
    }

    else
    {
      v29 = 16;
    }

    v106 = v29;
    v107 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_148;
    }

    if (v27 >> 16)
    {
      goto LABEL_149;
    }

    v103 = bswap32(v27) >> 16;
    v112 = &type metadata for UnsafeRawBufferPointer;
    v113 = &protocol witness table for UnsafeRawBufferPointer;
    v110 = &v103;
    v111 = v104;
    v30 = sub_1000752B0(&v110, &type metadata for UnsafeRawBufferPointer);
    v32 = *v30;
    v31 = v30[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v110);
    if (v109 >> 62 == 2)
    {
      v33 = *(v108 + 24);
    }

    v34 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v112 = v34;
    v35 = sub_10007FBA8();
    v113 = v35;
    LOBYTE(v110) = 79;
    LOBYTE(v103) = *sub_1000752B0(&v110, v34);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v110);
    if (a4 >> 60 == 15)
    {
      break;
    }

    v36 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (v36)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_158;
        }

        v37 = HIDWORD(a3) - a3;
LABEL_71:
        sub_100069E2C(a3, a4);
        if ((v37 & 0x8000000000000000) != 0)
        {
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (v37 > 0xFF)
        {
          __break(1u);
          goto LABEL_74;
        }
      }

      else
      {
        v37 = HIWORD(a4);
      }

LABEL_76:
      if (v109 >> 62 == 2)
      {
        v41 = *(v108 + 24);
      }

      v112 = v34;
      v113 = v35;
      LOBYTE(v110) = v37;
      LOBYTE(v103) = *sub_1000752B0(&v110, v34);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v110);
      Data.append(_:)();
      sub_10006A2D0(a3, a4);
      goto LABEL_79;
    }

    if (v36 != 2)
    {
      LOBYTE(v37) = 0;
      goto LABEL_76;
    }

    v40 = *(a3 + 16);
    v39 = *(a3 + 24);
    v37 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
      goto LABEL_71;
    }

    __break(1u);
LABEL_67:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_157;
    }
  }

  if (v109 >> 62 == 2)
  {
    v38 = *(v108 + 24);
  }

LABEL_74:
  v112 = v34;
  v113 = v35;
  LOBYTE(v110) = 0;
  LOBYTE(v103) = *sub_1000752B0(&v110, v34);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v110);
LABEL_79:
  if (v109 >> 62 == 2)
  {
    v42 = *(v108 + 24);
  }

  v112 = v34;
  v113 = v35;
  LOBYTE(v110) = 92;
  LOBYTE(v103) = *sub_1000752B0(&v110, v34);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v110);
  if (v9 <= 1)
  {
    if (!v9)
    {
      v43 = v99;
      v44 = HIWORD(v99);
      goto LABEL_94;
    }

LABEL_88:
    LODWORD(v44) = HIDWORD(v8) - v8;
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      v44 = v44;
      v43 = v99;
      goto LABEL_90;
    }

LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
  }

  if (v9 != 2)
  {
LABEL_93:
    LOBYTE(v44) = 0;
    v43 = v99;
    goto LABEL_94;
  }

  v46 = *(v8 + 2);
  v45 = *(v8 + 3);
  v20 = __OFSUB__(v45, v46);
  v44 = v45 - v46;
  v43 = v99;
  if (v20)
  {
    __break(1u);
    goto LABEL_88;
  }

LABEL_90:
  if ((v44 & 0x8000000000000000) != 0)
  {
    goto LABEL_150;
  }

  if (v44 > 0xFF)
  {
    __break(1u);
    goto LABEL_93;
  }

LABEL_94:
  if (v109 >> 62 == 2)
  {
    v47 = *(v108 + 24);
  }

  v112 = v34;
  v113 = v35;
  LOBYTE(v110) = v44;
  LOBYTE(v103) = *sub_1000752B0(&v110, v34);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v110);
  Data.append(_:)();
  v103 = 0;
  v112 = &type metadata for UnsafeRawBufferPointer;
  v113 = &protocol witness table for UnsafeRawBufferPointer;
  v110 = &v103;
  v111 = v104;
  v48 = sub_1000752B0(&v110, &type metadata for UnsafeRawBufferPointer);
  v50 = *v48;
  v49 = v48[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v110);
  v51 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v52 >> 60 == 15)
  {
    goto LABEL_162;
  }

  v53 = v51;
  v54 = v52;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v53, v54);
  v56 = a1;
  v57 = sub_1003AF1FC(a1, isa);

  if (!v57)
  {
    v58 = [objc_allocWithZone(RAPDU) init];
    v60 = v108;
    v59 = v109;
    while (1)
    {
      v61 = v58;
      v62 = Data._bridgeToObjectiveC()().super.isa;
      v110 = 0;
      v58 = sub_1003AEB5C(v56, v62, &v110);

      v63 = v110;
      if (!v58)
      {
        break;
      }

      v64 = sub_1003B0934(v58);
      v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      sub_1002D5ECC(v65, v67, a6, a7);
      sub_10006A178(v65, v67);
      if (v7)
      {

        goto LABEL_134;
      }

      v68 = v59 >> 62;
      if ((v59 >> 62) > 1)
      {
        if (v68 != 2)
        {
          goto LABEL_159;
        }

        v71 = v59 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v60, v59);
        sub_10006A178(0, 0xC000000000000000);
        if (*(v60 + 16) > 3)
        {
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (*(v60 + 24) < 4)
        {
          goto LABEL_141;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = *(v60 + 16);
          v72 = *(v60 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v73, __DataStorage._offset.getter()))
            {
              goto LABEL_154;
            }

            if (__OFSUB__(v72, v73))
            {
              goto LABEL_151;
            }
          }

          else if (__OFSUB__(v72, v73))
          {
            goto LABEL_151;
          }

          v82 = type metadata accessor for __DataStorage();
          v83 = *(v82 + 48);
          v84 = *(v82 + 52);
          swift_allocObject();
          v85 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v71 = v85;
          v56 = a1;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = *(v60 + 16);
          v87 = *(v60 + 24);
          type metadata accessor for Data.RangeReference();
          v88 = swift_allocObject();
          *(v88 + 16) = v86;
          *(v88 + 24) = v87;

          v60 = v88;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v89 = __DataStorage._bytes.getter();
        if (!v89)
        {
          goto LABEL_161;
        }

        v90 = v89;
        v91 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v91))
        {
          goto LABEL_143;
        }

        *(v90 + 3 - v91) = 3;
        v59 = v71 | 0x8000000000000000;
      }

      else if (v68)
      {
        v74 = v59 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v60, v59);
        sub_10006A178(0, 0xC000000000000000);
        if (v60 >> 32 < 4 || v60 > 3)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v60, __DataStorage._offset.getter()))
          {
            goto LABEL_153;
          }

          v75 = type metadata accessor for __DataStorage();
          v76 = *(v75 + 48);
          v77 = *(v75 + 52);
          swift_allocObject();
          v78 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v74 = v78;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v79 = __DataStorage._bytes.getter();
        if (!v79)
        {
          goto LABEL_160;
        }

        v80 = v79;
        v81 = __DataStorage._offset.getter();
        v56 = a1;
        if (__OFSUB__(3, v81))
        {
          goto LABEL_142;
        }

        *(v80 + 3 - v81) = 3;
        v59 = v74 | 0x4000000000000000;
      }

      else
      {
        sub_10006A178(v60, v59);
        v69 = BYTE6(v59);
        if (BYTE6(v59) < 4uLL)
        {
          goto LABEL_139;
        }

        v60 = v60 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v70 = a4 & 0xF00000000000000 | v59 & 0xFFFFFFFFFFFFLL;
        v59 = v70 | (BYTE6(v59) << 48);
        a4 = v70 | (v69 << 48);
      }

      if (sub_1003B0984(v58) != 25360)
      {

        sub_10006A178(v60, v59);
        v93 = v8;
        v94 = v99;
        return sub_10006A178(v93, v94);
      }
    }

    v92 = v63;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_134:
    sub_10006A178(v60, v59);
    v43 = v99;
    goto LABEL_135;
  }

  swift_willThrow();
  sub_10006A178(v108, v109);
LABEL_135:
  v93 = v8;
  v94 = v43;
  return sub_10006A178(v93, v94);
}

unint64_t sub_10007FBA8()
{
  result = qword_100502610;
  if (!qword_100502610)
  {
    sub_1000692D8(&qword_100502608, &qword_100409A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502610);
  }

  return result;
}

unint64_t sub_10007FC0C()
{
  result = qword_100502618;
  if (!qword_100502618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502618);
  }

  return result;
}

uint64_t sub_10007FC60(void *a1, char a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void **a7)
{
  v109 = xmmword_1004098D0;
  v9 = *(a5 + 16);
  if (v9)
  {
    v8 = (a5 + 32);
    do
    {
      if (*(&v109 + 1) >> 62 == 2)
      {
        v12 = *(v109 + 24);
      }

      v10 = *v8++;
      v11 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v107 = v11;
      v108 = sub_10007FBA8();
      LOBYTE(v105) = 0xCC844Fu >> (8 * v10);
      LOBYTE(v103) = *sub_1000752B0(&v105, v11);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v105);
      --v9;
    }

    while (v9);
  }

  v13 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
LABEL_7:
    i = 0;
    goto LABEL_8;
  }

  i = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_20;
  }

  if (i)
  {
    goto LABEL_47;
  }

  for (i = BYTE6(a4); ; i = i)
  {
    while (1)
    {
LABEL_8:
      v15 = __OFADD__(i, 2);
      v16 = i + 2;
      if (v15)
      {
        goto LABEL_124;
      }

      v15 = __OFADD__(v16, 2);
      i = v16 + 2;
      if (v15)
      {
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v93 = *(&v109 + 1);
      v8 = v109;
      v9 = *(&v109 + 1) >> 62;
      if ((*(&v109 + 1) >> 62) <= 1)
      {
        if (!v9)
        {
          v17 = BYTE14(v109);
          break;
        }

        goto LABEL_24;
      }

      if (v9 != 2)
      {
        v17 = 0;
        break;
      }

      v19 = *(v109 + 16);
      v18 = *(v109 + 24);
      v15 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (!v15)
      {
        break;
      }

      __break(1u);
LABEL_20:
      if (i != 2)
      {
        goto LABEL_7;
      }

      v21 = *(a3 + 16);
      v20 = *(a3 + 24);
      v15 = __OFSUB__(v20, v21);
      i = v20 - v21;
      if (v15)
      {
        __break(1u);
LABEL_24:
        LODWORD(v17) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_135;
        }

        v17 = v17;
        break;
      }
    }

    v22 = i + v17;
    if (__OFADD__(i, v17))
    {
      goto LABEL_126;
    }

    if (__OFADD__(v22, 9))
    {
      goto LABEL_127;
    }

    v103 = sub_1001303A8(v22 + 9);
    v104 = v23;
    v100 = -20608;
    if (a2)
    {
      v24 = 64;
    }

    else
    {
      v24 = 16;
    }

    v101 = v24;
    v102 = 2;
    Data._Representation.append(contentsOf:)();
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_128;
    }

    if (v22 >> 16)
    {
      goto LABEL_129;
    }

    v98 = bswap32(v22) >> 16;
    v107 = &type metadata for UnsafeRawBufferPointer;
    v108 = &protocol witness table for UnsafeRawBufferPointer;
    v105 = &v98;
    v106 = v99;
    v25 = sub_1000752B0(&v105, &type metadata for UnsafeRawBufferPointer);
    v27 = *v25;
    v26 = v25[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v105);
    if (v104 >> 62 == 2)
    {
      v28 = *(v103 + 24);
    }

    v29 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v107 = v29;
    v30 = sub_10007FBA8();
    v108 = v30;
    LOBYTE(v105) = 79;
    LOBYTE(v98) = *sub_1000752B0(&v105, v29);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v105);
    if (v13 > 0xE)
    {
      break;
    }

    v31 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      v13 = a3;
      if (v31)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_138;
        }

        v32 = HIDWORD(a3) - a3;
LABEL_51:
        sub_100069E2C(v13, a4);
        if ((v32 & 0x8000000000000000) != 0)
        {
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v32 > 0xFF)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
        v32 = HIWORD(a4);
      }

LABEL_56:
      if (v104 >> 62 == 2)
      {
        v36 = *(v103 + 24);
      }

      v107 = v29;
      v108 = v30;
      LOBYTE(v105) = v32;
      LOBYTE(v98) = *sub_1000752B0(&v105, v29);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(&v105);
      Data.append(_:)();
      sub_10006A2D0(v13, a4);
      goto LABEL_59;
    }

    v13 = a3;
    if (v31 != 2)
    {
      LOBYTE(v32) = 0;
      goto LABEL_56;
    }

    v35 = *(a3 + 16);
    v34 = *(a3 + 24);
    v32 = v34 - v35;
    if (!__OFSUB__(v34, v35))
    {
      goto LABEL_51;
    }

    __break(1u);
LABEL_47:
    LODWORD(i) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_137;
    }
  }

  if (v104 >> 62 == 2)
  {
    v33 = *(v103 + 24);
  }

LABEL_54:
  v107 = v29;
  v108 = v30;
  LOBYTE(v105) = 0;
  LOBYTE(v98) = *sub_1000752B0(&v105, v29);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v105);
LABEL_59:
  if (v104 >> 62 == 2)
  {
    v37 = *(v103 + 24);
  }

  v107 = v29;
  v108 = v30;
  LOBYTE(v105) = 92;
  LOBYTE(v98) = *sub_1000752B0(&v105, v29);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v105);
  if (v9 <= 1)
  {
    if (!v9)
    {
      v38 = v93;
      v39 = HIWORD(v93);
      goto LABEL_74;
    }

LABEL_68:
    LODWORD(v39) = HIDWORD(v8) - v8;
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      v39 = v39;
      v38 = v93;
      goto LABEL_70;
    }

LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
  }

  if (v9 != 2)
  {
LABEL_73:
    LOBYTE(v39) = 0;
    v38 = v93;
    goto LABEL_74;
  }

  v41 = *(v8 + 2);
  v40 = *(v8 + 3);
  v15 = __OFSUB__(v40, v41);
  v39 = v40 - v41;
  v38 = v93;
  if (v15)
  {
    __break(1u);
    goto LABEL_68;
  }

LABEL_70:
  if ((v39 & 0x8000000000000000) != 0)
  {
    goto LABEL_130;
  }

  if (v39 > 0xFF)
  {
    __break(1u);
    goto LABEL_73;
  }

LABEL_74:
  if (v104 >> 62 == 2)
  {
    v42 = *(v103 + 24);
  }

  v107 = v29;
  v108 = v30;
  LOBYTE(v105) = v39;
  LOBYTE(v98) = *sub_1000752B0(&v105, v29);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v105);
  Data.append(_:)();
  v98 = 0;
  v107 = &type metadata for UnsafeRawBufferPointer;
  v108 = &protocol witness table for UnsafeRawBufferPointer;
  v105 = &v98;
  v106 = v99;
  v43 = sub_1000752B0(&v105, &type metadata for UnsafeRawBufferPointer);
  v45 = *v43;
  v44 = v43[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v105);
  v46 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v47 >> 60 == 15)
  {
    goto LABEL_142;
  }

  v48 = v46;
  v49 = v47;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v48, v49);
  v51 = sub_1003AF1FC(a1, isa);

  if (!v51)
  {
    v92 = v8;
    v52 = [objc_allocWithZone(RAPDU) init];
    v54 = v103;
    v53 = v104;
    while (1)
    {
      v55 = v52;
      v56 = Data._bridgeToObjectiveC()().super.isa;
      v105 = 0;
      v52 = sub_1003AEB5C(a1, v56, &v105);

      v57 = v105;
      if (!v52)
      {
        break;
      }

      v58 = sub_1003B0934(v52);
      v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      sub_1002D7C5C(v59, v61, a6, a7);
      sub_10006A178(v59, v61);
      if (v7)
      {

        goto LABEL_114;
      }

      v62 = v53 >> 62;
      if ((v53 >> 62) > 1)
      {
        if (v62 != 2)
        {
          goto LABEL_139;
        }

        v65 = v53 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v54, v53);
        sub_10006A178(0, 0xC000000000000000);
        if (*(v54 + 16) > 3)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (*(v54 + 24) < 4)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = *(v54 + 16);
          v67 = *(v54 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v66, __DataStorage._offset.getter()))
            {
              goto LABEL_134;
            }

            if (__OFSUB__(v67, v66))
            {
              goto LABEL_131;
            }
          }

          else if (__OFSUB__(v67, v66))
          {
            goto LABEL_131;
          }

          v76 = type metadata accessor for __DataStorage();
          v77 = *(v76 + 48);
          v78 = *(v76 + 52);
          swift_allocObject();
          v79 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v65 = v79;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = *(v54 + 16);
          v81 = *(v54 + 24);
          type metadata accessor for Data.RangeReference();
          v82 = swift_allocObject();
          *(v82 + 16) = v80;
          *(v82 + 24) = v81;

          v54 = v82;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v83 = __DataStorage._bytes.getter();
        if (!v83)
        {
          goto LABEL_141;
        }

        v84 = v83;
        v85 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v85))
        {
          goto LABEL_123;
        }

        *(v84 + 3 - v85) = 3;
        v53 = v65 | 0x8000000000000000;
      }

      else if (v62)
      {
        v68 = v53 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v54, v53);
        sub_10006A178(0, 0xC000000000000000);
        if (v54 >> 32 < 4 || v54 > 3)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v54, __DataStorage._offset.getter()))
          {
            goto LABEL_133;
          }

          v69 = type metadata accessor for __DataStorage();
          v70 = *(v69 + 48);
          v71 = *(v69 + 52);
          swift_allocObject();
          v72 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v68 = v72;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v73 = __DataStorage._bytes.getter();
        if (!v73)
        {
          goto LABEL_140;
        }

        v74 = v73;
        v75 = __DataStorage._offset.getter();
        if (__OFSUB__(3, v75))
        {
          goto LABEL_122;
        }

        *(v74 + 3 - v75) = 3;
        v53 = v68 | 0x4000000000000000;
      }

      else
      {
        sub_10006A178(v54, v53);
        v63 = BYTE6(v53);
        if (BYTE6(v53) < 4uLL)
        {
          goto LABEL_119;
        }

        v54 = v54 & 0xFFFFFFFF00FFFFFFLL | 0x3000000;
        v64 = a4 & 0xF00000000000000 | v53 & 0xFFFFFFFFFFFFLL;
        v53 = v64 | (BYTE6(v53) << 48);
        a4 = v64 | (v63 << 48);
      }

      if (sub_1003B0984(v52) != 25360)
      {

        sub_10006A178(v54, v53);
        v87 = v92;
        v88 = v93;
        return sub_10006A178(v87, v88);
      }
    }

    v86 = v57;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_114:
    sub_10006A178(v54, v53);
    v8 = v92;
    v38 = v93;
    goto LABEL_115;
  }

  swift_willThrow();
  sub_10006A178(v103, v104);
LABEL_115:
  v87 = v8;
  v88 = v38;
  return sub_10006A178(v87, v88);
}

uint64_t sub_100080830(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100080874(int64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_6;
  }

  if (*(v1 + 16) != 1)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not running", v22, 2u);
    }

LABEL_28:

    return;
  }

  if (qword_1005018E8 != -1)
  {
    goto LABEL_33;
  }

LABEL_6:
  v11 = *(qword_10051B168 + OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
    if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) >= 2u)
    {
      v26 = v11;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Initiate access protocol already called for this peer; do nothing", v29, 2u);
      }
    }

    else
    {
      v13 = v11;
      v14 = [v13 asData];
      if (v14)
      {
        v15 = v14;
        v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10006A178(v16, v18);
      }

      else
      {
        v19.super.isa = 0;
      }

      v30 = [objc_opt_self() TLVWithTag:0 value:v19.super.isa];

      if (v30)
      {
        v31 = [v30 asData];

        if (v31)
        {
          v42 = v13;
          v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          if (qword_1005018F8 != -1)
          {
            swift_once();
          }

          v35 = sub_100090A8C(2, 5, v32, v34);
          v37 = v36;
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E71A0(v35, v37, a1);
          if (!v2)
          {
            sub_100081838(0, 0xD000000000000016, 0x8000000100461FD0, a1);

            sub_10006A178(v35, v37);
            sub_10006A178(v32, v34);
            *(a1 + v12) = 2;
            return;
          }

          v20 = v42;
          sub_10006A178(v35, v37);
          sub_10006A178(v32, v34);
          goto LABEL_28;
        }

        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Could not generate initiate access data payload", v40, 2u);
        }

        sub_100080E48(a1, 0);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Initiate access protocol data not yet cached", v25, 2u);
    }

    sub_100080E48(a1, 0);
  }
}

void sub_100080E48(int64_t a1, __int16 a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchTime();
  v44 = *(v49 - 8);
  v12 = *(v44 + 64);
  v13 = __chkstk_darwin(v49);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v23 = qword_10051B7F0;
  *v22 = qword_10051B7F0;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v42 = v23;
  v24 = _dispatchPreconditionTest(_:)();
  v26 = *(v19 + 8);
  v25 = v19 + 8;
  v26(v22, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(v2 + 16) != 1)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Not running";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v36, v37, v39, v38, 2u);
    }

LABEL_21:

    return;
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError + 1) << 8 != 512)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Peer already has error; not resending error message";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = a2 & 0x1FF;
  v27 = [objc_opt_self() TLVWithTag:1 unsignedChar:a2];
  if (!v27)
  {
    __break(1u);
    goto LABEL_25;
  }

  v28 = v27;
  v29 = [v27 asData];

  if (!v29)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v30;

  if (qword_1005018F8 != -1)
  {
LABEL_23:
    swift_once();
  }

  sub_100081ED8(2u, 0, v25, v24, a1);
  v40 = v24;
  v41 = v25;
  v31 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
  if (a2 == 3)
  {
    v32 = 12;
  }

  else
  {
    v32 = 11;
  }

  if (a2 == 3 || (*(v31 + 88) & 1) != 0)
  {
    *(v31 + 84) = v32;
    *(v31 + 88) = 0;
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v44 = *(v44 + 8);
  (v44)(v15, v49);
  aBlock[4] = sub_1000937C8;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C5D58;
  v33 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_10009388C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  v34 = v43;
  v35 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v33);
  sub_10006A178(v41, v40);
  (*(v47 + 8))(v34, v35);
  (*(v45 + 8))(v11, v46);
  (v44)(v17, v49);
}

uint64_t sub_100081504(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000100460D80;
    }

    else
    {
      v4 = 0x8000000100460DA0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x656D614E707061;
    }

    else
    {
      v3 = 0x64496D616461;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000100460D80;
    }

    else
    {
      v6 = 0x8000000100460DA0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x656D614E707061;
    }

    else
    {
      v5 = 0x64496D616461;
    }

    if (a2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

void sub_100081644(char a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (*(v2 + 16) == 1)
    {
      v12 = *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension);
      sub_10025DAF0(a1 & 1);
    }

    else
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Not running", v15, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100081838(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v23 = a1;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (*(v4 + 16) == 1)
    {
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = *(a4 + OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension);
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      v18 = v23 & 1;
      *(v17 + 24) = v23 & 1;
      *(v17 + 32) = v4;
      *(v17 + 40) = a2;
      *(v17 + 48) = a3;

      sub_10025DF60(v18, a2, a3, sub_1000937B4, v17);
    }

    else
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100081B2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_100157168;
  if (a5)
  {
    v6 = sub_10015715C;
  }

  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    v10 = HIDWORD(a1) - a1;
  }

LABEL_14:
  if ((v6)(a3 + 1, v10))
  {
    v13 = 0;
    v14 = a3;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v13 = *(a1 + 16);
        v14 = v13 + a3;
        if (__OFADD__(v13, a3))
        {
          goto LABEL_40;
        }
      }

LABEL_25:
      v17 = __OFADD__(v13, a3);
      v18 = v13 + a3;
      if (!v17)
      {
        v17 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (!v17)
        {
          if (v19 >= v14)
          {
            sub_100068FC4(&qword_100502C28, &qword_100409CF8);
            sub_1000937E0();
            sub_100075C60(&qword_100502C38, &qword_100502C28, &qword_100409CF8);
            DataProtocol.copyBytes<A>(to:from:)();
            sub_10006A178(a1, a2);
            return 0;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!v9)
    {
      goto LABEL_25;
    }

    v13 = a1;
    v14 = a1 + a3;
    if (!__OFADD__(a1, a3))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(47);

  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x6164206D6F726620;
  v16._object = 0xEF206E656C206174;
  String.append(_:)(v16);
  if (v9 > 1)
  {
    if (v9 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  else if (!v9)
  {
    goto LABEL_34;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_41;
  }

LABEL_34:
  sub_10009393C(0, &qword_10050AA20, NSError_ptr);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x2074657366666F20;
  v22._object = 0xE800000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  sub_10030990C(0, 1, 0xD000000000000012, 0x8000000100461E90, 0);
  swift_willThrow();
  return sub_10006A178(a1, a2);
}

void sub_100081ED8(unsigned int a1, char a2, uint64_t a3, unint64_t a4, int64_t a5)
{
  v46 = a3;
  v47 = a1;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v19(v14, v10);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (*(v5 + 16) == 1)
  {
    if (*(a5 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) < 5u)
    {
      v10 = 0;
      v17 = 0xF000000000000000;
      goto LABEL_26;
    }

    v23 = *(a5 + OBJC_IVAR____TtC10seserviced8LyonPeer_secureChannel);
    v24 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v25 = v47;
      v26 = v46;
      if (v24 != 2)
      {
        goto LABEL_22;
      }

      v29 = v46[2];
      v28 = v46[3];
      v27 = v28 - v29;
      if (!__OFSUB__(v28, v29))
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      v25 = v47;
      v26 = v46;
      if (!v24)
      {
        LODWORD(v27) = BYTE6(a4);
LABEL_23:
        v30 = a2;
        v31 = a5;
        v32 = sub_100090960(v25, v30, v27);
        v34 = v33;
        v35 = sub_1002B2694(v26, a4, v32, v33);
        if (v6)
        {
          v37 = v32;
          v38 = v34;
LABEL_32:
          sub_10006A178(v37, v38);
          return;
        }

        v10 = v35;
        v17 = v36;
        sub_10006A178(v32, v34);
        a5 = v31;
        a2 = v30;
LABEL_26:
        v18 = a2;
        if (qword_1005018F8 == -1)
        {
LABEL_27:
          v39 = a5;
          v40 = v10;
          v41 = v17;
          if (v17 >> 60 == 15)
          {
            v40 = v46;
            sub_100069E2C(v46, a4);
            v41 = a4;
          }

          sub_10006A2BC(v10, v17);
          v42 = sub_100090A8C(v47, v18, v40, v41);
          v44 = v43;
          sub_10006A178(v40, v41);
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E71A0(v42, v44, v39);
          sub_10006A2D0(v10, v17);
          v37 = v42;
          v38 = v44;
          goto LABEL_32;
        }

LABEL_34:
        swift_once();
        goto LABEL_27;
      }
    }

    if (__OFSUB__(HIDWORD(v26), v26))
    {
LABEL_36:
      __break(1u);
      return;
    }

    v27 = HIDWORD(v26) - v26;
LABEL_19:
    if ((v27 & 0x8000000000000000) == 0)
    {
      if (!(v27 >> 16))
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_22:
      LODWORD(v27) = 0;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_36;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Not running", v22, 2u);
  }
}

uint64_t sub_1000822C0(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v41 = _swiftEmptyArrayStorage;
  sub_10019F464(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v35)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v5 = *(v1 + 36);
  }

  v38 = result;
  v39 = v5;
  v40 = v35 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v32 = v1 + 56;
    v31 = v1 + 64;
    v34 = v1;
    v33 = v2;
    while (v7 < v2)
    {
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_40;
      }

      v10 = v38;
      v11 = v40;
      v36 = v39;
      v12 = sub_10008EDB4(v38, v39, v40, v1);
      sub_100068FC4(&unk_100507CD0, &unk_100414C50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100409900;
      *(inited + 32) = 1919247696;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = UUID.uuidString.getter();
      *(inited + 56) = v14;
      *(inited + 64) = 0x656E6F5A49535352;
      *(inited + 72) = 0xE800000000000000;
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      v15 = sub_1000E7974(v12);
      if (v15 == 2)
      {
        v16 = 0xE800000000000000;
        v17 = 0x64656C6261736944;
      }

      else
      {
        v37[0] = v15 & 1;
        v17 = String.init<A>(describing:)();
      }

      *(inited + 80) = v17;
      *(inited + 88) = v16;
      v18 = sub_1000910F0(inited);
      swift_setDeallocating();
      sub_100068FC4(&unk_100504020, &qword_100409CC0);
      swift_arrayDestroy();

      v41 = v3;
      v20 = v3[2];
      v19 = v3[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10019F464((v19 > 1), v20 + 1, 1);
        v3 = v41;
      }

      v3[2] = v20 + 1;
      v3[v20 + 4] = v18;
      if (v35)
      {
        v1 = v34;
        if (!v11)
        {
          goto LABEL_45;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v33;
        sub_100068FC4(&qword_100502C08, &qword_100409CC8);
        v8 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v8(v37, 0);
        if (v7 == v33)
        {
LABEL_37:
          sub_1000937D4(v38, v39, v40);
          return v3;
        }
      }

      else
      {
        v1 = v34;
        if (v11)
        {
          goto LABEL_46;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        v21 = 1 << *(v34 + 32);
        if (v10 >= v21)
        {
          goto LABEL_41;
        }

        v22 = v10 >> 6;
        v23 = *(v32 + 8 * (v10 >> 6));
        if (((v23 >> v10) & 1) == 0)
        {
          goto LABEL_42;
        }

        if (*(v34 + 36) != v36)
        {
          goto LABEL_43;
        }

        v24 = v23 & (-2 << (v10 & 0x3F));
        if (v24)
        {
          v21 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = v22 << 6;
          v26 = v22 + 1;
          v27 = (v31 + 8 * v22);
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              result = sub_1000937D4(v10, v36, 0);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_36;
            }
          }

          result = sub_1000937D4(v10, v36, 0);
        }

LABEL_36:
        v30 = *(v34 + 36);
        v38 = v21;
        v39 = v30;
        v40 = 0;
        v2 = v33;
        if (v7 == v33)
        {
          goto LABEL_37;
        }
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_10008272C()
{
  v0 = type metadata accessor for Lyon(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10008276C();
  qword_10051B188 = result;
  return result;
}

uint64_t sub_10008276C()
{
  *(v0 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced4Lyon_maxMessageLength) = 2013;
  *(v0 + OBJC_IVAR____TtC10seserviced4Lyon_maxMessageTimeoutExtenstions) = 3;
  *(v0 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers) = _swiftEmptyArrayStorage;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_1000937D0;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004C5D80;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1000828C4()
{
  v1 = *(v0 + 16);
  v13 = &type metadata for Bool;
  LOBYTE(v12) = v1;
  sub_100075D50(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v3 = sub_1000CAAC4();
  v4 = sub_1000822C0(v3);

  v13 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v12 = v4;
  sub_100075D50(&v12, v11);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0x657463656E6E6F63, 0xEE00737265655064, v5);
  if (qword_100501BA8 != -1)
  {
    swift_once();
  }

  v13 = &type metadata for Double;
  *&v12 = qword_10051B658;
  sub_100075D50(&v12, v11);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0xD000000000000015, 0x8000000100461E40, v6);
  if (qword_100501BB0 != -1)
  {
    swift_once();
  }

  v13 = &type metadata for Double;
  *&v12 = qword_10051B660;
  sub_100075D50(&v12, v11);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0xD000000000000015, 0x8000000100461E60, v7);
  sub_1001950D4(&_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = sub_100015DA0("lyon.state", isa);

  return v9;
}

void sub_100082B94()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  inited = (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    v19 = inited;
    swift_once();
    inited = v19;
    goto LABEL_11;
  }

  v11 = *(v1 + 16);
  v12 = Logger.logObject.getter();
  if (v11)
  {
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Lyon is already running", v14, 2u);
    }

    return;
  }

  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v12, v15, "Starting Lyon", v16, 2u);
  }

  type metadata accessor for LyonStoreDelegate();
  inited = swift_initStaticObject();
  if (qword_1005019E8 != -1)
  {
    goto LABEL_21;
  }

LABEL_11:
  v17 = *(off_100504A68 + 3);
  __chkstk_darwin(inited);
  *&v20[-16] = v18;
  *&v20[-8] = v8;
  os_unfair_lock_lock(v17 + 8);
  sub_100093870(&v17[4]);
  os_unfair_lock_unlock(v17 + 8);
  if (qword_1005018E8 != -1)
  {
    swift_once();
  }

  sub_10006B5F0();
  if (qword_100501B58 != -1)
  {
    swift_once();
  }

  sub_100221D3C();
  if (qword_100501BF0 != -1)
  {
    swift_once();
  }

  sub_1002A0B30();
  if (qword_100501BD8 != -1)
  {
    swift_once();
  }

  sub_10027B91C();
  *(v1 + 16) = 1;
  type metadata accessor for LyonCoreAnalytics();
  sub_1002F80D4();
}

void sub_100082F6C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_8:
    sub_100221F6C();
    if (qword_1005018E8 != -1)
    {
      swift_once();
    }

    sub_10006BDD8();
    if (qword_100501950 != -1)
    {
      swift_once();
    }

    sub_1000C6EAC();
    if (qword_100501CD8 != -1)
    {
      swift_once();
    }

    [qword_10050A248 invalidate];
    *(v1 + 16) = 0;
    return;
  }

  v9 = *(v1 + 16);
  v10 = Logger.logObject.getter();
  if (v9 == 1)
  {
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopping Lyon", v12, 2u);
    }

    v13 = *(v1 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers);
    *(v1 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers) = _swiftEmptyArrayStorage;

    if (qword_100501B58 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v10, v14, "Lyon is not running", v15, 2u);
  }
}

void sub_1000832B0(int64_t a1, unint64_t a2, __objc2_class **a3)
{
  v4 = v3;
  v128 = a3;
  v127 = type metadata accessor for UUID();
  v7 = *(v127 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v127);
  v126 = (&v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_151;
  }

LABEL_2:
  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (*(v4 + 16) != 1)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Not running", v24, 2u);
    }

    return;
  }

  v17 = (v128 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v19 = *(v128 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
  v135 = *(v128 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v18 = v135;
  v136 = v19;
  *(v128 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
  sub_10006A2BC(v18, v19);
  sub_10006A2D0(v18, v19);
  if (v19 >> 60 == 15 || (Data.append(_:)(), v20 = v136, v136 >> 60 == 15))
  {
    sub_100069E2C(a1, a2);
    v21 = a1;
    v20 = a2;
  }

  else
  {
    v21 = v135;
    sub_100069E2C(v135, v136);
  }

  *&v134 = v21;
  *(&v134 + 1) = v20;
  v25 = OBJC_IVAR____TtC10seserviced4Lyon_logger;
  sub_100069E2C(a1, a2);
  v121 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v28 = os_log_type_enabled(v26, v27);
  v118 = v17;
  v120 = a2;
  v119 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = v29;
    *v29 = 134218240;
    v31 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v31 != 2)
      {
        v32 = 0;
        goto LABEL_23;
      }

      v34 = *(a1 + 16);
      v33 = *(a1 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (!v35)
      {
LABEL_23:
        *(v29 + 4) = v32;
        sub_10006A178(a1, a2);
        *(v30 + 12) = 2048;
        swift_beginAccess();
        v36 = v134;
        v37 = *(&v134 + 1) >> 62;
        if ((*(&v134 + 1) >> 62) > 1)
        {
          v38 = 0;
          if (v37 != 2)
          {
            goto LABEL_32;
          }

          v36 = *(v134 + 16);
          v39 = *(v134 + 24);
          v35 = __OFSUB__(v39, v36);
          v38 = v39 - v36;
          if (!v35)
          {
            goto LABEL_32;
          }

          __break(1u);
        }

        else if (!v37)
        {
          v38 = BYTE14(v134);
LABEL_32:
          *(v30 + 14) = v38;
          _os_log_impl(&_mh_execute_header, v26, v27, "%ld bytes received; %ld bytes including accumulated", v30, 0x16u);

          goto LABEL_33;
        }

        v35 = __OFSUB__(HIDWORD(v36), v36);
        v40 = HIDWORD(v36) - v36;
        if (v35)
        {
          goto LABEL_158;
        }

        v38 = v40;
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v31)
    {
      v32 = BYTE6(a2);
      goto LABEL_23;
    }

    LODWORD(v32) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_157;
    }

    v32 = v32;
    goto LABEL_23;
  }

  sub_10006A178(a1, a2);
LABEL_33:

  v41 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  v124 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
  swift_beginAccess();
  v125 = v41;
  swift_beginAccess();
  v123 = (v7 + 16);
  v122 = (v7 + 8);
  v42 = v127;
  while (1)
  {
    v44 = *(&v134 + 1);
    v43 = v134;
    v45 = *(&v134 + 1) >> 62;
    if ((*(&v134 + 1) >> 62) > 1)
    {
      if (v45 != 2 || *(v134 + 16) == *(v134 + 24))
      {
LABEL_74:
        v68 = *(&v134 + 1);
        v67 = v134;
        goto LABEL_146;
      }
    }

    else
    {
      if (!v45)
      {
        if ((*(&v134 + 1) & 0xFF000000000000) == 0)
        {
          goto LABEL_74;
        }

        if (BYTE14(v134) < 4uLL)
        {
          goto LABEL_79;
        }

        goto LABEL_49;
      }

      if (v134 == v134 >> 32)
      {
        goto LABEL_74;
      }
    }

    if (v45 == 2)
    {
      v47 = *(v134 + 16);
      v46 = *(v134 + 24);
      v35 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v35)
      {
        goto LABEL_153;
      }

      if (v48 < 4)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (__OFSUB__(DWORD1(v134), v134))
      {
        goto LABEL_154;
      }

      if (DWORD1(v134) - v134 < 4)
      {
LABEL_79:
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v69, v70))
        {
LABEL_116:

          v82 = *(&v134 + 1);
          v83 = v134;
          v132 = &type metadata for Data;
          v133 = &protocol witness table for Data;
          v131 = v134;
          v95 = sub_1000752B0(&v131, &type metadata for Data);
          v85 = *v95;
          v86 = v95[1];
          v96 = v86 >> 62;
          if ((v86 >> 62) <= 1)
          {
            if (!v96)
            {
              goto LABEL_118;
            }

            v106 = v85;
            v107 = v85 >> 32;
            v90 = v107 - v106;
            if (v107 >= v106)
            {
              sub_100069E2C(v83, v82);
              v82 = __DataStorage._bytes.getter();
              if (!v82)
              {
                goto LABEL_137;
              }

              v108 = __DataStorage._offset.getter();
              v85 = v106 - v108;
              if (!__OFSUB__(v106, v108))
              {
                goto LABEL_136;
              }

LABEL_164:
              __break(1u);
              goto LABEL_165;
            }

            goto LABEL_160;
          }

          if (v96 == 2)
          {
            v99 = *(v85 + 16);
            v100 = *(v85 + 24);
            sub_100069E2C(v83, v82);
            v69 = __DataStorage._bytes.getter();
            if (v69)
            {
              v101 = __DataStorage._offset.getter();
              if (__OFSUB__(v99, v101))
              {
LABEL_163:
                __break(1u);
                goto LABEL_164;
              }

              v69 = (v69 + v99 - v101);
            }

            v35 = __OFSUB__(v100, v99);
            v94 = v100 - v99;
            if (!v35)
            {
LABEL_124:
              v102 = __DataStorage._length.getter();
              if (v102 >= v94)
              {
                v103 = v94;
              }

              else
              {
                v103 = v102;
              }

              v104 = v69 + v103;
              if (v69)
              {
                v98 = v104;
              }

              else
              {
                v98 = 0;
              }

              v97 = v69;
              goto LABEL_132;
            }

            goto LABEL_161;
          }

LABEL_131:
          memset(v129, 0, 14);
          sub_100069E2C(v83, v82);
          v97 = v129;
          v98 = v129;
          goto LABEL_132;
        }

        v71 = swift_slowAlloc();
        *v71 = 134217984;
        v72 = v134;
        v73 = *(&v134 + 1) >> 62;
        if ((*(&v134 + 1) >> 62) <= 1)
        {
          if (v73)
          {
LABEL_112:
            v35 = __OFSUB__(HIDWORD(v72), v72);
            LODWORD(v72) = HIDWORD(v72) - v72;
            if (v35)
            {
              goto LABEL_166;
            }

            v72 = v72;
            goto LABEL_115;
          }

          v72 = BYTE14(v134);
LABEL_115:
          *(v71 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v69, v70, "Got partial data of size %ld < header size", v71, 0xCu);

          goto LABEL_116;
        }

LABEL_90:
        if (v73 == 2)
        {
          v81 = v72 + 16;
          v79 = *(v72 + 16);
          v80 = *(v81 + 8);
          v35 = __OFSUB__(v80, v79);
          v72 = v80 - v79;
          if (v35)
          {
            __break(1u);
            goto LABEL_94;
          }
        }

        else
        {
          v72 = 0;
        }

        goto LABEL_115;
      }
    }

LABEL_49:
    sub_100069E2C(v134, *(&v134 + 1));
    v10 = sub_100081B2C(v43, v44, 0, 0, 0);
    v49 = v134;
    sub_100069E2C(v134, *(&v134 + 1));
    v50 = sub_100081B2C(v49, *(&v49 + 1), 1, 0, 0);
    v51 = v134;
    sub_100069E2C(v134, *(&v134 + 1));
    v52 = sub_100090214(v51, *(&v51 + 1), 2, 0, 0);
    sub_10006A178(v51, *(&v51 + 1));
    v53 = v52;
    v7 = v52 + 4;
    if (v52 > 0x7D9u)
    {

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 134218240;
        *(v76 + 4) = v7;
        *(v76 + 12) = 2048;
        *(v76 + 14) = 2013;

        _os_log_impl(&_mh_execute_header, v74, v75, "Discarding message exceeding max size %ld > %ld", v76, 0x16u);
      }

      else
      {
      }

      goto LABEL_145;
    }

    v11 = *(&v134 + 1);
    a2 = v134;
    v54 = *(&v134 + 1) >> 62;
    if ((*(&v134 + 1) >> 62) > 1)
    {
      if (v54 != 2)
      {
        break;
      }

      v57 = *(v134 + 16);
      v56 = *(v134 + 24);
      v35 = __OFSUB__(v56, v57);
      v55 = v56 - v57;
      if (v35)
      {
        goto LABEL_155;
      }
    }

    else if (v54)
    {
      LODWORD(v55) = DWORD1(v134) - v134;
      if (__OFSUB__(DWORD1(v134), v134))
      {
        goto LABEL_156;
      }

      v55 = v55;
    }

    else
    {
      v55 = BYTE14(v134);
    }

    if (v55 < v7)
    {
      break;
    }

    v58 = v54;
    if (v54)
    {
      if (v54 == 2)
      {
        v59 = *(v134 + 16);
      }

      else
      {
        v59 = v134;
      }
    }

    else
    {
      v59 = 0;
    }

    v14 = (v59 + 4);
    if (__OFADD__(v59, 4))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      swift_once();
      goto LABEL_2;
    }

    if (v54)
    {
      if (v54 == 2)
      {
        v58 = *(v134 + 16);
      }

      else
      {
        v58 = v134;
      }
    }

    v60 = v58 + 4;
    if (__OFADD__(v58, 4))
    {
      goto LABEL_148;
    }

    a1 = v60 + v53;
    if (__OFADD__(v60, v53))
    {
      goto LABEL_149;
    }

    if (a1 < v14)
    {
      goto LABEL_150;
    }

    sub_100069E2C(v134, *(&v134 + 1));
    v61 = Data.subdata(in:)();
    a1 = v62;
    sub_10006A178(a2, v11);
    v63 = v128;
    v64 = v126;
    (*v123)(v126, v128 + v125, v42);
    sub_100084214(v10, v50, v61, a1, v64, *(v63 + v124), v63);
    sub_10006A178(v61, a1);
    (*v122)(v64, v42);
    v65 = v134;
    sub_100069E2C(v134, *(&v134 + 1));
    sub_100084D68(v7, v65, *(&v65 + 1), &v131);
    v66 = v134;
    v134 = v131;
    sub_10006A178(v66, *(&v66 + 1));
  }

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v69, v70))
  {
    goto LABEL_98;
  }

  v71 = swift_slowAlloc();
  *v71 = 134218240;
  v72 = v134;
  v73 = *(&v134 + 1) >> 62;
  if ((*(&v134 + 1) >> 62) <= 1)
  {
    if (!v73)
    {
      v72 = BYTE14(v134);
      goto LABEL_97;
    }

LABEL_94:
    v35 = __OFSUB__(HIDWORD(v72), v72);
    LODWORD(v72) = HIDWORD(v72) - v72;
    if (!v35)
    {
      v72 = v72;
      goto LABEL_97;
    }

LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
  }

  if (v73 != 2)
  {
    v72 = 0;
    goto LABEL_97;
  }

  v77 = *(v134 + 16);
  v78 = *(v134 + 24);
  v35 = __OFSUB__(v78, v77);
  v72 = v78 - v77;
  if (v35)
  {
    __break(1u);
    goto LABEL_90;
  }

LABEL_97:
  *(v71 + 4) = v72;
  *(v71 + 12) = 2048;
  *(v71 + 14) = v7;
  _os_log_impl(&_mh_execute_header, v69, v70, "Got partial data of size %ld expected %ld", v71, 0x16u);

LABEL_98:

  v82 = *(&v134 + 1);
  v83 = v134;
  v132 = &type metadata for Data;
  v133 = &protocol witness table for Data;
  v131 = v134;
  v84 = sub_1000752B0(&v131, &type metadata for Data);
  v85 = *v84;
  v86 = v84[1];
  v87 = v86 >> 62;
  if ((v86 >> 62) > 1)
  {
    goto LABEL_105;
  }

  if (!v87)
  {
LABEL_118:
    v129[0] = v85;
    LOWORD(v129[1]) = v86;
    BYTE2(v129[1]) = BYTE2(v86);
    BYTE3(v129[1]) = BYTE3(v86);
    BYTE4(v129[1]) = BYTE4(v86);
    BYTE5(v129[1]) = BYTE5(v86);
    sub_100069E2C(v83, v82);
    v97 = v129;
    v98 = v129 + BYTE6(v86);
LABEL_132:
    sub_10008E434(v97, v98, v130);
    v105 = v118;
    goto LABEL_144;
  }

  v88 = v85;
  v89 = v85 >> 32;
  v90 = v89 - v88;
  if (v89 < v88)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  sub_100069E2C(v83, v82);
  v82 = __DataStorage._bytes.getter();
  if (!v82)
  {
    goto LABEL_137;
  }

  v83 = v86 & 0x3FFFFFFFFFFFFFFFLL;
  v91 = __DataStorage._offset.getter();
  v85 = v88 - v91;
  if (__OFSUB__(v88, v91))
  {
    __break(1u);
LABEL_105:
    if (v87 != 2)
    {
      goto LABEL_131;
    }

    v92 = *(v85 + 16);
    v93 = *(v85 + 24);
    sub_100069E2C(v83, v82);
    v70 = v86;
    v71 = __DataStorage._bytes.getter();
    v69 = v71;
    if (v71)
    {
      v70 = v86;
      v71 = __DataStorage._offset.getter();
      v72 = v92 - v71;
      if (__OFSUB__(v92, v71))
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      v69 = (v69 + v72);
    }

    v35 = __OFSUB__(v93, v92);
    v94 = v93 - v92;
    if (!v35)
    {
      goto LABEL_124;
    }

    __break(1u);
    goto LABEL_112;
  }

LABEL_136:
  v82 += v85;
LABEL_137:
  v105 = v118;
  v109 = __DataStorage._length.getter();
  if (v109 >= v90)
  {
    v110 = v90;
  }

  else
  {
    v110 = v109;
  }

  v111 = &v82[v110];
  if (v82)
  {
    v112 = v111;
  }

  else
  {
    v112 = 0;
  }

  sub_10008E434(v82, v112, v130);
LABEL_144:
  v113 = v130[0];
  v114 = v130[1];
  sub_1000752F4(&v131);
  v115 = *v105;
  v116 = v105[1];
  *v105 = v113;
  v105[1] = v114;
  sub_10006A2D0(v115, v116);
LABEL_145:
  v68 = *(&v134 + 1);
  v67 = v134;
LABEL_146:
  sub_10006A178(v67, v68);
  sub_10006A2D0(v135, v136);
}

void sub_100084214(char a1, char **a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, __objc2_class **a7)
{
  v8 = v7;
  v101 = a5;
  v102 = a3;
  v103 = a4;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v18 = qword_10051B7F0;
  *v17 = qword_10051B7F0;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    swift_once();
LABEL_41:
    v105[0] = v8;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v83 = v104;
      if (BYTE1(v104))
      {
        v84 = 256;
      }

      else
      {
        v84 = 0;
      }
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    sub_100080E48(a7, v84 | v83);

    return;
  }

  v100 = a6;
  v21 = OBJC_IVAR____TtC10seserviced4Lyon_logger;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v98 = v21;
    v25 = v8;
    v26 = v24;
    v20 = swift_slowAlloc();
    v105[0] = v20;
    *v26 = 136315650;
    v27 = sub_10024F9F4(a1);
    v29 = sub_1002FFA0C(v27, v28, v105);

    *(v26 + 4) = v29;
    *(v26 + 12) = 256;
    *(v26 + 14) = a2;
    *(v26 + 15) = 2080;

    v30 = UUID.uuidString.getter();
    v32 = v31;

    v33 = sub_1002FFA0C(v30, v32, v105);

    *(v26 + 17) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received type %s id %hhu from peer %s", v26, 0x19u);
    swift_arrayDestroy();

    v8 = v25;
  }

  v34 = v103;
  if (*(a7 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError + 1) << 8 != 512)
  {

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      *v39 = 136315394;

      v40 = UUID.uuidString.getter();
      v42 = v41;

      v43 = sub_1002FFA0C(v40, v42, v105);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = sub_10024F9F4(a1);
      v46 = sub_1002FFA0C(v44, v45, v105);

      *(v39 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s already errored out, ignoring %s message", v39, 0x16u);
      swift_arrayDestroy();
    }

    return;
  }

  v35 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v36 = *(a7 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
  v99 = v8;
  if (v36 < 5)
  {
    v20 = v102;
    sub_100069E2C(v102, v103);
    v8 = 0;
    v23 = v34;
    goto LABEL_26;
  }

  v47 = *(a7 + OBJC_IVAR____TtC10seserviced8LyonPeer_secureChannel);
  v48 = v103 >> 62;
  if ((v103 >> 62) <= 1)
  {
    if (!v48)
    {
      v49 = BYTE6(v103);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v48 != 2)
  {
    v49 = 0;
    goto LABEL_22;
  }

  v51 = *(v102 + 16);
  v50 = *(v102 + 24);
  v52 = __OFSUB__(v50, v51);
  v49 = v50 - v51;
  if (v52)
  {
    __break(1u);
LABEL_19:
    LODWORD(v49) = HIDWORD(v102) - v102;
    if (__OFSUB__(HIDWORD(v102), v102))
    {
      __break(1u);
LABEL_61:
      swift_once();
LABEL_50:
      v60 = v8;
      sub_1000E0578(a2, v20, v23, a7);
      if (!v8)
      {
        goto LABEL_31;
      }

LABEL_37:
      v8 = v60;
      v74 = v20;
      goto LABEL_38;
    }

    v49 = v49;
  }

LABEL_22:
  v53 = v49 - 16;
  if (__OFSUB__(v49, 16))
  {
    __break(1u);
    goto LABEL_57;
  }

  if ((v53 & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v53 >> 16)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_30:
    v60 = v8;
    sub_10006D880(a2, v20, v23, a7, v101, v100, 3);
    if (!v8)
    {
LABEL_31:
      sub_10006A178(v20, v23);
      return;
    }

    goto LABEL_37;
  }

  v98 = v35;
  v54 = sub_100090960(a1, a2, v53);
  v56 = v55;
  v8 = 0;
  v57 = sub_1002B1910(v102, v34, v54, v55);
  v58 = v54;
  v23 = v59;
  sub_10006A178(v58, v56);
  v20 = v57;
  v35 = v98;
LABEL_26:
  switch(a1)
  {
    case 2:
      sub_100084EB8(a2, v20, v23, a7);
      goto LABEL_31;
    case 1:
      if (*(a7 + v35) < 5u)
      {
        v61 = v20;

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = v23;
          v65 = swift_slowAlloc();
          v105[0] = swift_slowAlloc();
          *v65 = 136315394;
          LOBYTE(v104) = *(a7 + v35);
          v66 = String.init<A>(describing:)();
          v68 = sub_1002FFA0C(v66, v67, v105);

          *(v65 + 4) = v68;
          *(v65 + 12) = 2080;

          v69 = UUID.uuidString.getter();
          v71 = v70;

          v72 = sub_1002FFA0C(v69, v71, v105);

          *(v65 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v62, v63, "Cannot process UWB message in state %s for %s", v65, 0x16u);
          swift_arrayDestroy();

          v23 = v64;
        }

        sub_1000755A4();
        v8 = swift_allocError();
        *v73 = 0;
        swift_willThrow();
        v74 = v61;
LABEL_38:
        sub_10006A178(v74, v23);

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v105[0] = v78;
          *v77 = 136315138;

          v79 = UUID.uuidString.getter();
          v81 = v80;

          v82 = sub_1002FFA0C(v79, v81, v105);

          *(v77 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v75, v76, "Could not process message for %s, disconnecting", v77, 0xCu);
          sub_1000752F4(v78);
        }

        if (qword_1005018F8 == -1)
        {
          goto LABEL_41;
        }

        goto LABEL_55;
      }

      if (qword_100501950 == -1)
      {
        goto LABEL_50;
      }

      goto LABEL_61;
    case 0:
      if (qword_1005018E8 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_59;
  }

  v85 = v102;
  sub_100069E2C(v102, v34);
  v86 = v85;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.info.getter();
  sub_10006A178(v86, v34);
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v103 = v23;
    v90 = v89;
    v101 = swift_slowAlloc();
    v105[0] = v101;
    *v90 = 16777986;
    *(v90 + 4) = a1;
    *(v90 + 5) = 256;
    *(v90 + 7) = a2;
    *(v90 + 8) = 2080;
    v104 = sub_100288788(v86, v34);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v91 = BidirectionalCollection<>.joined(separator:)();
    v93 = v92;

    v94 = sub_1002FFA0C(v91, v93, v105);

    *(v90 + 10) = v94;
    _os_log_impl(&_mh_execute_header, v87, v88, "Ignoring unknown message type %hhu id %hhu payload %s", v90, 0x12u);
    sub_1000752F4(v101);

    v95 = v20;
    v96 = v103;
  }

  else
  {
    v95 = v20;
    v96 = v23;
  }

  sub_10006A178(v95, v96);
}

uint64_t sub_100084D68@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_10008E6F8(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_10008E694(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = Data._Representation.subscript.getter();
    v17 = v16;
    result = sub_10006A178(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

void sub_100084EB8(unsigned __int8 a1, uint64_t a2, unint64_t a3, __objc2_class **a4)
{
  v26 = a3;
  v25 = a4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    v18 = sub_10024FD20(a1);
    v24 = a2;
    v20 = sub_1002FFA0C(v18, v19, &v27);
    a2 = v24;

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing Notification %s", v16, 0xCu);
    sub_1000752F4(v17);
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_100085224(a2, v26, v25);
      return;
    }

    if (a1 == 3)
    {
      sub_100086414(a2, v26, v25);
      return;
    }
  }

  else
  {
    if (!a1)
    {
      sub_1000872A4(a2, v26, v25);
      return;
    }

    if (a1 == 1)
    {
      if (qword_100501950 == -1)
      {
LABEL_10:
        sub_1000C7390(a2, v26, v25);
        return;
      }

LABEL_20:
      swift_once();
      goto LABEL_10;
    }
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Ignoring unknown notification id", v23, 2u);
  }
}

void sub_100085224(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v176 = v8;
  v177 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v175 = v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v21(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_75;
  }

  v19 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v23 = a3;
  if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) < 5u)
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *v26 = 136315394;
      LOBYTE(v181) = *(v23 + v19);
      v27 = String.init<A>(describing:)();
      v29 = sub_1002FFA0C(v27, v28, &v179);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;

      v30 = UUID.uuidString.getter();
      v32 = v31;

      v33 = sub_1002FFA0C(v30, v32, &v179);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Cannot process status changed message in state %s for %s", v26, 0x16u);
      swift_arrayDestroy();
    }

LABEL_16:
    sub_1000755A4();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    return;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v35 = [objc_opt_self() TLVWithData:isa];

  if (!v35)
  {
    sub_100069E2C(a1, a2);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v179 = v178;
      *v42 = 136315394;
      v181 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v43 = BidirectionalCollection<>.joined(separator:)();
      v45 = v44;

      v46 = sub_1002FFA0C(v43, v45, &v179);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10009388C(&qword_100504C70, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = sub_1002FFA0C(v47, v48, &v179);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Could not process status changed notification %s from peer %s", v42, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_16;
  }

  a2 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8);
  if (a2 >> 60 != 15)
  {
    v173 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier);
    sub_100069E2C(v173, a2);
    v174 = v35;
    v51 = [v35 value];
    if (v51)
    {
      v52 = v51;
      v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = sub_100081B2C(v53, v55, 0, 0, 0);
      if (v3)
      {
        sub_10006A2D0(v173, a2);

        return;
      }

      v172 = v56;
      v57 = [v174 value];
      if (v57)
      {
        v58 = v57;
        v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = sub_100081B2C(v59, v61, 1, 0, 0);
        v20 = a3;
        v63 = v62;
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();
        v66 = os_log_type_enabled(v64, v65);
        LODWORD(v168) = v63;
        if (v66)
        {
          v67 = swift_slowAlloc();
          LODWORD(v169) = v65;
          v68 = v67;
          v171 = swift_slowAlloc();
          v179 = v171;
          *v68 = 136315394;
          v69 = sub_100250068(v63);
          v71 = sub_1002FFA0C(v69, v70, &v179);

          *(v68 + 4) = v71;
          *(v68 + 12) = 2080;
          v72 = sub_1002501E4(v172);
          v74 = sub_1002FFA0C(v72, v73, &v179);

          *(v68 + 14) = v74;
          _os_log_impl(&_mh_execute_header, v64, v169, "Received status update %s from source %s", v68, 0x16u);
          swift_arrayDestroy();
        }

        a3 = OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus;
        v75 = *(v20 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus);
        if (v75 == 129)
        {
          v76 = v168;
          LODWORD(v171) = v168 != 1;
          v22 = v172;
        }

        else
        {
          v22 = v172;
          v76 = v168;
          v77 = v75 != 128 || v168 != 0;
          LODWORD(v171) = v77;
        }

        *(v20 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus) = v76;
        if (qword_100501950 == -1)
        {
LABEL_31:
          v159 = qword_10051B268;
          sub_1000C8420(v20, v22);
          v78 = *(v20 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
          v79 = *(v20 + v19);
          v80 = *(*(v178 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers) + 16);
          v81 = v20;
          v82 = *(v20 + a3);
          v83 = *(v81 + OBJC_IVAR____TtC10seserviced8LyonPeer_unsolicitedReaderStatusReportingValue);
          v170 = v81;
          LODWORD(v178) = *(v81 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatusAtConnection);
          if (v171 && (v82 | 0x80) == 0x81)
          {
            if (v172 == 4)
            {
              v84 = *(v78 + 168);
              v85 = __CFADD__(v84, 1);
              v86 = v84 + 1;
              if (!v85)
              {
                *(v78 + 168) = v86;
                v87 = qword_100501CD0;

                if (v87 == -1)
                {
LABEL_36:
                  v88 = *(off_10050A240 + 19);
                  v85 = __CFADD__(v88, 1);
                  v89 = v88 + 1;
                  if (v85)
                  {
                    __break(1u);
                    goto LABEL_80;
                  }

                  *(off_10050A240 + 19) = v89;
LABEL_41:
                  if (v79 < 0xA && ((0x37Fu >> v79) & 1) != 0)
                  {
                    v92 = dword_100409E04[v79];
                  }

                  else if (*(v78 + 168))
                  {
                    v92 = 9;
                  }

                  else
                  {
                    v92 = 8;
                  }

                  LODWORD(v160) = v92;
                  v93 = v172;
                  LODWORD(v168) = v83;
                  v169 = a3;
                  if (v80)
                  {
                    *(v78 + 92) = 2;
                  }

                  v94 = (v93 - 1);
                  if (v94 < 7)
                  {
                    v95 = v94 + 1;
                  }

                  else
                  {
                    v95 = 0;
                  }

                  LODWORD(v167) = v95;
                  v164 = objc_opt_self();
                  LODWORD(v166) = *(v78 + 92);
                  v96 = *(v78 + 100);
                  LODWORD(v165) = *(v78 + 104);
                  sub_1000C0AC8(2u, v96);
                  LODWORD(v163) = v97;
                  sub_1000C0AC8(2u, *(v78 + 76));
                  LODWORD(v162) = v98;
                  sub_1000C0AC8(2u, *(v78 + 24));
                  LODWORD(v161) = v99;
                  v100 = *(v78 + 192);
                  v101 = *(v78 + 200);

                  v102 = String._bridgeToObjectiveC()();

                  v103 = *(v78 + 176);
                  v104 = *(v78 + 184);

                  v105 = String._bridgeToObjectiveC()();

                  v106 = *(v78 + 208);
                  v107 = *(v78 + 216);

                  v108 = String._bridgeToObjectiveC()();

                  sub_10004F508(v164, v160, v168, v178, v82, v167, v166, v165, v163, v162, v161, v102, v105, v108);

                  sub_1002FA668();

                  if ((v171 & 1) == 0)
                  {
                    v80 = v174;
                    goto LABEL_73;
                  }

                  v109 = v170;
                  v110 = *(v170 + v169);
                  v111 = 0xD000000000000032;
                  v112 = "cwg.event.did.unlock";
                  if (v110 <= 1)
                  {
                    if (*(v170 + v169))
                    {
LABEL_60:
                      v112 = "cwg.event.did.status.update";
                      v111 = 0xD000000000000034;
                    }
                  }

                  else
                  {
                    if (v110 == 2)
                    {
                      v112 = "Illegal read size ";
                      v111 = 0xD000000000000031;
                      goto LABEL_62;
                    }

                    if (v110 != 128)
                    {
                      if (v110 != 129)
                      {
LABEL_63:
                        v80 = v174;
                        if (v110 > 127)
                        {
                          if (v110 == 129)
                          {
                            goto LABEL_70;
                          }

                          if (v110 != 128)
                          {
                            goto LABEL_73;
                          }
                        }

                        else if (v110)
                        {
                          if (v110 != 1)
                          {
                            goto LABEL_73;
                          }

LABEL_70:
                          if (v172 == 4)
                          {
                            if (qword_100501BF0 == -1)
                            {
LABEL_72:
                              sub_1002A716C();
                              goto LABEL_73;
                            }

LABEL_80:
                            swift_once();
                            goto LABEL_72;
                          }

LABEL_73:
                          sub_10006A2D0(v173, a2);

                          return;
                        }

                        sub_1000C8E3C(v109);
                        goto LABEL_73;
                      }

                      goto LABEL_60;
                    }
                  }

LABEL_62:
                  v162 = v112;
                  v164 = v111;
                  v178 = "Update Aliro Versions";
                  v113 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
                  v160 = v114;
                  v161 = v113;
                  v171 = v109 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier;
                  v115 = *(v109 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
                  v153 = *(v109 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
                  v116 = v153;
                  v154 = v115;
                  v168 = sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_100409A40;
                  v167 = 0x8000000100461D10;
                  *(inited + 32) = 0xD000000000000010;
                  v152[1] = inited + 32;
                  *(inited + 40) = 0x8000000100461D10;
                  sub_10006A2BC(v115, v116);
                  v118 = sub_100288788(v173, a2);
                  v166 = v4;
                  v179 = v118;
                  v158 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                  v157 = sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
                  v119 = BidirectionalCollection<>.joined(separator:)();
                  v121 = v120;

                  *(inited + 48) = v119;
                  *(inited + 56) = v121;
                  *(inited + 72) = &type metadata for String;
                  *(inited + 80) = 0x6D617473656D6974;
                  *(inited + 88) = 0xE900000000000070;
                  v179 = 0;
                  v180 = 0xE000000000000000;
                  v122 = v175;
                  Date.init()();
                  Date.timeIntervalSince1970.getter();
                  v123 = *(v177 + 8);
                  v177 += 8;
                  v155 = v123;
                  v123(v122, v176);
                  Double.write<A>(to:)();
                  v124 = v180;
                  *(inited + 96) = v179;
                  *(inited + 104) = v124;
                  v165 = 0x8000000100461EF0;
                  v163 = 0xD000000000000013;
                  *(inited + 120) = &type metadata for String;
                  *(inited + 128) = 0xD000000000000013;
                  *(inited + 136) = 0x8000000100461EF0;
                  v125 = v172;
                  LOBYTE(v179) = v172;
                  v126 = dispatch thunk of CustomStringConvertible.description.getter();
                  *(inited + 168) = &type metadata for String;
                  *(inited + 144) = v126;
                  *(inited + 152) = v127;
                  v128 = sub_10008FFDC(inited);
                  swift_setDeallocating();
                  v156 = sub_100068FC4(&qword_100507D30, &unk_100409C90);
                  swift_arrayDestroy();
                  v129 = v161;
                  v130 = v160;
                  v132 = v153;
                  v131 = v154;
                  sub_1003375E0(v164, v162 | 0x8000000000000000, v161, v160, v154, v153, v128);

                  sub_10006A2D0(v131, v132);
                  sub_10006A2D0(v129, v130);
                  v164 = "lockOperationSource";
                  v178 = sub_10013044C(0xD000000000000012, v178 | 0x8000000000000000);
                  v134 = *(v171 + 8);
                  v161 = *v171;
                  v133 = v161;
                  v162 = v135;
                  v171 = v134;
                  v136 = swift_initStackObject();
                  *(v136 + 16) = xmmword_1004099F0;
                  *(v136 + 32) = 0xD000000000000010;
                  v168 = v136 + 32;
                  *(v136 + 40) = v167;
                  sub_10006A2BC(v133, v134);
                  v179 = sub_100288788(v173, a2);
                  v137 = BidirectionalCollection<>.joined(separator:)();
                  v139 = v138;

                  *(v136 + 48) = v137;
                  *(v136 + 56) = v139;
                  *(v136 + 72) = &type metadata for String;
                  *(v136 + 80) = 0x6D617473656D6974;
                  *(v136 + 88) = 0xE900000000000070;
                  v179 = 0;
                  v180 = 0xE000000000000000;
                  v140 = v175;
                  Date.init()();
                  Date.timeIntervalSince1970.getter();
                  v155(v140, v176);
                  Double.write<A>(to:)();
                  v141 = v180;
                  *(v136 + 96) = v179;
                  *(v136 + 104) = v141;
                  *(v136 + 120) = &type metadata for String;
                  *(v136 + 128) = 0x746174536B636F6CLL;
                  *(v136 + 136) = 0xEA00000000007375;
                  LOBYTE(v179) = *(v170 + v169);
                  *(v136 + 144) = dispatch thunk of CustomStringConvertible.description.getter();
                  *(v136 + 152) = v142;
                  v143 = v163;
                  *(v136 + 168) = &type metadata for String;
                  *(v136 + 176) = v143;
                  *(v136 + 184) = v165;
                  LOBYTE(v179) = v125;
                  v144 = dispatch thunk of CustomStringConvertible.description.getter();
                  *(v136 + 216) = &type metadata for String;
                  *(v136 + 192) = v144;
                  *(v136 + 200) = v145;
                  v146 = sub_10008FFDC(v136);
                  swift_setDeallocating();
                  swift_arrayDestroy();
                  v147 = v178;
                  v149 = v161;
                  v148 = v162;
                  v150 = v171;
                  sub_1003375E0(0xD00000000000003BLL, v164 | 0x8000000000000000, v178, v162, v161, v171, v146);
                  v109 = v170;

                  sub_10006A2D0(v149, v150);
                  sub_10006A2D0(v147, v148);
                  v110 = *(v109 + v169);
                  goto LABEL_63;
                }

LABEL_78:
                swift_once();
                goto LABEL_36;
              }

              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v90 = *(v78 + 172);
            v85 = __CFADD__(v90, 1);
            v91 = v90 + 1;
            if (v85)
            {
              goto LABEL_77;
            }

            *(v78 + 172) = v91;
          }

          goto LABEL_41;
        }

LABEL_75:
        v151 = v22;
        swift_once();
        v22 = v151;
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Received status changed notification for unknown reader identifier, likely before auth is completed", v38, 2u);
  }

  sub_1000755A4();
  swift_allocError();
  *v39 = 0;
  swift_willThrow();
}