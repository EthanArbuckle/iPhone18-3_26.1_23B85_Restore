void sub_1011AAD58(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t sub_1011AAD7C(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    return *(a1 + *(type metadata accessor for BeaconPayloadFile.MetaData(0) + 24));
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1011AAE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011AAE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v8 = *(*(v42 - 8) + 64);
  v9 = __chkstk_darwin(v42);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  sub_1011AC80C(a2, &v41 - v12, type metadata accessor for BeaconPayloadFile.MetaData);
  v43 = v11;
  sub_1011AC80C(a3, v11, type metadata accessor for BeaconPayloadFile.MetaData);
  v14 = *(a1 + 16);
  if (!v14)
  {
LABEL_21:
    sub_1004796F8(v43);
    sub_1004796F8(v13);
    LOBYTE(a2) = 0;
    return a2 & 1;
  }

  v15 = (a1 + 48);
  v41 = v13;
  while (1)
  {
    v17 = *(v15 - 2);
    v16 = *(v15 - 1);
    v18 = *v15;
    if (!*v15)
    {
      break;
    }

    if (v18 == 1)
    {
      v19 = *(v42 + 28);
      v20 = v13[v19];
      v21 = v43[v19];
      v22 = *(v15 - 1);
      swift_retain_n();
      v23 = v17(v20, v21);
      if (v4)
      {
        v13 = v41;
LABEL_24:
        sub_1011AC7F4(v17, v16, v18);
        sub_1004796F8(v43);
        sub_1004796F8(v13);
        sub_1011AC7F4(v17, v16, v18);
        return a2 & 1;
      }

      LOBYTE(a2) = v23;
      if (v23)
      {
        sub_1011AC7F4(v17, v16, 1u);
LABEL_28:
        sub_1004796F8(v43);
        sub_1004796F8(v41);
        v37 = v17;
        v38 = v16;
        v39 = 1;
        goto LABEL_29;
      }

      v24 = v17(v21, v20);
      sub_1011AC7F4(v17, v16, 1u);
      if (v24)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v28 = *(v42 + 32);
      v29 = &v13[v28];
      if (v13[v28 + 8])
      {
        goto LABEL_4;
      }

      v30 = &v43[v28];
      if (v30[8])
      {
        goto LABEL_4;
      }

      v31 = *v29;
      v32 = *v30;
      v33 = *(v15 - 1);
      v34 = swift_retain_n();
      v35 = (v17)(v34, v31, v32);
      if (v4)
      {
        goto LABEL_24;
      }

      LOBYTE(a2) = v35;
      if (v35)
      {
        sub_1011AC7F4(v17, v16, 2u);
LABEL_32:
        sub_1004796F8(v43);
        sub_1004796F8(v41);
        v37 = v17;
        v38 = v16;
        v39 = 2;
        goto LABEL_29;
      }

      v36 = (v17)(v32, v31);
      sub_1011AC7F4(v17, v16, 2u);
      if (v36)
      {
        goto LABEL_32;
      }
    }

LABEL_3:
    sub_1011AC7F4(v17, v16, v18);
    v13 = v41;
LABEL_4:
    v15 += 24;
    if (!--v14)
    {
      goto LABEL_21;
    }
  }

  v25 = *(v15 - 1);
  swift_retain_n();
  v26 = v17(v13, v43);
  if (v4)
  {
    goto LABEL_24;
  }

  LOBYTE(a2) = v26;
  if ((v26 & 1) == 0)
  {
    v27 = v17(v43, v13);
    sub_1011AC7F4(v17, v16, 0);
    v4 = 0;
    if (v27)
    {
      goto LABEL_26;
    }

    goto LABEL_3;
  }

  sub_1011AC7F4(v17, v16, 0);
LABEL_26:
  sub_1004796F8(v43);
  sub_1004796F8(v41);
  v37 = v17;
  v38 = v16;
  v39 = 0;
LABEL_29:
  sub_1011AC7F4(v37, v38, v39);
  return a2 & 1;
}

uint64_t sub_1011AB234(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v47 = a6;
  v50 = a5;
  v52 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  v10 = *(*(v52 - 8) + 64);
  v11 = __chkstk_darwin(v52);
  v49 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v48 = &v40 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v55 = a1;
  v54 = a4;
  v46 = v16;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a2;
    v28 = a4;
    v29 = a4 + v20;
    if (v20 >= 1)
    {
      v30 = -v46;
      v31 = v29;
      v43 = a1;
      v44 = v28;
      v42 = -v46;
      do
      {
        v40 = v29;
        v32 = v27;
        v33 = v27 + v30;
        v45 = v27;
        v46 = v27 + v30;
        while (1)
        {
          if (v32 <= a1)
          {
            v55 = v32;
            v53 = v40;
            goto LABEL_59;
          }

          v34 = a3;
          v41 = v29;
          v51 = a3 + v30;
          v35 = v31 + v30;
          v36 = v48;
          sub_1000D2A70(v31 + v30, v48, &qword_1016A5A10, &unk_10140A6F0);
          v37 = v49;
          sub_1000D2A70(v33, v49, &qword_1016A5A10, &unk_10140A6F0);
          v38 = v50(v36 + *(v52 + 48), v37 + *(v52 + 48));
          sub_10000B3A8(v37, &qword_1016A5A10, &unk_10140A6F0);
          sub_10000B3A8(v36, &qword_1016A5A10, &unk_10140A6F0);
          if (v38)
          {
            break;
          }

          v29 = v31 + v30;
          a3 = v51;
          if (v34 < v31 || v51 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            a1 = v43;
            if (v34 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 += v30;
          v32 = v45;
          v33 = v46;
          v30 = v42;
          if (v35 <= v44)
          {
            v27 = v45;
            goto LABEL_58;
          }
        }

        a3 = v51;
        if (v34 < v45 || v51 >= v45)
        {
          v27 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v42;
          a1 = v43;
          v29 = v41;
        }

        else
        {
          v39 = v34 == v45;
          v27 = v46;
          v30 = v42;
          a1 = v43;
          v29 = v41;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v31 > v44);
    }

LABEL_58:
    v55 = v27;
    v53 = v29;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v19;
    v53 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v51 = a3;
      do
      {
        v22 = v48;
        sub_1000D2A70(a2, v48, &qword_1016A5A10, &unk_10140A6F0);
        v23 = v49;
        sub_1000D2A70(a4, v49, &qword_1016A5A10, &unk_10140A6F0);
        v24 = a4;
        v25 = v50(v22 + *(v52 + 48), v23 + *(v52 + 48));
        sub_10000B3A8(v23, &qword_1016A5A10, &unk_10140A6F0);
        sub_10000B3A8(v22, &qword_1016A5A10, &unk_10140A6F0);
        if (v25)
        {
          v26 = v46;
          if (a1 < a2 || a1 >= a2 + v46)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v46;
          a4 += v46;
          if (a1 < v24 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = a4;
        }

        a1 += v26;
        v55 = a1;
      }

      while (a4 < v45 && a2 < v51);
    }
  }

LABEL_59:
  sub_10060AC30(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_1011AB788(char **a1, unint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v29 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v29 = sub_100B31E68(v29);
  }

  v23 = v7;
  *v7 = v29;
  v9 = v29 + 16;
  v10 = *(v29 + 2);
  if (v10 < 2)
  {
LABEL_10:

    *v23 = v29;
    return 1;
  }

  else
  {
    v24 = (v29 + 16);
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v29[16 * v10];
      v13 = *v12;
      v7 = &v9[16 * v10];
      v14 = *v7;
      v15 = v7[1];
      v16 = *(*(sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0) - 8) + 72);
      v17 = v11 + v16 * v13;
      v18 = v11 + v16 * v14;
      v19 = v11 + v16 * v15;

      sub_1011AB234(v17, v18, v19, a2, a4, a5);

      if (v6)
      {
        *v23 = v29;

        return 1;
      }

      if (v15 < v13)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = v29 + 16;
      v20 = *v24;
      if (v10 - 2 >= *v24)
      {
        goto LABEL_14;
      }

      *v12 = v13;
      *(v12 + 1) = v15;
      v21 = v20 - v10;
      if (v20 < v10)
      {
        goto LABEL_15;
      }

      v10 = v20 - 1;
      memmove(v7, v7 + 2, 16 * v21);
      *v24 = v10;
      if (v10 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v23 = v29;
    __break(1u);
  }

  return result;
}

uint64_t sub_1011AB958(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v136 = a5;
  v118 = a1;
  v9 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  v125 = *(v9 - 8);
  v10 = *(v125 + 64);
  v11 = __chkstk_darwin(v9);
  v121 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v115 - v14;
  v15 = __chkstk_darwin(v13);
  v133 = &v115 - v16;
  __chkstk_darwin(v15);
  v134 = &v115 - v17;
  v138 = _swiftEmptyArrayStorage;
  v127 = a3;
  v18 = a3[1];
  if (v18 >= 1)
  {
    swift_retain_n();
    v19 = 0;
    v20 = _swiftEmptyArrayStorage;
    v137 = a6;
    v117 = a4;
    v135 = v9;
    while (1)
    {
      v119 = v19;
      if (v19 + 1 >= v18)
      {
        v30 = v19 + 1;
      }

      else
      {
        v116 = v20;
        v129 = v18;
        v21 = *v127;
        v22 = *(v125 + 72);
        v23 = v19;
        v24 = *v127 + v22 * (v19 + 1);
        v25 = v134;
        sub_1000D2A70(v24, v134, &qword_1016A5A10, &unk_10140A6F0);
        v26 = v21 + v22 * v23;
        v27 = v133;
        sub_1000D2A70(v26, v133, &qword_1016A5A10, &unk_10140A6F0);
        LODWORD(v126) = v136(v25 + *(v9 + 48), v27 + *(v9 + 48));
        sub_10000B3A8(v27, &qword_1016A5A10, &unk_10140A6F0);
        sub_10000B3A8(v25, &qword_1016A5A10, &unk_10140A6F0);
        v28 = v119 + 2;
        v130 = v22;
        v29 = v21 + v22 * (v119 + 2);
        while (1)
        {
          v30 = v129;
          if (v129 == v28)
          {
            break;
          }

          v31 = v134;
          sub_1000D2A70(v29, v134, &qword_1016A5A10, &unk_10140A6F0);
          v32 = v133;
          sub_1000D2A70(v24, v133, &qword_1016A5A10, &unk_10140A6F0);
          LOBYTE(v131) = v136(v31 + *(v9 + 48), v32 + *(v9 + 48)) & 1;
          LODWORD(v131) = v131;
          sub_10000B3A8(v32, &qword_1016A5A10, &unk_10140A6F0);
          sub_10000B3A8(v31, &qword_1016A5A10, &unk_10140A6F0);
          ++v28;
          v29 += v130;
          v24 += v130;
          if ((v126 & 1) != v131)
          {
            v30 = v28 - 1;
            break;
          }
        }

        a4 = v117;
        v19 = v119;
        v20 = v116;
        if (v126)
        {
          if (v30 < v119)
          {
            goto LABEL_121;
          }

          if (v119 < v30)
          {
            v33 = v130 * (v30 - 1);
            v34 = v30 * v130;
            v35 = v30;
            v36 = v119;
            v37 = v119 * v130;
            do
            {
              if (v36 != --v35)
              {
                v38 = *v127;
                if (!*v127)
                {
                  goto LABEL_126;
                }

                sub_1011AAE0C(v38 + v37, v121);
                if (v37 < v33 || v38 + v37 >= (v38 + v34))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v37 != v33)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1011AAE0C(v121, v38 + v33);
                a6 = v137;
                v9 = v135;
              }

              ++v36;
              v33 -= v130;
              v34 -= v130;
              v37 += v130;
            }

            while (v36 < v35);
            a4 = v117;
            v20 = v116;
            v19 = v119;
          }
        }
      }

      v39 = v127[1];
      if (v30 >= v39)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v30, v19))
      {
        goto LABEL_120;
      }

      if (v30 - v19 >= a4)
      {
        goto LABEL_31;
      }

      v40 = v19 + a4;
      if (__OFADD__(v19, a4))
      {
        goto LABEL_122;
      }

      if (v40 >= v39)
      {
        v40 = v127[1];
      }

      if (v40 < v19)
      {
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
        goto LABEL_128;
      }

      if (v30 == v40)
      {
LABEL_31:
        v41 = v30;
        if (v30 < v19)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v116 = v20;
        v102 = *v127;
        v103 = *(v125 + 72);
        v104 = *v127 + v103 * (v30 - 1);
        v130 = -v103;
        v131 = v102;
        v105 = v19 - v30;
        v120 = v103;
        v106 = v102 + v30 * v103;
        v122 = v40;
        do
        {
          v129 = v30;
          v123 = v106;
          v124 = v105;
          v126 = v104;
          while (1)
          {
            v107 = v134;
            sub_1000D2A70(v106, v134, &qword_1016A5A10, &unk_10140A6F0);
            v108 = v133;
            sub_1000D2A70(v104, v133, &qword_1016A5A10, &unk_10140A6F0);
            v109 = v136(v107 + *(v9 + 48), v108 + *(v9 + 48));
            sub_10000B3A8(v108, &qword_1016A5A10, &unk_10140A6F0);
            sub_10000B3A8(v107, &qword_1016A5A10, &unk_10140A6F0);
            if ((v109 & 1) == 0)
            {
              break;
            }

            if (!v131)
            {
              goto LABEL_124;
            }

            v110 = v132;
            sub_1011AAE0C(v106, v132);
            v9 = v135;
            swift_arrayInitWithTakeFrontToBack();
            sub_1011AAE0C(v110, v104);
            v104 += v130;
            v106 += v130;
            v111 = __CFADD__(v105++, 1);
            a6 = v137;
            if (v111)
            {
              goto LABEL_85;
            }
          }

          a6 = v137;
          v9 = v135;
LABEL_85:
          v30 = v129 + 1;
          v104 = v126 + v120;
          v105 = v124 - 1;
          v106 = v123 + v120;
          v41 = v122;
        }

        while (v129 + 1 != v122);
        v20 = v116;
        if (v122 < v119)
        {
          goto LABEL_119;
        }
      }

      v122 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100A5B430(0, *(v20 + 2) + 1, 1, v20);
      }

      v43 = *(v20 + 2);
      v42 = *(v20 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v20 = sub_100A5B430((v42 > 1), v43 + 1, 1, v20);
      }

      *(v20 + 2) = v44;
      v45 = v20 + 32;
      v46 = &v20[16 * v43 + 32];
      v47 = v122;
      *v46 = v119;
      *(v46 + 1) = v47;
      v131 = *v118;
      if (!v131)
      {
        goto LABEL_127;
      }

      if (v43)
      {
        v130 = v20 + 32;
        while (1)
        {
          v48 = v44 - 1;
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_52:
            if (v52)
            {
              goto LABEL_109;
            }

            v65 = &v20[16 * v44];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_111;
            }

            v71 = &v45[16 * v48];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_114;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_116;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v48 = v44 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          if (v44 < 2)
          {
            goto LABEL_117;
          }

          v75 = &v20[16 * v44];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_67:
          if (v70)
          {
            goto LABEL_113;
          }

          v78 = &v45[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_115;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_74:
          if (v48 - 1 >= v44)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          v86 = *v127;
          if (!*v127)
          {
            goto LABEL_125;
          }

          v87 = v20;
          v88 = &v45[16 * v48 - 16];
          v89 = *v88;
          v90 = v48;
          v91 = &v45[16 * v48];
          v92 = *(v91 + 1);
          v93 = *(v125 + 72);
          v94 = v86 + v93 * *v88;
          v95 = v86 + v93 * *v91;
          v96 = v86 + v93 * v92;
          v97 = v137;

          v98 = v94;
          v99 = v128;
          sub_1011AB234(v98, v95, v96, v131, v136, v97);
          v128 = v99;
          if (v99)
          {

            v138 = v87;
            goto LABEL_99;
          }

          if (v92 < v89)
          {
            goto LABEL_104;
          }

          v100 = *(v87 + 2);
          if (v90 > v100)
          {
            goto LABEL_105;
          }

          *v88 = v89;
          *(v88 + 1) = v92;
          if (v90 >= v100)
          {
            goto LABEL_106;
          }

          v44 = v100 - 1;
          memmove(v91, v91 + 16, 16 * (v100 - 1 - v90));
          v20 = v87;
          *(v87 + 2) = v100 - 1;
          v101 = v100 > 2;
          a6 = v137;
          v9 = v135;
          v45 = v130;
          if (!v101)
          {
            goto LABEL_3;
          }
        }

        v53 = &v45[16 * v44];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_107;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_108;
        }

        v60 = &v20[16 * v44];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_110;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_112;
        }

        if (v64 >= v56)
        {
          v82 = &v45[16 * v48];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v51 < v85)
          {
            v48 = v44 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_52;
      }

LABEL_3:
      v18 = v127[1];
      v19 = v122;
      a4 = v117;
      if (v122 >= v18)
      {
        v138 = v20;
        goto LABEL_96;
      }
    }
  }

  swift_retain_n();
LABEL_96:
  v112 = *v118;
  v113 = v128;
  if (*v118)
  {

    sub_1011AB788(&v138, v112, v127, v136, a6);
    if (v113)
    {

LABEL_99:
    }

    else
    {
    }
  }

  else
  {
LABEL_128:

    __break(1u);
  }

  return result;
}

