void sub_100557808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for RDPermanentlyHiddenReminder();
  v8 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v37 = *a4;
    v31 = v17;
    v21 = v37 + v17 * a3;
LABEL_6:
    v35 = v18;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    v22 = v18;
    while (1)
    {
      sub_1001A3A2C(v21, v16);
      sub_1001A3A2C(v22, v12);
      v23 = UUID.uuidString.getter();
      v25 = v24;
      if (UUID.uuidString.getter() == v23 && v26 == v25)
      {

        sub_1001A3AF4(v12);
        sub_1001A3AF4(v16);
LABEL_5:
        a3 = v36 + 1;
        v18 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_6;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1001A3AF4(v12);
      sub_1001A3AF4(v16);
      if ((v27 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = v38;
      sub_1001A3A90(v21, v38);
      swift_arrayInitWithTakeFrontToBack();
      sub_1001A3A90(v28, v22);
      v22 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100557A74(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v126 = a1;
  v139 = type metadata accessor for RDPermanentlyHiddenReminder();
  v8 = *(v139 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v139);
  v131 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = &v119 - v12;
  __chkstk_darwin(v13);
  v141 = &v119 - v14;
  __chkstk_darwin(v15);
  v140 = &v119 - v16;
  __chkstk_darwin(v17);
  v137 = &v119 - v18;
  __chkstk_darwin(v19);
  v136 = &v119 - v20;
  __chkstk_darwin(v21);
  v125 = &v119 - v22;
  __chkstk_darwin(v23);
  v124 = &v119 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_104:
    v29 = *v126;
    if (!*v126)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v142 = v27;
      v115 = *(v27 + 2);
      if (v115 >= 2)
      {
        while (*a3)
        {
          v116 = *&v27[16 * v115];
          v117 = *&v27[16 * v115 + 24];
          sub_100558438(*a3 + *(v8 + 72) * v116, *a3 + *(v8 + 72) * *&v27[16 * v115 + 16], *a3 + *(v8 + 72) * v117, v29);
          if (v5)
          {
            goto LABEL_114;
          }

          if (v117 < v116)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1004361F4(v27);
          }

          if (v115 - 2 >= *(v27 + 2))
          {
            goto LABEL_130;
          }

          v118 = &v27[16 * v115];
          *v118 = v116;
          *(v118 + 1) = v117;
          v142 = v27;
          sub_100436168(v115 - 1);
          v27 = v142;
          v115 = *(v142 + 2);
          if (v115 <= 1)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_140;
      }

LABEL_114:

      return;
    }

LABEL_136:
    v27 = sub_1004361F4(v27);
    goto LABEL_106;
  }

  v120 = a4;
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v128 = a3;
  v121 = v8;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    if (v26 + 1 < v25)
    {
      v132 = v25;
      v30 = v26;
      v31 = *a3;
      v32 = *(v8 + 72);
      v33 = (v26 + 1);
      sub_1001A3A2C(v31 + v32 * v29, v124);
      v127 = v30;
      v134 = v32;
      sub_1001A3A2C(v31 + v32 * v30, v125);
      v29 = UUID.uuidString.getter();
      v35 = v34;
      v36 = UUID.uuidString.getter();
      v123 = v5;
      if (v36 == v29 && v37 == v35)
      {
        LODWORD(v133) = 0;
      }

      else
      {
        LODWORD(v133) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v122 = v27;

      sub_1001A3AF4(v125);
      sub_1001A3AF4(v124);
      v38 = v127 + 2;
      v39 = v134 * (v127 + 2);
      v40 = v31 + v39;
      v41 = v33;
      v42 = v134 * v33;
      v43 = v31 + v134 * v33;
      do
      {
        v8 = v38;
        a3 = v41;
        v5 = v42;
        v27 = v39;
        if (v38 >= v132)
        {
          break;
        }

        v135 = v38;
        sub_1001A3A2C(v40, v136);
        sub_1001A3A2C(v43, v137);
        v44 = UUID.uuidString.getter();
        v46 = v45;
        if (UUID.uuidString.getter() == v44 && v47 == v46)
        {
          v29 = 0;
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        sub_1001A3AF4(v137);
        sub_1001A3AF4(v136);
        v8 = v135;
        v38 = v135 + 1;
        v40 += v134;
        v43 += v134;
        v41 = (a3 + 1);
        v42 = v5 + v134;
        v39 = &v27[v134];
      }

      while (((v133 ^ v29) & 1) == 0);
      if (v133)
      {
        v28 = v127;
        if (v8 < v127)
        {
          goto LABEL_133;
        }

        if (v127 < v8)
        {
          v48 = v127 * v134;
          v49 = v127;
          do
          {
            if (v49 != a3)
            {
              v51 = *v128;
              if (!*v128)
              {
                goto LABEL_139;
              }

              sub_1001A3A90(v51 + v48, v131);
              if (v48 < v5 || v51 + v48 >= &v27[v51])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != v5)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1001A3A90(v131, v51 + v5);
            }

            v49 = (v49 + 1);
            v5 -= v134;
            v27 -= v134;
            v48 += v134;
            v50 = v49 < a3;
            a3 = (a3 - 1);
          }

          while (v50);
        }

        v29 = v8;
        v27 = v122;
        v5 = v123;
        a3 = v128;
      }

      else
      {
        v29 = v8;
        v27 = v122;
        v5 = v123;
        v28 = v127;
        a3 = v128;
      }

      v8 = v121;
    }

    v52 = a3[1];
    if (v29 < v52)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_132;
      }

      if (v29 - v28 < v120)
      {
        break;
      }
    }

LABEL_53:
    if (v29 < v28)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1003658B8(0, *(v27 + 2) + 1, 1, v27);
    }

    v70 = *(v27 + 2);
    v69 = *(v27 + 3);
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      v27 = sub_1003658B8((v69 > 1), v70 + 1, 1, v27);
    }

    *(v27 + 2) = v71;
    v72 = &v27[16 * v70];
    *(v72 + 4) = v28;
    *(v72 + 5) = v29;
    v73 = *v126;
    if (!*v126)
    {
      goto LABEL_141;
    }

    v135 = v29;
    if (v70)
    {
      while (1)
      {
        v29 = v71 - 1;
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v74 = *(v27 + 4);
          v75 = *(v27 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_73:
          if (v77)
          {
            goto LABEL_120;
          }

          v90 = &v27[16 * v71];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_123;
          }

          v96 = &v27[16 * v29 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_127;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v29 = v71 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v100 = &v27[16 * v71];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_87:
        if (v95)
        {
          goto LABEL_122;
        }

        v103 = &v27[16 * v29];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_125;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_94:
        v111 = v29 - 1;
        if (v29 - 1 >= v71)
        {
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
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v112 = *&v27[16 * v111 + 32];
        v113 = *&v27[16 * v29 + 40];
        sub_100558438(*a3 + *(v8 + 72) * v112, *a3 + *(v8 + 72) * *&v27[16 * v29 + 32], *a3 + *(v8 + 72) * v113, v73);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v113 < v112)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1004361F4(v27);
        }

        if (v111 >= *(v27 + 2))
        {
          goto LABEL_117;
        }

        v114 = &v27[16 * v111];
        *(v114 + 4) = v112;
        *(v114 + 5) = v113;
        v142 = v27;
        sub_100436168(v29);
        v27 = v142;
        v71 = *(v142 + 2);
        if (v71 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v27[16 * v71 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_118;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_119;
      }

      v85 = &v27[16 * v71];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_121;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_124;
      }

      if (v89 >= v81)
      {
        v107 = &v27[16 * v29 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_128;
        }

        if (v76 < v110)
        {
          v29 = v71 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v25 = a3[1];
    v26 = v135;
    if (v135 >= v25)
    {
      goto LABEL_104;
    }
  }

  v53 = v28 + v120;
  if (__OFADD__(v28, v120))
  {
    goto LABEL_134;
  }

  if (v53 >= v52)
  {
    v53 = a3[1];
  }

  if (v53 < v28)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v29 == v53)
  {
    goto LABEL_53;
  }

  v122 = v27;
  v123 = v5;
  v54 = *a3;
  v55 = *(v8 + 72);
  v56 = *a3 + v55 * (v29 - 1);
  v57 = v28;
  v58 = -v55;
  v127 = v57;
  v59 = v57 - v29;
  v129 = v55;
  v130 = v53;
  v60 = v54 + v29 * v55;
LABEL_44:
  v134 = v56;
  v135 = v29;
  v132 = v60;
  v133 = v59;
  v61 = v56;
  while (1)
  {
    sub_1001A3A2C(v60, v140);
    sub_1001A3A2C(v61, v141);
    v62 = UUID.uuidString.getter();
    v64 = v63;
    if (UUID.uuidString.getter() == v62 && v65 == v64)
    {

      sub_1001A3AF4(v141);
      sub_1001A3AF4(v140);
LABEL_43:
      v29 = v135 + 1;
      v56 = v134 + v129;
      v59 = v133 - 1;
      v60 = v132 + v129;
      if (v135 + 1 == v130)
      {
        v29 = v130;
        v27 = v122;
        v5 = v123;
        v28 = v127;
        a3 = v128;
        v8 = v121;
        goto LABEL_53;
      }

      goto LABEL_44;
    }

    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_1001A3AF4(v141);
    sub_1001A3AF4(v140);
    if ((v66 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v54)
    {
      break;
    }

    v67 = v138;
    sub_1001A3A90(v60, v138);
    swift_arrayInitWithTakeFrontToBack();
    sub_1001A3A90(v67, v61);
    v61 += v58;
    v60 += v58;
    if (__CFADD__(v59++, 1))
    {
      goto LABEL_43;
    }
  }

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

void sub_100558438(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for RDPermanentlyHiddenReminder();
  v8 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v51 = &v47 - v11;
  __chkstk_darwin(v12);
  v55 = &v47 - v13;
  __chkstk_darwin(v14);
  v54 = &v47 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_66;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_67;
  }

  v19 = (a2 - a1) / v17;
  v58 = a1;
  v57 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v21;
    if (v21 >= 1)
    {
      v33 = -v17;
      v34 = a4 + v21;
      v50 = a4;
      do
      {
        v48 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v37 = v32;
        v54 = v35;
        v55 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v58 = v35;
            v32 = v48;
            goto LABEL_63;
          }

          v38 = a3;
          v49 = v37;
          v39 = v34 + v33;
          sub_1001A3A2C(v34 + v33, v51);
          sub_1001A3A2C(v36, v52);
          v40 = UUID.uuidString.getter();
          v42 = v41;
          if (UUID.uuidString.getter() == v40 && v43 == v42)
          {
            v44 = 0;
          }

          else
          {
            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          a3 = v38 + v33;
          sub_1001A3AF4(v52);
          sub_1001A3AF4(v51);
          if (v44)
          {
            break;
          }

          v37 = v34 + v33;
          v45 = v50;
          if (v38 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v55;
          }

          else
          {
            v36 = v55;
            if (v38 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 += v33;
          v35 = v54;
          if (v39 <= v45)
          {
            v32 = v39;
            v58 = v54;
            goto LABEL_63;
          }
        }

        v46 = v50;
        if (v38 < v54 || a3 >= v54)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a2 = v55;
          if (v38 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v49;
      }

      while (v34 > v46);
    }

    v58 = a2;
LABEL_63:
    v56 = v32;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v20;
    v56 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      do
      {
        v23 = a3;
        v24 = v17;
        v25 = a2;
        sub_1001A3A2C(a2, v54);
        sub_1001A3A2C(a4, v55);
        v26 = UUID.uuidString.getter();
        v28 = v27;
        if (UUID.uuidString.getter() == v26 && v29 == v28)
        {

          sub_1001A3AF4(v55);
          sub_1001A3AF4(v54);
        }

        else
        {
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1001A3AF4(v55);
          sub_1001A3AF4(v54);
          if (v30)
          {
            v17 = v24;
            a2 = v25 + v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              a3 = v23;
            }

            else
            {
              a3 = v23;
              if (a1 != v25)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            goto LABEL_34;
          }
        }

        v17 = v24;
        v31 = a4 + v24;
        a2 = v25;
        if (a1 < a4 || a1 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v23;
        }

        else
        {
          a3 = v23;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v57 = v31;
        a4 = v31;
LABEL_34:
        a1 += v17;
        v58 = a1;
      }

      while (a4 < v52 && a2 < a3);
    }
  }

  sub_100558A40(&v58, &v57, &v56, type metadata accessor for RDPermanentlyHiddenReminder);
}

uint64_t sub_100558A40(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100558B44@<X0>(unint64_t *a1@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001007E8D70;
  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 72) = &type metadata for Double;
  *(inited + 48) = v10;
  v11 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100939260, &unk_100797220);
  v12 = *(v1 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);
  if (v12)
  {
    v36 = v8;
    v37 = v11;
    v13 = *(v12 + 16);
    v14 = _swiftEmptyArrayStorage;
    if (v13)
    {
      v34 = a1;
      v35 = v2;
      *&v45 = _swiftEmptyArrayStorage;
      sub_100026EF4(0, v13, 0);
      v14 = v45;
      v15 = *(v43 + 16);
      v16 = v12 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v39 = *(v43 + 72);
      v40 = v15;
      v43 += 16;
      v38 = (v43 - 8);
      do
      {
        v17 = v41;
        v18 = v42;
        v40(v41, v16, v42);
        v19 = Locale.identifier.getter();
        v21 = v20;
        (*v38)(v17, v18);
        *&v45 = v14;
        v23 = v14[2];
        v22 = v14[3];
        if (v23 >= v22 >> 1)
        {
          sub_100026EF4((v22 > 1), v23 + 1, 1);
          v14 = v45;
        }

        v14[2] = v23 + 1;
        v24 = &v14[2 * v23];
        v24[4] = v19;
        v24[5] = v21;
        v16 += v39;
        --v13;
      }

      while (v13);
      a1 = v34;
    }

    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_100791340;
    *(v25 + 32) = 0x657079546D756E65;
    *(v25 + 40) = 0xE800000000000000;
    *(v25 + 48) = 0x646469727265766FLL;
    *(v25 + 56) = 0xEA00000000006E65;
    *(v25 + 72) = &type metadata for String;
    *(v25 + 80) = 0x73656C61636F6CLL;
    *(v25 + 88) = 0xE700000000000000;
    *(v25 + 120) = sub_1000F5104(&unk_10093B300, &unk_100797780);
    *(v25 + 96) = v14;
    v26 = sub_1001F67C8(v25);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939260, &unk_100797220);
    swift_arrayDestroy();
    v46 = sub_1000F5104(&unk_100938CB0, &unk_100796A70);
    *&v45 = v26;
    sub_100005EE0(&v45, v44);
    v27 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v27;
  }

  else
  {
    v29 = sub_10038E004(&off_1008E3CF8);
    sub_1000050A4(&unk_1008E3D18, &qword_10093DB20, &qword_10079B880);
    v46 = sub_1000F5104(&unk_100945230, &qword_1007A2590);
    *&v45 = v29;
    sub_100005EE0(&v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v11;
  }

  sub_1002C88F0(v44, 0xD000000000000017, 0x80000001007F8A90, isUniquelyReferenced_nonNull_native);
  *a1 = v47;
  v30 = enum case for REMJSONType.jsonObject(_:);
  v31 = type metadata accessor for REMJSONType();
  return (*(*(v31 - 8) + 104))(a1, v30, v31);
}

uint64_t sub_100558FF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100559020(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100559020(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v71 = v2;
  v72 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_10094C750, &qword_1007B1728);
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  __chkstk_darwin(v6);
  v69 = &v66 - v8;
  v9 = sub_1000F5104(&qword_10094C758, &qword_1007B1730);
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  __chkstk_darwin(v9);
  v73 = &v66 - v11;
  v12 = sub_1000F5104(&qword_10094C760, &qword_1007B1738);
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = v77[8];
  __chkstk_darwin(v12);
  v76 = &v66 - v14;
  v15 = sub_1000F5104(&unk_100942600, &qword_1007A2E18);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v66 - v18;
  v20 = type metadata accessor for Date();
  v79 = *(v20 - 8);
  v21 = *(v79 + 64);
  __chkstk_darwin(v20);
  v70 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v66 - v24;
  v26 = type metadata accessor for REMJSONType();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = (&v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v31, a1, v26, v29);
  v32 = (*(v27 + 88))(v31, v26);
  if (v32 == enum case for REMJSONType.jsonObject(_:))
  {
    (*(v27 + 96))(v31, v26);
    v33 = *v31;
    (*(v16 + 104))(v19, enum case for Dictionary<>.DeserializableValueType.date<A, B><A1>(_:), v15);
    v34 = v82;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    (*(v16 + 8))(v19, v15);
    if (v34)
    {
    }

    else
    {
      v36 = v25;
      v38 = v76;
      v37 = v77;
      v39 = v78;
      (v77[13])(v76, enum case for Dictionary<>.DeserializableValueType.remJSONObject<A, B><A1>(_:), v78);
      sub_1000F5104(&unk_100938CB0, &unk_100796A70);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      (v37[1])(v38, v39);

      v41 = v73;
      v40 = v74;
      v42 = v75;
      (*(v74 + 104))(v73, enum case for Dictionary<>.DeserializableValueType.string<A, B><A1>(_:), v75);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v78 = v36;
      v82 = v20;
      (*(v40 + 8))(v41, v42);
      v45 = v80;
      v44 = v81;
      if (v80 == 0x6974616D6F747561 && v81 == 0xE900000000000063 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v46 = 0;
      }

      else
      {
        if (v45 == 0x646469727265766FLL && v44 == 0xEA00000000006E65)
        {

          v53 = v69;
        }

        else
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v53 = v69;
          if ((v54 & 1) == 0)
          {

            v33 = type metadata accessor for REMJSONDeserializationError();
            sub_1003466D4();
            swift_allocError();
            (*(*(v33 - 8) + 104))(v65, enum case for REMJSONDeserializationError.invalidData(_:), v33);
            swift_willThrow();
            (*(v79 + 8))(v78, v82);
            return v33;
          }
        }

        v56 = v67;
        v55 = v68;
        (*(v67 + 104))(v53, enum case for Dictionary<>.DeserializableValueType.arrayOfStrings<A, B><A1>(_:), v68);
        sub_1000F5104(&unk_10093B300, &unk_100797780);
        Dictionary<>.deserializeRequired<A>(key:valueType:)();
        (*(v56 + 8))(v53, v55);

        v57 = v80;
        v58 = v80[2];
        if (v58)
        {
          v80 = _swiftEmptyArrayStorage;
          sub_100253CCC(0, v58, 0);
          v46 = v80;
          v77 = v57;
          v59 = v57 + 5;
          v60 = v66;
          do
          {
            v62 = *(v59 - 1);
            v61 = *v59;

            Locale.init(identifier:)();
            v80 = v46;
            v64 = v46[2];
            v63 = v46[3];
            if (v64 >= v63 >> 1)
            {
              sub_100253CCC(v63 > 1, v64 + 1, 1);
              v46 = v80;
            }

            v46[2] = v64 + 1;
            (*(v72 + 32))(v46 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v64, v60, v71);
            v59 += 2;
            --v58;
          }

          while (v58);
        }

        else
        {

          v46 = _swiftEmptyArrayStorage;
        }
      }

      v47 = *(v79 + 32);
      v48 = v70;
      v49 = v82;
      v47(v70, v78, v82);
      v50 = type metadata accessor for RDSecondaryGroceryLocalesInfo();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      v33 = swift_allocObject();
      v47((v33 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_lastModifiedDate), v48, v49);
      *(v33 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales) = v46;
    }

    return v33;
  }

  if (v32 == enum case for REMJSONType.jsonArray(_:))
  {
    (*(v27 + 8))(v31, v26);
    v33 = type metadata accessor for REMJSONDeserializationError();
    sub_1003466D4();
    swift_allocError();
    (*(*(v33 - 8) + 104))(v35, enum case for REMJSONDeserializationError.invalidData(_:), v33);
    swift_willThrow();
    return v33;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100559A8C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C768);
  v1 = sub_100006654(v0, qword_10094C768);
  if (qword_100936498 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975110);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100559B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  dispatch thunk of Collection.count.getter();
  sub_1000F5104(&qword_10093B330, &qword_100798980);
  v96[0] = Dictionary.init(minimumCapacity:)();
  sub_1000F5104(&qword_10094C838, qword_1007B1790);
  v6 = *(a3 + 8);
  Sequence.reduce<A>(into:_:)();
  v7 = v93;
  v8 = *(v93 + 16);
  v84 = v4;
  if (v8)
  {
    v9 = sub_1003689CC(v8, 0);
    v10 = sub_10027DC5C(&v93, v9 + 4, v8, v93);

    sub_10001B860();
    if (v10 != v8)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v19 = sub_10055AED4(v9);

  v93 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_10055B9E4();
  v20 = Sequence.compactIndexBy<A, B>(key:value:)();

  __chkstk_darwin(v21);
  v80 = sub_10055BBD4(v7, sub_10055BA48);

  v22 = 0;
  v23 = v20 + 64;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v20 + 64);
  v27 = (v24 + 63) >> 6;
  v28 = &selRef_setPublicLinkLastModifiedDate_;
  v79 = v20;
  v77 = v27;
  v78 = v20 + 64;
  while (1)
  {
    if (v26)
    {
      v29 = v80;
      goto LABEL_19;
    }

    v29 = v80;
    do
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v30 >= v27)
      {

        return;
      }

      v26 = *(v23 + 8 * v30);
      ++v22;
    }

    while (!v26);
    v22 = v30;
LABEL_19:
    v81 = v26;
    v82 = v22;
    v31 = __clz(__rbit64(v26)) | (v22 << 6);
    v32 = *(*(v20 + 56) + 8 * v31);
    if (*(v29 + 16))
    {
      v33 = (*(v20 + 48) + 16 * v31);
      v34 = *v33;
      v35 = v33[1];
      v36 = v32;

      v37 = sub_100005F4C(v34, v35);
      v39 = v38;

      v40 = _swiftEmptyArrayStorage;
      if (v39)
      {
        v40 = *(*(v80 + 56) + 8 * v37);
      }
    }

    else
    {
      v41 = v32;
      v40 = _swiftEmptyArrayStorage;
    }

    if (v40 >> 62)
    {
      break;
    }

    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_25;
    }

