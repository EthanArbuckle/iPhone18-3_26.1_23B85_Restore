uint64_t sub_1002A9078()
{
  v2 = *v1;
  v3 = *(*v1 + 1760);
  v4 = *v1;
  v2[221] = v0;

  v5 = v2[216];
  v6 = v2[214];
  if (v0)
  {
    v7 = v2[193];
    v8 = v2[94];

    v9 = sub_1002AA8C8;
  }

  else
  {
    v8 = v2[94];

    v9 = sub_1002A9220;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1002A9220()
{
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1744);
  v191 = *(v0 + 1704);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1288);
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1032);
  v9 = *(v0 + 1000);
  sub_10000B3A8(*(v0 + 1120), &qword_10169C9C8, &qword_101398A58);
  v4(v8, v9);
  v4(v7, v9);
  v2(v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 1704);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_166;
  }

LABEL_2:
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_100A5C854(v12 > 1, v13 + 1, 1, v11);
  }

  v14 = *(v0 + 1568);
  v15 = *(v0 + 848);
  v16 = *(v0 + 840);
  v17 = *(v0 + 1696) + 1;
  *(v11 + 16) = v13 + 1;
  sub_1002DB7C8(v15, v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, type metadata accessor for KeyDropFetchItem);
  v192 = v0;
  if (v17 == v14)
  {
    v18 = *(v0 + 1544);

    v19 = *(v0 + 1560);
    sub_10039845C(*(v0 + 1672));

    v20 = *(v0 + 1200);
    v21 = *(v0 + 1512) + 1;
    sub_100007BAC((v0 + 224));
    if (v21 == v20)
    {
      v157 = *(v0 + 712);
      v22 = *(v0 + 1152);
      v23 = *(v0 + 1144);
      v24 = *(v0 + 1136);
      v25 = *(v0 + 1128);
      v26 = *(v0 + 1120);
      v27 = *(v0 + 1112);
      v28 = *(v0 + 1096);
      v158 = *(v0 + 1088);
      v159 = *(v0 + 1080);
      v160 = *(v0 + 1072);
      v161 = *(v0 + 1064);
      v162 = *(v0 + 1056);
      v163 = *(v0 + 1048);
      v164 = *(v0 + 1040);
      v165 = *(v0 + 1032);
      v166 = *(v0 + 1024);
      v167 = *(v0 + 992);
      v168 = *(v0 + 984);
      v169 = *(v0 + 976);
      v170 = *(v0 + 968);
      v171 = *(v0 + 960);
      v172 = *(v0 + 952);
      v173 = *(v0 + 944);
      v174 = *(v0 + 920);
      v175 = *(v0 + 896);
      v176 = *(v0 + 872);
      v177 = *(v0 + 856);
      v178 = *(v0 + 848);
      v180 = *(v0 + 832);
      v181 = *(v0 + 824);
      v183 = *(v0 + 816);
      v184 = *(v0 + 808);
      v186 = *(v0 + 784);
      v188 = *(v0 + 776);
      sub_10000B3A8(*(v0 + 1160), &qword_10169C9C8, &qword_101398A58);

      v29 = *(v0 + 8);

      return v29(v11, v157);
    }

    else
    {
      v106 = *(v0 + 1512);
      *(v0 + 1520) = v11;
      *(v0 + 1512) = v106 + 1;
      v107 = *(v0 + 1232);
      v108 = *(v0 + 1096);
      sub_10001F280(*(v0 + 744) + 40 * v106 + 72, v0 + 224);
      v109 = *(v0 + 248);
      v110 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v109);
      (*(*(*(v110 + 8) + 8) + 32))(v109);

      return _swift_task_switch(sub_1002A571C, v107, 0);
    }
  }

  v31 = *(v0 + 1768);
  v32 = *(v0 + 1696) + 1;
  *(v0 + 1704) = v11;
  *(v0 + 1696) = v32;
  v33 = *(v0 + 1544);
  if (v32 >= *(v33 + 16))
  {
    goto LABEL_172;
  }

  v189 = v31;
  v34 = *(v0 + 1804);
  v35 = *(v0 + 1800);
  v36 = *(v0 + 1796);
  v37 = *(v0 + 1248);
  v38 = *(v0 + 1240);
  v39 = *(v0 + 1040);
  v40 = *(v0 + 1032);
  v41 = *(v0 + 1000);
  v42 = *(v0 + 776);
  sub_1002DB760(v33 + ((*(v0 + 1808) + 32) & ~*(v0 + 1808)) + *(*(v0 + 768) + 72) * v32, v42, type metadata accessor for OwnerSharingCircle);
  v38(v39, v42 + v36, v41);
  v38(v40, v42 + v35, v41);
  v3 = v0;
  LOBYTE(v39) = *(v42 + v34);
  sub_1002DBBF0(v42, type metadata accessor for OwnerSharingCircle);
  *(v0 + 1827) = 0x4000201u >> (8 * v39);
  v43 = *(v0 + 1688);
  v44 = *(v192 + 1128);
  v45 = *(v192 + 1104);
  sub_1000D2A70(*(v3 + 1160), *(v3 + 1128), &qword_10169C9C8, &qword_101398A58);
  v182 = *(v44 + *(v45 + 48));
  v46 = _swiftEmptyArrayStorage;
  if (!v43)
  {
LABEL_123:
    *(v3 + 1712) = v46;
    v111 = *(v3 + 1192);
    v112 = *(v3 + 1120);
    v113 = *(v3 + 1112);
    v114 = *(v3 + 1104);
    (*(v3 + 1184))(v112, *(v3 + 1128), *(v3 + 1168));
    *(v112 + *(v114 + 48)) = v182;
    sub_1000D2A70(v112, v113, &qword_10169C9C8, &qword_101398A58);
    v115 = *(v113 + *(v114 + 48));
    v116 = swift_task_alloc();
    *(v3 + 1720) = v116;
    *v116 = v3;
    v116[1] = sub_1002A8370;
    v117 = *(v3 + 1112);
    v118 = *(v3 + 1032);
    v119 = *(v3 + 752);
    v120 = *(v3 + 1040);

    return sub_1002AB558(v120, v118, v117, v115);
  }

  v47 = (v192 + 568);
  v48 = *(v192 + 1688);
  v0 = *(v192 + 1672);
  v11 = *(v192 + 936);
  *(v192 + 584) = _swiftEmptyArrayStorage;
  v179 = (v192 + 560);
  sub_1011247A4(0, v48, 0);
  v49 = 0;
  v46 = *(v192 + 584);
  v185 = v0 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = v189;
  while (1)
  {
    if (v49 >= *(*(v3 + 1672) + 16))
    {
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
      v11 = sub_100A5C854(0, *(v11 + 16) + 1, 1, v11);
      goto LABEL_2;
    }

    v187 = v49;
    v190 = v46;
    v50 = *(v3 + 944);
    sub_1002DB760(v185 + *(*(v3 + 936) + 72) * v49, v50, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v51 = *v50;
    v52 = v50[1];
    v11 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v11 != 2)
      {
        v55 = 0;
        v53 = 0;
        v56 = 0;
        v54 = 0;
        goto LABEL_24;
      }

      v53 = *(v51 + 16);
      v55 = *(v51 + 24);
    }

    else
    {
      if (!v11)
      {
        v53 = 0;
        v54 = 0;
        v55 = BYTE6(v52);
        v56 = BYTE6(v52);
        goto LABEL_24;
      }

      v53 = v51;
      v55 = v51 >> 32;
    }

    sub_100017D5C(v51, v52);
    if (v55 < v53)
    {
      goto LABEL_161;
    }

    if (v11 == 2)
    {
      v54 = *(v51 + 16);
      v56 = *(v51 + 24);
    }

    else
    {
      v54 = v51;
      v56 = v51 >> 32;
    }

LABEL_24:
    if (v56 < v55 || v55 < v54)
    {
      goto LABEL_162;
    }

    if (__OFSUB__(v55, v53))
    {
      goto LABEL_163;
    }

    if ((v55 - v53) < 0x39)
    {
      if (v11 <= 1)
      {
        if (!v11)
        {
          goto LABEL_51;
        }

        v57 = v51 >> 32;
LABEL_47:
        v60 = v51;
        goto LABEL_50;
      }

      if (v11 != 2)
      {
        goto LABEL_51;
      }

      v57 = *(v51 + 24);
LABEL_49:
      v60 = *(v51 + 16);
      goto LABEL_50;
    }

    v57 = v53 + 57;
    if (__OFADD__(v53, 57))
    {
      goto LABEL_168;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v58 = *(v51 + 16);
        v59 = *(v51 + 24);
      }

      else
      {
        v59 = 0;
        v58 = 0;
      }
    }

    else if (v11)
    {
      v58 = v51;
      v59 = v51 >> 32;
    }

    else
    {
      v58 = 0;
      v59 = BYTE6(v52);
    }

    if (v59 < v57 || v57 < v58)
    {
      goto LABEL_169;
    }

    v60 = 0;
    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (v11 != 3)
    {
      goto LABEL_49;
    }

LABEL_50:
    if (v57 < v60)
    {
      goto LABEL_164;
    }

LABEL_51:
    v61 = Data._Representation.subscript.getter();
    v63 = v62;
    sub_100016590(v51, v52);
    v64 = v63 >> 62;
    if ((v63 >> 62) > 1)
    {
      if (v64 != 2)
      {
        goto LABEL_126;
      }

      v67 = *(v61 + 16);
      v66 = *(v61 + 24);
      v68 = __OFSUB__(v66, v67);
      v65 = v66 - v67;
      if (v68)
      {
        goto LABEL_173;
      }
    }

    else if (v64)
    {
      LODWORD(v65) = HIDWORD(v61) - v61;
      if (__OFSUB__(HIDWORD(v61), v61))
      {
        goto LABEL_174;
      }

      v65 = v65;
    }

    else
    {
      v65 = BYTE6(v63);
    }

    if (v65 != 57)
    {
LABEL_126:
      sub_100016590(v61, v63);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *v47 = 0;
    if (v64 == 2)
    {
      v69 = *(v61 + 16);
    }

    else
    {
      if (v64 != 1)
      {
        *(v3 + 1812) = v61;
        *(v3 + 1820) = v63;
        *(v3 + 1822) = BYTE2(v63);
        *(v3 + 1823) = BYTE3(v63);
        *(v3 + 1824) = BYTE4(v63);
        *(v3 + 1825) = BYTE5(v63);
        v70 = CCECCryptorImportKey();
        sub_100016590(v61, v63);
        sub_100016590(v61, v63);
        if (v70)
        {
          goto LABEL_127;
        }

        goto LABEL_70;
      }

      v69 = v61;
      if (v61 > v61 >> 32)
      {
        goto LABEL_175;
      }
    }

    sub_100017D5C(v61, v63);
    sub_100017D5C(v61, v63);
    sub_100017D5C(v61, v63);
    v70 = sub_1002DB9D8(v69, v63 & 0x3FFFFFFFFFFFFFFFLL, 0, v61, v63);
    sub_100016590(v61, v63);
    sub_100016590(v61, v63);
    sub_100016590(v61, v63);
    if (v13)
    {
      goto LABEL_150;
    }

    if (v70)
    {
LABEL_127:
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v121 = *(v3 + 824);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_101385D80;
      *(v122 + 56) = &type metadata for Int32;
      *(v122 + 64) = &protocol witness table for Int32;
      *(v122 + 32) = v70;
      os_log(_:dso:log:_:_:)();

      CryptoError.init(rawValue:)();
      v123 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v124 = swift_allocError();
      v126 = v125;
      v127 = *(v123 - 8);
      v128 = *(v127 + 48);
      v129 = v128(v121, 1, v123);
      v130 = *(v3 + 824);
      if (v129 == 1)
      {
        (*(v127 + 104))(v126, enum case for CryptoError.unspecifiedError(_:), v123);
        if (v128(v130, 1, v123) != 1)
        {
          sub_10000B3A8(*(v3 + 824), &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v127 + 32))(v126, *(v3 + 824), v123);
      }

      swift_willThrow();
      v13 = v124;
      goto LABEL_150;
    }

LABEL_70:
    if (!*v47)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v131 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v132 = swift_allocError();
      (*(*(v131 - 8) + 104))(v133, enum case for CryptoError.unspecifiedError(_:), v131);
      swift_willThrow();
      v13 = v132;
      goto LABEL_150;
    }

    *(v3 + 552) = 57;
    v71 = type metadata accessor for __DataStorage();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v74 = __DataStorage.init(length:)();
    *(v3 + 520) = 0x3900000000;
    *(v3 + 528) = v74 | 0x4000000000000000;
    v75 = sub_100A7AF80((v3 + 520));
    if (v13)
    {
      v3 = v192;
      goto LABEL_149;
    }

    v76 = v75;
    if (v75)
    {
      break;
    }

    v3 = *(v192 + 552);
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_165;
    }

    v77 = *(v192 + 520);
    v13 = *(v192 + 528);
    v78 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v78 == 2)
      {
        v79 = *(v77 + 16);
        v80 = *(v77 + 24);
      }

      else
      {
        v80 = 0;
        v79 = 0;
      }
    }

    else if (v78)
    {
      v79 = v77;
      v80 = v77 >> 32;
    }

    else
    {
      v79 = 0;
      v80 = BYTE6(v13);
    }

    v81 = sub_10002F330(v79, v80, *(v192 + 520), *(v192 + 528));
    if (v3 && v81 < v3)
    {
      if (v78 <= 1)
      {
        if (!v78)
        {
          goto LABEL_106;
        }

        v82 = v77 >> 32;
LABEL_102:
        v85 = v77;
        goto LABEL_105;
      }

      if (v78 != 2)
      {
        goto LABEL_106;
      }

      v82 = *(v77 + 24);
LABEL_104:
      v85 = *(v77 + 16);
      goto LABEL_105;
    }

    v82 = v79 + v3;
    if (__OFADD__(v79, v3))
    {
      goto LABEL_170;
    }

    if (v78 > 1)
    {
      if (v78 == 2)
      {
        v83 = *(v77 + 16);
        v84 = *(v77 + 24);
      }

      else
      {
        v84 = 0;
        v83 = 0;
      }
    }

    else if (v78)
    {
      v83 = v77;
      v84 = v77 >> 32;
    }

    else
    {
      v83 = 0;
      v84 = BYTE6(v13);
    }

    if (v84 < v82 || v82 < v83)
    {
      goto LABEL_171;
    }

    v85 = 0;
    if (v78 <= 1)
    {
      if (!v78)
      {
        goto LABEL_105;
      }

      goto LABEL_102;
    }

    if (v78 != 3)
    {
      goto LABEL_104;
    }

LABEL_105:
    if (v82 < v85)
    {
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
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
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      swift_once();
      goto LABEL_151;
    }

LABEL_106:
    v86 = Data._Representation.subscript.getter();
    v88 = v87;
    sub_100016590(v77, v13);
    CCECCryptorRelease();
    v89 = v88 >> 62;
    if ((v88 >> 62) > 1)
    {
      if (v89 != 2)
      {
        v144 = 0;
        goto LABEL_157;
      }

      v92 = *(v86 + 16);
      v91 = *(v86 + 24);
      v68 = __OFSUB__(v91, v92);
      v90 = v91 - v92;
      if (v68)
      {
        goto LABEL_176;
      }
    }

    else if (v89)
    {
      LODWORD(v90) = HIDWORD(v86) - v86;
      if (__OFSUB__(HIDWORD(v86), v86))
      {
        goto LABEL_177;
      }

      v90 = v90;
    }

    else
    {
      v90 = BYTE6(v88);
    }

    if (v90 != 28)
    {
      if (v89 == 2)
      {
        v152 = *(v86 + 16);
        v151 = *(v86 + 24);
        v144 = v151 - v152;
        if (!__OFSUB__(v151, v152))
        {
          goto LABEL_157;
        }

        __break(1u);
      }

      else if (v89 == 1)
      {
        if (__OFSUB__(HIDWORD(v86), v86))
        {
          __break(1u);
        }

        v144 = HIDWORD(v86) - v86;
        goto LABEL_157;
      }

      v144 = BYTE6(v88);
LABEL_157:
      sub_100018350();
      v149 = swift_allocError();
      *v153 = 28;
      *(v153 + 8) = v144;
      *(v153 + 16) = 0;
      swift_willThrow();
      sub_100016590(v86, v88);
      v3 = v192;
      goto LABEL_158;
    }

    v3 = v192;
    v93 = *(v192 + 1776);
    v94 = *(v192 + 944);
    v95 = *(v192 + 808);
    v96 = *(v192 + 800);
    v97 = *(v192 + 792);
    sub_100016590(v61, v63);
    (*(v96 + 104))(v95, v93, v97);
    v98 = Data.hash(algorithm:)();
    v100 = v99;
    sub_100016590(v86, v88);
    v101 = *(v96 + 8);
    v0 = v96 + 8;
    v101(v95, v97);
    sub_1002DBBF0(v94, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v46 = v190;
    *(v192 + 584) = v190;
    v103 = v190[2];
    v102 = v190[3];
    v11 = v103 + 1;
    if (v103 >= v102 >> 1)
    {
      sub_1011247A4((v102 > 1), v103 + 1, 1);
      v46 = *(v192 + 584);
    }

    v13 = 0;
    v49 = v187 + 1;
    v104 = *(v192 + 1688);
    v46[2] = v11;
    v105 = &v46[2 * v103];
    v105[4] = v98;
    v105[5] = v100;
    v47 = (v192 + 568);
    if (v187 + 1 == v104)
    {
      goto LABEL_123;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v134 = *(v192 + 816);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_101385D80;
  *(v135 + 56) = &type metadata for Int32;
  *(v135 + 64) = &protocol witness table for Int32;
  *(v135 + 32) = v76;
  v3 = v192;
  os_log(_:dso:log:_:_:)();

  CryptoError.init(rawValue:)();
  v136 = type metadata accessor for CryptoError();
  sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
  v137 = swift_allocError();
  v139 = v138;
  v140 = *(v136 - 8);
  v141 = *(v140 + 48);
  v142 = v141(v134, 1, v136);
  v143 = *(v192 + 816);
  if (v142 == 1)
  {
    (*(v140 + 104))(v139, enum case for CryptoError.unspecifiedError(_:), v136);
    if (v141(v143, 1, v136) != 1)
    {
      sub_10000B3A8(*(v192 + 816), &qword_10169C9A0, &unk_1013D5A40);
    }
  }

  else
  {
    (*(v140 + 32))(v139, *(v192 + 816), v136);
  }

  swift_willThrow();
  v13 = v137;
LABEL_149:
  sub_100016590(*(v3 + 520), *(v3 + 528));
LABEL_150:
  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_178;
  }

LABEL_151:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_101385D80;
  *v179 = v13;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v146 = String.init<A>(describing:)();
  v148 = v147;
  *(v145 + 56) = &type metadata for String;
  *(v145 + 64) = sub_100008C00();
  *(v145 + 32) = v146;
  *(v145 + 40) = v148;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v149 = swift_allocError();
  *v150 = 0;
  swift_willThrow();

LABEL_158:
  _StringGuts.grow(_:)(35);
  *(v3 + 424) = 0;
  *(v3 + 432) = 0xE000000000000000;
  v154._countAndFlagsBits = 0xD000000000000021;
  v154._object = 0x800000010134CB30;
  String.append(_:)(v154);
  *(v3 + 736) = v149;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v155 = *(v3 + 424);
  v156 = *(v3 + 432);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002AA8C8()
{
  v79 = v0;
  v1 = v0[162];
  v2 = v0[161];
  v3 = v0[130];
  v4 = v0[129];
  v5 = v0[125];
  sub_10000B3A8(v0[140], &qword_10169C9C8, &qword_101398A58);
  v2(v4, v5);
  v2(v3, v5);
  v6 = v0[221];
  v7 = v0[218];
  v8 = v0[209];
  v9 = v0[195];
  v10 = v0[147];
  v11 = v0[146];
  v12 = v0[141];

  v7(v12, v11);
  v77 = v0[213];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v73 = v0[161];
    v75 = v0[162];
    v16 = v0[137];
    v17 = v0[125];
    v18 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v20 = v0[41];
    v19 = v0[42];
    sub_1000035D0(v0 + 38, v20);
    (*(*(*(v19 + 8) + 8) + 32))(v20);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v73(v16, v17);
    sub_100007BAC(v0 + 38);
    v24 = sub_1000136BC(v21, v23, v78);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    swift_getErrorValue();
    v26 = v0[50];
    v25 = v0[51];
    v27 = v0[52];
    v28 = Error.localizedDescription.getter();
    v30 = sub_1000136BC(v28, v29, v78);

    *(v18 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v14, v15, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v31 = v0[150];
  v32 = v0[189] + 1;
  sub_100007BAC(v0 + 28);
  if (v32 == v31)
  {
    v33 = v0[144];
    v34 = v0[143];
    v35 = v0[142];
    v36 = v0[141];
    v37 = v0[140];
    v38 = v0[139];
    v39 = v0[137];
    v40 = v0[136];
    v48 = v0[89];
    v49 = v0[135];
    v50 = v0[134];
    v51 = v0[133];
    v52 = v0[132];
    v53 = v0[131];
    v54 = v0[130];
    v55 = v0[129];
    v56 = v0[128];
    v57 = v0[124];
    v58 = v0[123];
    v59 = v0[122];
    v60 = v0[121];
    v61 = v0[120];
    v62 = v0[119];
    v63 = v0[118];
    v64 = v0[115];
    v65 = v0[112];
    v66 = v0[109];
    v67 = v0[107];
    v68 = v0[106];
    v69 = v0[104];
    v70 = v0[103];
    v71 = v0[102];
    v72 = v0[101];
    v74 = v0[98];
    v76 = v0[97];
    sub_10000B3A8(v0[145], &qword_10169C9C8, &qword_101398A58);

    v41 = v0[1];

    return v41(v77, v48);
  }

  else
  {
    v43 = v0[189];
    v0[190] = v77;
    v0[189] = v43 + 1;
    v44 = v0[154];
    v45 = v0[137];
    sub_10001F280(v0[93] + 40 * v43 + 72, (v0 + 28));
    v46 = v0[31];
    v47 = v0[32];
    sub_1000035D0(v0 + 28, v46);
    (*(*(*(v47 + 8) + 8) + 32))(v46);

    return _swift_task_switch(sub_1002A571C, v44, 0);
  }
}

uint64_t sub_1002AAF3C()
{
  v70 = v0;
  v1 = v0[195];
  v2 = v0[98];

  sub_1002DBBF0(v2, type metadata accessor for OwnerSharingCircle);
  v3 = v0[201];
  v68 = v0[190];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v64 = v0[161];
    v66 = v0[162];
    v7 = v0[137];
    v8 = v0[125];
    v9 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = v0[41];
    v10 = v0[42];
    sub_1000035D0(v0 + 38, v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v64(v7, v8);
    sub_100007BAC(v0 + 38);
    v15 = sub_1000136BC(v12, v14, v69);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    swift_getErrorValue();
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[52];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, v69);

    *(v9 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v22 = v0[150];
  v23 = v0[189] + 1;
  sub_100007BAC(v0 + 28);
  if (v23 == v22)
  {
    v24 = v0[144];
    v25 = v0[143];
    v26 = v0[142];
    v27 = v0[141];
    v28 = v0[140];
    v29 = v0[139];
    v30 = v0[137];
    v31 = v0[136];
    v39 = v0[89];
    v40 = v0[135];
    v41 = v0[134];
    v42 = v0[133];
    v43 = v0[132];
    v44 = v0[131];
    v45 = v0[130];
    v46 = v0[129];
    v47 = v0[128];
    v48 = v0[124];
    v49 = v0[123];
    v50 = v0[122];
    v51 = v0[121];
    v52 = v0[120];
    v53 = v0[119];
    v54 = v0[118];
    v55 = v0[115];
    v56 = v0[112];
    v57 = v0[109];
    v58 = v0[107];
    v59 = v0[106];
    v60 = v0[104];
    v61 = v0[103];
    v62 = v0[102];
    v63 = v0[101];
    v65 = v0[98];
    v67 = v0[97];
    sub_10000B3A8(v0[145], &qword_10169C9C8, &qword_101398A58);

    v32 = v0[1];

    return v32(v68, v39);
  }

  else
  {
    v34 = v0[189];
    v0[190] = v68;
    v0[189] = v34 + 1;
    v35 = v0[154];
    v36 = v0[137];
    sub_10001F280(v0[93] + 40 * v34 + 72, (v0 + 28));
    v37 = v0[31];
    v38 = v0[32];
    sub_1000035D0(v0 + 28, v37);
    (*(*(*(v38 + 8) + 8) + 32))(v37);

    return _swift_task_switch(sub_1002A571C, v35, 0);
  }
}

uint64_t sub_1002AB558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a1;
  v5[32] = a2;
  v7 = type metadata accessor for SymmetricKey();
  v5[35] = v7;
  v8 = *(v7 - 8);
  v5[36] = v8;
  v9 = *(v8 + 64) + 15;
  v5[37] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v5[38] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[39] = v11;
  v13 = *(v11 + 64) + 15;
  v5[40] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v5[41] = v14;
  v15 = *(v14 - 8);
  v5[42] = v15;
  v5[43] = *(v15 + 64);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_10169C9C8, &qword_101398A58);
  v5[48] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v18 = swift_task_alloc();
  v5[52] = v18;
  (*(v12 + 16))();
  *(v18 + *(v16 + 48)) = a4;

  return _swift_task_switch(sub_1002AB7B8, v4, 0);
}

uint64_t sub_1002AB7B8()
{
  v43 = v0;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[32];
  v8 = type metadata accessor for Logger();
  v0[53] = sub_1000076D4(v8, qword_10177A818);
  v9 = *(v6 + 16);
  v0[54] = v9;
  v0[55] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v7, v5);
  sub_1000D2A70(v2, v1, &qword_10169C9C8, &qword_101398A58);
  sub_1000D2A70(v2, v3, &qword_10169C9C8, &qword_101398A58);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[50];
  v14 = v0[51];
  if (v12)
  {
    v15 = v0[49];
    v38 = v0[50];
    v39 = v0[48];
    v41 = v11;
    v16 = v0[47];
    v17 = v0[41];
    v18 = v0[42];
    log = v10;
    v19 = v0[39];
    v36 = v0[40];
    v37 = v0[38];
    v20 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v20 = 141558787;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v18 + 8))(v16, v17);
    v24 = sub_1000136BC(v21, v23, &v42);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    sub_1000D2A70(v14, v15, &qword_10169C9C8, &qword_101398A58);
    (*(v19 + 32))(v36, v15, v37);
    sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v28 = *(v19 + 8);
    v28(v36, v37);
    sub_10000B3A8(v14, &qword_10169C9C8, &qword_101398A58);
    v29 = sub_1000136BC(v25, v27, &v42);

    *(v20 + 24) = v29;
    *(v20 + 32) = 2048;
    sub_1000D2A70(v38, v15, &qword_10169C9C8, &qword_101398A58);
    v30 = *(v15 + *(v39 + 48));
    v28(v15, v37);
    sub_10000B3A8(v38, &qword_10169C9C8, &qword_101398A58);
    *(v20 + 34) = v30;
    _os_log_impl(&_mh_execute_header, log, v41, "Bundle Decryption for shareId: %{private,mask.hash}s for dateInterval: %s + %ld days count.", v20, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v31 = v0[47];
    v32 = v0[41];
    v33 = v0[42];
    sub_10000B3A8(v0[50], &qword_10169C9C8, &qword_101398A58);

    sub_10000B3A8(v14, &qword_10169C9C8, &qword_101398A58);
    (*(v33 + 8))(v31, v32);
  }

  v34 = *(v0[34] + 136);
  v0[56] = v34;

  return _swift_task_switch(sub_1002ABC14, v34, 0);
}

uint64_t sub_1002ABC14()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 368);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 328);
  (*(v0 + 432))(v3, *(v0 + 248), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 456) = v8;
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  v11 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v10 = v0;
  v10[1] = sub_1002ABD84;

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v8, v11);
}

uint64_t sub_1002ABD84()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 272);
  v5 = *v0;

  return _swift_task_switch(sub_1002ABEB0, v3, 0);
}

uint64_t sub_1002ABEB0()
{
  if (*(v0 + 144))
  {
    sub_10000A748((v0 + 120), v0 + 80);
    v1 = swift_task_alloc();
    *(v0 + 472) = v1;
    *v1 = v0;
    v1[1] = sub_1002AC08C;
    v2 = *(v0 + 416);
    v3 = *(v0 + 272);

    return sub_1002ACE6C(v0 + 80, v2);
  }

  else
  {
    v5 = *(v0 + 416);
    sub_10000B3A8(v0 + 120, &qword_101696920, &unk_10138B200);
    sub_1001BAB50();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
    sub_10000B3A8(v5, &qword_10169C9C8, &qword_101398A58);
    v8 = *(v0 + 408);
    v7 = *(v0 + 416);
    v10 = *(v0 + 392);
    v9 = *(v0 + 400);
    v12 = *(v0 + 368);
    v11 = *(v0 + 376);
    v14 = *(v0 + 352);
    v13 = *(v0 + 360);
    v15 = *(v0 + 320);
    v16 = *(v0 + 296);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1002AC08C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  *(v4 + 480) = a1;
  *(v4 + 488) = v1;

  v7 = *(v3 + 272);
  if (v1)
  {
    v8 = sub_1002ACD60;
  }

  else
  {
    v8 = sub_1002AC1C0;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_1002AC1C0()
{
  v2 = v0[60];
  if (v2)
  {
    v3 = v2 / 0x60 + 1;
  }

  else
  {
    v3 = 0;
  }

  v0[62] = v3;
  v4 = v0[33];
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = __OFADD__(v6, 1);
  v7 = v6 + 1;
  if (v5)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  if (v3 < v7)
  {
    goto LABEL_14;
  }

  v8 = *(v0[34] + 128);
  v0[65] = _swiftEmptyArrayStorage;
  v0[63] = v8;
  v0[64] = v7;
  v9 = swift_task_alloc();
  v0[66] = v9;
  *v9 = v0;
  v9[1] = sub_1002AC2C4;
  v10 = v0[63];
  v11 = v0[32];

  sub_100C7BA0C((v0 + 2), v11);
}

uint64_t sub_1002AC2C4()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    *(v2 + 576) = v0;
    v5 = *(v2 + 504);
    v6 = sub_1002ACBE8;
  }

  else
  {
    v5 = *(v2 + 504);
    v6 = sub_1002AC3EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002AC3EC()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 == 15)
  {
    sub_1001BAEE0();
    v2 = swift_allocError();
    *v3 = 8;
    swift_willThrow();
    sub_1001BAF34(v0 + 16);
    *(v0 + 576) = v2;
    v4 = *(v0 + 504);
    v5 = sub_1002ACBE8;
    goto LABEL_8;
  }

  v7 = *(v0 + 504);
  v6 = *(v0 + 512);
  v8 = *(v0 + 296);
  v9 = *(v0 + 32);
  sub_100017D5C(v9, *(v0 + 40));
  sub_100D0854C(v9, v1, v6);
  sub_100006654(v9, v1);
  v5 = sub_1001BAF34(v0 + 16);
  if (!is_mul_ok(v6, 0x60uLL))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return _swift_task_switch(v5, v4, v10);
  }

  *(v0 + 544) = 96 * v6;
  v11 = 96 * v6 - 96;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  *(v0 + 552) = v11;
  if (96 * v6 - 1 < v11)
  {
    goto LABEL_12;
  }

  v12 = *(v0 + 536);
  v14 = *(v0 + 288);
  v13 = *(v0 + 296);
  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  (*(v14 + 8))(v13, v15);
  *(v0 + 560) = *(v0 + 160);
  v5 = sub_1002AC594;
  v4 = v16;
LABEL_8:
  v10 = 0;

  return _swift_task_switch(v5, v4, v10);
}