uint64_t sub_1011AC2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(char *, char *))
{
  v39 = a5;
  v40 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  v9 = *(*(v40 - 8) + 64);
  v10 = __chkstk_darwin(v40);
  v38 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v36 = -v20;
    v37 = v19;
    v22 = a1 - a3;
    v30 = v20;
    v23 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v23;
    v33 = v22;
    v24 = v23;
    v25 = v40;
    while (1)
    {
      sub_1000D2A70(v24, v18, &qword_1016A5A10, &unk_10140A6F0);
      sub_1000D2A70(v21, v14, &qword_1016A5A10, &unk_10140A6F0);
      v26 = v39(&v18[*(v25 + 48)], &v14[*(v25 + 48)]);
      sub_10000B3A8(v14, &qword_1016A5A10, &unk_10140A6F0);
      result = sub_10000B3A8(v18, &qword_1016A5A10, &unk_10140A6F0);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v22 = v33 - 1;
        v23 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_1011AAE0C(v24, v38);
      v25 = v40;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1011AAE0C(v27, v21);
      v21 += v36;
      v24 += v36;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1011AC534(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11 = *(sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;

      sub_1011AB958(v12, v13, a1, v8, a2, a3);

      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_1011AC2D0(0, v6, 1, a1, a2);
  }
}

uint64_t sub_1011AC6E4(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = *(sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0) - 8);
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;

  sub_1011AC534(v12, a2, a3);

  *a1 = v9;
}

uint64_t sub_1011AC7F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1011AC80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011AC874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011AC8DC()
{
  v1 = *(type metadata accessor for BeaconPayloadFileManager() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1011A8398(v0 + v2, v4, v5);
}

uint64_t sub_1011AC974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[20] = a8;
  v9[21] = v8;
  v9[18] = a6;
  v9[19] = a7;
  v9[16] = a4;
  v9[17] = a5;
  v9[14] = a2;
  v9[15] = a3;
  v9[13] = a1;
  return _swift_task_switch(sub_1011AC9A4, v8, 0);
}

uint64_t sub_1011AC9A4()
{
  v23 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  v0[22] = sub_1000076D4(v2, qword_10177AE40);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_1000136BC(v6, v5, &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting session for importing url: %{private,mask.hash}s.", v7, 0x16u);
    sub_100007BAC(v8);
  }

  v9 = v0[20];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];

  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_1011ACBC8;
  v14 = v0[19];
  v15 = v0[20];
  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[15];
  v19 = v0[16];
  v20 = v0[14];

  return sub_1011B2C0C(v20, v18, v19, v16, v17, v14, v15);
}

uint64_t sub_1011ACBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 184);
  v7 = *v4;
  v5[24] = a1;
  v5[25] = a2;
  v5[26] = a3;

  if (v3)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = v5[21];

    return _swift_task_switch(sub_1011ACD14, v10, 0);
  }
}

uint64_t sub_1011ACD14()
{
  v22 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[22];

  sub_100017D5C(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  sub_100016590(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[25];
    v7 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = sub_100646BE8(v8, v7);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 7104878;
      v13 = 0xE300000000000000;
    }

    v14 = sub_1000136BC(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "KeyDropStartSessionRequest: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v15 = v0[25];
  v16 = v0[26];
  v17 = v0[24];
  v0[11] = &type metadata for KeyDropStartSessionRequest;
  v0[12] = sub_1011B3798();
  v0[8] = v17;
  v0[9] = v15;
  v0[10] = v16;

  sub_100017D5C(v15, v16);
  v18 = swift_task_alloc();
  v0[27] = v18;
  *v18 = v0;
  v18[1] = sub_1011ACF34;
  v19 = v0[21];

  return sub_100643914((v0 + 2), (v0 + 8), 8);
}

uint64_t sub_1011ACF34()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v8 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);
    v5 = sub_1011AD0EC;
  }

  else
  {
    v6 = *(v2 + 168);
    sub_100007BAC((v2 + 64));
    v5 = sub_1011AD05C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011AD05C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 104);

  sub_100016590(v1, v2);
  v5 = *(v0 + 16);
  v6 = *(v0 + 48);
  v4[1] = *(v0 + 32);
  v4[2] = v6;
  *v4 = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1011AD0EC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 8);
  v4 = v0[28];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1011AD168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a2;
  v4[9] = v3;
  v4[7] = a1;

  v8 = swift_task_alloc();
  v4[10] = v8;
  *v8 = v4;
  v8[1] = sub_1011AD258;

  return sub_1011B2C0C(a1, a2, a3, 0, 0, 0, 0);
}

uint64_t sub_1011AD258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;

  if (v3)
  {
    v8 = *(v7 + 8);

    return v8(0);
  }

  else
  {
    v10 = v5[9];

    return _swift_task_switch(sub_1011AD3A8, v10, 0);
  }
}

uint64_t sub_1011AD3A8()
{
  v22 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = type metadata accessor for Logger();
  v0[14] = sub_1000076D4(v4, qword_10177AE40);

  sub_100017D5C(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  sub_100016590(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = sub_100646BE8(v8, v7);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 7104878;
      v13 = 0xE300000000000000;
    }

    v14 = sub_1000136BC(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "KeyDropPreviewForImportRequest: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[11];
  v0[5] = &type metadata for KeyDropStartSessionRequest;
  v0[6] = sub_1011B3798();
  v0[2] = v17;
  v0[3] = v15;
  v0[4] = v16;

  sub_100017D5C(v15, v16);
  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = sub_1011AD5F4;
  v19 = v0[9];

  return sub_101259064((v0 + 2), 7);
}

uint64_t sub_1011AD5F4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_1011AD89C;
  }

  else
  {
    v6 = *(v2 + 72);
    sub_100007BAC((v2 + 16));
    v5 = sub_1011AD71C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011AD71C()
{
  v16 = v0;
  v1 = v0[14];
  v2 = v0[8];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  if (v5)
  {
    v10 = v0[7];
    v9 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    *(v11 + 14) = sub_1000136BC(v10, v9, &v15);
    _os_log_impl(&_mh_execute_header, v3, v4, "preview import returned share is valid %{private,mask.hash}s", v11, 0x16u);
    sub_100007BAC(v12);
  }

  sub_100016590(v7, v6);

  v13 = v0[1];

  return v13(1);
}

uint64_t sub_1011AD89C()
{
  v21 = v0;
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[8];
  sub_100007BAC(v0 + 2);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v8 = v0[7];
    v7 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    *(v9 + 14) = sub_1000136BC(v8, v7, &v20);
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "preview import for share %{private,mask.hash}s returned error: %@", v9, 0x20u);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v11);
  }

  v13 = v0[16];
  v14 = v0[12];
  v15 = v0[13];
  v16 = v0[11];
  swift_willThrow();

  sub_100016590(v14, v15);
  v17 = v0[16];
  v18 = v0[1];

  return v18(0);
}

uint64_t sub_1011ADA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for UUID();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1011ADB70, v4, 0);
}

uint64_t sub_1011ADB70()
{
  v37 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v5, qword_10177AE40);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1011B1CEC(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v8;
    v15 = v6;
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v14, v17, &v36);
    v6 = v15;

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v34, "Downloading keys for imported share id: %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v35);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = v0[14];
  v20 = v0[12];
  v21 = v0[10];
  v22 = v0[8];
  v23 = type metadata accessor for DeviceIdentityUtility();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v0[17] = v26;
  swift_defaultActor_initialize();
  v27 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  *(v26 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v26 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v26 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 13;
  v6(v19, v22, v20);

  v29 = swift_task_alloc();
  v0[18] = v29;
  *v29 = v0;
  v29[1] = sub_1011ADF00;
  v30 = v0[14];
  v31 = v0[9];
  v32 = v0[10];

  return sub_1011B1E78(v30, v31, v32, v26);
}

uint64_t sub_1011ADF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 144);
  v8 = *v4;
  v6[19] = a1;
  v6[20] = a2;
  v6[21] = a3;
  v6[22] = v3;

  v9 = v5[11];
  if (v3)
  {
    v10 = sub_1011AE258;
  }

  else
  {
    v10 = sub_1011AE038;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1011AE038()
{
  v23 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[16];

  sub_100017D5C(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  sub_100016590(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[20];
    v7 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = sub_100646BE8(v8, v7);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 7104878;
      v13 = 0xE300000000000000;
    }

    v14 = sub_1000136BC(v11, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "KeyDropDownloadDelegatedKeysRequest: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v15 = v0[20];
  v16 = v0[21];
  v17 = v0[19];
  v0[5] = &type metadata for KeyDropDownloadDelegatedKeysRequest;
  v0[6] = sub_1011B2B98();
  v0[2] = v17;
  v0[3] = v15;
  v0[4] = v16;

  sub_100017D5C(v15, v16);
  v18 = swift_task_alloc();
  v0[23] = v18;
  *v18 = v0;
  v18[1] = sub_1011AE2CC;
  v19 = v0[11];
  v20 = v0[7];

  return sub_100641568(v20, (v0 + 2), 9);
}

uint64_t sub_1011AE258()
{
  v1 = v0[17];

  v2 = v0[22];
  v4 = v0[14];
  v3 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1011AE2CC()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_1011AE498;
  }

  else
  {
    v6 = *(v2 + 88);
    sub_100007BAC((v2 + 16));
    v5 = sub_1011AE3F4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011AE3F4()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];

  sub_100016590(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1011AE498()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[17];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);
  v5 = v0[24];
  v7 = v0[14];
  v6 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1011AE538(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = v6;
  *(v7 + 320) = a4;
  *(v7 + 104) = a3;
  *(v7 + 112) = a5;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  v8 = type metadata accessor for P256.Signing.PrivateKey();
  *(v7 + 136) = v8;
  v9 = *(v8 - 8);
  *(v7 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v11 = type metadata accessor for P256.Signing.ECDSASignature();
  *(v7 + 160) = v11;
  v12 = *(v11 - 8);
  *(v7 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v14 = type metadata accessor for KeyDropDownloadRequest.KeyDropDownloadContent(0);
  *(v7 + 184) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  v16 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v7 + 200) = v16;
  v17 = *(v16 - 8);
  *(v7 + 208) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  v19 = type metadata accessor for KeyDropJoinToken(0);
  *(v7 + 224) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  *(v7 + 240) = v21;
  v22 = *(v21 - 8);
  *(v7 + 248) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_1011AE790, v6, 0);
}

uint64_t sub_1011AE790()
{
  v83 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177CDD0);
  v80 = *(v3 + 16);
  (v80)(v1, v5, v2);
  swift_bridgeObjectRetain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 272);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 120);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82[0] = v78;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1011B1CEC(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v81 = *(v11 + 8);
    v81(v10, v12);
    v18 = sub_1000136BC(v15, v17, v82);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2048;
    v19 = *(v13 + 16);

    *(v14 + 24) = v19;

    _os_log_impl(&_mh_execute_header, v7, v8, "Downloading keys for share id: %{private,mask.hash}s, request count: %ld.", v14, 0x20u);
    sub_100007BAC(v78);
  }

  else
  {
    v20 = *(v0 + 120);
    swift_bridgeObjectRelease_n();

    v81 = *(v11 + 8);
    v81(v10, v12);
  }

  v21 = *(v0 + 256);
  v76 = *(v0 + 264);
  v22 = *(v0 + 240);
  v24 = *(v0 + 208);
  v23 = *(v0 + 216);
  v25 = *(v0 + 192);
  v75 = *(v0 + 200);
  v73 = *(v0 + 232);
  v74 = *(v0 + 184);
  v26 = *(v0 + 112);
  v79 = *(v0 + 120);
  v77 = *(v0 + 320);
  v27 = *(v0 + 96);
  v28 = *(v0 + 104);
  v80();
  (v80)(v21, v28, v22);
  sub_1011B4300(v26, v73, type metadata accessor for KeyDropJoinToken);
  v29 = type metadata accessor for JSONEncoder();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v23 = sub_100281AE0;
  v23[1] = 0;
  (*(v24 + 104))(v23, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v75);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  (v80)(v25, v76, v22);
  static Date.trustedNow.getter(v25 + v74[6]);
  (v80)(v25 + v74[7], v21, v22);
  *(v25 + v74[5]) = v77;
  *(v25 + v74[8]) = v79;
  sub_1011B1CEC(&qword_1016CA2B0, type metadata accessor for KeyDropDownloadRequest.KeyDropDownloadContent);

  v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 280) = v32;
  *(v0 + 288) = v33;
  v34 = v32;
  v35 = v33;
  v36 = *(v0 + 152);
  v37 = (*(v0 + 232) + *(*(v0 + 224) + 20));
  v38 = *v37;
  v39 = v37[1];
  *(v0 + 56) = *v37;
  *(v0 + 64) = v39;
  sub_100017D5C(v38, v39);
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v40 = *(v0 + 176);
  v41 = *(v0 + 152);
  *(v0 + 72) = v34;
  *(v0 + 80) = v35;
  sub_1000E0A3C();
  P256.Signing.PrivateKey.signature<A>(for:)();
  v42 = (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  v43 = sub_100646BE0(v42);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v44 = qword_10177C218;
  v45 = [objc_opt_self() sharedInstance];
  v46 = [v45 isInternalBuild];

  if ((v46 & 1) != 0 && (v47 = String._bridgeToObjectiveC()(), v48 = [v44 BOOLForKey:v47], v47, v48))
  {
  }

  else
  {
    v49 = *(v0 + 176);
    v50 = P256.Signing.ECDSASignature.derRepresentation.getter();
    v52 = v51;
    v53 = Data.base64EncodedString(options:)(0);
    sub_100016590(v50, v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v43;
    sub_100FFACA0(v53._countAndFlagsBits, v53._object, 0xD000000000000012, 0x800000010134D2A0, isUniquelyReferenced_nonNull_native);

    v43 = v82[0];
  }

  *(v0 + 296) = v43;
  v55 = *(v0 + 256);
  v56 = *(v0 + 264);
  v57 = *(v0 + 240);
  v58 = *(v0 + 248);
  v59 = *(v0 + 232);
  v60 = *(v0 + 192);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  sub_1011B1C38(v60, type metadata accessor for KeyDropDownloadRequest.KeyDropDownloadContent);
  sub_1011B1C38(v59, type metadata accessor for KeyDropJoinToken);
  v81(v55, v57);
  v81(v56, v57);

  sub_100017D5C(v34, v35);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  sub_100016590(v34, v35);
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v82[0] = v64;
    *v63 = 136315138;
    v65 = sub_100646BE8(v34, v35);
    if (v66)
    {
      v67 = v66;
    }

    else
    {
      v65 = 7104878;
      v67 = 0xE300000000000000;
    }

    v68 = sub_1000136BC(v65, v67, v82);

    *(v63 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v61, v62, "KeyDropDownloadRequest: %s", v63, 0xCu);
    sub_100007BAC(v64);
  }

  *(v0 + 40) = &type metadata for KeyDropDownloadRequest;
  *(v0 + 48) = sub_1011B1C98();
  *(v0 + 16) = v43;
  *(v0 + 24) = v34;
  *(v0 + 32) = v35;

  sub_100017D5C(v34, v35);
  v69 = swift_task_alloc();
  *(v0 + 304) = v69;
  *v69 = v0;
  v69[1] = sub_1011AF230;
  v70 = *(v0 + 128);
  v71 = *(v0 + 88);

  return sub_1006420FC(v71, v0 + 16, 1);
}