LABEL_11:
    v26 = (v81 - 1) & v81;

    v20 = v79;
    v23 = v78;
    v22 = v82;
    v27 = v77;
  }

  v42 = _CocoaArrayWrapper.endIndex.getter();
  if (!v42)
  {
    goto LABEL_11;
  }

LABEL_25:
  if (v42 >= 1)
  {
    v43 = 0;
    v85 = *(v4 + 16);
    v86 = v32;
    v87 = v40;
    v88 = v40 & 0xC000000000000001;
    v89 = v42;
    while (1)
    {
      if (v88)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v44 = *(v40 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = [v44 v28[108]];
      v91 = v45;
      if (v46 == 2)
      {
        v47 = 0;
      }

      else
      {
        if (v46 != 3)
        {
          v61 = [v45 v28[108]];
          v57 = 0;
          v60 = 0;
          if (v61 >= 6)
          {
            v55 = 6;
          }

          else
          {
            v55 = qword_1007B17F8[v61];
          }

          goto LABEL_49;
        }

        v47 = 1;
      }

      v48 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter();
      v49 = objc_allocWithZone(v48);
      *&v49[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder] = v32;
      v49[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_field] = v47;
      *&v49[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_storeObjectContext] = v85;
      v50 = &v49[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_onlySpecificCanonicalName];
      *v50 = 0;
      v50[1] = 0;
      v51 = objc_allocWithZone(RDPersistentStoreLookupForREMCDObject);
      v52 = v32;
      v90 = v85;
      v53 = [v51 init:v52];
      *&v49[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_persistentStoreLookup] = v53;
      v92.receiver = v49;
      v92.super_class = v48;
      v54 = objc_msgSendSuper2(&v92, "init");
      v55 = sub_1001B5774();
      v57 = v56;
      v59 = v58;

      if (!(v59 >> 6))
      {
        v40 = v87;
        if (qword_100936540 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_100006654(v62, qword_10094C768);
        sub_1001BC0BC(v55, v57, v59);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        sub_1001E8F6C(v55, v57, v59);
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v96[0] = v83;
          *v65 = 136446210;
          v93 = v55;
          v94 = v57;
          LOBYTE(v95) = v59;
          sub_1001E8F88();
          v66 = Error.rem_errorDescription.getter();
          v68 = sub_10000668C(v66, v67, v96);

          *(v65 + 4) = v68;
          v32 = v86;
          _os_log_impl(&_mh_execute_header, v63, v64, "#️⃣ RDNewlySharedToMeTagAutoConvertRunner: Error autoconverting hashtags. Deleting activity anyway {error: %{public}s}", v65, 0xCu);
          sub_10000607C(v83);

          v4 = v84;
        }

        v28 = &selRef_setPublicLinkLastModifiedDate_;
        [v90 deleteObject:v91];

        sub_1001E8F6C(v55, v57, v59);
        goto LABEL_29;
      }

      v40 = v87;
      if (v59 >> 6 == 1)
      {
        v60 = v59 & 0x3F;
LABEL_49:
        if (qword_100936540 != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        sub_100006654(v69, qword_10094C768);
        sub_1001BC0BC(v55, v57, v60);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();
        sub_1001BC0F8(v55, v57, v60);
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v96[0] = v73;
          *v72 = 136446210;
          v93 = v55;
          v94 = v57;
          LOBYTE(v95) = v60;
          sub_1001E8F88();
          v74 = Error.rem_errorDescription.getter();
          v76 = sub_10000668C(v74, v75, v96);

          *(v72 + 4) = v76;
          v40 = v87;
          _os_log_impl(&_mh_execute_header, v70, v71, "#️⃣ RDNewlySharedToMeTagAutoConvertRunner: Error autoconverting hashtags. Not deleting activity {error: %{public}s}", v72, 0xCu);
          sub_10000607C(v73);
          v4 = v84;

          v28 = &selRef_setPublicLinkLastModifiedDate_;

          sub_1001BC0F8(v55, v57, v60);
        }

        else
        {

          sub_1001BC0F8(v55, v57, v60);
        }

        v32 = v86;
        goto LABEL_29;
      }

      [v90 deleteObject:v91];

LABEL_29:
      if (v89 == ++v43)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  swift_once();
  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10094C768);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v93 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v16 = Error.rem_errorDescription.getter();
    v18 = sub_10000668C(v16, v17, &v93);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "#️⃣ RDNewlySharedToMeTagAutoConvertRunner: CoreData error fetching REMCDReminders: {error: %{public}s}", v14, 0xCu);
    sub_10000607C(v15);
  }

  else
  {
  }
}

id sub_10055A588(uint64_t **a1, id *a2, uint64_t a3)
{
  v64 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v60 - v17;
  v19 = *a2;
  v20 = [*a2 ckIdentifier];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = *a1;
    if (*a1)[2] && (v26 = sub_100005F4C(v22, v24), (v27))
    {
      v28 = *(v25[7] + 8 * v26);
    }

    else
    {
      v28 = _swiftEmptyArrayStorage;
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = v19;
    v65 = v28;
    v30 = v19;
    sub_10027292C(inited);
    v31 = v65;
    v32 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *a1;
    sub_1002CAAC8(v31, v22, v24, isUniquelyReferenced_nonNull_native);

    *a1 = v65;
  }

  else
  {
    v61 = v7;
    v62 = v14;
    v60 = v18;
    v35 = v6;
    v63 = v3;
    if (qword_100936540 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_10094C768);
    v37 = v19;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v62;
    if (v40)
    {
      v42 = v10;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v65 = v44;
      *v43 = 136446210;
      v45 = [v37 uuidForChangeTracking];
      if (v45)
      {
        v46 = v45;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v47 = v61;
        (*(v61 + 56))(v41, 0, 1, v35);
      }

      else
      {
        v47 = v61;
        (*(v61 + 56))(v41, 1, 1, v35);
      }

      v48 = v41;
      v49 = v60;
      sub_100100FB4(v48, v60);
      if ((*(v47 + 48))(v49, 1, v35))
      {
        sub_1001A4F9C(v49);
        v50 = 0xE90000000000003ELL;
        v51 = 0x64697575206F6E3CLL;
      }

      else
      {
        (*(v47 + 16))(v42, v49, v35);
        sub_1001A4F9C(v49);
        v62 = v44;
        v52 = v39;
        v53 = v35;
        v54 = v42;
        v55 = v47;
        v56 = UUID.uuidString.getter();
        v50 = v57;
        v58 = v53;
        v39 = v52;
        v44 = v62;
        (*(v55 + 8))(v54, v58);
        v51 = v56;
      }

      v59 = sub_10000668C(v51, v50, &v65);

      *(v43 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v38, v39, "#️⃣ RDNewlySharedToMeTagAutoConvertRunner: REMCKSharedEntitySyncActivity[%{public}s] did not have a ckIdentifier; deleting", v43, 0xCu);
      sub_10000607C(v44);
    }

    return [*(v64 + 16) deleteObject:v37];
  }

  return result;
}

void sub_10055AA30(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = type metadata accessor for UUID();
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v57);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v56 = &v44 - v19;
  if (!*(a4 + 16) || (sub_100005F4C(a1, a2), (v20 & 1) == 0))
  {
    if (a3 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (!v21)
      {
        return;
      }
    }

    else
    {
      v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        return;
      }
    }

    if (v21 < 1)
    {
      __break(1u);
    }

    else
    {
      v22 = 0;
      v23 = *(a5 + 16);
      v58 = a3 & 0xC000000000000001;
      v59 = v23;
      v51 = (v10 + 48);
      v52 = (v10 + 56);
      v45 = (v10 + 8);
      v46 = (v10 + 16);
      v18.n128_u64[0] = 136446466;
      v50 = v18;
      v54 = a1;
      v55 = a3;
      v47 = v16;
      v48 = a2;
      v53 = v21;
      do
      {
        if (v58)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v24 = *(a3 + 8 * v22 + 32);
        }

        v25 = v24;
        if (qword_100936540 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100006654(v26, qword_10094C768);
        v27 = v25;

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v30 = v50.n128_u32[0];
          v31 = [v27 uuidForChangeTracking];
          if (v31)
          {
            v32 = v31;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v33 = 0;
          }

          else
          {
            v33 = 1;
          }

          v34 = v57;
          (*v52)(v16, v33, 1, v57);
          v35 = v56;
          sub_100100FB4(v16, v56);
          if ((*v51)(v35, 1, v34))
          {
            sub_1001A4F9C(v35);
            v36 = 0xE90000000000003ELL;
            v37 = 0x646975752D6F6E3CLL;
          }

          else
          {
            v38 = v49;
            (*v46)(v49, v35, v34);
            sub_1001A4F9C(v35);
            v39 = v34;
            v37 = UUID.uuidString.getter();
            v36 = v40;
            v41 = v38;
            v42 = v39;
            v16 = v47;
            a2 = v48;
            (*v45)(v41, v42);
          }

          v43 = sub_10000668C(v37, v36, &v60);

          *(v30 + 4) = v43;
          *(v30 + 12) = 2082;
          *(v30 + 14) = sub_10000668C(v54, a2, &v60);
          _os_log_impl(&_mh_execute_header, v28, v29, "#️⃣ RDNewlySharedToMeTagAutoConvertRunner: REMCKSharedEntitySyncActivity[%{public}s] had ckIdentifier[%{public}s] that did not correspond to a reminder; deleting activity", v30, 0x16u);
          swift_arrayDestroy();

          a3 = v55;
          v21 = v53;
        }

        else
        {
        }

        ++v22;
        [v59 deleteObject:v27];
      }

      while (v21 != v22);
    }
  }
}

uint64_t sub_10055AED4(uint64_t a1)
{
  v2 = v1;
  v4 = _s10PredicatesOMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  swift_storeEnumTagMultiPayload();

  v8 = sub_100043AA8();
  sub_1000513B4(v7);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v9 = [objc_allocWithZone(NSFetchRequest) init];
  v10 = [swift_getObjCClassFromMetadata() entity];
  [v9 setEntity:v10];

  [v9 setAffectedStores:0];
  [v9 setPredicate:v8];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100792CE0;
  strcpy((v11 + 32), "ckIdentifier");
  *(v11 + 45) = 0;
  *(v11 + 46) = -5120;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = 0x696669746E656469;
  *(v11 + 72) = 0xEA00000000007265;
  *(v11 + 88) = &type metadata for String;
  strcpy((v11 + 96), "titleDocument");
  *(v11 + 110) = -4864;
  *(v11 + 152) = &type metadata for String;
  *(v11 + 120) = &type metadata for String;
  strcpy((v11 + 128), "notesDocument");
  *(v11 + 142) = -4864;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setPropertiesToFetch:isa];

  v13 = Array._bridgeToObjectiveC()().super.isa;
  [v9 setRelationshipKeyPathsForPrefetching:v13];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007953F0;
  v15 = objc_allocWithZone(NSSortDescriptor);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithKey:v16 ascending:0];

  *(v14 + 32) = v17;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v9 setSortDescriptors:v18];

  v19 = *(v2 + 16);
  v20 = NSManagedObjectContext.fetch<A>(_:)();

  return v20;
}