uint64_t sub_1002AC594()
{
  v80 = v0;
  v1 = *(v0 + 520);
  sub_100017D5C(*(v0 + 560), *(v0 + 568));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 520);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5C70C(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v69 = sub_100A5C70C((v4 > 1), v5 + 1, 1, v3);
    v6 = v5 + 1;
    v3 = v69;
  }

  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);
  v10 = *(v0 + 512);
  v11 = *(v0 + 432);
  v12 = *(v0 + 440);
  v13 = *(v0 + 424);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 328);
  v18 = *(v0 + 248);
  v17 = *(v0 + 256);
  v19 = *(v0 + 544) - 1;
  *(v3 + 2) = v6;
  v78 = v3;
  v20 = &v3[40 * v5];
  *(v20 + 4) = v10;
  *(v20 + 5) = v9;
  *(v20 + 6) = v19;
  *(v20 + 7) = v8;
  *(v20 + 8) = v7;
  v11(v14, v17, v16);
  v11(v15, v18, v16);
  sub_100017D5C(v8, v7);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_100016590(v8, v7);
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 568);
  v25 = *(v0 + 560);
  if (v23)
  {
    v70 = *(v0 + 512);
    v71 = *(v0 + 552);
    v75 = v22;
    v27 = *(v0 + 352);
    v26 = *(v0 + 360);
    v29 = *(v0 + 328);
    v28 = *(v0 + 336);
    v72 = *(v0 + 544) - 1;
    v76 = *(v0 + 560);
    v30 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v30 = 141559555;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v21;
    v74 = v24;
    v33 = v32;
    v34 = *(v28 + 8);
    v34(v26, v29);
    v35 = sub_1000136BC(v31, v33, &v79);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2160;
    *(v30 + 24) = 1752392040;
    *(v30 + 32) = 2081;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v34(v27, v29);
    v39 = sub_1000136BC(v36, v38, &v79);

    *(v30 + 34) = v39;
    *(v30 + 42) = 2082;
    strcpy((v0 + 176), ".secondary/(");
    *(v0 + 189) = 0;
    *(v0 + 190) = -5120;
    *(v0 + 224) = v70;
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 41;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    v42 = sub_1000136BC(*(v0 + 176), *(v0 + 184), &v79);

    *(v30 + 44) = v42;
    *(v30 + 52) = 2080;
    *(v0 + 192) = 0x7972616D6972702ELL;
    *(v0 + 200) = 0xEA0000000000282FLL;
    *(v0 + 232) = v71;
    v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 41;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = sub_1000136BC(*(v0 + 192), *(v0 + 200), &v79);

    *(v30 + 54) = v45;
    *(v30 + 62) = 2080;
    *(v0 + 208) = 0x7972616D6972702ELL;
    *(v0 + 216) = 0xEA0000000000282FLL;
    *(v0 + 240) = v72;
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 41;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v48 = sub_1000136BC(*(v0 + 208), *(v0 + 216), &v79);

    *(v30 + 64) = v48;
    _os_log_impl(&_mh_execute_header, log, v75, "Create bundle decryption for shareId: %{private,mask.hash}s,\nbeacon: %{private,mask.hash}s\nsecondaryBucket: %{public}s, start:%s\nto end: %s.", v30, 0x48u);
    swift_arrayDestroy();

    sub_100016590(v76, v74);
  }

  else
  {
    v50 = *(v0 + 352);
    v49 = *(v0 + 360);
    v52 = *(v0 + 328);
    v51 = *(v0 + 336);

    sub_100016590(v25, v24);
    v53 = *(v51 + 8);
    v53(v50, v52);
    v53(v49, v52);
  }

  v54 = *(v0 + 512);
  if (*(v0 + 496) == v54)
  {
    v56 = *(v0 + 408);
    v55 = *(v0 + 416);
    v58 = *(v0 + 392);
    v57 = *(v0 + 400);
    v60 = *(v0 + 368);
    v59 = *(v0 + 376);
    v62 = *(v0 + 352);
    v61 = *(v0 + 360);
    v63 = *(v0 + 320);
    v77 = *(v0 + 296);
    sub_100007BAC((v0 + 80));
    sub_10000B3A8(v55, &qword_10169C9C8, &qword_101398A58);

    v64 = *(v0 + 8);

    return v64(v78);
  }

  else
  {
    *(v0 + 520) = v78;
    *(v0 + 512) = v54 + 1;
    v66 = swift_task_alloc();
    *(v0 + 528) = v66;
    *v66 = v0;
    v66[1] = sub_1002AC2C4;
    v67 = *(v0 + 504);
    v68 = *(v0 + 256);

    return sub_100C7BA0C(v0 + 16, v68);
  }
}

uint64_t sub_1002ACBE8()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_1002ACC54, v2, 0);
}

uint64_t sub_1002ACC54()
{
  v1 = v0[52];
  sub_100007BAC(v0 + 10);
  sub_10000B3A8(v1, &qword_10169C9C8, &qword_101398A58);
  v14 = v0[72];
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[40];
  v11 = v0[37];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002ACD60()
{
  v1 = v0[52];
  sub_100007BAC(v0 + 10);
  sub_10000B3A8(v1, &qword_10169C9C8, &qword_101398A58);
  v14 = v0[61];
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[40];
  v11 = v0[37];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002ACE6C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DateInterval();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002ACFA4, v2, 0);
}

uint64_t sub_1002ACFA4()
{
  v1 = v0[4];
  Date.timeIntervalSince1970.getter();
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[4];
  v9 = v0[5];
  Date.init(timeIntervalSince1970:)();
  v10 = *(v5 + 16);
  v10(v2, v3, v6);
  v10(v4, v8, v6);
  DateInterval.init(start:end:)();
  v11 = *(v9 + 136);
  v0[14] = v11;

  return _swift_task_switch(sub_1002AD0C0, v11, 0);
}

uint64_t sub_1002AD0C0()
{
  v1 = *(v0 + 112);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1002AD1A0;
  v5 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1002AD1A0()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_1002AD2B8, v2, 0);
}

uint64_t sub_1002AD2B8()
{
  v0[16] = v0[2];
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1002AD370;
  v2 = v0[8];
  v3 = v0[3];

  return sub_100A83E64(v3, v2, 1);
}

uint64_t sub_1002AD370(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 136);
  v7 = *v3;

  if (v2)
  {
  }

  else
  {
    v9 = *(v5 + 40);
    *(v5 + 144) = a2;

    return _swift_task_switch(sub_1002AD4AC, v9, 0);
  }
}

uint64_t sub_1002AD4AC()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v9 = v0[7];

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v3, v6);

  v10 = v0[1];
  v11 = v0[18];

  return v10(v11);
}

uint64_t sub_1002AD58C@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_1000035D0(a1, v10);
  (*(*(*(v11 + 8) + 8) + 32))(v10);
  sub_1012DFD84(v9, 1);
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = v15;
  result = (*(v6 + 8))(v9, v5);
  *a2 = v17;
  a2[1] = v18;
  a2[2] = v19;
  a2[3] = v20;
  return result;
}

uint64_t sub_1002AD6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[81] = v5;
  v6[80] = a5;
  v6[79] = a4;
  v6[78] = a2;
  v7 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v6[82] = swift_task_alloc();
  v8 = type metadata accessor for BeaconPayloadv1();
  v6[83] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[84] = swift_task_alloc();
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v10 = *(type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo(0) - 8);
  v6[88] = v10;
  v11 = *(v10 + 64) + 15;
  v6[89] = swift_task_alloc();
  v12 = type metadata accessor for HashAlgorithm();
  v6[90] = v12;
  v13 = *(v12 - 8);
  v6[91] = v13;
  v14 = *(v13 + 64) + 15;
  v6[92] = swift_task_alloc();
  v15 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey(0);
  v6[93] = v15;
  v16 = *(v15 - 8);
  v6[94] = v16;
  v17 = *(v16 + 64) + 15;
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v18 = type metadata accessor for RawSearchResult();
  v6[100] = v18;
  v19 = *(v18 - 8);
  v6[101] = v19;
  v20 = *(v19 + 64) + 15;
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();
  v6[104] = swift_task_alloc();
  v21 = type metadata accessor for Date();
  v6[105] = v21;
  v22 = *(v21 - 8);
  v6[106] = v22;
  v23 = *(v22 + 64) + 15;
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v24 = type metadata accessor for Connection.TransactionMode();
  v6[109] = v24;
  v25 = *(v24 - 8);
  v6[110] = v25;
  v26 = *(v25 + 64) + 15;
  v6[111] = swift_task_alloc();
  v27 = type metadata accessor for Table();
  v6[112] = v27;
  v28 = *(v27 - 8);
  v6[113] = v28;
  v29 = *(v28 + 64) + 15;
  v6[114] = swift_task_alloc();
  v30 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v6[115] = v30;
  v31 = *(v30 - 8);
  v6[116] = v31;
  v32 = *(v31 + 64) + 15;
  v6[117] = swift_task_alloc();
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v6[120] = swift_task_alloc();
  v33 = *(*(sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0) - 8) + 64) + 15;
  v6[121] = swift_task_alloc();
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v34 = *(*(sub_1000BC4D4(&qword_10169C968, &qword_101398A10) - 8) + 64) + 15;
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v35 = sub_1000BC4D4(&qword_10169C970, &qword_101398A18);
  v6[127] = v35;
  v36 = *(v35 - 8);
  v6[128] = v36;
  v37 = *(v36 + 64) + 15;
  v6[129] = swift_task_alloc();
  v6[130] = swift_task_alloc();
  v6[131] = swift_task_alloc();
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v6[134] = swift_task_alloc();
  v6[135] = swift_task_alloc();
  v6[136] = swift_task_alloc();
  v6[137] = swift_task_alloc();
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v6[142] = swift_task_alloc();
  v6[143] = swift_task_alloc();
  v6[144] = swift_task_alloc();
  v38 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v6[145] = v38;
  v39 = *(*(v38 - 8) + 64) + 15;
  v6[146] = swift_task_alloc();
  v40 = type metadata accessor for OwnerSharingCircle();
  v6[147] = v40;
  v41 = *(v40 - 8);
  v6[148] = v41;
  v42 = *(v41 + 64) + 15;
  v6[149] = swift_task_alloc();
  v43 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v6[150] = v43;
  v44 = *(*(v43 - 8) + 64) + 15;
  v6[151] = swift_task_alloc();
  v45 = type metadata accessor for MemberSharingCircle();
  v6[152] = v45;
  v46 = *(v45 - 8);
  v6[153] = v46;
  v47 = *(v46 + 64) + 15;
  v6[154] = swift_task_alloc();
  v48 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v6[155] = swift_task_alloc();
  v6[156] = swift_task_alloc();
  v6[157] = swift_task_alloc();
  v6[158] = swift_task_alloc();
  v49 = type metadata accessor for UUID();
  v6[159] = v49;
  v50 = *(v49 - 8);
  v6[160] = v50;
  v6[161] = *(v50 + 64);
  v6[162] = swift_task_alloc();
  v6[163] = swift_task_alloc();
  v6[164] = swift_task_alloc();
  v6[165] = swift_task_alloc();
  v6[166] = swift_task_alloc();
  v6[167] = swift_task_alloc();
  v6[168] = swift_task_alloc();
  v51 = type metadata accessor for KeyDropFetchResponse.LocationPayload(0);
  v6[169] = v51;
  v52 = *(v51 - 8);
  v6[170] = v52;
  v53 = *(v52 + 64) + 15;
  v6[171] = swift_task_alloc();
  v6[172] = swift_task_alloc();
  v6[173] = swift_task_alloc();

  return _swift_task_switch(sub_1002ADFB0, v5, 0);
}