uint64_t sub_1011AF230()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v8 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_1011AF448;
  }

  else
  {
    v6 = *(v2 + 128);
    sub_100007BAC((v2 + 16));
    v5 = sub_1011AF358;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011AF358()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[22];
  v13 = v0[19];

  sub_100016590(v3, v2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1011AF448()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];

  sub_100016590(v3, v2);
  sub_100007BAC(v0 + 2);
  v4 = v0[39];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[22];
  v12 = v0[19];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1011AF534(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a5;
  v15[1] = a3;
  v8 = sub_1000BC4D4(&qword_1016CA6B8, &qword_10140AD98);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4E18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = a2;
  v19 = 0;
  sub_1010602A0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v5)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v18 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1011AF71C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA608, &qword_10140AD40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B40E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  type metadata accessor for UUID();
  sub_1011B1CEC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropDownloadRequest.KeyDropDownloadContent(0);
    v19 = *(v3 + v11[5]);
    v18 = 1;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[0] = v11[6];
    v17 = 2;
    type metadata accessor for Date();
    sub_1011B1CEC(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v11[7];
    v16 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[1] = *(v3 + v11[8]);
    v15 = 4;
    sub_1000BC4D4(&qword_1016CA618, &qword_10140AD48);
    sub_1011B4138();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1011AFA04()
{
  v1 = 1701869940;
  v2 = 0x617461646174656DLL;
  if (*v0 != 2)
  {
    v2 = 0x7379654B78616DLL;
  }

  if (*v0)
  {
    v1 = 0x646E497472617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1011AFA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1011B44DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1011AFAA4(uint64_t a1)
{
  v2 = sub_1011B4E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011AFAE0(uint64_t a1)
{
  v2 = sub_1011B4E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011AFB44(uint64_t a1)
{
  v2 = sub_1011B40E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011AFB80(uint64_t a1)
{
  v2 = sub_1011B40E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011AFBD4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA6F0, &qword_10140ADB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4EC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for UUID();
  sub_1011B1CEC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropDownloadResponse.Member(0);
    v12 = *(v3 + *(v11 + 20));
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = (v3 + *(v11 + 24));
    v14 = v13[1];
    v17 = *v13;
    v18 = v14;
    v16[15] = 2;
    sub_10002E98C(v17, v14);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v17, v18);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1011AFDE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v25 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016CA6E0, &qword_10140ADA8);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for KeyDropDownloadResponse.Member(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4EC0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v14;
  v17 = v22;
  LOBYTE(v26) = 0;
  sub_1011B1CEC(&qword_101698300, &type metadata accessor for UUID);
  v18 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v16, v25, v4);
  LOBYTE(v26) = 1;
  *(v16 + *(v11 + 20)) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v27 = 2;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v23 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v26;
  sub_1011B4300(v16, v21, type metadata accessor for KeyDropDownloadResponse.Member);
  sub_100007BAC(a1);
  return sub_1011B1C38(v16, type metadata accessor for KeyDropDownloadResponse.Member);
}

uint64_t sub_1011B0190(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA6F8, &qword_10140ADB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4210();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  sub_1011B1CEC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropDownloadResponse(0);
    v12 = v11[5];
    LOBYTE(v15) = 1;
    type metadata accessor for Date();
    sub_1011B1CEC(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + v11[6]);
    HIBYTE(v14) = 2;
    sub_1000BC4D4(&qword_1016CA640, &unk_10140AD58);
    sub_1011B4F14(&qword_1016CA700, &qword_1016CA708);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v11[7]);
    HIBYTE(v14) = 3;
    sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
    sub_1011B4264(&qword_10169CDB8, &qword_10169CDC0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1011B04B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for UUID();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v27 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016CA630, &qword_10140AD50);
  v25 = *(v10 - 8);
  v26 = v10;
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = type metadata accessor for KeyDropDownloadResponse(0);
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4210();
  v28 = v13;
  v19 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_100007BAC(a1);
  }

  v20 = v24;
  LOBYTE(v31) = 0;
  sub_1011B1CEC(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 32))(v17, v27, v7);
  type metadata accessor for Date();
  LOBYTE(v31) = 1;
  sub_1011B1CEC(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001578A0(v6, &v17[v14[5]]);
  sub_1000BC4D4(&qword_1016CA640, &unk_10140AD58);
  v30 = 2;
  sub_1011B4F14(&qword_1016CA648, &qword_1016CA650);
  v29 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v25;
  *&v17[v14[6]] = v31;
  sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
  v30 = 3;
  sub_1011B4264(&qword_1016B9BE0, &qword_1016B9BE8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 8))(v28, v26);
  *&v17[v14[7]] = v31;
  sub_1011B4300(v17, v23, type metadata accessor for KeyDropDownloadResponse);
  sub_100007BAC(a1);
  return sub_1011B1C38(v17, type metadata accessor for KeyDropDownloadResponse);
}

uint64_t sub_1011B0A60(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA6C8, &qword_10140ADA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4368();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for Date();
  sub_1011B1CEC(&unk_101697F60, &type metadata accessor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropDownloadKeysMetadataResponse(0);
    v12 = (v3 + *(v11 + 20));
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 1;
    sub_100017D5C(v17, v13);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v17, v18);
    v17 = *(v3 + *(v11 + 24));
    v16 = 2;
    sub_1000BC4D4(&qword_1016CA668, &qword_10140AD70);
    sub_1011B43BC(&qword_1016CA6D0, sub_1011B4E6C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1011B0CCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1000BC4D4(&qword_1016CA658, &qword_10140AD68);
  v21 = *(v8 - 8);
  v22 = v8;
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for KeyDropDownloadKeysMetadataResponse(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4368();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v17 = v21;
  type metadata accessor for Date();
  LOBYTE(v23) = 0;
  sub_1011B1CEC(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001578A0(v7, v15);
  v24 = 1;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v15[*(v12 + 20)] = v23;
  sub_1000BC4D4(&qword_1016CA668, &qword_10140AD70);
  v24 = 2;
  sub_1011B43BC(&qword_1016CA670, sub_1011B4434);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v11, v22);
  *&v15[*(v12 + 24)] = v23;
  sub_1011B4300(v15, v20, type metadata accessor for KeyDropDownloadKeysMetadataResponse);
  sub_100007BAC(a1);
  return sub_1011B1C38(v15, type metadata accessor for KeyDropDownloadKeysMetadataResponse);
}

uint64_t sub_1011B10BC(uint64_t a1)
{
  v2 = sub_1011B4EC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B10F8(uint64_t a1)
{
  v2 = sub_1011B4EC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011B1168()
{
  v1 = 0x64496572616873;
  v2 = 0x737265626D656DLL;
  if (*v0 != 2)
  {
    v2 = 0x616B63615079656BLL;
  }

  if (*v0)
  {
    v1 = 0x6974617269707865;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1011B11F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1011B4648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1011B1218(uint64_t a1)
{
  v2 = sub_1011B4210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B1254(uint64_t a1)
{
  v2 = sub_1011B4210();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011B12C0()
{
  v1 = 0x646174654D626577;
  if (*v0 != 1)
  {
    v1 = 0x616B63615079656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7078456572616873;
  }
}

uint64_t sub_1011B1338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1011B47B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1011B1360(uint64_t a1)
{
  v2 = sub_1011B4368();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B139C(uint64_t a1)
{
  v2 = sub_1011B4368();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011B1408(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA6A0, &qword_10140AD88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4DC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1011B15A8()
{
  v1 = 0x6B6361626C6C6163;
  if (*v0 != 1)
  {
    v1 = 0x546E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1011B1610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1011B48E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1011B1638(uint64_t a1)
{
  v2 = sub_1011B4DC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B1674(uint64_t a1)
{
  v2 = sub_1011B4DC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011B16C8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA680, &qword_10140AD78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4488();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for UUID();
  sub_1011B1CEC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1011B1884(uint64_t a1)
{
  v2 = sub_1011B4488();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B18C0(uint64_t a1)
{
  v2 = sub_1011B4488();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011B1914(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA6B0, &qword_10140AD90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4D70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1011B1AB4()
{
  v1 = 0x6B6F546863746566;
  if (*v0 != 1)
  {
    v1 = 0x546E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C725568747561;
  }
}

uint64_t sub_1011B1B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1011B4A04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1011B1B44(uint64_t a1)
{
  v2 = sub_1011B4D70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B1B80(uint64_t a1)
{
  v2 = sub_1011B4D70();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1011B1BBC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1011B4B28(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1011B1C38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1011B1C98()
{
  result = qword_1016CA2B8;
  if (!qword_1016CA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA2B8);
  }

  return result;
}

uint64_t sub_1011B1CEC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1011B1D34(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for KeyDropDownloadResponse.Member(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_100006654(v7, v6);
      return 1;
    }

    goto LABEL_7;
  }

  if (v9 >> 60 == 15)
  {
LABEL_7:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    sub_100006654(v10, v9);
    return 0;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  v12 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
  sub_100006654(v10, v9);
  sub_100006654(v7, v6);
  return (v12 & 1) != 0;
}

uint64_t sub_1011B1E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for HashAlgorithm();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent(0);
  v4[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v10 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v4[18] = v10;
  v11 = *(v10 - 8);
  v4[19] = v11;
  v12 = *(v11 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_1011B1FC8, 0, 0);
}

uint64_t sub_1011B1FC8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v0[21] = JSONEncoder.init()();
  *v1 = sub_100281AE0;
  v1[1] = 0;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v4);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v12 = type metadata accessor for UUID();
  v0[22] = v12;
  v13 = *(v12 - 8);
  v0[23] = v13;
  (*(v13 + 16))(v3, v8, v12);
  v14 = (v3 + *(v5 + 20));
  *v14 = v7;
  v14[1] = v6;
  sub_1011B1CEC(&qword_1016CA2C8, type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent);
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[24] = 0;
  v0[25] = v15;
  v0[26] = v16;
  v17 = sub_100646BE0(v15);
  v0[27] = v17;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20 && (v21 = String._bridgeToObjectiveC()(), v22 = [v18 BOOLForKey:v21], v21, (v22 & 1) != 0))
  {
    v23 = v0[17];
    v24 = v0[12];
    v25 = v0[9];

    (*(v13 + 8))(v25, v12);
    sub_1011B1C38(v23, type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent);
    v26 = v0[20];
    v27 = v0[17];
    v28 = v0[15];

    v29 = v0[1];
    v30 = v0[25];
    v31 = v0[26];

    return v29(v17, v30, v31);
  }

  else
  {
    v33 = swift_task_alloc();
    v0[28] = v33;
    *v33 = v0;
    v33[1] = sub_1011B23EC;

    return sub_100E9D67C();
  }
}

uint64_t sub_1011B23EC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v6 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;

  return _swift_task_switch(sub_1011B24EC, 0, 0);
}

uint64_t sub_1011B24EC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[14];
  v7 = v0[15];
  v0[7] = v2;
  v18 = v6;
  v19 = v0[13];
  v20 = v7;
  v0[8] = v1;
  v0[5] = &type metadata for Data;
  v0[6] = &protocol witness table for Data;
  v0[2] = v3;
  v0[3] = v4;
  v8 = sub_1000035D0(v0 + 2, &type metadata for Data);
  v9 = *v8;
  v10 = v8[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v9, v10);
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);
  v11 = v0[8];
  v0[31] = v0[7];
  v0[32] = v11;
  (*(v18 + 104))(v20, enum case for HashAlgorithm.sha256(_:), v19);
  v12 = Data.hash(algorithm:)();
  v14 = v13;
  v0[33] = v12;
  v0[34] = v13;
  (*(v18 + 8))(v20, v19);
  v15 = swift_task_alloc();
  v0[35] = v15;
  *v15 = v0;
  v15[1] = sub_1011B26BC;
  v16 = v0[12];

  return sub_100EA87F4(v12, v14, v16);
}

uint64_t sub_1011B26BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = sub_1011B2944;
  }

  else
  {
    v8 = v4[33];
    v9 = v4[34];
    v4[37] = a1;
    sub_100016590(v8, v9);
    v7 = sub_1011B27EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1011B27EC()
{
  v22 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[27];
  v6 = v0[23];
  v7 = v0[21];
  v19 = v0[22];
  v20 = v0[17];
  v8 = v0[12];
  v9 = v0[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v21);

  sub_100016590(v4, v3);

  (*(v6 + 8))(v9, v19);
  sub_1011B1C38(v20, type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent);
  v11 = v21;
  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[15];

  v15 = v0[1];
  v16 = v0[25];
  v17 = v0[26];

  return v15(v11, v16, v17);
}

uint64_t sub_1011B2944()
{
  v1 = v0[31];
  v2 = v0[32];
  sub_100016590(v0[33], v0[34]);
  sub_100016590(v1, v2);
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v3 = v0[36];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177CDD0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[36];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  v12 = v0[17];
  v13 = v0[12];
  v14 = v0[9];
  if (v7)
  {
    v26 = v0[22];
    v15 = swift_slowAlloc();
    v27 = v12;
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate keydrop fetch attestation header: %{public}@.", v15, 0xCu);
    sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);
    v12 = v27;

    v10 = v26;
  }

  (*(v9 + 8))(v14, v10);
  sub_1011B1C38(v12, type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent);
  v18 = v0[27];
  v19 = v0[20];
  v20 = v0[17];
  v21 = v0[15];

  v22 = v0[1];
  v23 = v0[25];
  v24 = v0[26];

  return v22(v18, v23, v24);
}

unint64_t sub_1011B2B98()
{
  result = qword_1016CA2C0;
  if (!qword_1016CA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA2C0);
  }

  return result;
}

uint64_t sub_1011B2C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[16] = a2;
  v7[17] = a3;
  v7[15] = a1;
  v8 = type metadata accessor for HashAlgorithm();
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();
  v11 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v7[25] = v11;
  v12 = *(v11 - 8);
  v7[26] = v12;
  v13 = *(v12 + 64) + 15;
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_1011B2D34, 0, 0);
}

uint64_t sub_1011B2D34()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v29 = *(v0 + 160);
  v30 = *(v0 + 144);
  *(v0 + 224) = JSONEncoder.init()();
  *v1 = sub_100281AE0;
  v1[1] = 0;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v3);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v30;
  *(v0 + 48) = v29;
  sub_1011B37EC();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 232) = 0;
  *(v0 + 240) = v9;
  *(v0 + 248) = v10;
  v11 = *(v0 + 168);
  v12 = *(v0 + 152);
  v13 = *(v0 + 128);

  v15 = sub_100646BE0(v14);
  *(v0 + 256) = v15;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C218;
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 isInternalBuild];

  if (v18 && (v19 = String._bridgeToObjectiveC()(), v20 = [v16 BOOLForKey:v19], v19, (v20 & 1) != 0))
  {
    v21 = *(v0 + 136);

    v22 = *(v0 + 216);
    v23 = *(v0 + 192);

    v24 = *(v0 + 8);
    v25 = *(v0 + 240);
    v26 = *(v0 + 248);

    return v24(v15, v25, v26);
  }

  else
  {
    v28 = swift_task_alloc();
    *(v0 + 264) = v28;
    *v28 = v0;
    v28[1] = sub_1011B3088;

    return sub_100E9F6BC();
  }
}

uint64_t sub_1011B3088(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v6 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return _swift_task_switch(sub_1011B3188, 0, 0);
}

uint64_t sub_1011B3188()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  v6 = v0[23];
  v7 = v0[24];
  v0[13] = v2;
  v18 = v6;
  v19 = v0[22];
  v20 = v7;
  v0[14] = v1;
  v0[11] = &type metadata for Data;
  v0[12] = &protocol witness table for Data;
  v0[8] = v3;
  v0[9] = v4;
  v8 = sub_1000035D0(v0 + 8, &type metadata for Data);
  v9 = *v8;
  v10 = v8[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v9, v10);
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 8);
  v11 = v0[14];
  v0[36] = v0[13];
  v0[37] = v11;
  (*(v18 + 104))(v20, enum case for HashAlgorithm.sha256(_:), v19);
  v12 = Data.hash(algorithm:)();
  v14 = v13;
  v0[38] = v12;
  v0[39] = v13;
  (*(v18 + 8))(v20, v19);
  v15 = swift_task_alloc();
  v0[40] = v15;
  *v15 = v0;
  v15[1] = sub_1011B3358;
  v16 = v0[17];

  return sub_100EA87F4(v12, v14, v16);
}

uint64_t sub_1011B3358(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v7 = sub_1011B3588;
  }

  else
  {
    v8 = v4[38];
    v9 = v4[39];
    v4[42] = a1;
    sub_100016590(v8, v9);
    v7 = sub_1011B3488;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1011B3488()
{
  v17 = v0;
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[32];
  v6 = v0[28];
  v7 = v0[17];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v16);

  sub_100016590(v4, v3);

  v9 = v16;
  v10 = v0[27];
  v11 = v0[24];

  v12 = v0[1];
  v13 = v0[30];
  v14 = v0[31];

  return v12(v9, v13, v14);
}

uint64_t sub_1011B3588()
{
  v1 = v0[36];
  v2 = v0[37];
  sub_100016590(v0[38], v0[39]);
  sub_100016590(v1, v2);
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v3 = v0[41];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177CDD0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[41];
  v9 = v0[28];
  v10 = v0[17];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate keydrop fetch attestation header: %{public}@.", v11, 0xCu);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    v14 = v0[28];
  }

  v15 = v0[32];
  v16 = v0[27];
  v17 = v0[24];

  v18 = v0[1];
  v19 = v0[30];
  v20 = v0[31];

  return v18(v15, v19, v20);
}

unint64_t sub_1011B3798()
{
  result = qword_1016CA2D0;
  if (!qword_1016CA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA2D0);
  }

  return result;
}

unint64_t sub_1011B37EC()
{
  result = qword_1016CA2D8;
  if (!qword_1016CA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA2D8);
  }

  return result;
}

uint64_t sub_1011B3850(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1011B38AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1011B392C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1011B3980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void sub_1011B3A54()
{
  sub_1011B3F0C(319, &qword_1016BA040, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1011B3D30(319, &unk_1016CA3D8, &type metadata for KeyDropInterface.KeyPackageImportedShare, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1011B3B6C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1011B3D30(319, &unk_1016CA478, &type metadata for KeyDropDownloadRequest.PackageRequest, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1011B3C80()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1011B3D30(319, &qword_10169A330, &type metadata for Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1011B3D30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1011B3DC8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1011B3F0C(319, &qword_1016BA040, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1011B3F0C(319, &unk_1016CA5B8, type metadata accessor for KeyDropDownloadResponse.Member, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1011B3F0C(319, &unk_1016C3C40, type metadata accessor for KeyDropInterface.KeyPackage, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1011B3F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1011B3F70(uint64_t a1)
{
  result = sub_1011B3F98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011B3F98()
{
  result = qword_1016CA5F0;
  if (!qword_1016CA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA5F0);
  }

  return result;
}

unint64_t sub_1011B3FEC(uint64_t a1)
{
  result = sub_1011B4014();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011B4014()
{
  result = qword_1016CA5F8;
  if (!qword_1016CA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA5F8);
  }

  return result;
}

unint64_t sub_1011B4068(uint64_t a1)
{
  result = sub_1011B4090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011B4090()
{
  result = qword_1016CA600;
  if (!qword_1016CA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA600);
  }

  return result;
}

unint64_t sub_1011B40E4()
{
  result = qword_1016CA610;
  if (!qword_1016CA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA610);
  }

  return result;
}

unint64_t sub_1011B4138()
{
  result = qword_1016CA620;
  if (!qword_1016CA620)
  {
    sub_1000BC580(&qword_1016CA618, &qword_10140AD48);
    sub_1011B41BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA620);
  }

  return result;
}

unint64_t sub_1011B41BC()
{
  result = qword_1016CA628;
  if (!qword_1016CA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA628);
  }

  return result;
}

unint64_t sub_1011B4210()
{
  result = qword_1016CA638;
  if (!qword_1016CA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA638);
  }

  return result;
}

uint64_t sub_1011B4264(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169CDB0, &qword_10139A080);
    sub_1011B1CEC(a2, type metadata accessor for KeyDropInterface.KeyPackage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1011B4300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1011B4368()
{
  result = qword_1016CA660;
  if (!qword_1016CA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA660);
  }

  return result;
}

uint64_t sub_1011B43BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016CA668, &qword_10140AD70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1011B4434()
{
  result = qword_1016CA678;
  if (!qword_1016CA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA678);
  }

  return result;
}

unint64_t sub_1011B4488()
{
  result = qword_1016CA688;
  if (!qword_1016CA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA688);
  }

  return result;
}

uint64_t sub_1011B44DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E497472617473 && a2 == 0xEA00000000007865 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7379654B78616DLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1011B4648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1011B47B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7078456572616873 && a2 == 0xED00007354797269;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646174654D626577 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1011B48E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6361626C6C6163 && a2 == 0xED000065756C6156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546E6F6973736573 && a2 == 0xEC0000006E656B6FLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1011B4A04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C725568747561 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F546863746566 && a2 == 0xEA00000000006E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546E6F6973736573 && a2 == 0xEC0000006E656B6FLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1011B4B28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016CA690, &qword_10140AD80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4D70();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v14;
  v25 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100007BAC(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_1011B4D70()
{
  result = qword_1016CA698;
  if (!qword_1016CA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA698);
  }

  return result;
}

unint64_t sub_1011B4DC4()
{
  result = qword_1016CA6A8;
  if (!qword_1016CA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA6A8);
  }

  return result;
}

unint64_t sub_1011B4E18()
{
  result = qword_1016CA6C0;
  if (!qword_1016CA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA6C0);
  }

  return result;
}

unint64_t sub_1011B4E6C()
{
  result = qword_1016CA6D8;
  if (!qword_1016CA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA6D8);
  }

  return result;
}

unint64_t sub_1011B4EC0()
{
  result = qword_1016CA6E8;
  if (!qword_1016CA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA6E8);
  }

  return result;
}

uint64_t sub_1011B4F14(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016CA640, &unk_10140AD58);
    sub_1011B1CEC(a2, type metadata accessor for KeyDropDownloadResponse.Member);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1011B5034()
{
  result = qword_1016CA710;
  if (!qword_1016CA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA710);
  }

  return result;
}

unint64_t sub_1011B508C()
{
  result = qword_1016CA718;
  if (!qword_1016CA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA718);
  }

  return result;
}