void *sub_10055B290(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10055BA50(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10055B320(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000F5104(&qword_100943AA8, &qword_1007B17F0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    v34 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10055B560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000F5104(&qword_100943F18, &qword_1007A4688);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 48);
    v18 = *(v17 + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = *(v9 + 40);
    if (v18 != 0.0)
    {
      v21 = *(v17 + 8 * v16);
    }

    result = static Hasher._hash(seed:_:)();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_28;
        }
      }

      goto LABEL_33;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v18;
    *(*(v9 + 56) + 8 * v25) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_34;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_10055B78C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  sub_1000F5104(a5, a6);
  result = static _DictionaryStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v35 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(v6 + 56);
    v20 = (*(v6 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v19 + 8 * v18);
    v24 = *(v11 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v14 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v11 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    *(*(v11 + 56) + 8 * v28) = v23;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v35;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10055B9E4()
{
  result = qword_10093A570;
  if (!qword_10093A570)
  {
    sub_1000F514C(&qword_10093CAC0, &unk_10079E1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A570);
  }

  return result;
}

uint64_t sub_10055BA50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_10055B78C(v21, a2, v22, a3, &qword_100943A38, qword_1007A42B8);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_10055B78C(v21, a2, v22, a3, &qword_100943A38, qword_1007A42B8);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10055BBD4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_10055BA50(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_10055B290(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

size_t sub_10055BD54(unint64_t a1, int a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v49 - v10;
  v52 = _swiftEmptyArrayStorage;
  v12 = a2 >> 5;
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      KeyPath = swift_getKeyPath();
      v32 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = type metadata accessor for UUID();
      (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
      sub_100391308(KeyPath, v9);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v52[2] >= v52[3] >> 1)
      {
        v44 = v52[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    else
    {
      if (v12 != 4)
      {
        v39 = swift_getKeyPath();
        v40 = [a1 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = type metadata accessor for UUID();
        (*(*(v41 - 8) + 56))(v9, 0, 1, v41);
        sub_100391308(v39, v9);
        goto LABEL_32;
      }

      v17 = swift_getKeyPath();
      v18 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = type metadata accessor for UUID();
      (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
      sub_100391308(v17, v9);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v52[2] >= v52[3] >> 1)
      {
        v46 = v52[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v34 = swift_getKeyPath();
    sub_1003EB7DC(v34);
LABEL_32:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v52[2] >= v52[3] >> 1)
    {
      v43 = v52[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_35:
    sub_10001035C(0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v52[2] >= v52[3] >> 1)
    {
      v42 = v52[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return sub_10000C2B0(v52);
  }

  if (a2 >> 5)
  {
    if (v12 == 1)
    {
      v13 = swift_getKeyPath();
      v14 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
      sub_100391308(v13, v9);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v52[2] >= v52[3] >> 1)
      {
        v45 = v52[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((a2 & 1) == 0)
      {
        goto LABEL_35;
      }

      v16 = swift_getKeyPath();
      sub_1003EB784(v16);
    }

    else
    {
      v35 = swift_getKeyPath();
      v36 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = type metadata accessor for UUID();
      (*(*(v37 - 8) + 56))(v9, 0, 1, v37);
      sub_100391308(v35, v9);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v52[2] >= v52[3] >> 1)
      {
        v47 = v52[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v38 = swift_getKeyPath();
      sub_1003EB7B0(v38);
    }

    goto LABEL_32;
  }

  v20 = swift_getKeyPath();
  if (a1 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = _swiftEmptyArrayStorage;
  if (!v21)
  {
LABEL_39:
    sub_1003EB760(v20, v22);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v52[2] >= v52[3] >> 1)
    {
      v48 = v52[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((a2 & 1) == 0)
    {
      return sub_10000C2B0(v52);
    }

    goto LABEL_35;
  }

  v49 = v20;
  v50 = a2;
  v51 = _swiftEmptyArrayStorage;
  result = sub_100253218(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v22 = v51;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(a1 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = [v25 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
      v51 = v22;
      v30 = v22[2];
      v29 = v22[3];
      if (v30 >= v29 >> 1)
      {
        sub_100253218(v29 > 1, v30 + 1, 1);
        v22 = v51;
      }

      ++v24;
      v22[2] = v30 + 1;
      sub_100100FB4(v11, v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v30);
    }

    while (v21 != v24);
    LOBYTE(a2) = v50;
    v20 = v49;
    goto LABEL_39;
  }

  __break(1u);
  return result;
}

void sub_10055C548(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setParentSavedReminderIdentifier:isa];
}

void sub_10055C6B8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDisplayDateDate:isa];
}

void sub_10055C7F4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_10055C85C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  [v2 setMetadata:?];
}

void sub_10055C8D4(void *a1, uint64_t a2)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  v18 = a2;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }

    v6 = *(inited + 32);
  }

  v7 = a1;
  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v9)
  {
LABEL_12:
    _StringGuts.grow(_:)(46);
    v17._object = 0x80000001007EC120;
    v17._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v17);
    sub_1000F5104(&qword_10093D5C8, &unk_1007A76F0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v10 = v8;
  v11 = v9;

  v13 = _swiftEmptyArrayStorage[2];
  v12 = _swiftEmptyArrayStorage[3];
  if (v13 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v13 + 1;
  v14 = &_swiftEmptyArrayStorage[2 * v13];
  v14[4] = v10;
  v14[5] = v11;
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  v16 = sub_10055D968(v7, v18, 1, _swiftEmptyArrayStorage, 0);

  if (!v2)
  {
    sub_1002A767C();
  }
}

uint64_t sub_10055CB44()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C840);
  v1 = sub_100006654(v0, qword_10094C840);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10055CC0C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [objc_opt_self() sharedConfiguration];
  [v5 templatePublicLinkTTL];

  result = sub_1001DA188(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10055CC84(unint64_t isa, void *a2, uint64_t a3)
{
  v5 = v3;
  v67 = a3;
  v69 = a2;
  v75 = type metadata accessor for UUID();
  ObjCClassFromMetadata = *(v75 - 8);
  v8 = *(ObjCClassFromMetadata + 64);
  __chkstk_darwin(v75);
  v74 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = _swiftEmptySetSingleton;
  v84 = _swiftEmptySetSingleton;
  v85 = _swiftEmptyArrayStorage;
  v66 = isa >> 62;
  if (isa >> 62)
  {
    goto LABEL_43;
  }

  v10 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = isa; v10; i = isa)
  {
    v68 = v5;
    v4 = 0;
    v79 = i & 0xC000000000000001;
    v71 = i + 32;
    v72 = i & 0xFFFFFFFFFFFFFF8;
    v73 = (ObjCClassFromMetadata + 8);
    v70 = _swiftEmptyArrayStorage;
    v77 = v10;
    while (1)
    {
      if (v79)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v72 + 16))
        {
          goto LABEL_42;
        }

        v11 = *(v71 + 8 * v4);
      }

      v12 = v11;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v14 = [v11 template];
      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = v14;
      v16 = [v14 remObjectID];
      if (!v16)
      {

        goto LABEL_25;
      }

      v17 = v16;
      v80 = v12;
      v18 = v86;
      if ((v86 & 0xC000000000000001) == 0)
      {
        if (*(v86 + 16))
        {
          v78 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v19 = NSObject._rawHashValue(seed:)(*(v18 + 40));
          v20 = -1 << *(v18 + 32);
          v5 = v19 & ~v20;
          if ((*(v18 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
          {
            ObjCClassFromMetadata = ~v20;
            while (1)
            {
              v21 = *(*(v18 + 48) + 8 * v5);
              isa = static NSObject.== infix(_:_:)();

              if (isa)
              {
                break;
              }

              v5 = (v5 + 1) & ObjCClassFromMetadata;
              if (((*(v18 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            goto LABEL_24;
          }
        }

LABEL_21:
        ObjCClassFromMetadata = v17;
        sub_100378D70(&v81, ObjCClassFromMetadata);

        v22 = v15;
        isa = &v85;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v70 = v85;
        goto LABEL_24;
      }

      ObjCClassFromMetadata = v16;
      isa = __CocoaSet.contains(_:)();

      if ((isa & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_24:
      v10 = v77;
      v12 = v80;
LABEL_25:
      v23 = [v12 parentSavedReminderIdentifier];
      if (!v23)
      {
        goto LABEL_4;
      }

      v5 = v74;
      v24 = v23;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for REMCDSavedReminder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v25 = [ObjCClassFromMetadata objectIDWithUUID:isa];

      (*v73)(v5, v75);
      if (v25)
      {
        v80 = v12;
        v26 = v84;
        if ((v84 & 0xC000000000000001) == 0)
        {
          if (v84[2])
          {
            ObjCClassFromMetadata = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v28 = NSObject._rawHashValue(seed:)(v26[5]);
            v29 = -1 << *(v26 + 32);
            v5 = v28 & ~v29;
            if ((*(v26 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v5))
            {
              v30 = ~v29;
              while (1)
              {
                v31 = *(v26[6] + 8 * v5);
                isa = static NSObject.== infix(_:_:)();

                if (isa)
                {
                  break;
                }

                v5 = (v5 + 1) & v30;
                if (((*(v26 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v5) & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              v27 = v80;
              goto LABEL_36;
            }
          }

LABEL_35:
          ObjCClassFromMetadata = v25;
          isa = &v84;
          sub_100378D70(&v81, ObjCClassFromMetadata);

          v27 = v81;
          goto LABEL_36;
        }

        ObjCClassFromMetadata = v25;
        isa = __CocoaSet.contains(_:)();

        if ((isa & 1) == 0)
        {
          goto LABEL_35;
        }

        v27 = v80;
LABEL_36:

        v10 = v77;
        if (v4 == v77)
        {
LABEL_40:
          v32 = v70;
          v5 = v68;
          goto LABEL_45;
        }
      }

      else
      {
LABEL_4:

        if (v4 == v10)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_45:

  v33 = sub_10034B1FC(v32);
  if (v5)
  {

    return v4;
  }

  v4 = v33;
  if (qword_100936548 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100006654(v34, qword_10094C840);
  v81 = v32;
  __chkstk_darwin(v35);
  v79 = v36;
  *(&v66 - 2) = v36;
  sub_1000F5104(&qword_10093F3B8, &unk_10079DDE0);
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  sub_10000CB90(&qword_10093F3C0, &qword_10093F3B8, &unk_10079DDE0);
  v80 = Sequence.map<A>(skippingError:_:)();
  v37 = v69;

  v38 = v84;
  if ((v84 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_51:
      v39 = sub_100277EBC(v38);

      v40 = sub_10055BD54(v39, [v37 includeConcealed] ^ 1);
      type metadata accessor for REMCDSavedReminder();
      v41 = [objc_allocWithZone(NSFetchRequest) init];
      v42 = [swift_getObjCClassFromMetadata() entity];
      [v41 setEntity:v42];

      [v41 setAffectedStores:0];
      [v41 setPredicate:v40];

      [v41 setPropertiesToFetch:0];
      [v41 setRelationshipKeyPathsForPrefetching:0];
      v43 = NSManagedObjectContext.fetch<A>(_:)();

      goto LABEL_54;
    }
  }

  else if (v84[2])
  {
    goto LABEL_51;
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_54:
  type metadata accessor for REMSavedReminderStorageCDIngestor();
  inited = swift_initStackObject();
  v78 = &v66;
  *(inited + 16) = v37;
  v81 = v43;
  __chkstk_darwin(inited);
  *(&v66 - 2) = v79;
  v45 = v37;
  sub_1000F5104(&qword_10093F3A8, qword_1007AC5F0);
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093F3B0, &qword_10093F3A8, qword_1007AC5F0);
  v46 = Sequence.map<A>(skippingError:_:)();

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_56;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_56:

    return v4;
  }

  v48 = i;
  if (v66)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v49 = result;
  }

  else
  {
    v49 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = _swiftEmptyArrayStorage;
  if (!v49)
  {
LABEL_72:
    v78 = &v66;
    v81 = v50;
    __chkstk_darwin(result);
    *(&v66 - 2) = v79;
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
    v4 = Sequence.map<A>(skippingError:_:)();

    return v4;
  }

  v75 = v46;
  v77 = inited;
  v83 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v51 = 0;
    v52 = v48;
    v78 = (v48 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if ((v48 & 0xC000000000000001) != 0)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v51 >= v78[2])
        {
          goto LABEL_76;
        }

        v54 = *(v52 + 8 * v51 + 32);
      }

      v4 = v54;
      if (![v54 account])
      {

        v56 = objc_opt_self();
        v81 = 0;
        v82 = 0xE000000000000000;
        _StringGuts.grow(_:)(42);

        v81 = 0xD000000000000027;
        v82 = 0x80000001007FC510;
        v57 = [v4 description];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        v61._countAndFlagsBits = v58;
        v61._object = v60;
        String.append(_:)(v61);

        v62._countAndFlagsBits = 125;
        v62._object = 0xE100000000000000;
        String.append(_:)(v62);
        v63 = String._bridgeToObjectiveC()();

        [v56 internalErrorWithDebugDescription:v63];

        swift_willThrow();
        v64 = v77;
        swift_setDeallocating();
        v65 = *(v64 + 16);

        return v4;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v55 = v83[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      ++v51;
      v52 = i;
      if (v53 == v49)
      {
        v50 = v83;
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10055D968(void *a1, uint64_t a2, char a3, Class isa, Class a5)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = a1;
  v26 = a1;
  v11 = sub_10055BD54(v10, a3 & 1);
  type metadata accessor for REMCDSavedReminder();
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];

  if (isa)
  {
    sub_10003450C(isa);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v12 setPropertiesToFetch:isa];

  if (a5)
  {
    a5 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v12 setRelationshipKeyPathsForPrefetching:a5];

  v14 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v5)
  {
    v16 = v14 >> 62;
    if (v14 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v17 = *(v14 + 32);
        }

        v10 = v17;
        if (v16)
        {
          if (_CocoaArrayWrapper.endIndex.getter() < 2)
          {
            goto LABEL_14;
          }
        }

        else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
        {
LABEL_14:

          return v10;
        }

        if (qword_100936548 == -1)
        {
LABEL_17:
          v18 = type metadata accessor for Logger();
          sub_100006654(v18, qword_10094C840);
          v19 = v26;

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = 138412546;
            *(v22 + 4) = v19;
            *v23 = v19;
            *(v22 + 12) = 2048;
            if (v16)
            {
              v24 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v25 = v19;

            *(v22 + 14) = v24;

            _os_log_impl(&_mh_execute_header, v20, v21, "Found multiple instances of REMCDSavedReminder with identical objectID {objectID: %@, matches: %ld}", v22, 0x16u);
            sub_100039860(v23);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          return v10;
        }

LABEL_27:
        swift_once();
        goto LABEL_17;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    [objc_opt_self() noSuchObjectErrorWithObjectID:v26];
    swift_willThrow();
  }

  return v10;
}

Swift::Int sub_10055DD88(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10043643C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1005602A0(v5);
  *a1 = v2;
  return result;
}

void sub_10055DDF4(void (**a1)(void, void)@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v221 = a4;
  v199 = a3;
  v207 = a2;
  v197 = a5;
  v198 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel();
  v215 = *(v198 - 8);
  v6 = *(v215 + 64);
  __chkstk_darwin(v198);
  v220 = &v180[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v213 = &v180[-v9];
  v10 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v205 = &v180[-v12];
  v224 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day();
  v208 = *(v224 - 8);
  v13 = *(v208 + 64);
  __chkstk_darwin(v224);
  v219 = &v180[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v223 = &v180[-v16];
  __chkstk_darwin(v17);
  v210 = &v180[-v18];
  v218 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket();
  v216 = *(v218 - 8);
  v19 = v216[8];
  __chkstk_darwin(v218);
  v204 = &v180[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v209 = &v180[-v22];
  __chkstk_darwin(v23);
  v211 = &v180[-v24];
  __chkstk_darwin(v25);
  v217 = &v180[-v26];
  v203 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v202 = *(v203 - 8);
  v27 = *(v202 + 64);
  __chkstk_darwin(v203);
  v201 = &v180[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v206 = &v180[-v30];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v200 = *(Configuration - 8);
  v32 = v200[8];
  __chkstk_darwin(Configuration);
  v34 = &v180[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = type metadata accessor for REMRemindersListDataView.Diff();
  v214 = *(v35 - 8);
  v36 = *(v214 + 64);
  __chkstk_darwin(v35);
  v38 = &v180[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v41 = &v180[-v40];
  v42 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v180[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v48 = &v180[-v47];
  v49 = a1;
  v50 = v222;
  sub_100561DD8(a1, v221);
  if (v50)
  {
    return;
  }

  v193 = v34;
  v222 = Configuration;
  v191 = v45;
  v196 = v38;
  v194 = v41;
  v192 = v35;
  v52 = v51;
  v53 = v212;
  sub_10055F50C(v51, v48);
  v195 = v52;
  v54 = [v53 fetchResultTokenToDiffAgainst];
  v55 = v194;
  sub_100534D44(v54, v194);
  v190 = 0;

  v56 = v193;
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  v57 = v206;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (v200[1])(v56, v222);
  v58 = v202;
  v59 = v201;
  v60 = v203;
  (*(v202 + 16))(v201, v57, v203);
  v61 = (*(v58 + 88))(v59, v60);
  v187 = v48;
  if (v61 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v63 = v220;
    v116 = v199;
    v64 = v214;
    v65 = v196;
    if (v61 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      v117 = v201;
      (*(v58 + 96))(v201, v60);
      sub_10053E698(*v117, v55, v49, v116, 0);
      (*(v58 + 8))(v206, v60);
    }

    else
    {
      if (v61 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
      {
        v184 = v49;
        v118 = v201;
        (*(v58 + 96))(v201, v60);
        v182 = *v118;
        v119 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
        v120 = v205;
        sub_100226AD8(v118 + *(v119 + 48), v205);
        v121 = v195;
        v212 = *(v195 + 16);
        if (v212)
        {
          v122 = 0;
          v123 = v216;
          v211 = v216 + 2;
          v207 = v216 + 11;
          LODWORD(v201) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.day(_:);
          LODWORD(v188) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastSevenDays(_:);
          v185 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastThirtyDays(_:);
          LODWORD(v183) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.month(_:);
          v200 = v216 + 12;
          v222 = (v208 + 16);
          v223 = (v208 + 8);
          v193 = (v216 + 1);
          v181 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.year(_:);
          v186 = (v208 + 32);
          v221 = _swiftEmptyArrayStorage;
          v69 = v215;
          v124 = v210;
          do
          {
            if (v122 >= *(v121 + 16))
            {
              goto LABEL_119;
            }

            v125 = v121 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
            v126 = v123[9];
            v217 = v122;
            v127 = v123[2];
            v128 = v209;
            v129 = v218;
            v127(v209, v125 + v126 * v122, v218);
            v130 = v204;
            v127(v204, v128, v129);
            v131 = (v123[11])(v130, v129);
            if (v131 == v201)
            {
              (*v200)(v130, v129);
              v132 = v224;
              (*v186)(v124, v130, v224);
              v133 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
              (*v223)(v124, v132);
            }

            else
            {
              if (v131 == v188 || v131 == v185 || v131 == v183)
              {
                (*v200)(v130, v218);
                v134 = &v130[*(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48)];
                v135 = type metadata accessor for Date();
              }

              else
              {
                if (v131 != v181)
                {
                  goto LABEL_126;
                }

                (*v200)(v130, v218);
                v134 = &v130[*(sub_1000F5104(&qword_10094C880, &qword_1007B1A40) + 48)];
                v135 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate();
              }

              v136 = *v134;
              (*(*(v135 - 8) + 8))(v130, v135);
              v137 = *(v136 + 16);
              if (v137)
              {
                v138 = (*(v208 + 80) + 32) & ~*(v208 + 80);
                v189 = v136;
                v139 = v136 + v138;
                v140 = *(v208 + 72);
                v141 = *(v208 + 16);
                v133 = _swiftEmptyArrayStorage;
                v142 = v219;
                do
                {
                  v143 = v142;
                  v144 = v224;
                  v141(v142, v139, v224);
                  v145 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
                  (*v223)(v143, v144);
                  v146 = *(v145 + 16);
                  v147 = v133[2];
                  v148 = v147 + v146;
                  if (__OFADD__(v147, v146))
                  {
                    goto LABEL_110;
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if (!isUniquelyReferenced_nonNull_native || v148 > v133[3] >> 1)
                  {
                    if (v147 <= v148)
                    {
                      v150 = v147 + v146;
                    }

                    else
                    {
                      v150 = v147;
                    }

                    v133 = sub_100365A24(isUniquelyReferenced_nonNull_native, v150, 1, v133);
                  }

                  v63 = v220;
                  if (*(v145 + 16))
                  {
                    v151 = (v133[3] >> 1) - v133[2];
                    v152 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
                    if (v151 < v146)
                    {
                      goto LABEL_112;
                    }

                    v153 = (*(v152 + 80) + 32) & ~*(v152 + 80);
                    v154 = *(v152 + 72);
                    swift_arrayInitWithCopy();

                    v142 = v219;
                    v63 = v220;
                    if (v146)
                    {
                      v155 = v133[2];
                      v101 = __OFADD__(v155, v146);
                      v156 = v155 + v146;
                      if (v101)
                      {
                        goto LABEL_116;
                      }

                      v133[2] = v156;
                    }
                  }

                  else
                  {

                    v142 = v219;
                    if (v146)
                    {
                      goto LABEL_111;
                    }
                  }

                  v139 += v140;
                  --v137;
                }

                while (v137);

                v69 = v215;
              }

              else
              {

                v133 = _swiftEmptyArrayStorage;
              }

              v129 = v218;
            }

            v157 = v221;
            (*v193)(v209, v129);
            v158 = v133[2];
            v159 = v157[2];
            v160 = v159 + v158;
            if (__OFADD__(v159, v158))
            {
              goto LABEL_120;
            }

            v161 = swift_isUniquelyReferenced_nonNull_native();
            v120 = v205;
            if (!v161 || v160 > v157[3] >> 1)
            {
              if (v159 <= v160)
              {
                v162 = v159 + v158;
              }

              else
              {
                v162 = v159;
              }

              v157 = sub_100365A24(v161, v162, 1, v157);
            }

            v124 = v210;
            if (v133[2])
            {
              v163 = (v157[3] >> 1) - v157[2];
              v164 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
              if (v163 < v158)
              {
                goto LABEL_122;
              }

              v165 = (*(v164 + 80) + 32) & ~*(v164 + 80);
              v166 = *(v164 + 72);
              swift_arrayInitWithCopy();

              v121 = v195;
              v124 = v210;
              if (v158)
              {
                v167 = v157[2];
                v101 = __OFADD__(v167, v158);
                v168 = v167 + v158;
                if (v101)
                {
                  goto LABEL_123;
                }

                v157[2] = v168;
              }
            }

            else
            {

              v121 = v195;
              if (v158)
              {
                goto LABEL_121;
              }
            }

            v221 = v157;
            v123 = v216;
            v122 = (v217 + 1);
          }

          while (v217 + 1 != v212);
        }

        else
        {
          v221 = _swiftEmptyArrayStorage;
          v69 = v215;
        }

        v175 = v221;
        v176 = v184;
        v177 = v199;
        sub_10053DB98(v182, v221, v184, v199, 0);
        v178 = v176;
        v65 = v196;
        v179 = v177;
        v64 = v214;
        sub_10053EBE4(v120, v175, v178, v179, 0);

        sub_1000050A4(v120, &qword_10094B8E0, &unk_1007AABD0);
        (*(v202 + 8))(v206, v203);
        v169 = v191;
        v71 = v213;
        goto LABEL_102;
      }

      if (v61 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        goto LABEL_125;
      }

      (*(v58 + 8))(v206, v60);
    }

    v69 = v215;
    v71 = v213;
LABEL_101:
    v169 = v191;
LABEL_102:
    sub_100010364(v187, v169, &qword_100938A70, &qword_1007ACC60);
    REMRemindersListDataView.CompletedDateBucketsModel.init(buckets:remindersCount:prefetchedReminders:prefetchedDueReminders:)();
    v170 = v63;
    v171 = v198;
    (*(v69 + 16))(v170, v71, v198);
    v172 = v65;
    v173 = v194;
    v174 = v192;
    (*(v64 + 16))(v172, v194, v192);
    sub_100565CB0(&qword_10094C890, &type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel);
    sub_100565CB0(&qword_10094C898, &type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v69 + 8))(v71, v171);
    (*(v64 + 8))(v173, v174);
    sub_1000050A4(v187, &qword_100938A70, &qword_1007ACC60);
    return;
  }

  v184 = a1;
  (*(v58 + 96))(v59, v60);
  v183 = *v59;
  v62 = v195;
  v63 = v220;
  v64 = v214;
  v65 = v196;
  v209 = *(v195 + 16);
  if (!v209)
  {
    v219 = _swiftEmptyArrayStorage;
    v69 = v215;
    v71 = v213;
LABEL_97:
    sub_10053DB98(v183, v219, v184, v199, 0);

    (*(v202 + 8))(v206, v203);
    goto LABEL_101;
  }

  v66 = 0;
  v207 = v216 + 2;
  v205 = v216 + 11;
  LODWORD(v204) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.day(_:);
  LODWORD(v189) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastSevenDays(_:);
  LODWORD(v186) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastThirtyDays(_:);
  v185 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.month(_:);
  v201 = v216 + 12;
  v221 = (v208 + 16);
  v222 = (v208 + 8);
  v200 = v216 + 1;
  LODWORD(v182) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.year(_:);
  v188 = (v208 + 32);
  v219 = _swiftEmptyArrayStorage;
  v67 = v224;
  v68 = v210;
  while (1)
  {
    if (v66 >= *(v62 + 16))
    {
      goto LABEL_113;
    }

    v72 = v216;
    v73 = v217;
    v74 = v62 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v75 = v216[9];
    v212 = v66;
    v76 = v216[2];
    v77 = v218;
    v76(v217, v74 + v75 * v66, v218);
    v78 = v211;
    v76(v211, v73, v77);
    v79 = (v72[11])(v78, v77);
    if (v79 != v204)
    {
      break;
    }

    (*v201)(v78, v77);
    (*v188)(v68, v78, v67);
    v80 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
    (*v222)(v68, v67);
LABEL_35:
    (*v200)(v73, v77);
    v103 = v80[2];
    v104 = v219;
    v105 = *(v219 + 2);
    v106 = v105 + v103;
    if (__OFADD__(v105, v103))
    {
      goto LABEL_114;
    }

    v107 = swift_isUniquelyReferenced_nonNull_native();
    if (!v107 || v106 > v104[3] >> 1)
    {
      if (v105 <= v106)
      {
        v108 = v105 + v103;
      }

      else
      {
        v108 = v105;
      }

      v104 = sub_100365A24(v107, v108, 1, v104);
    }

    v65 = v196;
    v109 = v80[2];
    v219 = v104;
    if (v109)
    {
      v110 = (v104[3] >> 1) - v104[2];
      v111 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
      if (v110 < v103)
      {
        goto LABEL_117;
      }

      v112 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v113 = *(v111 + 72);
      swift_arrayInitWithCopy();

      v69 = v215;
      v70 = v212;
      v71 = v213;
      v65 = v196;
      v62 = v195;
      if (v103)
      {
        v114 = *(v219 + 2);
        v101 = __OFADD__(v114, v103);
        v115 = v114 + v103;
        if (v101)
        {
          goto LABEL_118;
        }

        *(v219 + 2) = v115;
      }
    }

    else
    {

      v69 = v215;
      v70 = v212;
      v71 = v213;
      v62 = v195;
      if (v103)
      {
        goto LABEL_115;
      }
    }

    v66 = (v70 + 1);
    v64 = v214;
    if (v66 == v209)
    {
      goto LABEL_97;
    }
  }

  v81 = v223;
  if (v79 == v189 || v79 == v186 || v79 == v185)
  {
    (*v201)(v78, v77);
    v82 = &v78[*(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48)];
    v83 = type metadata accessor for Date();
  }

  else
  {
    if (v79 != v182)
    {
      goto LABEL_124;
    }

    (*v201)(v78, v77);
    v82 = &v78[*(sub_1000F5104(&qword_10094C880, &qword_1007B1A40) + 48)];
    v83 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate();
  }

  v84 = *v82;
  (*(*(v83 - 8) + 8))(v78, v83);
  v85 = *(v84 + 16);
  if (!v85)
  {

    v80 = _swiftEmptyArrayStorage;
LABEL_34:
    v68 = v210;
    v73 = v217;
    v77 = v218;
    goto LABEL_35;
  }

  v86 = (*(v208 + 80) + 32) & ~*(v208 + 80);
  v193 = v84;
  v87 = v84 + v86;
  v88 = *(v208 + 72);
  v89 = *(v208 + 16);
  v80 = _swiftEmptyArrayStorage;
  v89(v81, v87, v67);
  while (1)
  {
    v90 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
    (*v222)(v81, v67);
    v91 = *(v90 + 16);
    v92 = v80[2];
    v93 = v92 + v91;
    if (__OFADD__(v92, v91))
    {
      break;
    }

    v94 = swift_isUniquelyReferenced_nonNull_native();
    if (v94 && v93 <= v80[3] >> 1)
    {
      if (*(v90 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v92 <= v93)
      {
        v95 = v92 + v91;
      }

      else
      {
        v95 = v92;
      }

      v80 = sub_100365A24(v94, v95, 1, v80);
      if (*(v90 + 16))
      {
LABEL_28:
        v96 = (v80[3] >> 1) - v80[2];
        v97 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
        if (v96 < v91)
        {
          goto LABEL_108;
        }

        v98 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v99 = *(v97 + 72);
        swift_arrayInitWithCopy();

        v67 = v224;
        v81 = v223;
        if (v91)
        {
          v100 = v80[2];
          v101 = __OFADD__(v100, v91);
          v102 = v100 + v91;
          if (v101)
          {
            goto LABEL_109;
          }

          v80[2] = v102;
        }

        goto LABEL_17;
      }
    }

    v67 = v224;
    v81 = v223;
    if (v91)
    {
      goto LABEL_107;
    }

LABEL_17:
    v87 += v88;
    if (!--v85)
    {

      v63 = v220;
      goto LABEL_34;
    }

    v89(v81, v87, v67);
  }

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
LABEL_123:
  __break(1u);
LABEL_124:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_125:

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_126:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10055F50C@<X0>(uint64_t a1@<X2>, void (**a2)(_BYTE *, uint64_t)@<X8>)
{
  v5 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day();
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  __chkstk_darwin(v5);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v60 = &v51[-v10];
  v75 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket();
  v73 = *(v75 - 8);
  v11 = *(v73 + 64);
  __chkstk_darwin(v75);
  v72 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v63 = &v51[-v14];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v16 = *(Configuration - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(Configuration);
  v19 = &v51[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  v20 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v16 + 8))(v19, Configuration);
  if ((v20 & 1) == 0)
  {
LABEL_24:
    v48 = 1;
LABEL_26:
    v49 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    return (*(*(v49 - 8) + 56))(a2, v48, 1, v49);
  }

  v53 = a2;
  v54 = v2;
  v71 = *(a1 + 16);
  v21 = 0;
  if (!v71)
  {
LABEL_25:
    a2 = v53;
    REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();
    v48 = 0;
    goto LABEL_26;
  }

  v22 = 0;
  v23 = *(v73 + 16);
  v69 = a1 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v70 = v23;
  v24 = *(v73 + 72);
  v67 = (v73 + 88);
  v68 = v24;
  v66 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.day(_:);
  v59 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastSevenDays(_:);
  v55 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.month(_:);
  v56 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastThirtyDays(_:);
  v65 = (v73 + 96);
  v76 = v57 + 16;
  a2 = (v57 + 8);
  v73 += 16;
  v64 = (v73 - 8);
  v58 = (v57 + 32);
  v52 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.year(_:);
  v25 = v63;
  while (1)
  {
    v74 = v21;
    v33 = v75;
    v34 = v70;
    v70(v25, (v69 + v68 * v22), v75);
    v35 = v72;
    v34(v72, v25, v33);
    v36 = (*v67)(v35, v33);
    if (v36 != v66)
    {
      break;
    }

    v26 = v75;
    (*v65)(v35, v75);
    v27 = v60;
    (*v58)(v60, v35, v5);
    v28 = v26;
    v29 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
    (*a2)(v27, v5);
    (*v64)(v25, v28);
    v30 = *(v29 + 16);
    v31 = v74;

    v32 = __OFADD__(v31, v30);
    v21 = v31 + v30;
    if (v32)
    {
      goto LABEL_28;
    }

LABEL_5:
    if (++v22 == v71)
    {
      goto LABEL_25;
    }
  }

  if (v36 == v59)
  {
    (*v65)(v35, v75);
    v37 = &v35[*(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48)];
    v38 = type metadata accessor for Date();
    v39 = v74;
  }

  else
  {
    v39 = v74;
    if (v36 == v56 || v36 == v55)
    {
      (*v65)(v35, v75);
      v37 = &v35[*(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48)];
      v40 = type metadata accessor for Date();
    }

    else
    {
      if (v36 != v52)
      {
        goto LABEL_29;
      }

      (*v65)(v35, v75);
      v37 = &v35[*(sub_1000F5104(&qword_10094C880, &qword_1007B1A40) + 48)];
      v40 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate();
    }

    v38 = v40;
  }

  v41 = *v37;
  (*(*(v38 - 8) + 8))(v35);
  v42 = *(v41 + 16);
  if (!v42)
  {

    v43 = 0;
LABEL_21:
    v25 = v63;
    (*v64)(v63, v75);
    v32 = __OFADD__(v39, v43);
    v21 = v39 + v43;
    if (v32)
    {
      __break(1u);
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  v61 = v41;
  v62 = v22;
  v43 = 0;
  v44 = v41 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  v45 = *(v57 + 72);
  v46 = *(v57 + 16);
  while (1)
  {
    v46(v8, v44, v5);
    v47 = *(REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter() + 16);

    (*a2)(v8, v5);
    v32 = __OFADD__(v43, v47);
    v43 += v47;
    if (v32)
    {
      break;
    }

    v44 += v45;
    if (!--v42)
    {

      v39 = v74;
      v22 = v62;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_10055FBBC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26[1] = a4;
  v27 = a5;
  v29 = a2;
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Date();
  v13 = *(v28 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v28);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v26 - v19;
  result = [*a1 completionDate];
  if (result)
  {
    v22 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v13 + 32))(v20, v16, v28);
    v23 = v9[13];
    v23(v12, enum case for Calendar.Component.era(_:), v8);
    v29 = Calendar.component(_:from:)();
    v26[0] = v5;
    v24 = v9[1];
    v24(v12, v8);
    v23(v12, enum case for Calendar.Component.year(_:), v8);
    a3 = Calendar.component(_:from:)();
    v24(v12, v8);
    result = (*(v13 + 8))(v20, v28);
  }

  v25 = v27;
  *v27 = v29;
  v25[1] = a3;
  return result;
}

uint64_t sub_10055FE38@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 completionDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  return (*(*(v6 - 8) + 56))(a2, v5, 1, v6);
}

uint64_t sub_10055FEE0(id *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = v16 - v9;
  v11 = [*a1 completionDate];
  if (v11)
  {
    v12 = v11;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v10, v6, v2);
    sub_100565CB0(&qword_1009464D0, &type metadata accessor for Date);
    v13 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v3 + 8))(v10, v2);
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_100560098(uint64_t a1)
{
  result = sub_100565CB0(&qword_10094C878, &type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_1005600F0(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a1 == *a2 && a1[1] < a2[1];
}

BOOL sub_100560120(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *a2 != *a1 || a2[1] >= a1[1];
}

BOOL sub_100560150(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *a1 != *a2 || a1[1] >= a2[1];
}

BOOL sub_100560180(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *a2 == *a1 && a2[1] < a1[1];
}

Swift::Int sub_1005601B0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10056020C()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100560248()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1005602A0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F5104(&qword_10093ED98, &qword_10079D520);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100560448(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1005603A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1005603A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 24 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (*v9 >= v7)
      {
        result = *(v9 + 32);
        if (*v9 != v7 || *(v9 + 8) >= result)
        {
LABEL_4:
          ++a3;
          v5 += 24;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v11 = *(v9 + 32);
      v12 = *(v9 + 40);
      *(v9 + 24) = *v9;
      result = *(v9 + 16);
      *(v9 + 40) = result;
      *v9 = v7;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      v9 -= 24;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100560448(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_109:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_111;
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v5)
    {
      ++v7;
      goto LABEL_34;
    }

    v11 = (*a3 + 24 * v10);
    v12 = *v11;
    v13 = (*a3 + 24 * v7);
    v14 = *v13;
    if (*v13 >= *v11)
    {
      v16 = v13[1];
      v15 = v14 == v12 && v16 < v11[1];
    }

    else
    {
      v15 = 1;
    }

    v7 += 2;
    if (v9 + 2 < v5)
    {
      v10 = v5 - 1;
      v18 = v11[1];
      v19 = (*a3 + 24 * v9 + 56);
      do
      {
        v20 = v12;
        v12 = *(v19 - 1);
        v21 = *v19;
        if (v20 < v12)
        {
          if (!v15)
          {
            goto LABEL_34;
          }
        }

        else if (v20 == v12)
        {
          if (((v15 ^ (v18 >= v21)) & 1) == 0)
          {
            v10 = v7 - 1;
            if (!v15)
            {
              goto LABEL_34;
            }

LABEL_26:
            if (v7 >= v9)
            {
              if (v9 <= v10)
              {
                v22 = 0;
                v23 = 24 * v7;
                v24 = 24 * v9;
                v25 = v9;
                do
                {
                  if (v25 != v7 + v22 - 1)
                  {
                    v26 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_144;
                    }

                    v27 = (v26 + v24);
                    v28 = v26 + v23;
                    v29 = *(v27 + 2);
                    v30 = *v27;
                    v31 = *(v28 - 8);
                    *v27 = *(v28 - 24);
                    *(v27 + 2) = v31;
                    *(v28 - 24) = v30;
                    *(v28 - 8) = v29;
                  }

                  ++v25;
                  --v22;
                  v23 -= 24;
                  v24 += 24;
                }

                while (v25 < v7 + v22);
                v5 = a3[1];
              }

              goto LABEL_34;
            }

LABEL_140:
            __break(1u);
LABEL_141:
            result = sub_1004361F4(v8);
            v8 = result;
LABEL_111:
            v89 = v8 + 16;
            v90 = *(v8 + 2);
            if (v90 >= 2)
            {
              while (*a3)
              {
                v91 = &v8[16 * v90];
                v92 = *v91;
                v93 = &v89[2 * v90];
                v94 = v93[1];
                sub_100560A7C((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v97);
                if (v4)
                {
                }

                if (v94 < v92)
                {
                  goto LABEL_133;
                }

                if (v90 - 2 >= *v89)
                {
                  goto LABEL_134;
                }

                *v91 = v92;
                *(v91 + 1) = v94;
                v95 = *v89 - v90;
                if (*v89 < v90)
                {
                  goto LABEL_135;
                }

                v90 = *v89 - 1;
                result = memmove(v93, v93 + 2, 16 * v95);
                *v89 = v90;
                if (v90 <= 1)
                {
                }
              }

              goto LABEL_145;
            }
          }
        }

        else if (v15)
        {
          v10 = v7 - 1;
          goto LABEL_26;
        }

        v19 += 3;
        ++v7;
        v18 = v21;
      }

      while (v5 != v7);
      v7 = v5;
    }

    if (v15)
    {
      goto LABEL_26;
    }

LABEL_34:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_137;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_138;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_56:
    if (v7 < v9)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003658B8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v43 = *(v8 + 2);
    v42 = *(v8 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_1003658B8((v42 > 1), v43 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v44;
    v45 = &v8[16 * v43];
    *(v45 + 4) = v9;
    *(v45 + 5) = v7;
    v46 = *v97;
    if (!*v97)
    {
      goto LABEL_146;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 4);
          v49 = *(v8 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_76:
          if (v51)
          {
            goto LABEL_124;
          }

          v64 = &v8[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_127;
          }

          v70 = &v8[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_131;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v74 = &v8[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_90:
        if (v69)
        {
          goto LABEL_126;
        }

        v77 = &v8[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_129;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_97:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v86 = *&v8[16 * v85 + 32];
        v87 = *&v8[16 * v47 + 40];
        sub_100560A7C((*a3 + 24 * v86), (*a3 + 24 * *&v8[16 * v47 + 32]), *a3 + 24 * v87, v46);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1004361F4(v8);
        }

        if (v85 >= *(v8 + 2))
        {
          goto LABEL_121;
        }

        v88 = &v8[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_100436168(v47);
        v44 = *(v8 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v8[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_122;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_123;
      }

      v59 = &v8[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_125;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_128;
      }

      if (v63 >= v55)
      {
        v81 = &v8[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_132;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_109;
    }
  }

  v32 = *a3;
  v33 = *a3 + 24 * v7 - 24;
  v34 = v9 - v7;
LABEL_44:
  v35 = *(v32 + 24 * v7);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (*v37 >= v35 && (*v37 != v35 || *(v37 + 8) >= *(v37 + 32)))
    {
LABEL_43:
      ++v7;
      v33 += 24;
      --v34;
      if (v7 != v5)
      {
        goto LABEL_44;
      }

      v7 = v5;
      goto LABEL_56;
    }

    if (!v32)
    {
      break;
    }

    v39 = *(v37 + 32);
    v40 = *(v37 + 40);
    *(v37 + 24) = *v37;
    *(v37 + 40) = *(v37 + 16);
    *v37 = v35;
    *(v37 + 8) = v39;
    *(v37 + 16) = v40;
    v37 -= 24;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_100560A7C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 >= *v6 && (*v4 != *v6 || *(v4 + 1) >= *(v6 + 1)))
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 24;
    v5 -= 24;
    v18 = v12;
    do
    {
      v19 = (v5 + 24);
      v21 = *(v18 - 24);
      v18 -= 24;
      v20 = v21;
      if (*v17 < v21 || (*v17 == v20 ? (v22 = *(v6 - 2) < *(v12 - 2)) : (v22 = 0), v22))
      {
        if (v19 != v6)
        {
          v24 = *v17;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 24, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v19 != v12)
      {
        v23 = *v18;
        *(v5 + 16) = *(v18 + 16);
        *v5 = v23;
      }

      v5 -= 24;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_39:
  v25 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v26 = (v25 >> 2) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v26])
  {
    memmove(v6, v4, 24 * v26);
  }

  return 1;
}

void sub_100560CE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9[2] = a5;
  sub_100260DE4(sub_100565D9C, v9, a2, a3, a4);
  if (v8)
  {
    goto LABEL_6;
  }

  if (v7 > a3)
  {
    if ((a4 >> 1) < a3)
    {
      __break(1u);
    }

    else if ((a4 >> 1) >= v7)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_6:
        swift_unknownObjectRetain();
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_100560DB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v157 = a7;
  v143 = a5;
  v135 = a2;
  v129 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day();
  v12 = *(v129 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v129);
  v124 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v126 = &v123 - v16;
  v17 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v147 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v123 - v21;
  v165 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v23 = *(v165 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v165);
  v149 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v140 = &v123 - v27;
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v133 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v127 = &v123 - v33;
  __chkstk_darwin(v34);
  v146 = &v123 - v35;
  __chkstk_darwin(v36);
  v156 = &v123 - v37;
  __chkstk_darwin(v38);
  v158 = &v123 - v39;
  v40 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v130 = &v123 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v155 = (&v123 - v44);
  __chkstk_darwin(v45);
  v154 = &v123 - v46;
  v48 = __chkstk_darwin(v47);
  v49 = *(v29 + 56);
  v159 = &v123 - v50;
  v141 = v28;
  v145 = v29 + 56;
  v144 = v49;
  v49(v48);
  v51 = a4 >> 1;
  v52 = a3;
  v136 = a1;
  swift_unknownObjectRetain();
  v166 = v51;
  v148 = v23;
  v128 = v12;
  if (v51 == a3)
  {
    v53 = _swiftEmptyArrayStorage;
    v54 = a3;
    v55 = v141;
LABEL_48:
    swift_unknownObjectRelease();
    v100 = v166 - v54;
    if (v166 <= v54)
    {
      v103 = v159;
      goto LABEL_52;
    }

    v101 = v54;
    v59 = v159;
    v102 = v55;
    v55 = v130;
    sub_100010364(v159, v130, &unk_100938850, qword_100795AE0);
    if ((*(v29 + 48))(v55, 1, v102) == 1)
    {
      sub_1000050A4(v59, &unk_100938850, qword_100795AE0);
      v103 = v55;
LABEL_52:
      sub_1000050A4(v103, &unk_100938850, qword_100795AE0);
      return v53;
    }

    (*(v29 + 32))(v133, v55, v102);
    if (v101 < v52)
    {
LABEL_76:
      __break(1u);
    }

    else
    {
      v104 = v101;
      v134 = v53;
      v131 = v29;
      v132 = v8;
      v105 = (v148 + 48);
      v106 = (v148 + 32);
      swift_unknownObjectRetain();
      v107 = _swiftEmptyArrayStorage;
      v108 = (v135 + 8 * v104);
      v109 = v147;
      do
      {
        v110 = *v108;
        v111 = [v110 objectID];
        v112 = v111;
        v113 = v157;
        if (*(v157 + 16))
        {
          v114 = sub_100363FF4(v111);
          if (v115)
          {
            v116 = *(*(v113 + 56) + 8 * v114);
          }

          else
          {
            v116 = 0;
          }

          v109 = v147;
        }

        else
        {
          v116 = 0;
        }

        sub_1005384A4(v110, v116, 0, v109);
        v117 = v165;
        if ((*v105)(v109, 1, v165) == 1)
        {
          sub_1000050A4(v109, &qword_100940628, &unk_1007A6A20);
        }

        else
        {
          v118 = *v106;
          (*v106)(v149, v109, v117);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_100365A24(0, *(v107 + 2) + 1, 1, v107);
          }

          v120 = *(v107 + 2);
          v119 = *(v107 + 3);
          if (v120 >= v119 >> 1)
          {
            v107 = sub_100365A24(v119 > 1, v120 + 1, 1, v107);
          }

          *(v107 + 2) = v120 + 1;
          v118(&v107[((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v120], v149, v165);
        }

        ++v108;
        --v100;
      }

      while (v100);
      v55 = v131;
      (*(v131 + 16))(v127, v133, v141);
      v59 = v124;
      REMRemindersListDataView.CompletedDateBucketsModel.Day.init(date:reminders:)();
      v53 = v134;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_70;
      }
    }

    v53 = sub_100365BD8(0, v53[2] + 1, 1, v53);
LABEL_70:
    v122 = v53[2];
    v121 = v53[3];
    if (v122 >= v121 >> 1)
    {
      v53 = sub_100365BD8(v121 > 1, v122 + 1, 1, v53);
    }

    swift_unknownObjectRelease();
    (*(v55 + 8))(v133, v141);
    sub_1000050A4(v159, &unk_100938850, qword_100795AE0);
    v53[2] = v122 + 1;
    (*(v128 + 32))(v53 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v122, v59, v129);
    return v53;
  }

  v139 = v22;
  v56 = 0;
  v161 = (v29 + 32);
  v168 = (v29 + 48);
  v142 = (v29 + 16);
  v151 = (v29 + 8);
  v138 = (v23 + 48);
  v137 = (v23 + 32);
  v123 = v12 + 32;
  v53 = _swiftEmptyArrayStorage;
  v57 = qword_100795AE0;
  v58 = a3;
  v54 = a3;
  v55 = v141;
  v59 = v158;
  v132 = v8;
  v131 = v29;
  v153 = a3;
  while (2)
  {
    v134 = v53;
    v60 = 0;
    v162 = (v166 - v58);
    v163 = v135 + 8 * v58;
    v125 = v54;
    v61 = v56 + v52 - v54;
    v62 = v58;
    v152 = v58;
    v164 = v56;
    while (1)
    {
      if (v62 < v52 || v60 + v62 >= v166)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v53 = v60 + v56 + 1;
      if (__OFADD__(v60 + v56, 1))
      {
        goto LABEL_75;
      }

      v63 = *(v163 + 8 * v60);
      v64 = [v63 completionDate];
      if (v64)
      {
        break;
      }

LABEL_6:
      v60 = v60 + 1;
      ++v61;
      v56 = v164;
      if (v162 == v60)
      {
        v54 = v125;
        v8 = v132;
        v29 = v131;
        v53 = v134;
        goto LABEL_48;
      }
    }

    v167 = v63;
    v150 = v53;
    v65 = v59;
    v66 = v156;
    v67 = v64;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v160 = *v161;
    v160(v65, v66, v55);
    v68 = v159;
    v69 = v57;
    v70 = v154;
    sub_100010364(v159, v154, &unk_100938850, v69);
    v71 = *v168;
    if ((*v168)(v70, 1, v55) == 1)
    {
      sub_1000050A4(v68, &unk_100938850, v69);
      sub_1000050A4(v70, &unk_100938850, v69);
      (*v142)(v68, v65, v55);
      (v144)(v68, 0, 1, v55);
    }

    else
    {
      sub_1000050A4(v70, &unk_100938850, v69);
    }

    v53 = v155;
    sub_100010364(v68, v155, &unk_100938850, v69);
    if (v71(v53, 1, v55) == 1)
    {
      v59 = v158;
      (*v151)(v158, v55);

      v57 = v69;
      sub_1000050A4(v53, &unk_100938850, v69);
      v62 = v152;
      v52 = v153;
      goto LABEL_6;
    }

    v57 = v69;
    v72 = v146;
    v160(v146, v53, v55);
    v53 = v158;
    result = Calendar.isDate(_:inSameDayAs:)();
    if (result)
    {

      v74 = *v151;
      (*v151)(v72, v55);
      v74(v53, v55);
      v62 = v152;
      v52 = v153;
      v59 = v53;
      goto LABEL_6;
    }

    if (__OFADD__(v153, v60 + v164))
    {
      __break(1u);
      goto LABEL_79;
    }

    v75 = v125;
    if (v60 + v164 + v153 < v125)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v166 < v125)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v164 += v60 + v153;
    if (v125 < v153)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v76 = v164;
    if (v166 < v164)
    {
LABEL_82:
      __break(1u);
      break;
    }

    v77 = v55;
    if ((v164 & 0x8000000000000000) == 0)
    {
      swift_unknownObjectRetain();
      v78 = _swiftEmptyArrayStorage;
      if (v75 != v76)
      {
        v87 = (v135 + 8 * v75);
        do
        {
          v88 = *v87;
          v89 = [v88 objectID];
          v90 = v89;
          v91 = v157;
          if (*(v157 + 16))
          {
            v92 = sub_100363FF4(v89);
            if (v93)
            {
              v94 = *(*(v91 + 56) + 8 * v92);
            }

            else
            {
              v94 = 0;
            }

            v77 = v141;
          }

          else
          {
            v94 = 0;
          }

          v95 = v139;
          sub_1005384A4(v88, v94, 0, v139);
          v96 = v165;
          if ((*v138)(v95, 1, v165) == 1)
          {
            sub_1000050A4(v95, &qword_100940628, &unk_1007A6A20);
          }

          else
          {
            v97 = *v137;
            (*v137)(v140, v95, v96);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_100365A24(0, *(v78 + 2) + 1, 1, v78);
            }

            v99 = *(v78 + 2);
            v98 = *(v78 + 3);
            if (v99 >= v98 >> 1)
            {
              v78 = sub_100365A24(v98 > 1, v99 + 1, 1, v78);
            }

            *(v78 + 2) = v99 + 1;
            v97(&v78[((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v99], v140, v165);
          }

          ++v87;
          --v61;
        }

        while (v61);
      }

      (*v142)(v127, v146, v77);
      REMRemindersListDataView.CompletedDateBucketsModel.Day.init(date:reminders:)();
      v79 = v134;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_100365BD8(0, v79[2] + 1, 1, v79);
      }

      v80 = v152;
      v81 = v167;
      v83 = v79[2];
      v82 = v79[3];
      if (v83 >= v82 >> 1)
      {
        v79 = sub_100365BD8(v82 > 1, v83 + 1, 1, v79);
      }

      v84 = v60 + v80 + 1;
      v167 = (~v80 + v166);
      swift_unknownObjectRelease();

      v55 = v77;
      (*v151)(v146, v77);
      v85 = v159;
      sub_1000050A4(v159, &unk_100938850, qword_100795AE0);
      v79[2] = v83 + 1;
      (*(v128 + 32))(v79 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v83, v126, v129);
      v59 = v158;
      v160(v85, v158, v77);
      (v144)(v85, 0, 1, v77);
      v58 = v84;
      v53 = v79;
      v57 = qword_100795AE0;
      v56 = v150;
      v86 = v167 == v60;
      v8 = v132;
      v29 = v131;
      v52 = v153;
      v54 = v164;
      if (v86)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_100561DD8(void (**a1)(void, void), uint64_t a2)
{
  v463 = a1;
  v425 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.DateFormattingStyle();
  v412 = *(v425 - 8);
  v3 = *(v412 + 64);
  __chkstk_darwin(v425);
  v424 = &v394 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate();
  v411 = *(v433 - 8);
  v5 = *(v411 + 64);
  __chkstk_darwin(v433);
  v426 = &v394 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v443 = type metadata accessor for Calendar.Component();
  v446 = *(v443 - 8);
  v7 = *(v446 + 64);
  __chkstk_darwin(v443);
  v442 = &v394 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v417 = &v394 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v439 = &v394 - v13;
  __chkstk_darwin(v14);
  v419 = &v394 - v15;
  __chkstk_darwin(v16);
  v430 = &v394 - v17;
  v457 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket();
  v451 = *(v457 - 8);
  v18 = *(v451 + 64);
  __chkstk_darwin(v457);
  v421 = &v394 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v438 = &v394 - v21;
  __chkstk_darwin(v22);
  v413 = &v394 - v23;
  __chkstk_darwin(v24);
  v414 = &v394 - v25;
  __chkstk_darwin(v26);
  v455 = &v394 - v27;
  v28 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v471 = (&v394 - v30);
  v476 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v469 = *(v476 - 8);
  v31 = *(v469 + 8);
  __chkstk_darwin(v476);
  v475 = &v394 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = type metadata accessor for Date();
  v448 = *(v461 - 8);
  v33 = v448[8];
  __chkstk_darwin(v461);
  v415 = &v394 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v447 = &v394 - v36;
  __chkstk_darwin(v37);
  v440 = &v394 - v38;
  __chkstk_darwin(v39);
  v432 = &v394 - v40;
  __chkstk_darwin(v41);
  v431 = &v394 - v42;
  __chkstk_darwin(v43);
  v468 = &v394 - v44;
  __chkstk_darwin(v45);
  v467 = &v394 - v46;
  __chkstk_darwin(v47);
  v436 = &v394 - v48;
  __chkstk_darwin(v49);
  v458 = &v394 - v50;
  __chkstk_darwin(v51);
  v470 = &v394 - v52;
  v428 = type metadata accessor for Calendar();
  v427 = *(v428 - 8);
  v53 = *(v427 + 64);
  __chkstk_darwin(v428);
  v460 = &v394 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v453 = _s10PredicatesOMa(0);
  v55 = *(*(v453 - 8) + 64);
  __chkstk_darwin(v453);
  v452 = (&v394 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v449 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v454 = *(v449 - 8);
  v57 = *(v454 + 64);
  __chkstk_darwin(v449);
  v423 = &v394 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v441 = &v394 - v60;
  __chkstk_darwin(v61);
  v418 = &v394 - v62;
  __chkstk_darwin(v63);
  v429 = &v394 - v64;
  __chkstk_darwin(v65);
  v445 = (&v394 - v66);
  __chkstk_darwin(v67);
  v465 = &v394 - v68;
  __chkstk_darwin(v69);
  v464 = &v394 - v70;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v474 = *(Subtasks - 1);
  v71 = *(v474 + 64);
  __chkstk_darwin(Subtasks);
  v444 = &v394 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v450 = &v394 - v74;
  __chkstk_darwin(v75);
  v472 = &v394 - v76;
  __chkstk_darwin(v77);
  v466 = (&v394 - v78);
  v79 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v80 = *(v79 - 8);
  v81 = *(v80 + 64);
  __chkstk_darwin(v79);
  v83 = &v394 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v84);
  v86 = &v394 - v85;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v88 = *(Configuration - 8);
  v89 = *(v88 + 64);
  __chkstk_darwin(Configuration);
  v422 = &v394 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v437 = &v394 - v92;
  __chkstk_darwin(v93);
  v416 = &v394 - v94;
  __chkstk_darwin(v95);
  v420 = &v394 - v96;
  __chkstk_darwin(v97);
  v435 = &v394 - v98;
  __chkstk_darwin(v99);
  v434 = (&v394 - v100);
  __chkstk_darwin(v101);
  v103 = &v394 - v102;
  v456 = a2;
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v106 = *(v88 + 8);
  v104 = v88 + 8;
  v105 = v106;
  v459 = Configuration;
  v106(v103, Configuration);
  (*(v80 + 104))(v83, enum case for REMRemindersListDataView.SortingStyle.default(_:), v79);
  LOBYTE(a2) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v107 = *(v80 + 8);
  v107(v83, v79);
  v107(v86, v79);
  if ((a2 & 1) == 0)
  {
    goto LABEL_3;
  }

  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  v108 = v466;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v105(v103, v459);
  v109 = v474;
  v110 = *(v474 + 104);
  v111 = v472;
  LODWORD(v408) = enum case for REMRemindersListDataView.FetchSubtasks.on(_:);
  v112 = Subtasks;
  v110(v472);
  sub_100565CB0(&qword_100940630, &type metadata accessor for REMRemindersListDataView.FetchSubtasks);
  v113 = dispatch thunk of static Equatable.== infix(_:_:)();
  v116 = *(v109 + 8);
  v115 = v109 + 8;
  v114 = v116;
  (v116)(v111, v112);
  (v116)(v108, v112);
  v117 = v459;
  if (v113)
  {
    goto LABEL_3;
  }

  v472 = v114;
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  v120 = v464;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v400 = v104;
  v399 = v105;
  v105(v103, v117);
  v121 = v454;
  v122 = v465;
  v123 = v449;
  (*(v454 + 104))(v465, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v449);
  v124 = static REMRemindersListDataView.ShowCompleted.== infix(_:_:)();
  v125 = *(v121 + 8);
  v125(v122, v123);
  v454 = v121 + 8;
  v401 = v125;
  v125(v120, v123);
  if ((v124 & 1) == 0)
  {
LABEL_3:
    v118 = objc_opt_self();
    v119 = String._bridgeToObjectiveC()();
    [v118 internalErrorWithDebugDescription:v119];

    swift_willThrow();
    return;
  }

  v126 = v452;
  swift_storeEnumTagMultiPayload();
  v127 = sub_100043AA8();
  sub_1000513B4(v126);
  if (qword_1009363F8 == -1)
  {
    goto LABEL_6;
  }

LABEL_254:
  swift_once();
LABEL_6:
  v128 = qword_100974F68;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v477 = v128;

  sub_100271A80(inited);
  v130 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v131 = [objc_allocWithZone(NSFetchRequest) init];
  v410 = v130;
  v132 = [swift_getObjCClassFromMetadata() entity];
  [v131 setEntity:v132];

  [v131 setAffectedStores:0];
  v394 = v127;
  [v131 setPredicate:v127];
  v477 = _swiftEmptySetSingleton;

  sub_100050AD0(v133);

  v134 = v462;
  sub_1003FE014(v477);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v395 = v131;
  [v131 setPropertiesToFetch:isa];

  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_100796900;
  if (qword_100936078 != -1)
  {
    swift_once();
  }

  v137 = qword_100974E28;
  *(v136 + 32) = qword_100974E28;
  v138 = qword_100936050;
  v139 = v137;
  if (v138 != -1)
  {
    swift_once();
  }

  v140 = qword_100974E00;
  *(v136 + 40) = qword_100974E00;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v141 = v140;
  v142 = Array._bridgeToObjectiveC()().super.isa;

  v143 = v395;
  [v395 setSortDescriptors:v142];

  v144 = v410;
  v145 = NSManagedObjectContext.fetch<A>(_:)();
  v405 = v134;
  if (v134)
  {

    return;
  }

  v409 = v145;
  v146 = v434;
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  v147 = v450;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v148 = v146;
  v149 = v459;
  v150 = v399;
  v399(v148, v459);
  v151 = v435;
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  v152 = v445;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v150(v151, v149);
  v153 = v474;
  v154 = v444;
  v155 = Subtasks;
  (*(v474 + 16))(v444, v147, Subtasks);
  v156 = (*(v153 + 88))(v154, v155);
  if (v156 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:) || v156 == v408)
  {
    v474 = sub_10038E654(_swiftEmptyArrayStorage);
    v157 = v461;
    v158 = v471;
    goto LABEL_20;
  }

  v157 = v461;
  v158 = v471;
  if (v156 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
  {
    v159 = v405;
    sub_100539C70(v409, v152, v463, 0);
    v405 = v159;
    v161 = v152;
    v162 = v395;
    if (v159)
    {

      v401(v161, v449);
      (v472)(v450, Subtasks);
      return;
    }

    v474 = v160;
    v152 = v161;
LABEL_20:
    v163 = Subtasks;
    v401(v152, v449);
    (v472)(v450, v163);
    REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.calendar.getter();
    v164 = v458;
    REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.today.getter();
    v147 = v470;
    Calendar.startOfDay(for:)();
    v165 = v448[1];
    v465 = (v448 + 1);
    v464 = v165;
    (v165)(v164, v157);
    Calendar.beginningOfNextDay(_:)();
    v166 = v409;
    v453 = v409 >> 62;
    if (!(v409 >> 62))
    {
      v147 = *((v409 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

LABEL_262:
    if (v166 < 0)
    {
      v169 = v166;
    }

    else
    {
      v169 = v166 & 0xFFFFFFFFFFFFFF8;
    }

    v392 = _CocoaArrayWrapper.endIndex.getter();
    if ((v392 & 0x8000000000000000) == 0)
    {
      v147 = v392;
      if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= v147)
        {
          goto LABEL_288;
        }

        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
        goto LABEL_273;
      }

      goto LABEL_283;
    }

    goto LABEL_282;
  }

LABEL_286:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  do
  {
    v393 = *(v362 - 32);

    __break(1u);
LABEL_288:
    v157 = v461;
    v166 = v409;
    v158 = v471;
LABEL_22:
    v408 = v166 & 0xC000000000000001;
    if ((v166 & 0xC000000000000001) != 0)
    {

      if (v147)
      {
        v167 = 0;
        do
        {
          v168 = v167 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v167);
          v167 = v168;
        }

        while (v147 != v168);
      }
    }

    else
    {
    }

    if (v453)
    {

      v170 = _CocoaArrayWrapper.subscript.getter();
      v144 = v171;
      v169 = v172;
      v115 = v173;
    }

    else
    {
      v169 = 0;
      v170 = (v166 & 0xFFFFFFFFFFFFFF8);
      v144 = (v166 & 0xFFFFFFFFFFFFFF8) + 32;
      v115 = (2 * v147) | 1;
    }

    v477 = v170;
    v478 = v144;
    v479 = v169;
    v480 = v115;
    v445 = v170;
    sub_100560CE0(v170, v144, v169, v115, v436);
    if (!v175)
    {
      v177 = v445;
      goto LABEL_49;
    }

    if (v147 < (v174 >> 1))
    {
      goto LABEL_270;
    }

    v144 = v174 >> 1;
    if (v453)
    {
      v176 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v176 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v176 < v144)
    {
      goto LABEL_271;
    }

    if (!v408 || v144 == v147)
    {

LABEL_45:
      if (v453)
      {

        v180 = _CocoaArrayWrapper.subscript.getter();
        v181 = v182;
        v144 = v183;
        v151 = v184;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v180 = (v166 & 0xFFFFFFFFFFFFFF8);
        v181 = (v166 & 0xFFFFFFFFFFFFFF8) + 32;
        v151 = (2 * v147) | 1;
      }

      swift_unknownObjectRelease();
      v477 = v180;
      v478 = v181;
      v177 = v180;
      v169 = v144;
      v479 = v144;
      v480 = v151;
      v144 = v181;
      v115 = v151;
LABEL_49:
      v185 = 0;
      v466 = (v448 + 4);
      Subtasks = v469 + 48;
      v472 = v469 + 32;
      if (v166 < 0)
      {
        v186 = v166;
      }

      else
      {
        v186 = v166 & 0xFFFFFFFFFFFFFF8;
      }

      v406 = v186;
      v407 = v166 & 0xFFFFFFFFFFFFFF8;
      v397 = (v166 & 0xFFFFFFFFFFFFFF8) + 32;
      v396 = (2 * v147) | 1;
      v404 = (v448 + 2);
      v398 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.day(_:);
      v403 = (v451 + 104);
      v402 = v451 + 32;
      v434 = v448 + 5;
      v452 = _swiftEmptyArrayStorage;
      v445 = v177;
      v462 = v177;
      v463 = v147;
      v147 = v169;
      while (1)
      {
        LODWORD(v450) = v185;
        v166 = v115 >> 1;
        v188 = v147 <= (v115 >> 1);
        if (v147 == v115 >> 1)
        {
          v115 = v115 >> 1;
          goto LABEL_69;
        }

        v435 = v115;
        v115 = v147;
        if (v188)
        {
          v147 = v166;
        }

        v444 = v115;
        do
        {
          if (v147 == v115)
          {
            goto LABEL_124;
          }

          v189 = [*(v144 + 8 * v115) completionDate];
          if (v189)
          {
            v190 = v468;
            v191 = v189;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v151 = v144;
            v192 = v467;
            (*v466)(v467, v190, v157);
            sub_100565CB0(&qword_1009464D0, &type metadata accessor for Date);
            v169 = dispatch thunk of static Comparable.< infix(_:_:)();
            v193 = v192;
            v144 = v151;
            (v464)(v193, v157);
            if ((v169 & 1) == 0)
            {
              v147 = v444;
              if (v444 < v115)
              {
                if ((v115 & 0x8000000000000000) == 0)
                {
                  goto LABEL_69;
                }

                goto LABEL_257;
              }

              v115 = v435;
              goto LABEL_54;
            }
          }

          ++v115;
        }

        while (v166 != v115);
        v115 = v166;
        v147 = v444;
LABEL_69:
        swift_unknownObjectRetain();
        v166 = v115 - v147;
        if (v115 != v147)
        {
          if (v147 <= v115)
          {
            v196 = v115;
          }

          else
          {
            v196 = v147;
          }

          v151 = v196 - v147;
          v197 = (v144 + 8 * v147);
          v194 = _swiftEmptyArrayStorage;
          while (v151)
          {
            v198 = *v197;
            v199 = [v198 objectID];
            v200 = v199;
            v201 = v474;
            if (*(v474 + 16))
            {
              v202 = sub_100363FF4(v199);
              if (v203)
              {
                v204 = *(*(v201 + 56) + 8 * v202);
              }

              else
              {
                v204 = 0;
              }

              v158 = v471;
            }

            else
            {
              v204 = 0;
            }

            sub_1005384A4(v198, v204, 0, v158);
            v169 = v476;
            if ((*Subtasks)(v158, 1, v476) == 1)
            {
              sub_1000050A4(v158, &qword_100940628, &unk_1007A6A20);
            }

            else
            {
              v205 = *v472;
              (*v472)(v475, v158, v169);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v194 = sub_100365A24(0, *(v194 + 2) + 1, 1, v194);
              }

              v207 = *(v194 + 2);
              v206 = *(v194 + 3);
              v169 = v207 + 1;
              if (v207 >= v206 >> 1)
              {
                v194 = sub_100365A24(v206 > 1, v207 + 1, 1, v194);
              }

              *(v194 + 2) = v169;
              v205(&v194[((v469[80] + 32) & ~v469[80]) + *(v469 + 9) * v207], v475, v476);
            }

            --v151;
            ++v197;
            if (!--v166)
            {
              goto LABEL_71;
            }
          }

          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v194 = _swiftEmptyArrayStorage;
LABEL_71:
        v127 = v463;
        if (v463 < v115)
        {
          break;
        }

        if (v453)
        {
          v195 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v195 = *(v407 + 16);
        }

        if (v195 < v115)
        {
          goto LABEL_252;
        }

        if (!v408 || v115 == v127)
        {

          goto LABEL_102;
        }

        if (v115 >= v127)
        {
          goto LABEL_253;
        }

        v208 = v115;
        do
        {
          v209 = (v208 + 1);
          _ArrayBuffer._typeCheckSlowPath(_:)(v208);
          v208 = v209;
        }

        while (v127 != v209);
LABEL_102:
        if (v453)
        {

          v210 = _CocoaArrayWrapper.subscript.getter();
          v144 = v211;
          v147 = v212;
          v115 = v213;
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v210 = v407;
          v144 = v397;
          v147 = v115;
          v115 = v396;
        }

        v477 = v210;
        v478 = v144;
        v479 = v147;
        v480 = v115;
        v214 = *(v194 + 2);
        v445 = v210;
        if (v214)
        {
          (*v404)(v458, v470, v461);
          v215 = v455;
          REMRemindersListDataView.CompletedDateBucketsModel.Day.init(date:reminders:)();
          (*v403)(v215, v398, v457);
          v216 = v452;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v216 = sub_100365C00(0, v216[2] + 1, 1, v216);
          }

          v452 = v216;
          v218 = v216[2];
          v217 = v216[3];
          v157 = v461;
          if (v218 >= v217 >> 1)
          {
            v452 = sub_100365C00(v217 > 1, v218 + 1, 1, v452);
          }

          swift_unknownObjectRelease();
          v219 = v452;
          v452[2] = v218 + 1;
          (*(v451 + 32))(v219 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v218, v455, v457);
          v462 = v445;
        }

        else
        {

          swift_unknownObjectRelease();
          v462 = v210;
          v157 = v461;
        }

LABEL_54:
        v187 = v458;
        v151 = v470;
        Calendar.beginningOfPreviousDay(_:)();
        v169 = *v434;
        (*v434)(v151, v187, v157);
        v185 = 1;
        if (v450)
        {
          v435 = v115;
          v476 = v144;
          v444 = v147;
          v151 = enum case for Calendar.Component.day(_:);
          v220 = v470;
          v221 = v446;
          v222 = *(v446 + 104);
          v223 = v442;
          v224 = v443;
          v472 = (v446 + 104);
          v471 = v222;
          (v222)(v442, enum case for Calendar.Component.day(_:), v443);
          v225 = v430;
          Calendar.date(byAdding:value:to:wrappingComponents:)();
          v226 = *(v221 + 8);
          v446 = v221 + 8;
          v469 = v226;
          (v226)(v223, v224);
          v227 = v448 + 6;
          v228 = v448[6];
          v229 = v228(v225, 1, v157);
          Subtasks = v228;
          if (v229 == 1)
          {
            v158 = v431;
            (*v404)(v431, v220, v157);
            v230 = v228(v225, 1, v157);
            v231 = v429;
            v232 = v435;
            if (v230 != 1)
            {
              v233 = v435;
              sub_1000050A4(v225, &unk_100938850, qword_100795AE0);
              v232 = v233;
            }
          }

          else
          {
            v158 = v431;
            (*v466)(v431, v225, v157);
            v231 = v429;
            v232 = v435;
          }

          v448 = v227;
          v234 = v445;
          sub_100560CE0(v445, v476, v444, v232, v158);
          if (!v235)
          {
            LODWORD(v467) = v151;
            v475 = v234;
            v115 = v405;
            goto LABEL_143;
          }

          v239 = v236;
          v240 = v237;
          v241 = v238;
          v468 = v235;
          v242 = v420;
          REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
          REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
          v243 = v242;
          v244 = v468;
          v399(v243, v459);
          v245 = v239;
          v246 = v460;
          v144 = v474;
          v247 = v405;
          v462 = sub_100560DB4(v244, v245, v240, v241, v460, v231, v474);
          v115 = v247;
          if (v247)
          {

            swift_unknownObjectRelease();

            v401(v231, v449);
            v248 = v461;
            v249 = v464;
            (v464)(v158, v461);
            v249(v436, v248);

            swift_unknownObjectRelease();
            v249(v470, v248);
            (*(v427 + 8))(v246, v428);
            return;
          }

          v401(v231, v449);
          v166 = v241 >> 1;
          if (v463 >= v166)
          {
            if (!v453)
            {
              v250 = *(v407 + 16);
              goto LABEL_126;
            }

LABEL_125:
            v250 = _CocoaArrayWrapper.endIndex.getter();
LABEL_126:
            v144 = v409;
            if (v250 >= v166)
            {
              v444 = v166;
              if (v408 && v166 != v463)
              {
                if (v166 < v463)
                {

                  v251 = v166;
                  v252 = v463;
                  do
                  {
                    v253 = (v251 + 1);
                    _ArrayBuffer._typeCheckSlowPath(_:)(v251);
                    v251 = v253;
                  }

                  while (v252 != v253);
                  goto LABEL_134;
                }

                goto LABEL_279;
              }

LABEL_134:
              LODWORD(v467) = v151;
              if (v453)
              {

                v254 = _CocoaArrayWrapper.subscript.getter();
                v255 = v258;
                v257 = v259;
                v256 = v260;
                v144 = v414;
              }

              else
              {
                v254 = v407;
                v255 = v397;
                v256 = v396;
                v144 = v414;
                v257 = v444;
              }

              swift_beginAccess();
              v475 = v254;
              v476 = v255;
              v477 = v254;
              v478 = v255;
              v479 = v257;
              v480 = v256;
              v435 = v256;
              swift_unknownObjectRelease();
              v261 = *(v462 + 16);
              v444 = v257;
              if (v261)
              {
                v262 = *(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48);
                (*v404)(v144, v470, v461);
                *(v144 + v262) = v462;
                (*v403)(v144, enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastSevenDays(_:), v457);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_276;
                }

                goto LABEL_139;
              }

              swift_unknownObjectRelease();
              goto LABEL_143;
            }

            goto LABEL_275;
          }

          goto LABEL_274;
        }
      }

      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
      goto LABEL_254;
    }

    if (v144 < v147)
    {

      v178 = v144;
      do
      {
        v179 = v178 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v178);
        v178 = v179;
      }

      while (v147 != v179);
      goto LABEL_45;
    }

LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    v452 = sub_100365C00(0, v452[2] + 1, 1, v452);
LABEL_139:
    v264 = v452[2];
    v263 = v452[3];
    if (v264 >= v263 >> 1)
    {
      v452 = sub_100365C00(v263 > 1, v264 + 1, 1, v452);
    }

    swift_unknownObjectRelease();
    v265 = v452;
    v452[2] = v264 + 1;
    (*(v451 + 32))(v265 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v264, v144, v457);
LABEL_143:
    v266 = v458;
    Calendar.beginningOfPreviousDay(_:)();
    v267 = v461;
    (v464)(v158, v461);
    v268 = v470;
    (v169)(v470, v266, v267);
    v269 = v442;
    v270 = v443;
    (v471)(v442, v467, v443);
    v271 = v419;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v272 = v269;
    v273 = v271;
    (v469)(v272, v270);
    v274 = v271;
    v275 = Subtasks;
    v276 = (Subtasks)(v274, 1, v267);
    v405 = v115;
    if (v276 == 1)
    {
      v277 = v432;
      (*v404)(v432, v268, v267);
      v278 = v275(v273, 1, v267);
      v279 = v418;
      v151 = v475;
      if (v278 != 1)
      {
        sub_1000050A4(v273, &unk_100938850, qword_100795AE0);
      }
    }

    else
    {
      v277 = v432;
      (*v466)(v432, v273, v267);
      v279 = v418;
      v151 = v475;
    }

    sub_100560CE0(v151, v476, v444, v435, v277);
    if (v280)
    {
      v284 = v280;
      v285 = v281;
      v286 = v282;
      v287 = v283;
      v288 = v416;
      REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v399(v288, v459);
      v289 = v284;
      v290 = v285;
      v291 = v284;
      v292 = v460;
      v144 = v474;
      v293 = v405;
      v294 = sub_100560DB4(v289, v290, v286, v287, v460, v279, v474);
      v115 = v293;
      if (v293)
      {

        swift_unknownObjectRelease();

        v401(v279, v449);
        v295 = v461;
        v296 = v464;
        (v464)(v432, v461);
        v296(v436, v295);

        swift_unknownObjectRelease();
        v296(v470, v295);
        (*(v427 + 8))(v292, v428);
        return;
      }

      v297 = v294;
      v468 = v291;
      v401(v279, v449);
      v147 = v463;
      if (v463 < (v287 >> 1))
      {
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        v452 = sub_100365C00(0, v452[2] + 1, 1, v452);
LABEL_168:
        v312 = v452[2];
        v311 = v452[3];
        if (v312 >= v311 >> 1)
        {
          v452 = sub_100365C00(v311 > 1, v312 + 1, 1, v452);
        }

        swift_unknownObjectRelease();
        v313 = v452;
        v452[2] = v312 + 1;
        (*(v451 + 32))(v313 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v312, v413, v457);
        goto LABEL_172;
      }

      v298 = v287 >> 1;
      v144 = v441;
      if (v453)
      {
        v299 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v299 = *(v407 + 16);
      }

      if (v299 < v298)
      {
        goto LABEL_278;
      }

      v475 = v151;
      if (!v408 || v298 == v147)
      {
      }

      else
      {
        if (v298 >= v147)
        {
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
          goto LABEL_286;
        }

        v300 = v287 >> 1;
        do
        {
          v301 = v300 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v300);
          v300 = v301;
        }

        while (v147 != v301);
      }

      if (v453)
      {

        v151 = _CocoaArrayWrapper.subscript.getter();
        v302 = v305;
        v304 = v306;
        v303 = v307;
      }

      else
      {
        v151 = v407;
        v302 = v397;
        v303 = v396;
        v304 = v298;
      }

      swift_beginAccess();
      v477 = v151;
      v478 = v302;
      v476 = v302;
      v479 = v304;
      v480 = v303;
      v435 = v303;
      swift_unknownObjectRelease();
      v308 = *(v297 + 16);
      v444 = v304;
      if (v308)
      {
        v309 = *(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48);
        v310 = v413;
        (*v404)(v413, v470, v461);
        *&v310[v309] = v297;
        (*v403)(v310, enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastThirtyDays(_:), v457);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_280;
        }

        goto LABEL_168;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v115 = v405;
      v144 = v441;
    }

LABEL_172:
    v314 = v458;
    v315 = v432;
    Calendar.beginningOfPreviousDay(_:)();
    v316 = v315;
    v317 = v461;
    (v464)(v316, v461);
    (v169)(v470, v314, v317);
    v318 = 1;
    swift_beginAccess();
    LODWORD(v467) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.month(_:);
    LODWORD(v468) = enum case for Calendar.Component.month(_:);
    v166 = v440;
    do
    {
      v320 = v318;
      v321 = Calendar.startOfMonth(for:)();
      __chkstk_darwin(v321);
      *(&v394 - 2) = v166;
      v158 = v444;
      sub_100260DE4(sub_100565CF8, (&v394 - 4), v476, v444, v435);
      v147 = v115;
      if ((v323 & 1) == 0)
      {
        if (v158 >= v322)
        {
          v475 = v151;
          v405 = v115;
          v335 = Subtasks;
          v158 = v320;
          goto LABEL_206;
        }

        if ((v435 >> 1) < v158)
        {
          goto LABEL_259;
        }

        if ((v435 >> 1) < v322)
        {
          goto LABEL_260;
        }

        if (v322 < 0)
        {
          goto LABEL_261;
        }

        v435 = v435 & 1 | (2 * v322);
      }

      swift_unknownObjectRetain();
      v324 = v437;
      REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v399(v324, v459);
      v158 = v435;
      v325 = sub_100560DB4(v151, v476, v444, v435, v460, v144, v474);
      v115 = v147;
      if (v147)
      {

        swift_unknownObjectRelease();

        v401(v144, v449);
        v350 = v461;
        v351 = v464;
        (v464)(v436, v461);
        v351(v166, v350);

        swift_unknownObjectRelease();
        v351(v470, v350);
        (*(v427 + 8))(v460, v428);
        return;
      }

      v326 = v325;
      v401(v144, v449);
      v147 = v463;
      if (v463 < (v158 >> 1))
      {
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
        goto LABEL_262;
      }

      v144 = v158 >> 1;
      v166 = v409;
      v158 = v320;
      if (v453)
      {
        v327 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v327 = *(v407 + 16);
      }

      if (v327 < v144)
      {
        goto LABEL_256;
      }

      if (!v408 || v144 == v147)
      {
      }

      else
      {
        if (v144 >= v147)
        {
          goto LABEL_258;
        }

        v328 = v144;
        do
        {
          v329 = (v328 + 1);
          _ArrayBuffer._typeCheckSlowPath(_:)(v328);
          v328 = v329;
        }

        while (v463 != v329);
      }

      if (v453)
      {

        v330 = _CocoaArrayWrapper.subscript.getter();
        v144 = v333;
      }

      else
      {
        v330 = v407;
        v331 = v397;
        v332 = v396;
      }

      v477 = v330;
      v478 = v331;
      v476 = v331;
      v444 = v144;
      v479 = v144;
      v480 = v332;
      v435 = v332;
      swift_unknownObjectRelease();
      v334 = *(v326 + 16);
      v335 = Subtasks;
      v405 = 0;
      if (v334)
      {
        v336 = *(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48);
        v337 = v438;
        (*v404)(v438, v470, v461);
        *&v337[v336] = v326;
        (*v403)(v337, v467, v457);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v452 = sub_100365C00(0, v452[2] + 1, 1, v452);
        }

        v339 = v452[2];
        v338 = v452[3];
        if (v339 >= v338 >> 1)
        {
          v452 = sub_100365C00(v338 > 1, v339 + 1, 1, v452);
        }

        swift_unknownObjectRelease();
        v340 = v452;
        v452[2] = v339 + 1;
        (*(v451 + 32))(v340 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v339, v438, v457);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v475 = v330;
LABEL_206:
      v341 = v461;
      v342 = v442;
      v343 = v443;
      (v471)(v442, v468, v443);
      v344 = v439;
      v345 = v440;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (v469)(v342, v343);
      if (v335(v344, 1, v341) == 1)
      {
        v147 = *v466;
        (*v466)(v447, v345, v341);
        v366 = v335(v344, 1, v341) == 1;
        v346 = v344;
        v115 = v405;
        v166 = v345;
        if (!v366)
        {
          sub_1000050A4(v346, &unk_100938850, qword_100795AE0);
        }

        v319 = v447;
      }

      else
      {
        (v464)(v345, v341);
        v147 = *v466;
        v319 = v447;
        (*v466)(v447, v344, v341);
        v115 = v405;
        v166 = v345;
      }

      v151 = v475;
      (v169)(v470, v319, v341);
      v366 = v158 == 12;
      v318 = v158 + 1;
      v144 = v441;
    }

    while (!v366);

    v347 = v435;
    if (v444 == v435 >> 1)
    {
      v348 = v464;
      (v464)(v436, v341);
      swift_unknownObjectRelease();

      v349 = v460;
      v151 = v470;
      goto LABEL_249;
    }

    v352 = v442;
    v353 = v443;
    v354 = v471;
    (v471)(v442, enum case for Calendar.Component.era(_:), v443);
    v355 = v470;
    v435 = v347;
    v356 = v460;
    v468 = Calendar.component(_:from:)();
    v357 = v469;
    (v469)(v352, v353);
    v354(v352, enum case for Calendar.Component.year(_:), v353);
    v115 = v151;
    v151 = v355;
    v158 = Calendar.component(_:from:)();
    v358 = (v357)(v352, v353);
    v169 = &v394;
    __chkstk_darwin(v358);
    *(&v394 - 4) = v468;
    *(&v394 - 3) = v158;
    v472 = v158;
    *(&v394 - 2) = v356;
    v359 = swift_unknownObjectRetain();
    v360 = v405;
    v361 = sub_1005C49A4(v359, v476, v444, v435, sub_100565D18);
    v481 = sub_100277D98(v361);
    sub_10055DD88(&v481);
    v362 = &v437;
    v405 = v360;
  }

  while (v360);

  v363 = v481;
  v144 = v426;
  v476 = *(v481 + 2);
  if (v476)
  {
    v364 = 0;
    v471 = v481 + 32;
    LODWORD(v450) = enum case for REMRemindersListDataView.DateBucketsModel.DateFormattingStyle.allOf(_:);
    v467 = (v412 + 104);
    LODWORD(v453) = enum case for REMRemindersListDataView.DateBucketsModel.DateFormattingStyle.restOfUnlessFirstDay(_:);
    v462 = v411 + 16;
    v463 = (v411 + 8);
    LODWORD(v455) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.year(_:);
    v469 = v481;
    while (1)
    {
      if (v364 >= *(v363 + 2))
      {
        goto LABEL_269;
      }

      v365 = &v471[3 * v364];
      v158 = v365[2];
      v366 = *v365 == v468 && v365[1] == v472;
      if (v366)
      {
        (*v404)(v458, v151, v461);
        (*v467)(v424, v453, v425);

        REMRemindersListDataView.DateBucketsModel.RepresentativeDate.init(date:formattingStyle:)();
      }

      else
      {
        v481 = v365[2];

        sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
        sub_10055B9E4();
        v367 = v417;
        v368 = v461;
        v369 = v405;
        Sequence.firstMap<A>(_:)();
        v405 = v369;
        if ((Subtasks)(v367, 1, v368) == 1)
        {

          sub_1000050A4(v367, &unk_100938850, qword_100795AE0);
          v169 = v395;
          goto LABEL_217;
        }

        v115 = v415;
        (v147)(v415, v367, v368);
        (*v404)(v458, v115, v368);
        (*v467)(v424, v450, v425);
        REMRemindersListDataView.DateBucketsModel.RepresentativeDate.init(date:formattingStyle:)();
        (v464)(v115, v368);
      }

      v144 = v158 >> 62;
      v169 = v410;
      if (v158 >> 62)
      {
        v389 = _CocoaArrayWrapper.endIndex.getter();
        if (v389 < 0)
        {
          goto LABEL_284;
        }

        v370 = v389;
        if (_CocoaArrayWrapper.endIndex.getter() < 0)
        {
          goto LABEL_285;
        }

        if (_CocoaArrayWrapper.endIndex.getter() < v370)
        {
          goto LABEL_272;
        }
      }

      else
      {
        v370 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if ((v158 & 0xC000000000000001) != 0)
      {

        if (v370)
        {
          v371 = 0;
          do
          {
            v372 = v371 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v371);
            v371 = v372;
          }

          while (v370 != v372);
        }
      }

      else
      {
      }

      if (v144)
      {
        v374 = _CocoaArrayWrapper.subscript.getter();
        v375 = v377;
        v373 = v378;
        v376 = v379;
      }

      else
      {
        v373 = 0;
        v374 = v158 & 0xFFFFFFFFFFFFFF8;
        v375 = (v158 & 0xFFFFFFFFFFFFFF8) + 32;
        v376 = (2 * v370) | 1;
      }

      v380 = v422;
      REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
      v158 = v423;
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v399(v380, v459);
      v381 = v405;
      v382 = sub_100560DB4(v374, v375, v373, v376, v460, v158, v474);
      v405 = v381;
      if (v381)
      {

        swift_unknownObjectRelease();

        v401(v158, v449);
        (*v463)(v426, v433);
        v390 = v461;
        v391 = v464;
        (v464)(v436, v461);

        swift_unknownObjectRelease();
        v391(v470, v390);
        (*(v427 + 8))(v460, v428);
        return;
      }

      v383 = v382;
      v401(v158, v449);
      swift_unknownObjectRelease();
      v384 = *(sub_1000F5104(&qword_10094C880, &qword_1007B1A40) + 48);
      v115 = v421;
      v144 = v426;
      (*v462)(v421, v426, v433);
      *(v115 + v384) = v383;
      (*v403)(v115, v455, v457);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v151 = v470;
      v169 = v395;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v452 = sub_100365C00(0, v452[2] + 1, 1, v452);
      }

      v387 = v452[2];
      v386 = v452[3];
      if (v387 >= v386 >> 1)
      {
        v452 = sub_100365C00(v386 > 1, v387 + 1, 1, v452);
      }

      (*v463)(v144, v433);
      v388 = v452;
      v452[2] = v387 + 1;
      (*(v451 + 32))(v388 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v387, v115, v457);
LABEL_217:
      v363 = v469;
      if (++v364 == v476)
      {
        goto LABEL_248;
      }
    }
  }

  v169 = v395;
LABEL_248:

  v341 = v461;
  v348 = v464;
  (v464)(v436, v461);
  swift_unknownObjectRelease();
  v349 = v460;
LABEL_249:
  v348(v151, v341);
  (*(v427 + 8))(v349, v428);
}

uint64_t sub_100565CB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100565D48()
{
  result = qword_10094C8A0;
  if (!qword_10094C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C8A0);
  }

  return result;
}

uint64_t assignWithCopy for RDDARequest(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_100050470(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_100050A48(v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

uint64_t assignWithTake for RDDARequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  v11 = *(a1 + 48);
  *(a1 + 48) = v3;
  sub_100050A48(v4, v6, v5, v7, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDDARequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDARequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void sub_100565F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

unint64_t sub_1005660E4(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t, void, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  __chkstk_darwin(v11);
  isa = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(a3, a4);
  v15 = swift_allocObject();
  v34 = xmmword_100791300;
  *(v15 + 16) = xmmword_100791300;
  *(v15 + 32) = a1;
  v16 = a1;
  v17 = a5(v15, 0, 1, 0, a2);

  if (v5)
  {
    return isa;
  }

  v18 = isa;
  v19 = v37;
  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v11;
    v22 = v18;
    if (result < 2)
    {
      if (result)
      {
        goto LABEL_5;
      }

LABEL_11:

      return 0;
    }

LABEL_12:

    v24 = REMErrorDomain;
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = v34;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v26;
    v35 = 0;
    v36 = 0xE000000000000000;
    v27 = v24;
    _StringGuts.grow(_:)(54);
    v28._object = 0x80000001007FCB70;
    v28._countAndFlagsBits = 0xD000000000000034;
    String.append(_:)(v28);
    v29 = [v16 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100580558(&qword_10093F2A0, &type metadata accessor for UUID);
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    (*(v19 + 8))(v22, v21);
    v31 = v35;
    v32 = v36;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v31;
    *(inited + 56) = v32;
    sub_1001F67C8(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100939260, &unk_100797220);
    v33 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 initWithDomain:v27 code:-1 userInfo:isa];

    swift_willThrow();
    return isa;
  }

  v21 = v11;
  v22 = v18;
  if (_CocoaArrayWrapper.endIndex.getter() > 1)
  {
    goto LABEL_12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v17 + 32);
LABEL_8:
    isa = v23;

    return isa;
  }

  __break(1u);
  return result;
}

void sub_1005664B4(uint64_t a1)
{
  v2 = v1;
  v15 = a1;
  if (qword_100936210 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100948430);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10000668C(v1[2], v1[3], &v14);
    *(v6 + 12) = 2080;
    v7 = v1[5];
    v8 = sub_10047D4B8();
    v10 = sub_10000668C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Putting event {identifier: %s, reader: %s}", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v2[5];
  v12 = *(v11 + 48);
  if (v12)
  {
    v13 = *(v11 + 56);

    v12(&v15);

    sub_10003E114(v12);
  }
}

id sub_100566694(uint64_t a1)
{
  v3 = v1;
  if (a1)
  {
    type metadata accessor for RDSecondaryGroceryLocalesInfo();
    sub_100580558(&qword_10094C9B0, type metadata accessor for RDSecondaryGroceryLocalesInfo);

    v4 = REMChecksumRepresentable.rem_checksum.getter();
    if (v2)
    {
    }

    v10 = v5;
    v11 = v4;
    v12 = [v1 secondaryGroceryLocalesInfoChecksum];
    if (!v12)
    {
LABEL_14:
      sub_100580558(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo);
      v19 = REMJSONRepresentable.toJSONData()();
      v20 = v11;
      v22 = v21;
      sub_1001D4954(v20, v10);

      sub_100029344(v19, v22);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v19, v22);
      [v3 setSecondaryGroceryLocalesInfoAsData:isa];

      sub_10001BBA0(v19, v22);
    }

    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v11 != v14 || v10 != v16)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = [v1 secondaryGroceryLocalesInfoChecksum];
    if (v7)
    {

      [v1 setSecondaryGroceryLocalesInfoChecksum:0];
      v8 = [v1 createResolutionTokenMapIfNecessary];
      v9 = String._bridgeToObjectiveC()();
      [v8 updateForKey:v9];
    }

    return [v3 setSecondaryGroceryLocalesInfoAsData:0];
  }
}

id sub_100566968(uint64_t a1, char a2)
{
  v4 = v2;
  if (a1)
  {
    type metadata accessor for RDRecentlyDeletedInfo();
    sub_100580558(&qword_10094C980, type metadata accessor for RDRecentlyDeletedInfo);

    v6 = REMChecksumRepresentable.rem_checksum.getter();
    if (v3)
    {
    }

    v12 = v7;
    v26 = v6;
    v13 = [v2 recentlyDeletedInfoChecksum];
    if (!v13)
    {
LABEL_15:
      sub_100580558(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo);
      v20 = REMJSONRepresentable.toJSONData()();
      v21 = a2 & 1;
      v22 = v20;
      v24 = v23;
      sub_10044BE4C(v26, v12, v21);

      sub_100029344(v22, v24);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v22, v24);
      [v4 setRecentlyDeletedInfoAsData:isa];

      sub_10001BBA0(v22, v24);
    }

    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v26 != v15 || v12 != v17)
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9 = [v2 recentlyDeletedInfoChecksum];
    if (v9)
    {

      [v2 setRecentlyDeletedInfoChecksum:0];
      if (a2)
      {
        v10 = [v2 createResolutionTokenMapIfNecessary];
        v11 = String._bridgeToObjectiveC()();
        [v10 updateForKey:v11];
      }
    }

    return [v4 setRecentlyDeletedInfoAsData:0];
  }
}

unint64_t sub_100566CD8()
{
  result = qword_10094C8F8;
  if (!qword_10094C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C8F8);
  }

  return result;
}

void sub_100566D3C(uint64_t a1, void *a2)
{
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10094C8A8);
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Performing query in daemon {fetchRequest: %@}", v9, 0xCu);
    sub_1000050A4(v10, &unk_100938E70, &unk_100797230);
  }

  v12 = [v6 fetchExecutor];
  v33[3] = sub_1000060C8(0, &qword_10094CA08, _REMFetchExecutor_ptr);
  v33[0] = v12;
  sub_1000F5104(&qword_10094CA10, &qword_1007B1FD8);
  throwingCast<A>(_:as:failureMessage:)();
  sub_10000607C(v33);
  if (!v2)
  {
    v13 = [v6 type];
    if (v13 <= 1)
    {
      if (!v13)
      {
        v17 = v35;
        v18 = v36;
        sub_10000F61C(v34, v35);
        v16 = (*(v18 + 8))(a1, v17, v18);
        goto LABEL_18;
      }

      if (v13 == 1)
      {
        v23 = v35;
        v24 = v36;
        sub_10000F61C(v34, v35);
        v16 = (*(v24 + 16))(a1, v23, v24);
        goto LABEL_18;
      }
    }

    else
    {
      switch(v13)
      {
        case 4:
          v19 = v35;
          v20 = v36;
          sub_10000F61C(v34, v35);
          v16 = (*(v20 + 56))(a1, v19, v20);
          goto LABEL_18;
        case 3:
          v14 = v35;
          v15 = v36;
          sub_10000F61C(v34, v35);
          v16 = (*(v15 + 40))(a1, v14, v15);
LABEL_18:
          v25 = v16;
          v26 = v6;
          v27 = v25;
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *v30 = 138412546;
            *(v30 + 4) = v26;
            *(v30 + 12) = 2112;
            *(v30 + 14) = v27;
            *v31 = v26;
            v31[1] = v27;
            v32 = v26;
            _os_log_impl(&_mh_execute_header, v28, v29, "Finished performing query in daemon {fetchRequest: %@, result: %@}", v30, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();
          }

          else
          {
          }

          sub_10000607C(v34);
          return;
        case 2:
          v21 = v35;
          v22 = v36;
          sub_10000F61C(v34, v35);
          v16 = (*(v22 + 32))(a1, v21, v22);
          goto LABEL_18;
      }
    }

    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown type", 12, 2);
    __break(1u);
  }
}

uint64_t sub_1005671F4(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordID;
  swift_beginAccess();
  if (!a3)
  {

    return swift_endAccess();
  }

  v7 = *(a1 + v6);
  if ((v7 & 0xC000000000000001) == 0)
  {
    v11 = *(a1 + v6);
    v9 = a3;
    goto LABEL_10;
  }

  if (v7 < 0)
  {
    v8 = *(a1 + v6);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = a3;
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(a1 + v6) = sub_10021E990(v8, result + 1);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + v6);
    sub_1002CAAF4(v9, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v6) = v13;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

void sub_100567334(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void *, id), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v113 = a6;
  v114 = a5;
  v122 = a1;
  sub_1000060C8(0, &qword_10094C9E0, REMStoreInvocation_ptr);
  v14 = a1;
  sub_1000F5104(&qword_10094C9F8, &qword_1007B1FC8);
  v111 = a2;
  v112 = a3;
  if (swift_dynamicCast())
  {
    sub_100054B6C(v121, v118);
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = sub_100006654(v15, qword_10094C8A8);
    v17 = v14;

    v108 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v109 = a4;
      v21 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v121 = v107;
      *v20 = 138544130;
      *(v20 + 4) = v17;
      *v21 = v17;
      *(v20 + 12) = 2082;
      v22 = v17;
      *(v20 + 14) = sub_10000668C(a2, a3, v121);
      *(v20 + 22) = 2082;
      v110 = v7;
      v23 = objc_opt_self();
      v24 = [v23 currentThread];
      v25 = [v24 description];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_10000668C(v26, v28, v121);

      *(v20 + 24) = v29;
      *(v20 + 32) = 2048;
      v30 = v23;
      v8 = v110;
      v31 = [v30 currentThread];
      v32 = [v31 qualityOfService];

      *(v20 + 34) = v32;
      _os_log_impl(&_mh_execute_header, v18, v19, "Performing store controller invocation {invocation: %{public}@, client: %{public}s, thread: %{public}s, qos: %ld}", v20, 0x2Au);
      sub_1000050A4(v21, &unk_100938E70, &unk_100797230);
      a4 = v109;

      swift_arrayDestroy();
    }

    v33 = v119;
    v34 = v120;
    sub_10000F61C(v118, v119);
    v35 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
    v36 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
    *v121 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    *&v121[16] = v36;
    *&v121[30] = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
    v37 = (*(v34 + 16))(v35, v121, v33, v34);
    if (v8)
    {
      v122 = v8;
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      sub_1000060C8(0, &qword_100939E60, NSError_ptr);
      swift_dynamicCast();
      v38 = v17;
      v39 = v112;

      v40 = v117;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *v43 = 138543874;
        *(v43 + 4) = v38;
        *v44 = v38;
        *(v43 + 12) = 2082;
        v45 = v38;
        *(v43 + 14) = sub_10000668C(v111, v39, &v116);
        *(v43 + 22) = 2082;
        v115 = v40;
        sub_10000CDE4(&unk_100939E68, &qword_100939E60, NSError_ptr);
        v46 = Error.rem_errorDescription.getter();
        v48 = sub_10000668C(v46, v47, &v116);

        *(v43 + 24) = v48;
        _os_log_impl(&_mh_execute_header, v41, v42, "Error performing store controller invocation {invocation: %{public}@, client: %{public}s, error %{public}s}", v43, 0x20u);
        sub_1000050A4(v44, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      v49 = v40;
      v114(0, v40);
    }

    else
    {
      v85 = v37;
      v86 = v17;
      v87 = v112;

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v122 = v92;
        *v90 = 138543618;
        *(v90 + 4) = v86;
        *v91 = v86;
        *(v90 + 12) = 2082;
        v93 = v86;
        *(v90 + 14) = sub_10000668C(v111, v87, &v122);
        _os_log_impl(&_mh_execute_header, v88, v89, "Finished performing store controller invocation  {invocation: %{public}@, client: %{public}s}", v90, 0x16u);
        sub_1000050A4(v91, &unk_100938E70, &unk_100797230);

        sub_10000607C(v92);
      }

      v94 = v85;
      v114(v85, 0);
    }

    sub_10000607C(v118);
  }

  else
  {
    memset(v121, 0, 40);
    sub_1000050A4(v121, &qword_10094CA00, &qword_1007B1FD0);
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    v51 = sub_100006654(v50, qword_10094C8A8);
    v52 = v14;

    v108 = v51;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v107 = a7;
      v55 = swift_slowAlloc();
      v110 = v7;
      v56 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v121 = v106;
      *v55 = 138544130;
      *(v55 + 4) = v52;
      *v56 = v52;
      *(v55 + 12) = 2082;
      v57 = v52;
      *(v55 + 14) = sub_10000668C(a2, a3, v121);
      *(v55 + 22) = 2082;
      v109 = a4;
      v58 = objc_opt_self();
      v59 = [v58 currentThread];
      v60 = [v59 description];

      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = sub_10000668C(v61, v63, v121);

      *(v55 + 24) = v64;
      *(v55 + 32) = 2048;
      v65 = v58;
      a4 = v109;
      v66 = [v65 currentThread];
      v67 = [v66 qualityOfService];

      *(v55 + 34) = v67;
      _os_log_impl(&_mh_execute_header, v53, v54, "Performing invocation {invocation: %{public}@, client: %{public}s, thread: %{public}s, qos: %ld}", v55, 0x2Au);
      sub_1000050A4(v56, &unk_100938E70, &unk_100797230);
      v8 = v110;

      swift_arrayDestroy();

      a7 = v107;
    }

    v68 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
    v69 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
    *v121 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    *&v121[16] = v69;
    *&v121[30] = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
    __chkstk_darwin(v70);
    v105[2] = a7;
    sub_100402044(v121, sub_1005814A8, v105);
    if (v8)
    {
      v118[0] = v8;
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      sub_1000060C8(0, &qword_100939E60, NSError_ptr);
      swift_dynamicCast();
      v72 = v122;
      v73 = v52;
      v74 = v112;

      v75 = v72;
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v117 = v110;
        *v78 = 138543874;
        *(v78 + 4) = v73;
        *v79 = v73;
        *(v78 + 12) = 2082;
        v80 = v73;
        *(v78 + 14) = sub_10000668C(v111, v74, &v117);
        *(v78 + 22) = 2082;
        v116 = v75;
        sub_10000CDE4(&unk_100939E68, &qword_100939E60, NSError_ptr);
        v81 = Error.rem_errorDescription.getter();
        v83 = sub_10000668C(v81, v82, &v117);

        *(v78 + 24) = v83;
        _os_log_impl(&_mh_execute_header, v76, v77, "Error performing invocation {invocation: %{public}@, client: %{public}s, error %{public}s}", v78, 0x20u);
        sub_1000050A4(v79, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      v84 = v75;
      v114(0, v75);
    }

    else
    {
      v95 = v71;
      v96 = v52;
      v97 = v112;

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v118[0] = v102;
        *v100 = 138543618;
        *(v100 + 4) = v96;
        *v101 = v96;
        *(v100 + 12) = 2082;
        v103 = v96;
        *(v100 + 14) = sub_10000668C(v111, v97, v118);
        _os_log_impl(&_mh_execute_header, v98, v99, "Finished performing {invocation: %{public}@, client: %{public}s}", v100, 0x16u);
        sub_1000050A4(v101, &unk_100938E70, &unk_100797230);

        sub_10000607C(v102);
      }

      v104 = v95;
      v114(v95, 0);
    }
  }
}

uint64_t sub_1005680D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  sub_10000F61C(a2, v6);
  result = (*(v7 + 8))(a1, v6, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100568398(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100568410, 0, 0);
}

uint64_t sub_100568410()
{
  v1 = [objc_opt_self() sharedConfiguration];
  v2 = [v1 minimumSearchTermLengthByBaseLanguage];

  v3 = v0[2];
  if (v2)
  {
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_10038F938(_swiftEmptyArrayStorage);
  }

  v4 = v0[3];
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (v4)[2](v4, isa, 0);

  _Block_release(v4);
  v6 = v0[1];

  return v6();
}

void sub_10056858C(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, char **a16, uint64_t a17)
{
  v137 = a7;
  v135 = a6;
  v136 = a5;
  v138 = a4;
  v142 = a17;
  v143 = a16;
  v140 = a14;
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = *&a1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController];
  type metadata accessor for RDDatabaseSaver();
  inited = swift_initStackObject();
  inited[2] = v21;
  inited[3] = v22;
  inited[4] = a2;
  swift_beginAccess();
  v24 = *(a12 + 16);
  v132 = a1;
  v25 = *&a1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16];
  v150 = *&a1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
  *v151 = v25;
  *&v151[14] = *&a1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30];
  v144 = inited;
  v133 = a12;
  v131 = &a1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
  v139 = a13;
  v134 = a8;
  v145 = v24;
  v141 = v22;
  if (a2 == 3)
  {
    if (a3 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = (a3 & 0xC000000000000001);
    v28 = v141;

    v29 = 0;
    v30 = &selRef_hack_willSaveHandled;
    while (1)
    {
      if (v26 == v29)
      {
        goto LABEL_14;
      }

      if (v27)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v31 = *(a3 + 8 * v29 + 32);
      }

      v32 = v31;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = [v31 accountTypeHost];
      v34 = [v33 isCloudKit];

      ++v29;
      if (v34)
      {

        if (qword_100936850 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100006654(v40, qword_100951B60);
        v41 = v140;

        sub_100009DAC(&v150, &v148);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.fault.getter();

        sub_1005812D4(&v150);
        v30 = v143;
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *&v148 = swift_slowAlloc();
          *v44 = 136446466;
          if (v41)
          {
            v45 = v139;
          }

          else
          {
            v45 = 7104878;
          }

          if (v41)
          {
            v46 = v41;
          }

          else
          {
            v46 = 0xE300000000000000;
          }

          v47 = sub_10000668C(v45, v46, &v148);

          *(v44 + 4) = v47;
          *(v44 + 12) = 2082;
          v48 = sub_1000063E8();
          v50 = sub_10000668C(v48, v49, &v148);

          *(v44 + 14) = v50;
          _os_log_impl(&_mh_execute_header, v42, v43, "RDDatabaseSaver: Unexpected use of REMStoreModeEventKitSync to edit/insert/remove CloudKit account(s) {author: %{public}s, clientIdentity: %{public}s}", v44, 0x16u);
          swift_arrayDestroy();
        }

        v51 = objc_opt_self();
        v52 = String._bridgeToObjectiveC()();
        v53 = [v51 internalErrorWithDebugDescription:v52];

        swift_willThrow();

        *&v148 = v53;
        sub_1000F5104(&unk_1009399E0, &qword_100795D00);
        sub_1000060C8(0, &qword_100939E60, NSError_ptr);
        swift_dynamicCast();
        v27 = v146;
        v54 = [v146 domain];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
        {
        }

        else
        {
          v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v60 & 1) == 0)
          {
            v61 = objc_opt_self();
            v62 = v146;
            v63 = _convertErrorToNSError(_:)();

            v64 = [v61 saveErrorWithCoreDataError:v63];
            v65 = qword_100936550;
            v29 = v64;
            if (v65 != -1)
            {
              swift_once();
            }

            v66 = type metadata accessor for Logger();
            sub_100006654(v66, qword_10094C8A8);
            v67 = v62;
            v68 = Logger.logObject.getter();
            v69 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              *v70 = 138412546;
              *(v70 + 4) = v67;
              *(v70 + 12) = 2112;
              *(v70 + 14) = v29;
              *v71 = v67;
              v71[1] = v29;
              v72 = v67;
              v29 = v29;
              _os_log_impl(&_mh_execute_header, v68, v69, "Converted saveError to remError {saveError: %@, remError: %@}", v70, 0x16u);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();
            }

LABEL_37:
            if (qword_100936550 == -1)
            {
LABEL_38:
              v77 = type metadata accessor for Logger();
              sub_100006654(v77, qword_10094C8A8);
              v78 = v27;
              v79 = Logger.logObject.getter();
              v80 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                *v81 = 138412290;
                *(v81 + 4) = v78;
                *v82 = v78;
                v83 = v78;
                _os_log_impl(&_mh_execute_header, v79, v80, "(daemon) SAVE FAIL {saveError: %@}", v81, 0xCu);
                sub_1000050A4(v82, &unk_100938E70, &unk_100797230);
              }

              (v30)(v29);

              return;
            }

LABEL_61:
            swift_once();
            goto LABEL_38;
          }
        }

        v73 = objc_opt_self();
        v74 = v146;
        v75 = _convertErrorToNSError(_:)();

        v76 = [v73 errorSanitizedForXPCFromError:v75];
        v29 = v76;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v35 = v22;

LABEL_14:
  v36 = sub_100756CF8(a11, a3);
  v38 = v37;
  v39 = v144;
  sub_100758FE0(v36);
  v130[1] = v130;
  __chkstk_darwin(v84);
  v116[2] = v145;
  v116[3] = v39;
  v116[4] = a11;
  v116[5] = &v150;
  v117 = v85 & 1;
  v118 = v138;
  v119 = a3;
  v130[0] = v86;
  v120 = v86;
  v121 = v139;
  v122 = v140;
  v123 = v135;
  v124 = v134;
  v125 = v136;
  v126 = v137;
  v127 = v87;
  v128 = v38;
  v129 = v36;
  sub_100014A64(&v150, sub_100581554, v116);

  v88 = v132;
  v89 = *sub_10000F61C(&v132[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_coreSuggestionsHandler], *&v132[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_coreSuggestionsHandler + 24]);
  v90 = v130[0];
  sub_1003E57EC(v130[0]);
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_100006654(v91, qword_10094C8A8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v92 = v133;
  swift_retain_n();
  v93 = v88;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();

  LODWORD(v145) = v95;
  v96 = os_log_type_enabled(v94, v95);
  v97 = v144;
  if (v96)
  {
    v141 = v94;
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v147 = v99;
    *v98 = 136448002;
    v100 = v131[1];
    v148 = *v131;
    *v149 = v100;
    *&v149[14] = *(v131 + 30);
    v101 = sub_1000063E8();
    v103 = sub_10000668C(v101, v102, &v147);

    *(v98 + 4) = v103;
    *(v98 + 12) = 2048;
    if (a3 >> 62)
    {
      v104 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v104 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v98 + 14) = v104;

    *(v98 + 22) = 2048;
    if (v138 >> 62)
    {
      v105 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v105 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v106 = v143;
    v107 = v136;

    *(v98 + 24) = v105;

    *(v98 + 32) = 2048;
    if (v107 >> 62)
    {
      v108 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v109 = v137;

    *(v98 + 34) = v108;

    *(v98 + 42) = 2048;
    if (v135 >> 62)
    {
      v110 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v110 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v98 + 44) = v110;

    *(v98 + 52) = 2048;
    if (v109 >> 62)
    {
      v111 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v111 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v112 = v145;

    *(v98 + 54) = v111;

    *(v98 + 62) = 2048;
    if (v90 >> 62)
    {
      v113 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v113 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v98 + 64) = v113;

    *(v98 + 72) = 2048;
    swift_beginAccess();
    v114 = *(*(v92 + 16) + 16);

    *(v98 + 74) = v114;

    v115 = v141;
    _os_log_impl(&_mh_execute_header, v141, v112, "(daemon) SAVE END {author: %{public}s, accountStorages.count: %ld, listStorages.count: %ld, listSectionStorages.count: %ld, smartListStorages.count: %ld, smartListSectionStorages.count: %ld, reminderStorages.count: %ld, replicaManagers.count: %ld}", v98, 0x52u);
    sub_10000607C(v99);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v106 = v143;
  }

  (v106)(0);
  swift_setDeallocating();
}

void sub_1005697D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v6 = v5;
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10094C8A8);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = a4;
    v15 = swift_slowAlloc();
    v16 = a3;
    v17 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v11;
    *v17 = v11;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "fetchShareForObject: Fetching object with ID {objectID: %{public}@}", v15, 0xCu);
    sub_1000050A4(v17, &unk_100938E70, &unk_100797230);
    a3 = v16;

    a4 = v14;
    v6 = v5;
  }

  v19 = sub_100577A10(v11);
  if (!v6)
  {
    if (v19)
    {
      v20 = v19;
      v21 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:a3];
      v22 = swift_allocObject();
      v23 = v34;
      v22[2] = a4;
      v22[3] = v23;
      v22[4] = v21;
      v22[5] = v20;
      aBlock[4] = sub_100581260;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008F7A38;
      v24 = _Block_copy(aBlock);

      v25 = v21;
      v26 = v20;

      [v25 fetchShareIfNecessaryForObject:v26 completionHandler:v24];
      _Block_release(v24);
    }

    else
    {
      v27 = v11;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138543362;
        *(v30 + 4) = v27;
        *v31 = v27;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "fetchShareForObject: Tried to fetch non-existent object {remObjectID: %{public}@}", v30, 0xCu);
        sub_1000050A4(v31, &unk_100938E70, &unk_100797230);
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v27];
      swift_willThrow();
    }
  }
}

void sub_100569B70(int a1, void (*a2)(id, void), int a3, void *a4, id a5)
{
  v7 = [a5 objectID];
  v8 = [a4 fetchShareForObjectWithManagedObjectID:v7];

  a2(v8, 0);
}

void sub_100569C24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  aBlock[7] = a6;
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094C8A8);
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v38 = a7;
    v18 = swift_slowAlloc();
    v19 = a3;
    v20 = a8;
    v21 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v21 = v15;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "createShareForObject: Fetching object with ID {objectID: %{public}@}", v18, 0xCu);
    sub_1000050A4(v21, &unk_100938E70, &unk_100797230);
    a8 = v20;
    a3 = v19;

    a7 = v38;
    v9 = v8;
  }

  v23 = sub_100577A10(v15);
  if (!v9)
  {
    v24 = v23;
    if (v23)
    {
      v25 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:a3];
      v26 = [v24 objectID];
      if (a5 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
      }

      sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
      v34 = static OS_dispatch_queue.main.getter();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      v36[2] = v35;
      v36[3] = a7;
      v36[4] = a8;
      aBlock[4] = sub_100581234;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10016AC08;
      aBlock[3] = &unk_1008F79C0;
      v37 = _Block_copy(aBlock);

      [v25 createShareForObjectWithManagedObjectID:v26 appIconData:isa queue:v34 completionHandler:v37];
      _Block_release(v37);
    }

    else
    {
      v28 = v15;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138543362;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "createShareForObject: Tried to fetch non-existent object {remObjectID: %{public}@}", v31, 0xCu);
        sub_1000050A4(v32, &unk_100938E70, &unk_100797230);
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v28];
      swift_willThrow();
    }
  }
}

uint64_t sub_10056A054(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a1)
  {
    v24 = a2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    v7 = CKRecord.subscript.getter();

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v23 = v8;
        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_100006654(v9, qword_10094C8A8);
        v10 = v6;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();
        v13 = v10;

        v14 = &selRef_persistentStoreForIdentifier_;
        if (os_log_type_enabled(v11, v12))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138477827;
          v17 = [v13 recordID];
          *(v15 + 4) = v17;
          *v16 = v17;
          _os_log_impl(&_mh_execute_header, v11, v12, "createShareForObject: Adding mapping for share recordID {recordID: %{private}@}", v15, 0xCu);
          sub_1000050A4(v16, &unk_100938E70, &unk_100797230);

          v14 = &selRef_persistentStoreForIdentifier_;
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v21 = [v13 v14[78]];

          v22 = [v23 v14[78]];
          v23 = &v21;
          v25 = *&v19[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordIDLock];
          __chkstk_darwin(v22);
          type metadata accessor for UnfairLock();

          Lock.sync<A>(_:)();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a4(a1);
}

void sub_10056A480(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10056A518(void *a1, int a2, void *a3, int a4, void *aBlock, void (*a6)(id, uint64_t, uint64_t, id, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  v13 = a3;
  v14 = a1;
  a6(v13, v10, v12, v14, v9);
  _Block_release(v9);
  _Block_release(v9);
}

void sub_10056A5D0(void *a1, void *a2, char a3)
{
  if (a3)
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094C8A8);
    v6 = a1;
    sub_100066F20(a2, 1);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    sub_100067078(a2, 1);
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v11 = v6;
      v12 = Error.localizedDescription.getter();
      v14 = sub_10000668C(v12, v13, &v25);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v7, "CKSystemSharingUIObserver: failed to save: {recordID: %@ error: %s}", v8, 0x16u);
      sub_1000050A4(v9, &unk_100938E70, &unk_100797230);

      sub_10000607C(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094C8A8);
    v16 = a1;
    sub_100066F20(a2, 0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    sub_100067078(a2, 0);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      *(v19 + 4) = v16;
      *(v19 + 12) = 2112;
      *(v19 + 14) = a2;
      *v20 = v16;
      v20[1] = a2;
      v21 = v16;
      sub_100066F20(a2, 0);
      _os_log_impl(&_mh_execute_header, v17, v18, "CKSystemSharingUIObserver: didSave: {recordID: %@ share: %@}", v19, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      sub_10056A980(a2);
    }
  }
}

void sub_10056A980(void *a1)
{
  v2 = v1;
  v4 = [a1 recordID];
  aBlock[0] = *&v1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordIDLock];
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  v5 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10056B06C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008F7808;
  v6 = _Block_copy(aBlock);
  [v2 updateShare:a1 accountID:v5 completion:v6];
  _Block_release(v6);
}

void sub_10056AAF8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094C8A8);
    v6 = a1;
    sub_100138D40(a2, 1);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    sub_100138D4C(a2, 1);
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v11 = v6;
      v12 = Error.localizedDescription.getter();
      v14 = sub_10000668C(v12, v13, &v25);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v7, "CKSystemSharingUIObserver: stopped sharing failed: {recordID: %@ error: %s}", v8, 0x16u);
      sub_1000050A4(v9, &unk_100938E70, &unk_100797230);

      sub_10000607C(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094C8A8);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "CKSystemSharingUIObserver: stopped sharing: {recordID: %@}", v19, 0xCu);
      sub_1000050A4(v20, &unk_100938E70, &unk_100797230);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      sub_10056AE68();
    }
  }
}

void sub_10056AE68()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) cloudContext];
  if (v1)
  {
    v8 = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordIDLock);
    __chkstk_darwin(v1);
    v3 = v2;
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
  }

  else
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_10094C8A8);
    v7 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v7, v5, "shareDidStop: Cloud Context is not intialized", v6, 2u);
    }
  }
}

void sub_10056B06C(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_10094C8A8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_10000668C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update share {error: %s}", v4, 0xCu);
      sub_10000607C(v5);
    }

    else
    {
    }
  }
}

void sub_10056B220(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordID;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_100353970(a2, v7);

  if (v8)
  {
    swift_beginAccess();
    v9 = sub_100369B48(a2);
    swift_endAccess();

    v10 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:a3];
    v11 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v12 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_10056B4E0;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10056A480;
    aBlock[3] = &unk_1008F77E0;
    v13 = _Block_copy(aBlock);
    [v10 didStopSharingRecordID:v8 accountID:v11 queue:v12 completionHandler:v13];
    _Block_release(v13);
  }

  else
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094C8A8);
    v15 = a2;
    v12 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v12, v16, "No mapping for share record, cannot stop share. {recordID: %@}", v17, 0xCu);
      sub_1000050A4(v18, &unk_100938E70, &unk_100797230);
    }
  }
}

void sub_10056B4E0()
{
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10094C8A8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "shareDidStop: Stopped share successfully.", v2, 2u);
  }
}