uint64_t sub_1002ADFB0()
{
  v393 = v1;
  v2 = *(v1 + 632);
  *(v1 + 1392) = *(*(v1 + 648) + 136);
  *(v1 + 520) = _swiftEmptyDictionarySingleton;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = v3[2];
  *(v1 + 1400) = v4;
  if (v4)
  {
    *(v1 + 1768) = *(*(v1 + 1360) + 80);
    *(v1 + 1772) = enum case for Connection.TransactionMode.deferred(_:);

    v5 = 0;
    v6 = &qword_1016980D0;
    do
    {
      *(v1 + 1408) = v5;
      v8 = *(v1 + 632);
      if (!v8)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      if (v5 >= v8[2])
      {
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
        goto LABEL_222;
      }

      v0 = v6;
      v9 = *(v1 + 1384);
      v10 = *(v1 + 1352);
      v11 = *(v1 + 1280);
      v12 = *(v1 + 1272);
      v13 = *(v1 + 1264);
      sub_1002DB760(v8 + ((*(v1 + 1768) + 32) & ~*(v1 + 1768)) + *(*(v1 + 1360) + 72) * v5, v9, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v14 = *(v9 + 24);
      v385 = *(v9 + 16);
      v15 = v9 + *(v10 + 28);
      v6 = v0;
      sub_1000D2A70(v15, v13, v0, &unk_10138F3B0);
      v16 = *(v11 + 48);
      *(v1 + 1416) = v16;
      *(v1 + 1424) = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v16(v13, 1, v12) != 1)
      {
        v21 = *(v1 + 1344);
        v22 = *(v1 + 1280);
        v23 = *(v1 + 1272);
        v24 = *(v1 + 1264);
        v25 = *(v1 + 1256);
        v26 = *(v22 + 32);
        *(v1 + 1432) = v26;
        *(v1 + 1440) = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v26(v21, v24, v23);
        v27 = *(v22 + 16);
        *(v1 + 1448) = v27;
        *(v1 + 1456) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v27(v25, v21, v23);
        (*(v22 + 56))(v25, 0, 1, v23);
        v28 = swift_task_alloc();
        *(v1 + 1464) = v28;
        *v28 = v1;
        v28[1] = sub_1002B09AC;
        v29 = *(v1 + 1256);
        v30 = *(v1 + 648);

        return sub_1002D5B7C(v385, v14, v29);
      }

      sub_10000B3A8(*(v1 + 1264), v0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177A818);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Missing share id in payload.", v20, 2u);
      }

      v7 = *(v1 + 1384);

      sub_1002DBBF0(v7, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v5 = *(v1 + 1408) + 1;
    }

    while (v5 != *(v1 + 1400));
    if (*(v1 + 632))
    {
      v32 = *(v1 + 632);
    }
  }

  else
  {
  }

  if (*(v1 + 624))
  {
    v33 = *(v1 + 624);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v339 = v33[2];
  if (!v339)
  {

LABEL_198:

    v249 = *(v1 + 1384);
    v250 = *(v1 + 1376);
    v251 = *(v1 + 1368);
    v252 = *(v1 + 1344);
    v253 = *(v1 + 1336);
    v254 = *(v1 + 1328);
    v255 = *(v1 + 1320);
    v256 = *(v1 + 1312);
    v257 = *(v1 + 1304);
    v273 = *(v1 + 1296);
    v274 = *(v1 + 1264);
    v276 = *(v1 + 1256);
    v277 = *(v1 + 1248);
    v279 = *(v1 + 1240);
    v281 = *(v1 + 1232);
    v282 = *(v1 + 1208);
    v283 = *(v1 + 1192);
    v285 = *(v1 + 1168);
    v287 = *(v1 + 1152);
    v289 = *(v1 + 1144);
    v291 = *(v1 + 1136);
    v293 = *(v1 + 1128);
    v295 = *(v1 + 1120);
    v297 = *(v1 + 1112);
    v298 = *(v1 + 1104);
    v300 = *(v1 + 1096);
    v301 = *(v1 + 1088);
    v302 = *(v1 + 1080);
    v304 = *(v1 + 1072);
    v307 = *(v1 + 1064);
    v310 = *(v1 + 1056);
    v313 = *(v1 + 1048);
    v315 = *(v1 + 1040);
    v318 = *(v1 + 1032);
    v320 = *(v1 + 1008);
    v322 = *(v1 + 1000);
    v324 = *(v1 + 992);
    v326 = *(v1 + 984);
    v328 = *(v1 + 976);
    v330 = *(v1 + 968);
    v331 = *(v1 + 960);
    v334 = *(v1 + 952);
    logc = *(v1 + 944);
    v340 = *(v1 + 936);
    v342 = *(v1 + 912);
    v344 = *(v1 + 888);
    v346 = *(v1 + 864);
    v348 = *(v1 + 856);
    v350 = *(v1 + 832);
    v352 = *(v1 + 824);
    v356 = *(v1 + 816);
    v359 = *(v1 + 792);
    v361 = *(v1 + 784);
    v363 = *(v1 + 776);
    v365 = *(v1 + 768);
    v367 = *(v1 + 760);
    v369 = *(v1 + 736);
    v371 = *(v1 + 712);
    v374 = *(v1 + 696);
    v378 = *(v1 + 688);
    v380 = *(v1 + 680);
    v382 = *(v1 + 672);
    v388 = *(v1 + 656);
    swift_beginAccess();
    v384 = *(v1 + 520);

    v258 = *(v1 + 8);

    return v258(v384);
  }

  v34 = *(v1 + 1280);
  v278 = (v1 + 600);
  v35 = *(v1 + 1024);
  v341 = *(v1 + 1016);
  v36 = *(v1 + 848);
  v280 = *(v1 + 808);
  v364 = *(v1 + 800);
  v37 = *(v1 + 792);
  v381 = *(v1 + 776);
  v327 = *(v1 + 752);
  v351 = *(v1 + 744);
  v38 = *(v1 + 728);
  v345 = v33 + 4;
  v319 = *(v1 + 712);
  v370 = (v38 + 104);
  v368 = (v38 + 8);
  v360 = *(v1 + 704);
  v296 = (*(v1 + 928) + 56);
  v325 = (v36 + 16);
  v294 = *(v1 + 664);
  v292 = (v36 + 56);
  v323 = (v36 + 8);
  v290 = (v34 + 16);
  v286 = (v35 + 48);
  v288 = (v35 + 56);
  v343 = *(*(v1 + 640) + 16);
  v329 = (v34 + 8);
  v366 = enum case for HashAlgorithm.sha256(_:);

  v0 = 0;
  v39 = 0;
  v284 = xmmword_101385D80;
  v321 = v33;
  v349 = v37;
  while (1)
  {
    if (v39 >= v33[2])
    {
      goto LABEL_223;
    }

    v40 = v343;
    v347 = v39;
    v41 = &v345[3 * v39];
    v43 = *v41;
    v42 = v41[1];
    v362 = v42;
    v379 = v41[2];
    if (v343)
    {
      break;
    }

    sub_100017D5C(v43, v42);

LABEL_135:
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    sub_1000076D4(v96, qword_10177A818);
    sub_100017D5C(v43, v362);

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    sub_100016590(v43, v362);

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v391 = v100;
      *v99 = 141558275;
      *(v99 + 4) = 1752392040;
      *(v99 + 12) = 2081;
      *(v1 + 488) = v43;
      *(v1 + 496) = v362;
      sub_10025DB08();
      v101 = RawRepresentable<>.hexString.getter();
      v103 = sub_1000136BC(v101, v102, &v391);

      *(v99 + 14) = v103;
      _os_log_impl(&_mh_execute_header, v97, v98, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v99, 0x16u);
      sub_100007BAC(v100);
    }

    sub_100016590(v43, v362);

LABEL_140:
    v39 = v347 + 1;
    v33 = v321;
    if (v347 + 1 == v339)
    {
      goto LABEL_198;
    }
  }

  v44 = *(v1 + 640) + ((*(v327 + 80) + 32) & ~*(v327 + 80));
  sub_100017D5C(v43, v42);
  if (v43)
  {
    v45 = 0;
  }

  else
  {
    v45 = v42 == 0xC000000000000000;
  }

  v46 = !v45;
  v357 = v46;
  v353 = BYTE6(v42);
  v372 = *(v327 + 72);
  v47 = __OFSUB__(HIDWORD(v43), v43);
  log = v47;
  v332 = HIDWORD(v43) - v43;

  v383 = v43;
  v375 = v42 >> 62;
  while (1)
  {
    v386 = v40;
    v49 = *(v1 + 776);
    sub_1002DB760(v44, v49, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v50 = *v49;
    v51 = *(v381 + 8);
    v52 = v51 >> 62;
    if ((v51 >> 62) > 1)
    {
      if (v52 == 2)
      {
        v53 = *(v50 + 16);
        v55 = *(v50 + 24);
        sub_100017D5C(v50, *(v381 + 8));
        v54 = *(v50 + 16);
        v56 = *(v50 + 24);
      }

      else
      {
        v53 = 0;
        v55 = 0;
        v56 = 0;
        v54 = 0;
      }
    }

    else if (v52)
    {
      v53 = v50;
      v55 = v50 >> 32;
      sub_100017D5C(v50, *(v381 + 8));
      v56 = v50 >> 32;
      v54 = v50;
    }

    else
    {
      v53 = 0;
      v54 = 0;
      v55 = BYTE6(v51);
      v56 = BYTE6(v51);
    }

    if (v56 < v53 || v53 < v54)
    {
      goto LABEL_216;
    }

    if (v52 > 1)
    {
      if (v52 == 2)
      {
        v57 = *(v50 + 16);
        v58 = *(v50 + 24);
      }

      else
      {
        v58 = 0;
        v57 = 0;
      }
    }

    else if (v52)
    {
      v57 = v50;
      v58 = v50 >> 32;
    }

    else
    {
      v57 = 0;
      v58 = BYTE6(v51);
    }

    if (v58 < v55 || v55 < v57)
    {
      goto LABEL_217;
    }

    if (__OFSUB__(v55, v53))
    {
      goto LABEL_218;
    }

    if ((v55 - v53) < 0x39)
    {
      if (v52 <= 1)
      {
        if (!v52)
        {
          goto LABEL_84;
        }

        v59 = v50 >> 32;
LABEL_80:
        v62 = v50;
        goto LABEL_83;
      }

      if (v52 != 2)
      {
        goto LABEL_84;
      }

      v59 = *(v50 + 24);
LABEL_82:
      v62 = *(v50 + 16);
      goto LABEL_83;
    }

    v59 = v53 + 57;
    if (__OFADD__(v53, 57))
    {
      goto LABEL_220;
    }

    if (v52 > 1)
    {
      if (v52 == 2)
      {
        v60 = *(v50 + 16);
        v61 = *(v50 + 24);
      }

      else
      {
        v61 = 0;
        v60 = 0;
      }
    }

    else if (v52)
    {
      v60 = v50;
      v61 = v50 >> 32;
    }

    else
    {
      v60 = 0;
      v61 = BYTE6(v51);
    }

    if (v61 < v59 || v59 < v60)
    {
      goto LABEL_221;
    }

    v62 = 0;
    if (v52 <= 1)
    {
      if (!v52)
      {
        goto LABEL_83;
      }

      goto LABEL_80;
    }

    if (v52 != 3)
    {
      goto LABEL_82;
    }

LABEL_83:
    if (v59 < v62)
    {
      goto LABEL_219;
    }

LABEL_84:
    v63 = Data._Representation.subscript.getter();
    v65 = v64;
    sub_100016590(v50, v51);
    v66 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v66 != 2)
      {
        goto LABEL_201;
      }

      v68 = *(v63 + 16);
      v67 = *(v63 + 24);
      v69 = __OFSUB__(v67, v68);
      v70 = v67 - v68;
      if (v69)
      {
        goto LABEL_224;
      }

      if (v70 != 57)
      {
        goto LABEL_201;
      }
    }

    else if (v66)
    {
      if (__OFSUB__(HIDWORD(v63), v63))
      {
        goto LABEL_225;
      }

      if (HIDWORD(v63) - v63 != 57)
      {
LABEL_201:
        sub_100016590(v63, v65);
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }

    else if (BYTE6(v65) != 57)
    {
      goto LABEL_201;
    }

    v71 = sub_100A7A194(v63, v65);
    v72 = sub_100A7829C(v71, 0);
    v74 = v73;
    result = CCECCryptorRelease();
    v75 = v74 >> 62;
    if ((v74 >> 62) <= 1)
    {
      break;
    }

    if (v75 != 2)
    {
      v264 = 0;
      goto LABEL_212;
    }

    v77 = *(v72 + 16);
    v76 = *(v72 + 24);
    v69 = __OFSUB__(v76, v77);
    v78 = v76 - v77;
    if (v69)
    {
      goto LABEL_227;
    }

    if (v78 != 28)
    {
      goto LABEL_203;
    }

LABEL_104:
    v79 = *(v1 + 736);
    v80 = *(v1 + 720);
    sub_100016590(v63, v65);
    (*v370)(v79, v366, v80);
    v81 = Data.hash(algorithm:)();
    v83 = v82;
    sub_100016590(v72, v74);
    (*v368)(v79, v80);
    v84 = v83 >> 62;
    if (v83 >> 62 == 3)
    {
      if (v81)
      {
        v85 = 0;
      }

      else
      {
        v85 = v83 == 0xC000000000000000;
      }

      v86 = v375;
      v88 = !v85 || v375 < 3;
      v43 = v383;
      if (((v88 | v357) & 1) == 0)
      {
        v104 = 0;
        v105 = 0xC000000000000000;
LABEL_144:
        sub_100016590(v104, v105);
        v0 = 0;
LABEL_145:
        v106 = *(v1 + 792);
        v107 = *(v1 + 784);
        sub_1002DB7C8(*(v1 + 776), v107, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        sub_1002DB7C8(v107, v106, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v387 = *(v379 + 16);
        if (v387)
        {
          v373 = v379 + ((*(v360 + 80) + 32) & ~*(v360 + 80));

          v108 = 0;
          v109 = v349;
          while (v108 < *(v379 + 16))
          {
            v111 = *(v1 + 792);
            sub_1002DB760(v373 + *(v360 + 72) * v108, *(v1 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
            v112 = *v111;
            v113 = *(v109 + 8);
            v114 = sub_100496ABC();
            v115 = v109;
            v116 = **(v1 + 712);
            v117 = *(v319 + 8);
            v118 = **(v1 + 792);
            v119 = *(v115 + 8);
            sub_100017D5C(v118, v119);
            sub_10002EA98(57, v118, v119, &v391);
            sub_100496F68(v391, v392, &v389);
            v120 = v390;
            if (v390 >> 60 == 15)
            {
              return _assertionFailure(_:_:file:line:flags:)();
            }

            v358 = v108;
            loga = *(v1 + 792);
            v121 = v389;
            v122 = PublicKey.advertisement.getter(v389, v390);
            v124 = v123;
            result = sub_100006654(v121, v120);
            v125 = v117 >> 62;
            v354 = *(v351 + 20);
            if ((v117 >> 62) > 1)
            {
              if (v125 == 2)
              {
                v128 = *(v116 + 16);
                v127 = *(v116 + 24);
                v126 = v127 - v128;
                if (__OFSUB__(v127, v128))
                {
                  goto LABEL_233;
                }
              }

              else
              {
                v126 = 0;
              }
            }

            else if (v125)
            {
              if (__OFSUB__(HIDWORD(v116), v116))
              {
                __break(1u);
LABEL_233:
                __break(1u);
                goto LABEL_234;
              }

              v126 = HIDWORD(v116) - v116;
            }

            else
            {
              v126 = BYTE6(v117);
            }

            sub_100A2A240(3);
            v130 = v129;
            v131 = v114;
            sub_100017D5C(v116, v117);
            sub_100017D5C(v122, v124);
            if (v126 >= v130)
            {
              v132 = (v1 + 672);
              sub_100A2AA58(v131, v116, v117, v122, v124, *(v1 + 672));
            }

            else
            {
              v132 = (v1 + 680);
              sub_100A2B118(v131, v116, v117, v122, v124, *(v1 + 680));
            }

            v333 = v131;
            v133 = *v132;
            v314 = *(v1 + 1272);
            v316 = *(v1 + 1016);
            v311 = *(v1 + 1000);
            v134 = *(v1 + 976);
            v299 = *(v1 + 968);
            v135 = *(v1 + 920);
            v376 = *(v1 + 856);
            v303 = v122;
            v305 = v124;
            v136 = *(v1 + 840);
            v137 = *(v1 + 832);
            v138 = *(v1 + 696);
            v139 = *(v1 + 688);
            v140 = *(v1 + 656);
            sub_1002DB7C8(v133, v139, type metadata accessor for BeaconPayloadv1);
            sub_1002DB7C8(v139, v138, type metadata accessor for BeaconPayloadv1);
            (*v296)(v134, 1, 1, v135);
            v308 = *(v138 + v294[10]);
            v141 = *v325;
            (*v325)(v376, v138 + v294[5], v136);
            v142 = *(v138 + v294[7]);
            v143 = *(v138 + v294[8]);
            v144 = *(v138 + v294[9]);
            (*v292)(v140, 1, 1, v136);
            sub_1000D2A70(v134, v299, &unk_1016C1120, &qword_1013C49D0);
            v275 = v141;
            v141(&v137[v364[5]], v376, v136);
            sub_1000D2A70(v140, &v137[v364[10]], &unk_101696900, &unk_10138B1E0);
            sub_1000D2A70(v299, &v137[v364[11]], &unk_1016C1120, &qword_1013C49D0);
            v145 = &v137[v364[12]];
            UUID.init()();
            sub_100016590(v303, v305);
            sub_10000B3A8(v299, &unk_1016C1120, &qword_1013C49D0);
            sub_10000B3A8(v140, &unk_101696900, &unk_10138B1E0);
            v146 = *v323;
            (*v323)(v376, v136);
            sub_10000B3A8(v134, &unk_1016C1120, &qword_1013C49D0);
            sub_1002DBBF0(v138, type metadata accessor for BeaconPayloadv1);
            *v137 = v308;
            *&v137[v364[6]] = v142;
            *&v137[v364[7]] = v143;
            *&v137[v364[8]] = v144;
            v137[v364[9]] = 15;
            *&v137[v364[13]] = 256;
            v147 = *(v341 + 48);
            (*v290)(v311, loga + v354, v314);
            sub_1002DB7C8(v137, v311 + v147, type metadata accessor for RawSearchResult);
            (*v288)(v311, 0, 1, v316);
            if ((*v286)(v311, 1, v316) == 1)
            {
              v148 = *(v1 + 1000);

              sub_10000B3A8(v148, &qword_10169C968, &qword_101398A10);
              v109 = v349;
              v149 = v383;
              v150 = v358;
              if (qword_101694510 != -1)
              {
                swift_once();
              }

              v151 = *(v1 + 792);
              v152 = *(v1 + 760);
              v153 = type metadata accessor for Logger();
              sub_1000076D4(v153, qword_10177A818);
              sub_1002DB760(v151, v152, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v154 = Logger.logObject.getter();
              v155 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v154, v155))
              {
                v156 = *(v1 + 1272);
                v157 = *(v1 + 760);
                v158 = swift_slowAlloc();
                v159 = swift_slowAlloc();
                v391 = v159;
                *v158 = 141558275;
                *(v158 + 4) = 1752392040;
                *(v158 + 12) = 2081;
                v160 = *(v351 + 20);
                sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                v161 = dispatch thunk of CustomStringConvertible.description.getter();
                v163 = v162;
                sub_1002DBBF0(v157, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v164 = sub_1000136BC(v161, v163, &v391);
                v109 = v349;

                *(v158 + 14) = v164;
                _os_log_impl(&_mh_execute_header, v154, v155, "Could not create search result for beacon: %{private,mask.hash}s.", v158, 0x16u);
                sub_100007BAC(v159);
              }

              else
              {
                v110 = *(v1 + 760);

                sub_1002DBBF0(v110, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              }
            }

            else
            {
              v355 = v146;
              v165 = *(v1 + 1088);
              v166 = *(v1 + 1080);
              sub_1000D2AD8(*(v1 + 1000), v165, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v165, v166, &qword_10169C970, &qword_101398A18);
              v167 = *(v341 + 48);
              swift_beginAccess();
              v168 = sub_1005CAD18(v166, *(v1 + 520));
              v169 = *(v1 + 1272);
              if (v168)
              {
                v170 = v168;
                v171 = *(v1 + 1088);
                v172 = *(v1 + 1080);
                v173 = *(v1 + 1072);
                swift_endAccess();
                sub_1002DBBF0(v166 + v167, type metadata accessor for RawSearchResult);
                v377 = *v329;
                (*v329)(v172, v169);
                sub_1000D2A70(v171, v173, &qword_10169C970, &qword_101398A18);
                v174 = (v173 + *(v341 + 48));
                v175 = *(v170 + 40);
                Hasher.init(_seed:)();
                sub_100D15128();
                v176 = Hasher._finalize()();
                v177 = -1 << *(v170 + 32);
                v178 = v176 & ~v177;
                if ((*(v170 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178))
                {
                  v179 = ~v177;
                  v180 = *v174;
                  v181 = *(v280 + 72);
                  do
                  {
                    v182 = *(v1 + 816);
                    sub_1002DB760(*(v170 + 48) + v178 * v181, v182, type metadata accessor for RawSearchResult);
                    v183 = *(v1 + 816);
                    if (*v182 == v180 && (v184 = v364[5], v185 = static Date.== infix(_:_:)(), v183 = *(v1 + 816), (v185 & 1) != 0) && *(v183 + v364[6]) == *&v174[v364[6]] && *(v183 + v364[7]) == *&v174[v364[7]] && *(v183 + v364[8]) == *&v174[v364[8]])
                    {
                      v186 = v364[12];
                      v187 = *(v1 + 816);
                      v188 = static UUID.== infix(_:_:)();
                      sub_1002DBBF0(v187, type metadata accessor for RawSearchResult);
                      if (v188)
                      {
                        goto LABEL_182;
                      }
                    }

                    else
                    {
                      sub_1002DBBF0(v183, type metadata accessor for RawSearchResult);
                    }

                    v178 = (v178 + 1) & v179;
                  }

                  while (((*(v170 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) != 0);
                }

                v189 = *(v1 + 832);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_1002DB760(v174, v189, type metadata accessor for RawSearchResult);
                v391 = v170;
                sub_100DFE348(v189, v178, isUniquelyReferenced_nonNull_native);
                v170 = v391;
LABEL_182:
                sub_1002DBBF0(v174, type metadata accessor for RawSearchResult);
                v191 = *(v1 + 1128);
                v192 = *(v1 + 1088);
                v377(*(v1 + 1072), *(v1 + 1272));
                sub_1000D2A70(v192, v191, &qword_10169C970, &qword_101398A18);
                v193 = *(v341 + 48);
                swift_beginAccess();
                sub_1001DE1B0(v170, v191);
              }

              else
              {
                v194 = *(v1 + 1128);
                v195 = *(v1 + 1088);
                v196 = *(v1 + 1080);
                v197 = *(v1 + 1064);
                swift_endAccess();
                sub_1002DBBF0(v166 + v167, type metadata accessor for RawSearchResult);
                v198 = *v329;
                (*v329)(v196, v169);
                sub_1000D2A70(v195, v194, &qword_10169C970, &qword_101398A18);
                v193 = *(v341 + 48);
                sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                v199 = *(v280 + 72);
                v200 = (*(v280 + 80) + 32) & ~*(v280 + 80);
                v201 = swift_allocObject();
                *(v201 + 16) = xmmword_101385D80;
                sub_1000D2A70(v195, v197, &qword_10169C970, &qword_101398A18);
                sub_1002DB7C8(v197 + *(v341 + 48), v201 + v200, type metadata accessor for RawSearchResult);
                v198(v197, v169);
                v202 = sub_10112A090(v201);
                swift_setDeallocating();
                sub_1002DBBF0(v201 + v200, type metadata accessor for RawSearchResult);
                swift_deallocClassInstance();
                swift_beginAccess();
                v203 = *(v1 + 520);
                v204 = swift_isUniquelyReferenced_nonNull_native();
                v391 = *(v1 + 520);
                sub_100FFC200(v202, v194, v204);
                v377 = v198;
                v198(v194, v169);
                *(v1 + 520) = v391;
              }

              v149 = v383;
              swift_endAccess();
              sub_1002DBBF0(*(v1 + 1128) + v193, type metadata accessor for RawSearchResult);
              if (qword_101694510 != -1)
              {
                swift_once();
              }

              v205 = *(v1 + 1088);
              v206 = *(v1 + 1056);
              v207 = *(v1 + 1048);
              v208 = *(v1 + 1040);
              v209 = *(v1 + 792);
              v210 = *(v1 + 768);
              v211 = type metadata accessor for Logger();
              sub_1000076D4(v211, qword_10177A818);
              sub_1002DB760(v209, v210, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              sub_1000D2A70(v205, v206, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v205, v207, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v205, v208, &qword_10169C970, &qword_101398A18);
              v212 = Logger.logObject.getter();
              v213 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v212, v213))
              {
                v317 = v213;
                logb = v212;
                v214 = *(v1 + 1272);
                v215 = *(v1 + 1128);
                v216 = *(v1 + 1056);
                v312 = *(v1 + 1040);
                v306 = *(v1 + 1048);
                v309 = *(v1 + 1032);
                v217 = *(v1 + 856);
                v218 = *(v1 + 840);
                v219 = *(v1 + 768);
                v220 = swift_slowAlloc();
                v391 = swift_slowAlloc();
                *v220 = 141559043;
                *(v220 + 4) = 1752392040;
                *(v220 + 12) = 2081;
                v221 = *(v351 + 20);
                sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                v222 = dispatch thunk of CustomStringConvertible.description.getter();
                v224 = v223;
                sub_1002DBBF0(v219, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v225 = sub_1000136BC(v222, v224, &v391);

                *(v220 + 14) = v225;
                *(v220 + 22) = 2082;
                sub_1000D2A70(v216, v215, &qword_10169C970, &qword_101398A18);
                v226 = v215 + *(v341 + 48);
                v275(v217, v226 + v364[5], v218);
                sub_1002DBBF0(v226, type metadata accessor for RawSearchResult);
                v377(v215, v214);
                sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
                v227 = dispatch thunk of CustomStringConvertible.description.getter();
                v229 = v228;
                v355(v217, v218);
                sub_10000B3A8(v216, &qword_10169C970, &qword_101398A18);
                v230 = sub_1000136BC(v227, v229, &v391);

                *(v220 + 24) = v230;
                *(v220 + 32) = 2082;
                sub_1000D2A70(v306, v215, &qword_10169C970, &qword_101398A18);
                v231 = v215 + *(v341 + 48);
                LOBYTE(v230) = *(v231 + v364[9]);
                sub_1002DBBF0(v231, type metadata accessor for RawSearchResult);
                v377(v215, v214);
                v232 = sub_100013454(v230);
                v234 = v233;
                sub_10000B3A8(v306, &qword_10169C970, &qword_101398A18);
                v235 = sub_1000136BC(v232, v234, &v391);

                *(v220 + 34) = v235;
                *(v220 + 42) = 2048;
                sub_1000D2A70(v312, v309, &qword_10169C970, &qword_101398A18);
                swift_beginAccess();
                v236 = *(v1 + 520);
                if (*(v236 + 16) && (v237 = sub_1000210EC(*(v1 + 1032)), (v238 & 1) != 0))
                {
                  v239 = *(*(v236 + 56) + 8 * v237);
                  swift_endAccess();
                  v240 = *(v239 + 16);
                }

                else
                {
                  swift_endAccess();
                  v240 = 0;
                }

                v109 = v349;
                v149 = v383;
                v245 = *(v1 + 1272);
                v246 = *(v1 + 1088);
                v247 = *(v1 + 1040);
                v248 = *(v1 + 1032);
                sub_1002DBBF0(v248 + *(v341 + 48), type metadata accessor for RawSearchResult);
                v377(v248, v245);
                sub_10000B3A8(v247, &qword_10169C970, &qword_101398A18);
                *(v220 + 44) = v240;
                _os_log_impl(&_mh_execute_header, logb, v317, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v220, 0x34u);
                swift_arrayDestroy();

                sub_10000B3A8(v246, &qword_10169C970, &qword_101398A18);
              }

              else
              {
                v241 = *(v1 + 1088);
                v242 = *(v1 + 1056);
                v243 = *(v1 + 1048);
                v244 = *(v1 + 768);
                sub_10000B3A8(*(v1 + 1040), &qword_10169C970, &qword_101398A18);

                sub_10000B3A8(v243, &qword_10169C970, &qword_101398A18);
                sub_10000B3A8(v242, &qword_10169C970, &qword_101398A18);
                sub_1002DBBF0(v244, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_10000B3A8(v241, &qword_10169C970, &qword_101398A18);
                v109 = v349;
              }

              v150 = v358;
            }

            v108 = v150 + 1;
            sub_1002DBBF0(*(v1 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
            v0 = 0;
            if (v108 == v387)
            {

              sub_100016590(v149, v362);

              v0 = 0;
              goto LABEL_196;
            }
          }

LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
          swift_once();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v259 = swift_allocObject();
          *(v259 + 16) = v284;
          *v278 = v0;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v260 = String.init<A>(describing:)();
          v262 = v261;
          *(v259 + 56) = &type metadata for String;
          *(v259 + 64) = sub_100008C00();
          *(v259 + 32) = v260;
          *(v259 + 40) = v262;
          os_log(_:dso:log:_:_:)();

          sub_1001BAF88();
          v267 = swift_allocError();
          *v263 = 0;
          swift_willThrow();

LABEL_213:
          v391 = 0;
          v392 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v269 = v392;
          *(v1 + 472) = v391;
          *(v1 + 480) = v269;
          v270._countAndFlagsBits = 0xD000000000000021;
          v270._object = 0x800000010134CB30;
          String.append(_:)(v270);
          *(v1 + 584) = v267;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          v271 = *(v1 + 472);
          v272 = *(v1 + 480);
          return _assertionFailure(_:_:file:line:flags:)();
        }

        sub_100016590(v43, v362);

LABEL_196:
        sub_1002DBBF0(*(v1 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        goto LABEL_140;
      }

      v89 = 0;
      if (v375 <= 1)
      {
LABEL_124:
        v92 = v353;
        if (v86)
        {
          v92 = v332;
          if (log)
          {
            goto LABEL_228;
          }
        }

        goto LABEL_130;
      }
    }

    else
    {
      v43 = v383;
      v86 = v375;
      if (v84 == 2)
      {
        v91 = *(v81 + 16);
        v90 = *(v81 + 24);
        v69 = __OFSUB__(v90, v91);
        v89 = v90 - v91;
        if (v69)
        {
          goto LABEL_231;
        }

        if (v375 <= 1)
        {
          goto LABEL_124;
        }
      }

      else if (v84 == 1)
      {
        LODWORD(v89) = HIDWORD(v81) - v81;
        if (__OFSUB__(HIDWORD(v81), v81))
        {
          goto LABEL_230;
        }

        v89 = v89;
        if (v375 <= 1)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v89 = BYTE6(v83);
        if (v375 <= 1)
        {
          goto LABEL_124;
        }
      }
    }

    if (v86 != 2)
    {
      if (!v89)
      {
        goto LABEL_142;
      }

LABEL_39:
      sub_100016590(v81, v83);
      v0 = 0;
      v48 = v386;
      goto LABEL_40;
    }

    v94 = *(v43 + 16);
    v93 = *(v43 + 24);
    v69 = __OFSUB__(v93, v94);
    v92 = v93 - v94;
    if (v69)
    {
      goto LABEL_229;
    }

LABEL_130:
    if (v89 != v92)
    {
      goto LABEL_39;
    }

    if (v89 < 1)
    {
LABEL_142:
      v104 = v81;
      v105 = v83;
      goto LABEL_144;
    }

    sub_100017D5C(v43, v362);
    sub_100017D5C(v43, v362);
    sub_100017D5C(v81, v83);
    v95 = sub_100F0B1BC(v81, v83, v43, v362);
    sub_100016590(v81, v83);
    sub_100016590(v81, v83);
    sub_100016590(v43, v362);
    v48 = v386;
    if (v95)
    {
      goto LABEL_145;
    }

LABEL_40:
    sub_1002DBBF0(*(v1 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v44 += v372;
    v40 = v48 - 1;
    if (!v40)
    {
      goto LABEL_135;
    }
  }

  if (!v75)
  {
    if (BYTE6(v74) != 28)
    {
      goto LABEL_203;
    }

    goto LABEL_104;
  }

  if (__OFSUB__(HIDWORD(v72), v72))
  {
    goto LABEL_226;
  }

  if (HIDWORD(v72) - v72 == 28)
  {
    goto LABEL_104;
  }

LABEL_203:
  if (v75 == 2)
  {
    v266 = *(v72 + 16);
    v265 = *(v72 + 24);
    v264 = v265 - v266;
    if (!__OFSUB__(v265, v266))
    {
      goto LABEL_212;
    }

    __break(1u);
    goto LABEL_211;
  }

  if (v75 != 1)
  {
LABEL_211:
    v264 = BYTE6(v74);
    goto LABEL_212;
  }

  if (!__OFSUB__(HIDWORD(v72), v72))
  {
    v264 = HIDWORD(v72) - v72;
LABEL_212:
    sub_100018350();
    v267 = swift_allocError();
    *v268 = 28;
    *(v268 + 8) = v264;
    *(v268 + 16) = 0;
    swift_willThrow();
    sub_100016590(v72, v74);
    goto LABEL_213;
  }

LABEL_234:
  __break(1u);
  return result;
}

uint64_t sub_1002B09AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1464);
  v7 = *v3;
  v5[184] = a1;
  v5[185] = a2;
  v5[186] = v2;

  v8 = v4[157];
  v9 = v4[81];
  if (v2)
  {
    if (v5[79])
    {
      v10 = v5[79];
    }

    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);

    v11 = sub_1002D14F4;
  }

  else
  {
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    v11 = sub_1002B0B44;
  }

  return _swift_task_switch(v11, v9, 0);
}

uint64_t sub_1002B0B44()
{
  v414 = v0;
  if (*(v0 + 1480) >> 60 != 15)
  {
    v14 = *(v0 + 1392);
    v15 = sub_1002B37A0;
    v16 = 0;

    return _swift_task_switch(v15, v14, v16);
  }

  if (qword_101694510 != -1)
  {
    goto LABEL_232;
  }

  while (1)
  {
    v1 = *(v0 + 1384);
    v2 = *(v0 + 1368);
    v408 = type metadata accessor for Logger();
    sub_1000076D4(v408, qword_10177A818);
    sub_1002DB760(v1, v2, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v403 = *(v0 + 1424);
      v5 = *(v0 + 1416);
      v6 = *(v0 + 1368);
      v7 = *(v0 + 1352);
      v8 = *(v0 + 1272);
      v9 = *(v0 + 1240);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *(v0 + 576) = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      sub_1000D2A70(v6 + *(v7 + 28), v9, &qword_1016980D0, &unk_10138F3B0);
      if (v5(v9, 1, v8) == 1)
      {
        sub_10000B3A8(*(v0 + 1240), &qword_1016980D0, &unk_10138F3B0);
        v12 = 0xE300000000000000;
        v13 = 7104878;
      }

      else
      {
        v21 = *(v0 + 1280);
        v22 = *(v0 + 1272);
        v23 = *(v0 + 1240);
        v13 = UUID.uuidString.getter();
        v12 = v24;
        (*(v21 + 8))(v23, v22);
      }

      v25 = *(v0 + 1344);
      v26 = *(v0 + 1280);
      v27 = *(v0 + 1272);
      sub_1002DBBF0(*(v0 + 1368), type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v28 = sub_1000136BC(v13, v12, (v0 + 576));

      *(v10 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v3, v4, "Cannot decrypt locations in payload: %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);

      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v17 = *(v0 + 1368);
      v18 = *(v0 + 1344);
      v19 = *(v0 + 1280);
      v20 = *(v0 + 1272);

      sub_1002DBBF0(v17, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      (*(v19 + 8))(v18, v20);
    }

    sub_1002DBBF0(*(v0 + 1384), type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v404 = *(v0 + 1488);
    v29 = *(v0 + 1408) + 1;
    if (v29 == *(v0 + 1400))
    {
      break;
    }

    while (1)
    {
      *(v0 + 1408) = v29;
      v245 = *(v0 + 632);
      if (!v245)
      {
        v245 = _swiftEmptyArrayStorage;
      }

      if (v29 >= v245[2])
      {
        break;
      }

      v246 = *(v0 + 1384);
      v247 = *(v0 + 1352);
      v248 = *(v0 + 1280);
      v249 = *(v0 + 1272);
      v250 = *(v0 + 1264);
      sub_1002DB760(v245 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v29, v246, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v252 = *(v246 + 16);
      v251 = *(v246 + 24);
      sub_1000D2A70(v246 + *(v247 + 28), v250, &qword_1016980D0, &unk_10138F3B0);
      v253 = *(v248 + 48);
      *(v0 + 1416) = v253;
      *(v0 + 1424) = (v248 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v253(v250, 1, v249) != 1)
      {
        v268 = *(v0 + 1344);
        v269 = *(v0 + 1280);
        v270 = *(v0 + 1272);
        v271 = *(v0 + 1264);
        v272 = *(v0 + 1256);
        v273 = *(v269 + 32);
        *(v0 + 1432) = v273;
        *(v0 + 1440) = (v269 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v273(v268, v271, v270);
        v274 = *(v269 + 16);
        *(v0 + 1448) = v274;
        *(v0 + 1456) = (v269 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v274(v272, v268, v270);
        (*(v269 + 56))(v272, 0, 1, v270);
        v275 = swift_task_alloc();
        *(v0 + 1464) = v275;
        *v275 = v0;
        v275[1] = sub_1002B09AC;
        v276 = *(v0 + 1256);
        v277 = *(v0 + 648);

        return sub_1002D5B7C(v252, v251, v276);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v408, qword_10177A818);
      v254 = Logger.logObject.getter();
      v255 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v254, v255))
      {
        v256 = swift_slowAlloc();
        *v256 = 0;
        _os_log_impl(&_mh_execute_header, v254, v255, "Missing share id in payload.", v256, 2u);
      }

      v244 = *(v0 + 1384);

      sub_1002DBBF0(v244, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v29 = *(v0 + 1408) + 1;
      if (v29 == *(v0 + 1400))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    swift_once();
  }

LABEL_13:
  if (*(v0 + 632))
  {
    v30 = *(v0 + 632);
  }

  if (*(v0 + 624))
  {
    v31 = *(v0 + 624);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v354 = *(v31 + 16);
  if (!v354)
  {

LABEL_202:

    v257 = *(v0 + 1384);
    v258 = *(v0 + 1376);
    v259 = *(v0 + 1368);
    v260 = *(v0 + 1344);
    v261 = *(v0 + 1336);
    v262 = *(v0 + 1328);
    v263 = *(v0 + 1320);
    v264 = *(v0 + 1312);
    v265 = *(v0 + 1304);
    v292 = *(v0 + 1296);
    v293 = *(v0 + 1264);
    v295 = *(v0 + 1256);
    v296 = *(v0 + 1248);
    v297 = *(v0 + 1240);
    v299 = *(v0 + 1232);
    v300 = *(v0 + 1208);
    v301 = *(v0 + 1192);
    v302 = *(v0 + 1168);
    v304 = *(v0 + 1152);
    v306 = *(v0 + 1144);
    v308 = *(v0 + 1136);
    v310 = *(v0 + 1128);
    v312 = *(v0 + 1120);
    v314 = *(v0 + 1112);
    v315 = *(v0 + 1104);
    v317 = *(v0 + 1096);
    v320 = *(v0 + 1088);
    v322 = *(v0 + 1080);
    v325 = *(v0 + 1072);
    v328 = *(v0 + 1064);
    v331 = *(v0 + 1056);
    v334 = *(v0 + 1048);
    v337 = *(v0 + 1040);
    v339 = *(v0 + 1032);
    v341 = *(v0 + 1008);
    v343 = *(v0 + 1000);
    v345 = *(v0 + 992);
    v346 = *(v0 + 984);
    logc = *(v0 + 976);
    v353 = *(v0 + 968);
    v355 = *(v0 + 960);
    v357 = *(v0 + 952);
    v359 = *(v0 + 944);
    v361 = *(v0 + 936);
    v363 = *(v0 + 912);
    v365 = *(v0 + 888);
    v367 = *(v0 + 864);
    v369 = *(v0 + 856);
    v371 = *(v0 + 832);
    v374 = *(v0 + 824);
    v378 = *(v0 + 816);
    v380 = *(v0 + 792);
    v382 = *(v0 + 784);
    v384 = *(v0 + 776);
    v386 = *(v0 + 768);
    v388 = *(v0 + 760);
    v390 = *(v0 + 736);
    v392 = *(v0 + 712);
    v395 = *(v0 + 696);
    v397 = *(v0 + 688);
    v400 = *(v0 + 680);
    v402 = *(v0 + 672);
    v409 = *(v0 + 656);
    swift_beginAccess();
    v407 = *(v0 + 520);

    v266 = *(v0 + 8);

    return v266(v407);
  }

  v32 = *(v0 + 1280);
  v33 = *(v0 + 1024);
  v368 = *(v0 + 1016);
  v34 = *(v0 + 848);
  v298 = *(v0 + 808);
  v383 = *(v0 + 800);
  v35 = *(v0 + 792);
  v401 = *(v0 + 776);
  v344 = *(v0 + 752);
  v366 = *(v0 + 744);
  v36 = *(v0 + 728);
  v362 = (v31 + 32);
  v338 = *(v0 + 712);
  v391 = (v36 + 104);
  v389 = (v36 + 8);
  v379 = *(v0 + 704);
  v313 = (*(v0 + 928) + 56);
  v342 = (v34 + 16);
  v311 = *(v0 + 664);
  v309 = (v34 + 56);
  v340 = (v34 + 8);
  v307 = (v32 + 16);
  v303 = (v33 + 48);
  v305 = (v33 + 56);
  v360 = *(*(v0 + 640) + 16);
  v356 = (v32 + 8);
  v387 = enum case for HashAlgorithm.sha256(_:);

  v37 = 0;
  v358 = v31;
  v370 = v35;
LABEL_20:
  if (v37 >= *(v31 + 16))
  {
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    swift_once();
    goto LABEL_209;
  }

  v364 = v37;
  v38 = &v362[3 * v37];
  v40 = *v38;
  v39 = v38[1];
  v381 = v39;
  v396 = *v38;
  v385 = v38[2];
  if (!v360)
  {
    sub_100017D5C(v40, v39);

LABEL_129:
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v408, qword_10177A818);
    sub_100017D5C(v396, v381);

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    sub_100016590(v396, v381);

    v31 = v358;
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v412 = v99;
      *v98 = 141558275;
      *(v98 + 4) = 1752392040;
      *(v98 + 12) = 2081;
      *(v0 + 488) = v396;
      *(v0 + 496) = v381;
      sub_10025DB08();
      v100 = RawRepresentable<>.hexString.getter();
      v102 = sub_1000136BC(v100, v101, &v412);

      *(v98 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v96, v97, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v98, 0x16u);
      sub_100007BAC(v99);

      v31 = v358;
    }

    sub_100016590(v396, v381);

    goto LABEL_134;
  }

  v41 = *(v0 + 640) + ((*(v344 + 80) + 32) & ~*(v344 + 80));
  sub_100017D5C(v40, v39);
  if (v40)
  {
    v42 = 0;
  }

  else
  {
    v42 = v39 == 0xC000000000000000;
  }

  v43 = !v42;
  v375 = v43;
  v398 = v39 >> 62;
  v372 = BYTE6(v39);
  v393 = *(v344 + 72);
  v44 = __OFSUB__(HIDWORD(v40), v40);
  v351 = v44;
  log = (HIDWORD(v40) - v40);

  v45 = v360;
  while (1)
  {
    v46 = *(v0 + 776);
    sub_1002DB760(v41, v46, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v47 = *v46;
    v48 = *(v401 + 8);
    v49 = v48 >> 62;
    if ((v48 >> 62) > 1)
    {
      if (v49 == 2)
      {
        v31 = *(v47 + 16);
        v51 = *(v47 + 24);
        sub_100017D5C(v47, *(v401 + 8));
        v50 = *(v47 + 16);
        v52 = *(v47 + 24);
      }

      else
      {
        v31 = 0;
        v51 = 0;
        v52 = 0;
        v50 = 0;
      }
    }

    else if (v49)
    {
      v31 = v47;
      v51 = v47 >> 32;
      sub_100017D5C(v47, *(v401 + 8));
      v52 = v47 >> 32;
      v50 = v47;
    }

    else
    {
      v31 = 0;
      v50 = 0;
      v51 = BYTE6(v48);
      v52 = BYTE6(v48);
    }

    if (v52 < v31 || v31 < v50)
    {
      goto LABEL_225;
    }

    if (v49 > 1)
    {
      if (v49 == 2)
      {
        v53 = *(v47 + 16);
        v54 = *(v47 + 24);
      }

      else
      {
        v54 = 0;
        v53 = 0;
      }
    }

    else if (v49)
    {
      v53 = v47;
      v54 = v47 >> 32;
    }

    else
    {
      v53 = 0;
      v54 = BYTE6(v48);
    }

    if (v54 < v51 || v51 < v53)
    {
      goto LABEL_226;
    }

    if (__OFSUB__(v51, v31))
    {
      goto LABEL_227;
    }

    if ((v51 - v31) < 0x39)
    {
      if (v49 <= 1)
      {
        if (!v49)
        {
          goto LABEL_78;
        }

        v55 = v47 >> 32;
LABEL_74:
        v58 = v47;
        goto LABEL_77;
      }

      if (v49 != 2)
      {
        goto LABEL_78;
      }

      v55 = *(v47 + 24);
LABEL_76:
      v58 = *(v47 + 16);
      goto LABEL_77;
    }

    v55 = v31 + 57;
    if (__OFADD__(v31, 57))
    {
      goto LABEL_229;
    }

    if (v49 > 1)
    {
      if (v49 == 2)
      {
        v56 = *(v47 + 16);
        v57 = *(v47 + 24);
      }

      else
      {
        v57 = 0;
        v56 = 0;
      }
    }

    else if (v49)
    {
      v56 = v47;
      v57 = v47 >> 32;
    }

    else
    {
      v56 = 0;
      v57 = BYTE6(v48);
    }

    if (v57 < v55 || v55 < v56)
    {
      goto LABEL_230;
    }

    v58 = 0;
    if (v49 <= 1)
    {
      if (!v49)
      {
        goto LABEL_77;
      }

      goto LABEL_74;
    }

    if (v49 != 3)
    {
      goto LABEL_76;
    }

LABEL_77:
    if (v55 < v58)
    {
      goto LABEL_228;
    }

LABEL_78:
    v59 = Data._Representation.subscript.getter();
    v61 = v60;
    sub_100016590(v47, v48);
    v62 = v61 >> 62;
    if ((v61 >> 62) > 1)
    {
      if (v62 != 2)
      {
        goto LABEL_210;
      }

      v65 = *(v59 + 16);
      v64 = *(v59 + 24);
      v66 = __OFSUB__(v64, v65);
      v63 = v64 - v65;
      if (v66)
      {
        goto LABEL_234;
      }
    }

    else if (v62)
    {
      LODWORD(v63) = HIDWORD(v59) - v59;
      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_235;
      }

      v63 = v63;
    }

    else
    {
      v63 = BYTE6(v61);
    }

    if (v63 != 57)
    {
LABEL_210:
      sub_100016590(v59, v61);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v31 = v404;
    v67 = sub_100A7A194(v59, v61);
    if (v404)
    {
      break;
    }

    v68 = v41;
    v69 = v45;
    v70 = sub_100A7829C(v67, 0);
    v72 = v71;
    v15 = CCECCryptorRelease();
    v73 = v72 >> 62;
    if ((v72 >> 62) > 1)
    {
      if (v73 != 2)
      {
        v284 = 0;
        goto LABEL_221;
      }

      v76 = *(v70 + 16);
      v75 = *(v70 + 24);
      v66 = __OFSUB__(v75, v76);
      v74 = v75 - v76;
      if (v66)
      {
        goto LABEL_237;
      }
    }

    else if (v73)
    {
      LODWORD(v74) = HIDWORD(v70) - v70;
      if (__OFSUB__(HIDWORD(v70), v70))
      {
        goto LABEL_236;
      }

      v74 = v74;
    }

    else
    {
      v74 = BYTE6(v72);
    }

    if (v74 != 28)
    {
      if (v73 == 2)
      {
        v286 = *(v70 + 16);
        v285 = *(v70 + 24);
        v284 = v285 - v286;
        if (!__OFSUB__(v285, v286))
        {
          goto LABEL_221;
        }

        __break(1u);
      }

      else if (v73 == 1)
      {
        if (!__OFSUB__(HIDWORD(v70), v70))
        {
          v284 = HIDWORD(v70) - v70;
LABEL_221:
          sub_100018350();
          v282 = swift_allocError();
          *v287 = 28;
          *(v287 + 8) = v284;
          *(v287 + 16) = 0;
          swift_willThrow();
          sub_100016590(v70, v72);
          goto LABEL_222;
        }

LABEL_245:
        __break(1u);
        return _swift_task_switch(v15, v14, v16);
      }

      v284 = BYTE6(v72);
      goto LABEL_221;
    }

    v77 = *(v0 + 736);
    v78 = *(v0 + 720);
    sub_100016590(v59, v61);
    (*v391)(v77, v387, v78);
    v79 = Data.hash(algorithm:)();
    v81 = v80;
    sub_100016590(v70, v72);
    (*v389)(v77, v78);
    v82 = v81 >> 62;
    if (v81 >> 62 == 3)
    {
      if (v79)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81 == 0xC000000000000000;
      }

      v84 = v398;
      v86 = !v83 || v398 < 3;
      if (((v86 | v375) & 1) == 0)
      {
        v103 = 0;
        v104 = 0xC000000000000000;
        goto LABEL_138;
      }

      v87 = v69;
      v88 = 0;
LABEL_117:
      v89 = v68;
      if (v84 <= 1)
      {
        goto LABEL_118;
      }

      goto LABEL_122;
    }

    v84 = v398;
    v87 = v69;
    if (v82 == 2)
    {
      v91 = *(v79 + 16);
      v90 = *(v79 + 24);
      v66 = __OFSUB__(v90, v91);
      v88 = v90 - v91;
      if (v66)
      {
        goto LABEL_241;
      }

      goto LABEL_117;
    }

    v89 = v68;
    if (v82 == 1)
    {
      LODWORD(v88) = HIDWORD(v79) - v79;
      if (__OFSUB__(HIDWORD(v79), v79))
      {
        goto LABEL_240;
      }

      v88 = v88;
      if (v398 <= 1)
      {
LABEL_118:
        v92 = v372;
        if (v84)
        {
          v92 = log;
          if (v351)
          {
            goto LABEL_238;
          }
        }

        goto LABEL_124;
      }
    }

    else
    {
      v88 = BYTE6(v81);
      if (v398 <= 1)
      {
        goto LABEL_118;
      }
    }

LABEL_122:
    if (v84 != 2)
    {
      if (!v88)
      {
        goto LABEL_136;
      }

LABEL_33:
      sub_100016590(v79, v81);
      v404 = 0;
      goto LABEL_34;
    }

    v94 = *(v396 + 16);
    v93 = *(v396 + 24);
    v66 = __OFSUB__(v93, v94);
    v92 = (v93 - v94);
    if (v66)
    {
      goto LABEL_239;
    }

LABEL_124:
    if (v88 != v92)
    {
      goto LABEL_33;
    }

    if (v88 < 1)
    {
LABEL_136:
      v103 = v79;
      v104 = v81;
LABEL_138:
      sub_100016590(v103, v104);
      v404 = 0;
LABEL_139:
      v105 = *(v0 + 792);
      v106 = *(v0 + 784);
      sub_1002DB7C8(*(v0 + 776), v106, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      sub_1002DB7C8(v106, v105, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v31 = v358;
      v399 = *(v385 + 16);
      if (v399)
      {
        v394 = v385 + ((*(v379 + 80) + 32) & ~*(v379 + 80));

        v107 = 0;
        v108 = v370;
        while (v107 < *(v385 + 16))
        {
          v110 = *(v0 + 792);
          sub_1002DB760(v394 + *(v379 + 72) * v107, *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          v111 = *v110;
          v112 = *(v108 + 8);
          v113 = sub_100496ABC();
          v114 = **(v0 + 712);
          v115 = *(v338 + 8);
          v116 = **(v0 + 792);
          v117 = *(v108 + 8);
          sub_100017D5C(v116, v117);
          sub_10002EA98(57, v116, v117, &v412);
          sub_100496F68(v412, v413, &v410);
          v118 = v411;
          if (v411 >> 60 == 15)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v405 = *(v0 + 792);
          v119 = v410;
          v120 = PublicKey.advertisement.getter(v410, v411);
          v122 = v121;
          v15 = sub_100006654(v119, v118);
          v123 = v115 >> 62;
          v376 = *(v366 + 20);
          if ((v115 >> 62) > 1)
          {
            if (v123 == 2)
            {
              v126 = *(v114 + 16);
              v125 = *(v114 + 24);
              v124 = v125 - v126;
              if (__OFSUB__(v125, v126))
              {
                goto LABEL_244;
              }
            }

            else
            {
              v124 = 0;
            }
          }

          else if (v123)
          {
            if (__OFSUB__(HIDWORD(v114), v114))
            {
              __break(1u);
LABEL_244:
              __break(1u);
              goto LABEL_245;
            }

            v124 = HIDWORD(v114) - v114;
          }

          else
          {
            v124 = BYTE6(v115);
          }

          sub_100A2A240(3);
          v128 = v127;
          v129 = v113;
          sub_100017D5C(v114, v115);
          sub_100017D5C(v120, v122);
          if (v124 >= v128)
          {
            v130 = (v0 + 672);
            sub_100A2AA58(v129, v114, v115, v120, v122, *(v0 + 672));
          }

          else
          {
            v130 = (v0 + 680);
            sub_100A2B118(v129, v114, v115, v120, v122, *(v0 + 680));
          }

          v323 = v120;
          v326 = v122;
          v373 = v107;
          v131 = *v130;
          logb = *(v0 + 1016);
          v352 = v129;
          v332 = *(v0 + 1000);
          v335 = *(v0 + 1272);
          v132 = *(v0 + 976);
          v133 = *(v0 + 920);
          v134 = *(v0 + 856);
          v316 = *(v0 + 968);
          v135 = *(v0 + 840);
          v136 = *(v0 + 832);
          v137 = *(v0 + 696);
          v138 = *(v0 + 688);
          v139 = *(v0 + 656);
          sub_1002DB7C8(v131, v138, type metadata accessor for BeaconPayloadv1);
          sub_1002DB7C8(v138, v137, type metadata accessor for BeaconPayloadv1);
          v140 = v132;
          v318 = v132;
          (*v313)(v132, 1, 1, v133);
          v329 = *(v137 + v311[10]);
          v141 = *v342;
          (*v342)(v134, v137 + v311[5], v135);
          v142 = *(v137 + v311[7]);
          v143 = *(v137 + v311[8]);
          v144 = *(v137 + v311[9]);
          (*v309)(v139, 1, 1, v135);
          sub_1000D2A70(v140, v316, &unk_1016C1120, &qword_1013C49D0);
          v294 = v141;
          v141(&v136[v383[5]], v134, v135);
          sub_1000D2A70(v139, &v136[v383[10]], &unk_101696900, &unk_10138B1E0);
          sub_1000D2A70(v316, &v136[v383[11]], &unk_1016C1120, &qword_1013C49D0);
          v145 = &v136[v383[12]];
          UUID.init()();
          sub_100016590(v323, v326);
          sub_10000B3A8(v316, &unk_1016C1120, &qword_1013C49D0);
          sub_10000B3A8(v139, &unk_101696900, &unk_10138B1E0);
          v146 = *v340;
          (*v340)(v134, v135);
          sub_10000B3A8(v318, &unk_1016C1120, &qword_1013C49D0);
          sub_1002DBBF0(v137, type metadata accessor for BeaconPayloadv1);
          *v136 = v329;
          *&v136[v383[6]] = v142;
          *&v136[v383[7]] = v143;
          *&v136[v383[8]] = v144;
          v136[v383[9]] = 15;
          *&v136[v383[13]] = 256;
          v147 = *(v368 + 48);
          (*v307)(v332, v405 + v376, v335);
          sub_1002DB7C8(v136, v332 + v147, type metadata accessor for RawSearchResult);
          (*v305)(v332, 0, 1, logb);
          if ((*v303)(v332, 1, logb) == 1)
          {
            v148 = *(v0 + 1000);

            sub_10000B3A8(v148, &qword_10169C968, &qword_101398A10);
            v149 = v373;
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v150 = *(v0 + 792);
            v151 = *(v0 + 760);
            sub_1000076D4(v408, qword_10177A818);
            sub_1002DB760(v150, v151, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v152, v153))
            {
              v154 = *(v0 + 1272);
              v155 = *(v0 + 760);
              v156 = swift_slowAlloc();
              v157 = swift_slowAlloc();
              v412 = v157;
              *v156 = 141558275;
              *(v156 + 4) = 1752392040;
              *(v156 + 12) = 2081;
              v158 = *(v366 + 20);
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
              v159 = dispatch thunk of CustomStringConvertible.description.getter();
              v161 = v160;
              sub_1002DBBF0(v155, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v162 = sub_1000136BC(v159, v161, &v412);

              *(v156 + 14) = v162;
              _os_log_impl(&_mh_execute_header, v152, v153, "Could not create search result for beacon: %{private,mask.hash}s.", v156, 0x16u);
              sub_100007BAC(v157);
              v149 = v373;
            }

            else
            {
              v109 = *(v0 + 760);

              sub_1002DBBF0(v109, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            }
          }

          else
          {
            v377 = v146;
            v163 = *(v0 + 1088);
            v164 = *(v0 + 1080);
            sub_1000D2AD8(*(v0 + 1000), v163, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v163, v164, &qword_10169C970, &qword_101398A18);
            v165 = *(v368 + 48);
            swift_beginAccess();
            v166 = sub_1005CAD18(v164, *(v0 + 520));
            v167 = *(v0 + 1272);
            if (v166)
            {
              v168 = v166;
              v169 = *(v0 + 1088);
              v170 = *(v0 + 1080);
              v171 = *(v0 + 1072);
              swift_endAccess();
              sub_1002DBBF0(v164 + v165, type metadata accessor for RawSearchResult);
              v406 = *v356;
              (*v356)(v170, v167);
              sub_1000D2A70(v169, v171, &qword_10169C970, &qword_101398A18);
              v172 = (v171 + *(v368 + 48));
              v173 = *(v168 + 40);
              Hasher.init(_seed:)();
              sub_100D15128();
              v174 = Hasher._finalize()();
              v175 = -1 << *(v168 + 32);
              v176 = v174 & ~v175;
              if ((*(v168 + 56 + ((v176 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v176))
              {
                v177 = ~v175;
                v178 = *v172;
                v179 = *(v298 + 72);
                do
                {
                  v180 = *(v0 + 816);
                  sub_1002DB760(*(v168 + 48) + v176 * v179, v180, type metadata accessor for RawSearchResult);
                  v181 = *(v0 + 816);
                  if (*v180 == v178 && (v182 = v383[5], v183 = static Date.== infix(_:_:)(), v181 = *(v0 + 816), (v183 & 1) != 0) && *(v181 + v383[6]) == *&v172[v383[6]] && *(v181 + v383[7]) == *&v172[v383[7]] && *(v181 + v383[8]) == *&v172[v383[8]])
                  {
                    v184 = v383[12];
                    v185 = *(v0 + 816);
                    v186 = static UUID.== infix(_:_:)();
                    sub_1002DBBF0(v185, type metadata accessor for RawSearchResult);
                    if (v186)
                    {
                      goto LABEL_176;
                    }
                  }

                  else
                  {
                    sub_1002DBBF0(v181, type metadata accessor for RawSearchResult);
                  }

                  v176 = (v176 + 1) & v177;
                }

                while (((*(v168 + 56 + ((v176 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v176) & 1) != 0);
              }

              v187 = *(v0 + 832);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_1002DB760(v172, v187, type metadata accessor for RawSearchResult);
              v412 = v168;
              sub_100DFE348(v187, v176, isUniquelyReferenced_nonNull_native);
              v168 = v412;
LABEL_176:
              sub_1002DBBF0(v172, type metadata accessor for RawSearchResult);
              v189 = *(v0 + 1128);
              v190 = *(v0 + 1088);
              v406(*(v0 + 1072), *(v0 + 1272));
              sub_1000D2A70(v190, v189, &qword_10169C970, &qword_101398A18);
              v191 = *(v368 + 48);
              swift_beginAccess();
              sub_1001DE1B0(v168, v189);
            }

            else
            {
              v192 = *(v0 + 1128);
              v193 = *(v0 + 1088);
              v194 = *(v0 + 1080);
              v195 = *(v0 + 1064);
              swift_endAccess();
              sub_1002DBBF0(v164 + v165, type metadata accessor for RawSearchResult);
              v406 = *v356;
              v333 = v167;
              (*v356)(v194, v167);
              sub_1000D2A70(v193, v192, &qword_10169C970, &qword_101398A18);
              v191 = *(v368 + 48);
              sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
              v196 = *(v298 + 72);
              v197 = (*(v298 + 80) + 32) & ~*(v298 + 80);
              v198 = swift_allocObject();
              *(v198 + 16) = xmmword_101385D80;
              sub_1000D2A70(v193, v195, &qword_10169C970, &qword_101398A18);
              sub_1002DB7C8(v195 + *(v368 + 48), v198 + v197, type metadata accessor for RawSearchResult);
              v406(v195, v333);
              v199 = sub_10112A090(v198);
              swift_setDeallocating();
              sub_1002DBBF0(v198 + v197, type metadata accessor for RawSearchResult);
              swift_deallocClassInstance();
              swift_beginAccess();
              v200 = *(v0 + 520);
              v201 = swift_isUniquelyReferenced_nonNull_native();
              v412 = *(v0 + 520);
              sub_100FFC200(v199, v192, v201);
              v406(v192, v333);
              *(v0 + 520) = v412;
            }

            swift_endAccess();
            sub_1002DBBF0(*(v0 + 1128) + v191, type metadata accessor for RawSearchResult);
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v202 = *(v0 + 1088);
            v203 = *(v0 + 1056);
            v204 = *(v0 + 1048);
            v205 = *(v0 + 1040);
            v206 = *(v0 + 792);
            v207 = *(v0 + 768);
            sub_1000076D4(v408, qword_10177A818);
            sub_1002DB760(v206, v207, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            sub_1000D2A70(v202, v203, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v202, v204, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v202, v205, &qword_10169C970, &qword_101398A18);
            v208 = Logger.logObject.getter();
            v209 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v208, v209))
            {
              v336 = v209;
              loga = v208;
              v210 = *(v0 + 1272);
              v211 = *(v0 + 1128);
              v212 = *(v0 + 1056);
              v330 = *(v0 + 1040);
              v324 = *(v0 + 1048);
              v327 = *(v0 + 1032);
              v319 = *(v0 + 840);
              v321 = *(v0 + 856);
              v213 = *(v0 + 768);
              v214 = swift_slowAlloc();
              v412 = swift_slowAlloc();
              *v214 = 141559043;
              *(v214 + 4) = 1752392040;
              *(v214 + 12) = 2081;
              v215 = *(v366 + 20);
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
              v216 = dispatch thunk of CustomStringConvertible.description.getter();
              v218 = v217;
              sub_1002DBBF0(v213, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v219 = sub_1000136BC(v216, v218, &v412);

              *(v214 + 14) = v219;
              *(v214 + 22) = 2082;
              sub_1000D2A70(v212, v211, &qword_10169C970, &qword_101398A18);
              v220 = v211 + *(v368 + 48);
              v294(v321, v220 + v383[5], v319);
              sub_1002DBBF0(v220, type metadata accessor for RawSearchResult);
              v406(v211, v210);
              sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
              v221 = dispatch thunk of CustomStringConvertible.description.getter();
              v223 = v222;
              v377(v321, v319);
              sub_10000B3A8(v212, &qword_10169C970, &qword_101398A18);
              v224 = sub_1000136BC(v221, v223, &v412);

              *(v214 + 24) = v224;
              *(v214 + 32) = 2082;
              sub_1000D2A70(v324, v211, &qword_10169C970, &qword_101398A18);
              v225 = v211 + *(v368 + 48);
              LOBYTE(v224) = *(v225 + v383[9]);
              sub_1002DBBF0(v225, type metadata accessor for RawSearchResult);
              v406(v211, v210);
              v226 = sub_100013454(v224);
              v228 = v227;
              sub_10000B3A8(v324, &qword_10169C970, &qword_101398A18);
              v229 = sub_1000136BC(v226, v228, &v412);

              *(v214 + 34) = v229;
              *(v214 + 42) = 2048;
              sub_1000D2A70(v330, v327, &qword_10169C970, &qword_101398A18);
              swift_beginAccess();
              v230 = *(v0 + 520);
              if (*(v230 + 16) && (v231 = sub_1000210EC(*(v0 + 1032)), (v232 & 1) != 0))
              {
                v233 = *(*(v230 + 56) + 8 * v231);
                swift_endAccess();
                v234 = *(v233 + 16);
              }

              else
              {
                swift_endAccess();
                v234 = 0;
              }

              v240 = *(v0 + 1272);
              v241 = *(v0 + 1088);
              v242 = *(v0 + 1040);
              v243 = *(v0 + 1032);
              sub_1002DBBF0(v243 + *(v368 + 48), type metadata accessor for RawSearchResult);
              v406(v243, v240);
              sub_10000B3A8(v242, &qword_10169C970, &qword_101398A18);
              *(v214 + 44) = v234;
              _os_log_impl(&_mh_execute_header, loga, v336, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v214, 0x34u);
              swift_arrayDestroy();

              v239 = v241;
            }

            else
            {
              v235 = *(v0 + 1088);
              v236 = *(v0 + 1056);
              v237 = *(v0 + 1048);
              v238 = *(v0 + 768);
              sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

              sub_10000B3A8(v237, &qword_10169C970, &qword_101398A18);
              sub_10000B3A8(v236, &qword_10169C970, &qword_101398A18);
              sub_1002DBBF0(v238, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v239 = v235;
            }

            sub_10000B3A8(v239, &qword_10169C970, &qword_101398A18);
            v149 = v373;
          }

          v107 = v149 + 1;
          sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          v108 = v370;
          if (v107 == v399)
          {

            sub_100016590(v396, v381);

            v404 = 0;
            v31 = v358;
            goto LABEL_190;
          }
        }

        goto LABEL_231;
      }

      sub_100016590(v396, v381);

LABEL_190:
      sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_134:
      v37 = v364 + 1;
      if (v364 + 1 == v354)
      {
        goto LABEL_202;
      }

      goto LABEL_20;
    }

    sub_100017D5C(v396, v381);
    sub_100017D5C(v396, v381);
    sub_100017D5C(v79, v81);
    v95 = sub_100F0B1BC(v79, v81, v396, v381);
    v404 = 0;
    sub_100016590(v79, v81);
    sub_100016590(v79, v81);
    sub_100016590(v396, v381);
    if (v95)
    {
      goto LABEL_139;
    }

LABEL_34:
    sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v41 = v89 + v393;
    v45 = v87 - 1;
    if (!v45)
    {
      goto LABEL_129;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_242;
  }

LABEL_209:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v278 = swift_allocObject();
  *(v278 + 16) = xmmword_101385D80;
  *(v0 + 600) = v31;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v279 = String.init<A>(describing:)();
  v281 = v280;
  *(v278 + 56) = &type metadata for String;
  *(v278 + 64) = sub_100008C00();
  *(v278 + 32) = v279;
  *(v278 + 40) = v281;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v282 = swift_allocError();
  *v283 = 0;
  swift_willThrow();

LABEL_222:
  v412 = 0;
  v413 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v288 = v413;
  *(v0 + 472) = v412;
  *(v0 + 480) = v288;
  v289._countAndFlagsBits = 0xD000000000000021;
  v289._object = 0x800000010134CB30;
  String.append(_:)(v289);
  *(v0 + 584) = v282;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v290 = *(v0 + 472);
  v291 = *(v0 + 480);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002B37A0()
{
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1432);
  v4 = *(v0 + 1392);
  v5 = *(v0 + 1328);
  v6 = *(v0 + 1288);
  v7 = *(v0 + 1280);
  v8 = *(v0 + 1272);
  (*(v0 + 1448))(v5, *(v0 + 1344), v8);
  v9 = *(v7 + 80);
  *(v0 + 1776) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 1496) = v11;
  *(v11 + 16) = v4;
  v3(v11 + v10, v5, v8);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 1504) = v13;
  *v13 = v0;
  v13[1] = sub_1002B3908;
  v14 = *(v0 + 1208);
  v15 = *(v0 + 1200);

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB628, v11, v15);
}

uint64_t sub_1002B3908()
{
  v1 = *(*v0 + 1504);
  v2 = *(*v0 + 1496);
  v3 = *(*v0 + 648);
  v5 = *v0;

  return _swift_task_switch(sub_1002B3A34, v3, 0);
}

uint64_t sub_1002B3A34()
{
  v528 = v0;
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1208);
  if ((*(*(v0 + 1224) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 1392);
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    v4 = sub_1002B6BC4;
    v5 = v3;
    v6 = 0;

    return _swift_task_switch(v4, v5, v6);
  }

  v7 = *(v0 + 1456);
  v8 = *(v0 + 1448);
  v9 = *(v0 + 1336);
  v10 = *(v0 + 1272);
  v11 = *(v0 + 1232);
  sub_1002DB7C8(v2, v11, type metadata accessor for MemberSharingCircle);
  v8(v9, v11 + *(v1 + 24), v10);
  sub_1002DBBF0(v11, type metadata accessor for MemberSharingCircle);
  v12 = *(v0 + 1488);
  v13 = *(v0 + 1480);
  v14 = *(v0 + 1472);
  v15 = sub_100496ABC();
  *(v0 + 1528) = v15;
  if (v12)
  {
    v16 = *(v0 + 1480);
    v17 = *(v0 + 1472);
    v18 = *(v0 + 1384);
    v19 = *(v0 + 1344);
    v20 = *(v0 + 1336);
    v21 = *(v0 + 1280);
    v22 = *(v0 + 1272);
    if (*(v0 + 632))
    {
      v23 = *(v0 + 632);
    }

    sub_100006654(v17, v16);
    v24 = *(v21 + 8);
    v24(v19, v22);
    sub_1002DBBF0(v18, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v24(v20, v22);
    v25 = *(v0 + 1384);
    v26 = *(v0 + 1376);
    v27 = *(v0 + 1368);
    v28 = *(v0 + 1344);
    v29 = *(v0 + 1336);
    v30 = *(v0 + 1328);
    v31 = *(v0 + 1320);
    v32 = *(v0 + 1312);
    v33 = *(v0 + 1304);
    v355 = *(v0 + 1296);
    v357 = *(v0 + 1264);
    v359 = *(v0 + 1256);
    v362 = *(v0 + 1248);
    v365 = *(v0 + 1240);
    v367 = *(v0 + 1232);
    v370 = *(v0 + 1208);
    v372 = *(v0 + 1192);
    v375 = *(v0 + 1168);
    v377 = *(v0 + 1152);
    v380 = *(v0 + 1144);
    v383 = *(v0 + 1136);
    v386 = *(v0 + 1128);
    v389 = *(v0 + 1120);
    v392 = *(v0 + 1112);
    v395 = *(v0 + 1104);
    v397 = *(v0 + 1096);
    v400 = *(v0 + 1088);
    v402 = *(v0 + 1080);
    v404 = *(v0 + 1072);
    v407 = *(v0 + 1064);
    v411 = *(v0 + 1056);
    v415 = *(v0 + 1048);
    v419 = *(v0 + 1040);
    v422 = *(v0 + 1032);
    v426 = *(v0 + 1008);
    v429 = *(v0 + 1000);
    v432 = *(v0 + 992);
    v435 = *(v0 + 984);
    v438 = *(v0 + 976);
    v441 = *(v0 + 968);
    v444 = *(v0 + 960);
    v446 = *(v0 + 952);
    logc = *(v0 + 944);
    v455 = *(v0 + 936);
    v458 = *(v0 + 912);
    v461 = *(v0 + 888);
    v464 = *(v0 + 864);
    v467 = *(v0 + 856);
    v470 = *(v0 + 832);
    v473 = *(v0 + 824);
    v476 = *(v0 + 816);
    v481 = *(v0 + 792);
    v485 = *(v0 + 784);
    v488 = *(v0 + 776);
    v491 = *(v0 + 768);
    v494 = *(v0 + 760);
    v497 = *(v0 + 736);
    v500 = *(v0 + 712);
    v503 = *(v0 + 696);
    v507 = *(v0 + 688);
    v512 = *(v0 + 680);
    v515 = *(v0 + 672);
    v518 = *(v0 + 656);
    v34 = *(v0 + 520);

    v35 = *(v0 + 8);

    return v35();
  }

  v37 = *(v0 + 1384);
  v38 = *(v37 + 32);
  *(v0 + 1536) = v38;
  v39 = *(v38 + 16);
  *(v0 + 1544) = v39;
  v40 = *(v0 + 1480);
  v41 = *(v0 + 1472);
  if (v39)
  {
    *(v0 + 1552) = 0;
    if (*(v38 + 16))
    {
      v42 = v40 >> 62;
      v43 = *(v38 + 32);
      *(v0 + 1560) = v43;
      v2 = *(v38 + 40);
      *(v0 + 1568) = v2;
      v44 = *(v38 + 48);
      *(v0 + 1580) = *(v38 + 52);
      *(v0 + 1576) = v44;
      if ((v40 >> 62) > 1)
      {
        if (v42 != 2)
        {
          v47 = 0;
          v45 = 0;
          v48 = 0;
          v46 = 0;
          goto LABEL_212;
        }

        v45 = *(v41 + 16);
        v47 = *(v41 + 24);
      }

      else
      {
        if (!v42)
        {
          v45 = 0;
          v46 = 0;
          v47 = BYTE6(v40);
          v48 = BYTE6(v40);
          goto LABEL_212;
        }

        v47 = v41 >> 32;
        v45 = v41;
      }

      sub_10002E98C(v41, v40);
      if (v47 >= v45)
      {
        v40 = *(v0 + 1480);
        v41 = *(v0 + 1472);
        if (v40 >> 62 == 2)
        {
          v46 = *(v41 + 16);
          v48 = *(v41 + 24);
        }

        else
        {
          v48 = v41 >> 32;
          v46 = v41;
        }

LABEL_212:
        if (v48 >= v47 && v47 >= v46)
        {
          if (!__OFSUB__(v47, v45))
          {
            if ((v47 - v45) >= 0x39)
            {
              v280 = v45 + 57;
              if (__OFADD__(v45, 57))
              {
                goto LABEL_314;
              }

              v281 = v40 >> 62;
              if ((v40 >> 62) > 1)
              {
                if (v281 == 2)
                {
                  v282 = *(v41 + 16);
                  v283 = *(v41 + 24);
                }

                else
                {
                  v283 = 0;
                  v282 = 0;
                }
              }

              else if (v281)
              {
                v283 = v41 >> 32;
                v282 = v41;
              }

              else
              {
                v282 = 0;
                v283 = BYTE6(v40);
              }

              if (v283 < v280 || v280 < v282)
              {
                goto LABEL_315;
              }

              v304 = 0;
              if (v281 <= 1)
              {
                if (!v281)
                {
                  goto LABEL_245;
                }

                goto LABEL_242;
              }

              if (v281 == 3)
              {
LABEL_245:
                if (v280 >= v304)
                {
LABEL_246:
                  sub_100017D5C(v43, v2);
                  sub_100017D5C(v43, v2);
                  v305 = Data._Representation.subscript.getter();
                  v307 = v306;
                  sub_100006654(v41, v40);
                  v308 = v307 >> 62;
                  if ((v307 >> 62) <= 1)
                  {
                    if (!v308)
                    {
                      if (BYTE6(v307) != 57)
                      {
LABEL_257:
                        v324 = v305;
                        v325 = v307;
LABEL_258:
                        sub_100016590(v324, v325);
                        return _assertionFailure(_:_:file:line:flags:)();
                      }

                      goto LABEL_253;
                    }

                    if (!__OFSUB__(HIDWORD(v305), v305))
                    {
                      if (HIDWORD(v305) - v305 != 57)
                      {
                        goto LABEL_257;
                      }

                      goto LABEL_253;
                    }

LABEL_321:
                    __break(1u);
                    swift_once();
                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v326 = swift_allocObject();
                    *(v326 + 16) = v374;
                    *v364 = v40;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v327 = String.init<A>(describing:)();
                    v329 = v328;
                    *(v326 + 56) = &type metadata for String;
                    *(v326 + 64) = sub_100008C00();
                    *(v326 + 32) = v327;
                    *(v326 + 40) = v329;
                    os_log(_:dso:log:_:_:)();

                    sub_1001BAF88();
                    v339 = swift_allocError();
                    *v330 = 0;
                    swift_willThrow();

                    goto LABEL_278;
                  }

                  if (v308 != 2)
                  {
                    goto LABEL_257;
                  }

                  v310 = *(v305 + 16);
                  v309 = *(v305 + 24);
                  v91 = __OFSUB__(v309, v310);
                  v311 = v309 - v310;
                  if (!v91)
                  {
                    if (v311 != 57)
                    {
                      goto LABEL_257;
                    }

LABEL_253:
                    v312 = sub_100A7A194(v305, v307);
                    v313 = sub_100A7829C(v312, 0);
                    *(v0 + 1584) = v313;
                    *(v0 + 1592) = v314;
                    v331 = v313;
                    v93 = v314;
                    v4 = CCECCryptorRelease();
                    v332 = v93 >> 62;
                    if ((v93 >> 62) <= 1)
                    {
                      if (v332)
                      {
                        LODWORD(v333) = HIDWORD(v331) - v331;
                        if (__OFSUB__(HIDWORD(v331), v331))
                        {
                          goto LABEL_325;
                        }

                        v333 = v333;
                      }

                      else
                      {
                        v333 = BYTE6(v93);
                      }

                      goto LABEL_282;
                    }

                    if (v332 != 2)
                    {
                      v350 = 0;
                      goto LABEL_295;
                    }

                    v336 = *(v331 + 16);
                    v335 = *(v331 + 24);
                    v91 = __OFSUB__(v335, v336);
                    v333 = v335 - v336;
                    if (!v91)
                    {
LABEL_282:
                      if (v333 == 28)
                      {
                        sub_100016590(v305, v307);
                        v345 = swift_task_alloc();
                        *(v0 + 1600) = v345;
                        *v345 = v0;
                        v345[1] = sub_1002BA248;
                        v346 = *(v0 + 1528);
                        v347 = *(v0 + 1336);
                        v348 = *(v0 + 1008);
                        v349 = *(v0 + 648);

                        return sub_1002D7014(v348, v43, v2, v346, v331, v93, 0, v347);
                      }

                      if (v332 == 2)
                      {
                        v352 = *(v331 + 16);
                        v351 = *(v331 + 24);
                        v350 = v351 - v352;
                        if (!__OFSUB__(v351, v352))
                        {
                          goto LABEL_295;
                        }

                        __break(1u);
                      }

                      else if (v332 == 1)
                      {
                        if (__OFSUB__(HIDWORD(v331), v331))
                        {
                          goto LABEL_326;
                        }

                        v350 = HIDWORD(v331) - v331;
                        goto LABEL_295;
                      }

                      v350 = BYTE6(v93);
LABEL_295:
                      sub_100018350();
                      v353 = swift_allocError();
                      *v354 = 28;
                      *(v354 + 8) = v350;
                      *(v354 + 16) = 0;
                      swift_willThrow();
                      sub_100016590(v331, v93);
                      goto LABEL_254;
                    }

                    __break(1u);
LABEL_272:
                    v334 = 0;
LABEL_277:
                    sub_100018350();
                    v339 = swift_allocError();
                    *v340 = 28;
                    *(v340 + 8) = v334;
                    *(v340 + 16) = 0;
                    swift_willThrow();
                    sub_100016590(v93, v2);
LABEL_278:
                    v526 = 0;
                    v527 = 0xE000000000000000;
                    _StringGuts.grow(_:)(35);
                    v341 = v527;
                    *(v0 + 472) = v526;
                    *(v0 + 480) = v341;
                    v342._countAndFlagsBits = 0xD000000000000021;
                    v342._object = 0x800000010134CB30;
                    String.append(_:)(v342);
                    *(v0 + 584) = v339;
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    _print_unlocked<A, B>(_:_:)();
                    v343 = *(v0 + 472);
                    v344 = *(v0 + 480);
                    return _assertionFailure(_:_:file:line:flags:)();
                  }

LABEL_320:
                  __break(1u);
                  goto LABEL_321;
                }

LABEL_305:
                __break(1u);
LABEL_306:
                __break(1u);
LABEL_307:
                __break(1u);
                goto LABEL_308;
              }
            }

            else
            {
              v279 = v40 >> 62;
              if ((v40 >> 62) <= 1)
              {
                if (!v279)
                {
                  goto LABEL_246;
                }

                v280 = v41 >> 32;
LABEL_242:
                v304 = v41;
                goto LABEL_245;
              }

              if (v279 != 2)
              {
                goto LABEL_246;
              }

              v280 = *(v41 + 24);
            }

            v304 = *(v41 + 16);
            goto LABEL_245;
          }

LABEL_304:
          __break(1u);
          goto LABEL_305;
        }

LABEL_303:
        __break(1u);
        goto LABEL_304;
      }

LABEL_302:
      __break(1u);
      goto LABEL_303;
    }

LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  v2 = *(v0 + 1344);
  v49 = *(v0 + 1336);
  v50 = *(v0 + 1280);
  v51 = *(v0 + 1272);

  sub_100006654(v41, v40);
  v52 = *(v50 + 8);
  v52(v2, v51);
  sub_1002DBBF0(v37, type metadata accessor for KeyDropFetchResponse.LocationPayload);
  v52(v49, v51);
  v53 = *(v0 + 1408) + 1;
  if (v53 != *(v0 + 1400))
  {
    v2 = &qword_1016980D0;
    v40 = &unk_10138F3B0;
    while (1)
    {
      *(v0 + 1408) = v53;
      v266 = *(v0 + 632);
      if (!v266)
      {
        v266 = _swiftEmptyArrayStorage;
      }

      if (v53 >= v266[2])
      {
        break;
      }

      v267 = *(v0 + 1384);
      v268 = *(v0 + 1352);
      v269 = *(v0 + 1280);
      v270 = *(v0 + 1272);
      v271 = *(v0 + 1264);
      sub_1002DB760(v266 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v53, v267, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v272 = *(v267 + 16);
      v273 = *(v267 + 24);
      sub_1000D2A70(v267 + *(v268 + 28), v271, &qword_1016980D0, &unk_10138F3B0);
      v274 = *(v269 + 48);
      *(v0 + 1416) = v274;
      *(v0 + 1424) = (v269 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v274(v271, 1, v270) != 1)
      {
        v294 = *(v0 + 1344);
        v295 = *(v0 + 1280);
        v296 = *(v0 + 1272);
        v297 = *(v0 + 1264);
        v298 = *(v0 + 1256);
        v299 = *(v295 + 32);
        *(v0 + 1432) = v299;
        *(v0 + 1440) = (v295 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v299(v294, v297, v296);
        v300 = *(v295 + 16);
        *(v0 + 1448) = v300;
        *(v0 + 1456) = (v295 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v300(v298, v294, v296);
        (*(v295 + 56))(v298, 0, 1, v296);
        v301 = swift_task_alloc();
        *(v0 + 1464) = v301;
        *v301 = v0;
        v301[1] = sub_1002B09AC;
        v302 = *(v0 + 1256);
        v303 = *(v0 + 648);

        return sub_1002D5B7C(v272, v273, v302);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      v275 = type metadata accessor for Logger();
      sub_1000076D4(v275, qword_10177A818);
      v276 = Logger.logObject.getter();
      v277 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v276, v277))
      {
        v278 = swift_slowAlloc();
        *v278 = 0;
        _os_log_impl(&_mh_execute_header, v276, v277, "Missing share id in payload.", v278, 2u);
      }

      v265 = *(v0 + 1384);

      sub_1002DBBF0(v265, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v53 = *(v0 + 1408) + 1;
      if (v53 == *(v0 + 1400))
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

LABEL_17:
  v54 = _swiftEmptyArrayStorage;
  if (*(v0 + 632))
  {
    v55 = *(v0 + 632);
  }

  if (*(v0 + 624))
  {
    v54 = *(v0 + 624);
  }

  v456 = v54[2];
  if (!v456)
  {

LABEL_228:

    v284 = *(v0 + 1384);
    v285 = *(v0 + 1376);
    v286 = *(v0 + 1368);
    v287 = *(v0 + 1344);
    v288 = *(v0 + 1336);
    v289 = *(v0 + 1328);
    v290 = *(v0 + 1320);
    v291 = *(v0 + 1312);
    v292 = *(v0 + 1304);
    v356 = *(v0 + 1296);
    v358 = *(v0 + 1264);
    v361 = *(v0 + 1256);
    v363 = *(v0 + 1248);
    v366 = *(v0 + 1240);
    v369 = *(v0 + 1232);
    v371 = *(v0 + 1208);
    v373 = *(v0 + 1192);
    v376 = *(v0 + 1168);
    v379 = *(v0 + 1152);
    v382 = *(v0 + 1144);
    v385 = *(v0 + 1136);
    v388 = *(v0 + 1128);
    v391 = *(v0 + 1120);
    v394 = *(v0 + 1112);
    v396 = *(v0 + 1104);
    v399 = *(v0 + 1096);
    v401 = *(v0 + 1088);
    v403 = *(v0 + 1080);
    v406 = *(v0 + 1072);
    v410 = *(v0 + 1064);
    v414 = *(v0 + 1056);
    v418 = *(v0 + 1048);
    v421 = *(v0 + 1040);
    v425 = *(v0 + 1032);
    v428 = *(v0 + 1008);
    v431 = *(v0 + 1000);
    v434 = *(v0 + 992);
    v437 = *(v0 + 984);
    v440 = *(v0 + 976);
    v443 = *(v0 + 968);
    v445 = *(v0 + 960);
    v449 = *(v0 + 952);
    logd = *(v0 + 944);
    v457 = *(v0 + 936);
    v460 = *(v0 + 912);
    v463 = *(v0 + 888);
    v466 = *(v0 + 864);
    v469 = *(v0 + 856);
    v472 = *(v0 + 832);
    v475 = *(v0 + 824);
    v480 = *(v0 + 816);
    v484 = *(v0 + 792);
    v487 = *(v0 + 784);
    v490 = *(v0 + 776);
    v493 = *(v0 + 768);
    v496 = *(v0 + 760);
    v499 = *(v0 + 736);
    v502 = *(v0 + 712);
    v506 = *(v0 + 696);
    v511 = *(v0 + 688);
    v514 = *(v0 + 680);
    v517 = *(v0 + 672);
    v523 = *(v0 + 656);
    swift_beginAccess();
    v520 = *(v0 + 520);

    v293 = *(v0 + 8);

    return v293(v520);
  }

  v56 = *(v0 + 1280);
  v364 = (v0 + 600);
  v57 = *(v0 + 1024);
  v459 = *(v0 + 1016);
  v58 = *(v0 + 848);
  v368 = *(v0 + 808);
  v492 = *(v0 + 800);
  v59 = *(v0 + 792);
  v516 = *(v0 + 776);
  v439 = *(v0 + 752);
  v474 = *(v0 + 744);
  v60 = *(v0 + 728);
  v465 = v54 + 4;
  v427 = *(v0 + 712);
  v501 = (v60 + 104);
  v498 = (v60 + 8);
  v486 = *(v0 + 704);
  v393 = (*(v0 + 928) + 56);
  v436 = (v58 + 16);
  v390 = *(v0 + 664);
  v387 = (v58 + 56);
  v433 = (v58 + 8);
  v384 = (v56 + 16);
  v378 = (v57 + 48);
  v381 = (v57 + 56);
  v462 = *(*(v0 + 640) + 16);
  v442 = (v56 + 8);
  v495 = enum case for HashAlgorithm.sha256(_:);

  v40 = 0;
  v61 = 0;
  v374 = xmmword_101385D80;
  v430 = v54;
  v471 = v59;
  while (1)
  {
    if (v61 >= v54[2])
    {
      goto LABEL_309;
    }

    v62 = v462;
    v468 = v61;
    v63 = &v465[3 * v61];
    v65 = *v63;
    v64 = v63[1];
    v489 = v64;
    v513 = v63[2];
    if (v462)
    {
      break;
    }

    sub_100017D5C(v65, v64);

LABEL_132:
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    sub_1000076D4(v116, qword_10177A818);
    sub_100017D5C(v65, v489);

    v2 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();
    sub_100016590(v65, v489);

    if (os_log_type_enabled(v2, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v526 = v119;
      *v118 = 141558275;
      *(v118 + 4) = 1752392040;
      *(v118 + 12) = 2081;
      *(v0 + 488) = v65;
      *(v0 + 496) = v489;
      sub_10025DB08();
      v120 = RawRepresentable<>.hexString.getter();
      v122 = sub_1000136BC(v120, v121, &v526);

      *(v118 + 14) = v122;
      _os_log_impl(&_mh_execute_header, v2, v117, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v118, 0x16u);
      sub_100007BAC(v119);
    }

    sub_100016590(v65, v489);

LABEL_137:
    v61 = v468 + 1;
    v54 = v430;
    if (v468 + 1 == v456)
    {
      goto LABEL_228;
    }
  }

  v66 = *(v0 + 640) + ((*(v439 + 80) + 32) & ~*(v439 + 80));
  sub_100017D5C(v65, v64);
  if (v65)
  {
    v67 = 0;
  }

  else
  {
    v67 = v64 == 0xC000000000000000;
  }

  v68 = !v67;
  v482 = v68;
  v508 = v64 >> 62;
  v477 = BYTE6(v64);
  v504 = *(v439 + 72);
  v69 = __OFSUB__(HIDWORD(v65), v65);
  log = v69;
  v447 = HIDWORD(v65) - v65;

  v519 = v65;
  while (1)
  {
    v521 = v62;
    v71 = *(v0 + 776);
    sub_1002DB760(v66, v71, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v2 = *v71;
    v72 = *(v516 + 8);
    v73 = v72 >> 62;
    if ((v72 >> 62) > 1)
    {
      if (v73 == 2)
      {
        v74 = *(v2 + 16);
        v76 = *(v2 + 24);
        sub_100017D5C(v2, *(v516 + 8));
        v75 = *(v2 + 16);
        v77 = *(v2 + 24);
      }

      else
      {
        v74 = 0;
        v76 = 0;
        v77 = 0;
        v75 = 0;
      }
    }

    else if (v73)
    {
      v74 = v2;
      v76 = v2 >> 32;
      sub_100017D5C(v2, *(v516 + 8));
      v77 = v2 >> 32;
      v75 = v2;
    }

    else
    {
      v74 = 0;
      v75 = 0;
      v76 = BYTE6(v72);
      v77 = BYTE6(v72);
    }

    if (v77 < v74 || v74 < v75)
    {
      goto LABEL_297;
    }

    if (v73 > 1)
    {
      if (v73 == 2)
      {
        v78 = *(v2 + 16);
        v79 = *(v2 + 24);
      }

      else
      {
        v79 = 0;
        v78 = 0;
      }
    }

    else if (v73)
    {
      v78 = v2;
      v79 = v2 >> 32;
    }

    else
    {
      v78 = 0;
      v79 = BYTE6(v72);
    }

    if (v79 < v76 || v76 < v78)
    {
      goto LABEL_298;
    }

    if (__OFSUB__(v76, v74))
    {
      goto LABEL_299;
    }

    if ((v76 - v74) < 0x39)
    {
      if (v73 <= 1)
      {
        if (!v73)
        {
          goto LABEL_81;
        }

        v80 = v2 >> 32;
LABEL_77:
        v83 = v2;
        goto LABEL_80;
      }

      if (v73 != 2)
      {
        goto LABEL_81;
      }

      v80 = *(v2 + 24);
LABEL_79:
      v83 = *(v2 + 16);
      goto LABEL_80;
    }

    v80 = v74 + 57;
    if (__OFADD__(v74, 57))
    {
      goto LABEL_306;
    }

    if (v73 > 1)
    {
      if (v73 == 2)
      {
        v81 = *(v2 + 16);
        v82 = *(v2 + 24);
      }

      else
      {
        v82 = 0;
        v81 = 0;
      }
    }

    else if (v73)
    {
      v81 = v2;
      v82 = v2 >> 32;
    }

    else
    {
      v81 = 0;
      v82 = BYTE6(v72);
    }

    if (v82 < v80 || v80 < v81)
    {
      goto LABEL_307;
    }

    v83 = 0;
    if (v73 <= 1)
    {
      if (!v73)
      {
        goto LABEL_80;
      }

      goto LABEL_77;
    }

    if (v73 != 3)
    {
      goto LABEL_79;
    }

LABEL_80:
    if (v80 < v83)
    {
      goto LABEL_300;
    }

LABEL_81:
    v84 = Data._Representation.subscript.getter();
    v86 = v85;
    sub_100016590(v2, v72);
    v87 = v86 >> 62;
    if ((v86 >> 62) > 1)
    {
      if (v87 != 2)
      {
        goto LABEL_260;
      }

      v90 = *(v84 + 16);
      v89 = *(v84 + 24);
      v91 = __OFSUB__(v89, v90);
      v88 = v89 - v90;
      if (v91)
      {
        goto LABEL_310;
      }
    }

    else if (v87)
    {
      LODWORD(v88) = HIDWORD(v84) - v84;
      if (__OFSUB__(HIDWORD(v84), v84))
      {
        goto LABEL_311;
      }

      v88 = v88;
    }

    else
    {
      v88 = BYTE6(v86);
    }

    if (v88 != 57)
    {
LABEL_260:
      v324 = v84;
      v325 = v86;
      goto LABEL_258;
    }

    v92 = sub_100A7A194(v84, v86);
    v93 = sub_100A7829C(v92, 0);
    v2 = v94;
    v4 = CCECCryptorRelease();
    v95 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v95 != 2)
      {
        goto LABEL_272;
      }

      v98 = *(v93 + 16);
      v97 = *(v93 + 24);
      v91 = __OFSUB__(v97, v98);
      v96 = v97 - v98;
      if (v91)
      {
        goto LABEL_313;
      }
    }

    else if (v95)
    {
      LODWORD(v96) = HIDWORD(v93) - v93;
      if (__OFSUB__(HIDWORD(v93), v93))
      {
        goto LABEL_312;
      }

      v96 = v96;
    }

    else
    {
      v96 = BYTE6(v2);
    }

    if (v96 != 28)
    {
      break;
    }

    v99 = *(v0 + 736);
    v100 = *(v0 + 720);
    sub_100016590(v84, v86);
    (*v501)(v99, v495, v100);
    v101 = Data.hash(algorithm:)();
    v103 = v102;
    sub_100016590(v93, v2);
    (*v498)(v99, v100);
    v104 = v103 >> 62;
    if (v103 >> 62 == 3)
    {
      if (v101)
      {
        v105 = 0;
      }

      else
      {
        v105 = v103 == 0xC000000000000000;
      }

      v106 = v508;
      v108 = !v105 || v508 < 3;
      v65 = v519;
      if (((v108 | v482) & 1) == 0)
      {
        v123 = 0;
        v124 = 0xC000000000000000;
LABEL_141:
        sub_100016590(v123, v124);
        v40 = 0;
LABEL_142:
        v125 = *(v0 + 792);
        v2 = *(v0 + 784);
        sub_1002DB7C8(*(v0 + 776), v2, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        sub_1002DB7C8(v2, v125, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v522 = *(v513 + 16);
        if (v522)
        {
          v505 = v513 + ((*(v486 + 80) + 32) & ~*(v486 + 80));

          v126 = 0;
          v127 = v471;
          while (v126 < *(v513 + 16))
          {
            v129 = *(v0 + 792);
            sub_1002DB760(v505 + *(v486 + 72) * v126, *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
            v130 = *v129;
            v131 = *(v127 + 8);
            v132 = sub_100496ABC();
            v133 = v127;
            v134 = **(v0 + 712);
            v135 = *(v427 + 8);
            v136 = **(v0 + 792);
            v137 = *(v133 + 8);
            sub_100017D5C(v136, v137);
            sub_10002EA98(57, v136, v137, &v526);
            sub_100496F68(v526, v527, &v524);
            v138 = v525;
            if (v525 >> 60 == 15)
            {
              return _assertionFailure(_:_:file:line:flags:)();
            }

            v483 = v126;
            loga = *(v0 + 792);
            v139 = v524;
            v140 = PublicKey.advertisement.getter(v524, v525);
            v142 = v141;
            v4 = sub_100006654(v139, v138);
            v143 = v135 >> 62;
            v478 = *(v474 + 20);
            if ((v135 >> 62) > 1)
            {
              if (v143 == 2)
              {
                v146 = *(v134 + 16);
                v145 = *(v134 + 24);
                v144 = v145 - v146;
                if (__OFSUB__(v145, v146))
                {
                  goto LABEL_323;
                }
              }

              else
              {
                v144 = 0;
              }
            }

            else if (v143)
            {
              if (__OFSUB__(HIDWORD(v134), v134))
              {
                __break(1u);
LABEL_323:
                __break(1u);
                goto LABEL_324;
              }

              v144 = HIDWORD(v134) - v134;
            }

            else
            {
              v144 = BYTE6(v135);
            }

            sub_100A2A240(3);
            v148 = v147;
            v149 = v132;
            sub_100017D5C(v134, v135);
            sub_100017D5C(v140, v142);
            if (v144 >= v148)
            {
              v150 = (v0 + 672);
              sub_100A2AA58(v149, v134, v135, v140, v142, *(v0 + 672));
            }

            else
            {
              v150 = (v0 + 680);
              sub_100A2B118(v149, v134, v135, v140, v142, *(v0 + 680));
            }

            v448 = v149;
            v151 = *v150;
            v420 = *(v0 + 1272);
            v423 = *(v0 + 1016);
            v416 = *(v0 + 1000);
            v152 = *(v0 + 976);
            v398 = *(v0 + 968);
            v153 = *(v0 + 920);
            v509 = *(v0 + 856);
            v405 = v140;
            v408 = v142;
            v154 = *(v0 + 840);
            v155 = *(v0 + 832);
            v156 = *(v0 + 696);
            v157 = *(v0 + 688);
            v158 = *(v0 + 656);
            sub_1002DB7C8(v151, v157, type metadata accessor for BeaconPayloadv1);
            sub_1002DB7C8(v157, v156, type metadata accessor for BeaconPayloadv1);
            (*v393)(v152, 1, 1, v153);
            v412 = *(v156 + v390[10]);
            v159 = *v436;
            (*v436)(v509, v156 + v390[5], v154);
            v160 = *(v156 + v390[7]);
            v161 = *(v156 + v390[8]);
            v162 = *(v156 + v390[9]);
            (*v387)(v158, 1, 1, v154);
            sub_1000D2A70(v152, v398, &unk_1016C1120, &qword_1013C49D0);
            v360 = v159;
            v159(&v155[v492[5]], v509, v154);
            sub_1000D2A70(v158, &v155[v492[10]], &unk_101696900, &unk_10138B1E0);
            sub_1000D2A70(v398, &v155[v492[11]], &unk_1016C1120, &qword_1013C49D0);
            v163 = &v155[v492[12]];
            UUID.init()();
            sub_100016590(v405, v408);
            sub_10000B3A8(v398, &unk_1016C1120, &qword_1013C49D0);
            sub_10000B3A8(v158, &unk_101696900, &unk_10138B1E0);
            v164 = *v433;
            (*v433)(v509, v154);
            sub_10000B3A8(v152, &unk_1016C1120, &qword_1013C49D0);
            sub_1002DBBF0(v156, type metadata accessor for BeaconPayloadv1);
            *v155 = v412;
            *&v155[v492[6]] = v160;
            *&v155[v492[7]] = v161;
            *&v155[v492[8]] = v162;
            v155[v492[9]] = 15;
            *&v155[v492[13]] = 256;
            v165 = *(v459 + 48);
            (*v384)(v416, loga + v478, v420);
            sub_1002DB7C8(v155, v416 + v165, type metadata accessor for RawSearchResult);
            (*v381)(v416, 0, 1, v423);
            if ((*v378)(v416, 1, v423) == 1)
            {
              v166 = *(v0 + 1000);

              sub_10000B3A8(v166, &qword_10169C968, &qword_101398A10);
              v127 = v471;
              v167 = v519;
              v168 = v483;
              if (qword_101694510 != -1)
              {
                swift_once();
              }

              v169 = *(v0 + 792);
              v170 = *(v0 + 760);
              v171 = type metadata accessor for Logger();
              sub_1000076D4(v171, qword_10177A818);
              sub_1002DB760(v169, v170, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v2 = Logger.logObject.getter();
              v172 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v2, v172))
              {
                v173 = *(v0 + 1272);
                v174 = *(v0 + 760);
                v175 = swift_slowAlloc();
                v176 = swift_slowAlloc();
                v526 = v176;
                *v175 = 141558275;
                *(v175 + 4) = 1752392040;
                *(v175 + 12) = 2081;
                v177 = *(v474 + 20);
                sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                v178 = dispatch thunk of CustomStringConvertible.description.getter();
                v180 = v179;
                sub_1002DBBF0(v174, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v181 = sub_1000136BC(v178, v180, &v526);
                v127 = v471;

                *(v175 + 14) = v181;
                _os_log_impl(&_mh_execute_header, v2, v172, "Could not create search result for beacon: %{private,mask.hash}s.", v175, 0x16u);
                sub_100007BAC(v176);
              }

              else
              {
                v128 = *(v0 + 760);

                sub_1002DBBF0(v128, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              }
            }

            else
            {
              v479 = v164;
              v182 = *(v0 + 1088);
              v183 = *(v0 + 1080);
              sub_1000D2AD8(*(v0 + 1000), v182, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v182, v183, &qword_10169C970, &qword_101398A18);
              v184 = *(v459 + 48);
              swift_beginAccess();
              v185 = sub_1005CAD18(v183, *(v0 + 520));
              v186 = *(v0 + 1272);
              if (v185)
              {
                v187 = v185;
                v188 = *(v0 + 1088);
                v189 = *(v0 + 1080);
                v190 = *(v0 + 1072);
                swift_endAccess();
                sub_1002DBBF0(v183 + v184, type metadata accessor for RawSearchResult);
                v510 = *v442;
                (*v442)(v189, v186);
                sub_1000D2A70(v188, v190, &qword_10169C970, &qword_101398A18);
                v191 = (v190 + *(v459 + 48));
                v192 = *(v187 + 40);
                Hasher.init(_seed:)();
                sub_100D15128();
                v193 = Hasher._finalize()();
                v194 = -1 << *(v187 + 32);
                v195 = v193 & ~v194;
                if ((*(v187 + 56 + ((v195 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v195))
                {
                  v196 = ~v194;
                  v197 = *v191;
                  v198 = *(v368 + 72);
                  do
                  {
                    v199 = *(v0 + 816);
                    sub_1002DB760(*(v187 + 48) + v195 * v198, v199, type metadata accessor for RawSearchResult);
                    v200 = *(v0 + 816);
                    if (*v199 == v197 && (v201 = v492[5], v202 = static Date.== infix(_:_:)(), v200 = *(v0 + 816), (v202 & 1) != 0) && *(v200 + v492[6]) == *&v191[v492[6]] && *(v200 + v492[7]) == *&v191[v492[7]] && *(v200 + v492[8]) == *&v191[v492[8]])
                    {
                      v203 = v492[12];
                      v204 = *(v0 + 816);
                      v205 = static UUID.== infix(_:_:)();
                      sub_1002DBBF0(v204, type metadata accessor for RawSearchResult);
                      if (v205)
                      {
                        goto LABEL_179;
                      }
                    }

                    else
                    {
                      sub_1002DBBF0(v200, type metadata accessor for RawSearchResult);
                    }

                    v195 = (v195 + 1) & v196;
                  }

                  while (((*(v187 + 56 + ((v195 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v195) & 1) != 0);
                }

                v206 = *(v0 + 832);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_1002DB760(v191, v206, type metadata accessor for RawSearchResult);
                v526 = v187;
                sub_100DFE348(v206, v195, isUniquelyReferenced_nonNull_native);
                v187 = v526;
LABEL_179:
                sub_1002DBBF0(v191, type metadata accessor for RawSearchResult);
                v208 = *(v0 + 1128);
                v209 = *(v0 + 1088);
                v510(*(v0 + 1072), *(v0 + 1272));
                sub_1000D2A70(v209, v208, &qword_10169C970, &qword_101398A18);
                v210 = *(v459 + 48);
                swift_beginAccess();
                sub_1001DE1B0(v187, v208);
              }

              else
              {
                v211 = *(v0 + 1128);
                v212 = *(v0 + 1088);
                v213 = *(v0 + 1080);
                v214 = *(v0 + 1064);
                swift_endAccess();
                sub_1002DBBF0(v183 + v184, type metadata accessor for RawSearchResult);
                v215 = *v442;
                (*v442)(v213, v186);
                sub_1000D2A70(v212, v211, &qword_10169C970, &qword_101398A18);
                v210 = *(v459 + 48);
                sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                v216 = *(v368 + 72);
                v217 = (*(v368 + 80) + 32) & ~*(v368 + 80);
                v218 = swift_allocObject();
                *(v218 + 16) = xmmword_101385D80;
                sub_1000D2A70(v212, v214, &qword_10169C970, &qword_101398A18);
                sub_1002DB7C8(v214 + *(v459 + 48), v218 + v217, type metadata accessor for RawSearchResult);
                v215(v214, v186);
                v219 = sub_10112A090(v218);
                swift_setDeallocating();
                sub_1002DBBF0(v218 + v217, type metadata accessor for RawSearchResult);
                swift_deallocClassInstance();
                swift_beginAccess();
                v220 = *(v0 + 520);
                v221 = swift_isUniquelyReferenced_nonNull_native();
                v526 = *(v0 + 520);
                sub_100FFC200(v219, v211, v221);
                v510 = v215;
                v215(v211, v186);
                *(v0 + 520) = v526;
              }

              v167 = v519;
              swift_endAccess();
              sub_1002DBBF0(*(v0 + 1128) + v210, type metadata accessor for RawSearchResult);
              if (qword_101694510 != -1)
              {
                swift_once();
              }

              v222 = *(v0 + 1088);
              v223 = *(v0 + 1056);
              v224 = *(v0 + 1048);
              v225 = *(v0 + 1040);
              v226 = *(v0 + 792);
              v227 = *(v0 + 768);
              v228 = type metadata accessor for Logger();
              sub_1000076D4(v228, qword_10177A818);
              sub_1002DB760(v226, v227, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              sub_1000D2A70(v222, v223, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v222, v224, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v222, v225, &qword_10169C970, &qword_101398A18);
              v229 = Logger.logObject.getter();
              v230 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v229, v230))
              {
                v424 = v230;
                logb = v229;
                v231 = *(v0 + 1272);
                v232 = *(v0 + 1128);
                v233 = *(v0 + 1056);
                v417 = *(v0 + 1040);
                v409 = *(v0 + 1048);
                v413 = *(v0 + 1032);
                v234 = *(v0 + 856);
                v235 = *(v0 + 840);
                v236 = *(v0 + 768);
                v237 = swift_slowAlloc();
                v526 = swift_slowAlloc();
                *v237 = 141559043;
                *(v237 + 4) = 1752392040;
                *(v237 + 12) = 2081;
                v238 = *(v474 + 20);
                sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                v239 = dispatch thunk of CustomStringConvertible.description.getter();
                v241 = v240;
                sub_1002DBBF0(v236, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v242 = sub_1000136BC(v239, v241, &v526);

                *(v237 + 14) = v242;
                *(v237 + 22) = 2082;
                sub_1000D2A70(v233, v232, &qword_10169C970, &qword_101398A18);
                v243 = v232 + *(v459 + 48);
                v360(v234, v243 + v492[5], v235);
                sub_1002DBBF0(v243, type metadata accessor for RawSearchResult);
                v510(v232, v231);
                sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
                v244 = dispatch thunk of CustomStringConvertible.description.getter();
                v246 = v245;
                v479(v234, v235);
                sub_10000B3A8(v233, &qword_10169C970, &qword_101398A18);
                v247 = sub_1000136BC(v244, v246, &v526);

                *(v237 + 24) = v247;
                *(v237 + 32) = 2082;
                sub_1000D2A70(v409, v232, &qword_10169C970, &qword_101398A18);
                v248 = v232 + *(v459 + 48);
                LOBYTE(v247) = *(v248 + v492[9]);
                sub_1002DBBF0(v248, type metadata accessor for RawSearchResult);
                v510(v232, v231);
                v249 = sub_100013454(v247);
                v251 = v250;
                sub_10000B3A8(v409, &qword_10169C970, &qword_101398A18);
                v252 = sub_1000136BC(v249, v251, &v526);

                *(v237 + 34) = v252;
                *(v237 + 42) = 2048;
                sub_1000D2A70(v417, v413, &qword_10169C970, &qword_101398A18);
                swift_beginAccess();
                v253 = *(v0 + 520);
                if (*(v253 + 16) && (v254 = sub_1000210EC(*(v0 + 1032)), (v255 & 1) != 0))
                {
                  v256 = *(*(v253 + 56) + 8 * v254);
                  swift_endAccess();
                  v257 = *(v256 + 16);
                }

                else
                {
                  swift_endAccess();
                  v257 = 0;
                }

                v127 = v471;
                v167 = v519;
                v261 = *(v0 + 1272);
                v262 = *(v0 + 1088);
                v263 = *(v0 + 1040);
                v264 = *(v0 + 1032);
                sub_1002DBBF0(v264 + *(v459 + 48), type metadata accessor for RawSearchResult);
                v510(v264, v261);
                v2 = &qword_10169C970;
                sub_10000B3A8(v263, &qword_10169C970, &qword_101398A18);
                *(v237 + 44) = v257;
                _os_log_impl(&_mh_execute_header, logb, v424, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v237, 0x34u);
                swift_arrayDestroy();

                sub_10000B3A8(v262, &qword_10169C970, &qword_101398A18);
              }

              else
              {
                v258 = *(v0 + 1088);
                v2 = *(v0 + 1056);
                v259 = *(v0 + 1048);
                v260 = *(v0 + 768);
                sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                sub_10000B3A8(v259, &qword_10169C970, &qword_101398A18);
                sub_10000B3A8(v2, &qword_10169C970, &qword_101398A18);
                sub_1002DBBF0(v260, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_10000B3A8(v258, &qword_10169C970, &qword_101398A18);
                v127 = v471;
              }

              v168 = v483;
            }

            v126 = v168 + 1;
            sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
            v40 = 0;
            if (v126 == v522)
            {

              sub_100016590(v167, v489);

              v40 = 0;
              goto LABEL_193;
            }
          }

LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
          swift_once();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v315 = swift_allocObject();
          *(v315 + 16) = xmmword_101385D80;
          *v2 = v40;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v316 = String.init<A>(describing:)();
          v318 = v317;
          *(v315 + 56) = &type metadata for String;
          *(v315 + 64) = sub_100008C00();
          *(v315 + 32) = v316;
          *(v315 + 40) = v318;
          os_log(_:dso:log:_:_:)();

          sub_1001BAF88();
          v353 = swift_allocError();
          *v319 = 0;
          swift_willThrow();

LABEL_254:
          v526 = 0;
          v527 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v320 = v527;
          *(v0 + 504) = v526;
          *(v0 + 512) = v320;
          v321._countAndFlagsBits = 0xD000000000000021;
          v321._object = 0x800000010134CB30;
          String.append(_:)(v321);
          *(v0 + 552) = v353;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          v322 = *(v0 + 504);
          v323 = *(v0 + 512);
          return _assertionFailure(_:_:file:line:flags:)();
        }

        sub_100016590(v65, v489);

LABEL_193:
        sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        goto LABEL_137;
      }

      v109 = 0;
      if (v508 <= 1)
      {
LABEL_121:
        v112 = v477;
        if (v106)
        {
          v112 = v447;
          if (log)
          {
            goto LABEL_316;
          }
        }

        goto LABEL_127;
      }
    }

    else
    {
      v65 = v519;
      v106 = v508;
      if (v104 == 2)
      {
        v111 = *(v101 + 16);
        v110 = *(v101 + 24);
        v91 = __OFSUB__(v110, v111);
        v109 = v110 - v111;
        if (v91)
        {
          goto LABEL_319;
        }

        if (v508 <= 1)
        {
          goto LABEL_121;
        }
      }

      else if (v104 == 1)
      {
        LODWORD(v109) = HIDWORD(v101) - v101;
        if (__OFSUB__(HIDWORD(v101), v101))
        {
          __break(1u);
LABEL_319:
          __break(1u);
          goto LABEL_320;
        }

        v109 = v109;
        if (v508 <= 1)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v109 = BYTE6(v103);
        if (v508 <= 1)
        {
          goto LABEL_121;
        }
      }
    }

    if (v106 != 2)
    {
      if (!v109)
      {
        goto LABEL_139;
      }

LABEL_36:
      sub_100016590(v101, v103);
      v40 = 0;
      v70 = v521;
      goto LABEL_37;
    }

    v114 = *(v65 + 16);
    v113 = *(v65 + 24);
    v91 = __OFSUB__(v113, v114);
    v112 = v113 - v114;
    if (v91)
    {
      goto LABEL_317;
    }

LABEL_127:
    if (v109 != v112)
    {
      goto LABEL_36;
    }

    if (v109 < 1)
    {
LABEL_139:
      v123 = v101;
      v124 = v103;
      goto LABEL_141;
    }

    sub_100017D5C(v65, v489);
    sub_100017D5C(v65, v489);
    sub_100017D5C(v101, v103);
    v115 = sub_100F0B1BC(v101, v103, v65, v489);
    sub_100016590(v101, v103);
    sub_100016590(v101, v103);
    sub_100016590(v65, v489);
    v70 = v521;
    if (v115)
    {
      goto LABEL_142;
    }

LABEL_37:
    sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v66 += v504;
    v62 = v70 - 1;
    if (!v62)
    {
      goto LABEL_132;
    }
  }

  if (v95 == 2)
  {
    v338 = *(v93 + 16);
    v337 = *(v93 + 24);
    v334 = v337 - v338;
    if (!__OFSUB__(v337, v338))
    {
      goto LABEL_277;
    }

    __break(1u);
    goto LABEL_276;
  }

  if (v95 != 1)
  {
LABEL_276:
    v334 = BYTE6(v2);
    goto LABEL_277;
  }

  if (!__OFSUB__(HIDWORD(v93), v93))
  {
    v334 = HIDWORD(v93) - v93;
    goto LABEL_277;
  }

LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002B6BC4()
{
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1432);
  v4 = *(v0 + 1392);
  v5 = *(v0 + 1328);
  v6 = *(v0 + 1288);
  v7 = *(v0 + 1272);
  v8 = (*(v0 + 1776) + 24) & ~*(v0 + 1776);
  (*(v0 + 1448))(v5, *(v0 + 1344), v7);
  v9 = swift_allocObject();
  *(v0 + 1512) = v9;
  *(v9 + 16) = v4;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1520) = v11;
  *v11 = v0;
  v11[1] = sub_1002B6D20;
  v12 = *(v0 + 1168);
  v13 = *(v0 + 1160);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB640, v9, v13);
}

uint64_t sub_1002B6D20()
{
  v1 = *(*v0 + 1520);
  v2 = *(*v0 + 1512);
  v3 = *(*v0 + 648);
  v5 = *v0;

  return _swift_task_switch(sub_1002B6E4C, v3, 0);
}

uint64_t sub_1002B6E4C()
{
  v549 = v0;
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  if ((*(*(v0 + 1184) + 48))(v3, 1, v2) == 1)
  {
    sub_10000B3A8(v3, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694510 != -1)
    {
      goto LABEL_315;
    }

    goto LABEL_3;
  }

  v18 = *(v0 + 1456);
  v19 = *(v0 + 1448);
  v20 = *(v0 + 1336);
  v21 = *(v0 + 1272);
  v22 = *(v0 + 1192);
  sub_1002DB7C8(v3, v22, type metadata accessor for OwnerSharingCircle);
  v19(v20, v22 + *(v2 + 24), v21);
  sub_1002DBBF0(v22, type metadata accessor for OwnerSharingCircle);
  v23 = *(v0 + 1488);
  v24 = *(v0 + 1480);
  v25 = *(v0 + 1472);
  v26 = sub_100496ABC();
  *(v0 + 1528) = v26;
  if (v23)
  {
    v27 = *(v0 + 1480);
    v28 = *(v0 + 1472);
    v29 = *(v0 + 1384);
    v30 = *(v0 + 1344);
    v31 = *(v0 + 1336);
    v32 = *(v0 + 1280);
    v33 = *(v0 + 1272);
    if (*(v0 + 632))
    {
      v34 = *(v0 + 632);
    }

    sub_100006654(v28, v27);
    v35 = *(v32 + 8);
    v35(v30, v33);
    sub_1002DBBF0(v29, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v35(v31, v33);
    v36 = *(v0 + 1384);
    v37 = *(v0 + 1376);
    v38 = *(v0 + 1368);
    v39 = *(v0 + 1344);
    v40 = *(v0 + 1336);
    v41 = *(v0 + 1328);
    v42 = *(v0 + 1320);
    v43 = *(v0 + 1312);
    v44 = *(v0 + 1304);
    v372 = *(v0 + 1296);
    v374 = *(v0 + 1264);
    v376 = *(v0 + 1256);
    v379 = *(v0 + 1248);
    v382 = *(v0 + 1240);
    v384 = *(v0 + 1232);
    v387 = *(v0 + 1208);
    v389 = *(v0 + 1192);
    v392 = *(v0 + 1168);
    v394 = *(v0 + 1152);
    v397 = *(v0 + 1144);
    v400 = *(v0 + 1136);
    v403 = *(v0 + 1128);
    v406 = *(v0 + 1120);
    v409 = *(v0 + 1112);
    v412 = *(v0 + 1104);
    v414 = *(v0 + 1096);
    v417 = *(v0 + 1088);
    v419 = *(v0 + 1080);
    v421 = *(v0 + 1072);
    v424 = *(v0 + 1064);
    v428 = *(v0 + 1056);
    v432 = *(v0 + 1048);
    v436 = *(v0 + 1040);
    v439 = *(v0 + 1032);
    v442 = *(v0 + 1008);
    v445 = *(v0 + 1000);
    v448 = *(v0 + 992);
    v451 = *(v0 + 984);
    v454 = *(v0 + 976);
    v456 = *(v0 + 968);
    v461 = *(v0 + 960);
    v465 = *(v0 + 952);
    v468 = *(v0 + 944);
    v471 = *(v0 + 936);
    v474 = *(v0 + 912);
    v477 = *(v0 + 888);
    v480 = *(v0 + 864);
    v483 = *(v0 + 856);
    v486 = *(v0 + 832);
    logc = *(v0 + 824);
    v494 = *(v0 + 816);
    v499 = *(v0 + 792);
    v502 = *(v0 + 784);
    v505 = *(v0 + 776);
    v508 = *(v0 + 768);
    v511 = *(v0 + 760);
    v514 = *(v0 + 736);
    v517 = *(v0 + 712);
    v520 = *(v0 + 696);
    v524 = *(v0 + 688);
    v528 = *(v0 + 680);
    v531 = *(v0 + 672);
    v534 = *(v0 + 656);
    v45 = *(v0 + 520);

    v46 = *(v0 + 8);

    return v46();
  }

  v54 = *(v0 + 1384);
  v55 = *(v54 + 32);
  *(v0 + 1536) = v55;
  v56 = *(v55 + 16);
  *(v0 + 1544) = v56;
  v57 = *(v0 + 1480);
  v58 = *(v0 + 1472);
  if (v56)
  {
    *(v0 + 1552) = 0;
    if (*(v55 + 16))
    {
      v59 = v57 >> 62;
      v1 = *(v55 + 32);
      *(v0 + 1560) = v1;
      v60 = *(v55 + 40);
      *(v0 + 1568) = v60;
      v61 = *(v55 + 48);
      *(v0 + 1580) = *(v55 + 52);
      *(v0 + 1576) = v61;
      if ((v57 >> 62) > 1)
      {
        if (v59 != 2)
        {
          v64 = 0;
          v62 = 0;
          v65 = 0;
          v63 = 0;
          goto LABEL_233;
        }

        v62 = *(v58 + 16);
        v64 = *(v58 + 24);
      }

      else
      {
        if (!v59)
        {
          v62 = 0;
          v63 = 0;
          v64 = BYTE6(v57);
          v65 = BYTE6(v57);
          goto LABEL_233;
        }

        v64 = v58 >> 32;
        v62 = v58;
      }

      sub_10002E98C(v58, v57);
      if (v64 >= v62)
      {
        v57 = *(v0 + 1480);
        v58 = *(v0 + 1472);
        if (v57 >> 62 == 2)
        {
          v63 = *(v58 + 16);
          v65 = *(v58 + 24);
        }

        else
        {
          v65 = v58 >> 32;
          v63 = v58;
        }

LABEL_233:
        if (v65 >= v64 && v64 >= v63)
        {
          if (!__OFSUB__(v64, v62))
          {
            if ((v64 - v62) < 0x39)
            {
              v329 = v57 >> 62;
              if ((v57 >> 62) <= 1)
              {
                if (!v329)
                {
                  goto LABEL_267;
                }

                v330 = v58 >> 32;
LABEL_263:
                v341 = v58;
                goto LABEL_266;
              }

              if (v329 != 2)
              {
LABEL_267:
                sub_100017D5C(v1, v60);
                sub_100017D5C(v1, v60);
                v52 = Data._Representation.subscript.getter();
                v51 = v342;
                result = sub_100006654(v58, v57);
                v343 = v51 >> 62;
                if ((v51 >> 62) > 1)
                {
                  if (v343 != 2)
                  {
                    goto LABEL_278;
                  }

                  v345 = *(v52 + 16);
                  v344 = *(v52 + 24);
                  v112 = __OFSUB__(v344, v345);
                  v346 = v344 - v345;
                  if (!v112)
                  {
                    if (v346 != 57)
                    {
                      goto LABEL_278;
                    }

LABEL_274:
                    v347 = sub_100A7A194(v52, v51);
                    v348 = sub_100A7829C(v347, 0);
                    *(v0 + 1584) = v348;
                    *(v0 + 1592) = v349;
                    v16 = v348;
                    v96 = v349;
                    result = CCECCryptorRelease();
                    v74 = v96 >> 62;
                    if ((v96 >> 62) <= 1)
                    {
                      if (!v74)
                      {
                        v359 = BYTE6(v96);
                        goto LABEL_291;
                      }

LABEL_289:
                      LODWORD(v359) = HIDWORD(v16) - v16;
                      if (!__OFSUB__(HIDWORD(v16), v16))
                      {
                        v359 = v359;
                        goto LABEL_291;
                      }

LABEL_335:
                      __break(1u);
                      goto LABEL_336;
                    }

                    if (v74 != 2)
                    {
                      v367 = 0;
                      goto LABEL_308;
                    }

                    v361 = *(v16 + 16);
                    v360 = *(v16 + 24);
                    v112 = __OFSUB__(v360, v361);
                    v359 = v360 - v361;
                    if (!v112)
                    {
LABEL_291:
                      if (v359 == 28)
                      {
                        sub_100016590(v52, v51);
                        v362 = swift_task_alloc();
                        *(v0 + 1600) = v362;
                        *v362 = v0;
                        v362[1] = sub_1002BA248;
                        v363 = *(v0 + 1528);
                        v364 = *(v0 + 1336);
                        v365 = *(v0 + 1008);
                        v366 = *(v0 + 648);

                        return sub_1002D7014(v365, v1, v60, v363, v16, v96, 0, v364);
                      }

                      if (v74 != 2)
                      {
                        if (v74 == 1)
                        {
                          if (!__OFSUB__(HIDWORD(v16), v16))
                          {
                            v367 = HIDWORD(v16) - v16;
LABEL_308:
                            sub_100018350();
                            v370 = swift_allocError();
                            *v371 = 28;
                            *(v371 + 8) = v367;
                            *(v371 + 16) = 0;
                            swift_willThrow();
                            sub_100016590(v16, v96);
LABEL_275:
                            v547 = 0;
                            v548 = 0xE000000000000000;
                            _StringGuts.grow(_:)(35);
                            v355 = v548;
                            *(v0 + 504) = v547;
                            *(v0 + 512) = v355;
                            v356._countAndFlagsBits = 0xD000000000000021;
                            v356._object = 0x800000010134CB30;
                            String.append(_:)(v356);
                            *(v0 + 552) = v370;
                            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                            _print_unlocked<A, B>(_:_:)();
                            v357 = *(v0 + 504);
                            v358 = *(v0 + 512);
                            return _assertionFailure(_:_:file:line:flags:)();
                          }

LABEL_336:
                          __break(1u);
                          return result;
                        }

LABEL_307:
                        v367 = BYTE6(v96);
                        goto LABEL_308;
                      }

LABEL_304:
                      v369 = *(v16 + 16);
                      v368 = *(v16 + 24);
                      v367 = v368 - v369;
                      if (!__OFSUB__(v368, v369))
                      {
                        goto LABEL_308;
                      }

                      __break(1u);
                      goto LABEL_307;
                    }

                    __break(1u);
LABEL_288:
                    __break(1u);
                    goto LABEL_289;
                  }

                  __break(1u);
                }

                else
                {
                  if (!v343)
                  {
                    if (BYTE6(v51) != 57)
                    {
LABEL_278:
                      v326 = v52;
                      v327 = v51;
LABEL_279:
                      sub_100016590(v326, v327);
                      return _assertionFailure(_:_:file:line:flags:)();
                    }

                    goto LABEL_274;
                  }

                  if (!__OFSUB__(HIDWORD(v52), v52))
                  {
                    if (HIDWORD(v52) - v52 != 57)
                    {
                      goto LABEL_278;
                    }

                    goto LABEL_274;
                  }
                }

                __break(1u);
LABEL_334:
                __break(1u);
                goto LABEL_335;
              }

              v330 = *(v58 + 24);
              goto LABEL_265;
            }

            v330 = v62 + 57;
            if (__OFADD__(v62, 57))
            {
LABEL_330:
              __break(1u);
            }

            else
            {
              v331 = v57 >> 62;
              if ((v57 >> 62) > 1)
              {
                if (v331 == 2)
                {
                  v332 = *(v58 + 16);
                  v333 = *(v58 + 24);
                }

                else
                {
                  v333 = 0;
                  v332 = 0;
                }
              }

              else if (v331)
              {
                v333 = v58 >> 32;
                v332 = v58;
              }

              else
              {
                v332 = 0;
                v333 = BYTE6(v57);
              }

              if (v333 >= v330 && v330 >= v332)
              {
                v341 = 0;
                if (v331 <= 1)
                {
                  if (!v331)
                  {
                    goto LABEL_266;
                  }

                  goto LABEL_263;
                }

                if (v331 == 3)
                {
LABEL_266:
                  if (v330 >= v341)
                  {
                    goto LABEL_267;
                  }

LABEL_326:
                  __break(1u);
LABEL_327:
                  swift_once();
                  goto LABEL_218;
                }

LABEL_265:
                v341 = *(v58 + 16);
                goto LABEL_266;
              }
            }

            __break(1u);
            swift_once();
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v350 = swift_allocObject();
            *(v350 + 16) = xmmword_101385D80;
            *v60 = v57;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v351 = String.init<A>(describing:)();
            v353 = v352;
            *(v350 + 56) = &type metadata for String;
            *(v350 + 64) = sub_100008C00();
            *(v350 + 32) = v351;
            *(v350 + 40) = v353;
            os_log(_:dso:log:_:_:)();

            sub_1001BAF88();
            v370 = swift_allocError();
            *v354 = 0;
            swift_willThrow();

            goto LABEL_275;
          }

LABEL_325:
          __break(1u);
          goto LABEL_326;
        }

LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

LABEL_323:
      __break(1u);
      goto LABEL_324;
    }

LABEL_322:
    __break(1u);
    goto LABEL_323;
  }

  v323 = *(v0 + 1344);
  v16 = *(v0 + 1336);
  v324 = *(v0 + 1280);
  v51 = *(v0 + 1272);

  sub_100006654(v58, v57);
  v325 = *(v324 + 8);
  v52 = v324 + 8;
  v325(v323, v51);
  sub_1002DBBF0(v54, type metadata accessor for KeyDropFetchResponse.LocationPayload);
  result = (v325)(v16, v51);
  v541 = 0;
LABEL_21:
  v74 = *(v0 + 1408) + 1;
  if (v74 != *(v0 + 1400))
  {
    v60 = &qword_1016980D0;
    v96 = &unk_10138F3B0;
    do
    {
      *(v0 + 1408) = v74;
      v287 = *(v0 + 632);
      if (!v287)
      {
        v287 = _swiftEmptyArrayStorage;
      }

      if (v74 >= v287[2])
      {
        goto LABEL_288;
      }

      v288 = *(v0 + 1384);
      v289 = *(v0 + 1352);
      v290 = *(v0 + 1280);
      v51 = *(v0 + 1272);
      v52 = *(v0 + 1264);
      sub_1002DB760(v287 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v74, v288, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v291 = *(v288 + 16);
      v292 = *(v288 + 24);
      sub_1000D2A70(v288 + *(v289 + 28), v52, &qword_1016980D0, &unk_10138F3B0);
      v293 = *(v290 + 48);
      *(v0 + 1416) = v293;
      *(v0 + 1424) = (v290 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v293(v52, 1, v51) != 1)
      {
        v307 = *(v0 + 1344);
        v308 = *(v0 + 1280);
        v309 = *(v0 + 1272);
        v310 = *(v0 + 1264);
        v311 = *(v0 + 1256);
        v312 = *(v308 + 32);
        *(v0 + 1432) = v312;
        *(v0 + 1440) = (v308 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v312(v307, v310, v309);
        v313 = *(v308 + 16);
        *(v0 + 1448) = v313;
        *(v0 + 1456) = (v308 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v313(v311, v307, v309);
        (*(v308 + 56))(v311, 0, 1, v309);
        v314 = swift_task_alloc();
        *(v0 + 1464) = v314;
        *v314 = v0;
        v314[1] = sub_1002B09AC;
        v315 = *(v0 + 1256);
        v316 = *(v0 + 648);

        return sub_1002D5B7C(v291, v292, v315);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      v294 = type metadata accessor for Logger();
      sub_1000076D4(v294, qword_10177A818);
      v295 = Logger.logObject.getter();
      v1 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v295, v1))
      {
        v296 = swift_slowAlloc();
        *v296 = 0;
        _os_log_impl(&_mh_execute_header, v295, v1, "Missing share id in payload.", v296, 2u);
      }

      v16 = *(v0 + 1384);

      result = sub_1002DBBF0(v16, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v74 = *(v0 + 1408) + 1;
    }

    while (v74 != *(v0 + 1400));
  }

  v75 = _swiftEmptyArrayStorage;
  if (*(v0 + 632))
  {
    v76 = *(v0 + 632);
  }

  if (*(v0 + 624))
  {
    v75 = *(v0 + 624);
  }

  v466 = v75[2];
  if (!v466)
  {

LABEL_211:

    v297 = *(v0 + 1384);
    v298 = *(v0 + 1376);
    v299 = *(v0 + 1368);
    v300 = *(v0 + 1344);
    v301 = *(v0 + 1336);
    v302 = *(v0 + 1328);
    v303 = *(v0 + 1320);
    v304 = *(v0 + 1312);
    v305 = *(v0 + 1304);
    v373 = *(v0 + 1296);
    v375 = *(v0 + 1264);
    v378 = *(v0 + 1256);
    v380 = *(v0 + 1248);
    v383 = *(v0 + 1240);
    v386 = *(v0 + 1232);
    v388 = *(v0 + 1208);
    v390 = *(v0 + 1192);
    v393 = *(v0 + 1168);
    v396 = *(v0 + 1152);
    v399 = *(v0 + 1144);
    v402 = *(v0 + 1136);
    v405 = *(v0 + 1128);
    v408 = *(v0 + 1120);
    v411 = *(v0 + 1112);
    v413 = *(v0 + 1104);
    v416 = *(v0 + 1096);
    v418 = *(v0 + 1088);
    v420 = *(v0 + 1080);
    v423 = *(v0 + 1072);
    v427 = *(v0 + 1064);
    v431 = *(v0 + 1056);
    v435 = *(v0 + 1048);
    v438 = *(v0 + 1040);
    v441 = *(v0 + 1032);
    v444 = *(v0 + 1008);
    v447 = *(v0 + 1000);
    v450 = *(v0 + 992);
    v453 = *(v0 + 984);
    v455 = *(v0 + 976);
    v460 = *(v0 + 968);
    v464 = *(v0 + 960);
    v467 = *(v0 + 952);
    v470 = *(v0 + 944);
    v473 = *(v0 + 936);
    v476 = *(v0 + 912);
    v479 = *(v0 + 888);
    v482 = *(v0 + 864);
    v485 = *(v0 + 856);
    v488 = *(v0 + 832);
    logd = *(v0 + 824);
    v498 = *(v0 + 816);
    v501 = *(v0 + 792);
    v504 = *(v0 + 784);
    v507 = *(v0 + 776);
    v510 = *(v0 + 768);
    v513 = *(v0 + 760);
    v516 = *(v0 + 736);
    v519 = *(v0 + 712);
    v523 = *(v0 + 696);
    v527 = *(v0 + 688);
    v530 = *(v0 + 680);
    v533 = *(v0 + 672);
    v544 = *(v0 + 656);
    swift_beginAccess();
    v538 = *(v0 + 520);

    v306 = *(v0 + 8);

    return v306(v538);
  }

  v77 = *(v0 + 1280);
  v381 = (v0 + 600);
  v78 = *(v0 + 1024);
  v79 = *(v0 + 1016);
  v80 = *(v0 + 848);
  v385 = *(v0 + 808);
  v506 = *(v0 + 800);
  v487 = *(v0 + 792);
  v529 = *(v0 + 776);
  v449 = *(v0 + 752);
  v484 = *(v0 + 744);
  v81 = *(v0 + 728);
  v472 = v75 + 4;
  v440 = *(v0 + 712);
  v518 = (v81 + 104);
  v515 = (v81 + 8);
  v500 = *(v0 + 704);
  v410 = (*(v0 + 928) + 56);
  v446 = (v80 + 16);
  v407 = *(v0 + 664);
  v404 = (v80 + 56);
  v443 = (v80 + 8);
  v401 = (v77 + 16);
  v395 = (v78 + 48);
  v398 = (v78 + 56);
  v469 = *(*(v0 + 640) + 16);
  v452 = (v77 + 8);
  v512 = enum case for HashAlgorithm.sha256(_:);
  v478 = v75;

  v82 = v75;
  v83 = 0;
  v391 = xmmword_101385D80;
  v475 = v79;
LABEL_28:
  if (v83 >= v82[2])
  {
    goto LABEL_312;
  }

  v481 = v83;
  v84 = &v472[3 * v83];
  v1 = *v84;
  v85 = v84[1];
  v503 = v85;
  v509 = v84[2];
  if (!v469)
  {
    sub_100017D5C(v1, v85);

LABEL_138:
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    sub_1000076D4(v138, qword_10177A818);
    sub_100017D5C(v1, v503);

    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    sub_100016590(v1, v503);

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v547 = v142;
      *v141 = 141558275;
      *(v141 + 4) = 1752392040;
      *(v141 + 12) = 2081;
      *(v0 + 488) = v1;
      *(v0 + 496) = v503;
      sub_10025DB08();
      v143 = RawRepresentable<>.hexString.getter();
      v145 = sub_1000136BC(v143, v144, &v547);

      *(v141 + 14) = v145;
      _os_log_impl(&_mh_execute_header, v139, v140, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v141, 0x16u);
      sub_100007BAC(v142);
    }

    sub_100016590(v1, v503);

    goto LABEL_143;
  }

  v86 = *(v0 + 640) + ((*(v449 + 80) + 32) & ~*(v449 + 80));
  sub_100017D5C(v1, v85);
  if (v1)
  {
    v87 = 0;
  }

  else
  {
    v87 = v85 == 0xC000000000000000;
  }

  v88 = !v87;
  v495 = v88;
  log = BYTE6(v85);
  v521 = *(v449 + 72);
  v89 = __OFSUB__(HIDWORD(v1), v1);
  v462 = v89;
  v457 = (HIDWORD(v1) - v1);

  v90 = v469;
  v532 = v1;
  v525 = v85 >> 62;
  while (1)
  {
    v92 = *(v0 + 776);
    sub_1002DB760(v86, v92, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v93 = *v92;
    v94 = *(v529 + 8);
    v95 = v94 >> 62;
    if ((v94 >> 62) > 1)
    {
      if (v95 == 2)
      {
        v96 = *(v93 + 16);
        v16 = *(v93 + 24);
        sub_100017D5C(v93, *(v529 + 8));
        v97 = *(v93 + 16);
        v98 = *(v93 + 24);
      }

      else
      {
        v96 = 0;
        v16 = 0;
        v98 = 0;
        v97 = 0;
      }
    }

    else if (v95)
    {
      v96 = v93;
      v16 = v93 >> 32;
      sub_100017D5C(v93, *(v529 + 8));
      v98 = v93 >> 32;
      v97 = v93;
    }

    else
    {
      v96 = 0;
      v97 = 0;
      v16 = BYTE6(v94);
      v98 = BYTE6(v94);
    }

    if (v98 < v96 || v96 < v97)
    {
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
      goto LABEL_304;
    }

    if (v95 > 1)
    {
      if (v95 == 2)
      {
        v99 = *(v93 + 16);
        v100 = *(v93 + 24);
      }

      else
      {
        v100 = 0;
        v99 = 0;
      }
    }

    else if (v95)
    {
      v99 = v93;
      v100 = v93 >> 32;
    }

    else
    {
      v99 = 0;
      v100 = BYTE6(v94);
    }

    if (v100 < v16 || v16 < v99)
    {
      goto LABEL_301;
    }

    if (__OFSUB__(v16, v96))
    {
      goto LABEL_302;
    }

    if (v16 - v96 < 0x39)
    {
      if (v95 <= 1)
      {
        if (!v95)
        {
          goto LABEL_86;
        }

        v101 = v93 >> 32;
LABEL_82:
        v104 = v93;
        goto LABEL_85;
      }

      if (v95 != 2)
      {
        goto LABEL_86;
      }

      v101 = *(v93 + 24);
LABEL_84:
      v104 = *(v93 + 16);
      goto LABEL_85;
    }

    v101 = v96 + 57;
    if (__OFADD__(v96, 57))
    {
      __break(1u);
LABEL_310:
      __break(1u);
      goto LABEL_311;
    }

    if (v95 > 1)
    {
      if (v95 == 2)
      {
        v102 = *(v93 + 16);
        v103 = *(v93 + 24);
      }

      else
      {
        v103 = 0;
        v102 = 0;
      }
    }

    else if (v95)
    {
      v102 = v93;
      v103 = v93 >> 32;
    }

    else
    {
      v102 = 0;
      v103 = BYTE6(v94);
    }

    if (v103 < v101 || v101 < v102)
    {
      goto LABEL_310;
    }

    v104 = 0;
    if (v95 <= 1)
    {
      if (!v95)
      {
        goto LABEL_85;
      }

      goto LABEL_82;
    }

    if (v95 != 3)
    {
      goto LABEL_84;
    }

LABEL_85:
    if (v101 < v104)
    {
      goto LABEL_303;
    }

LABEL_86:
    v536 = v90;
    v105 = Data._Representation.subscript.getter();
    v107 = v106;
    sub_100016590(v93, v94);
    v108 = v107 >> 62;
    if ((v107 >> 62) > 1)
    {
      if (v108 != 2)
      {
        goto LABEL_220;
      }

      v111 = *(v105 + 16);
      v110 = *(v105 + 24);
      v112 = __OFSUB__(v110, v111);
      v109 = v110 - v111;
      if (v112)
      {
        goto LABEL_313;
      }
    }

    else if (v108)
    {
      LODWORD(v109) = HIDWORD(v105) - v105;
      if (__OFSUB__(HIDWORD(v105), v105))
      {
        goto LABEL_314;
      }

      v109 = v109;
    }

    else
    {
      v109 = BYTE6(v107);
    }

    if (v109 != 57)
    {
LABEL_220:
      v326 = v105;
      v327 = v107;
      goto LABEL_279;
    }

    v57 = v541;
    v113 = sub_100A7A194(v105, v107);
    if (v541)
    {
      break;
    }

    v114 = sub_100A7829C(v113, 0);
    v116 = v115;
    result = CCECCryptorRelease();
    v117 = v116 >> 62;
    if ((v116 >> 62) > 1)
    {
      if (v117 != 2)
      {
        v328 = 0;
        goto LABEL_253;
      }

      v120 = *(v114 + 16);
      v119 = *(v114 + 24);
      v112 = __OFSUB__(v119, v120);
      v118 = v119 - v120;
      if (v112)
      {
        goto LABEL_317;
      }
    }

    else if (v117)
    {
      LODWORD(v118) = HIDWORD(v114) - v114;
      if (__OFSUB__(HIDWORD(v114), v114))
      {
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
        goto LABEL_322;
      }

      v118 = v118;
    }

    else
    {
      v118 = BYTE6(v116);
    }

    if (v118 != 28)
    {
      if (v117 == 2)
      {
        v335 = *(v114 + 16);
        v334 = *(v114 + 24);
        v328 = v334 - v335;
        if (!__OFSUB__(v334, v335))
        {
          goto LABEL_253;
        }

        __break(1u);
      }

      else if (v117 == 1)
      {
        if (__OFSUB__(HIDWORD(v114), v114))
        {
          goto LABEL_334;
        }

        v328 = HIDWORD(v114) - v114;
        goto LABEL_253;
      }

      v328 = BYTE6(v116);
LABEL_253:
      sub_100018350();
      v321 = swift_allocError();
      *v336 = 28;
      *(v336 + 8) = v328;
      *(v336 + 16) = 0;
      swift_willThrow();
      sub_100016590(v114, v116);
      goto LABEL_254;
    }

    v121 = *(v0 + 736);
    v122 = *(v0 + 720);
    sub_100016590(v105, v107);
    (*v518)(v121, v512, v122);
    v123 = Data.hash(algorithm:)();
    v125 = v124;
    sub_100016590(v114, v116);
    (*v515)(v121, v122);
    v126 = v125 >> 62;
    if (v125 >> 62 == 3)
    {
      if (v123)
      {
        v127 = 0;
      }

      else
      {
        v127 = v125 == 0xC000000000000000;
      }

      v128 = v525;
      v130 = !v127 || v525 < 3;
      v1 = v532;
      if (((v130 | v495) & 1) == 0)
      {
        v146 = 0;
        v147 = 0xC000000000000000;
        goto LABEL_147;
      }

      v131 = 0;
      if (v525 <= 1)
      {
LABEL_127:
        v134 = log;
        if (v128)
        {
          v134 = v457;
          if (v462)
          {
            goto LABEL_318;
          }
        }

        goto LABEL_133;
      }
    }

    else
    {
      v1 = v532;
      v128 = v525;
      if (v126 == 2)
      {
        v133 = *(v123 + 16);
        v132 = *(v123 + 24);
        v112 = __OFSUB__(v132, v133);
        v131 = v132 - v133;
        if (v112)
        {
          goto LABEL_321;
        }

        if (v525 <= 1)
        {
          goto LABEL_127;
        }
      }

      else if (v126 == 1)
      {
        LODWORD(v131) = HIDWORD(v123) - v123;
        if (__OFSUB__(HIDWORD(v123), v123))
        {
          goto LABEL_320;
        }

        v131 = v131;
        if (v525 <= 1)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v131 = BYTE6(v125);
        if (v525 <= 1)
        {
          goto LABEL_127;
        }
      }
    }

    if (v128 != 2)
    {
      if (!v131)
      {
        goto LABEL_145;
      }

LABEL_41:
      sub_100016590(v123, v125);
      v541 = 0;
      v91 = v536;
      goto LABEL_42;
    }

    v136 = *(v1 + 16);
    v135 = *(v1 + 24);
    v112 = __OFSUB__(v135, v136);
    v134 = (v135 - v136);
    if (v112)
    {
      goto LABEL_319;
    }

LABEL_133:
    if (v131 != v134)
    {
      goto LABEL_41;
    }

    if (v131 < 1)
    {
LABEL_145:
      v146 = v123;
      v147 = v125;
LABEL_147:
      sub_100016590(v146, v147);
      v541 = 0;
LABEL_148:
      v148 = *(v0 + 792);
      v149 = *(v0 + 784);
      sub_1002DB7C8(*(v0 + 776), v149, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      sub_1002DB7C8(v149, v148, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v537 = *(v509 + 16);
      if (v537)
      {
        v526 = v509 + ((*(v500 + 80) + 32) & ~*(v500 + 80));

        v150 = 0;
        while (v150 < *(v509 + 16))
        {
          v152 = *(v0 + 792);
          sub_1002DB760(v526 + *(v500 + 72) * v150, *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          v153 = *v152;
          v154 = *(v487 + 8);
          v57 = 0;
          v155 = sub_100496ABC();
          v156 = **(v0 + 712);
          v157 = *(v440 + 8);
          v158 = **(v0 + 792);
          v60 = *(v487 + 8);
          sub_100017D5C(v158, v60);
          sub_10002EA98(57, v158, v60, &v547);
          sub_100496F68(v547, v548, &v545);
          v159 = v546;
          if (v546 >> 60 == 15)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v522 = v150;
          loga = *(v0 + 792);
          v160 = v545;
          v161 = PublicKey.advertisement.getter(v545, v546);
          v163 = v162;
          sub_100006654(v160, v159);
          v164 = v157 >> 62;
          v496 = *(v484 + 20);
          if ((v157 >> 62) > 1)
          {
            if (v164 == 2)
            {
              v166 = *(v156 + 16);
              v165 = *(v156 + 24);
              v60 = v165 - v166;
              if (__OFSUB__(v165, v166))
              {
                goto LABEL_329;
              }
            }

            else
            {
              v60 = 0;
            }
          }

          else if (v164)
          {
            if (__OFSUB__(HIDWORD(v156), v156))
            {
              __break(1u);
LABEL_329:
              __break(1u);
              goto LABEL_330;
            }

            v60 = HIDWORD(v156) - v156;
          }

          else
          {
            v60 = BYTE6(v157);
          }

          sub_100A2A240(3);
          v168 = v167;
          v169 = v155;
          sub_100017D5C(v156, v157);
          sub_100017D5C(v161, v163);
          if (v60 >= v168)
          {
            v170 = (v0 + 672);
            sub_100A2AA58(v169, v156, v157, v161, v163, *(v0 + 672));
          }

          else
          {
            v170 = (v0 + 680);
            sub_100A2B118(v169, v156, v157, v161, v163, *(v0 + 680));
          }

          v171 = *v170;
          v458 = *(v0 + 1016);
          v463 = v169;
          v433 = *(v0 + 1000);
          v437 = *(v0 + 1272);
          v172 = *(v0 + 976);
          v415 = *(v0 + 968);
          v173 = *(v0 + 920);
          v542 = *(v0 + 856);
          v422 = v161;
          v425 = v163;
          v174 = *(v0 + 840);
          v175 = *(v0 + 832);
          v176 = *(v0 + 696);
          v177 = *(v0 + 688);
          v178 = *(v0 + 656);
          sub_1002DB7C8(v171, v177, type metadata accessor for BeaconPayloadv1);
          sub_1002DB7C8(v177, v176, type metadata accessor for BeaconPayloadv1);
          (*v410)(v172, 1, 1, v173);
          v429 = *(v176 + v407[10]);
          v179 = *v446;
          (*v446)(v542, v176 + v407[5], v174);
          v180 = *(v176 + v407[7]);
          v181 = *(v176 + v407[8]);
          v182 = *(v176 + v407[9]);
          (*v404)(v178, 1, 1, v174);
          sub_1000D2A70(v172, v415, &unk_1016C1120, &qword_1013C49D0);
          v377 = v179;
          v179(&v175[v506[5]], v542, v174);
          sub_1000D2A70(v178, &v175[v506[10]], &unk_101696900, &unk_10138B1E0);
          sub_1000D2A70(v415, &v175[v506[11]], &unk_1016C1120, &qword_1013C49D0);
          v183 = &v175[v506[12]];
          UUID.init()();
          sub_100016590(v422, v425);
          sub_10000B3A8(v415, &unk_1016C1120, &qword_1013C49D0);
          sub_10000B3A8(v178, &unk_101696900, &unk_10138B1E0);
          v184 = *v443;
          (*v443)(v542, v174);
          sub_10000B3A8(v172, &unk_1016C1120, &qword_1013C49D0);
          sub_1002DBBF0(v176, type metadata accessor for BeaconPayloadv1);
          *v175 = v429;
          *&v175[v506[6]] = v180;
          *&v175[v506[7]] = v181;
          *&v175[v506[8]] = v182;
          v175[v506[9]] = 15;
          *&v175[v506[13]] = 256;
          v185 = *(v475 + 48);
          (*v401)(v433, loga + v496, v437);
          sub_1002DB7C8(v175, v433 + v185, type metadata accessor for RawSearchResult);
          (*v398)(v433, 0, 1, v458);
          if ((*v395)(v433, 1, v458) == 1)
          {
            v186 = *(v0 + 1000);

            sub_10000B3A8(v186, &qword_10169C968, &qword_101398A10);
            v1 = v532;
            v187 = v522;
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v188 = *(v0 + 792);
            v189 = *(v0 + 760);
            v190 = type metadata accessor for Logger();
            sub_1000076D4(v190, qword_10177A818);
            sub_1002DB760(v188, v189, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            v191 = Logger.logObject.getter();
            v192 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v191, v192))
            {
              v193 = *(v0 + 1272);
              v194 = *(v0 + 760);
              v195 = swift_slowAlloc();
              v196 = swift_slowAlloc();
              v547 = v196;
              *v195 = 141558275;
              *(v195 + 4) = 1752392040;
              *(v195 + 12) = 2081;
              v197 = *(v484 + 20);
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
              v198 = dispatch thunk of CustomStringConvertible.description.getter();
              v200 = v199;
              sub_1002DBBF0(v194, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v201 = sub_1000136BC(v198, v200, &v547);

              *(v195 + 14) = v201;
              _os_log_impl(&_mh_execute_header, v191, v192, "Could not create search result for beacon: %{private,mask.hash}s.", v195, 0x16u);
              sub_100007BAC(v196);
            }

            else
            {
              v151 = *(v0 + 760);

              sub_1002DBBF0(v151, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            }
          }

          else
          {
            v497 = v184;
            v202 = *(v0 + 1088);
            v203 = *(v0 + 1080);
            sub_1000D2AD8(*(v0 + 1000), v202, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v202, v203, &qword_10169C970, &qword_101398A18);
            v204 = *(v475 + 48);
            swift_beginAccess();
            v205 = sub_1005CAD18(v203, *(v0 + 520));
            v206 = *(v0 + 1272);
            if (v205)
            {
              v207 = v205;
              v208 = *(v0 + 1088);
              v209 = *(v0 + 1080);
              v210 = *(v0 + 1072);
              swift_endAccess();
              sub_1002DBBF0(v203 + v204, type metadata accessor for RawSearchResult);
              v543 = *v452;
              (*v452)(v209, v206);
              sub_1000D2A70(v208, v210, &qword_10169C970, &qword_101398A18);
              v211 = (v210 + *(v475 + 48));
              v212 = *(v207 + 40);
              Hasher.init(_seed:)();
              sub_100D15128();
              v213 = Hasher._finalize()();
              v214 = -1 << *(v207 + 32);
              v215 = v213 & ~v214;
              if ((*(v207 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215))
              {
                v216 = ~v214;
                v217 = *v211;
                v218 = *(v385 + 72);
                do
                {
                  v219 = *(v0 + 816);
                  sub_1002DB760(*(v207 + 48) + v215 * v218, v219, type metadata accessor for RawSearchResult);
                  v220 = *(v0 + 816);
                  if (*v219 == v217 && (v221 = v506[5], v222 = static Date.== infix(_:_:)(), v220 = *(v0 + 816), (v222 & 1) != 0) && *(v220 + v506[6]) == *&v211[v506[6]] && *(v220 + v506[7]) == *&v211[v506[7]] && *(v220 + v506[8]) == *&v211[v506[8]])
                  {
                    v223 = v506[12];
                    v224 = *(v0 + 816);
                    v225 = static UUID.== infix(_:_:)();
                    sub_1002DBBF0(v224, type metadata accessor for RawSearchResult);
                    if (v225)
                    {
                      goto LABEL_185;
                    }
                  }

                  else
                  {
                    sub_1002DBBF0(v220, type metadata accessor for RawSearchResult);
                  }

                  v215 = (v215 + 1) & v216;
                }

                while (((*(v207 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) != 0);
              }

              v226 = *(v0 + 832);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_1002DB760(v211, v226, type metadata accessor for RawSearchResult);
              v547 = v207;
              sub_100DFE348(v226, v215, isUniquelyReferenced_nonNull_native);
              v207 = v547;
LABEL_185:
              sub_1002DBBF0(v211, type metadata accessor for RawSearchResult);
              v228 = *(v0 + 1128);
              v229 = *(v0 + 1088);
              v543(*(v0 + 1072), *(v0 + 1272));
              sub_1000D2A70(v229, v228, &qword_10169C970, &qword_101398A18);
              v230 = *(v475 + 48);
              swift_beginAccess();
              sub_1001DE1B0(v207, v228);
            }

            else
            {
              v231 = *(v0 + 1128);
              v232 = *(v0 + 1088);
              v233 = *(v0 + 1080);
              v234 = *(v0 + 1064);
              swift_endAccess();
              sub_1002DBBF0(v203 + v204, type metadata accessor for RawSearchResult);
              v235 = *v452;
              (*v452)(v233, v206);
              sub_1000D2A70(v232, v231, &qword_10169C970, &qword_101398A18);
              v230 = *(v475 + 48);
              sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
              v236 = *(v385 + 72);
              v237 = (*(v385 + 80) + 32) & ~*(v385 + 80);
              v238 = swift_allocObject();
              *(v238 + 16) = xmmword_101385D80;
              sub_1000D2A70(v232, v234, &qword_10169C970, &qword_101398A18);
              sub_1002DB7C8(v234 + *(v475 + 48), v238 + v237, type metadata accessor for RawSearchResult);
              v235(v234, v206);
              v239 = sub_10112A090(v238);
              swift_setDeallocating();
              sub_1002DBBF0(v238 + v237, type metadata accessor for RawSearchResult);
              swift_deallocClassInstance();
              swift_beginAccess();
              v240 = *(v0 + 520);
              v241 = swift_isUniquelyReferenced_nonNull_native();
              v547 = *(v0 + 520);
              sub_100FFC200(v239, v231, v241);
              v543 = v235;
              v235(v231, v206);
              *(v0 + 520) = v547;
            }

            v1 = v532;
            swift_endAccess();
            sub_1002DBBF0(*(v0 + 1128) + v230, type metadata accessor for RawSearchResult);
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v242 = *(v0 + 1088);
            v243 = *(v0 + 1056);
            v244 = *(v0 + 1048);
            v245 = *(v0 + 1040);
            v246 = *(v0 + 792);
            v247 = *(v0 + 768);
            v248 = type metadata accessor for Logger();
            sub_1000076D4(v248, qword_10177A818);
            sub_1002DB760(v246, v247, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            sub_1000D2A70(v242, v243, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v242, v244, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v242, v245, &qword_10169C970, &qword_101398A18);
            v249 = Logger.logObject.getter();
            v250 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v249, v250))
            {
              v459 = v250;
              logb = v249;
              v251 = *(v0 + 1272);
              v252 = *(v0 + 1128);
              v253 = *(v0 + 1056);
              v434 = *(v0 + 1040);
              v426 = *(v0 + 1048);
              v430 = *(v0 + 1032);
              v254 = *(v0 + 856);
              v255 = *(v0 + 840);
              v256 = *(v0 + 768);
              v257 = swift_slowAlloc();
              v547 = swift_slowAlloc();
              *v257 = 141559043;
              *(v257 + 4) = 1752392040;
              *(v257 + 12) = 2081;
              v258 = *(v484 + 20);
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
              v259 = dispatch thunk of CustomStringConvertible.description.getter();
              v261 = v260;
              sub_1002DBBF0(v256, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v262 = sub_1000136BC(v259, v261, &v547);

              *(v257 + 14) = v262;
              *(v257 + 22) = 2082;
              sub_1000D2A70(v253, v252, &qword_10169C970, &qword_101398A18);
              v263 = v252 + *(v475 + 48);
              v377(v254, v263 + v506[5], v255);
              sub_1002DBBF0(v263, type metadata accessor for RawSearchResult);
              v543(v252, v251);
              sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
              v264 = dispatch thunk of CustomStringConvertible.description.getter();
              v266 = v265;
              v497(v254, v255);
              sub_10000B3A8(v253, &qword_10169C970, &qword_101398A18);
              v267 = sub_1000136BC(v264, v266, &v547);

              *(v257 + 24) = v267;
              *(v257 + 32) = 2082;
              sub_1000D2A70(v426, v252, &qword_10169C970, &qword_101398A18);
              v268 = v252 + *(v475 + 48);
              LOBYTE(v267) = *(v268 + v506[9]);
              sub_1002DBBF0(v268, type metadata accessor for RawSearchResult);
              v543(v252, v251);
              v269 = sub_100013454(v267);
              v271 = v270;
              sub_10000B3A8(v426, &qword_10169C970, &qword_101398A18);
              v272 = sub_1000136BC(v269, v271, &v547);

              *(v257 + 34) = v272;
              *(v257 + 42) = 2048;
              sub_1000D2A70(v434, v430, &qword_10169C970, &qword_101398A18);
              swift_beginAccess();
              v273 = *(v0 + 520);
              if (*(v273 + 16) && (v274 = sub_1000210EC(*(v0 + 1032)), (v275 & 1) != 0))
              {
                v276 = *(*(v273 + 56) + 8 * v274);
                swift_endAccess();
                v277 = *(v276 + 16);
              }

              else
              {
                swift_endAccess();
                v277 = 0;
              }

              v1 = v532;
              v283 = *(v0 + 1272);
              v284 = *(v0 + 1088);
              v285 = *(v0 + 1040);
              v286 = *(v0 + 1032);
              sub_1002DBBF0(v286 + *(v475 + 48), type metadata accessor for RawSearchResult);
              v543(v286, v283);
              sub_10000B3A8(v285, &qword_10169C970, &qword_101398A18);
              *(v257 + 44) = v277;
              _os_log_impl(&_mh_execute_header, logb, v459, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v257, 0x34u);
              swift_arrayDestroy();

              v282 = v284;
            }

            else
            {
              v278 = *(v0 + 1088);
              v279 = *(v0 + 1056);
              v280 = *(v0 + 1048);
              v281 = *(v0 + 768);
              sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

              sub_10000B3A8(v280, &qword_10169C970, &qword_101398A18);
              sub_10000B3A8(v279, &qword_10169C970, &qword_101398A18);
              sub_1002DBBF0(v281, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v282 = v278;
            }

            sub_10000B3A8(v282, &qword_10169C970, &qword_101398A18);
            v187 = v522;
          }

          v150 = v187 + 1;
          sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          if (v150 == v537)
          {

            sub_100016590(v1, v503);

            v541 = 0;
            goto LABEL_199;
          }
        }

LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        swift_once();
LABEL_3:
        v4 = *(v0 + 1384);
        v5 = *(v0 + 1376);
        v6 = type metadata accessor for Logger();
        sub_1000076D4(v6, qword_10177A818);
        sub_1002DB760(v4, v5, type metadata accessor for KeyDropFetchResponse.LocationPayload);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();
        v9 = os_log_type_enabled(v7, v8);
        v10 = *(v0 + 1376);
        if (v9)
        {
          v539 = *(v0 + 1424);
          v11 = *(v0 + 1416);
          v12 = *(v0 + 1352);
          v13 = *(v0 + 1272);
          v14 = *(v0 + 1248);
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *(v0 + 568) = v16;
          *v15 = 141558275;
          *(v15 + 4) = 1752392040;
          *(v15 + 12) = 2081;
          sub_1000D2A70(v10 + *(v12 + 28), v14, &qword_1016980D0, &unk_10138F3B0);
          if (v11(v14, 1, v13) == 1)
          {
            sub_10000B3A8(*(v0 + 1248), &qword_1016980D0, &unk_10138F3B0);
            v1 = 0xE300000000000000;
            v17 = 7104878;
          }

          else
          {
            v66 = *(v0 + 1280);
            v67 = *(v0 + 1272);
            v68 = *(v0 + 1248);
            v17 = UUID.uuidString.getter();
            v1 = v69;
            (*(v66 + 8))(v68, v67);
          }

          v52 = *(v0 + 1480);
          v70 = *(v0 + 1472);
          v71 = *(v0 + 1280);
          v535 = *(v0 + 1272);
          v540 = *(v0 + 1344);
          sub_1002DBBF0(*(v0 + 1376), type metadata accessor for KeyDropFetchResponse.LocationPayload);
          v72 = sub_1000136BC(v17, v1, (v0 + 568));

          *(v15 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v7, v8, "Cannot find sharing circle for payload: %{private,mask.hash}s.", v15, 0x16u);
          sub_100007BAC(v16);

          sub_100006654(v70, v52);
          v73 = *(v71 + 8);
          v51 = v71 + 8;
          v73(v540, v535);
        }

        else
        {
          v48 = *(v0 + 1480);
          v49 = *(v0 + 1472);
          v16 = *(v0 + 1344);
          v50 = *(v0 + 1280);
          v51 = *(v0 + 1272);

          sub_100006654(v49, v48);
          sub_1002DBBF0(v10, type metadata accessor for KeyDropFetchResponse.LocationPayload);
          v53 = *(v50 + 8);
          v52 = v50 + 8;
          v53(v16, v51);
        }

        result = sub_1002DBBF0(*(v0 + 1384), type metadata accessor for KeyDropFetchResponse.LocationPayload);
        v541 = *(v0 + 1488);
        goto LABEL_21;
      }

      sub_100016590(v1, v503);

LABEL_199:
      sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_143:
      v82 = v478;
      v83 = v481 + 1;
      if (v481 + 1 == v466)
      {
        goto LABEL_211;
      }

      goto LABEL_28;
    }

    sub_100017D5C(v1, v503);
    sub_100017D5C(v1, v503);
    sub_100017D5C(v123, v125);
    v137 = sub_100F0B1BC(v123, v125, v1, v503);
    v541 = 0;
    sub_100016590(v123, v125);
    sub_100016590(v123, v125);
    sub_100016590(v1, v503);
    v91 = v536;
    if (v137)
    {
      goto LABEL_148;
    }

LABEL_42:
    sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v86 += v521;
    v90 = v91 - 1;
    if (!v90)
    {
      goto LABEL_138;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_327;
  }

LABEL_218:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v317 = swift_allocObject();
  *(v317 + 16) = v391;
  *v381 = v57;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v318 = String.init<A>(describing:)();
  v320 = v319;
  *(v317 + 56) = &type metadata for String;
  *(v317 + 64) = sub_100008C00();
  *(v317 + 32) = v318;
  *(v317 + 40) = v320;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v321 = swift_allocError();
  *v322 = 0;
  swift_willThrow();

LABEL_254:
  v547 = 0;
  v548 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v337 = v548;
  *(v0 + 472) = v547;
  *(v0 + 480) = v337;
  v338._countAndFlagsBits = 0xD000000000000021;
  v338._object = 0x800000010134CB30;
  String.append(_:)(v338);
  *(v0 + 584) = v321;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v339 = *(v0 + 472);
  v340 = *(v0 + 480);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002BA248()
{
  v2 = *v1;
  v3 = *(*v1 + 1600);
  v4 = *v1;
  v2[201] = v0;

  v5 = v2[199];
  v6 = v2[198];
  v7 = v2[196];
  v8 = v2[195];
  v9 = v2[81];
  if (v0)
  {
    if (v2[79])
    {
      v10 = v2[79];
    }

    sub_100016590(v6, v5);
    sub_100016590(v8, v7);

    v11 = sub_1002D1928;
  }

  else
  {
    sub_100016590(v6, v5);
    sub_100016590(v8, v7);
    v11 = sub_1002BA40C;
  }

  return _swift_task_switch(v11, v9, 0);
}

uint64_t sub_1002BA40C()
{
  v524 = v1;
  v2 = *(v1 + 1008);
  if ((*(*(v1 + 1024) + 48))(v2, 1, *(v1 + 1016)) != 1)
  {
    v225 = *(v1 + 1392);
    sub_1000D2AD8(v2, *(v1 + 1152), &qword_10169C970, &qword_101398A18);
    v54 = sub_1002BD4EC;
    v55 = v225;
    v56 = 0;

    return _swift_task_switch(v54, v55, v56);
  }

  sub_100016590(*(v1 + 1560), *(v1 + 1568));
  sub_10000B3A8(v2, &qword_10169C968, &qword_101398A10);
  v3 = *(v1 + 1608);
  v4 = *(v1 + 1552) + 1;
  if (v4 != *(v1 + 1544))
  {
    *(v1 + 1552) = v4;
    v226 = *(v1 + 1536);
    if (v4 >= *(v226 + 16))
    {
LABEL_307:
      __break(1u);
      goto LABEL_308;
    }

    v227 = *(v1 + 1480);
    v228 = v227 >> 62;
    v229 = v226 + 24 * v4;
    v230 = *(v229 + 32);
    *(v1 + 1560) = v230;
    v0 = *(v229 + 40);
    *(v1 + 1568) = v0;
    v231 = *(v229 + 48);
    *(v1 + 1580) = *(v229 + 52);
    *(v1 + 1576) = v231;
    if ((v227 >> 62) > 1)
    {
      if (v228 != 2)
      {
        v234 = 0;
        v232 = 0;
        v235 = 0;
        v233 = 0;
        goto LABEL_214;
      }

      v249 = *(v1 + 1472);
      v232 = *(v249 + 16);
      v234 = *(v249 + 24);
    }

    else
    {
      if (!v228)
      {
        v232 = 0;
        v233 = 0;
        v234 = BYTE6(v227);
        v235 = BYTE6(v227);
        goto LABEL_214;
      }

      v249 = *(v1 + 1472);
      v234 = v249 >> 32;
      v232 = v249;
    }

    sub_10002E98C(v249, v227);
    if (v234 < v232)
    {
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
      goto LABEL_310;
    }

    v227 = *(v1 + 1480);
    v271 = *(v1 + 1472);
    if (v227 >> 62 == 2)
    {
      v233 = *(v271 + 16);
      v235 = *(v271 + 24);
    }

    else
    {
      v235 = v271 >> 32;
      v233 = v271;
    }

LABEL_214:
    if (v235 < v234 || v234 < v233)
    {
      goto LABEL_309;
    }

    if (__OFSUB__(v234, v232))
    {
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
      goto LABEL_319;
    }

    if ((v234 - v232) >= 0x39)
    {
      v273 = v232 + 57;
      if (__OFADD__(v232, 57))
      {
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
        goto LABEL_323;
      }

      v274 = v227 >> 62;
      if ((v227 >> 62) > 1)
      {
        if (v274 == 2)
        {
          v278 = *(v1 + 1472);
          v275 = *(v278 + 16);
          v276 = *(v278 + 24);
        }

        else
        {
          v276 = 0;
          v275 = 0;
        }
      }

      else if (v274)
      {
        v275 = *(v1 + 1472);
        v276 = v275 >> 32;
        v275 = v275;
      }

      else
      {
        v275 = 0;
        v276 = BYTE6(v227);
      }

      if (v276 < v273 || v273 < v275)
      {
        goto LABEL_320;
      }

      v286 = 0;
      if (v274 <= 1)
      {
        if (v274)
        {
          v286 = *(v1 + 1472);
        }

LABEL_243:
        if (v273 < v286)
        {
          goto LABEL_311;
        }

LABEL_244:
        v287 = *(v1 + 1472);
        sub_100017D5C(v230, v0);
        sub_100017D5C(v230, v0);
        v288 = Data._Representation.subscript.getter();
        v290 = v289;
        sub_100006654(v287, v227);
        v291 = v290 >> 62;
        if ((v290 >> 62) > 1)
        {
          if (v291 != 2)
          {
            goto LABEL_258;
          }

          v293 = *(v288 + 16);
          v292 = *(v288 + 24);
          v50 = __OFSUB__(v292, v293);
          v294 = v292 - v293;
          if (!v50)
          {
            if (v294 != 57)
            {
              goto LABEL_258;
            }

            goto LABEL_251;
          }

          __break(1u);
        }

        else
        {
          if (!v291)
          {
            if (BYTE6(v290) != 57)
            {
LABEL_258:
              v309 = v288;
              v310 = v290;
LABEL_259:
              sub_100016590(v309, v310);
              return _assertionFailure(_:_:file:line:flags:)();
            }

LABEL_251:
            v295 = sub_100A7A194(v288, v290);
            if (v3)
            {
              v0 = v1 + 560;
              static os_log_type_t.error.getter();
              if (qword_101694BE0 == -1)
              {
LABEL_254:
                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v299 = swift_allocObject();
                *(v299 + 16) = xmmword_101385D80;
                *v0 = v3;
                swift_errorRetain();
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                v300 = String.init<A>(describing:)();
                v302 = v301;
                *(v299 + 56) = &type metadata for String;
                *(v299 + 64) = sub_100008C00();
                *(v299 + 32) = v300;
                *(v299 + 40) = v302;
                os_log(_:dso:log:_:_:)();

                sub_1001BAF88();
                v303 = swift_allocError();
                *v304 = 0;
                swift_willThrow();

LABEL_255:
                v522 = 0;
                v523 = 0xE000000000000000;
                _StringGuts.grow(_:)(35);
                v305 = v523;
                *(v1 + 504) = v522;
                *(v1 + 512) = v305;
                v306._countAndFlagsBits = 0xD000000000000021;
                v306._object = 0x800000010134CB30;
                String.append(_:)(v306);
                *(v1 + 552) = v303;
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                _print_unlocked<A, B>(_:_:)();
                v307 = *(v1 + 504);
                v308 = *(v1 + 512);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_323:
              swift_once();
              goto LABEL_254;
            }

            v296 = v295;
            v297 = sub_100A7829C(v295, 0);
            *(v1 + 1584) = v297;
            *(v1 + 1592) = v298;
            v312 = v297;
            v313 = v298;
            v54 = CCECCryptorRelease();
            v314 = v313 >> 62;
            if ((v313 >> 62) > 1)
            {
              if (v314 != 2)
              {
                v342 = 0;
                goto LABEL_298;
              }

              v324 = v312[2];
              v323 = v312[3];
              v50 = __OFSUB__(v323, v324);
              v315 = v323 - v324;
              if (v50)
              {
                __break(1u);
                v325 = *(v1 + 792);
                v326 = *(v1 + 712);

                sub_100016590(v296, v230);

                sub_100016590(v506, v476);

                sub_1002DBBF0(v325, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1002DBBF0(v326, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
                v327 = *(v1 + 1384);
                v328 = *(v1 + 1376);
                v329 = *(v1 + 1368);
                v330 = *(v1 + 1344);
                v331 = *(v1 + 1336);
                v332 = *(v1 + 1328);
                v333 = *(v1 + 1320);
                v334 = *(v1 + 1312);
                v347 = *(v1 + 1304);
                v349 = *(v1 + 1296);
                v352 = *(v1 + 1264);
                v354 = *(v1 + 1256);
                v357 = *(v1 + 1248);
                v360 = *(v1 + 1240);
                v362 = *(v1 + 1232);
                v364 = *(v1 + 1208);
                v367 = *(v1 + 1192);
                v370 = *(v1 + 1168);
                v373 = *(v1 + 1152);
                v376 = *(v1 + 1144);
                v379 = *(v1 + 1136);
                v382 = *(v1 + 1128);
                v385 = *(v1 + 1120);
                v387 = *(v1 + 1112);
                v390 = *(v1 + 1104);
                v392 = *(v1 + 1096);
                v394 = *(v1 + 1088);
                v397 = *(v1 + 1080);
                v401 = *(v1 + 1072);
                v405 = *(v1 + 1064);
                v409 = *(v1 + 1056);
                v412 = *(v1 + 1048);
                v415 = *(v1 + 1040);
                v418 = *(v1 + 1032);
                v421 = *(v1 + 1008);
                v424 = *(v1 + 1000);
                v427 = *(v1 + 992);
                v429 = *(v1 + 984);
                v434 = *(v1 + 976);
                v438 = *(v1 + 968);
                v441 = *(v1 + 960);
                v444 = *(v1 + 952);
                v447 = *(v1 + 944);
                v450 = *(v1 + 936);
                v453 = *(v1 + 912);
                v456 = *(v1 + 888);
                v459 = *(v1 + 864);
                v462 = *(v1 + 856);
                logd = *(v1 + 832);
                v472 = *(v1 + 824);
                v475 = *(v1 + 816);
                v479 = *(v1 + 792);
                v482 = *(v1 + 784);
                v485 = *(v1 + 776);
                v488 = *(v1 + 768);
                v491 = *(v1 + 760);
                v494 = *(v1 + 736);
                v498 = *(v1 + 712);
                v502 = *(v1 + 696);
                v505 = *(v1 + 688);
                v509 = *(v1 + 680);
                v513 = *(v1 + 672);
                v519 = *(v1 + 656);
                v335 = *(v1 + 520);

                v336 = *(v1 + 8);

                return v336();
              }
            }

            else if (v314)
            {
              LODWORD(v315) = HIDWORD(v312) - v312;
              if (__OFSUB__(HIDWORD(v312), v312))
              {
                goto LABEL_330;
              }

              v315 = v315;
            }

            else
            {
              v315 = BYTE6(v313);
            }

            if (v315 == 28)
            {
              sub_100016590(v288, v290);
              v337 = swift_task_alloc();
              *(v1 + 1600) = v337;
              *v337 = v1;
              v337[1] = sub_1002BA248;
              v338 = *(v1 + 1528);
              v339 = *(v1 + 1336);
              v340 = *(v1 + 1008);
              v341 = *(v1 + 648);

              return sub_1002D7014(v340, v230, v0, v338, v312, v313, 0, v339);
            }

            if (v314 == 2)
            {
              v344 = v312[2];
              v343 = v312[3];
              v342 = v343 - v344;
              if (!__OFSUB__(v343, v344))
              {
                goto LABEL_298;
              }

              __break(1u);
            }

            else if (v314 == 1)
            {
              if (__OFSUB__(HIDWORD(v312), v312))
              {
                goto LABEL_331;
              }

              v342 = HIDWORD(v312) - v312;
              goto LABEL_298;
            }

            v342 = BYTE6(v313);
LABEL_298:
            sub_100018350();
            v303 = swift_allocError();
            *v345 = 28;
            *(v345 + 8) = v342;
            *(v345 + 16) = 0;
            swift_willThrow();
            sub_100016590(v312, v313);
            goto LABEL_255;
          }

          if (!__OFSUB__(HIDWORD(v288), v288))
          {
            if (HIDWORD(v288) - v288 != 57)
            {
              goto LABEL_258;
            }

            goto LABEL_251;
          }
        }

        __break(1u);
LABEL_326:
        swift_once();
        goto LABEL_230;
      }

      if (v274 != 2)
      {
        goto LABEL_243;
      }

      v277 = *(v1 + 1472);
    }

    else
    {
      v272 = v227 >> 62;
      if ((v227 >> 62) <= 1)
      {
        if (!v272)
        {
          goto LABEL_244;
        }

        v285 = *(v1 + 1472);
        v273 = v285 >> 32;
        v286 = v285;
        goto LABEL_243;
      }

      if (v272 != 2)
      {
        goto LABEL_244;
      }

      v277 = *(v1 + 1472);
      v273 = *(v277 + 24);
    }

    v286 = *(v277 + 16);
    goto LABEL_243;
  }

  v514 = *(v1 + 1608);
  v5 = *(v1 + 1480);
  v0 = *(v1 + 1472);
  v3 = *(v1 + 1384);
  v6 = *(v1 + 1344);
  v7 = *(v1 + 1336);
  v8 = *(v1 + 1280);
  v9 = *(v1 + 1272);

  sub_100006654(v0, v5);
  v10 = *(v8 + 8);
  v10(v6, v9);
  sub_1002DBBF0(v3, type metadata accessor for KeyDropFetchResponse.LocationPayload);
  v10(v7, v9);
  v11 = *(v1 + 1408) + 1;
  if (v11 != *(v1 + 1400))
  {
    v0 = &qword_1016980D0;
    while (1)
    {
      *(v1 + 1408) = v11;
      v236 = *(v1 + 632);
      if (!v236)
      {
        v236 = _swiftEmptyArrayStorage;
      }

      if (v11 >= v236[2])
      {
        break;
      }

      v237 = *(v1 + 1384);
      v238 = *(v1 + 1352);
      v239 = *(v1 + 1280);
      v240 = *(v1 + 1272);
      v241 = *(v1 + 1264);
      sub_1002DB760(v236 + ((*(v1 + 1768) + 32) & ~*(v1 + 1768)) + *(*(v1 + 1360) + 72) * v11, v237, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v242 = *(v237 + 16);
      v243 = *(v237 + 24);
      sub_1000D2A70(v237 + *(v238 + 28), v241, &qword_1016980D0, &unk_10138F3B0);
      v244 = *(v239 + 48);
      *(v1 + 1416) = v244;
      *(v1 + 1424) = (v239 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v244(v241, 1, v240) != 1)
      {
        v261 = *(v1 + 1344);
        v262 = *(v1 + 1280);
        v263 = *(v1 + 1272);
        v264 = *(v1 + 1264);
        v265 = *(v1 + 1256);
        v266 = *(v262 + 32);
        *(v1 + 1432) = v266;
        *(v1 + 1440) = (v262 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v266(v261, v264, v263);
        v267 = *(v262 + 16);
        *(v1 + 1448) = v267;
        *(v1 + 1456) = (v262 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v267(v265, v261, v263);
        (*(v262 + 56))(v265, 0, 1, v263);
        v268 = swift_task_alloc();
        *(v1 + 1464) = v268;
        *v268 = v1;
        v268[1] = sub_1002B09AC;
        v269 = *(v1 + 1256);
        v270 = *(v1 + 648);

        return sub_1002D5B7C(v242, v243, v269);
      }

      sub_10000B3A8(*(v1 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      v245 = type metadata accessor for Logger();
      sub_1000076D4(v245, qword_10177A818);
      v246 = Logger.logObject.getter();
      v247 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v246, v247))
      {
        v248 = swift_slowAlloc();
        *v248 = 0;
        _os_log_impl(&_mh_execute_header, v246, v247, "Missing share id in payload.", v248, 2u);
      }

      v3 = *(v1 + 1384);

      sub_1002DBBF0(v3, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v11 = *(v1 + 1408) + 1;
      if (v11 == *(v1 + 1400))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
LABEL_306:
    __break(1u);
    goto LABEL_307;
  }

LABEL_4:
  v12 = _swiftEmptyArrayStorage;
  if (*(v1 + 632))
  {
    v13 = *(v1 + 632);
  }

  if (*(v1 + 624))
  {
    v12 = *(v1 + 624);
  }

  v439 = v12[2];
  if (!v439)
  {

LABEL_202:

    v250 = *(v1 + 1384);
    v251 = *(v1 + 1376);
    v252 = *(v1 + 1368);
    v253 = *(v1 + 1344);
    v254 = *(v1 + 1336);
    v255 = *(v1 + 1328);
    v256 = *(v1 + 1320);
    v257 = *(v1 + 1312);
    v258 = *(v1 + 1304);
    v346 = *(v1 + 1296);
    v348 = *(v1 + 1264);
    v351 = *(v1 + 1256);
    v353 = *(v1 + 1248);
    v356 = *(v1 + 1240);
    v359 = *(v1 + 1232);
    v361 = *(v1 + 1208);
    v363 = *(v1 + 1192);
    v366 = *(v1 + 1168);
    v369 = *(v1 + 1152);
    v372 = *(v1 + 1144);
    v375 = *(v1 + 1136);
    v378 = *(v1 + 1128);
    v381 = *(v1 + 1120);
    v384 = *(v1 + 1112);
    v386 = *(v1 + 1104);
    v389 = *(v1 + 1096);
    v391 = *(v1 + 1088);
    v393 = *(v1 + 1080);
    v396 = *(v1 + 1072);
    v400 = *(v1 + 1064);
    v404 = *(v1 + 1056);
    v408 = *(v1 + 1048);
    v411 = *(v1 + 1040);
    v414 = *(v1 + 1032);
    v417 = *(v1 + 1008);
    v420 = *(v1 + 1000);
    v423 = *(v1 + 992);
    v426 = *(v1 + 984);
    v428 = *(v1 + 976);
    v433 = *(v1 + 968);
    v437 = *(v1 + 960);
    v440 = *(v1 + 952);
    v443 = *(v1 + 944);
    v446 = *(v1 + 936);
    v449 = *(v1 + 912);
    v452 = *(v1 + 888);
    v455 = *(v1 + 864);
    v458 = *(v1 + 856);
    v461 = *(v1 + 832);
    logc = *(v1 + 824);
    v471 = *(v1 + 816);
    v474 = *(v1 + 792);
    v478 = *(v1 + 784);
    v481 = *(v1 + 776);
    v484 = *(v1 + 768);
    v487 = *(v1 + 760);
    v490 = *(v1 + 736);
    v493 = *(v1 + 712);
    v497 = *(v1 + 696);
    v501 = *(v1 + 688);
    v504 = *(v1 + 680);
    v508 = *(v1 + 672);
    v518 = *(v1 + 656);
    swift_beginAccess();
    v512 = *(v1 + 520);

    v259 = *(v1 + 8);

    return v259(v512);
  }

  v14 = *(v1 + 1280);
  v355 = (v1 + 600);
  v15 = *(v1 + 1024);
  v16 = *(v1 + 1016);
  v17 = *(v1 + 848);
  v358 = *(v1 + 808);
  v480 = *(v1 + 800);
  v460 = *(v1 + 792);
  v503 = *(v1 + 776);
  v422 = *(v1 + 752);
  v457 = *(v1 + 744);
  v18 = *(v1 + 728);
  v445 = v12 + 4;
  v413 = *(v1 + 712);
  v492 = (v18 + 104);
  v489 = (v18 + 8);
  v473 = *(v1 + 704);
  v383 = (*(v1 + 928) + 56);
  v419 = (v17 + 16);
  v380 = *(v1 + 664);
  v377 = (v17 + 56);
  v416 = (v17 + 8);
  v374 = (v14 + 16);
  v368 = (v15 + 48);
  v371 = (v15 + 56);
  v442 = *(*(v1 + 640) + 16);
  v425 = (v14 + 8);
  v486 = enum case for HashAlgorithm.sha256(_:);
  v451 = v12;

  v19 = v12;
  v20 = 0;
  v365 = xmmword_101385D80;
  v21 = v514;
  v448 = v16;
LABEL_10:
  if (v20 >= v19[2])
  {
    goto LABEL_312;
  }

  v515 = v21;
  v3 = v442;
  v454 = v20;
  v22 = &v445[3 * v20];
  v24 = *v22;
  v23 = v22[1];
  v477 = v23;
  v483 = v22[2];
  if (!v442)
  {
    sub_100017D5C(v24, v23);

LABEL_120:
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_1000076D4(v78, qword_10177A818);
    sub_100017D5C(v24, v477);

    v0 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    sub_100016590(v24, v477);

    if (os_log_type_enabled(v0, v79))
    {
      v80 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v522 = v3;
      *v80 = 141558275;
      *(v80 + 4) = 1752392040;
      *(v80 + 12) = 2081;
      *(v1 + 488) = v24;
      *(v1 + 496) = v477;
      sub_10025DB08();
      v81 = RawRepresentable<>.hexString.getter();
      v83 = sub_1000136BC(v81, v82, &v522);

      *(v80 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v0, v79, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v80, 0x16u);
      sub_100007BAC(v3);
    }

    sub_100016590(v24, v477);

    v21 = v515;
    goto LABEL_125;
  }

  v25 = *(v1 + 640) + ((*(v422 + 80) + 32) & ~*(v422 + 80));
  sub_100017D5C(v24, v23);
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23 == 0xC000000000000000;
  }

  v27 = !v26;
  v468 = v27;
  log = BYTE6(v23);
  v495 = *(v422 + 72);
  v28 = __OFSUB__(HIDWORD(v24), v24);
  v435 = v28;
  v430 = (HIDWORD(v24) - v24);

  v29 = v442;
  v507 = v24;
  v499 = v23 >> 62;
  while (1)
  {
    v31 = *(v1 + 776);
    sub_1002DB760(v25, v31, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v0 = *v31;
    v32 = *(v503 + 8);
    v3 = (v32 >> 62);
    if ((v32 >> 62) > 1)
    {
      if (v3 == 2)
      {
        v33 = *(v0 + 16);
        v35 = *(v0 + 24);
        sub_100017D5C(v0, *(v503 + 8));
        v34 = *(v0 + 16);
        v36 = *(v0 + 24);
      }

      else
      {
        v33 = 0;
        v35 = 0;
        v36 = 0;
        v34 = 0;
      }
    }

    else if (v3)
    {
      v33 = v0;
      v35 = v0 >> 32;
      sub_100017D5C(v0, *(v503 + 8));
      v36 = v0 >> 32;
      v34 = v0;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v35 = BYTE6(v32);
      v36 = BYTE6(v32);
    }

    if (v36 < v33 || v33 < v34)
    {
      goto LABEL_300;
    }

    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v37 = *(v0 + 16);
        v38 = *(v0 + 24);
      }

      else
      {
        v38 = 0;
        v37 = 0;
      }
    }

    else if (v3)
    {
      v37 = v0;
      v38 = v0 >> 32;
    }

    else
    {
      v37 = 0;
      v38 = BYTE6(v32);
    }

    if (v38 < v35 || v35 < v37)
    {
      goto LABEL_301;
    }

    if (__OFSUB__(v35, v33))
    {
      goto LABEL_302;
    }

    if ((v35 - v33) < 0x39)
    {
      if (v3 <= 1)
      {
        if (!v3)
        {
          goto LABEL_68;
        }

        v39 = v0 >> 32;
LABEL_64:
        v42 = v0;
        goto LABEL_67;
      }

      if (v3 != 2)
      {
        goto LABEL_68;
      }

      v39 = *(v0 + 24);
LABEL_66:
      v42 = *(v0 + 16);
      goto LABEL_67;
    }

    v39 = v33 + 57;
    if (__OFADD__(v33, 57))
    {
      goto LABEL_304;
    }

    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v40 = *(v0 + 16);
        v41 = *(v0 + 24);
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }
    }

    else if (v3)
    {
      v40 = v0;
      v41 = v0 >> 32;
    }

    else
    {
      v40 = 0;
      v41 = BYTE6(v32);
    }

    if (v41 < v39 || v39 < v40)
    {
      goto LABEL_305;
    }

    v42 = 0;
    if (v3 <= 1)
    {
      if (!v3)
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    if (v3 != 3)
    {
      goto LABEL_66;
    }

LABEL_67:
    if (v39 < v42)
    {
      goto LABEL_303;
    }

LABEL_68:
    v510 = v29;
    v43 = Data._Representation.subscript.getter();
    v45 = v44;
    sub_100016590(v0, v32);
    v46 = v45 >> 62;
    if ((v45 >> 62) > 1)
    {
      v3 = v515;
      if (v46 != 2)
      {
        goto LABEL_261;
      }

      v49 = *(v43 + 16);
      v48 = *(v43 + 24);
      v50 = __OFSUB__(v48, v49);
      v47 = v48 - v49;
      if (v50)
      {
        goto LABEL_313;
      }
    }

    else
    {
      v3 = v515;
      if (v46)
      {
        LODWORD(v47) = HIDWORD(v43) - v43;
        if (__OFSUB__(HIDWORD(v43), v43))
        {
          goto LABEL_314;
        }

        v47 = v47;
      }

      else
      {
        v47 = BYTE6(v45);
      }
    }

    if (v47 != 57)
    {
LABEL_261:
      v309 = v43;
      v310 = v45;
      goto LABEL_259;
    }

    v51 = sub_100A7A194(v43, v45);
    if (v3)
    {
      break;
    }

    v52 = sub_100A7829C(v51, 0);
    v0 = v53;
    v54 = CCECCryptorRelease();
    v57 = v0 >> 62;
    if ((v0 >> 62) > 1)
    {
      if (v57 != 2)
      {
        v311 = 0;
        goto LABEL_274;
      }

      v60 = *(v52 + 16);
      v59 = *(v52 + 24);
      v50 = __OFSUB__(v59, v60);
      v58 = v59 - v60;
      if (v50)
      {
        goto LABEL_316;
      }
    }

    else if (v57)
    {
      LODWORD(v58) = HIDWORD(v52) - v52;
      if (__OFSUB__(HIDWORD(v52), v52))
      {
        goto LABEL_315;
      }

      v58 = v58;
    }

    else
    {
      v58 = BYTE6(v0);
    }

    if (v58 != 28)
    {
      if (v57 == 2)
      {
        v317 = *(v52 + 16);
        v316 = *(v52 + 24);
        v311 = v316 - v317;
        if (!__OFSUB__(v316, v317))
        {
          goto LABEL_274;
        }

        __break(1u);
      }

      else if (v57 == 1)
      {
        if (!__OFSUB__(HIDWORD(v52), v52))
        {
          v311 = HIDWORD(v52) - v52;
LABEL_274:
          sub_100018350();
          v283 = swift_allocError();
          *v318 = 28;
          *(v318 + 8) = v311;
          *(v318 + 16) = 0;
          swift_willThrow();
          sub_100016590(v52, v0);
          goto LABEL_275;
        }

LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
        return _swift_task_switch(v54, v55, v56);
      }

      v311 = BYTE6(v0);
      goto LABEL_274;
    }

    v61 = *(v1 + 736);
    v62 = *(v1 + 720);
    sub_100016590(v43, v45);
    (*v492)(v61, v486, v62);
    v63 = Data.hash(algorithm:)();
    v65 = v64;
    sub_100016590(v52, v0);
    (*v489)(v61, v62);
    v66 = v65 >> 62;
    if (v65 >> 62 == 3)
    {
      if (v63)
      {
        v67 = 0;
      }

      else
      {
        v67 = v65 == 0xC000000000000000;
      }

      v68 = v499;
      v70 = !v67 || v499 < 3;
      v24 = v507;
      if (((v70 | v468) & 1) == 0)
      {
        v84 = 0;
        v85 = 0xC000000000000000;
        goto LABEL_129;
      }

      v71 = 0;
      if (v499 <= 1)
      {
LABEL_109:
        v74 = log;
        if (v68)
        {
          v74 = v430;
          if (v435)
          {
            goto LABEL_317;
          }
        }

        goto LABEL_115;
      }
    }

    else
    {
      v24 = v507;
      v68 = v499;
      if (v66 == 2)
      {
        v73 = *(v63 + 16);
        v72 = *(v63 + 24);
        v50 = __OFSUB__(v72, v73);
        v71 = v72 - v73;
        if (v50)
        {
          goto LABEL_322;
        }

        if (v499 <= 1)
        {
          goto LABEL_109;
        }
      }

      else if (v66 == 1)
      {
        LODWORD(v71) = HIDWORD(v63) - v63;
        if (__OFSUB__(HIDWORD(v63), v63))
        {
          goto LABEL_321;
        }

        v71 = v71;
        if (v499 <= 1)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v71 = BYTE6(v65);
        if (v499 <= 1)
        {
          goto LABEL_109;
        }
      }
    }

    if (v68 != 2)
    {
      if (!v71)
      {
        goto LABEL_127;
      }

LABEL_23:
      sub_100016590(v63, v65);
      v515 = 0;
      v30 = v510;
      goto LABEL_24;
    }

    v76 = *(v24 + 16);
    v75 = *(v24 + 24);
    v50 = __OFSUB__(v75, v76);
    v74 = (v75 - v76);
    if (v50)
    {
      goto LABEL_318;
    }

LABEL_115:
    if (v71 != v74)
    {
      goto LABEL_23;
    }

    if (v71 < 1)
    {
LABEL_127:
      v84 = v63;
      v85 = v65;
LABEL_129:
      sub_100016590(v84, v85);
LABEL_130:
      v86 = *(v1 + 792);
      v0 = *(v1 + 784);
      v3 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey;
      sub_1002DB7C8(*(v1 + 776), v0, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      sub_1002DB7C8(v0, v86, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v511 = *(v483 + 16);
      if (v511)
      {
        v500 = v483 + ((*(v473 + 80) + 32) & ~*(v473 + 80));

        v87 = 0;
        v3 = 0;
        while (v87 < *(v483 + 16))
        {
          v89 = *(v1 + 792);
          sub_1002DB760(v500 + *(v473 + 72) * v87, *(v1 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          v90 = *v89;
          v91 = *(v460 + 8);
          v92 = sub_100496ABC();
          v93 = **(v1 + 712);
          v94 = *(v413 + 8);
          v95 = **(v1 + 792);
          v96 = *(v460 + 8);
          sub_100017D5C(v95, v96);
          sub_10002EA98(57, v95, v96, &v522);
          sub_100496F68(v522, v523, &v520);
          v97 = v521;
          if (v521 >> 60 == 15)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v496 = v87;
          loga = *(v1 + 792);
          v98 = v520;
          v99 = PublicKey.advertisement.getter(v520, v521);
          v101 = v100;
          v54 = sub_100006654(v98, v97);
          v102 = v94 >> 62;
          v469 = *(v457 + 20);
          if ((v94 >> 62) > 1)
          {
            if (v102 == 2)
            {
              v105 = *(v93 + 16);
              v104 = *(v93 + 24);
              v103 = v104 - v105;
              if (__OFSUB__(v104, v105))
              {
                goto LABEL_328;
              }
            }

            else
            {
              v103 = 0;
            }
          }

          else if (v102)
          {
            if (__OFSUB__(HIDWORD(v93), v93))
            {
              __break(1u);
LABEL_328:
              __break(1u);
              goto LABEL_329;
            }

            v103 = HIDWORD(v93) - v93;
          }

          else
          {
            v103 = BYTE6(v94);
          }

          sub_100A2A240(3);
          v107 = v106;
          v108 = v92;
          sub_100017D5C(v93, v94);
          sub_100017D5C(v99, v101);
          if (v103 >= v107)
          {
            v109 = (v1 + 672);
            sub_100A2AA58(v108, v93, v94, v99, v101, *(v1 + 672));
          }

          else
          {
            v109 = (v1 + 680);
            sub_100A2B118(v108, v93, v94, v99, v101, *(v1 + 680));
          }

          v110 = *v109;
          v431 = *(v1 + 1016);
          v436 = v108;
          v406 = *(v1 + 1000);
          v410 = *(v1 + 1272);
          v111 = *(v1 + 976);
          v388 = *(v1 + 968);
          v112 = *(v1 + 920);
          v516 = *(v1 + 856);
          v395 = v99;
          v398 = v101;
          v113 = *(v1 + 840);
          v114 = *(v1 + 832);
          v115 = *(v1 + 696);
          v116 = *(v1 + 688);
          v117 = *(v1 + 656);
          sub_1002DB7C8(v110, v116, type metadata accessor for BeaconPayloadv1);
          sub_1002DB7C8(v116, v115, type metadata accessor for BeaconPayloadv1);
          (*v383)(v111, 1, 1, v112);
          v402 = *(v115 + v380[10]);
          v118 = *v419;
          (*v419)(v516, v115 + v380[5], v113);
          v119 = *(v115 + v380[7]);
          v120 = *(v115 + v380[8]);
          v121 = *(v115 + v380[9]);
          (*v377)(v117, 1, 1, v113);
          sub_1000D2A70(v111, v388, &unk_1016C1120, &qword_1013C49D0);
          v350 = v118;
          v118(&v114[v480[5]], v516, v113);
          sub_1000D2A70(v117, &v114[v480[10]], &unk_101696900, &unk_10138B1E0);
          sub_1000D2A70(v388, &v114[v480[11]], &unk_1016C1120, &qword_1013C49D0);
          v122 = &v114[v480[12]];
          UUID.init()();
          sub_100016590(v395, v398);
          sub_10000B3A8(v388, &unk_1016C1120, &qword_1013C49D0);
          sub_10000B3A8(v117, &unk_101696900, &unk_10138B1E0);
          v123 = *v416;
          (*v416)(v516, v113);
          sub_10000B3A8(v111, &unk_1016C1120, &qword_1013C49D0);
          sub_1002DBBF0(v115, type metadata accessor for BeaconPayloadv1);
          *v114 = v402;
          *&v114[v480[6]] = v119;
          *&v114[v480[7]] = v120;
          *&v114[v480[8]] = v121;
          v114[v480[9]] = 15;
          *&v114[v480[13]] = 256;
          v124 = *(v448 + 48);
          (*v374)(v406, loga + v469, v410);
          sub_1002DB7C8(v114, v406 + v124, type metadata accessor for RawSearchResult);
          (*v371)(v406, 0, 1, v431);
          if ((*v368)(v406, 1, v431) == 1)
          {
            v125 = *(v1 + 1000);

            sub_10000B3A8(v125, &qword_10169C968, &qword_101398A10);
            v126 = v507;
            v127 = v496;
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v128 = *(v1 + 792);
            v129 = *(v1 + 760);
            v130 = type metadata accessor for Logger();
            sub_1000076D4(v130, qword_10177A818);
            sub_1002DB760(v128, v129, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            v0 = Logger.logObject.getter();
            v131 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v0, v131))
            {
              v132 = *(v1 + 1272);
              v133 = *(v1 + 760);
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v522 = v135;
              *v134 = 141558275;
              *(v134 + 4) = 1752392040;
              *(v134 + 12) = 2081;
              v136 = *(v457 + 20);
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
              v137 = dispatch thunk of CustomStringConvertible.description.getter();
              v139 = v138;
              sub_1002DBBF0(v133, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v140 = sub_1000136BC(v137, v139, &v522);

              *(v134 + 14) = v140;
              _os_log_impl(&_mh_execute_header, v0, v131, "Could not create search result for beacon: %{private,mask.hash}s.", v134, 0x16u);
              sub_100007BAC(v135);
            }

            else
            {
              v88 = *(v1 + 760);

              sub_1002DBBF0(v88, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            }
          }

          else
          {
            v470 = v123;
            v141 = *(v1 + 1088);
            v142 = *(v1 + 1080);
            sub_1000D2AD8(*(v1 + 1000), v141, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v141, v142, &qword_10169C970, &qword_101398A18);
            v143 = *(v448 + 48);
            swift_beginAccess();
            v144 = sub_1005CAD18(v142, *(v1 + 520));
            v145 = *(v1 + 1272);
            if (v144)
            {
              v146 = v144;
              v147 = *(v1 + 1088);
              v148 = *(v1 + 1080);
              v149 = *(v1 + 1072);
              swift_endAccess();
              sub_1002DBBF0(v142 + v143, type metadata accessor for RawSearchResult);
              v517 = *v425;
              (*v425)(v148, v145);
              sub_1000D2A70(v147, v149, &qword_10169C970, &qword_101398A18);
              v150 = (v149 + *(v448 + 48));
              v151 = *(v146 + 40);
              Hasher.init(_seed:)();
              sub_100D15128();
              v152 = Hasher._finalize()();
              v153 = -1 << *(v146 + 32);
              v154 = v152 & ~v153;
              if ((*(v146 + 56 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154))
              {
                v155 = ~v153;
                v156 = *v150;
                v157 = *(v358 + 72);
                do
                {
                  v158 = *(v1 + 816);
                  sub_1002DB760(*(v146 + 48) + v154 * v157, v158, type metadata accessor for RawSearchResult);
                  v159 = *(v1 + 816);
                  if (*v158 == v156 && (v160 = v480[5], v161 = static Date.== infix(_:_:)(), v159 = *(v1 + 816), (v161 & 1) != 0) && *(v159 + v480[6]) == *&v150[v480[6]] && *(v159 + v480[7]) == *&v150[v480[7]] && *(v159 + v480[8]) == *&v150[v480[8]])
                  {
                    v162 = v480[12];
                    v163 = *(v1 + 816);
                    v164 = static UUID.== infix(_:_:)();
                    sub_1002DBBF0(v163, type metadata accessor for RawSearchResult);
                    if (v164)
                    {
                      goto LABEL_167;
                    }
                  }

                  else
                  {
                    sub_1002DBBF0(v159, type metadata accessor for RawSearchResult);
                  }

                  v154 = (v154 + 1) & v155;
                }

                while (((*(v146 + 56 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154) & 1) != 0);
              }

              v165 = *(v1 + 832);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_1002DB760(v150, v165, type metadata accessor for RawSearchResult);
              v522 = v146;
              sub_100DFE348(v165, v154, isUniquelyReferenced_nonNull_native);
              v146 = v522;
LABEL_167:
              sub_1002DBBF0(v150, type metadata accessor for RawSearchResult);
              v167 = *(v1 + 1128);
              v168 = *(v1 + 1088);
              v517(*(v1 + 1072), *(v1 + 1272));
              sub_1000D2A70(v168, v167, &qword_10169C970, &qword_101398A18);
              v169 = *(v448 + 48);
              swift_beginAccess();
              sub_1001DE1B0(v146, v167);
            }

            else
            {
              v170 = *(v1 + 1128);
              v171 = *(v1 + 1088);
              v172 = *(v1 + 1080);
              v173 = *(v1 + 1064);
              swift_endAccess();
              sub_1002DBBF0(v142 + v143, type metadata accessor for RawSearchResult);
              v174 = *v425;
              (*v425)(v172, v145);
              sub_1000D2A70(v171, v170, &qword_10169C970, &qword_101398A18);
              v169 = *(v448 + 48);
              sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
              v175 = *(v358 + 72);
              v176 = (*(v358 + 80) + 32) & ~*(v358 + 80);
              v177 = swift_allocObject();
              *(v177 + 16) = xmmword_101385D80;
              sub_1000D2A70(v171, v173, &qword_10169C970, &qword_101398A18);
              sub_1002DB7C8(v173 + *(v448 + 48), v177 + v176, type metadata accessor for RawSearchResult);
              v174(v173, v145);
              v178 = sub_10112A090(v177);
              swift_setDeallocating();
              sub_1002DBBF0(v177 + v176, type metadata accessor for RawSearchResult);
              swift_deallocClassInstance();
              swift_beginAccess();
              v179 = *(v1 + 520);
              v180 = swift_isUniquelyReferenced_nonNull_native();
              v522 = *(v1 + 520);
              sub_100FFC200(v178, v170, v180);
              v517 = v174;
              v174(v170, v145);
              *(v1 + 520) = v522;
            }

            v126 = v507;
            swift_endAccess();
            sub_1002DBBF0(*(v1 + 1128) + v169, type metadata accessor for RawSearchResult);
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v181 = *(v1 + 1088);
            v182 = *(v1 + 1056);
            v183 = *(v1 + 1048);
            v184 = *(v1 + 1040);
            v185 = *(v1 + 792);
            v186 = *(v1 + 768);
            v187 = type metadata accessor for Logger();
            sub_1000076D4(v187, qword_10177A818);
            sub_1002DB760(v185, v186, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            sub_1000D2A70(v181, v182, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v181, v183, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v181, v184, &qword_10169C970, &qword_101398A18);
            v188 = Logger.logObject.getter();
            v189 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v188, v189))
            {
              v432 = v189;
              logb = v188;
              v190 = *(v1 + 1272);
              v191 = *(v1 + 1128);
              v192 = *(v1 + 1056);
              v407 = *(v1 + 1040);
              v399 = *(v1 + 1048);
              v403 = *(v1 + 1032);
              v193 = *(v1 + 856);
              v194 = *(v1 + 840);
              v195 = *(v1 + 768);
              v196 = swift_slowAlloc();
              v522 = swift_slowAlloc();
              *v196 = 141559043;
              *(v196 + 4) = 1752392040;
              *(v196 + 12) = 2081;
              v197 = *(v457 + 20);
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
              v198 = dispatch thunk of CustomStringConvertible.description.getter();
              v200 = v199;
              sub_1002DBBF0(v195, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v201 = sub_1000136BC(v198, v200, &v522);

              *(v196 + 14) = v201;
              *(v196 + 22) = 2082;
              sub_1000D2A70(v192, v191, &qword_10169C970, &qword_101398A18);
              v202 = v191 + *(v448 + 48);
              v350(v193, v202 + v480[5], v194);
              sub_1002DBBF0(v202, type metadata accessor for RawSearchResult);
              v517(v191, v190);
              sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
              v203 = dispatch thunk of CustomStringConvertible.description.getter();
              v205 = v204;
              v470(v193, v194);
              sub_10000B3A8(v192, &qword_10169C970, &qword_101398A18);
              v206 = sub_1000136BC(v203, v205, &v522);

              *(v196 + 24) = v206;
              *(v196 + 32) = 2082;
              sub_1000D2A70(v399, v191, &qword_10169C970, &qword_101398A18);
              v207 = v191 + *(v448 + 48);
              LOBYTE(v206) = *(v207 + v480[9]);
              sub_1002DBBF0(v207, type metadata accessor for RawSearchResult);
              v517(v191, v190);
              v208 = sub_100013454(v206);
              v210 = v209;
              sub_10000B3A8(v399, &qword_10169C970, &qword_101398A18);
              v211 = sub_1000136BC(v208, v210, &v522);

              *(v196 + 34) = v211;
              *(v196 + 42) = 2048;
              sub_1000D2A70(v407, v403, &qword_10169C970, &qword_101398A18);
              swift_beginAccess();
              v212 = *(v1 + 520);
              if (*(v212 + 16) && (v213 = sub_1000210EC(*(v1 + 1032)), (v214 & 1) != 0))
              {
                v215 = *(*(v212 + 56) + 8 * v213);
                swift_endAccess();
                v216 = *(v215 + 16);
              }

              else
              {
                swift_endAccess();
                v216 = 0;
              }

              v126 = v507;
              v221 = *(v1 + 1272);
              v222 = *(v1 + 1088);
              v223 = *(v1 + 1040);
              v224 = *(v1 + 1032);
              sub_1002DBBF0(v224 + *(v448 + 48), type metadata accessor for RawSearchResult);
              v517(v224, v221);
              v0 = &qword_10169C970;
              sub_10000B3A8(v223, &qword_10169C970, &qword_101398A18);
              *(v196 + 44) = v216;
              _os_log_impl(&_mh_execute_header, logb, v432, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v196, 0x34u);
              swift_arrayDestroy();

              v220 = v222;
            }

            else
            {
              v217 = *(v1 + 1088);
              v0 = *(v1 + 1056);
              v218 = *(v1 + 1048);
              v219 = *(v1 + 768);
              sub_10000B3A8(*(v1 + 1040), &qword_10169C970, &qword_101398A18);

              sub_10000B3A8(v218, &qword_10169C970, &qword_101398A18);
              sub_10000B3A8(v0, &qword_10169C970, &qword_101398A18);
              sub_1002DBBF0(v219, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v220 = v217;
            }

            sub_10000B3A8(v220, &qword_10169C970, &qword_101398A18);
            v127 = v496;
          }

          v87 = v127 + 1;
          sub_1002DBBF0(*(v1 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          v3 = 0;
          if (v87 == v511)
          {

            sub_100016590(v126, v477);

            v21 = 0;
            goto LABEL_181;
          }
        }

        goto LABEL_306;
      }

      sub_100016590(v24, v477);

      v21 = 0;
LABEL_181:
      sub_1002DBBF0(*(v1 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_125:
      v19 = v451;
      v20 = v454 + 1;
      if (v454 + 1 == v439)
      {
        goto LABEL_202;
      }

      goto LABEL_10;
    }

    sub_100017D5C(v24, v477);
    sub_100017D5C(v24, v477);
    sub_100017D5C(v63, v65);
    v77 = sub_100F0B1BC(v63, v65, v24, v477);
    v515 = 0;
    sub_100016590(v63, v65);
    sub_100016590(v63, v65);
    sub_100016590(v24, v477);
    v30 = v510;
    if (v77)
    {
      goto LABEL_130;
    }

LABEL_24:
    sub_1002DBBF0(*(v1 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v25 += v495;
    v29 = (v30 - 1);
    if (!v29)
    {
      goto LABEL_120;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_326;
  }

LABEL_230:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v279 = swift_allocObject();
  *(v279 + 16) = v365;
  *v355 = v3;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v280 = String.init<A>(describing:)();
  v282 = v281;
  *(v279 + 56) = &type metadata for String;
  *(v279 + 64) = sub_100008C00();
  *(v279 + 32) = v280;
  *(v279 + 40) = v282;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v283 = swift_allocError();
  *v284 = 0;
  swift_willThrow();

LABEL_275:
  v522 = 0;
  v523 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v319 = v523;
  *(v1 + 472) = v522;
  *(v1 + 480) = v319;
  v320._countAndFlagsBits = 0xD000000000000021;
  v320._object = 0x800000010134CB30;
  String.append(_:)(v320);
  *(v1 + 584) = v283;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v321 = *(v1 + 472);
  v322 = *(v1 + 480);
  return _assertionFailure(_:_:file:line:flags:)();
}