unint64_t sub_1011B50E4()
{
  result = qword_1016CA720;
  if (!qword_1016CA720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA720);
  }

  return result;
}

unint64_t sub_1011B513C()
{
  result = qword_1016CA728;
  if (!qword_1016CA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA728);
  }

  return result;
}

unint64_t sub_1011B5194()
{
  result = qword_1016CA730;
  if (!qword_1016CA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA730);
  }

  return result;
}

unint64_t sub_1011B51EC()
{
  result = qword_1016CA738;
  if (!qword_1016CA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA738);
  }

  return result;
}

unint64_t sub_1011B5244()
{
  result = qword_1016CA740;
  if (!qword_1016CA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA740);
  }

  return result;
}

unint64_t sub_1011B529C()
{
  result = qword_1016CA748;
  if (!qword_1016CA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA748);
  }

  return result;
}

unint64_t sub_1011B52F4()
{
  result = qword_1016CA750;
  if (!qword_1016CA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA750);
  }

  return result;
}

unint64_t sub_1011B534C()
{
  result = qword_1016CA758;
  if (!qword_1016CA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA758);
  }

  return result;
}

unint64_t sub_1011B53A4()
{
  result = qword_1016CA760;
  if (!qword_1016CA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA760);
  }

  return result;
}

unint64_t sub_1011B53FC()
{
  result = qword_1016CA768;
  if (!qword_1016CA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA768);
  }

  return result;
}

unint64_t sub_1011B5454()
{
  result = qword_1016CA770;
  if (!qword_1016CA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA770);
  }

  return result;
}

unint64_t sub_1011B54AC()
{
  result = qword_1016CA778;
  if (!qword_1016CA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA778);
  }

  return result;
}

unint64_t sub_1011B5504()
{
  result = qword_1016CA780;
  if (!qword_1016CA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA780);
  }

  return result;
}

unint64_t sub_1011B555C()
{
  result = qword_1016CA788;
  if (!qword_1016CA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA788);
  }

  return result;
}

unint64_t sub_1011B55B4()
{
  result = qword_1016CA790;
  if (!qword_1016CA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA790);
  }

  return result;
}

unint64_t sub_1011B560C()
{
  result = qword_1016CA798;
  if (!qword_1016CA798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA798);
  }

  return result;
}

unint64_t sub_1011B5664()
{
  result = qword_1016CA7A0;
  if (!qword_1016CA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA7A0);
  }

  return result;
}

unint64_t sub_1011B56BC()
{
  result = qword_1016CA7A8;
  if (!qword_1016CA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA7A8);
  }

  return result;
}

unint64_t sub_1011B5714()
{
  result = qword_1016CA7B0;
  if (!qword_1016CA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA7B0);
  }

  return result;
}

unint64_t sub_1011B576C()
{
  result = qword_1016CA7B8;
  if (!qword_1016CA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA7B8);
  }

  return result;
}

unint64_t sub_1011B57C4()
{
  result = qword_1016CA7C0;
  if (!qword_1016CA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA7C0);
  }

  return result;
}

unint64_t sub_1011B581C()
{
  result = qword_1016CA7C8[0];
  if (!qword_1016CA7C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016CA7C8);
  }

  return result;
}

uint64_t sub_1011B5900()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);
  sub_1000BB27C(*(v0 + 80));
  v6 = *(v0 + 104);
  sub_1000BB27C(*(v0 + 96));
  v7 = *(v0 + 120);
  sub_1000BB27C(*(v0 + 112));
  v8 = *(v0 + 136);
  sub_1000BB27C(*(v0 + 128));
  v9 = *(v0 + 152);
  sub_1000BB27C(*(v0 + 144));
  v10 = *(v0 + 168);
  sub_1000BB27C(*(v0 + 160));
  return v0;
}

uint64_t sub_1011B5980()
{
  sub_1011B5900();

  return swift_deallocClassInstance();
}

uint64_t sub_1011B59CC()
{
  v1 = *(v0->_countAndFlagsBits + 80);
  v2 = *(v0->_countAndFlagsBits + 88);
  type metadata accessor for LocalMessagingService();
  swift_getWitnessTable();
  v3._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  String.append(_:)(v0[1]);
  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 60;
}

uint64_t sub_1011B5B18()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  type metadata accessor for LocalMessagingService();
  swift_getMetatypeMetadata();
  return String.init<A>(describing:)();
}

void sub_1011B5B54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v15 = *v8;
  dispatch_assert_queue_V2(v8[6]);
  v18 = v8[2];
  v17 = v8[3];
  v19 = v18 == a1 && v17 == a2;
  if (v19 || (v20 = v8[2], v21 = v8[3], v16 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v16 & 1) != 0))
  {
    v22 = v8[4];
    __chkstk_darwin(v16);
    v23 = *(v15 + 80);
    v24 = *(v15 + 88);
    type metadata accessor for Message();
    type metadata accessor for MessagingMessageContext();
    swift_getTupleTypeMetadata2();
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    type metadata accessor for Result();
    swift_getFunctionTypeMetadata1();
    type metadata accessor for Optional();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (v35)
    {
      sub_1000BB27C(v35);
    }

    else
    {
      v25 = v8[10];
      if (v25)
      {
        v26 = v8[11];

        v25(a3, a4, a5, a6 & 1, a7);
        sub_1000BB27C(v25);
      }
    }
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C4F0);

    v34 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v28))
    {
      v29 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v29 = 136315650;
      v30 = sub_1011B5B18();
      v32 = sub_1000136BC(v30, v31, &v35);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1000136BC(v18, v17, &v35);
      *(v29 + 22) = 2080;
      *(v29 + 24) = sub_1000136BC(a1, a2, &v35);
      _os_log_impl(&_mh_execute_header, v34, v28, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1011B5EFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *v9;
  dispatch_assert_queue_V2(v9[6]);
  v18 = v9[2];
  v19 = v9[3];
  v20 = v18 == a1 && v19 == a2;
  if (v20 || (v21 = v9[2], v22 = v9[3], v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v17 & 1) != 0))
  {
    v23 = v9[4];
    __chkstk_darwin(v17);
    v24 = *(v16 + 80);
    v25 = *(v16 + 88);
    type metadata accessor for Message();
    type metadata accessor for MessagingMessageContext();
    swift_getTupleTypeMetadata2();
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    type metadata accessor for Result();
    swift_getFunctionTypeMetadata1();
    type metadata accessor for Optional();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (v37)
    {
      sub_1000BB27C(v37);
    }

    else
    {
      v26 = v9[12];
      if (v26)
      {
        v27 = v9[13];

        v26(a3, a4, a5, a6, a7, a8);
        sub_1000BB27C(v26);
      }
    }
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177C4F0);

    v36 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v29))
    {
      v30 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v30 = 136315650;
      v31 = sub_1011B5B18();
      v33 = sub_1000136BC(v31, v32, &v37);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1000136BC(v18, v19, &v37);
      *(v30 + 22) = 2080;
      *(v30 + 24) = sub_1000136BC(a1, a2, &v37);
      _os_log_impl(&_mh_execute_header, v36, v29, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

double sub_1011B62A4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[8];
  type metadata accessor for UUID();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for Message();
  type metadata accessor for MessagingMessageContext();

  swift_getTupleTypeMetadata2();
  sub_1000BC580(&qword_101696960, &unk_10138B220);
  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  sub_1000096E8(&qword_1016967B0);
  Dictionary.subscript.getter();

  result = *&v8;
  *a2 = v8;
  return result;
}

void sub_1011B6404(void (*a1)(NSObject *, NSObject *), unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, NSObject *, NSObject *), unsigned int a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v11 = v10;
  v165 = a8;
  v157 = a7;
  v174 = a6;
  v156 = a4;
  v155 = a3;
  v173 = a10;
  v168 = a9;
  v170 = *v10;
  v14 = *(v170 + 80);
  v15 = *(v170 + 88);
  v16 = type metadata accessor for Message();
  v17 = type metadata accessor for MessagingMessageContext();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1000BC580(&qword_101696960, &unk_10138B220);
  v158 = TupleTypeMetadata2;
  v163 = type metadata accessor for Result();
  v160 = *(v163 - 8);
  v19 = *(v160 + 64);
  v20 = __chkstk_darwin(v163);
  v159 = &v150 - v21;
  v162 = v17;
  v22 = *(*(v17 - 8) + 64);
  v23 = __chkstk_darwin(v20);
  v161 = (&v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v166 = &v150 - v25;
  v26 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v150 - v28;
  v30 = type metadata accessor for UUID();
  v171 = *(v30 - 8);
  v172 = v30;
  v31 = *(v171 + 64);
  v32 = __chkstk_darwin(v30);
  v154 = (&v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __chkstk_darwin(v32);
  v167 = &v150 - v35;
  v36 = __chkstk_darwin(v34);
  v164 = (&v150 - v37);
  v177 = v16;
  isa = v16[-1].isa;
  v38 = *(isa + 8);
  v39 = __chkstk_darwin(v36);
  v41 = &v150 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v39);
  v44 = &v150 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v150 - v46;
  __chkstk_darwin(v45);
  v176 = (&v150 - v48);
  dispatch_assert_queue_V2(v11[6]);
  v50 = v11[2];
  v49 = v11[3];
  v175 = a1;
  if (v50 == a1 && v49 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v153 = v44;
    v51 = type metadata accessor for PropertyListDecoder();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v54 = v177;
    swift_getWitnessTable();
    v55 = v176;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100015794(v173, v29);
    v57 = v171;
    v56 = v172;
    if ((*(v171 + 48))(v29, 1, v172) != 1)
    {
      v92 = v164;
      (*(v57 + 32))(v164, v29, v56);
      v93 = isa;
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      v95 = sub_1000076D4(v94, qword_10177C4F0);
      sub_100D2577C(v173, v166);
      v96 = *(v93 + 2);
      v174 = (v93 + 16);
      v161 = v96;
      (v96)(v47, v55, v54);
      v97 = *(v171 + 16);
      v155 = v171 + 16;
      v152 = v97;
      v97(v167, v92, v56);

      v98 = v93;
      v99 = v168;

      v156 = v95;
      v100 = Logger.logObject.getter();
      LODWORD(v95) = static os_log_type_t.info.getter();

      v157 = v95;
      if (os_log_type_enabled(v100, v95))
      {
        v101 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v178 = v151;
        *v101 = 136316418;
        v150 = v100;
        v102 = sub_1011B5B18();
        v104 = v54;
        v105 = sub_1000136BC(v102, v103, &v178);

        *(v101 + 4) = v105;
        *(v101 + 12) = 2080;
        v106 = *(v162 + 20);
        v170 = sub_1000096E8(&qword_101696930);
        v107 = v166;
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v110 = v109;
        sub_100476F00(v107);
        v111 = sub_1000136BC(v108, v110, &v178);

        *(v101 + 14) = v111;
        *(v101 + 22) = 2080;
        *(v101 + 24) = sub_1000136BC(v175, a2, &v178);
        *(v101 + 32) = 2080;
        *(v101 + 34) = sub_1000136BC(v165, v99, &v178);
        *(v101 + 42) = 2080;
        v112 = v153;
        (v161)(v153, v47, v104);
        v113 = v47;
        v114 = *(isa + 1);
        v114(v113, v104);
        Message.description.getter(v104);
        v116 = v115;
        v118 = v117;
        v114(v112, v104);
        v119 = sub_1000136BC(v116, v118, &v178);

        *(v101 + 44) = v119;
        *(v101 + 52) = 2080;
        v120 = v167;
        v121 = v172;
        v122 = dispatch thunk of CustomStringConvertible.description.getter();
        v124 = v123;
        v74 = *(v171 + 8);
        v74(v120, v121);
        v125 = sub_1000136BC(v122, v124, &v178);

        *(v101 + 54) = v125;
        v126 = v150;
        _os_log_impl(&_mh_execute_header, v150, v157, "%s: Received message %s on %s from %s: %s in response to %s", v101, 0x3Eu);
        swift_arrayDestroy();

        v127 = v164;
      }

      else
      {
        v127 = v92;
        v131 = v47;
        v114 = *(v98 + 1);
        v114(v131, v54);

        v74 = *(v171 + 8);
        v74(v167, v172);
        v128 = sub_100476F00(v166);
      }

      v132 = v11[4];
      __chkstk_darwin(v128);
      *(&v150 - 2) = v11;
      *(&v150 - 1) = v127;
      v133 = v163;
      swift_getFunctionTypeMetadata1();
      type metadata accessor for Optional();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v134 = v178;
      if (v178)
      {
        v135 = *(v158 + 48);
        v136 = v159;
        v138 = v176;
        v137 = v177;
        (v161)(v159, v176, v177);
        sub_100D2577C(v173, &v136[v135]);
        swift_storeEnumTagMultiPayload();

        v134(v136);
        sub_1000BB27C(v134);
        sub_1000BB27C(v134);
        (*(v160 + 8))(v136, v133);
        v114(v138, v137);
        v130 = v172;
      }

      else
      {
        v139 = v154;
        v140 = v172;
        v152(v154, v127, v172);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v178 = v144;
          *v143 = 136315138;
          sub_1000096E8(&qword_101696930);
          v145 = dispatch thunk of CustomStringConvertible.description.getter();
          v146 = v139;
          v148 = v147;
          v175 = v114;
          v74(v146, v140);
          v149 = sub_1000136BC(v145, v148, &v178);

          *(v143 + 4) = v149;
          _os_log_impl(&_mh_execute_header, v141, v142, "Could not find promise for %s", v143, 0xCu);
          sub_100007BAC(v144);

          v175(v176, v177);
        }

        else
        {

          v74(v139, v140);
          v114(v176, v177);
        }

        v130 = v140;
      }

      v85 = v127;
      goto LABEL_32;
    }

    sub_10000B3A8(v29, &qword_1016980D0, &unk_10138F3B0);
    v58 = isa;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_1000076D4(v59, qword_10177C4F0);
    v60 = v161;
    sub_100D2577C(v173, v161);
    v174 = *(v58 + 2);
    v174(v41, v55, v54);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v178 = v171;
      *v63 = 136316162;
      v167 = v61;
      v64 = sub_1011B5B18();
      v66 = sub_1000136BC(v64, v65, &v178);
      LODWORD(v170) = v62;
      v67 = v66;

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      v68 = *(v162 + 20);
      sub_1000096E8(&qword_101696930);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      sub_100476F00(v60);
      v72 = sub_1000136BC(v69, v71, &v178);

      *(v63 + 14) = v72;
      *(v63 + 22) = 2080;
      *(v63 + 24) = sub_1000136BC(v175, a2, &v178);
      *(v63 + 32) = 2080;
      *(v63 + 34) = sub_1000136BC(v165, v168, &v178);
      *(v63 + 42) = 2080;
      v73 = v153;
      v174(v153, v41, v177);
      v74 = *(v58 + 1);
      v74(v41, v177);
      Message.description.getter(v177);
      v76 = v75;
      v78 = v77;
      v74(v73, v177);
      v79 = sub_1000136BC(v76, v78, &v178);

      *(v63 + 44) = v79;
      v80 = v167;
      _os_log_impl(&_mh_execute_header, v167, v170, "%s: Received message %s on %s from %s: %s", v63, 0x34u);
      swift_arrayDestroy();

      v54 = v177;

      v81 = v11[14];
      if (v81)
      {
LABEL_9:
        v82 = v11[15];
        sub_100012908(v81);
        v83 = sub_100908F24(_swiftEmptyArrayStorage);
        v84 = v176;
        v81(v155, v156, v157, v165, v168, v176, v83, v173);
        sub_1000BB27C(v81);

        v85 = v84;
LABEL_23:
        v130 = v54;
LABEL_32:
        v74(v85, v130);
        return;
      }
    }

    else
    {
      v74 = *(v58 + 1);
      v74(v41, v54);

      sub_100476F00(v60);
      v81 = v11[14];
      if (v81)
      {
        goto LABEL_9;
      }
    }

    v85 = v176;
    goto LABEL_23;
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  sub_1000076D4(v86, qword_10177C4F0);

  v177 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v177, v87))
  {
    v88 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    *v88 = 136315650;
    v89 = sub_1011B5B18();
    v91 = sub_1000136BC(v89, v90, &v178);

    *(v88 + 4) = v91;
    *(v88 + 12) = 2080;
    *(v88 + 14) = sub_1000136BC(v50, v49, &v178);
    *(v88 + 22) = 2080;
    *(v88 + 24) = sub_1000136BC(v175, a2, &v178);
    _os_log_impl(&_mh_execute_header, v177, v87, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v88, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v129 = v177;
  }
}