void sub_10056B5C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10058111C;
  *(v10 + 24) = v9;
  v12[4] = sub_100581158;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10056B714;
  v12[3] = &unk_1008F7740;
  v11 = _Block_copy(v12);

  [a1 acceptShareWithMetadata:a2 callbackQueue:v8 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_10056B714(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a2;
  v6();
}

void sub_10056B7C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
    if (a4)
    {
LABEL_3:
      v9 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1 & 1, v8);
}

uint64_t sub_10056B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v11 = a8;
  v8 = *(a7 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_dataAccessRequestsWriter);

  sub_10004F728(v10);
}

uint64_t sub_10056B930(void *a1, int a2, int a3, int a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_10056BA00(uint64_t a1, void *a2, void (*a3)(id, id))
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007953F0;
  *(v5 + 32) = a2;
  v38 = a2;
  v6 = sub_10034A794(v5, 1);

  type metadata accessor for REMCDTemplate();
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v6];

  v9 = NSManagedObjectContext.count<A>(for:)();
  if (!v3)
  {
    if (v9 < 1)
    {
      v32 = [objc_opt_self() noSuchObjectErrorWithObjectID:v38];
      v31 = 0;
      v33 = v32;
    }

    else
    {
      v10 = sub_10055BD54(v38, 32);
      type metadata accessor for REMCDSavedReminder();
      v11 = [objc_allocWithZone(NSFetchRequest) init];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [ObjCClassFromMetadata entity];
      [v11 setEntity:v13];

      [v11 setAffectedStores:0];
      [v11 setPredicate:v10];

      v14 = NSManagedObjectContext.count<A>(for:)();
      v36 = v14;
      v15 = sub_10055BD54(v38, 64);
      v16 = [objc_allocWithZone(NSFetchRequest) init];
      v17 = [ObjCClassFromMetadata entity];
      [v16 setEntity:v17];

      [v16 setAffectedStores:0];
      [v16 setPredicate:v15];

      v18 = NSManagedObjectContext.count<A>(for:)();
      v35 = v18;
      v19 = sub_10055BD54(v38, 96);
      v20 = [objc_allocWithZone(NSFetchRequest) init];
      v21 = [ObjCClassFromMetadata entity];
      [v20 setEntity:v21];

      [v20 setAffectedStores:0];
      [v20 setPredicate:v19];

      v22 = NSManagedObjectContext.count<A>(for:)();
      v34 = v22;
      v23 = sub_10055BD54(v38, 128);
      v24 = [objc_allocWithZone(NSFetchRequest) init];
      v25 = [ObjCClassFromMetadata entity];
      [v24 setEntity:v25];

      [v24 setAffectedStores:0];
      [v24 setPredicate:v23];

      v26 = NSManagedObjectContext.count<A>(for:)();
      v27 = sub_1005BDBEC(v38, 0x42u);
      type metadata accessor for REMCDSavedAttachment();
      v28 = [objc_allocWithZone(NSFetchRequest) init];
      v29 = [swift_getObjCClassFromMetadata() entity];
      [v28 setEntity:v29];

      [v28 setAffectedStores:0];
      [v28 setPredicate:v27];

      v30 = NSManagedObjectContext.count<A>(for:)();
      v31 = [objc_allocWithZone(REMTemplateContentAttributes) initWithReminderCount:v36 hasDisplayDate:v35 > 0 hasHashtags:v34 > 0 hasLocationTriggersOrVehicleEventTriggers:v26 > 0 hasImageAttachments:v30 > 0];
      v32 = v31;
      v33 = 0;
    }

    a3(v31, v33);
  }
}