void sub_1011B76D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, NSObject *a9, uint64_t a10)
{
  v79 = a7;
  v76 = a3;
  v77 = a4;
  v78 = a10;
  v80 = a8;
  v81 = a9;
  v14 = *v10;
  v15 = *(*v10 + 80);
  v16 = *(*v10 + 88);
  v17 = type metadata accessor for Message();
  v75 = *(v17 - 8);
  v18 = *(v75 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v68 - v23;
  __chkstk_darwin(v22);
  v26 = &v68 - v25;
  dispatch_assert_queue_V2(v10[6]);
  v27 = v10[14];
  if (v27)
  {
    v73 = a6;
    v74 = v14;
    v82 = v27;
    v83 = v10[15];
    v29 = v10[2];
    v28 = v10[3];
    if (v29 == a1 && v28 == a2 || (v30 = v10[2], v31 = v10[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v32 = Data.init(contentsOf:options:)();
      v34 = v33;
      v35 = type metadata accessor for PropertyListDecoder();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      swift_getWitnessTable();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v71 = v32;
      v72 = v34;

      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000076D4(v46, qword_10177C4F0);
      v47 = v75;
      v48 = *(v75 + 16);
      v48(v24, v26, v17);
      v49 = v81;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v84 = v70;
        *v52 = 136315650;
        v69 = v50;
        v53 = sub_1011B5B18();
        v55 = sub_1000136BC(v53, v54, &v84);
        v68 = v48;
        v56 = v55;

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        LODWORD(v74) = v51;
        v57 = v47;
        v58 = v80;
        *(v52 + 14) = sub_1000136BC(v80, v81, &v84);
        *(v52 + 22) = 2080;
        v68(v21, v24, v17);
        v59 = *(v57 + 8);
        v59(v24, v17);
        Message.description.getter(v17);
        v61 = v60;
        v63 = v62;
        v59(v21, v17);
        v64 = sub_1000136BC(v61, v63, &v84);

        *(v52 + 24) = v64;
        v65 = v69;
        _os_log_impl(&_mh_execute_header, v69, v74, "%s: Received resource from %s: %s", v52, 0x20u);
        swift_arrayDestroy();

        v49 = v81;
      }

      else
      {
        v59 = *(v47 + 8);
        v59(v24, v17);

        v58 = v80;
      }

      v66 = v49;
      v67 = v82;
      v82(v76, v77, v79, v58, v66, v26, v73, v78);
      sub_1000BB27C(v67);
      sub_100016590(v71, v72);
      v59(v26, v17);
    }

    else
    {
      v38 = qword_101695190;

      if (v38 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177C4F0);

      v81 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v40))
      {
        v41 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v41 = 136315650;
        v42 = sub_1011B5B18();
        v44 = sub_1000136BC(v42, v43, &v84);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_1000136BC(v29, v28, &v84);
        *(v41 + 22) = 2080;
        *(v41 + 24) = sub_1000136BC(a1, a2, &v84);
        _os_log_impl(&_mh_execute_header, v81, v40, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v41, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v82);
      }

      else
      {
        sub_1000BB27C(v82);
        v45 = v81;
      }
    }
  }
}

void sub_1011B7F2C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  dispatch_assert_queue_V2(v4[6]);
  v9 = v4[16];
  if (v9)
  {
    v10 = v4[17];
    v11 = v4[2];
    v12 = v4[3];
    v13 = v11 == a1 && v12 == a2;
    if (v13 || (v14 = v4[2], v15 = v4[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v9(a3);

      sub_1000BB27C(v9);
    }

    else
    {
      v16 = qword_101695190;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v19 = 136315650;
        v20 = sub_1011B5B18();
        v22 = sub_1000136BC(v20, v21, &v24);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_1000136BC(v11, v12, &v24);
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1000136BC(a1, a2, &v24);
        _os_log_impl(&_mh_execute_header, oslog, v18, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v19, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v9);
      }

      else
      {
        sub_1000BB27C(v9);
      }
    }
  }
}

void sub_1011B8204(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  dispatch_assert_queue_V2(v4[6]);
  v9 = v4[18];
  if (v9)
  {
    v10 = v4[19];
    v11 = v4[2];
    v12 = v4[3];
    v13 = v11 == a1 && v12 == a2;
    if (v13 || (v14 = v4[2], v15 = v4[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v9(a3);

      sub_1000BB27C(v9);
    }

    else
    {
      v16 = qword_101695190;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v19 = 136315650;
        v20 = sub_1011B5B18();
        v22 = sub_1000136BC(v20, v21, &v24);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_1000136BC(v11, v12, &v24);
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1000136BC(a1, a2, &v24);
        _os_log_impl(&_mh_execute_header, oslog, v18, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v19, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v9);
      }

      else
      {
        sub_1000BB27C(v9);
      }
    }
  }
}

void sub_1011B84DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  dispatch_assert_queue_V2(v4[6]);
  v9 = v4[20];
  if (v9)
  {
    v10 = v4[21];
    v11 = v4[2];
    v12 = v4[3];
    v13 = v11 == a1 && v12 == a2;
    if (v13 || (v14 = v4[2], v15 = v4[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v9(a3);

      sub_1000BB27C(v9);
    }

    else
    {
      v16 = qword_101695190;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v19 = 136315650;
        v20 = sub_1011B5B18();
        v22 = sub_1000136BC(v20, v21, &v24);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_1000136BC(v11, v12, &v24);
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1000136BC(a1, a2, &v24);
        _os_log_impl(&_mh_execute_header, oslog, v18, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v19, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v9);
      }

      else
      {
        sub_1000BB27C(v9);
      }
    }
  }
}

uint64_t sub_1011B8814(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1011B88B8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016CA850);
  v1 = sub_1000076D4(v0, qword_1016CA850);
  if (qword_101695468 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177CCE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1011B8980()
{
  v0 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_100044B3C(v0, qword_10177C770);
  sub_1000076D4(v0, qword_10177C770);
  sub_1000041A4(&qword_1016A8FF8, &qword_101699D30, &qword_1013BA850);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8A30()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177C788);
  sub_1000076D4(v0, qword_10177C788);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8AF0()
{
  v0 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_100044B3C(v0, qword_10177C7A0);
  sub_1000076D4(v0, qword_10177C7A0);
  sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8BA0()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C7B8);
  sub_1000076D4(v0, qword_10177C7B8);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8C54()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177C7D0);
  sub_1000076D4(v0, qword_10177C7D0);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8D04()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177C7E8);
  sub_1000076D4(v0, qword_10177C7E8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8DC0()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C800);
  sub_1000076D4(v0, qword_10177C800);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8E70()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177C818);
  sub_1000076D4(v0, qword_10177C818);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8F30()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177C830);
  sub_1000076D4(v0, qword_10177C830);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8FE4()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177C848);
  sub_1000076D4(v0, qword_10177C848);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B909C()
{
  v0 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_100044B3C(v0, qword_10177C860);
  sub_1000076D4(v0, qword_10177C860);
  sub_1000041A4(&qword_10169DDD8, &qword_10169DDD0, &unk_10139D140);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B915C()
{
  v0 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_100044B3C(v0, qword_10177C878);
  sub_1000076D4(v0, qword_10177C878);
  sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9214()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177C890);
  sub_1000076D4(v0, qword_10177C890);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B92CC()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177C8A8);
  sub_1000076D4(v0, qword_10177C8A8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B938C()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C8C0);
  sub_1000076D4(v0, qword_10177C8C0);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B943C()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C8D8);
  sub_1000076D4(v0, qword_10177C8D8);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B94F4()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C8F0);
  sub_1000076D4(v0, qword_10177C8F0);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B95B0()
{
  v0 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
  sub_100044B3C(v0, qword_10177C908);
  sub_1000076D4(v0, qword_10177C908);
  sub_1000041A4(&qword_1016CAA00, &qword_101699DD0, &qword_101393110);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B965C()
{
  v0 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
  sub_100044B3C(v0, qword_10177C920);
  sub_1000076D4(v0, qword_10177C920);
  sub_1000041A4(&qword_1016CA9F8, &qword_101699DD8, &qword_101393118);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9708()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177C938);
  sub_1000076D4(v0, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B97BC()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177C950);
  sub_1000076D4(v0, qword_10177C950);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9878()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177C968);
  sub_1000076D4(v0, qword_10177C968);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9928()
{
  v0 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  sub_100044B3C(v0, qword_10177C980);
  sub_1000076D4(v0, qword_10177C980);
  sub_1000041A4(&qword_101699EA0, &qword_101699E00, &qword_101393128);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B99DC()
{
  v0 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  sub_100044B3C(v0, qword_10177C998);
  sub_1000076D4(v0, qword_10177C998);
  sub_1000041A4(&qword_101699EA0, &qword_101699E00, &qword_101393128);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9A94()
{
  v0 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  sub_100044B3C(v0, qword_10177C9B0);
  sub_1000076D4(v0, qword_10177C9B0);
  sub_1000041A4(&qword_101699EA0, &qword_101699E00, &qword_101393128);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9B54()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177C9C8);
  sub_1000076D4(v0, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9C0C()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C9E0);
  sub_1000076D4(v0, qword_10177C9E0);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9CB8()
{
  v0 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_100044B3C(v0, qword_10177C9F8);
  sub_1000076D4(v0, qword_10177C9F8);
  sub_1000041A4(&qword_1016AB598, &qword_101699E60, &unk_1013BF4C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9D68()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177CA10);
  sub_1000076D4(v0, qword_10177CA10);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9E20()
{
  v0 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_100044B3C(v0, qword_10177CA28);
  sub_1000076D4(v0, qword_10177CA28);
  sub_1000041A4(&qword_1016A8FF8, &qword_101699D30, &qword_1013BA850);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9ED4()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177CA40);
  sub_1000076D4(v0, qword_10177CA40);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9F94()
{
  v0 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_100044B3C(v0, qword_10177CA58);
  sub_1000076D4(v0, qword_10177CA58);
  sub_1000041A4(&qword_101699EB0, &qword_101699E70, &unk_101393160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA054()
{
  v0 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_100044B3C(v0, qword_10177CA70);
  sub_1000076D4(v0, qword_10177CA70);
  sub_1000041A4(&qword_101699EB0, &qword_101699E70, &unk_101393160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA104()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CA88);
  sub_1000076D4(v0, qword_10177CA88);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA1B8()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177CAA0);
  sub_1000076D4(v0, qword_10177CAA0);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA270()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CAB8);
  sub_1000076D4(v0, qword_10177CAB8);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA31C()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CAD0);
  sub_1000076D4(v0, qword_10177CAD0);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA3D8()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177CAE8);
  sub_1000076D4(v0, qword_10177CAE8);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA494()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CB00);
  sub_1000076D4(v0, qword_10177CB00);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA550()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CB18);
  sub_1000076D4(v0, qword_10177CB18);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA60C()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CB30);
  sub_1000076D4(v0, qword_10177CB30);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA6CC()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CB48);
  sub_1000076D4(v0, qword_10177CB48);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA78C()
{
  v0 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_100044B3C(v0, qword_10177CB60);
  sub_1000076D4(v0, qword_10177CB60);
  sub_1000041A4(&qword_1016CAA20, &qword_1016A7BF8, &qword_1013B6DD8);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA848()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177CB78);
  sub_1000076D4(v0, qword_10177CB78);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA908()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CB90);
  sub_1000076D4(v0, qword_10177CB90);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA9C4()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CBA8);
  sub_1000076D4(v0, qword_10177CBA8);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAA84()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CBC0);
  sub_1000076D4(v0, qword_10177CBC0);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAB3C()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CBD8);
  sub_1000076D4(v0, qword_10177CBD8);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BABF8()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CBF0);
  sub_1000076D4(v0, qword_10177CBF0);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BACA8()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177CC08);
  sub_1000076D4(v0, qword_10177CC08);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAD68()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177CC20);
  sub_1000076D4(v0, qword_10177CC20);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAE28()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177CC38);
  sub_1000076D4(v0, qword_10177CC38);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAEE8()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CC50);
  sub_1000076D4(v0, qword_10177CC50);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAFA8()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CC68);
  sub_1000076D4(v0, qword_10177CC68);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BB058()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CC80);
  sub_1000076D4(v0, qword_10177CC80);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BB118()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CC98);
  sub_1000076D4(v0, qword_10177CC98);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BB1D8()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CCB0);
  sub_1000076D4(v0, qword_10177CCB0);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BB298()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177CCC8);
  sub_1000076D4(v0, qword_10177CCC8);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BB354(int a1)
{
  v21 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = sub_1000BC488();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1011D1A0C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000BC4D4(&qword_10169DDF0, &qword_1013BF4F0);
  v11 = swift_allocObject();
  *(v11 + 20) = 0;
  *(v11 + 16) = 0;
  *(v1 + 24) = v11;
  v12 = sub_1000BC4D4(&qword_10169DDF8, &unk_10139D150);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + 32) = AsyncStreamProvider.init()();
  *(v1 + 40) = 20;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v1 + 48) = v15;
  *(v1 + 64) = 0;
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  v16 = v21;
  *(v1 + 56) = v21;
  if (v16)
  {
    *(v1 + 57) = 0;
    if (qword_101695290 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = sub_1000076D4(v17, qword_1016CA850);
    sub_100C630FC(v18);
  }

  else
  {
    *(v1 + 57) = 1;
  }

  return v1;
}

uint64_t sub_1011BB8C4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v49 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  result = *(a1 + 64);
  if (result)
  {
    *(a1 + 64) = 0;

    if ((*(a1 + 56) & 1) == 0)
    {
      v53 = v11;
      v54 = v1;
      v52 = v14;
      sub_1011BBDC8();
      v51 = [objc_opt_self() defaultManager];
      if (qword_101695290 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_1016CA850);
      (*(v4 + 16))(v8, v16, v3);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v55 = v49;
        *v21 = 136446210;
        sub_1011D1A0C(&qword_1016B14E0, &type metadata accessor for URL);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v4;
        v25 = v24;
        v50 = *(v23 + 8);
        v50(v8, v3);
        v26 = sub_1000136BC(v22, v25, &v55);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "Purging database: %{public}s", v21, 0xCu);
        sub_100007BAC(v49);
      }

      else
      {

        v50 = *(v4 + 8);
        v50(v8, v3);
      }

      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v55 = 0;
      v30 = v51;
      v31 = [v51 removeItemAtURL:v28 error:&v55];

      v33 = v52;
      v32 = v53;
      if (v31)
      {
        v34 = v55;
      }

      else
      {
        v36 = v55;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v54 = 0;
      }

      URL._bridgeToObjectiveC()(v35);
      v38 = v37;
      v55 = 0;
      v39 = [v30 removeItemAtURL:v37 error:&v55];

      if (v39)
      {
        v40 = v55;
      }

      else
      {
        v42 = v55;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v54 = 0;
      }

      URL._bridgeToObjectiveC()(v41);
      v44 = v43;
      v55 = 0;
      v45 = [v30 removeItemAtURL:v43 error:&v55];

      if (v45)
      {
        v46 = v55;
      }

      else
      {
        v47 = v55;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v54 = 0;
      }

      v48 = v50;
      v50(v32, v3);
      v48(v33, v3);
      return (v48)(v16, v3);
    }
  }

  return result;
}

uint64_t sub_1011BBDC8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  v6 = v1[2];
  v6(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v7 = v1[1];
  v7(v4, v0);
  v6(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (v7)(v4, v0);
}

void sub_1011BBFD4(int a1, int a2, uint64_t a3)
{
  v92 = a1;
  v93 = a2;
  v5 = type metadata accessor for Connection.TransactionMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v88 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v87 = &v76 - v11;
  v12 = __chkstk_darwin(v10);
  v89 = &v76 - v13;
  v14 = __chkstk_darwin(v12);
  v86 = &v76 - v15;
  v16 = __chkstk_darwin(v14);
  v85 = &v76 - v17;
  v18 = __chkstk_darwin(v16);
  v84 = &v76 - v19;
  v20 = __chkstk_darwin(v18);
  v83 = &v76 - v21;
  v22 = __chkstk_darwin(v20);
  v82 = &v76 - v23;
  v24 = __chkstk_darwin(v22);
  v81 = &v76 - v25;
  v26 = __chkstk_darwin(v24);
  v80 = &v76 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v76 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v76 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v76 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v76 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v76 - v41;
  v43 = __chkstk_darwin(v40);
  v79 = &v76 - v44;
  v90 = v3;
  if ((*(v3 + 56) & 1) == 0)
  {
    v78 = a3;
    if (qword_101695290 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000076D4(v45, qword_1016CA850);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v77 = v5;
      *v48 = 67109376;
      *(v48 + 4) = v92;
      *(v48 + 8) = 1024;
      *(v48 + 10) = v93;
      _os_log_impl(&_mh_execute_header, v46, v47, "Migrate schema %d -> %d", v48, 0xEu);
      v5 = v77;
    }

    a3 = v78;
  }

  v49 = v93;
  switch(v93)
  {
    case 1:
      v60._countAndFlagsBits = 0xD00000000000001FLL;
      v60._object = 0x80000001013513F0;
      Connection.execute(_:)(v60);
      if (!v61)
      {
        v62._object = 0x8000000101351410;
        v62._countAndFlagsBits = 0xD000000000000018;
        Connection.execute(_:)(v62);
        if (!v64)
        {
          __chkstk_darwin(v63);
          v65 = v90;
          *(&v76 - 2) = a3;
          *(&v76 - 1) = v65;
          v30 = v79;
          (*(v6 + 104))(v79, enum case for Connection.TransactionMode.deferred(_:), v5);
          goto LABEL_32;
        }
      }

      return;
    case 2:
      __chkstk_darwin(v43);
      v66 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v66;
      (*(v6 + 104))(v42, enum case for Connection.TransactionMode.deferred(_:), v5);
      v67 = v91;
      Connection.transaction(_:block:)();
      if (!v67)
      {
        v30 = v42;
        goto LABEL_33;
      }

      (*(v6 + 8))(v42, v5);
      return;
    case 3:
    case 4:
    case 5:
    case 6:
      __chkstk_darwin(v43);
      v50 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v50;
      (*(v6 + 104))(v39, enum case for Connection.TransactionMode.deferred(_:), v5);
      v51 = v91;
      Connection.transaction(_:block:)();
      if (!v51)
      {
        v30 = v39;
        goto LABEL_33;
      }

      (*(v6 + 8))(v39, v5);
      return;
    case 7:
      __chkstk_darwin(v43);
      v68 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v68;
      (*(v6 + 104))(v36, enum case for Connection.TransactionMode.deferred(_:), v5);
      v69 = v91;
      Connection.transaction(_:block:)();
      if (!v69)
      {
        v30 = v36;
        goto LABEL_33;
      }

      (*(v6 + 8))(v36, v5);
      return;
    case 8:
      __chkstk_darwin(v43);
      v70 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v70;
      (*(v6 + 104))(v33, enum case for Connection.TransactionMode.deferred(_:), v5);
      v71 = v91;
      Connection.transaction(_:block:)();
      if (!v71)
      {
        v30 = v33;
        goto LABEL_33;
      }

      (*(v6 + 8))(v33, v5);
      return;
    case 9:
      __chkstk_darwin(v43);
      v54 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v54;
      (*(v6 + 104))(v30, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 10:
      __chkstk_darwin(v43);
      v72 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v72;
      v30 = v80;
      (*(v6 + 104))(v80, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 11:
      __chkstk_darwin(v43);
      v56 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v56;
      v30 = v81;
      (*(v6 + 104))(v81, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 12:
      __chkstk_darwin(v43);
      v73 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v73;
      v30 = v82;
      (*(v6 + 104))(v82, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 13:
      __chkstk_darwin(v43);
      v53 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v53;
      v30 = v83;
      (*(v6 + 104))(v83, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 14:
      __chkstk_darwin(v43);
      v57 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v57;
      v30 = v84;
      (*(v6 + 104))(v84, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 15:
      __chkstk_darwin(v43);
      v75 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v75;
      v30 = v85;
      (*(v6 + 104))(v85, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 16:
      __chkstk_darwin(v43);
      v55 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v55;
      v30 = v86;
      (*(v6 + 104))(v86, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 17:
    case 18:
      __chkstk_darwin(v43);
      v30 = v89;
      v52 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v52;
      (*(v6 + 104))(v30, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 19:
      __chkstk_darwin(v43);
      v59 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v59;
      v30 = v87;
      (*(v6 + 104))(v87, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 20:
      __chkstk_darwin(v43);
      v74 = v90;
      *(&v76 - 2) = a3;
      *(&v76 - 1) = v74;
      v30 = v88;
      (*(v6 + 104))(v88, enum case for Connection.TransactionMode.deferred(_:), v5);
LABEL_32:
      Connection.transaction(_:block:)();
LABEL_33:
      (*(v6 + 8))(v30, v5);
      break;
    default:
      sub_10020223C();
      swift_allocError();
      *v58 = v49;
      *(v58 + 4) = 0;
      swift_willThrow();
      break;
  }
}

uint64_t sub_1011BCC24()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v4 = sub_1000076D4(v3, qword_10177C818);
  *(v2 + 56) = v3;
  v41 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v2 + 64) = v41;
  v5 = sub_1000280DC((v2 + 32));
  v6 = *(*(v3 - 8) + 16);
  v6(v5, v4, v3);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
  v39 = v3;
  v40 = v6;

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000076D4(v3, qword_10177C788);
  *(v7 + 56) = v3;
  *(v7 + 64) = v41;
  v9 = sub_1000280DC((v7 + 32));
  v40(v9, v8, v3);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v12 = sub_1000076D4(v11, qword_10177C7A0);
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120);
  v13 = sub_1000280DC((v10 + 32));
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
  v14 = swift_allocObject();
  v15 = j__malloc_size(v14);
  *(v14 + 16) = 4;
  *(v14 + 24) = 2 * v15 - 64;
  *(v14 + 32) = 50462976;
  v16 = swift_allocObject();
  v17 = j__malloc_size(v16);
  *(v16 + 16) = 4;
  *(v16 + 24) = 2 * v17 - 64;
  *(v16 + 32) = 185207048;
  v18 = sub_10039B818(v16);
  __chkstk_darwin(v18);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();

  Connection.run(_:_:)();

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  if (qword_1016952F8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v21 = sub_1000076D4(v20, qword_10177C890);
  *(v19 + 56) = v20;
  v36 = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110);
  *(v19 + 64) = v36;
  v22 = sub_1000280DC((v19 + 32));
  v23 = (*(v20 - 8) + 16);
  v38 = *v23;
  (*v23)(v22, v21, v20);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101385D80;
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v25 = sub_1000076D4(v20, qword_10177C8A8);
  *(v24 + 56) = v20;
  *(v24 + 64) = v36;
  v26 = sub_1000280DC((v24 + 32));
  v38(v26, v25, v20);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_101385D80;
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v29 = sub_1000076D4(v28, qword_10177C770);
  *(v27 + 56) = v28;
  v37 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850);
  *(v27 + 64) = v37;
  v30 = sub_1000280DC((v27 + 32));
  v35 = *(*(v28 - 8) + 16);
  v35(v30, v29, v28);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  *(v31 + 56) = v28;
  *(v31 + 64) = v37;
  v32 = sub_1000280DC((v31 + 32));
  v35(v32, v29, v28);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_101385D80;
  *(v33 + 56) = v39;
  *(v33 + 64) = v41;
  v34 = sub_1000280DC((v33 + 32));
  v40(v34, v8, v39);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_1011BD854()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v20 = v19 - v2;
  v3 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v19 - v5;
  v7 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v19 - v9;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v12 = sub_1000076D4(v11, qword_10177C818);
  v13 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v14 = *(*(v13 - 8) + 56);
  v21 = v13;
  v14(v10, 1, 1);
  v15 = *(*(v11 - 8) + 56);
  v15(v6, 1, 1, v11);
  type metadata accessor for UUID();
  v19[1] = v12;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177C788);
  (v14)(v10, 1, 1, v21);
  v15(v6, 1, 1, v11);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v16, qword_10177C830);
  (v14)(v10, 1, 1, v21);
  v17 = v20;
  (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011BDCBC(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  __chkstk_darwin(v3);
  v72 = v63 - v5;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v70 = v63 - v9;
  v10 = sub_1000BC4D4(&qword_1016CAA08, &qword_10140B848);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v68 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = v63 - v14;
  v15 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v63 - v17;
  v19 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v63 - v21;
  v23 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = v63 - v25;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v28 = sub_1000076D4(v27, qword_10177C818);
  v71 = v7;
  v77 = *(v7 + 56);
  v77(v26, 1, 1, v6);
  v29 = *(v27 - 8);
  v76 = v6;
  v64 = v29;
  v30 = *(v29 + 56);
  v30(v22, 1, 1, v27);
  v31 = type metadata accessor for UUID();
  v75 = v28;
  v32 = a1;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v33 = sub_1000076D4(v27, qword_10177C788);
  v77(v26, 1, 1, v76);
  v30(v22, 1, 1, v27);
  v65 = v33;
  v66 = v31;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952E0 != -1)
  {
    swift_once();
  }

  v34 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v35 = sub_1000076D4(v34, qword_10177C848);
  v36 = v76;
  v77(v26, 1, 1, v76);
  v37 = *(*(v34 - 8) + 56);
  v37(v18, 1, 1, v34);
  v63[3] = v35;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v18, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  v38 = v36;
  if (qword_1016952C0 != -1)
  {
    swift_once();
  }

  v39 = sub_1000076D4(v34, qword_10177C7E8);
  v77(v26, 1, 1, v38);
  v37(v18, 1, 1, v34);
  v63[2] = v39;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v18, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952E8 != -1)
  {
    swift_once();
  }

  v40 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v40, qword_10177C860);
  v77(v26, 1, 1, v38);
  v37(v18, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v18, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10138BBE0;
  *(v41 + 56) = v27;
  v42 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v41 + 64) = v42;
  v43 = sub_1000280DC((v41 + 32));
  v44 = *(v64 + 16);
  v44(v43, v75, v27);
  *(v41 + 96) = v27;
  *(v41 + 104) = v42;
  v45 = sub_1000280DC((v41 + 72));
  v44(v45, v65, v27);
  TableBuilder.unique(_:)(v41);

  v46 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v47 = type metadata accessor for Table();
  v78[3] = v47;
  v78[4] = &protocol witness table for Table;
  v48 = sub_1000280DC(v78);
  (*(*(v47 - 8) + 16))(v48, v69 + v46, v47);
  v49 = enum case for TableBuilder.Dependency.cascade(_:);
  v50 = type metadata accessor for TableBuilder.Dependency();
  v51 = *(v50 - 8);
  v52 = *(v51 + 104);
  v77 = v34;
  v53 = v67;
  v52(v67, v49, v50);
  v54 = *(v51 + 56);
  v54(v53, 0, 1, v50);
  v55 = v68;
  v52(v68, v49, v50);
  v54(v55, 0, 1, v50);
  v63[1] = v32;
  TableBuilder.foreignKey<A, B>(_:references:_:update:delete:)();
  sub_10000B3A8(v55, &qword_1016CAA08, &qword_10140B848);
  sub_10000B3A8(v53, &qword_1016CAA08, &qword_10140B848);
  sub_100007BAC(v78);
  v75 = sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v56 = v72;
  ExpressionType<>.length.getter();
  v78[0] = 85;
  v57 = v70;
  == infix<A>(_:_:)();
  v58 = v74;
  v59 = *(v73 + 8);
  v59(v56, v74);
  TableBuilder.check(_:)();
  v60 = *(v71 + 8);
  v61 = v76;
  v60(v57, v76);
  ExpressionType<>.length.getter();
  v78[0] = 32;
  == infix<A>(_:_:)();
  v59(v56, v58);
  TableBuilder.check(_:)();
  return (v60)(v57, v61);
}

uint64_t sub_1011BE7DC(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v3 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  __chkstk_darwin(v3);
  v97 = v78 - v5;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v95 = v78 - v9;
  v10 = sub_1000BC4D4(&qword_1016CAA08, &qword_10140B848);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v93 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = v78 - v14;
  v15 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v88 = v78 - v17;
  v18 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v85 = v78 - v20;
  v21 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v101 = v78 - v23;
  v24 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v78 - v26;
  v28 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = v78 - v30;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v33 = sub_1000076D4(v32, qword_10177C818);
  v96 = v7;
  v100 = *(v7 + 56);
  v100(v31, 1, 1, v6);
  v86 = *(v32 - 8);
  v34 = *(v86 + 56);
  v34(v27, 1, 1, v32);
  v35 = type metadata accessor for UUID();
  v91 = v33;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v31, &qword_10169DE30, &unk_10139D190);
  v36 = v6;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v37 = sub_1000076D4(v32, qword_10177C788);
  v100(v31, 1, 1, v36);
  v83 = v32;
  v34(v27, 1, 1, v32);
  v89 = v37;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v31, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  v38 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v39 = sub_1000076D4(v38, qword_10177C7B8);
  v40 = v100;
  v100(v31, 1, 1, v36);
  v80 = *(v38 - 8);
  v41 = *(v80 + 56);
  v42 = v101;
  v82 = v38;
  v41(v101, 1, 1, v38);
  v43 = sub_100028088();
  v102 = v39;
  v87 = v43;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v42, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v31, &qword_10169DE30, &unk_10139D190);
  v44 = v36;
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v90 = v35;
  v45 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v46 = sub_1000076D4(v45, qword_10177C7A0);
  v40(v31, 1, 1, v36);
  v79 = *(v45 - 8);
  v47 = v40;
  v48 = v85;
  (*(v79 + 56))(v85, 1, 1, v45);
  v49 = sub_100029580();
  v101 = v46;
  v84 = v49;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v48, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v31, &qword_10169DE30, &unk_10139D190);
  v50 = v83;
  if (qword_1016952C0 != -1)
  {
    swift_once();
  }

  v51 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v81 = sub_1000076D4(v51, qword_10177C7E8);
  v47(v31, 1, 1, v44);
  v52 = v51;
  v85 = v51;
  v53 = *(*(v51 - 8) + 56);
  v54 = v88;
  v53(v88, 1, 1, v52);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v54, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v31, &qword_10169DE30, &unk_10139D190);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_101391790;
  *(v55 + 56) = v50;
  v56 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v55 + 64) = v56;
  v57 = sub_1000280DC((v55 + 32));
  v100 = v44;
  v58 = *(v86 + 16);
  v58(v57, v91, v50);
  *(v55 + 96) = v50;
  *(v55 + 104) = v56;
  v59 = sub_1000280DC((v55 + 72));
  v78[1] = a1;
  v58(v59, v89, v50);
  v60 = v82;
  *(v55 + 136) = v82;
  *(v55 + 144) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
  v61 = sub_1000280DC((v55 + 112));
  (*(v80 + 16))(v61, v102, v60);
  *(v55 + 176) = v45;
  *(v55 + 184) = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120);
  v62 = sub_1000280DC((v55 + 152));
  (*(v79 + 16))(v62, v101, v45);
  TableBuilder.unique(_:)(v55);

  v63 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v64 = type metadata accessor for Table();
  v103[3] = v64;
  v103[4] = &protocol witness table for Table;
  v65 = sub_1000280DC(v103);
  (*(*(v64 - 8) + 16))(v65, v94 + v63, v64);
  v66 = enum case for TableBuilder.Dependency.cascade(_:);
  v67 = type metadata accessor for TableBuilder.Dependency();
  v68 = *(v67 - 8);
  v69 = *(v68 + 104);
  v70 = v92;
  v69(v92, v66, v67);
  v71 = *(v68 + 56);
  v71(v70, 0, 1, v67);
  v72 = v93;
  v69(v93, v66, v67);
  v71(v72, 0, 1, v67);
  TableBuilder.foreignKey<A, B>(_:references:_:update:delete:)();
  sub_10000B3A8(v72, &qword_1016CAA08, &qword_10140B848);
  sub_10000B3A8(v70, &qword_1016CAA08, &qword_10140B848);
  sub_100007BAC(v103);
  LOWORD(v103[0]) = 256;
  v73 = v95;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v74 = *(v96 + 8);
  v75 = v100;
  v74(v73, v100);
  v103[0] = 0;
  > infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v74(v73, v75);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v76 = v97;
  ExpressionType<>.length.getter();
  v103[0] = 32;
  == infix<A>(_:_:)();
  (*(v98 + 8))(v76, v99);
  TableBuilder.check(_:)();
  return (v74)(v73, v75);
}

uint64_t sub_1011BF54C(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v2 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v57 = v52 - v5;
  v6 = sub_1000BC4D4(&qword_1016CAA08, &qword_10140B848);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v56 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = v52 - v10;
  v11 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v53 = v52 - v13;
  v14 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v52 - v16;
  v18 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v52 - v20;
  v22 = sub_1000BC4D4(&qword_1016A8FF0, &unk_1013BA840);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v52 - v24;
  v26 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = v52 - v28;
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v31 = sub_1000076D4(v30, qword_10177C770);
  v58 = v3;
  v32 = *(v3 + 56);
  v32(v29, 1, 1, v2);
  (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  v52[4] = v31;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v25, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v33 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v33, qword_10177C788);
  v32(v29, 1, 1, v2);
  (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v21, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  v34 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v35 = sub_1000076D4(v34, qword_10177C7B8);
  v32(v29, 1, 1, v2);
  (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
  v52[2] = sub_100028088();
  v52[3] = v35;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v52[1] = sub_1000076D4(v36, qword_10177C7A0);
  v32(v29, 1, 1, v2);
  v37 = v53;
  (*(*(v36 - 8) + 56))(v53, 1, 1, v36);
  v52[0] = sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v37, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  TableBuilder.primaryKey<A>(_:)();
  v38 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v39 = type metadata accessor for Table();
  v59[3] = v39;
  v59[4] = &protocol witness table for Table;
  v40 = sub_1000280DC(v59);
  (*(*(v39 - 8) + 16))(v40, v54 + v38, v39);
  v41 = enum case for TableBuilder.Dependency.cascade(_:);
  v42 = type metadata accessor for TableBuilder.Dependency();
  v43 = *(v42 - 8);
  v54 = v2;
  v44 = *(v43 + 104);
  v45 = v55;
  v44(v55, v41, v42);
  v46 = *(v43 + 56);
  v46(v45, 0, 1, v42);
  v47 = v56;
  v44(v56, v41, v42);
  v46(v47, 0, 1, v42);
  TableBuilder.foreignKey<A>(_:references:_:update:delete:)();
  sub_10000B3A8(v47, &qword_1016CAA08, &qword_10140B848);
  sub_10000B3A8(v45, &qword_1016CAA08, &qword_10140B848);
  sub_100007BAC(v59);
  LOWORD(v59[0]) = 256;
  v48 = v57;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v49 = *(v58 + 8);
  v50 = v54;
  v49(v48, v54);
  v59[0] = 0;
  > infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v49)(v48, v50);
}

uint64_t sub_1011BFE70()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v40 = v36 - v3;
  v4 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v39 = v36 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v37 = v36 - v9;
  v10 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v36 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v36 - v16;
  v18 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v36 - v20;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v23 = sub_1000076D4(v22, qword_10177C788);
  v41 = v1;
  v24 = *(v1 + 56);
  v24(v21, 1, 1, v0);
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v25 = type metadata accessor for UUID();
  v38 = v23;
  v36[2] = v25;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_101695368 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v27 = sub_1000076D4(v26, qword_10177C9E0);
  v24(v21, 1, 1, v0);
  v28 = *(*(v26 - 8) + 56);
  v42 = v0;
  v28(v13, 1, 1, v26);
  sub_100028088();
  v36[1] = v27;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v26, qword_10177C7B8);
  v24(v21, 1, 1, v42);
  v28(v13, 1, 1, v26);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v29 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v29, qword_10177C7A0);
  v30 = v42;
  v24(v21, 1, 1, v42);
  v31 = v37;
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v32, qword_10177C9C8);
  v24(v21, 1, 1, v30);
  v33 = v39;
  (*(*(v32 - 8) + 56))(v39, 1, 1, v32);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v33, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v21, &qword_10169DE30, &unk_10139D190);
  TableBuilder.primaryKey<A, B>(_:_:)();
  v43 = -256;
  v34 = v40;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (*(v41 + 8))(v34, v30);
}

uint64_t sub_1011C064C()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177C818);
  *(v1 + 56) = v2;
  v4 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v1 + 64) = v4;
  v5 = sub_1000280DC((v1 + 32));
  v6 = (*(v2 - 8) + 16);
  v7 = v3;
  v8 = *v6;
  (*v6)(v5, v7, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
  v13 = v8;

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v2, qword_10177C788);
  *(v9 + 56) = v2;
  *(v9 + 64) = v4;
  v11 = sub_1000280DC((v9 + 32));
  v13(v11, v10, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
}

uint64_t sub_1011C0A40()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = &v31 - v2;
  v3 = sub_1000BC4D4(&unk_1016AB5A0, &unk_1013BF4D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v32 = &v31 - v5;
  v6 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for PrimaryKey();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v19, qword_10177CA28);
  (*(v15 + 104))(v18, enum case for PrimaryKey.autoincrement(_:), v14);
  v20 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v22(v13, 1, 1, v20);
  TableBuilder.column<A>(_:primaryKey:check:)();
  sub_10000B3A8(v13, &qword_10169DE30, &unk_10139D190);
  (*(v15 + 8))(v18, v14);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v24, qword_10177C818);
  v22(v13, 1, 1, v20);
  v25 = *(*(v24 - 8) + 56);
  v34 = v23;
  v25(v9, 1, 1, v24);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v13, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v24, qword_10177C788);
  v22(v13, 1, 1, v20);
  v25(v9, 1, 1, v24);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v13, &qword_10169DE30, &unk_10139D190);
  if (qword_101695370 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v26, qword_10177C9F8);
  v22(v13, 1, 1, v20);
  v27 = v32;
  (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
  sub_10022A60C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v13, &qword_10169DE30, &unk_10139D190);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v28, qword_10177C9C8);
  v22(v13, 1, 1, v20);
  v29 = v33;
  (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v29, &qword_10169DE58, &unk_10139D1B0);
  return sub_10000B3A8(v13, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_1011C1144(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v2 = sub_1000BC4D4(&qword_1016CAA08, &qword_10140B848);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_1000BC4D4(&qword_1016A8FF0, &unk_1013BA840);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v34 - v14;
  v16 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v34 - v18;
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v20, qword_10177CA28);
  v21 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v22 = *(*(v21 - 8) + 56);
  v22(v19, 1, 1, v21);
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v15, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695388 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v23, qword_10177CA40);
  v22(v19, 1, 1, v21);
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v11, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  TableBuilder.primaryKey<A>(_:)();
  v24 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
  v25 = type metadata accessor for Table();
  v37[3] = v25;
  v37[4] = &protocol witness table for Table;
  v26 = sub_1000280DC(v37);
  (*(*(v25 - 8) + 16))(v26, v35 + v24, v25);
  v27 = enum case for TableBuilder.Dependency.cascade(_:);
  v28 = type metadata accessor for TableBuilder.Dependency();
  v29 = *(v28 - 8);
  v30 = *(v29 + 104);
  v30(v7, v27, v28);
  v31 = *(v29 + 56);
  v31(v7, 0, 1, v28);
  v32 = v36;
  v30(v36, v27, v28);
  v31(v32, 0, 1, v28);
  TableBuilder.foreignKey<A>(_:references:_:update:delete:)();
  sub_10000B3A8(v32, &qword_1016CAA08, &qword_10140B848);
  sub_10000B3A8(v7, &qword_1016CAA08, &qword_10140B848);
  return sub_100007BAC(v37);
}

uint64_t sub_1011C16AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v58 = a5;
  v59 = a2;
  v7 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v60 = v55 - v10;
  v11 = sub_1000BC4D4(&qword_1016CAA08, &qword_10140B848);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v62 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = v55 - v15;
  v16 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v56 = v55 - v18;
  v19 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v55 - v21;
  v23 = sub_1000BC4D4(&qword_1016A8FF0, &unk_1013BA840);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = v55 - v25;
  v27 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = v55 - v29;
  if (*a3 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v32 = sub_1000076D4(v31, a4);
  v63 = v8;
  v33 = *(v8 + 56);
  v33(v30, 1, 1, v7);
  (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
  v57 = v32;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v30, &qword_10169DE30, &unk_10139D190);
  if (qword_101695348 != -1)
  {
    swift_once();
  }

  v34 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v35 = sub_1000076D4(v34, qword_10177C980);
  v33(v30, 1, 1, v7);
  v36 = *(*(v34 - 8) + 56);
  v36(v22, 1, 1, v34);
  v55[3] = v35;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v30, &qword_10169DE30, &unk_10139D190);
  if (qword_101695350 != -1)
  {
    swift_once();
  }

  v37 = sub_1000076D4(v34, qword_10177C998);
  v33(v30, 1, 1, v7);
  v36(v22, 1, 1, v34);
  v55[2] = v37;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v30, &qword_10169DE30, &unk_10139D190);
  if (qword_101695358 != -1)
  {
    swift_once();
  }

  v38 = sub_1000076D4(v34, qword_10177C9B0);
  v33(v30, 1, 1, v7);
  v36(v22, 1, 1, v34);
  v55[1] = v38;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v30, &qword_10169DE30, &unk_10139D190);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v39 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v39, qword_10177C9C8);
  v55[0] = v7;
  v33(v30, 1, 1, v7);
  v40 = v56;
  (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v30, &qword_10169DE30, &unk_10139D190);
  TableBuilder.primaryKey<A>(_:)();
  v41 = *v58;
  v42 = type metadata accessor for Table();
  v65 = v42;
  v66 = &protocol witness table for Table;
  v43 = sub_1000280DC(&v64);
  (*(*(v42 - 8) + 16))(v43, v59 + v41, v42);
  v44 = enum case for TableBuilder.Dependency.cascade(_:);
  v45 = type metadata accessor for TableBuilder.Dependency();
  v46 = *(v45 - 8);
  v47 = *(v46 + 104);
  v48 = v61;
  v47(v61, v44, v45);
  v49 = *(v46 + 56);
  v49(v48, 0, 1, v45);
  v50 = v62;
  v47(v62, v44, v45);
  v49(v50, 0, 1, v45);
  TableBuilder.foreignKey<A>(_:references:_:update:delete:)();
  sub_10000B3A8(v50, &qword_1016CAA08, &qword_10140B848);
  sub_10000B3A8(v48, &qword_1016CAA08, &qword_10140B848);
  sub_100007BAC(&v64);
  v64 = xmmword_10140B750;
  v51 = v60;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v52 = *(v63 + 8);
  v53 = v55[0];
  v52(v51, v55[0]);
  v64 = xmmword_10140B760;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v52(v51, v53);
  *&v64 = 0;
  >= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v52)(v51, v53);
}

uint64_t sub_1011C2074()
{
  type metadata accessor for Table();
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v0)
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177C818);
  *(v1 + 56) = v2;
  v12 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  *(v1 + 64) = v12;
  v4 = sub_1000280DC((v1 + 32));
  v5 = v3;
  v6 = *(*(v2 - 8) + 16);
  v6(v4, v5, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
  v11 = v6;

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000076D4(v2, qword_10177C788);
  *(v7 + 56) = v2;
  *(v7 + 64) = v12;
  v9 = sub_1000280DC((v7 + 32));
  v11(v9, v8, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_1011C23E4()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v34 - v2;
  v4 = sub_1000BC4D4(&unk_1016AB5A0, &unk_1013BF4D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v35 = &v34 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v34 - v9;
  v11 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for PrimaryKey();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v36 = v3;
  v20 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v20, qword_10177CA28);
  (*(v16 + 104))(v19, enum case for PrimaryKey.autoincrement(_:), v15);
  v21 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v22 = *(*(v21 - 8) + 56);
  v22(v14, 1, 1, v21);
  TableBuilder.column<A>(_:primaryKey:check:)();
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  (*(v16 + 8))(v19, v15);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v23, qword_10177C818);
  v22(v14, 1, 1, v21);
  v24 = *(*(v23 - 8) + 56);
  v37 = v21;
  v24(v10, 1, 1, v23);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v10, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v23, qword_10177C788);
  v22(v14, 1, 1, v37);
  v24(v10, 1, 1, v23);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v10, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695370 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v25, qword_10177C9F8);
  v26 = v37;
  v22(v14, 1, 1, v37);
  v27 = v35;
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  sub_10022A60C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  v28 = v36;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v29 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v29, qword_10177C9C8);
  v22(v14, 1, 1, v26);
  v30 = *(v29 - 8);
  v35 = v22;
  v31 = v26;
  v32 = *(v30 + 56);
  v32(v28, 1, 1, v29);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v28, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695378 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CA10);
  (v35)(v14, 1, 1, v31);
  v32(v28, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v28, &qword_10169DE58, &unk_10139D1B0);
  return sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_1011C2BBC(uint64_t a1, uint64_t a2)
{
  v111 = a2;
  v119 = a1;
  v2 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = *(v109 + 64);
  __chkstk_darwin(v2);
  v108 = &v88 - v4;
  v5 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  __chkstk_darwin(v5);
  v104 = &v88 - v7;
  v8 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v103 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v102 = &v88 - v14;
  __chkstk_darwin(v13);
  v107 = &v88 - v15;
  v16 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v99 = &v88 - v18;
  v19 = sub_1000BC4D4(&qword_1016CAA18, &qword_10140B858);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v97 = &v88 - v21;
  v22 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v88 - v24;
  v26 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v88 - v28;
  v30 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v98 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v88 - v34;
  v36 = type metadata accessor for PrimaryKey();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v41 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v41, qword_10177C770);
  (*(v37 + 104))(v40, enum case for PrimaryKey.autoincrement(_:), v36);
  v118 = v9;
  v44 = *(v9 + 56);
  v43 = (v9 + 56);
  v42 = v44;
  v44(v35, 1, 1, v8);
  TableBuilder.column<A>(_:primaryKey:check:)();
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  (*(v37 + 8))(v40, v36);
  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v45 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v46 = sub_1000076D4(v45, qword_10177C800);
  v42(v35, 1, 1, v8);
  v101 = *(v45 - 8);
  v47 = *(v101 + 56);
  v117 = v45;
  v92 = v101 + 56;
  v91 = v47;
  v47(v29, 1, 1, v45);
  v48 = sub_100028088();
  v116 = v46;
  v114 = v48;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v29, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  v49 = v42;
  if (qword_1016952F8 != -1)
  {
    swift_once();
  }

  v50 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v51 = sub_1000076D4(v50, qword_10177C890);
  v49(v35, 1, 1, v8);
  v52 = *(v50 - 8);
  v112 = v43;
  v53 = v49;
  v100 = v52;
  v54 = *(v52 + 56);
  v54(v25, 1, 1, v50);
  v94 = v51;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v25, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v55 = sub_1000076D4(v50, qword_10177C8A8);
  v49(v35, 1, 1, v8);
  v115 = v50;
  v54(v25, 1, 1, v50);
  v113 = v55;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v25, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  if (qword_101695308 != -1)
  {
    swift_once();
  }

  v56 = v117;
  v57 = sub_1000076D4(v117, qword_10177C8C0);
  v49(v35, 1, 1, v8);
  v58 = v91;
  v91(v29, 1, 1, v56);
  v95 = v57;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v29, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  if (qword_101695310 != -1)
  {
    swift_once();
  }

  v59 = sub_1000076D4(v56, qword_10177C8D8);
  v53(v35, 1, 1, v8);
  v58(v29, 1, 1, v56);
  v96 = v59;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v29, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  if (qword_101695320 != -1)
  {
    swift_once();
  }

  v60 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
  v61 = sub_1000076D4(v60, qword_10177C908);
  v53(v35, 1, 1, v8);
  v58(v29, 1, 1, v56);
  v93 = v61;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v29, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  if (qword_101695318 != -1)
  {
    swift_once();
  }

  v62 = sub_1000076D4(v56, qword_10177C8F0);
  v53(v35, 1, 1, v8);
  v58(v29, 1, 1, v56);
  v91 = v62;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v29, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  if (qword_101695328 != -1)
  {
    swift_once();
  }

  v63 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
  sub_1000076D4(v63, qword_10177C920);
  v53(v35, 1, 1, v8);
  v64 = v97;
  (*(*(v63 - 8) + 56))(v97, 1, 1, v63);
  sub_100027F50();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v64, &qword_1016CAA18, &qword_10140B858);
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v65 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v66 = sub_1000076D4(v65, qword_10177C938);
  v53(v35, 1, 1, v8);
  v90 = *(v65 - 8);
  v67 = *(v90 + 56);
  v68 = v99;
  v97 = v65;
  v67(v99, 1, 1, v65);
  type metadata accessor for Date();
  v92 = v66;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v68, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  if (qword_101695340 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v8, qword_10177C968);
  v53(v35, 1, 1, v8);
  v69 = v98;
  v53(v98, 1, 1, v8);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v69, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v70 = v104;
  ExpressionType<>.length.getter();
  v120 = static MACAddress.length.getter();
  v71 = v107;
  == infix<A>(_:_:)();
  v72 = v8;
  v89 = v8;
  v73 = v106;
  v74 = *(v105 + 8);
  v74(v70, v106);
  TableBuilder.check(_:)();
  v112 = *(v118 + 8);
  v118 += 8;
  v112(v71, v72);
  ExpressionType<>.length.getter();
  v120 = 6;
  v75 = v102;
  == infix<A>(_:_:)();
  v74(v70, v73);
  ExpressionType<>.length.getter();
  v120 = 28;
  v76 = v103;
  == infix<A>(_:_:)();
  v74(v70, v73);
  || infix(_:_:)();
  v77 = v89;
  v78 = v112;
  v112(v76, v89);
  v78(v75, v77);
  TableBuilder.check(_:)();
  v78(v71, v77);
  LOWORD(v120) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v78(v71, v77);
  LOWORD(v120) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v78(v71, v77);
  LOWORD(v120) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v78(v71, v77);
  LOWORD(v120) = -256;
  v79 = v108;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  (*(v109 + 8))(v79, v110);
  v120 = v111;
  sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  sub_1000041A4(&qword_101699E20, &unk_10169BA40, &unk_1013918E0);
  Collection<>.contains(_:)();
  TableBuilder.check(_:)();
  v78(v71, v77);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_10138B360;
  v81 = v117;
  *(v80 + 56) = v117;
  *(v80 + 64) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
  v82 = sub_1000280DC((v80 + 32));
  (*(v101 + 16))(v82, v116, v81);
  v83 = v115;
  *(v80 + 96) = v115;
  *(v80 + 104) = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110);
  v84 = sub_1000280DC((v80 + 72));
  (*(v100 + 16))(v84, v113, v83);
  v85 = v97;
  *(v80 + 136) = v97;
  *(v80 + 144) = sub_1000041A4(&qword_101699E58, &qword_101699D78, &unk_1013BF4B0);
  v86 = sub_1000280DC((v80 + 112));
  (*(v90 + 16))(v86, v92, v85);
  TableBuilder.unique(_:)(v80);
}

uint64_t sub_1011C4048()
{
  type metadata accessor for Table();
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
  v2 = swift_allocObject();
  v3 = j__malloc_size(v2);
  *(v2 + 16) = 4;
  *(v2 + 24) = 2 * v3 - 64;
  *(v2 + 32) = 50462976;
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  *(v4 + 16) = 4;
  *(v4 + 24) = 2 * v5 - 64;
  *(v4 + 32) = 185207048;
  v6 = sub_10039B818(v4);
  __chkstk_darwin(v6);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();

  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  if (qword_1016952F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v9 = sub_1000076D4(v8, qword_10177C890);
  *(v7 + 56) = v8;
  v16 = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110);
  *(v7 + 64) = v16;
  v10 = sub_1000280DC((v7 + 32));
  v11 = *(*(v8 - 8) + 16);
  v11(v10, v9, v8);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
  v15 = v11;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v13 = sub_1000076D4(v8, qword_10177C8A8);
  *(v12 + 56) = v8;
  *(v12 + 64) = v16;
  v14 = sub_1000280DC((v12 + 32));
  v15(v14, v13, v8);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_1011C4490(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v117 = a1;
  v2 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v106 = *(v2 - 8);
  v107 = v2;
  v3 = *(v106 + 64);
  __chkstk_darwin(v2);
  v105 = v87 - v4;
  v5 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v102 = *(v5 - 8);
  v103 = v5;
  v6 = *(v102 + 64);
  __chkstk_darwin(v5);
  v101 = v87 - v7;
  v110 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v8 = *(v110 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v110);
  v100 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v99 = v87 - v13;
  __chkstk_darwin(v12);
  v104 = v87 - v14;
  v15 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v95 = v87 - v17;
  v18 = sub_1000BC4D4(&qword_1016CAA18, &qword_10140B858);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v93 = v87 - v20;
  v21 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v94 = v87 - v23;
  v24 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v87 - v26;
  v28 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = v87 - v33;
  v35 = type metadata accessor for PrimaryKey();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v40 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v40, qword_10177C770);
  (*(v36 + 104))(v39, enum case for PrimaryKey.autoincrement(_:), v35);
  v116 = v8;
  v41 = *(v8 + 56);
  v42 = v110;
  v41(v34, 1, 1, v110);
  TableBuilder.column<A>(_:primaryKey:check:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  (*(v36 + 8))(v39, v35);
  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v96 = v32;
  v43 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v44 = sub_1000076D4(v43, qword_10177C800);
  v41(v34, 1, 1, v42);
  v98 = *(v43 - 8);
  v45 = *(v98 + 56);
  v115 = v43;
  v89 = v98 + 56;
  v88 = v45;
  v45(v27, 1, 1, v43);
  v46 = sub_100028088();
  v114 = v44;
  v112 = v46;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  v47 = v41;
  if (qword_1016952F8 != -1)
  {
    swift_once();
  }

  v48 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v49 = sub_1000076D4(v48, qword_10177C890);
  v47(v34, 1, 1, v42);
  v50 = *(v48 - 8);
  v109 = v47;
  v97 = v50;
  v51 = *(v50 + 56);
  v52 = v94;
  v51(v94, 1, 1, v48);
  v91 = v49;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v52, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v53 = sub_1000076D4(v48, qword_10177C8A8);
  v109(v34, 1, 1, v42);
  v113 = v48;
  v51(v52, 1, 1, v48);
  v111 = v53;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v52, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  if (qword_101695308 != -1)
  {
    swift_once();
  }

  v54 = v115;
  v55 = sub_1000076D4(v115, qword_10177C8C0);
  v56 = v42;
  v57 = v109;
  v109(v34, 1, 1, v42);
  v58 = v88;
  v88(v27, 1, 1, v54);
  v92 = v55;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  if (qword_101695310 != -1)
  {
    swift_once();
  }

  v59 = sub_1000076D4(v54, qword_10177C8D8);
  v57(v34, 1, 1, v56);
  v58(v27, 1, 1, v54);
  v94 = v59;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  if (qword_101695320 != -1)
  {
    swift_once();
  }

  v60 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
  v61 = sub_1000076D4(v60, qword_10177C908);
  v57(v34, 1, 1, v56);
  v58(v27, 1, 1, v54);
  v90 = v61;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  if (qword_101695318 != -1)
  {
    swift_once();
  }

  v62 = sub_1000076D4(v54, qword_10177C8F0);
  v57(v34, 1, 1, v56);
  v58(v27, 1, 1, v54);
  v87[1] = v62;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  if (qword_101695328 != -1)
  {
    swift_once();
  }

  v63 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
  sub_1000076D4(v63, qword_10177C920);
  v57(v34, 1, 1, v56);
  v64 = v93;
  (*(*(v63 - 8) + 56))(v93, 1, 1, v63);
  sub_100027F50();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v64, &qword_1016CAA18, &qword_10140B858);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  v65 = v96;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v66 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v67 = sub_1000076D4(v66, qword_10177C938);
  v57(v34, 1, 1, v56);
  v88 = *(v66 - 8);
  v68 = *(v88 + 7);
  v69 = v95;
  v93 = v66;
  v68(v95, 1, 1, v66);
  type metadata accessor for Date();
  v89 = v67;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v69, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  if (qword_101695340 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v56, qword_10177C968);
  v57(v34, 1, 1, v56);
  v57(v65, 1, 1, v56);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v65, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  if (qword_101695338 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v56, qword_10177C950);
  v57(v34, 1, 1, v56);
  v57(v65, 1, 1, v56);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v65, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v70 = v101;
  ExpressionType<>.length.getter();
  v118 = static MACAddress.length.getter();
  v71 = v104;
  == infix<A>(_:_:)();
  v72 = v103;
  v102 = *(v102 + 8);
  (v102)(v70, v103);
  TableBuilder.check(_:)();
  v109 = *(v116 + 8);
  v116 += 8;
  (v109)(v71, v56);
  ExpressionType<>.length.getter();
  v118 = 6;
  v73 = v99;
  == infix<A>(_:_:)();
  v74 = v102;
  (v102)(v70, v72);
  ExpressionType<>.length.getter();
  v118 = 28;
  v75 = v100;
  == infix<A>(_:_:)();
  v74(v70, v72);
  || infix(_:_:)();
  v77 = v109;
  v76 = v110;
  (v109)(v75, v110);
  v77(v73, v76);
  TableBuilder.check(_:)();
  v77(v71, v76);
  LOWORD(v118) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v77(v71, v76);
  LOWORD(v118) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v77(v71, v76);
  LOWORD(v118) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v77(v71, v76);
  LOWORD(v118) = -256;
  v78 = v105;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  (*(v106 + 8))(v78, v107);
  v118 = v108;
  sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  sub_1000041A4(&qword_101699E20, &unk_10169BA40, &unk_1013918E0);
  Collection<>.contains(_:)();
  TableBuilder.check(_:)();
  v77(v71, v76);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_10138B360;
  v80 = v115;
  *(v79 + 56) = v115;
  *(v79 + 64) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
  v81 = sub_1000280DC((v79 + 32));
  (*(v98 + 16))(v81, v114, v80);
  v82 = v113;
  *(v79 + 96) = v113;
  *(v79 + 104) = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110);
  v83 = sub_1000280DC((v79 + 72));
  (*(v97 + 16))(v83, v111, v82);
  v84 = v93;
  *(v79 + 136) = v93;
  *(v79 + 144) = sub_1000041A4(&qword_101699E58, &qword_101699D78, &unk_1013BF4B0);
  v85 = sub_1000280DC((v79 + 112));
  (*(v88 + 2))(v85, v89, v84);
  TableBuilder.unique(_:)(v79);
}

uint64_t sub_1011C59FC()
{
  v0 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v26 = v25 - v2;
  v3 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v25[0] = v25 - v5;
  v6 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v25 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v25 - v12;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v15 = sub_1000076D4(v14, qword_10177C818);
  v16 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v27 = v17 + 56;
  v18(v13, 1, 1, v16);
  v19 = *(*(v14 - 8) + 56);
  v19(v9, 1, 1, v14);
  type metadata accessor for UUID();
  v25[1] = v15;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v13, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v14, qword_10177C788);
  v18(v13, 1, 1, v16);
  v19(v9, 1, 1, v14);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v13, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v20, qword_10177C830);
  v18(v13, 1, 1, v16);
  v21 = v25[0];
  (*(*(v20 - 8) + 56))(v25[0], 1, 1, v20);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v21, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v13, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952F0 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v22, qword_10177C878);
  v18(v13, 1, 1, v16);
  v23 = v26;
  (*(*(v22 - 8) + 56))(v26, 1, 1, v22);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v23, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v13, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011C5FC4()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v42 = v39 - v3;
  v4 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v41 = v39 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v40 = v39 - v9;
  v10 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v39 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v39 - v16;
  v18 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v39[0] = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v39 - v22;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v25 = sub_1000076D4(v24, qword_10177C788);
  v43 = v1;
  v27 = v1 + 56;
  v26 = *(v1 + 56);
  v26(v23, 1, 1, v0);
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v39[2] = type metadata accessor for UUID();
  v39[3] = v25;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  if (qword_101695368 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v29 = sub_1000076D4(v28, qword_10177C9E0);
  v26(v23, 1, 1, v0);
  v30 = *(*(v28 - 8) + 56);
  v44 = v27;
  v30(v13, 1, 1, v28);
  sub_100028088();
  v39[1] = v29;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177C7B8);
  v26(v23, 1, 1, v0);
  v30(v13, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0, qword_10177C7D0);
  v26(v23, 1, 1, v0);
  v31 = v39[0];
  v26(v39[0], 1, 1, v0);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  v32 = v0;
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v33, qword_10177C7A0);
  v26(v23, 1, 1, v0);
  v34 = v40;
  (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v35 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v35, qword_10177C9C8);
  v26(v23, 1, 1, v32);
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  TableBuilder.primaryKey<A, B>(_:_:)();
  v45 = -256;
  v37 = v42;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (*(v43 + 8))(v37, v32);
}

uint64_t sub_1011C689C()
{
  v1 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v13 - v3;
  v5 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if (qword_101695390 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v9, qword_10177CA58);
  v10 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  Table.addColumn<A>(_:check:defaultValue:)();
  sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_1011C6B04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2 + *a3;
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v3)
  {
  }
}

uint64_t sub_1011C6B90()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v50 = &v44 - v2;
  v3 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v44 - v5;
  v6 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v44 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v44 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v49 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v20, qword_10177CA70);
  v21 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(v19, 1, 1, v21);
  v25 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v26 = *(v25 - 8);
  v47 = *(v26 + 56);
  v44 = v26 + 56;
  v47(v13, 1, 1, v25);
  v27 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v52 = v27;
  v28 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v29 = sub_1000076D4(v28, qword_10177CA88);
  v23(v19, 1, 1, v21);
  v30 = *(v28 - 8);
  v54 = *(v30 + 56);
  v55 = v30 + 56;
  v54(v9, 1, 1, v28);
  v48 = v29;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  v46 = v28;
  sub_1000076D4(v25, qword_10177CAA0);
  v23(v19, 1, 1, v21);
  v53 = v24;
  v51 = v23;
  v31 = v47;
  v47(v13, 1, 1, v25);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v32 = sub_1000076D4(v25, qword_10177C818);
  v51(v19, 1, 1, v21);
  v31(v13, 1, 1, v25);
  v47 = v32;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  v33 = v46;
  sub_1000076D4(v46, qword_10177CAB8);
  v34 = v51;
  v51(v19, 1, 1, v21);
  v35 = v54;
  v54(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CAD0);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v44 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v44, qword_10177CAE8);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB00);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB18);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB48);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v36, qword_10177CB60);
  v34(v19, 1, 1, v21);
  v37 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v38 = v45;
  (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v38, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v44, qword_10177CB78);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CB90);
  v34(v19, 1, 1, v21);
  v39 = v49;
  v34(v49, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CBA8);
  v34(v19, 1, 1, v21);
  v34(v39, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CBC0);
  v34(v19, 1, 1, v21);
  v34(v39, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CBD8);
  v34(v19, 1, 1, v21);
  v54(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CBF0);
  v34(v19, 1, 1, v21);
  v34(v39, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v40 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v40, qword_10177CC08);
  v34(v19, 1, 1, v21);
  v41 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v42 = v50;
  (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v42, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CC50);
  v34(v19, 1, 1, v21);
  v34(v39, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CC68);
  v34(v19, 1, 1, v21);
  v54(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011C7F74()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v50 = &v44 - v2;
  v3 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v44 - v5;
  v6 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v44 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v44 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v49 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v20, qword_10177CA70);
  v21 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(v19, 1, 1, v21);
  v25 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v26 = *(v25 - 8);
  v47 = *(v26 + 56);
  v44 = v26 + 56;
  v47(v13, 1, 1, v25);
  v27 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v52 = v27;
  v28 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v29 = sub_1000076D4(v28, qword_10177CA88);
  v23(v19, 1, 1, v21);
  v30 = *(v28 - 8);
  v54 = *(v30 + 56);
  v55 = v30 + 56;
  v54(v9, 1, 1, v28);
  v48 = v29;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  v46 = v28;
  sub_1000076D4(v25, qword_10177CAA0);
  v23(v19, 1, 1, v21);
  v53 = v24;
  v51 = v23;
  v31 = v47;
  v47(v13, 1, 1, v25);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v32 = sub_1000076D4(v25, qword_10177C818);
  v51(v19, 1, 1, v21);
  v31(v13, 1, 1, v25);
  v47 = v32;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  v33 = v46;
  sub_1000076D4(v46, qword_10177CAB8);
  v34 = v51;
  v51(v19, 1, 1, v21);
  v35 = v54;
  v54(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CAD0);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v44 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v44, qword_10177CAE8);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB00);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB18);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB30);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB48);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v36, qword_10177CB60);
  v34(v19, 1, 1, v21);
  v37 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v38 = v45;
  (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v38, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v44, qword_10177CB78);
  v34(v19, 1, 1, v21);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CB90);
  v34(v19, 1, 1, v21);
  v39 = v49;
  v34(v49, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CBA8);
  v34(v19, 1, 1, v21);
  v34(v39, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CBC0);
  v34(v19, 1, 1, v21);
  v34(v39, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CBD8);
  v34(v19, 1, 1, v21);
  v54(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CBF0);
  v34(v19, 1, 1, v21);
  v34(v39, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v40 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v40, qword_10177CC08);
  v34(v19, 1, 1, v21);
  v41 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v42 = v50;
  (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v42, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CC50);
  v34(v19, 1, 1, v21);
  v34(v39, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CC68);
  v34(v19, 1, 1, v21);
  v54(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011C9428()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v52 = v51 - v2;
  v3 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v54 = v51 - v5;
  v6 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v51 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v51 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v58 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v51 - v18;
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v20, qword_10177CA70);
  v21 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(v19, 1, 1, v21);
  v25 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v26 = *(v25 - 8);
  v53 = *(v26 + 56);
  v51[0] = v26 + 56;
  v53(v13, 1, 1, v25);
  v57 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v28 = sub_1000076D4(v27, qword_10177CA88);
  v23(v19, 1, 1, v21);
  v29 = *(v27 - 8);
  v30 = *(v29 + 56);
  v56 = v27;
  v59 = v29 + 56;
  v60 = v30;
  v30(v9, 1, 1, v27);
  v51[1] = v28;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v25, qword_10177CAA0);
  v23(v19, 1, 1, v21);
  v61 = v24;
  v31 = v53;
  v55 = v21;
  v53(v13, 1, 1, v25);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v32 = sub_1000076D4(v25, qword_10177C818);
  v23(v19, 1, 1, v55);
  v31(v13, 1, 1, v25);
  v51[0] = v32;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  v33 = v56;
  sub_1000076D4(v56, qword_10177CAB8);
  v34 = v55;
  v23(v19, 1, 1, v55);
  v35 = v60;
  v60(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CAD0);
  v23(v19, 1, 1, v34);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v53 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v53, qword_10177CAE8);
  v23(v19, 1, 1, v34);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB00);
  v23(v19, 1, 1, v34);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB18);
  v23(v19, 1, 1, v34);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB30);
  v23(v19, 1, 1, v34);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CB48);
  v23(v19, 1, 1, v34);
  v35(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v36, qword_10177CB60);
  v23(v19, 1, 1, v34);
  v37 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v38 = v54;
  (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v38, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v53, qword_10177CB78);
  v23(v19, 1, 1, v34);
  v60(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177CB90);
  v23(v19, 1, 1, v34);
  v39 = v58;
  v23(v58, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v40 = v23;
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177CBA8);
  v23(v19, 1, 1, v34);
  v23(v39, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177CBC0);
  v23(v19, 1, 1, v34);
  v23(v39, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177CBD8);
  v23(v19, 1, 1, v34);
  v60(v9, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  v53 = v9;
  sub_1000076D4(v34, qword_10177CBF0);
  v23(v19, 1, 1, v34);
  v23(v39, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v41 = v23;
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v54 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v54, qword_10177CC08);
  v23(v19, 1, 1, v34);
  v42 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v43 = v34;
  v44 = *(*(v42 - 8) + 56);
  v45 = v52;
  v44(v52, 1, 1, v42);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695428 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v54, qword_10177CC20);
  v40(v19, 1, 1, v43);
  v44(v45, 1, 1, v42);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v54, qword_10177CC38);
  v40(v19, 1, 1, v43);
  v44(v45, 1, 1, v42);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v43, qword_10177CC50);
  v40(v19, 1, 1, v43);
  v46 = v58;
  v40(v58, 1, 1, v43);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v46, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  v47 = v53;
  v48 = v60;
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  v49 = v56;
  sub_1000076D4(v56, qword_10177CC68);
  v41(v19, 1, 1, v43);
  v48(v47, 1, 1, v49);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v47, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011CAAC4()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v51 - v2;
  v4 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v55 = &v51 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v59 = &v51 - v9;
  v10 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v51 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v51 - v19;
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v60 = v18;
  v53 = v3;
  v21 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v21, qword_10177CA70);
  v22 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v23 = *(*(v22 - 8) + 56);
  v23(v20, 1, 1, v22);
  v24 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v51 = v25 + 56;
  v52 = v26;
  v26(v13, 1, 1, v24);
  v57 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v28 = sub_1000076D4(v27, qword_10177CA88);
  v23(v20, 1, 1, v22);
  v29 = *(v27 - 8);
  v30 = *(v29 + 56);
  v31 = v59;
  v56 = v27;
  v58 = v30;
  v61 = v29 + 56;
  v30(v59, 1, 1, v27);
  v54 = v28;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v24, qword_10177CAA0);
  v23(v20, 1, 1, v22);
  v62 = v23;
  v32 = v52;
  v52(v13, 1, 1, v24);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v33 = sub_1000076D4(v24, qword_10177C818);
  v62(v20, 1, 1, v22);
  v32(v13, 1, 1, v24);
  v52 = v33;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  v34 = v56;
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177CAB8);
  v62(v20, 1, 1, v22);
  v35 = v58;
  v36 = v59;
  v58(v59, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177CAD0);
  v37 = v62;
  v62(v20, 1, 1, v22);
  v35(v36, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v51 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v51, qword_10177CAE8);
  v37(v20, 1, 1, v22);
  v35(v36, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177CB00);
  v37(v20, 1, 1, v22);
  v35(v36, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177CB18);
  v37(v20, 1, 1, v22);
  v35(v36, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177CB30);
  v37(v20, 1, 1, v22);
  v35(v36, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177CB48);
  v37(v20, 1, 1, v22);
  v35(v36, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v38 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v38, qword_10177CB60);
  v37(v20, 1, 1, v22);
  v39 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v40 = v55;
  (*(*(v39 - 8) + 56))(v55, 1, 1, v39);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v51, qword_10177CB78);
  v37(v20, 1, 1, v22);
  v35(v36, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v22, qword_10177CB90);
  v37(v20, 1, 1, v22);
  v41 = v60;
  v37(v60, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v22, qword_10177CBA8);
  v37(v20, 1, 1, v22);
  v37(v41, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v22, qword_10177CBC0);
  v37(v20, 1, 1, v22);
  v37(v41, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177CBD8);
  v37(v20, 1, 1, v22);
  v58(v36, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v22, qword_10177CBF0);
  v37(v20, 1, 1, v22);
  v42 = v60;
  v37(v60, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v42, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v43 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v43, qword_10177CC08);
  v37(v20, 1, 1, v22);
  v44 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v45 = v53;
  v55 = *(*(v44 - 8) + 56);
  (v55)(v53, 1, 1, v44);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695428 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v43, qword_10177CC20);
  v62(v20, 1, 1, v22);
  (v55)(v45, 1, 1, v44);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v43, qword_10177CC38);
  v62(v20, 1, 1, v22);
  (v55)(v45, 1, 1, v44);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  v46 = v59;
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v22, qword_10177CC50);
  v47 = v62;
  v62(v20, 1, 1, v22);
  v48 = v60;
  v47(v60, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v48, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  v49 = v56;
  sub_1000076D4(v56, qword_10177CC68);
  v47(v20, 1, 1, v22);
  v58(v46, 1, 1, v49);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v46, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695448 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v22, qword_10177CC80);
  v47(v20, 1, 1, v22);
  v47(v48, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v48, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695450 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v22, qword_10177CC98);
  v47(v20, 1, 1, v22);
  v47(v48, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v48, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101695458 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v22, qword_10177CCB0);
  v47(v20, 1, 1, v22);
  v47(v48, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v48, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}