uint64_t sub_10034F810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(*a5 + 80);
  v9 = *(*a5 + 88);
  v11 = *(a7 + 8);
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter(a1);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  Sequence.forEach(_:)();

  Sequence.filter(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

uint64_t sub_10034FA18(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v129 = a4;
  v149 = a3;
  v138 = type metadata accessor for NANPeer(0);
  v10 = *(*(v138 - 8) + 64);
  __chkstk_darwin();
  v132 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v123 - v12;
  __chkstk_darwin();
  v130 = &v123 - v13;
  v14 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v136 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v140 = &v123 - v16;
  __chkstk_darwin();
  v127 = &v123 - v17;
  v18 = *(*(sub_10005DC58(&qword_100597408, &qword_1004B16B0) - 8) + 64);
  __chkstk_darwin();
  v133 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v123 - v20;
  __chkstk_darwin();
  v126 = &v123 - v21;
  __chkstk_darwin();
  v135 = &v123 - v22;
  __chkstk_darwin();
  v137 = &v123 - v23;
  __chkstk_darwin();
  v146 = &v123 - v24;
  v25 = sub_10005DC58(&qword_100597400, &unk_1004B4D20);
  v26 = *(v25 - 8);
  v150 = v25;
  v151 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin();
  v125 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v123 - v29;
  __chkstk_darwin();
  v128 = &v123 - v30;
  __chkstk_darwin();
  v32 = &v123 - v31;
  __chkstk_darwin();
  v34 = &v123 - v33;
  v145 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  v35 = *(*(v145 - 8) + 64);
  __chkstk_darwin();
  v37 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a1;
  LODWORD(v148) = sub_10036DCD0(a5, a6);
  v39 = a6 + 24;
  v40 = *(a6 + 24);
  v147 = v40(a5, a6);
  v41 = v40(a5, a6);
  v144 = v37;
  sub_10036D334(v149, v37, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v142 = a5;
  v143 = a6;
  v141 = v38;
  v42 = sub_10036DB68(a5, a6);
  swift_beginAccess();
  v43 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v152 = *a2;
  v45 = v152;
  *a2 = 0x8000000000000000;
  v47 = sub_100041DE8(v41 & 0xFFFFFFFFFFFFLL);
  v48 = *(v45 + 2);
  v49 = (v46 & 1) == 0;
  v50 = v48 + v49;
  if (__OFADD__(v48, v49))
  {
    __break(1u);
    goto LABEL_55;
  }

  LOBYTE(v51) = v46;
  if (*(v45 + 3) < v50)
  {
    sub_100312DB4(v50, isUniquelyReferenced_nonNull_native);
    v45 = v152;
    v52 = sub_100041DE8(v41 & 0xFFFFFFFFFFFFLL);
    if ((v51 & 1) == (v53 & 1))
    {
      v47 = v52;
      *a2 = v45;
      if (v51)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_68:
    sub_10036D24C(v144, type metadata accessor for NANAttribute.CustomDeviceInformation);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_58;
  }

  *a2 = v45;
  if (v46)
  {
    goto LABEL_9;
  }

LABEL_8:
  v54 = *(v150 + 12);
  sub_10036D334(v144, v34, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v34[v54] = v148 & 1;
  sub_1002DD924(v47, v41 & 0xFFFFFFFFFFFFLL, v34, v45);
  while (1)
  {
LABEL_9:
    v55 = *(v45 + 7);
    v149 = *(v151 + 72);
    v39 = v55 + v149 * v47 + *(v145 + 28);
    v56 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
    v47 = *(v56 + 44);
    v45 = *(v39 + v47);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + v47) = v45;
    v124 = v56;
    if ((v57 & 1) == 0)
    {
LABEL_55:
      v45 = sub_1001160AC(0, *(v45 + 2) + 1, 1, v45);
      *(v39 + v47) = v45;
    }

    v59 = *(v45 + 2);
    v58 = *(v45 + 3);
    if (v59 >= v58 >> 1)
    {
      v45 = sub_1001160AC((v58 > 1), v59 + 1, 1, v45);
      *(v39 + v47) = v45;
    }

    *(v45 + 2) = v59 + 1;
    v60 = &v45[8 * v59 - v59];
    *(v60 + 32) = v42;
    *(v60 + 34) = BYTE2(v42);
    *(v60 + 35) = BYTE3(v42);
    *(v60 + 36) = BYTE4(v42);
    *(v60 + 37) = BYTE5(v42);
    *(v60 + 38) = BYTE6(v42);
    v61 = *a2;
    swift_endAccess();
    v47 = v147;
    if (!*(v61 + 16))
    {
      goto LABEL_67;
    }

    v62 = sub_100041DE8(v147 & 0xFFFFFFFFFFFFLL);
    if ((v63 & 1) == 0)
    {
      goto LABEL_67;
    }

    v34 = &unk_1004B4D20;
    sub_100012400(*(v61 + 56) + v62 * v149, v32, &qword_100597400, &unk_1004B4D20);
    v64 = *(v32 + *(v150 + 12));
    sub_100016290(v32, &qword_100597400, &unk_1004B4D20);
    v42 = ((v64 | v148) & 1) != 0 ? (*(v143 + 56))(v142) ^ 1 : 0;
    swift_beginAccess();
    v65 = *a2;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v152 = *a2;
    v66 = v152;
    *a2 = 0x8000000000000000;
    v32 = sub_100041DE8(v47 & 0xFFFFFFFFFFFFLL);
    v68 = *(v66 + 16);
    v69 = (v67 & 1) == 0;
    v70 = v68 + v69;
    if (!__OFADD__(v68, v69))
    {
      break;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    sub_10046CD30();
    v45 = v152;
    *a2 = v152;
    if ((v51 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  LOBYTE(v71) = v67;
  if (*(v66 + 24) >= v70)
  {
    v47 = v140;
    if (v51)
    {
      if ((v67 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      sub_10046CD30();
      if ((v71 & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
    sub_100312DB4(v70, v51);
    v72 = sub_100041DE8(v47 & 0xFFFFFFFFFFFFLL);
    if ((v71 & 1) != (v73 & 1))
    {
      goto LABEL_68;
    }

    v32 = v72;
    v47 = v140;
    if ((v71 & 1) == 0)
    {
LABEL_61:
      sub_10036D24C(v144, type metadata accessor for NANAttribute.CustomDeviceInformation);
      (*(v151 + 56))(v146, 1, 1, v150);
      __break(1u);
      goto LABEL_62;
    }
  }

  v74 = v152;
  v75 = v32 * v149;
  v76 = v146;
  sub_10001CEA8(*(v152 + 56) + v32 * v149, v146, &qword_100597400, &unk_1004B4D20);
  v34 = v150;
  v77 = v151;
  v139 = *(v151 + 56);
  v140 = (v151 + 56);
  v139(v76, 0, 1, v150);
  *(v76 + *(v34 + 12)) = v42 & 1;
  v42 = v137;
  sub_100012400(v76, v137, &qword_100597408, &qword_1004B16B0);
  v41 = *(v77 + 48);
  v151 = v77 + 48;
  if ((v41)(v42, 1, v34) == 1)
  {
    sub_100016290(v42, &qword_100597408, &qword_1004B16B0);
    sub_10046935C(v32, v74);
  }

  else
  {
    v34 = &unk_1004B4D20;
    v78 = v42;
    v42 = v128;
    sub_10001CEA8(v78, v128, &qword_100597400, &unk_1004B4D20);
    sub_10001CEA8(v42, *(v74 + 56) + v75, &qword_100597400, &unk_1004B4D20);
  }

  v79 = v147;
  sub_100016290(v146, &qword_100597408, &qword_1004B16B0);
  *a2 = v74;
  swift_endAccess();
  if ((v148 & 1) == 0)
  {
    while (1)
    {
      swift_beginAccess();
      v106 = *a2;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v152 = *a2;
      v107 = v152;
      *a2 = 0x8000000000000000;
      v32 = sub_100041DE8(v79 & 0xFFFFFFFFFFFFLL);
      v109 = *(v107 + 16);
      v110 = (v108 & 1) == 0;
      v111 = v109 + v110;
      if (__OFADD__(v109, v110))
      {
        goto LABEL_57;
      }

      LOBYTE(v71) = v108;
      if (*(v107 + 24) >= v111)
      {
        if ((v51 & 1) == 0)
        {
          goto LABEL_63;
        }

        if (v108)
        {
          goto LABEL_50;
        }
      }

      else
      {
        sub_100312DB4(v111, v51);
        v112 = sub_100041DE8(v79 & 0xFFFFFFFFFFFFLL);
        if ((v71 & 1) != (v113 & 1))
        {
          goto LABEL_68;
        }

        v32 = v112;
        if (v71)
        {
          goto LABEL_50;
        }
      }

LABEL_64:
      sub_10036D24C(v144, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v139(v134, 1, 1, v150);
      __break(1u);
LABEL_65:
      sub_10046CD30();
      if ((v71 & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_39:
      v100 = v152;
      v42 = v32 * v149;
      v101 = v135;
      sub_10001CEA8(*(v152 + 56) + v32 * v149, v135, &qword_100597400, &unk_1004B4D20);
      v34 = v150;
      v139(v101, 0, 1, v150);
      sub_10036C8F0(v136, v101 + *(v145 + 28) + *(v124 + 40));
      v102 = v101;
      v103 = v126;
      sub_100012400(v102, v126, &qword_100597408, &qword_1004B16B0);
      if ((v41)(v103, 1, v34) == 1)
      {
        sub_100016290(v103, &qword_100597408, &qword_1004B16B0);
        sub_10046935C(v32, v100);
      }

      else
      {
        v34 = &unk_1004B4D20;
        v104 = v103;
        v105 = v123;
        sub_10001CEA8(v104, v123, &qword_100597400, &unk_1004B4D20);
        sub_10001CEA8(v105, *(v100 + 56) + v42, &qword_100597400, &unk_1004B4D20);
      }

      sub_100016290(v135, &qword_100597408, &qword_1004B16B0);
      *a2 = v100;
      swift_endAccess();

      v79 = v147;
    }
  }

  v80 = *(v129 + *(*v129 + 304));
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v81 = v130;
  sub_10040CD68(v79 & 0xFFFFFFFFFFFFLL, v130);
  v148 = v80;

  sub_100012400(v81 + *(v138 + 120), v47, &qword_10058F4D0, &qword_100491AB0);
  sub_10036D24C(v81, type metadata accessor for NANPeer);
  v82 = type metadata accessor for UUID();
  v83 = *(v82 - 8);
  v84 = *(v83 + 48);
  if (v84(v47, 1, v82) == 1)
  {
    v85 = v47;
    v47 = v41;
    v86 = v127;
    UUID.init()();
    v87 = v84(v85, 1, v82);
    v88 = v86;
    v41 = v47;
    if (v87 != 1)
    {
      sub_100016290(v85, &qword_10058F4D0, &qword_100491AB0);
    }
  }

  else
  {
    v88 = v127;
    (*(v83 + 32))(v127, v47, v82);
  }

  (*(v83 + 56))(v88, 0, 1, v82);
  v89 = v131;
  sub_10040CD68(v79 & 0xFFFFFFFFFFFFLL, v131);
  v71 = v138;
  sub_10036C8F0(v88, v89 + *(v138 + 120));
  sub_10040E430(v89, v79 & 0xFFFFFFFFFFFFLL);

  swift_unownedRetainStrong();
  v90 = v132;
  sub_10040CD68(v79 & 0xFFFFFFFFFFFFLL, v132);
  sub_100012400(v90 + *(v71 + 120), v136, &qword_10058F4D0, &qword_100491AB0);
  sub_10036D24C(v90, type metadata accessor for NANPeer);
  swift_beginAccess();
  v91 = *a2;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *a2;
  v93 = v152;
  *a2 = 0x8000000000000000;
  v32 = sub_100041DE8(v79 & 0xFFFFFFFFFFFFLL);
  v95 = *(v93 + 16);
  v96 = (v94 & 1) == 0;
  v97 = v95 + v96;
  if (!__OFADD__(v95, v96))
  {
    LOBYTE(v71) = v94;
    if (*(v93 + 24) >= v97)
    {
      if ((v92 & 1) == 0)
      {
        goto LABEL_65;
      }

      if (v94)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_100312DB4(v97, v92);
      v98 = sub_100041DE8(v79 & 0xFFFFFFFFFFFFLL);
      if ((v71 & 1) != (v99 & 1))
      {
        goto LABEL_68;
      }

      v32 = v98;
      if (v71)
      {
        goto LABEL_39;
      }
    }

LABEL_66:
    sub_10036D24C(v144, type metadata accessor for NANAttribute.CustomDeviceInformation);
    v139(v135, 1, 1, v150);
    __break(1u);
LABEL_67:
    sub_10036D24C(v144, type metadata accessor for NANAttribute.CustomDeviceInformation);
    __break(1u);
    goto LABEL_68;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  sub_10046CD30();
  if ((v71 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_50:
  v114 = v41;
  v115 = v152;
  v116 = v32 * v149;
  v117 = v134;
  sub_10001CEA8(*(v152 + 56) + v32 * v149, v134, &qword_100597400, &unk_1004B4D20);
  v118 = v150;
  v139(v117, 0, 1, v150);
  (*(v143 + 88))(v117, v142);
  v119 = v133;
  sub_100012400(v117, v133, &qword_100597408, &qword_1004B16B0);
  if (v114(v119, 1, v118) == 1)
  {
    sub_100016290(v119, &qword_100597408, &qword_1004B16B0);
    sub_10046935C(v32, v115);
  }

  else
  {
    v120 = v119;
    v121 = v125;
    sub_10001CEA8(v120, v125, &qword_100597400, &unk_1004B4D20);
    sub_10001CEA8(v121, *(v115 + 56) + v116, &qword_100597400, &unk_1004B4D20);
  }

  sub_100016290(v117, &qword_100597408, &qword_1004B16B0);
  *a2 = v115;
  swift_endAccess();
  return sub_10036D24C(v144, type metadata accessor for NANAttribute.CustomDeviceInformation);
}

void sub_100350AA8(unsigned __int16 *a1, void *a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  __chkstk_darwin();
  v60 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v56 - v7;
  v64 = sub_10005DC58(&qword_1005973F8, &unk_1004B16A0);
  v9 = *(*(v64 - 1) + 64);
  __chkstk_darwin();
  v59 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (v56 - v11);
  v57 = v4[11];
  v13 = *(v57 + 8);
  v56[1] = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = v56 - v17;
  v19 = *(*(type metadata accessor for NANPeer(0) - 8) + 64);
  __chkstk_darwin();
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4[38];
  v58 = v2;
  v23 = *(v2 + v22);
  swift_unownedRetainStrong();
  v24 = *(a1 + 1);
  v63 = a1;
  v61 = *a1 | (v24 << 16);
  sub_10040CD68(v61, v21);

  LOBYTE(v2) = sub_1002E172C();
  sub_10036D24C(v21, type metadata accessor for NANPeer);
  if ((v2 & 1) == 0)
  {
    goto LABEL_3;
  }

  swift_unownedRetainStrong();
  v25 = *(*v23 + 96);
  swift_beginAccess();
  (*(v15 + 16))(v18, v23 + v25, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LODWORD(v25) = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v15 + 8))(v18, AssociatedTypeWitness);
  if (v25 >= 5)
  {
    v27 = v63;
    sub_100012400(v63, v12, &qword_1005973F8, &unk_1004B16A0);
    v28 = v64;
    v34 = NANActionFrame.init(customDeviceInformation:)(v12 + *(v64 + 12));
    v36 = v37;
  }

  else
  {
LABEL_3:
    v27 = v63;
    sub_100012400(v63, v12, &qword_1005973F8, &unk_1004B16A0);
    v28 = v64;
    v29 = v12 + *(v64 + 12);
    v30 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
    sub_10036D334(v29 + *(v30 + 28), v8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    sub_10036D24C(v29, type metadata accessor for NANAttribute.CustomDeviceInformation);
    sub_100012400(v27, v12, &qword_1005973F8, &unk_1004B16A0);
    v31 = v12 + *(v28 + 12);
    v32 = *(v31 + 4);
    sub_10036D24C(v31, type metadata accessor for NANAttribute.CustomDeviceInformation);
    *v8 = v32;
    v33 = v60;
    sub_10036D334(v8, v60, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v34 = NANActionFrame.init(customAttributes:)(v33);
    v36 = v35;
    sub_10036D24C(v8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  }

  swift_unownedRetainStrong();
  sub_10040DD50();

  sub_100012400(v27, v12, &qword_1005973F8, &unk_1004B16A0);
  v38 = v12 + *(v28 + 12);
  v39 = *(v38 + *(sub_10005DC58(&qword_100597400, &unk_1004B4D20) + 48));
  sub_10036D24C(v38, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v40 = 4;
  if (!v39)
  {
    v40 = 0;
  }

  v65[0] = v40;
  v65[1] = v34;
  v65[2] = v36;
  v65[3] = 0;
  v66 = 2;
  v41 = v62;
  sub_1003A8260(v65, v61, 0, 0, 0, 0, 1, 3, 3000, NANBitmap.Channel.operatingClass.getter, 0);
  if (v41)
  {
    sub_100048C4C(v34);

    v42 = v59;
    sub_100012400(v27, v59, &qword_1005973F8, &unk_1004B16A0);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67 = v64;
      *v45 = 136315394;
      sub_100012400(v42, v12, &qword_1005973F8, &unk_1004B16A0);
      v47 = v28;
      v48 = *(v12 + 1);
      v49 = v12;
      v50 = *v12;
      sub_10036D24C(v49 + *(v47 + 12), type metadata accessor for NANAttribute.CustomDeviceInformation);
      v51 = WiFiAddress.description.getter(v50 | (v48 << 16));
      v53 = v52;
      sub_100016290(v42, &qword_1005973F8, &unk_1004B16A0);
      v54 = sub_100002320(v51, v53, &v67);

      *(v45 + 4) = v54;
      *(v45 + 12) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v55;
      *v46 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to send the keep alive frame to %s because %@", v45, 0x16u);
      sub_100016290(v46, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v64);
    }

    else
    {

      sub_100016290(v42, &qword_1005973F8, &unk_1004B16A0);
    }
  }

  else
  {
    sub_100048C4C(v34);
  }
}

uint64_t sub_100351250@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + *(*a2 + 304));
  swift_unownedRetainStrong();
  v6 = sub_100422D84();

  if (*(v6 + 16))
  {
    result = sub_1003E08F4(v4);
    if (v8)
    {
      v9 = result;
      v10 = *(v6 + 56);
      v11 = type metadata accessor for NANAttribute(0);
      sub_10036D334(v10 + *(*(v11 - 8) + 72) * v9, a3, type metadata accessor for NANAttribute);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10035132C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + *(*a1 + 304));
  swift_unownedRetainStrong();
  v6 = *a2;
  sub_1002785A4(&v6, &v5);
  sub_100411474(v6 | (BYTE4(v6) << 32) | (BYTE5(v6) << 40) | (BYTE6(v6) << 48), *(&v6 + 1));
}

void sub_1003513B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = qword_10059B9C0;

  v87 = v3;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  p_prots = &OBJC_PROTOCOL___WiFiAwarePairedDevicesXPC.prots;
  if (os_log_type_enabled(v4, v5))
  {
    LODWORD(v89) = v5;
    v7 = swift_slowAlloc();
    *v7 = 134219008;
    *(v7 + 4) = sub_10033BA90();
    *(v7 + 12) = 2048;
    v8 = qword_100596C88;
    swift_beginAccess();
    v9 = *(v1 + v8);
    v11 = *(v2 + 80);
    v10 = *(v2 + 88);
    v12 = _s8InstanceCMa_0();

    v90 = v11;
    v91 = v12;
    v92 = v10;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    v13 = Dictionary.count.getter();

    *(v7 + 14) = v13;
    *(v7 + 22) = 2048;
    v14 = qword_100596C80;
    swift_beginAccess();
    v15 = *(v1 + v14);
    v16 = _s8InstanceCMa();

    v90 = v11;
    v91 = v16;
    v92 = v10;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    v17 = Dictionary.count.getter();

    *(v7 + 24) = v17;
    *(v7 + 32) = 2048;
    v18 = qword_100596C90;
    swift_beginAccess();
    v19 = *(v1 + v18);
    v20 = _s17InitiatorInstanceCMa();

    v90 = v11;
    v91 = v20;
    v92 = v10;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    sub_10020CB70();
    v21 = Dictionary.count.getter();

    *(v7 + 34) = v21;
    *(v7 + 42) = 2048;
    v22 = qword_100596C98;
    swift_beginAccess();
    v23 = *(v1 + v22);
    v24 = _s17ResponderInstanceCMa();

    v90 = v11;
    v91 = v24;
    v92 = v10;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    v25 = Dictionary.count.getter();
    p_prots = (&OBJC_PROTOCOL___WiFiAwarePairedDevicesXPC + 16);

    *(v7 + 44) = v25;

    _os_log_impl(&_mh_execute_header, v4, v89, "Stopping ALL service instances. Total: %ld [P: %ld, S: %ld, DI: %ld, DR: %ld]", v7, 0x34u);
  }

  else
  {
  }

  v26 = p_prots[401];
  swift_beginAccess();
  v84 = v26;
  v27 = *(&v26->count + v1);
  v28 = *(v2 + 80);
  v29 = *(v2 + 88);
  v30 = _s8InstanceCMa_0();
  v91 = v30;
  v92 = v29;
  WitnessTable = swift_getWitnessTable();
  v31 = type metadata accessor for NANDiscoveryEngine.ServiceSession();
  v89 = v77;
  v90 = NANBitmap.Channel.operatingClass.getter(v27);
  __chkstk_darwin();
  v76[2] = v28;
  v76[3] = v29;
  v83 = v31;
  v32 = type metadata accessor for Dictionary.Values();

  v88 = &protocol conformance descriptor for [A : B].Values;
  v33 = swift_getWitnessTable();
  sub_10002B84C(sub_10036D72C, v76, v32, v30, &type metadata for Never, v33, &protocol witness table for Never, v34);

  sub_100351F70();

  v35 = qword_100596C80;
  swift_beginAccess();
  v82 = v35;
  v36 = *(v1 + v35);
  v37 = _s8InstanceCMa();
  v89 = swift_getWitnessTable();
  v90 = v28;
  v91 = v37;
  v92 = v29;
  WitnessTable = v89;
  v38 = type metadata accessor for NANDiscoveryEngine.ServiceSession();
  v39 = NANBitmap.Channel.operatingClass.getter(v36);
  v85 = v76;
  v90 = v39;
  __chkstk_darwin();
  v76[-2] = v28;
  v76[-1] = v29;
  v81 = v38;
  v40 = type metadata accessor for Dictionary.Values();

  v41 = swift_getWitnessTable();
  sub_10002B84C(sub_10036D77C, &v76[-4], v40, v37, &type metadata for Never, v41, &protocol witness table for Never, v42);

  sub_100351F70();

  v43 = qword_100596C90;
  swift_beginAccess();
  v80 = v43;
  v44 = *(v1 + v43);
  v45 = _s17InitiatorInstanceCMa();
  v46 = swift_getWitnessTable();
  v90 = v28;
  v91 = v45;
  v86 = v28;
  v92 = v29;
  WitnessTable = v46;
  v47 = type metadata accessor for NANDiscoveryEngine.ServiceSession();
  v48 = sub_10020CB70();
  v89 = v1;
  v49 = v48;
  v50 = NANBitmap.Channel.operatingClass.getter(v44);
  v85 = v76;
  v90 = v50;
  __chkstk_darwin();
  v76[-2] = v28;
  v76[-1] = v29;
  v79 = v47;
  v51 = type metadata accessor for Dictionary.Values();

  v52 = swift_getWitnessTable();
  sub_10002B84C(sub_10036D77C, &v76[-4], v51, v45, &type metadata for Never, v52, &protocol witness table for Never, v53);

  sub_100351F70();

  v54 = qword_100596C98;
  swift_beginAccess();
  v78 = v54;
  v55 = *(v89 + v54);
  v56 = v86;
  v57 = _s17ResponderInstanceCMa();
  v58 = swift_getWitnessTable();
  v90 = v56;
  v91 = v57;
  v92 = v29;
  WitnessTable = v58;
  v59 = type metadata accessor for NANDiscoveryEngine.ServiceSession();
  v60 = NANBitmap.Channel.operatingClass.getter(v55);
  v85 = v76;
  v90 = v60;
  __chkstk_darwin();
  v76[-2] = v56;
  v76[-1] = v29;
  v77[1] = v59;
  v86 = v49;
  v61 = v89;
  v62 = type metadata accessor for Dictionary.Values();

  v63 = swift_getWitnessTable();
  sub_10002B84C(sub_10036D77C, &v76[-4], v62, v57, &type metadata for Never, v63, &protocol witness table for Never, v64);

  sub_100351F70();

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 134219008;
    *(v67 + 4) = sub_10033BA90();
    *(v67 + 12) = 2048;
    v68 = *(&v84->count + v61);

    v69 = Dictionary.count.getter();

    *(v67 + 14) = v69;
    *(v67 + 22) = 2048;
    v70 = *(v61 + v82);

    v71 = Dictionary.count.getter();

    *(v67 + 24) = v71;
    *(v67 + 32) = 2048;
    v72 = *(v61 + v80);

    v73 = Dictionary.count.getter();

    *(v67 + 34) = v73;
    *(v67 + 42) = 2048;
    v74 = *(v61 + v78);

    v75 = Dictionary.count.getter();

    *(v67 + 44) = v75;

    _os_log_impl(&_mh_execute_header, v65, v66, "Stopped ALL service instances. Total: %ld [P: %ld, S: %ld, DI: %ld, DR: %ld]", v67, 0x34u);
  }

  else
  {
  }
}

uint64_t sub_100351F70()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.forEach(_:)();
}

uint64_t sub_100351FFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = *(*(a4 + 8) + 16);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    swift_unknownObjectRelease();
    v15 = sub_100002320(v12, v14, &v17);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Stopping: %s", v9, 0xCu);
    sub_100002A00(v10);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return (*(a4 + 40))(a3, a4);
}

void sub_100352188(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      return;
    }

    v16 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
    RadioSchedule.set(_:to:with:)(*v16, v16[1], v16[2], 0, 2, 3, a3, a4);
    v17 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
    v18 = v17[1];
    v19 = v17[2];
    v20 = *v17;
    goto LABEL_10;
  }

  if (a2 - 2 < 2)
  {
    v6 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
    RadioSchedule.set(_:to:with:)(*v6, v6[1], v6[2], 0, 2, 3, a3, a4);
    v7 = *TimeBitmap.Slot.OF.unsafeMutableAddressor();
    v8 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v9 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v7, *v8, *v8, *v8);
    RadioSchedule.set(_:to:with:)(v9, v10, v11, 0, 2, 3, a3, a4);
    if ((*(a4 + 56))(a3, a4))
    {
      v12 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v13 = *v8;
      v14 = *v12;
      v15 = v14;
    }

    else
    {
      v24 = *v8;
      v25 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v13 = *v8;
      v15 = *v25;
      v14 = v24;
    }

    v20 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v14, v15, v13, v13);
LABEL_10:
    v23 = 1;
    goto LABEL_11;
  }

  v21 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
  RadioSchedule.set(_:to:with:)(*v21, v21[1], v21[2], 0, 2, 3, a3, a4);
  v22 = TimeBitmap.all.unsafeMutableAddressor();
  v18 = v22[1];
  v19 = v22[2];
  v20 = *v22;
  v23 = 0;
LABEL_11:
  RadioSchedule.set(_:to:with:)(v20, v18, v19, v23, 2, 3, a3, a4);
}

uint64_t sub_100352334(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *(*(sub_10005DC58(&qword_100597428, &unk_1004B16C0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v31 - v7;
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin();
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16) != a1)
  {
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    v17 = qword_100596DB8;
    swift_beginAccess();
    (*(v12 + 40))(v2 + v17, v16, v11);
    swift_endAccess();
    sub_100352754();
    v18 = *(v2 + qword_100596DC8);
    swift_unownedRetainStrong();
    v19 = sub_10040CAE8();

    v20 = *(v19 + qword_100596CF8);
    sub_10034ABD0();

    LODWORD(v19) = *(v2 + 16);
    swift_unownedRetainStrong();
    v21 = sub_10040CAE8();

    if (v19)
    {
      v22 = *(*v21 + 256);
      swift_beginAccess();
      sub_100012400(v21 + v22, v8, &qword_100597428, &unk_1004B16C0);

      v23 = sub_10005DC58(&qword_100596D90, &qword_1004B11E8);
      v24 = *(v23 - 8);
      v32 = *(v24 + 48);
      v25 = v32(v8, 1, v23);
      sub_100016290(v8, &qword_100597428, &unk_1004B16C0);
      swift_unownedRetainStrong();
      v26 = sub_10040CAE8();

      v27 = *(v2 + 16);
      if (v25 != 1)
      {
        v30 = *(*v26 + 256);
        swift_beginAccess();
        sub_100012400(v26 + v30, v6, &qword_100597428, &unk_1004B16C0);
        result = v32(v6, 1, v23);
        if (result == 1)
        {
          __break(1u);
          return result;
        }

        v6[*(v23 + 36)] = v27;
        v29 = v6;
        goto LABEL_9;
      }

      UUID.init()();
      v10[*(v23 + 36)] = v27;
      (*(v24 + 56))(v10, 0, 1, v23);
    }

    else
    {
      v28 = sub_10005DC58(&qword_100596D90, &qword_1004B11E8);
      (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
    }

    v29 = v10;
LABEL_9:
    sub_10033CC18(v29);
  }

  return result;
}

uint64_t sub_100352754()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  __chkstk_darwin();
  v11 = (&v24 - v10);
  v12 = *(v1 + 16);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = 1;
    }

    else if (v12 == 3)
    {
      v13 = 5;
    }

    else
    {
      v13 = 20;
    }

    goto LABEL_12;
  }

  if (*(v1 + 16))
  {
    v13 = 8;
LABEL_12:
    *v11 = v13;
    v16 = *(v4 + 104);
    v16(&v24 - v10, enum case for DispatchTimeInterval.seconds(_:), v3);
    v25 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = *(v2 + 80);
    v18[3] = *(v2 + 88);
    v18[4] = v17;
    v16(v9, enum case for DispatchTimeInterval.never(_:), v3);
    *v7 = 100;
    v16(v7, enum case for DispatchTimeInterval.milliseconds(_:), v3);
    v19 = type metadata accessor for P2PTimer();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v11, v25, v9, v7, sub_10036CB64, v18);
    v23 = *(v1 + qword_100596DC0);
    *(v1 + qword_100596DC0) = v22;
  }

  v14 = *(v1 + qword_100596DC0);
  *(v1 + qword_100596DC0) = 0;
}

uint64_t sub_100352A28()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v12 - v7;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v9 = qword_100596DB8;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v9, v2);
  DispatchTime.distance(to:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  return (v10)(v8, v2);
}

uint64_t sub_100352B90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
  }

  return result;
}

uint64_t sub_100352BF0()
{
  v1 = qword_100596DB8;
  v2 = type metadata accessor for DispatchTime();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_100596DC0);

  v4 = *(v0 + qword_100596DC8);
  swift_unownedRelease();
  return v0;
}

void sub_100352CA0()
{
  sub_100353CE0(319, qword_100596670, &type metadata accessor for DispatchTime);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

Swift::UInt64 sub_100352D60(char a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v8 = TimeBitmap.zero.unsafeMutableAddressor();
  v20 = *v8;
  v21[0] = *(v8 + 2);
  if ((a2 & 0x100) != 0)
  {
    if (a2 <= 2u)
    {
      if (!a2)
      {
        return v20;
      }

      if (a2 != 1)
      {
        TimeBitmap.subscript.setter(1, 2uLL);
        TimeBitmap.subscript.setter(1, 6uLL);
        TimeBitmap.subscript.setter(1, 0x22uLL);
        TimeBitmap.subscript.setter(1, 0x26uLL);
        if ((a1 & 1) == 0)
        {
          v16 = sub_100352FDC(258, a3, a4);
          TimeBitmap.SlotsView.formUnion(_:)(v16, v17, v18);
        }

        return v20;
      }
    }

    TimeBitmap.subscript.setter(1, 2uLL);
    TimeBitmap.subscript.setter(1, 6uLL);
    TimeBitmap.subscript.setter(1, 0xAuLL);
    TimeBitmap.subscript.setter(1, 0xEuLL);
    TimeBitmap.subscript.setter(1, 0x12uLL);
    TimeBitmap.subscript.setter(1, 0x16uLL);
    TimeBitmap.subscript.setter(1, 0x1AuLL);
    TimeBitmap.subscript.setter(1, 0x1EuLL);
    TimeBitmap.subscript.setter(1, 0x22uLL);
    TimeBitmap.subscript.setter(1, 0x26uLL);
    TimeBitmap.subscript.setter(1, 0x2AuLL);
    TimeBitmap.subscript.setter(1, 0x2EuLL);
    TimeBitmap.subscript.setter(1, 0x32uLL);
    TimeBitmap.subscript.setter(1, 0x36uLL);
    TimeBitmap.subscript.setter(1, 0x3AuLL);
    TimeBitmap.subscript.setter(1, 0x3EuLL);
    return v20;
  }

  v9 = *(&v20 + 1);
  if (v20 == *(&v20 + 1))
  {
    return v20;
  }

  result = NANIntervalDuration.timeUnits.getter(0);
  if (result)
  {
    v11 = result;
    v12.rawValue = v20;
    while (1)
    {
      result = TimeBitmap.SlotsView.index(after:)(v12).rawValue;
      v19 = v21[0];
      v13 = v12.rawValue / v11;
      if (((v12.rawValue / v11) & 0x8000000000000000) != 0)
      {
        break;
      }

      v14 = result;
      v15 = v13 >> 3;
      LOBYTE(v19) = *(&v19 + (v13 >> 3));
      TimeBitmap.Slot.setBit(_:)(a2);
      *(v21 + v15) = v19;
      v12.rawValue = v14;
      if (v14 == v9)
      {
        return v20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100352FDC(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = TimeBitmap.zero.unsafeMutableAddressor();
  v10 = *v6;
  v11 = *(v6 + 2);
  if ((a1 & 0x100) != 0 && a1 >= 2u)
  {
    if (a1 - 3 >= 2)
    {
      TimeBitmap.subscript.setter(1, 0xAuLL);
      TimeBitmap.subscript.setter(1, 0xEuLL);
      TimeBitmap.subscript.setter(1, 0x2AuLL);
      TimeBitmap.subscript.setter(1, 0x2EuLL);
      v6 = &v10;
    }

    else
    {
      v7 = *(v6 + 1);
      v8 = *(v6 + 2);
    }
  }

  else
  {
    *&v10 = sub_100352D60(1, a1 & 0x1FF, a2, a3);
    v6 = &v10;
  }

  return *v6;
}

uint64_t sub_1003530B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v21 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = (sub_10005DC58(&qword_100597558, &unk_1004B1840) - 8);
  v11 = *(*v10 + 64);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = qword_100596E50;
  swift_beginAccess();
  v15 = v10[14];
  sub_100012400(v1 + v14, v13, &unk_100597330, &unk_100481FA0);
  sub_100012400(a1, &v13[v15], &unk_100597330, &unk_100481FA0);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_100016290(v13, &unk_100597330, &unk_100481FA0);
    }

    goto LABEL_6;
  }

  sub_100012400(v13, v9, &unk_100597330, &unk_100481FA0);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_100016290(v13, &qword_100597558, &unk_1004B1840);
    return sub_10034ABD0();
  }

  v18 = v21;
  (*(v4 + 32))(v21, &v13[v15], v3);
  sub_10036D49C(&qword_100597560, &type metadata accessor for DispatchTime);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v4 + 8);
  v20(v18, v3);
  v20(v9, v3);
  result = sub_100016290(v13, &unk_100597330, &unk_100481FA0);
  if ((v19 & 1) == 0)
  {
    return sub_10034ABD0();
  }

  return result;
}

uint64_t sub_100353404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v11 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v13 = &v24 - v12;
  v26 = type metadata accessor for DispatchTime();
  v25 = *(v26 - 8);
  v14 = *(v25 + 64);
  __chkstk_darwin();
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 8);
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = v17;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  v36 = NANBitmap.Channel.operatingClass.getter(a1);
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  v36 = Sequence.filter(_:)();
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.min(by:)();

  if (v40)
  {
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(a5 + 64))(a3, a5);
    v18 = v25;
    v19 = v26;
    result = (*(v25 + 48))(v13, 1, v26);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      DispatchTime.distance(to:)();

      swift_unknownObjectRelease();
      v21 = *(v18 + 8);
      v21(v16, v19);
      return (v21)(v13, v19);
    }
  }

  else
  {
    v22 = enum case for DispatchTimeInterval.never(_:);
    v23 = type metadata accessor for DispatchTimeInterval();
    return (*(*(v23 - 8) + 104))(v27, v22, v23);
  }

  return result;
}

BOOL sub_100353764(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = *a1;
  (*(a5 + 64))(a3, a5);
  v12 = type metadata accessor for DispatchTime();
  v13 = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_100016290(v10, &unk_100597330, &unk_100481FA0);
  return v13 != 1 && (*(a5 + 48))(a3, a5) == 1;
}

uint64_t sub_1003538AC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v37 - v12;
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin();
  v44 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v37 - v18;
  v20 = type metadata accessor for DispatchTimeInterval();
  v39 = *(v20 - 8);
  v40 = v20;
  v21 = *(v39 + 64);
  __chkstk_darwin();
  v38 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v37 - v23;
  v24 = *a1;
  v43 = *a2;
  v41 = type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v25 = *(a6 + 64);
  v45 = a4;
  v46 = a6;
  v42 = v25;
  v25(a4, a6);
  v26 = v15[6];
  result = v26(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    DispatchTime.distance(to:)();
    v28 = v15[1];
    v28(v19, v14);
    v28(v13, v14);
    v29 = v44;
    variable initialization expression of AWDLPeer.lastUpdated();
    v30 = v47;
    v42(v45, v46);
    result = v26(v30, 1, v14);
    if (result != 1)
    {
      v31 = v38;
      DispatchTime.distance(to:)();
      v28(v29, v14);
      v28(v30, v14);
      v32 = v48;
      v33 = static DispatchTimeInterval.< infix(_:_:)();
      v34 = *(v39 + 8);
      v35 = v31;
      v36 = v40;
      v34(v35, v40);
      v34(v32, v36);
      return v33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100353C44()
{
  sub_100016290(v0 + qword_100596E50, &unk_100597330, &unk_100481FA0);
  v1 = *(v0 + qword_100596E60);
  swift_unownedRelease();
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100353CE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100353D34()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100353DF0(uint64_t a1)
{
  v2 = v1;
  v3 = qword_100596F00;
  if ((sub_1002E8EFC(*(v1 + qword_100596F00), a1) & 1) == 0)
  {
    v4 = *(v1 + qword_100596F10);
    swift_unownedRetainStrong();
    swift_unownedRetainStrong();
    WiFiInterface.capabilities.getter();

    v20 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
    sub_1000C2A14();

    v5 = dispatch thunk of SetAlgebra.isSuperset(of:)();

    v6 = *(v2 + v3);

    v7 = static Array<A>.potentialAvailability(using:supportsSimultaneousDualBand:for:)(0, (v5 & 1), v6);

    sub_10040EF14(v7);

    swift_retain_n();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v10 = 136315394;
      v11 = *(v2 + v3);
      sub_10036D56C();

      v12 = Dictionary.description.getter();
      v14 = v13;

      v15 = sub_100002320(v12, v14, &v20);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      swift_unownedRetainStrong();
      sub_100422DF0();

      v16 = Array.description.getter();
      v18 = v17;

      v19 = sub_100002320(v16, v18, &v20);

      *(v10 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "preferredChannelsLearnt %s discoveryInterface.potentialAvailability %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1003540AC(uint64_t a1)
{
  v2 = *(v1 + qword_100596F00);
  *(v1 + qword_100596F00) = a1;
  sub_100353DF0(v2);
}

void sub_1003540F4()
{
  v1 = v0;
  if (*(v0 + qword_100596F08) - 1 < 2)
  {

    sub_1003547A0();
    return;
  }

  if (*(v0 + qword_100596F08))
  {
    v17 = *(v0 + qword_100596F10);
    v18 = *(v1 + qword_100596F10);
    swift_unownedRetainStrong();
    v19 = qword_100596F00;
    v20 = *(v1 + qword_100596F00);

    sub_10040E580(v21);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136315138;
      v22 = *(v1 + v19);
      sub_10036D56C();

      v23 = Dictionary.description.getter();
      v25 = v24;

      v26 = sub_100002320(v23, v25, &v28);

      *(v9 + 4) = v26;
      v16 = "state apply, preferredChannelsLearnt %s";
      goto LABEL_10;
    }
  }

  else
  {
    v2 = sub_1002DE8CC(_swiftEmptyArrayStorage);
    v3 = *(v0 + qword_100596F00);
    *(v0 + qword_100596F00) = v2;
    sub_100353DF0(v3);

    v4 = *(v0 + qword_100596F10);
    swift_unownedRetainStrong();
    v5 = qword_100596F00;
    v6 = *(v1 + qword_100596F00);

    sub_10040E580(v7);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136315138;
      v11 = *(v1 + v5);
      sub_10036D56C();

      v12 = Dictionary.description.getter();
      v14 = v13;

      v15 = sub_100002320(v12, v14, &v28);

      *(v9 + 4) = v15;
      v16 = "state off, preferredChannelsLearnt %s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v8, v16, v9, 0xCu);
      sub_100002A00(v10);

      return;
    }
  }
}

uint64_t sub_100354458()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1003547A0();
  }

  return result;
}

void sub_1003544B0()
{
  v1 = v0;
  v2 = *(*(*v0 + 88) + 8);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v21[-v7];
  v9 = *(v0 + qword_100596F10);
  swift_unownedRetainStrong();
  v10 = *(*v9 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9 + v10, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (*(AssociatedConformanceWitness + 512))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  if (v12)
  {
    goto LABEL_2;
  }

  swift_unownedRetainStrong();
  sub_10040CAE8();

  v14 = sub_10034A0AC();

  if (v14 <= 0)
  {
    swift_unownedRetainStrong();
    v15 = sub_10040CAE8();

    v16 = v15 + *(*v15 + 272);
    swift_beginAccess();
    LODWORD(v16) = v16[*(sub_10005DC58(&qword_1005973B0, &qword_1004B1690) + 36)];

    if (v16 != 4)
    {
LABEL_2:
      v13 = 0;
LABEL_3:
      *(v1 + qword_100596F08) = v13;
      sub_1003540F4();
      return;
    }
  }

  swift_unownedRetainStrong();
  v17 = sub_10040CAE8();

  v18 = *(v17 + qword_100596CA8);

  if (!v18)
  {
    v13 = 1;
    goto LABEL_3;
  }

  if (v18 == 4)
  {
    v13 = 2;
    goto LABEL_3;
  }

  v19 = *NANDiscoveryWindowIndex.last.unsafeMutableAddressor();
  if (v19 < 8)
  {
    __break(1u);
    return;
  }

  if (v18 >= 8 && v19 >= v18)
  {
    v13 = 3;
    goto LABEL_3;
  }
}

uint64_t sub_1003547A0()
{
  v83 = type metadata accessor for NANPeer(0);
  v1 = *(*(v83 - 8) + 64);
  result = __chkstk_darwin();
  v82 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + qword_100596F08))
  {
    return result;
  }

  v4 = *(v0 + qword_100596F10);
  v81 = v0;
  swift_unownedRetainStrong();
  v5 = sub_10040E40C();

  if (v5)
  {
    return result;
  }

  swift_unownedRetainStrong();
  v6 = 0;
  sub_10040CBA8();

  swift_unownedRetainStrong();
  v7 = *(v4 + *(*v4 + 800));
  swift_unownedRetainStrong();
  v78 = v4;

  sub_1003EB084();
  v9 = v8;
  v11 = v10;

  if (!v9)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v12 = sub_1003A78D4(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(v12 + 2);
  v13 = *(v12 + 3);
  v14 = (v7 + 1);
  if (v7 >= v13 >> 1)
  {
    goto LABEL_89;
  }

LABEL_5:
  *(v12 + 2) = v14;
  v15 = &v12[8 * v7];
  *(v15 + 8) = v11;
  v15[36] = BYTE4(v11);
  v15[37] = BYTE5(v11);
  v15[38] = 3;
LABEL_7:
  v16 = swift_unownedRetainStrong();
  v14 = sub_10040CAE8(v16);

  v11 = sub_10033ABB0();

  v17 = *(v11 + 16);
  if (v17)
  {
    v18 = 0;
    v74 = v11 + 32;
    v19 = v81;
    v73 = v11;
    v72 = v17;
    do
    {
      v13 = *(v11 + 16);
      if (v18 >= v13)
      {
        goto LABEL_86;
      }

      if (*(v19 + qword_100596F08) != 1)
      {
        v80 = v18;
        v20 = (v74 + 6 * v18);
        v21 = *(v20 + 1);
        v22 = *v20;
        swift_unownedRetainStrong();
        v23 = v22 | (v21 << 16);
        v11 = v82;
        sub_10040CD68(v23, v82);

        v24 = (v11 + *(v83 + 68));
        v14 = v24[1];
        v25 = v24[2];
        v7 = v24[3];
        v26 = v24[4];
        sub_10036D508(*v24, v14);
        sub_10036D24C(v11, type metadata accessor for NANPeer);
        if (v14)
        {
          v75 = v26;
          v76 = v7;
          v77 = v14;
          v27 = *(v25 + 64);
          v85 = (v25 + 64);
          v28 = 1 << *(v25 + 32);
          if (v28 < 64)
          {
            v29 = ~(-1 << v28);
          }

          else
          {
            v29 = -1;
          }

          v7 = v29 & v27;
          v79 = (v28 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v30 = 0;
          v31 = _swiftEmptyArrayStorage;
          v88 = v12;
          v86 = v25;
LABEL_20:
          if (v7)
          {
            goto LABEL_25;
          }

          while (1)
          {
            v13 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v13 >= v79)
            {

              swift_bridgeObjectRelease_n();
              v86 = *(v31 + 2);
              if (v86)
              {
                v49 = 0;
                v84 = v31;
                v85 = v31 + 32;
                do
                {
                  v13 = *(v31 + 2);
                  if (v49 >= v13)
                  {
                    goto LABEL_79;
                  }

                  v50 = &v85[56 * v49];
                  v52 = *v50;
                  v51 = *(v50 + 1);
                  v53 = *(v50 + 2);
                  v54 = *(v50 + 3);
                  v55 = *(*v50 + 16);
                  v91 = v53;
                  v92 = v51;
                  v90 = v54;
                  if (v55)
                  {
                    v87 = v49;
                    v88 = v12;
                    v89 = v6;
                    v56 = v50[32];

                    sub_10005D4F4(v51, v53, v54);
                    v93 = _swiftEmptyArrayStorage;
                    sub_100367908(0, v55, 0);
                    v57 = 0;
                    v14 = v93;
                    if (v56 >= 2)
                    {
                      v58 = 2;
                    }

                    else
                    {
                      v58 = v56;
                    }

                    v59 = v93[2];
                    v60 = v59;
                    do
                    {
                      v61 = *(v52 + v57 + 32);
                      v62 = *(v52 + v57 + 36);
                      v63 = *(v52 + v57 + 37);
                      v93 = v14;
                      v64 = v14[3];
                      if (v59++ >= v64 >> 1)
                      {
                        sub_100367908((v64 > 1), v59, 1);
                        v14 = v93;
                      }

                      v14[2] = v59;
                      v13 = &v14[v60 + v57 / 8];
                      *(v13 + 32) = v61;
                      *(v13 + 36) = v62;
                      *(v13 + 37) = v63;
                      *(v13 + 38) = v58;
                      v57 += 8;
                      --v55;
                    }

                    while (v55);
                    v12 = v88;
                    v6 = v89;
                    v31 = v84;
                    v49 = v87;
                  }

                  else
                  {

                    sub_10005D4F4(v51, v53, v54);
                    v59 = _swiftEmptyArrayStorage[2];
                    v14 = _swiftEmptyArrayStorage;
                  }

                  v11 = *(v12 + 2);
                  v7 = v11 + v59;
                  if (__OFADD__(v11, v59))
                  {
                    goto LABEL_80;
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v7 <= *(v12 + 3) >> 1)
                  {
                    if (!v14[2])
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if (v11 <= v7)
                    {
                      v67 = v11 + v59;
                    }

                    else
                    {
                      v67 = v11;
                    }

                    v12 = sub_1003A78D4(isUniquelyReferenced_nonNull_native, v67, 1, v12);
                    if (!v14[2])
                    {
LABEL_46:

                      sub_10002F75C(v92, v91, v90);

                      if (v59)
                      {
                        goto LABEL_81;
                      }

                      goto LABEL_47;
                    }
                  }

                  v13 = *(v12 + 2);
                  if (((*(v12 + 3) >> 1) - v13) < v59)
                  {
                    goto LABEL_82;
                  }

                  memcpy(&v12[8 * v13 + 32], v14 + 4, 8 * v59);

                  sub_10002F75C(v92, v91, v90);

                  if (v59)
                  {
                    v68 = *(v12 + 2);
                    v48 = __OFADD__(v68, v59);
                    v13 = v68 + v59;
                    if (v48)
                    {
                      goto LABEL_83;
                    }

                    *(v12 + 2) = v13;
                  }

LABEL_47:
                  ++v49;
                }

                while (v49 != v86);
              }

              goto LABEL_10;
            }

            v7 = *&v85[8 * v13];
            ++v30;
            if (v7)
            {
              v30 = v13;
LABEL_25:
              v91 = v7;
              v13 = (v30 << 9) | (8 * __clz(__rbit64(v7)));
              v32 = *(*(v25 + 56) + v13);
              v33 = *(v32 + 16);
              if (v33)
              {
                v89 = v6;
                v90 = v30;
                v84 = v31;
                v93 = _swiftEmptyArrayStorage;

                sub_100367928(0, v33, 0);
                v14 = v93;
                v87 = v32;
                v34 = (v32 + 80);
                do
                {
                  v35 = *(v34 - 6);
                  v36 = *(v34 - 5);
                  v38 = *(v34 - 4);
                  v37 = *(v34 - 3);
                  LODWORD(v92) = *(v34 - 16);
                  v39 = *(v34 - 1);
                  v40 = *v34;

                  sub_10005D4F4(v36, v38, v37);
                  v93 = v14;
                  v42 = v14[2];
                  v41 = v14[3];
                  if (v42 >= v41 >> 1)
                  {
                    sub_100367928((v41 > 1), v42 + 1, 1);
                    v14 = v93;
                  }

                  v14[2] = v42 + 1;
                  v43 = &v14[7 * v42];
                  v43[4] = v35;
                  v43[5] = v36;
                  v43[6] = v38;
                  v43[7] = v37;
                  *(v43 + 64) = v92;
                  v43[9] = v39;
                  v43[10] = v40;
                  v34 += 7;
                  --v33;
                }

                while (v33);

                v12 = v88;
                v6 = v89;
                v31 = v84;
                v25 = v86;
                v30 = v90;
              }

              else
              {
                v14 = _swiftEmptyArrayStorage;
              }

              v11 = v14[2];
              v44 = *(v31 + 2);
              v7 = v44 + v11;
              if (__OFADD__(v44, v11))
              {
                goto LABEL_84;
              }

              v45 = swift_isUniquelyReferenced_nonNull_native();
              if (!v45 || v7 > *(v31 + 3) >> 1)
              {
                if (v44 <= v7)
                {
                  v46 = v44 + v11;
                }

                else
                {
                  v46 = v44;
                }

                v31 = sub_1003A7678(v45, v46, 1, v31);
              }

              v7 = (v91 - 1) & v91;
              if (v14[2])
              {
                v13 = *(v31 + 2);
                if (((*(v31 + 3) >> 1) - v13) < v11)
                {
                  goto LABEL_87;
                }

                swift_arrayInitWithCopy();

                if (v11)
                {
                  v47 = *(v31 + 2);
                  v48 = __OFADD__(v47, v11);
                  v13 = v47 + v11;
                  if (v48)
                  {
                    goto LABEL_88;
                  }

                  *(v31 + 2) = v13;
                }
              }

              else
              {

                if (v11)
                {
                  goto LABEL_85;
                }
              }

              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          v12 = sub_1003A78D4((v13 > 1), v14, 1, v12);
          goto LABEL_5;
        }

LABEL_10:
        v18 = v80;
        v19 = v81;
        v11 = v73;
        v17 = v72;
      }

      ++v18;
    }

    while (v18 != v17);
  }

  if (*(v12 + 2))
  {
    sub_10005DC58(&qword_100595318, &qword_1004AF220);
    v69 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v69 = &_swiftEmptyDictionarySingleton;
  }

  v93 = v69;

  sub_10036BE24(v70, 1, &v93);
  if (v6)
  {

    __break(1u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v71 = *(v81 + qword_100596F00);
    *(v81 + qword_100596F00) = v93;
    sub_100353DF0(v71);
  }

  return result;
}

uint64_t sub_1003550BC()
{
  v1 = qword_100596EF0;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_100596EF8);

  v4 = *(v0 + qword_100596F00);

  v5 = *(v0 + qword_100596F10);
  swift_unownedRelease();
  return v0;
}

uint64_t sub_100355164(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003551D4(uint64_t a1, void *a2, uint64_t a3)
{
  v96 = a1;
  v95 = *v3;
  v5 = *a2;
  v90 = a2;
  v6 = *(*(*(*(v5 + class metadata base offset for ReferenceWritableKeyPath + 8) + 16) - 8) + 64);
  __chkstk_darwin();
  v88 = v85 - v7;
  v89 = v8;
  v9 = *(v8 + 24);
  v102 = *(v9 + 40);
  v10 = *(v9 + 24);
  v87 = v102[1];
  v104 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  v99 = AssociatedTypeWitness;
  v12 = *(v98 + 64);
  __chkstk_darwin();
  v86 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = v85 - v14;
  v101 = type metadata accessor for Logger();
  v15 = *(v101 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v17 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = v85 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin();
  v24 = (v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v26 = *v25;
  *v24 = *v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  result = (*(v21 + 8))(v24, v20);
  if (v26)
  {
    sub_100012400(a3, v107, &unk_100597480, &qword_1004B1798);
    v91 = v108;
    if (v108)
    {
      sub_100085188(v107, &v109);
      v29 = 0;
    }

    else
    {
      v29 = *&v107[0];
      v30 = [*(*&v107[0] + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    v31 = v103;
    v32 = *(v15 + 16);
    v85[1] = qword_10059B9C0;
    v33 = v19;
    v100 = v19;
    v34 = v15;
    v35 = v101;
    v32(v33, v103 + qword_10059B9C0, v101);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v29)
    {
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32(v17, v100, v35);
      sub_100002B30(&v109, v107);
      v38 = (*(v34 + 80) + 56) & ~*(v34 + 80);
      v39 = (v16 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      v41 = v104;
      *(v40 + 2) = *(v95 + 80);
      *(v40 + 3) = v41;
      *(v40 + 4) = v102;
      *(v40 + 5) = v36;
      *(v40 + 6) = v37;
      (*(v34 + 32))(&v40[v38], v17, v35);
      sub_100085188(v107, &v40[v39]);
      v42 = &v29[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v44 = *&v29[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v43 = *&v29[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v42 = sub_10036CD28;
      v42[1] = v40;

      sub_100010520(v44);
      v31 = v103;
    }

    v97 = v36;
    v92 = v34;
    v45 = *(v31 + *(*v31 + 304));
    swift_unownedRetainStrong();
    v46 = v93;
    (*(v98 + 16))(v93, v96, v99);
    if (v29)
    {
      v47 = *&v29[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID];
      v48 = *&v29[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8];
      v49 = *&v29[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientPID];
      v50 = v29[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientPID + 4];
    }

    else
    {
      v49 = 0;
      v47 = 0;
      v48 = 0;
      v50 = 1;
    }

    v51 = v100;
    v52 = v102[2];
    LOBYTE(v107[0]) = v50;
    v53 = v49 | (v50 << 32);
    v54 = v102;
    v55 = v47;
    v56 = v48;
    v57 = v104;
    v58 = v94;
    v59 = v52(v45, v46, v55, v56, v53, v91, v104, v102);
    if (v58)
    {
      v60 = v29;
      v61 = v101;
    }

    else
    {
      v96 = 0;
      sub_100002B30(&v109, v107);
      (v54[8])(v107, v57, v54);
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      if (v29)
      {
        v62 = [objc_opt_self() weakExportedObjectProxy:v59];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100301920(v107);
      }

      v63 = v87;
      v64 = *(v87 + 64);
      v65 = v103;

      v66 = v86;
      v64(v57, v63);
      v67 = v99;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 56))(v67, AssociatedConformanceWitness);
      (*(v98 + 8))(v66, v67);
      v69 = *(v95 + 80);
      v70 = *(v95 + 88);
      swift_unknownObjectRetain();
      v60 = v29;
      v71 = v102;
      sub_10036B958(v59, v29);
      v73 = v72;

      v105 = v59;
      v106 = v73;
      v110 = v65;
      v74 = swift_modifyAtReferenceWritableKeyPath();
      Dictionary.subscript.setter();
      v74(v107, 0);

      v75 = v96;
      (v71[4])(v104, v71);
      if (!v75)
      {

        (*(v92 + 8))(v100, v101);
        sub_100002A00(&v109);
LABEL_20:

        return v59;
      }

      swift_errorRetain();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v107[0] = v79;
        *v78 = 136315394;
        v80 = _typeName(_:qualified:)();
        v82 = sub_100002320(v80, v81, v107);

        *(v78 + 4) = v82;
        *(v78 + 12) = 2112;
        swift_errorRetain();
        v83 = _swift_stdlib_bridgeErrorToNSError();
        *(v78 + 14) = v83;
        v84 = v102;
        *v102 = v83;
        _os_log_impl(&_mh_execute_header, v76, v77, "Attempt to create service %s failed because of %@", v78, 0x16u);
        sub_100016290(v84, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v79);
      }

      v61 = v101;
      sub_100355F78(v59, v90, 0);
      swift_willThrow();
      swift_unknownObjectRelease();
      v51 = v100;
    }

    (*(v92 + 8))(v51, v61);
    sub_100002A00(&v109);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_100355C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v16 = *v15;
  *v14 = *v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v16)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v36 = a4;
        v22 = v20;
        swift_unknownObjectRetain();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v35 = a6;
          v28 = v27;
          v37 = v19;
          v38 = v27;
          *v25 = 138412546;
          *(v25 + 4) = v22;
          *v26 = v21;
          *(v25 + 12) = 2080;
          v29 = *(*(a7 + 8) + 16);
          v30 = v22;
          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = v32;
          swift_unknownObjectRelease();
          v34 = sub_100002320(v31, v33, &v38);

          *(v25 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v23, v24, "%@ was invalidated detaching from %s", v25, 0x16u);
          sub_100016290(v26, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v28);
          a6 = v35;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        (*(a7 + 80))(v36, a6, a7);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100355F78(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = a1;
  v4 = *v3;
  v48 = a3;
  v49 = v4;
  v5 = *a2;
  v53 = a2;
  v52 = *(*(v5 + class metadata base offset for ReferenceWritableKeyPath + 8) + 16);
  v51 = *(v52 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin();
  v8 = &v46 - v7;
  v50 = v9;
  v10 = *(v9 + 24);
  v47 = *(v10 + 40);
  v11 = *(v47 + 8);
  v12 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v46 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = (&v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v24 = *v23;
  *v22 = *v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if (v24)
  {
    v26 = *(v11 + 64);
    v27 = v54;

    v26(v12, v11);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v14 + 8))(v17, AssociatedTypeWitness);
    v56[4] = v27;
    v29 = swift_modifyAtReferenceWritableKeyPath();
    Dictionary.removeValue(forKey:)();
    (*(v51 + 8))(v8, v52);
    v29(v56, 0);

    if (v57[0])
    {
      v30 = *(v49 + 80);
      v31 = *(v49 + 88);
      v32 = v47;
      sub_10033AF04(v57[0], v57[1]);
      v56[0] = v48;
      __chkstk_darwin();
      *(&v46 - 4) = v12;
      *(&v46 - 3) = v32;
      v33 = v55;
      *(&v46 - 2) = v54;
      *(&v46 - 1) = v33;
      sub_10005DD04(&qword_100597328, &qword_1004B1638);
      type metadata accessor for ReferenceWritableKeyPath();
      type metadata accessor for Optional();
      sub_1003392B0(sub_100367804, (&v46 - 6), &type metadata for Never, &type metadata for () + 8, v34, v57);

      swift_unknownObjectRelease();
    }

    else
    {
      v35 = v11;
      v36 = v55;
      swift_unknownObjectRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v56[0] = v40;
        *v39 = 136315138;
        v57[0] = v36;
        v41 = *(v35 + 16);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        swift_unknownObjectRelease();
        v45 = sub_100002320(v42, v44, v56);

        *(v39 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "Unable to find %s when it was terminated", v39, 0xCu);
        sub_100002A00(v40);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003583D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v21;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = *a5;
  v10 = type metadata accessor for UUID();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v13 = type metadata accessor for WiFiAwarePairedDevice();
  v8[14] = v13;
  v14 = *(v13 - 8);
  v8[15] = v14;
  v15 = *(v14 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = *(*(v9 + 88) + 8);
  v8[20] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[21] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v8[22] = v17;
  v18 = *(v17 + 64) + 15;
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_1003585C4, 0, 0);
}

uint64_t sub_1003585C4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[9];
  v7 = *(v0[6] + *(*v0[6] + 304));
  swift_unownedRetainStrong();
  (*(v2 + 16))(v1, v7 + *(*v7 + 112), v4);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 136))(v4, AssociatedConformanceWitness);
  v0[24] = v9;
  v10 = (*(v2 + 8))(v1, v4);
  if (v6)
  {
    v13 = *v9 + 392;
    v0[25] = *v13;
    v0[26] = v13 & 0xFFFFFFFFFFFFLL | 0xD6F0000000000000;
    v10 = sub_100358738;
    v11 = v9;
    v12 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100358738()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  *(v0 + 216) = (*(v0 + 200))(*(v0 + 64), *(v0 + 72), 1, 0);
  *(v0 + 224) = 0;

  return _swift_task_switch(sub_10036D7C4, 0, 0);
}

uint64_t sub_1003587D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_100012400(a3, v23 - v9, &qword_1005985E0, &unk_1004B0F80);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100016290(v10, &qword_1005985E0, &unk_1004B0F80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10035D574(uint64_t a1)
{
  v1 = *(a1 + 8) + qword_10059B890;
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = String.lowercased()();
  v5 = String.lowercased()();
  if (v4._countAndFlagsBits == v5._countAndFlagsBits && v4._object == v5._object)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10035D644@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v17[1] = a2;
  v18 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v14 = v17 - v13;
  sub_100012400(v5, v17 - v13, &qword_10058F4D0, &qword_100491AB0);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    v15 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  else
  {
    (*(v8 + 32))(v11, v14, v7);
    v18(v11);
    result = (*(v8 + 8))(v11, v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

double sub_10035D864@<D0>(unint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a5 + *(*a5 + 304));
  swift_unownedRetainStrong();
  v13 = WiFiInterface.macAddress.getter();

  v14 = NANPassphrase.pmk(for:serviceName:publisherAddress:)(a2, a3, a4, v13 & 0xFFFFFFFFFFFFLL, v10, v11);
  v16 = v15;

  sub_100017554(0, 0xF000000000000000);
  sub_10000AB0C(v14, v16);
  sub_10005D67C(0, 0xF000000000000000);

  sub_1000124C8(v14, v16);
  sub_100017554(0, 0xF000000000000000);

  *a6 = a2;
  *(a6 + 8) = v14;
  *(a6 + 16) = v16;
  result = 0.0;
  *(a6 + 24) = xmmword_100483C50;
  *(a6 + 40) = v10;
  *(a6 + 48) = v11;
  return result;
}

uint64_t sub_10035D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v21;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = *a5;
  v10 = type metadata accessor for UUID();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v13 = type metadata accessor for WiFiAwarePairedDevice();
  v8[14] = v13;
  v14 = *(v13 - 8);
  v8[15] = v14;
  v15 = *(v14 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = *(*(v9 + 88) + 8);
  v8[20] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[21] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v8[22] = v17;
  v18 = *(v17 + 64) + 15;
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_10035DB70, 0, 0);
}

uint64_t sub_10035DB70()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[9];
  v7 = *(v0[6] + *(*v0[6] + 304));
  swift_unownedRetainStrong();
  (*(v2 + 16))(v1, v7 + *(*v7 + 112), v4);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 136))(v4, AssociatedConformanceWitness);
  v0[24] = v9;
  v10 = (*(v2 + 8))(v1, v4);
  if (v6)
  {
    v13 = *v9 + 392;
    v0[25] = *v13;
    v0[26] = v13 & 0xFFFFFFFFFFFFLL | 0xD6F0000000000000;
    v10 = sub_10035DCE4;
    v11 = v9;
    v12 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10035DCE4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  *(v0 + 216) = (*(v0 + 200))(*(v0 + 64), *(v0 + 72), 1, 0);
  *(v0 + 224) = 0;

  return _swift_task_switch(sub_10035DE30, 0, 0);
}

uint64_t sub_10035DD80()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[5];

  OS_dispatch_semaphore.signal()();

  v8 = v0[1];
  v9 = v0[28];

  return v8();
}

void sub_10035DE30()
{
  v1 = v0[27];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[15];
    v5 = v0[10];
    v41 = v0[14];
    v39 = *(v1 + 16);
    v40 = v0[27];
    while (v3 < *(v1 + 16))
    {
      v6 = v0[18];
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      v9 = v3 + 1;
      sub_10036D334(v0[27] + v7 + v8 * v3, v6, type metadata accessor for WiFiAwarePairedDevice);
      v10 = (v5 + 32);
      v11 = *(v5 + 16);
      do
      {
        if (!v11)
        {
          sub_10036D24C(v0[18], type metadata accessor for WiFiAwarePairedDevice);
          goto LABEL_4;
        }

        v12 = *v10++;
        --v11;
      }

      while (v12 != *(v6 + *(v41 + 20)));
      sub_10036D640(v0[18], v0[17], type metadata accessor for WiFiAwarePairedDevice);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000C0704(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000C0704(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[17];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      sub_10036D640(v15, _swiftEmptyArrayStorage + v7 + v14 * v8, type metadata accessor for WiFiAwarePairedDevice);
      v2 = v39;
      v1 = v40;
LABEL_4:
      v3 = v9;
      if (v9 == v2)
      {
        v16 = v0[27];
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v17 = _swiftEmptyArrayStorage[2];
    if (v17)
    {
      v18 = v0[15];
      v19 = v0[12];
      sub_1003678E8(0, v17, 0);
      v20 = _swiftEmptyArrayStorage + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v42 = *(v18 + 72);
      do
      {
        v21 = v0[16];
        v22 = v0[13];
        v23 = v0[11];
        sub_10036D334(v20, v21, type metadata accessor for WiFiAwarePairedDevice);
        (*(v19 + 16))(v22, v21, v23);
        sub_10036D24C(v21, type metadata accessor for WiFiAwarePairedDevice);
        v25 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];
        if (v25 >= v24 >> 1)
        {
          sub_1003678E8(v24 > 1, v25 + 1, 1);
        }

        v26 = v0[13];
        v27 = v0[11];
        _swiftEmptyArrayStorage[2] = v25 + 1;
        (*(v19 + 32))(_swiftEmptyArrayStorage + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v25, v26, v27);
        v20 += v42;
        --v17;
      }

      while (v17);
      v28 = v0[24];
    }

    else
    {
      v29 = v0[24];
    }

    v30 = v0[23];
    v32 = v0[17];
    v31 = v0[18];
    v33 = v0[16];
    v34 = v0[13];
    v35 = v0[7];
    v36 = v0[5];
    swift_beginAccess();
    v37 = *(v35 + 16);
    *(v35 + 16) = _swiftEmptyArrayStorage;

    OS_dispatch_semaphore.signal()();

    v38 = v0[1];

    v38();
  }
}

uint64_t sub_10035E208(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v11 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v12)
  {

    v15 = a3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v18 + 4) = Strong;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v19 = Strong;
      v19[1] = v15;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "%@ was invalidated detaching from %@", v18, 0x16u);
      sub_10005DC58(&qword_10058B780, &qword_100480AC0);
      swift_arrayDestroy();
    }

    v23[3] = swift_getObjectType();
    v23[0] = a4;
    swift_unknownObjectRetain();
    sub_1002F7B8C(v23);
    return sub_100002A00(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100364C1C(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1 + *((swift_isaMask & **a1) + 0x68);
  swift_beginAccess();
  if (*(v11 + 24) != a2)
  {
    return 0;
  }

  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = String.lowercased()();
  v15 = String.lowercased()();
  if (v14._countAndFlagsBits == v15._countAndFlagsBits && v14._object == v15._object)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v11 + 32))
  {
    if (*(v11 + 32) == 1 && a5 == 2)
    {
      return 0;
    }
  }

  else if (a5 - 1 < 2)
  {
    return 0;
  }

  if (!static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(v11 + 25) | (*(v11 + 27) << 16), a6 & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v19 = *(v11 + 3);
  v20 = *(v11 + 1);
  v21 = (*(*a7 + 256))();
  return static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v20 | (v19 << 16), v21 & 0xFFFFFFFFFFFFLL);
}

void sub_100364DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        v17 = v15;
        v18 = v14;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412546;
          *(v21 + 4) = v17;
          *(v21 + 12) = 2112;
          *(v21 + 14) = v18;
          *v22 = v16;
          v22[1] = v14;
          v23 = v17;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "%@ was invalidated detaching from %@", v21, 0x16u);
          sub_10005DC58(&qword_10058B780, &qword_100480AC0);
          swift_arrayDestroy();
        }

        v25[3] = swift_getObjectType();
        v25[0] = a4;
        swift_unknownObjectRetain();
        sub_10032D358(v25);

        sub_100002A00(v25);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10036506C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v5 = *a2;
  v6 = *(*(*a2 + 88) + 8);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = *(a2 + *(v5 + 304));
  swift_unownedRetainStrong();
  (*(v9 + 16))(v12, v13 + *(*v13 + 112), AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 128))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  v15 = LongTermPairingKeyStore.getPairedPeersWithIDs()();

  if (*(v15 + 16) && (v16 = a3, v17 = sub_10002A440(v26), (v18 & 1) != 0))
  {
    v19 = v17;
    v20 = *(v15 + 56);
    v21 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    v22 = *(v21 - 8);
    sub_10036D334(v20 + *(v22 + 72) * v19, v16, type metadata accessor for NANPairedDeviceSharedAssociation);

    return (*(v22 + 56))(v16, 0, 1, v21);
  }

  else
  {

    v24 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    return (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }
}

uint64_t sub_1003653DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14[3] = swift_getObjectType();
  v14[0] = a2;
  v15 = 1;
  swift_unknownObjectRetain();
  v12 = a6(v14, a1, a3, a4, a5 | ((HIDWORD(a5) & 1) << 32));
  sub_100016290(v14, &unk_100597480, &qword_1004B1798);
  return v12;
}

uint64_t sub_1003654D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *(*(type metadata accessor for NANSubscribe.Configuration() - 8) + 64);
  __chkstk_darwin();
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  DNSRecords.Identifier.description.getter(a1, a2, a3 & 0xFFFFFF01);
  v12 = objc_allocWithZone(WiFiAwareSubscribeConfiguration);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithServiceName:v13];

  [v14 setAuthenticationType:0];
  v18[8] = 1;
  v15 = sub_1003653DC(v14, a4, 0, 0, 0x100000000uLL, sub_100356504);

  if (!v4)
  {
    v16 = qword_10059BAE8;
    swift_beginAccess();
    sub_10036D334(v15 + v16, v11, type metadata accessor for NANSubscribe.Configuration);

    v15 = *v11;
    sub_10036D24C(v11, type metadata accessor for NANSubscribe.Configuration);
  }

  return v15;
}

uint64_t sub_100365690()
{
  v1 = *v0;
  v2 = qword_100596C80;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 88);
  *&v9 = *(v1 + 80);
  *(&v9 + 1) = _s8InstanceCMa();
  *&v10 = v4;
  *(&v10 + 1) = swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  if (!v7)
  {
    swift_endAccess();
    v9 = 0u;
    v10 = 0u;
    goto LABEL_7;
  }

  v5 = v7;
  swift_endAccess();
  sub_100058BA4(v7);
  sub_1003912F4(&v9);

  if (!*(&v10 + 1))
  {
LABEL_7:
    sub_100016290(&v9, &qword_10058BA80, &qword_1004818C0);
    return 0;
  }

  sub_10005DC58(&unk_1005974E0, &qword_1004B1818);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_100365828()
{
  v1 = *v0;
  v2 = qword_100596C80;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 88);
  v6 = *(v1 + 80);
  _s8InstanceCMa();
  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  if (v7)
  {
    v5 = v7;
    swift_endAccess();
    sub_100058BA4(v7);
    sub_100391354();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100365950(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v41 = a3;
  v6 = *(*(type metadata accessor for NANPublish.Configuration() - 8) + 64);
  __chkstk_darwin();
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a1 + 32) | (*(a1 + 33) << 8);
  DNSRecords.Identifier.description.getter(v8, v9, *(a1 + 32) | (*(a1 + 33) << 8));
  v11 = objc_allocWithZone(WiFiAwarePublishConfiguration);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 initWithServiceName:v12];

  [v13 setAuthenticationType:0];
  v14 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = v41;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v14 setTxtRecordData:isa];

  v19 = *a1;
  v20 = a1[1];
  v21 = String._bridgeToObjectiveC()();
  [v14 setInstanceName:v21];

  [v13 setServiceSpecificInfo:v14];
  v22 = [objc_allocWithZone(WiFiAwarePublishDatapathConfiguration) initWithServiceType:DNSRecords.Identifier.serviceType.getter(v8 securityConfiguration:{v9, v10), 0}];
  v23 = *(v17 + 32);
  v24 = type metadata accessor for DNSRecords.SRV();
  v25 = v17 + *(v24 + 20);
  v26 = [objc_allocWithZone(WiFiAwarePublishDatapathServiceSpecificInfo) initWithProtocolType:v23 servicePort:NWEndpoint.Port.rawValue.getter()];
  [v22 setServiceSpecificInfo:v26];

  v27 = [v22 serviceSpecificInfo];
  if (v27)
  {
    v28 = v27;
    v29 = (v17 + *(v24 + 24));
    v30 = *v29;
    v31 = v29[1];
    v32 = String._bridgeToObjectiveC()();
    [v28 setHostname:v32];
  }

  [v13 setDatapathConfiguration:v22];
  v43 = 1;
  v33 = v44;
  v34 = sub_1003653DC(v13, v42, 0, 0, 0x100000000uLL, sub_100358A80);

  if (v33)
  {
  }

  else
  {

    v35 = qword_10059B890;
    swift_beginAccess();
    v36 = v34 + v35;
    v37 = v40;
    sub_10036D334(v36, v40, type metadata accessor for NANPublish.Configuration);

    v34 = *v37;
    sub_10036D24C(v37, type metadata accessor for NANPublish.Configuration);
  }

  return v34;
}

void sub_100365CB0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
  v6 = qword_100596C88;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = *(v4 + 80);
  v9 = *(v4 + 88);
  v23 = _s8InstanceCMa_0();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  if (v25)
  {
    v10 = v25;
    swift_endAccess();
    sub_100058BA4(v25);
  }

  else
  {
    swift_endAccess();
  }

  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v5 setTxtRecordData:{isa, v8, v23, v9, WitnessTable}];

  if (v25 && (v14 = &v25[qword_10059B890], swift_beginAccess(), v15 = *(v14 + 3), v16 = , NANGenericServiceProtocol.instanceName.getter(v16), v18 = v17, , v18))
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  [v5 setInstanceName:v19];

  swift_beginAccess();
  v20 = *(v2 + v6);
  Dictionary.subscript.getter();
  if (v25)
  {
    v21 = v25;
    swift_endAccess();
    sub_100058BA4(v25);
    v22 = v5;
    sub_1002FAF10(v5, NANBitmap.Channel.operatingClass.getter, 0);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100365F5C()
{
  v1 = *v0;
  v2 = qword_100596C88;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 88);
  *&v9 = *(v1 + 80);
  *(&v9 + 1) = _s8InstanceCMa_0();
  *&v10 = v4;
  *(&v10 + 1) = swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  if (!v7)
  {
    swift_endAccess();
    v9 = 0u;
    v10 = 0u;
    goto LABEL_7;
  }

  v5 = v7;
  swift_endAccess();
  sub_100058BA4(v7);
  sub_1002EBB40(&v9);

  if (!*(&v10 + 1))
  {
LABEL_7:
    sub_100016290(&v9, &qword_10058BA80, &qword_1004818C0);
    return 0;
  }

  sub_10005DC58(&unk_100595B60, qword_1004AFC70);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_1003660F4()
{
  v1 = *v0;
  v2 = qword_100596C88;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 88);
  v6 = *(v1 + 80);
  _s8InstanceCMa_0();
  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  if (v7)
  {
    v5 = v7;
    swift_endAccess();
    sub_100058BA4(v7);
    sub_1002F9FB0();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_10036621C()
{
  v1 = *v0;
  v2 = qword_100596C90;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *&v10 = v4;
  *(&v10 + 1) = _s17InitiatorInstanceCMa();
  *&v11 = v5;
  *(&v11 + 1) = swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  Dictionary.subscript.getter();
  if (!v8)
  {
    swift_endAccess();
    v10 = 0u;
    v11 = 0u;
    goto LABEL_7;
  }

  v6 = v8;
  swift_endAccess();
  sub_100058BA4(v8);
  sub_10031DBFC(&v10);

  if (!*(&v11 + 1))
  {
LABEL_7:
    sub_100016290(&v10, &qword_10058BA80, &qword_1004818C0);
    return 0;
  }

  sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_1003663C4()
{
  v1 = *v0;
  v2 = qword_100596C90;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  _s17InitiatorInstanceCMa();
  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  Dictionary.subscript.getter();
  if (v7)
  {
    v6 = v7;
    swift_endAccess();
    sub_100058BA4(v7);
    sub_10032DAF8();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1003664FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8 = *v5;
  result = sub_1003654D0(a1, a2, a3 & 0xFFFFFF01, a4);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_100366530(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  return sub_100365690();
}

void sub_100366558(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_100365828();
}

uint64_t sub_100366580@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8 = *v5;
  result = sub_100365950(a1, a2, a3, a4);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1003665D8(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  return sub_100365F5C();
}

void sub_100366600(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_1003660F4();
}

void sub_100366628(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  sub_10036C320(*(a1 + 16), *(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8), a2, a3);
  if (!v5)
  {
    *a4 = v8;
    *(a4 + 2) = BYTE2(v8);
    *(a4 + 3) = BYTE3(v8);
    *(a4 + 4) = BYTE4(v8);
    *(a4 + 5) = BYTE5(v8);
    *(a4 + 6) = BYTE6(v8);
  }
}

uint64_t sub_1003666A4(unsigned __int16 *a1)
{
  v2 = *v1;
  v3 = *a1 | (*(a1 + 2) << 16) | (*(a1 + 3) << 24);
  return sub_10036621C();
}

void sub_1003666DC(unsigned __int16 *a1)
{
  v2 = *v1;
  v3 = *a1 | (*(a1 + 2) << 16) | (*(a1 + 3) << 24);
  sub_1003663C4();
}

uint64_t sub_10036676C(uint64_t a1, void *a2, uint64_t (*a3)(void *, uint64_t, void, void, uint64_t))
{
  v9[0] = a2;
  v10 = 0;
  v6 = a2;
  v11 = 1;
  v7 = a3(v9, a1, 0, 0, 0x100000000);
  if (!v3)
  {
  }

  return sub_100016290(v9, &unk_100597480, &qword_1004B1798);
}

uint64_t sub_100366804(uint64_t a1, char *a2)
{
  v9[0] = a2;
  v10 = 0;
  v4 = *&a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID];
  v5 = *&a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8];
  v6 = a2;
  v7 = sub_10035E470(v9, a1, v4, v5, 0x100000000);
  if (!v2)
  {
  }

  return sub_100016290(v9, &unk_100597480, &qword_1004B1798);
}

uint64_t sub_1003668A8(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 200) = a3;
  *(v4 + 208) = v3;
  *(v4 + 192) = a2;
  *(v4 + 248) = a1;
  *(v4 + 216) = *v3;
  return _swift_task_switch(sub_1003668F8, 0, 0);
}

uint64_t sub_1003668F8()
{
  v1 = *(v0 + 192);
  if (v1 == 2)
  {
    v13 = *(v0 + 208);
    v14 = *(v0 + 216);
    v15 = *(v0 + 200);
    v16 = *(v0 + 248);
    v17 = qword_100596C98;
    swift_beginAccess();
    *(v0 + 176) = *(v13 + v17);
    v18 = swift_task_alloc();
    v19 = *(v14 + 80);
    *(v18 + 16) = v19;
    v20 = *(v14 + 88);
    *(v18 + 24) = v20;
    *(v18 + 32) = v16;
    *(v18 + 33) = v15;
    *(v18 + 35) = BYTE2(v15);
    *(v18 + 36) = BYTE3(v15);
    *(v18 + 37) = BYTE4(v15);
    *(v18 + 38) = BYTE5(v15);
    v21 = _s17ResponderInstanceCMa();

    WitnessTable = swift_getWitnessTable();
    *(v0 + 16) = v19;
    *(v0 + 24) = v21;
    *(v0 + 32) = v20;
    *(v0 + 40) = WitnessTable;
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    sub_10020CB70();
    type metadata accessor for Dictionary();
    swift_getWitnessTable();
    Sequence.first(where:)();

    v11 = *(v0 + 88);
    if (v11)
    {
      v23 = *(v0 + 96);

      goto LABEL_7;
    }
  }

  else if (v1 == 1)
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    v4 = *(v0 + 248);
    v5 = qword_100596C90;
    swift_beginAccess();
    *(v0 + 184) = *(v3 + v5);
    v6 = swift_task_alloc();
    v7 = *(v2 + 80);
    *(v6 + 16) = v7;
    v8 = *(v2 + 88);
    *(v6 + 24) = v8;
    *(v6 + 32) = v4;
    v9 = _s17InitiatorInstanceCMa();

    v10 = swift_getWitnessTable();
    *(v0 + 48) = v7;
    *(v0 + 56) = v9;
    *(v0 + 64) = v8;
    *(v0 + 72) = v10;
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    sub_10020CB70();
    type metadata accessor for Dictionary();
    swift_getWitnessTable();
    Sequence.first(where:)();

    v11 = *(v0 + 136);
    if (v11)
    {
      v12 = *(v0 + 144);

LABEL_7:
      v24 = swift_getWitnessTable();
      *(v0 + 224) = v11;
      ObjectType = swift_getObjectType();
      v26 = *(v24 + 112);
      v31 = (v26 + *v26);
      v27 = v26[1];
      v28 = swift_task_alloc();
      *(v0 + 232) = v28;
      *v28 = v0;
      v28[1] = sub_100366D5C;

      return v31(ObjectType, v24);
    }
  }

  v30 = *(v0 + 8);

  return v30(0);
}

uint64_t sub_100366D5C(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_100366E5C, 0, 0);
}

uint64_t sub_100366E5C()
{
  v1 = v0[28];
  swift_unknownObjectRelease();
  v2 = v0[30];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100366EC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v21[-v12];
  v14 = *a1;
  v15 = *(v8 + 64);

  v15(a4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  v22 = a2;
  v18 = swift_modifyAtReferenceWritableKeyPath();
  sub_1001D5218(v17);
  v18(v21, 0);
}

uint64_t sub_10036708C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_100355F78(a1, KeyPath, v6);
}

uint64_t sub_100367158(uint64_t *a1, void *a2)
{
  sub_10036728C(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003671F4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10036728C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = *(v2 + *a2);
  swift_unownedRelease();
  return v2;
}

uint64_t sub_100367344()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100367380(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1003673C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_100367418()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100367480()
{
  result = qword_100597298;
  if (!qword_100597298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100597298);
  }

  return result;
}

void *sub_1003674F0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&qword_10058D610, &qword_1004871C0);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003675EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&unk_100597450, &qword_1004B16D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_100367684(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&qword_100595370, &qword_1004AF240);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100367708(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&qword_100597380, &unk_1004B0770);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_10036777C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_100367828(char *a1, int64_t a2, char a3)
{
  result = sub_10030E494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100367848(size_t a1, int64_t a2, char a3)
{
  result = sub_10030E598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367868(char *a1, int64_t a2, char a3)
{
  result = sub_10030E5D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367888(char *a1, int64_t a2, char a3)
{
  result = sub_10030E6FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003678A8(char *a1, int64_t a2, char a3)
{
  result = sub_10030E808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003678C8(void *a1, int64_t a2, char a3)
{
  result = sub_10030E81C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1003678E8(size_t a1, int64_t a2, char a3)
{
  result = sub_10030E950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367908(char *a1, int64_t a2, char a3)
{
  result = sub_10030E978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367928(char *a1, int64_t a2, char a3)
{
  result = sub_10030E98C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100367948(void *a1, int64_t a2, char a3)
{
  result = sub_10030EAB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367968(char *a1, int64_t a2, char a3)
{
  result = sub_10030EBFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100367988(void *a1, int64_t a2, char a3)
{
  result = sub_10030ECF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003679A8(char *a1, int64_t a2, char a3)
{
  result = sub_10030EE18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1003679C8(size_t a1, int64_t a2, char a3)
{
  result = sub_10030EF30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

BOOL sub_1003679E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10034BF40(a1);
}

uint64_t sub_100367A54(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100367D24(v6, v4, a1);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_10036839C(v8, v4, a1);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100367BB4(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, a1);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_100368414(v12, v7, a1, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_100367D24(unint64_t *a1, uint64_t a2, void *a3)
{
  v25 = a2;
  v26 = a1;
  v29 = sub_10005DC58(&unk_100597360, &unk_1004B1658);
  v4 = *(*(v29 - 8) + 64);
  __chkstk_darwin();
  v6 = &v25 - v5;
  v28 = *(type metadata accessor for NANAttribute(0) - 8);
  v7 = *(v28 + 64);
  result = __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v11 = 0;
  v30 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = *(v30[6] + v22);
    sub_10036D334(v30[7] + *(v28 + 72) * v22, v10, type metadata accessor for NANAttribute);
    *v6 = v23;
    sub_10036D334(v10, &v6[*(v29 + 48)], type metadata accessor for NANAttribute);
    sub_100016290(v6, &unk_100597360, &unk_1004B1658);
    result = sub_10036D24C(v10, type metadata accessor for NANAttribute);
    if ((v23 - 43) >= 2)
    {
      *(v26 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_100368AB0(v26, v25, v27, v30);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_100368AB0(v26, v25, v27, v30);
    }

    v21 = v13[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100367F9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(a3 + 48) + 8 * v16;
    v18 = *v17;
    v19 = *(v17 + 4);
    LODWORD(v17) = *(v17 + 5);
    result = Channel.isDFS.getter(v18);
    if (result)
    {
      *(v5 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_100368DE4(v5, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_100368DE4(v5, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003680D4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 8 * v11 + 4) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_100368DE4(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_100368DE4(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003681C4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (!*(*(a3 + 48) + 8 * v11 + 4))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_100368DE4(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_100368DE4(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003682B0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_100368DE4(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_100368DE4(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10036839C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100367D24(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_100368414(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_10036849C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10005DC58(&qword_1005952E0, &unk_1004B1850);
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
  v32 = v4;
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
    sub_100002B30(v17 + 32 * v16, v34);
    sub_100085188(v34, v33);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_100085188(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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

uint64_t sub_1003686EC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = a1;
  v49 = *(type metadata accessor for NANPeer.Service.AuthenticationStatus(0) - 8);
  v7 = *(v49 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v48 = &v44 - v9;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v56 = v8;
  sub_10005DC58(&qword_100596310, &unk_1004B07C0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v57 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v47;
  }

  v12 = 0;
  v13 = v57 + 64;
  v45 = a2;
  v46 = a4;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v50 = (v11 - 1) & v11;
    v51 = a3;
LABEL_16:
    v17 = v14 | (v12 << 6);
    v18 = a4[7];
    v19 = (a4[6] - v17 + 8 * v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v24 = v19[4];
    v25 = v19[5];
    v26 = v19[6];
    v27 = v48;
    v54 = *(v49 + 72);
    v55 = v24;
    sub_10036D334(v18 + v54 * v17, v48, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    sub_10036D640(v27, v56, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v28 = v57;
    v29 = *(v57 + 40);
    Hasher.init(_seed:)();
    v52 = v20;
    v30 = v20;
    v31 = v55;
    Hasher._combine(_:)(v30);
    v53 = v23;
    NANClusterChangeEvent.hash(into:)(&v58, v21 | (v22 << 8) | (v23 << 16) | (v31 << 24) | (v25 << 32) | (v26 << 40));
    result = Hasher._finalize()();
    v32 = -1 << *(v28 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v13 + 8 * (v33 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v32) >> 6;
      v36 = v56;
      while (++v34 != v38 || (v37 & 1) == 0)
      {
        v39 = v34 == v38;
        if (v34 == v38)
        {
          v34 = 0;
        }

        v37 |= v39;
        v40 = *(v13 + 8 * v34);
        if (v40 != -1)
        {
          v35 = __clz(__rbit64(~v40)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v13 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    v36 = v56;
LABEL_26:
    *(v13 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v41 = v57;
    v42 = (*(v57 + 48) - v35 + 8 * v35);
    *v42 = v52;
    v42[1] = v21;
    v42[2] = v22;
    v43 = v54;
    v42[3] = v53;
    v42[4] = v31;
    v42[5] = v25;
    v42[6] = v26;
    result = sub_10036D640(v36, *(v41 + 56) + v35 * v43, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    ++*(v41 + 16);
    a3 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
      goto LABEL_32;
    }

    a4 = v46;
    v11 = v50;
    a2 = v45;
    if (v51 == 1)
    {
      return v57;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      return v57;
    }

    v16 = v47[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v50 = (v16 - 1) & v16;
      v51 = a3;
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

uint64_t sub_100368AB0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = *(type metadata accessor for NANAttribute(0) - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v36 = &v34 - v10;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v35 = v9;
  sub_10005DC58(&unk_1005952B0, &unk_1004AF1B0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 64;
  v16 = v35;
  v34 = a4;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[7];
    v22 = *(a4[6] + v20);
    v23 = v36;
    v38 = *(v37 + 72);
    sub_10036D334(v21 + v38 * v20, v36, type metadata accessor for NANAttribute);
    sub_10036D640(v23, v16, type metadata accessor for NANAttribute);
    v24 = *(v12 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(byte_1004B18B8[v22]);
    result = Hasher._finalize()();
    v25 = -1 << *(v12 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      v16 = v35;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v15 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    v16 = v35;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v12 + 48) + v28) = v22;
    result = sub_10036D640(v16, *(v12 + 56) + v28 * v38, type metadata accessor for NANAttribute);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = a1[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v13 = (v19 - 1) & v19;
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

uint64_t sub_100368DE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10005DC58(&qword_100595318, &qword_1004AF220);
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
    v34 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 8 * v16);
    v19 = *v18;
    v20 = *(v18 + 4);
    v21 = *(v18 + 5);
    v35 = *(v17 + v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();
    Channel.hash(into:)(&v36, v19 | (v20 << 32) | (v21 << 40));
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
    v31 = *(v9 + 48) + 8 * v26;
    *v31 = v19;
    *(v31 + 4) = v20;
    *(v31 + 5) = v21;
    *(*(v9 + 56) + v26) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    v10 = v34;
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
      v34 = (v15 - 1) & v15;
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

uint64_t sub_100369030(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10005DC58(&unk_100597410, &unk_1004B4D50);
  result = static _DictionaryStorage.allocate(capacity:)();
  v8 = a2;
  v40 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v36 = a2;
  v37 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v38 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(v4 + 56);
    v17 = (*(v4 + 48) + 6 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = v17[4];
    v23 = v17[5];
    v39 = *(v16 + 8 * v15);
    v24 = *(v40 + 40);
    Hasher.init(_seed:)();
    NANClusterChangeEvent.hash(into:)(&v41, v18 | (v19 << 8) | (v20 << 16) | (v21 << 24) | (v22 << 32) | (v23 << 40));
    result = Hasher._finalize()();
    v25 = -1 << *(v40 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
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
        v32 = *(v11 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v39;
    v33 = (*(v40 + 48) + 6 * v28);
    *v33 = v18;
    v33[1] = v19;
    v33[2] = v20;
    v33[3] = v21;
    v33[4] = v22;
    v33[5] = v23;
    *(*(v40 + 56) + 8 * v28) = v39;
    ++*(v40 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v37;
    v9 = v38;
    v8 = v36;
    if (!v5)
    {
      return v40;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      return v40;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v38 = (v14 - 1) & v14;
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

void *sub_1003692DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43 = a1;
  v45 = *(type metadata accessor for NANPeer(0) - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v44 = &v41 - v9;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v8;
  sub_10005DC58(&qword_100596300, &unk_1004B0780);
  result = static _DictionaryStorage.allocate(capacity:)();
  v52 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v43;
  }

  v12 = 0;
  v13 = (v52 + 8);
  v41 = a2;
  v42 = a4;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v46 = (v11 - 1) & v11;
    v47 = a3;
LABEL_16:
    v17 = v14 | (v12 << 6);
    v18 = a4[7];
    v19 = (a4[6] + 6 * v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v24 = v19[4];
    v25 = v19[5];
    v26 = v44;
    v50 = *(v45 + 72);
    sub_10036D334(v18 + v50 * v17, v44, type metadata accessor for NANPeer);
    sub_10036D640(v26, v51, type metadata accessor for NANPeer);
    v27 = v52;
    v28 = v52[5];
    Hasher.init(_seed:)();
    v48 = v20;
    v49 = v23;
    NANClusterChangeEvent.hash(into:)(&v53, v20 | (v21 << 8) | (v22 << 16) | (v23 << 24) | (v24 << 32) | (v25 << 40));
    v29 = Hasher._finalize()();
    v30 = -1 << *(v27 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*&v13[8 * (v31 >> 6)]) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      result = v51;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *&v13[8 * v32];
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*&v13[8 * (v31 >> 6)])) | v31 & 0x7FFFFFFFFFFFFFC0;
    result = v51;
LABEL_26:
    *&v13[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
    v38 = v52;
    v39 = (v52[6] + 6 * v33);
    v40 = v49;
    *v39 = v48;
    v39[1] = v21;
    v39[2] = v22;
    v39[3] = v40;
    v39[4] = v24;
    v39[5] = v25;
    result = sub_10036D640(result, v38[7] + v33 * v50, type metadata accessor for NANPeer);
    ++v38[2];
    a3 = v47 - 1;
    if (__OFSUB__(v47, 1))
    {
      goto LABEL_32;
    }

    a2 = v41;
    a4 = v42;
    v11 = v46;
    if (v47 == 1)
    {
      return v52;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      return v52;
    }

    v16 = v43[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v46 = (v16 - 1) & v16;
      v47 = a3;
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

uint64_t sub_100369678(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10005DC58(&unk_1005974F0, &qword_1004B0838);
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
  v34 = v4;
  v35 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 24 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 17);
    v37 = *(v17 + 8 * v16);
    v23 = *(v9 + 40);
    Hasher.init(_seed:)();
    String.lowercased()();

    String.hash(into:)();

    String.hash(into:)();

    Hasher._combine(_:)(v22);
    result = Hasher._finalize()();
    v9 = v35;
    v24 = -1 << *(v35 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v35 + 48) + 24 * v27;
    *v32 = v19;
    *(v32 + 8) = v20;
    *(v32 + 16) = v21;
    *(v32 + 17) = v22;
    *(*(v35 + 56) + 8 * v27) = v37;
    ++*(v35 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v10 = v36;
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
      v36 = (v15 - 1) & v15;
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

Swift::Int sub_100369940(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100315F54(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = byte_1004B18B8[v11];
        v13 = v8;
        v14 = v10;
        do
        {
          v15 = *v14;
          if (v12 >= byte_1004B18B8[v15])
          {
            break;
          }

          v14[1] = v15;
          *v14-- = v11;
        }

        while (!__CFADD__(v13++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_100369A90(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100369A90(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_89:
    v6 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_10016AD7C(v8);
      v8 = result;
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_10036A00C((*a3 + *v78), (*a3 + *v80), *a3 + v81, v6);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_113;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_114;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_115;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = byte_1004B18B8[*(*a3 + v7)];
      v11 = *(*a3 + v7);
      v12 = byte_1004B18B8[*(*a3 + v9)];
      v13 = v9 + 2;
      if (v5 <= v9 + 2)
      {
        v7 = v9 + 2;
      }

      else
      {
        v7 = v5;
      }

      while (v7 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = (v10 < v12) ^ (byte_1004B18B8[v14] >= byte_1004B18B8[v11]);
        ++v13;
        v11 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v13 - 1;
          break;
        }
      }

      if (v10 < v12)
      {
        if (v7 < v9)
        {
          goto LABEL_118;
        }

        if (v9 < v7)
        {
          v16 = v7 - 1;
          v17 = v9;
          do
          {
            if (v17 != v16)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v18 = *(v20 + v17);
              *(v20 + v17) = *(v20 + v16);
              *(v20 + v16) = v18;
            }
          }

          while (++v17 < v16--);
          v5 = a3[1];
        }
      }
    }

    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_117;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_119;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v7 < v9)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10011707C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_10011707C((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v84;
    if (!*v84)
    {
      goto LABEL_126;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_58:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
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

        if (!*a3)
        {
          goto LABEL_123;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_10036A00C((*a3 + v73), (*a3 + *&v8[16 * v35 + 32]), *a3 + v74, v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10016AD7C(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_10016ACF0(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_89;
    }
  }

  v21 = *a3;
  v22 = (*a3 + v7);
  v23 = v9 - v7;
LABEL_31:
  v24 = *(v21 + v7);
  v25 = byte_1004B18B8[v24];
  v26 = v23;
  v27 = v22;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= byte_1004B18B8[v28])
    {
LABEL_30:
      ++v7;
      ++v22;
      --v23;
      if (v7 != v5)
      {
        goto LABEL_31;
      }

      v7 = v5;
      goto LABEL_38;
    }

    if (!v21)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v24;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_30;
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

uint64_t sub_10036A00C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (byte_1004B18B8[v18] < byte_1004B18B8[v19])
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        if (byte_1004B18B8[*v6] >= byte_1004B18B8[v11])
        {
          v13 = v4 + 1;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          LOBYTE(v11) = *v6;
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_10036A224(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = 0;
    if (v1 && -v1 % v1)
    {
      v2 = (-v1 % v1);
      do
      {
        swift_stdlib_random();
      }

      while (v2);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10036A2C0@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_10005DC58(&unk_100597360, &unk_1004B1658) + 48);
  v5 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
  v6 = *a1;
  result = sub_10036D334(&a1[v4], &a2[*(v5 + 48)], type metadata accessor for NANAttribute);
  *a2 = v6;
  return result;
}

void sub_10036A344(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10036CDE8();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10036CDE8();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10036A544@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_10036A604@<X0>(uint64_t a1@<X8>)
{
  v42 = sub_10005DC58(&unk_100597360, &unk_1004B1658);
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v40 = &v39 - v5;
  v41 = *(type metadata accessor for NANAttribute(0) - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin();
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_10005DC58(&qword_100597378, &unk_1004B1670) - 8) + 64);
  __chkstk_darwin();
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin();
  v14 = &v39 - v13;
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v43 = v18;
  v44 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = *(*(v16 + 48) + v25);
    sub_10036D334(*(v16 + 56) + *(v41 + 72) * v25, v8, type metadata accessor for NANAttribute);
    v27 = v42;
    v28 = *(v42 + 48);
    *v14 = v26;
    v29 = v8;
    v30 = v27;
    sub_10036D640(v29, &v14[v28], type metadata accessor for NANAttribute);
    (*(v3 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v24;
    v31 = v1[5];
    v32 = v1[6];
    sub_10001CEA8(v14, v11, &qword_100597378, &unk_1004B1670);
    v33 = 1;
    v34 = (*(v3 + 48))(v11, 1, v30);
    v35 = v44;
    if (v34 != 1)
    {
      v36 = v11;
      v37 = v40;
      sub_10001CEA8(v36, v40, &unk_100597360, &unk_1004B1658);
      v31(v37);
      sub_100016290(v37, &unk_100597360, &unk_1004B1658);
      v33 = 0;
    }

    v38 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    return (*(*(v38 - 8) + 56))(v35, v33, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v42;
        (*(v3 + 56))(&v39 - v13, 1, 1, v42);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10036A9C4(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 32;
  while (1)
  {
    if (v2 == v1)
    {
      return _swiftEmptyArrayStorage;
    }

    if (v1 >= v2)
    {
      break;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v5 = *(v3 + v1++);
    if (v5 >= 6)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1003678A8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        result = sub_1003678A8((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      *(&_swiftEmptyArrayStorage[4] + v7) = v5;
      v1 = v4;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10036AAC0(uint64_t *a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  sub_1003741C0();
}

uint64_t sub_10036AAFC()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_10033C88C(v0[4], v0[5]);
}

BOOL sub_10036AC48(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *a1;
  return sub_1003700B4(v2, v3) && sub_1003700FC(v2, v3) != 0;
}

uint64_t sub_10036AD28(uint64_t a1)
{
  *(v1 + 16) = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v1 + qword_100596DC0) = 0;
  *(v1 + qword_100596DC8) = a1;
  swift_unownedRetain();
  return v1;
}

uint64_t sub_10036AD98(uint64_t a1)
{
  v3 = qword_100596E50;
  v4 = type metadata accessor for DispatchTime();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + qword_100596E58) = 256;
  *(v1 + qword_100596E60) = a1;
  swift_unownedRetain();
  return v1;
}

void *sub_10036AE30(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin();
  v8 = v17 - v7 + 16;
  Logger.init(subsystem:category:)();
  *(v2 + qword_100596EF8) = 0;
  *(v2 + qword_100596F00) = &_swiftEmptyDictionarySingleton;
  *(v2 + qword_100596F08) = 0;
  *(v2 + qword_100596F10) = a1;
  swift_unownedRetainStrong();
  v9 = *(a1 + *(*a1 + 800));
  swift_unownedRetainStrong();
  swift_unownedRetain();

  sub_1003EB210(v8);

  v10 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = *(v4 + 80);
  v12[3] = *(v4 + 88);
  v12[4] = v11;
  v13 = qword_100596EF8;
  swift_beginAccess();
  v14 = v10;
  ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v14, (v2 + v13), sub_10036D240, v12, v5, v17);
  swift_endAccess();

  sub_100016290(v8, &qword_100594D50, &unk_1004AEBF0);

  return v2;
}

void *sub_10036B088(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = type metadata accessor for NANDiscoveryEngine.PeerChannelLearner();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_10036AE30(a1);
}

uint64_t *sub_10036B0CC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(v5 + 8);
  v7 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  __chkstk_darwin();
  v62 = &v61 - v10;
  v61 = type metadata accessor for UUID();
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v15 = qword_100596C80;
  v16 = _s8InstanceCMa();
  WitnessTable = swift_getWitnessTable();
  v67 = v7;
  v68 = v16;
  v69 = v5;
  v70 = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  *(v2 + v15) = Dictionary.init()();
  v18 = qword_100596C88;
  v19 = _s8InstanceCMa_0();
  v20 = swift_getWitnessTable();
  v67 = v7;
  v68 = v19;
  v69 = v5;
  v70 = v20;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  *(v2 + v18) = Dictionary.init()();
  v21 = qword_100596C90;
  v22 = _s17InitiatorInstanceCMa();
  v23 = swift_getWitnessTable();
  v67 = v7;
  v68 = v22;
  v69 = v5;
  v70 = v23;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  *(v2 + v21) = Dictionary.init()();
  v24 = qword_100596C98;
  v25 = _s17ResponderInstanceCMa();
  v26 = swift_getWitnessTable();
  v67 = v7;
  v68 = v25;
  v69 = v5;
  v70 = v26;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  *(v2 + v24) = Dictionary.init()();
  v27 = qword_10059B9C8;
  _s17InitiatorInstanceCMa_0();
  _s17ResponderInstanceCMa_0();
  type metadata accessor for Either();
  sub_1002CAFC4();
  *(v2 + v27) = Dictionary.init()();
  v28 = qword_100596CA0;
  type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink();
  *(v2 + v28) = Dictionary.init()();
  v29 = qword_100596CA8;
  *(v2 + v29) = *NANDiscoveryWindowIndex.first.unsafeMutableAddressor();
  *(v2 + qword_100596CB0) = 0;
  *(v2 + qword_100596CB8) = 0;
  *(v2 + qword_100596CC0) = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  variable initialization expression of AWDLPeer.lastUpdated();
  variable initialization expression of AWDLPeer.lastUpdated();
  v30 = (v2 + qword_100596CE0);
  v31 = sub_10004D6CC(&off_100572888);
  *v30 = &_swiftEmptySetSingleton;
  v30[1] = v31;
  v32 = (v2 + qword_100596CE8);
  v33 = sub_10004D6CC(&off_1005728B0);
  *v32 = &_swiftEmptySetSingleton;
  v32[1] = v33;
  v34 = *(*v2 + 256);
  v35 = sub_10005DC58(&qword_100596D90, &qword_1004B11E8);
  (*(*(v35 - 8) + 56))(v2 + v34, 1, 1, v35);
  v36 = *(*v2 + 264);
  v37 = type metadata accessor for PriorityRadioConstraint();
  (*(*(v37 - 8) + 56))(v2 + v36, 1, 1, v37);
  v38 = v2 + *(*v2 + 272);
  UUID.init()();
  *(v38 + *(sub_10005DC58(&qword_1005973B0, &qword_1004B1690) + 36)) = 6;
  (*(v11 + 32))(v38, v14, v61);
  *(v2 + *(*v2 + 312)) = 0;
  *(v2 + *(*v2 + 304)) = a1;
  v39 = type metadata accessor for NANDiscoveryEngine.StateMachine();
  swift_unownedRetain();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();

  v43 = sub_10036AD28(v42);

  *(v2 + qword_100596CF0) = v43;
  v44 = type metadata accessor for NANDiscoveryEngine.BeaconScheduler();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  *(v2 + qword_100596CF8) = sub_10036AD98(a1);
  type metadata accessor for NANDiscoveryEngine.PeerChannelLearner();

  v48 = sub_10036B088(v47);

  *(v2 + qword_100596D00) = v48;
  type metadata accessor for LowLatencyInternetRequesterPolicy();

  v50 = sub_100408C58(v49);

  *(v2 + *(*v2 + 280)) = v50;
  type metadata accessor for LowLatencyInternetProviderPolicy();

  v52 = sub_100408E0C(v51);

  *(v2 + *(*v2 + 288)) = v52;
  type metadata accessor for NANFollowUpTransmitter();

  v54 = sub_100373D68(v53);

  *(v2 + *(*v2 + 296)) = v54;
  v55 = *(*a1 + 112);
  v56 = AssociatedConformanceWitness;
  v57 = *(AssociatedConformanceWitness + 104);
  v58 = swift_checkMetadataState();
  v59 = v62;
  v57(v58, v56);
  (*(v65 + 32))(v2 + *(*v2 + 248), v59, v66);
  sub_10033D51C();
  return v2;
}

uint64_t *sub_10036B91C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_10036B0CC(a1);
}

uint64_t sub_10036B9B4(uint64_t a1)
{
  sub_10027B614();
  dispatch thunk of SetAlgebra.init()();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    v4 = sub_10036C4CC();
    for (i = 0; i != v2; ++i)
    {
      v10 = *(v3 + 8 * i);
      v6 = v10;
      v11 = v12;

      ExtendableOptionSet.formIntersection(_:)(&v10, &type metadata for NANAttribute.DeviceCapabilityExtension.Kind, v4);
      v7 = *(v11 + 16);
      if (v7 == *(v6 + 16))
      {
        if (!v7 || v11 == v6)
        {
LABEL_11:

          goto LABEL_4;
        }

        v8 = 32;
        while (*(v11 + v8) == *(v6 + v8))
        {
          ++v8;
          if (!--v7)
          {
            goto LABEL_11;
          }
        }
      }

      v11 = v6;
      ExtendableOptionSet.formUnion(_:)(&v11, &type metadata for NANAttribute.DeviceCapabilityExtension, v4);
LABEL_4:
    }
  }

  return v12;
}

uint64_t sub_10036BAF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *(type metadata accessor for NANAttribute(0) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_10005DC58(&qword_100597370, &qword_1004B1668) - 8) + 64);
  __chkstk_darwin();
  v16 = v39 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v39[1] = a1;
  v39[2] = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v39[3] = v18;
  v39[4] = 0;
  v39[5] = v21 & v19;
  v39[6] = a2;
  v39[7] = a3;

  v39[0] = a3;

  while (1)
  {
    sub_10036A604(v16);
    v22 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_1000E290C();
    }

    v23 = *v16;
    sub_10036D640(&v16[*(v22 + 48)], v13, type metadata accessor for NANAttribute);
    v24 = *a5;
    v26 = sub_1003E08F4(v23);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v34 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_10046BF70();
        v34 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_10036C468(v13, v34[7] + *(v10 + 72) * v26);
      a4 = 1;
    }

    else
    {
      sub_1003118E4(v29, a4 & 1);
      v31 = *a5;
      v32 = sub_1003E08F4(v23);
      if ((v30 & 1) != (v33 & 1))
      {
        goto LABEL_21;
      }

      v26 = v32;
      v34 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v34[(v26 >> 6) + 8] |= 1 << v26;
      *(v34[6] + v26) = v23;
      sub_10036D640(v13, v34[7] + *(v10 + 72) * v26, type metadata accessor for NANAttribute);
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_20;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10036BE24(unint64_t result, char a2, void *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    LOBYTE(i) = a2;
    v6 = result;
    v7 = *(result + 38);
    v8 = *(result + 36);
    v9 = *(result + 32);
    v10 = *a3;
    v41 = *(result + 37);
    v11 = (v41 << 40) | (v8 << 32);
    result = sub_1003E09BC(v11 | v9);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_26;
    }

    LOBYTE(v3) = v12;
    if (v10[3] < v16)
    {
      sub_100311C4C(v16, i & 1);
      v17 = *a3;
      result = sub_1003E09BC(v11 | v9);
      if ((v3 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((i & 1) == 0)
    {
      goto LABEL_28;
    }

    while (1)
    {
LABEL_7:
      v19 = *a3;
      if (v3)
      {
        v20 = v19[7];
        v21 = *(v20 + result);
        if (v21 <= v7)
        {
          LOBYTE(v21) = v7;
        }

        *(v20 + result) = v21;
        v3 = v4 - 1;
        if (v4 == 1)
        {
          return result;
        }
      }

      else
      {
        v19[(result >> 6) + 8] |= 1 << result;
        v22 = v19[6] + 8 * result;
        *v22 = v9;
        *(v22 + 4) = v8;
        *(v22 + 5) = v41;
        *(v19[7] + result) = v7;
        v23 = v19[2];
        v15 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v15)
        {
          goto LABEL_27;
        }

        v19[2] = v24;
        v3 = v4 - 1;
        if (v4 == 1)
        {
          return result;
        }
      }

      for (i = (v6 + 46); ; i += 8)
      {
        LODWORD(v8) = *i;
        v9 = *(i - 1);
        v27 = *(i - 2);
        v4 = *(i - 6);
        v28 = *a3;
        v7 = (v9 << 40) | (v27 << 32);
        result = sub_1003E09BC(v7 | v4);
        v30 = v28[2];
        v31 = (v29 & 1) == 0;
        v15 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v15)
        {
          break;
        }

        v6 = v29;
        if (v28[3] < v32)
        {
          sub_100311C4C(v32, 1);
          v33 = *a3;
          result = sub_1003E09BC(v7 | v4);
          if ((v6 & 1) != (v34 & 1))
          {
            goto LABEL_5;
          }
        }

        v35 = *a3;
        if (v6)
        {
          v25 = v35[7];
          v26 = *(v25 + result);
          if (v26 <= v8)
          {
            LOBYTE(v26) = v8;
          }

          *(v25 + result) = v26;
        }

        else
        {
          v35[(result >> 6) + 8] |= 1 << result;
          v36 = v35[6] + 8 * result;
          *v36 = v4;
          *(v36 + 4) = v27;
          *(v36 + 5) = v9;
          *(v35[7] + result) = v8;
          v37 = v35[2];
          v15 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v15)
          {
            goto LABEL_27;
          }

          v35[2] = v38;
        }

        if (!--v3)
        {
          return result;
        }
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v39 = v7;
      v40 = result;
      sub_10046C1A4();
      result = v40;
      v7 = v39;
    }
  }

  return result;
}

unint64_t sub_10036C0A8(unint64_t result, char a2, void *a3)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v36 = *(result + 38);
  v7 = *(result + 36);
  v8 = *(result + 32);
  v9 = *a3;
  v10 = *(result + 37);
  v11 = (v10 << 40) | (v7 << 32);
  result = sub_1003E09BC(v11 | v8);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    goto LABEL_21;
  }

  LOBYTE(v3) = v12;
  if (v9[3] >= v16)
  {
    goto LABEL_6;
  }

  sub_100311C4C(v16, i & 1);
  v17 = *a3;
  result = sub_1003E09BC(v11 | v8);
  if ((v3 & 1) != (v18 & 1))
  {
LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_6:
    if ((i & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  while (1)
  {
    v3 = v4 - 1;
    if (v4 == 1)
    {
      return result;
    }

    for (i = (v6 + 46); ; i += 8)
    {
      LODWORD(v8) = *i;
      v7 = *(i - 1);
      v23 = *(i - 2);
      v4 = *(i - 6);
      v24 = *a3;
      v10 = (v7 << 40) | (v23 << 32);
      result = sub_1003E09BC(v10 | v4);
      v26 = v24[2];
      v27 = (v25 & 1) == 0;
      v15 = __OFADD__(v26, v27);
      v28 = v26 + v27;
      if (v15)
      {
        break;
      }

      v6 = v25;
      if (v24[3] < v28)
      {
        sub_100311C4C(v28, 1);
        v29 = *a3;
        result = sub_1003E09BC(v10 | v4);
        if ((v6 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      if ((v6 & 1) == 0)
      {
        v31 = *a3;
        *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
        v32 = v31[6] + 8 * result;
        *v32 = v4;
        *(v32 + 4) = v23;
        *(v32 + 5) = v7;
        *(v31[7] + result) = v8;
        v33 = v31[2];
        v15 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v15)
        {
          goto LABEL_20;
        }

        v31[2] = v34;
      }

      if (!--v3)
      {
        return result;
      }
    }

LABEL_21:
    while (1)
    {
      __break(1u);
LABEL_22:
      v35 = result;
      sub_10046C1A4();
      result = v35;
      if (v3)
      {
        break;
      }

LABEL_8:
      v19 = *a3;
      *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
      v20 = v19[6] + 8 * result;
      *v20 = v8;
      *(v20 + 4) = v7;
      *(v20 + 5) = v10;
      *(v19[7] + result) = v36;
      v21 = v19[2];
      v15 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (!v15)
      {
        v19[2] = v22;
        goto LABEL_10;
      }

LABEL_20:
      __break(1u);
    }
  }
}

void sub_10036C320(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v10) = 0;
  v7 = [objc_allocWithZone(WiFiAwareDatapathConfiguration) initWithDiscoveryResult:a4 serviceType:DNSRecords.Identifier.serviceType.getter(a1 passphrase:a2 pmk:a3 & 0xFF01) pmkID:0 serviceSpecificInfo:0 internetSharingConfiguration:0 pairingMethod:0 pairingCachingEnabled:0 pairSetupServiceSpecificInfo:1 connectionMode:v10 pairingMetadata:{0, 0, 0}];
  LOBYTE(v11) = 1;
  v8 = sub_1003653DC(v7, a5, 0, 0, 0x100000000uLL, sub_10035E470);

  if (!v5)
  {
    v9 = *((swift_isaMask & *v8) + 0x68);
    swift_beginAccess();
    sub_1003336F4(v8 + v9, &v11);

    sub_100333750(&v11);
  }
}

uint64_t sub_10036C468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANAttribute(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10036C4CC()
{
  result = qword_100597388;
  if (!qword_100597388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100597388);
  }

  return result;
}

uint64_t sub_10036C520(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10033BD70(a1) & 1;
}

uint64_t sub_10036C540(_WORD *a1, void *a2)
{
  v3 = *a2 + qword_10059B890;
  swift_beginAccess();
  result = type metadata accessor for NANPublish.Configuration();
  *a1 |= *(v3 + *(result + 100));
  return result;
}

uint64_t sub_10036C5BC(void *a1)
{
  v1 = *a1 + qword_10059B890;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for NANPublish.Configuration() + 104));
}

unint64_t sub_10036C644()
{
  result = qword_1005973C0;
  if (!qword_1005973C0)
  {
    sub_10005DD04(&qword_1005973B0, &qword_1004B1690);
    sub_10036C6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005973C0);
  }

  return result;
}

unint64_t sub_10036C6C8()
{
  result = qword_1005973C8;
  if (!qword_1005973C8)
  {
    sub_10005DD04(&qword_100596DA8, &qword_1004B11F0);
    sub_10036C74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005973C8);
  }

  return result;
}

unint64_t sub_10036C74C()
{
  result = qword_1005973D0;
  if (!qword_1005973D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005973D0);
  }

  return result;
}

uint64_t sub_10036C834(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *a1;
  return (*(v3 + 72))(v2);
}

BOOL sub_10036C87C(uint64_t *a1)
{
  if (*(v1 + 48) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *a1;
  return sub_1003700B4(v2, v3);
}

uint64_t sub_10036C8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036C960(uint64_t result)
{
  if (result)
  {
    return swift_unownedRelease();
  }

  return result;
}

uint64_t sub_10036C9C4(void *a1)
{
  v1 = *a1 + qword_10059BAE8;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for NANSubscribe.Configuration() + 60));
}

uint64_t sub_10036CA28(void *a1)
{
  v1 = *a1 + qword_10059B890;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for NANPublish.Configuration() + 80));
}

unint64_t sub_10036CA8C()
{
  result = qword_100597430;
  if (!qword_100597430)
  {
    sub_10005DD04(&qword_100596D90, &qword_1004B11E8);
    sub_10036CB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100597430);
  }

  return result;
}

unint64_t sub_10036CB10()
{
  result = qword_100597438;
  if (!qword_100597438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100597438);
  }

  return result;
}

uint64_t sub_10036CB98(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = *a2;

  return sub_10033BA38(v8, a5);
}

uint64_t sub_10036CC58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((result & 0xFF0000) != 0xE0000)
  {
    return sub_1001AD708(a2, a3, a4, a5);
  }

  return result;
}

void sub_10036CC7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100364DCC(v5, v6, v0 + v4, v7);
}

void sub_10036CD28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_100355C5C(v6, v7, v0 + v5, v8, v1, v2, v3);
}

unint64_t sub_10036CDE8()
{
  result = qword_1005974C0;
  if (!qword_1005974C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005974C0);
  }

  return result;
}

uint64_t sub_10036CE34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1002CB380;

  return sub_10035D97C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10036CF48(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_10035D574(a1) & 1;
}

uint64_t sub_10036CF6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_10036CFC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10036D024(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10030BDD0;

  return sub_1003583D0(a1, v4, v5, v6, v7, v8, v9, v11);
}

BOOL sub_10036D110(void *a1)
{
  v1 = *a1 + qword_10059BAE8;
  swift_beginAccess();
  return (*(v1 + *(type metadata accessor for NANSubscribe.Configuration() + 80)) & 1) == 0;
}

BOOL sub_10036D17C(void *a1)
{
  v1 = *a1 + qword_10059B890;
  swift_beginAccess();
  return (*(v1 + *(type metadata accessor for NANPublish.Configuration() + 116)) & 1) == 0;
}

BOOL sub_10036D1E8(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10034BD9C(a1, a2, *(v2 + 32) | (*(v2 + 34) << 16));
}

uint64_t sub_10036D240()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100354458();
}

uint64_t sub_10036D24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10036D334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10036D3EC(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *a1;
  return (*(v3 + 104))(v2);
}

uint64_t sub_10036D434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10005DC58(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10036D49C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10036D508(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10036D56C()
{
  result = qword_100597568;
  if (!qword_100597568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100597568);
  }

  return result;
}

uint64_t sub_10036D5EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_unownedRetainStrong();
  *a2 = result;
  return result;
}

void *sub_10036D618@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + qword_10059BA28;
  v3 = *(v2 + 4);
  *a2 = *v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_10036D640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_10036D72C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_10036D7F0()
{
  result = type metadata accessor for DispatchTime();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for DispatchTimeInterval();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10036D924()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  v2 = qword_100597620;
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = qword_10059BA00;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = qword_100597628;
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + qword_100597630, v7);
  return v0;
}

uint64_t sub_10036DA3C()
{
  sub_10036D924();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10036DAAC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10036DB68(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v11 - v7;
  (*(v3 + 64))(a1, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 56))(&v12, AssociatedTypeWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v12 | (BYTE2(v12) << 16) | (*(&v12 + 3) << 24);
}

BOOL sub_10036DCD0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13[-1] - v7;
  (*(v3 + 64))(a1, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v10 = v14;
  if (v14 != 1)
  {
    sub_100016290(v13, &qword_1005914A0, &qword_100499040);
  }

  return v10 != 1;
}

uint64_t sub_10036DE50(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a3;
  v52 = a4;
  v50 = a2;
  LODWORD(v49) = a1;
  v13 = *(*v8 + 88);
  v47 = *(*v8 + 80);
  v53 = v13;
  v14 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  v44 = type metadata accessor for Optional();
  v43 = *(v44 - 8);
  v15 = *(v43 + 64);
  __chkstk_darwin();
  v54 = &v42 - v16;
  v17 = *(*(type metadata accessor for DispatchTime() - 8) + 64);
  __chkstk_darwin();
  v46 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v42 - v22;
  v56 = v14;
  v59 = *(v14 - 8);
  v24 = *(v59 + 64);
  __chkstk_darwin();
  v61 = a5;
  v62 = &v42 - v25;
  v26 = a5 << 8;
  v60 = a6;
  v55 = a7;
  v57 = a7 | ((a6 | (a5 << 8)) << 8);
  sub_1003738C8(a8, v21);
  v27 = type metadata accessor for NANIdentityKey(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v29(v21, 1, v27);
  v48 = v8;
  v45 = v23;
  if (v30 == 1)
  {
    (*(v28 + 56))(v23, 1, 1, v27);
    if (v29(v21, 1, v27) != 1)
    {
      sub_100016290(v21, &unk_100595C50, &unk_1004AFD20);
    }
  }

  else
  {
    sub_100373938(v21, v23, type metadata accessor for NANIdentityKey);
    (*(v28 + 56))(v23, 0, 1, v27);
  }

  v58 = HIWORD(v26);
  type metadata accessor for P2PTimer();
  v31 = v46;
  variable initialization expression of AWDLPeer.lastUpdated();
  v32 = v52;

  v34 = v50;
  v33 = v51;
  sub_10000AB0C(v50, v51);
  v35 = v62;
  sub_100370764(v49, v34, v33, v32, v45, 0, v31, v62);
  v36 = v59;
  v37 = v54;
  v38 = v56;
  (*(v59 + 16))(v54, v35, v56);
  (*(v36 + 56))(v37, 0, 1, v38);
  v39 = v55;
  v63 = v55;
  v64 = v60;
  v65 = v61;
  v49 = v26 >> 16;
  v50 = v26 >> 24;
  v66 = BYTE2(v26);
  v67 = BYTE3(v26);
  v51 = HIDWORD(v26);
  v52 = v26 >> 40;
  v68 = BYTE4(v26);
  v69 = BYTE5(v26);
  v70 = v58;
  swift_beginAccess();
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  swift_getWitnessTable();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v40 = sub_100371384(v57);
  if (v40 == 2)
  {
    v63 = v39;
    v64 = v60;
    v65 = v61;
    v66 = v49;
    v67 = v50;
    v68 = v51;
    v69 = v52;
    v70 = v58;
    swift_beginAccess();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();
    (*(v43 + 8))(v37, v44);
    return (*(v36 + 8))(v62, v38);
  }

  else
  {
    if (v40)
    {
      sub_1003718E8(v57);
    }

    return (*(v59 + 8))(v62, v38);
  }
}

uint64_t sub_10036E438(void (*a1)(uint64_t), char *a2, uint64_t a3, uint64_t a4)
{
  v99 = a2;
  v100 = a1;
  v8 = type metadata accessor for Logger();
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = *(v96 + 64);
  __chkstk_darwin();
  v104 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for NANPublish.Configuration();
  v11 = *(*(v90 - 8) + 64);
  __chkstk_darwin();
  v86 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v82 - v13;
  v14 = *(a4 + 8);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 8);
  v92 = AssociatedTypeWitness;
  v18 = swift_getAssociatedTypeWitness();
  v93 = *(v18 - 8);
  v94 = v18;
  v19 = *(v93 + 64);
  __chkstk_darwin();
  v85 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v82 - v21;
  v95 = type metadata accessor for NANSubscribe.Configuration();
  v22 = *(*(v95 - 8) + 64);
  __chkstk_darwin();
  v87 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v82 - v24;
  v101 = v15;
  v26 = swift_getAssociatedTypeWitness();
  v103 = *(v26 - 8);
  v27 = *(v103 + 64);
  __chkstk_darwin();
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v82 - v30;
  v32 = *(v14 + 24);
  v98 = v4;
  v105 = a3;
  v102 = v14;
  v32(a3, v14);
  sub_10040CBA8();

  if (v5)
  {
    return result;
  }

  v82 = v32;
  v34 = v29;
  v84 = v26;
  v35 = v101;
  v36 = *(v101 + 64);
  v83 = v31;
  v37 = v98;
  v38 = v36(v105, v101);
  v100(v38);
  v100 = 0;
  v36(v105, v35);
  v54 = v84;
  if (!swift_dynamicCast())
  {
    v52 = v105;
    v65 = v37;
    v66 = v89;
    if (!swift_dynamicCast())
    {
      sub_10000B02C();
      v76 = swift_allocError();
      *v77 = xmmword_100481800;
      *(v77 + 16) = 1;
      v100 = v76;
      swift_willThrow();
      (*(v103 + 8))(v34, v54);
      goto LABEL_3;
    }

    v99 = v34;
    v67 = v86;
    sub_100373938(v66, v86, type metadata accessor for NANPublish.Configuration);
    v68 = v82(v52, v102);
    v69 = *(*v68 + 96);
    swift_beginAccess();
    v70 = v93;
    v71 = v68 + v69;
    v72 = v85;
    v73 = v94;
    (*(v93 + 16))(v85, v71, v94);

    v74 = swift_getAssociatedConformanceWitness();
    v75 = v100;
    (*(v74 + 232))(v67, v73, v74);
    v100 = v75;
    if (v75)
    {
      (*(v70 + 8))(v72, v73);
      sub_1003739EC(v67, type metadata accessor for NANPublish.Configuration);
      (*(v103 + 8))(v99, v84);
      goto LABEL_3;
    }

    (*(v70 + 8))(v72, v73);
    sub_1003739EC(v67, type metadata accessor for NANPublish.Configuration);
    v78 = v103;
    v79 = v83;
    v34 = v99;
LABEL_17:
    v80 = *(v78 + 8);
    v81 = v84;
    v80(v79, v84);
    return (v80)(v34, v81);
  }

  v55 = v25;
  v56 = v87;
  sub_100373938(v55, v87, type metadata accessor for NANSubscribe.Configuration);
  v52 = v105;
  v57 = v82(v105, v102);
  v58 = *(*v57 + 96);
  swift_beginAccess();
  v59 = v93;
  v60 = v57 + v58;
  v61 = v88;
  v62 = v94;
  (*(v93 + 16))(v88, v60, v94);

  v63 = swift_getAssociatedConformanceWitness();
  v64 = v100;
  (*(v63 + 224))(v56, v62, v63);
  v100 = v64;
  if (!v64)
  {
    (*(v59 + 8))(v61, v62);
    sub_1003739EC(v56, type metadata accessor for NANSubscribe.Configuration);
    v78 = v103;
    v79 = v83;
    goto LABEL_17;
  }

  v65 = v37;
  (*(v59 + 8))(v61, v62);
  sub_1003739EC(v56, type metadata accessor for NANSubscribe.Configuration);
  (*(v103 + 8))(v34, v84);
  v35 = v101;
LABEL_3:
  v107[3] = v65;
  v39 = v104;
  (*(*(v35 + 8) + 8))(v52);
  swift_unknownObjectRetain();
  swift_errorRetain();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = v35;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v106 = v65;
    v107[0] = v45;
    *v43 = 136315394;
    v46 = *(v42 + 16);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    swift_unknownObjectRelease();
    v50 = sub_100002320(v47, v49, v107);

    *(v43 + 4) = v50;
    *(v43 + 12) = 2112;
    swift_errorRetain();
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 14) = v51;
    *v44 = v51;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s failed to update its configuration because of error %@", v43, 0x16u);
    sub_100016290(v44, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v45);

    v52 = v105;

    (*(v96 + 8))(v104, v97);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v96 + 8))(v39, v97);
  }

  v53 = v83;
  (*(v102 + 48))(v83, v52);
  swift_willThrow();
  return (*(v103 + 8))(v53, v84);
}

uint64_t sub_10036EEBC(uint64_t a1)
{
  v156 = *v1;
  v3 = *(v156 + 80);
  v157 = v1;
  v151 = *(v156 + 88);
  v152 = v3;
  v4 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  v155 = type metadata accessor for Optional();
  v153.i64[0] = *(v155 - 8);
  v5 = *(v153.i64[0] + 64);
  __chkstk_darwin();
  v146 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = &v133 - v7;
  __chkstk_darwin();
  v148 = &v133 - v8;
  __chkstk_darwin();
  v10 = &v133 - v9;
  __chkstk_darwin();
  v12 = &v133 - v11;
  v154 = *(v4 - 8);
  v13 = *(v154 + 64);
  __chkstk_darwin();
  v149.i64[0] = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v133 - v15;
  v16 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v18 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v133 - v19;
  __chkstk_darwin();
  v22 = &v133 - v21;
  __chkstk_darwin();
  v24 = &v133 - v23;
  sub_1000133C4(a1, &v133 - v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_1000133C4(v24, v20);
    if (*v20 == 1)
    {
      swift_beginAccess();
      type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
      swift_getWitnessTable();
      type metadata accessor for Dictionary();
      Dictionary.removeAll(keepingCapacity:)(0);
      swift_endAccess();
      swift_beginAccess();
      Dictionary.removeAll(keepingCapacity:)(0);
      swift_endAccess();
      sub_100370840();
      return sub_1003739EC(v24, type metadata accessor for DriverEvent);
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
LABEL_23:
    sub_1000133C4(a1, v18);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v164[0] = swift_slowAlloc();
      *v54 = 136315394;
      v55 = _typeName(_:qualified:)();
      v57 = sub_100002320(v55, v56, v164);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      v59 = DriverEvent.shortDescription.getter(v58);
      v61 = v60;
      sub_1003739EC(v18, type metadata accessor for DriverEvent);
      v62 = sub_100002320(v59, v61, v164);

      *(v54 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v52, v53, "%s unable to handle event: %s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1003739EC(v18, type metadata accessor for DriverEvent);
    }

    return sub_1003739EC(v24, type metadata accessor for DriverEvent);
  }

  sub_1000133C4(v24, v22);
  memcpy(v163, v22, 0x16AuLL);
  memcpy(v164, v22, 0x16AuLL);
  v26 = sub_100185198(v164);
  v137 = v4;
  if (v26 > 11)
  {
    if (v26 == 12)
    {
LABEL_32:
      v90 = *NANBitmap.Channel.operatingClass.getter(v164);
      sub_100370F54();
      return sub_1003739EC(v24, type metadata accessor for DriverEvent);
    }

    if (v26 != 14)
    {
      goto LABEL_22;
    }

    v136 = v24;
    v27 = NANBitmap.Channel.operatingClass.getter(v164);
    v150 = *v27;
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    v31 = v27[4];
    v32 = v27[5];
    v33 = v27[7];
    v34 = v27[8];
    v143 = v27[6];
    v144 = v33;
    v35 = v33 << 48;
    v139 = v143 << 40;
    v140 = v32;
    v138 = v32 << 32;
    v145 = v31;
    v36 = v31 << 24;
    v135 = v30 << 16;
    v156 = v29;
    v37 = v29 << 8;
    v38 = Logger.logObject.getter();
    if (!v34)
    {
      v91 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v91))
      {
        v92 = swift_slowAlloc();
        v141.i64[0] = v30;
        v30 = v92;
        v93 = swift_slowAlloc();
        v142.i64[0] = v28;
        v28 = v93;
        v162[0] = v93;
        *v30 = 136315394;
        v94 = NANPeerServiceIdentifier.description.getter(v35 | v142.i64[0] | v37 | v139 | v138 | v36 | v135);
        v96 = sub_100002320(v94, v95, v162);

        *(v30 + 4) = v96;
        *(v30 + 12) = 256;
        v97 = v150;
        *(v30 + 14) = v150;
        _os_log_impl(&_mh_execute_header, v38, v91, "Follow up transmission to %s from %hhu completed", v30, 0xFu);
        sub_100002A00(v28);
        LOBYTE(v28) = v142.i8[0];

        LOBYTE(v30) = v141.i8[0];

        v24 = v136;
      }

      else
      {

        v24 = v136;
        v97 = v150;
      }

      LOBYTE(v158) = v97;
      BYTE1(v158) = v28;
      BYTE2(v158) = v156;
      BYTE3(v158) = v30;
      BYTE4(v158) = v145;
      BYTE5(v158) = v140;
      BYTE6(v158) = v143;
      HIBYTE(v158) = v144;
      swift_beginAccess();
      type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
      swift_getWitnessTable();
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();
      (*(v153.i64[0] + 8))(v12, v155);
      swift_endAccess();
      sub_100370840();
      sub_100372790();
      return sub_1003739EC(v24, type metadata accessor for DriverEvent);
    }

    v141.i64[0] = v30;
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v142.i64[0] = v28;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v162[0] = v134;
      *v41 = 136315650;
      v42 = NANPeerServiceIdentifier.description.getter(v35 | v28 | v37 | v139 | v138 | v36 | v135);
      v44 = sub_100002320(v42, v43, v162);

      *(v41 + 4) = v44;
      *(v41 + 12) = 256;
      v45 = v150;
      *(v41 + 14) = v150;
      *(v41 + 15) = 2080;
      v46 = 0xE700000000000000;
      v47 = 0x646570706F7264;
      if (v34 != 2)
      {
        v47 = 0xD000000000000010;
        v46 = 0x80000001004BA2F0;
      }

      if (v34 == 1)
      {
        v48 = 0x756F2064656D6974;
      }

      else
      {
        v48 = v47;
      }

      if (v34 == 1)
      {
        v49 = 0xE900000000000074;
      }

      else
      {
        v49 = v46;
      }

      v50 = v154;
      v51 = sub_100002320(v48, v49, v162);

      *(v41 + 17) = v51;
      _os_log_impl(&_mh_execute_header, v38, v39, "Follow up transmission to %s from %hhu failed with reason: %s", v41, 0x19u);
      swift_arrayDestroy();
    }

    else
    {

      v50 = v154;
      v45 = v150;
    }

    LOBYTE(v158) = v45;
    BYTE1(v158) = v142.i8[0];
    BYTE2(v158) = v156;
    v98 = v140;
    BYTE3(v158) = v141.i8[0];
    BYTE4(v158) = v145;
    BYTE5(v158) = v140;
    BYTE6(v158) = v143;
    HIBYTE(v158) = v144;
    swift_beginAccess();
    type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
    WitnessTable = swift_getWitnessTable();
    v100 = v137;
    v152 = WitnessTable;
    v101 = type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();
    sub_100370840();
    v102 = v100;
    v103 = *(v50 + 48);
    if (v103(v10, 1, v102) == 1)
    {
      (*(v153.i64[0] + 8))(v10, v155);
      sub_100372790();
      v24 = v136;
      return sub_1003739EC(v24, type metadata accessor for DriverEvent);
    }

    v151 = v103;
    v138 = v101;
    v134 = *(v50 + 32);
    v135 = v50 + 32;
    v134(v149.i64[0], v10, v102);
    v104 = v102;
    v105 = v156;
    v106 = sub_10037059C(v102);
    v107 = v144;
    if ((v106 & 1) == 0)
    {
      goto LABEL_43;
    }

    v108 = qword_1005976D0;
    v109 = v157;
    swift_beginAccess();
    v110 = *(v109 + v108);
    v50 = v154;
    LOBYTE(v158) = v150;
    BYTE1(v158) = v142.i8[0];
    BYTE2(v158) = v105;
    BYTE3(v158) = v141.i8[0];
    BYTE4(v158) = v145;
    BYTE5(v158) = v98;
    BYTE6(v158) = v143;
    HIBYTE(v158) = v107;
    v111 = v148;
    Dictionary.subscript.getter();
    swift_endAccess();
    LODWORD(v108) = v151(v111, 1, v104);
    (*(v153.i64[0] + 8))(v111, v155);
    if (v108 == 1)
    {
      sub_100372790();
      (*(v50 + 8))(v149.i64[0], v104);
    }

    else
    {
LABEL_43:
      v112 = v142.i8[0];
      v113 = v141.i8[0];
      v114 = v142.i64[0] & 0xFF00FFFFFF0000FFLL | (v105 << 8) | (v107 << 48) | (v141.u8[0] << 16);
      v115 = v98;
      v116 = v145;
      v117 = v150;
      v148 = v150 | ((v114 & 0xFFFFFF0000FFFFFFLL | (v145 << 24) | (v115 << 32) | v139) << 8);
      v118 = v157;
      v119 = sub_100371384(v148);
      if (v119 != 2)
      {
        LODWORD(v139) = v119;
        v120 = qword_1005976D0;
        swift_beginAccess();
        v121 = *(v118 + v120);
        LOBYTE(v158) = v117;
        BYTE1(v158) = v112;
        BYTE2(v158) = v156;
        BYTE3(v158) = v113;
        BYTE4(v158) = v116;
        BYTE5(v158) = v115;
        v122 = v144;
        BYTE6(v158) = v143;
        HIBYTE(v158) = v144;
        v123 = v146;
        v124 = v137;
        Dictionary.subscript.getter();
        swift_endAccess();
        v125 = v151;
        v126 = v122;
        if (v151(v123, 1, v124) == 1)
        {
          v127 = v147;
          (*(v154 + 16))(v147, v149.i64[0], v124);
          if (v125(v123, 1, v124) != 1)
          {
            (*(v153.i64[0] + 8))(v123, v155);
          }
        }

        else
        {
          v127 = v147;
          v134(v147, v123, v124);
        }

        (*(v154 + 56))(v127, 0, 1, v124);
        LOBYTE(v158) = v150;
        BYTE1(v158) = v142.i8[0];
        BYTE2(v158) = v156;
        BYTE3(v158) = v141.i8[0];
        BYTE4(v158) = v145;
        BYTE5(v158) = v140;
        BYTE6(v158) = v143;
        HIBYTE(v158) = v126;
        swift_beginAccess();
        Dictionary.subscript.setter();
        swift_endAccess();
        v24 = v136;
        if (v139)
        {
          sub_1003718E8(v148);
        }

        (*(v154 + 8))(v149.i64[0], v137);
        return sub_1003739EC(v24, type metadata accessor for DriverEvent);
      }

      (*(v50 + 8))(v149.i64[0], v137);
    }

    v24 = v136;
    return sub_1003739EC(v24, type metadata accessor for DriverEvent);
  }

  if (v26 != 8)
  {
    if (v26 == 11)
    {
      goto LABEL_32;
    }

LABEL_22:
    sub_1001854F8(v163);
    goto LABEL_23;
  }

  v136 = v24;
  v63 = NANBitmap.Channel.operatingClass.getter(v164);
  v64.i32[0] = *v63;
  v65 = vmovl_u8(v64);
  v153 = v65;
  LODWORD(v148) = *(v63 + 4);
  LODWORD(v147) = *(v63 + 5);
  LODWORD(v146) = *(v63 + 6);
  LODWORD(v145) = *(v63 + 7);
  v65.i32[0] = *(v63 + 8);
  v149 = vmovl_u8(*v65.i8);
  LODWORD(v144) = *(v63 + 12);
  LODWORD(v143) = *(v63 + 13);
  v66 = qword_1005976D0;
  v67 = v157;
  swift_beginAccess();
  v140 = (v154 + 8);
  v68 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  v155 = v66;
  v156 = 0;
  v69 = v153;
  *v69.i8 = vuzp1_s8(*v69.i8, *v69.i8);
  v142 = v69;
  v70 = v149;
  *v70.i8 = vuzp1_s8(*v70.i8, *v70.i8);
  v141 = v70;
  v139 = v68;
  while (1)
  {
    while (1)
    {
      v158 = *(v67 + v66);
      __chkstk_darwin();
      v74 = v151;
      *(&v133 - 4) = v152;
      *(&v133 - 3) = v74;
      LODWORD(v129) = v142.i32[0];
      BYTE4(v129) = v148;
      BYTE5(v129) = v147;
      BYTE6(v129) = v146;
      HIBYTE(v129) = v145;
      v130 = v141.i32[0];
      v131 = v144;
      v132 = v143;

      v75 = swift_getWitnessTable();
      v76 = type metadata accessor for Dictionary();
      swift_getWitnessTable();
      v77 = v4;
      v78 = v156;
      Collection.firstIndex(where:)();

      v79 = v161;
      if (v161 == 255)
      {
        v24 = v136;
        return sub_1003739EC(v24, type metadata accessor for DriverEvent);
      }

      v149.i64[0] = v76;
      v156 = v78;
      v81 = v159;
      v80 = v160;
      v82 = v157;
      v83 = *(v157 + v155);

      v129 = v75;
      v84 = v150;
      v154 = v81;
      v153.i64[0] = v80;
      Dictionary.subscript.getter();

      v67 = v82;
      v85 = *v140;
      (*v140)(v84, v77);
      v86 = v158;
      v87 = sub_100371384(v158);
      if (v87 != 2)
      {
        break;
      }

      v71 = v155;
      swift_beginAccess();
      v72 = v154;
      v138 = v85;
      v73 = v153.i64[0];
      Dictionary.remove(at:)();
      swift_endAccess();
      sub_100085170(v72, v73, v79);
      (v138)(v84, v77);
      v4 = v77;
      v66 = v71;
    }

    v88 = v154;
    v66 = v155;
    v89 = v153.i64[0];
    if ((v87 & 1) == 0)
    {
      break;
    }

    v67 = v157;
    sub_1003718E8(v86);
    sub_100085170(v88, v89, v79);
    v4 = v137;
  }

  sub_100085170(v154, v153.i64[0], v79);
  v24 = v136;
  return sub_1003739EC(v24, type metadata accessor for DriverEvent);
}

BOOL sub_1003700B4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_1003700FC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - v7;
  (*(v3 + 64))(a1, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

void sub_100370270(int a1, unint64_t a2)
{
  v3 = a2 >> 8;
  v4 = a2 >> 16;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v3);

  NANClusterChangeEvent.hash(into:)(a1, v4);
}

Swift::Int sub_1003702C8(unint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100370270(&v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_100370328(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1003702C8(*v1);
}

void sub_100370338(int a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_100370270(a1, *v2);
}

Swift::Int sub_100370348(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_100370270(&v7, *v2);
  return Hasher._finalize()();
}

BOOL sub_100370390(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_100370250(*a1, *a2);
}

uint64_t sub_1003703A4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v8 = v1 + *(a1 + 48);
  DispatchTime.distance(to:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1003704A0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v8 = v1 + *(a1 + 52);
  DispatchTime.distance(to:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10037059C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v18 - v8;
  if (*(v1 + *(a1 + 44)))
  {
    goto LABEL_4;
  }

  sub_1003704A0(a1);
  v10 = NANConstants.followUpTimeout.unsafeMutableAddressor();
  v11 = v4[2];
  v11(v7, v10, v3);
  v12 = static DispatchTimeInterval.< infix(_:_:)();
  v13 = v4[1];
  v13(v7, v3);
  v13(v9, v3);
  if (!v12)
  {
LABEL_4:
    v16 = 1;
  }

  else
  {
    sub_1003703A4(a1);
    v14 = NANConstants.keepAliveTimeout.unsafeMutableAddressor();
    v11(v7, v14, v3);
    v15 = static DispatchTimeInterval.< infix(_:_:)();
    v13(v7, v3);
    v13(v9, v3);
    v16 = !v15;
  }

  return v16 & 1;
}

uint64_t sub_100370764@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v12 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  sub_100373B14(a5, a8 + v12[10]);
  *(a8 + v12[11]) = a6;
  v13 = v12[12];
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v14 = v12[13];
  v15 = type metadata accessor for DispatchTime();
  v16 = *(*(v15 - 8) + 32);

  return v16(a8 + v14, a7, v15);
}

uint64_t sub_100370840()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (&v27 - v6);
  __chkstk_darwin();
  v9 = (&v27 - v8);
  v10 = qword_1005976D8;
  swift_beginAccess();
  v11 = *(v0 + v10);
  v12 = *(v1 + 80);
  v13 = *(v1 + 88);
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();

  swift_getWitnessTable();
  v14 = Dictionary.isEmpty.getter();

  v15 = qword_1005976E0;
  if (v14)
  {
    *(v0 + qword_1005976E0) = 0;
  }

  else
  {
    v16 = *(v0 + qword_1005976E0);
    if (!v16)
    {
      *v9 = 5;
      v17 = enum case for DispatchTimeInterval.seconds(_:);
      v29 = v5;
      v18 = *(v31 + 104);
      v31 = 0;
      v18(v9, enum case for DispatchTimeInterval.seconds(_:), v2);
      v28 = v18;
      v30 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      *v7 = 5;
      v18(v7, v17, v2);
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      v20[2] = v12;
      v20[3] = v13;
      v20[4] = v19;
      v21 = v29;
      *v29 = 100;
      v28(v21, enum case for DispatchTimeInterval.milliseconds(_:), v2);
      v22 = type metadata accessor for P2PTimer();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v16 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v9, v30, v7, v21, sub_1003739A0, v20);
      v25 = *(v0 + v15);
    }

    *(v0 + v15) = v16;
  }
}

uint64_t sub_100370B6C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100370BC4();
  }

  return result;
}

uint64_t sub_100370BC4()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DriverEvent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1005976D8;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v25 = *(v2 + 80);
  v10 = v25;
  v11 = *(v2 + 88);
  v26 = v11;
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();

  swift_getWitnessTable();
  v21 = Dictionary.filter(_:)();
  v27 = v21;
  v23 = v10;
  v24 = v11;
  v12 = type metadata accessor for Dictionary();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_10002B84C(sub_1003739CC, v22, v12, v3, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);

  v16 = *(v15 + 16);
  if (!v16)
  {
  }

  v17 = *(v1 + qword_10059BA10);
  swift_unownedRetainStrong();
  sub_10040D52C(0xD000000000000012, 0x80000001004C00E0);

  v18 = 0;
  while (v18 < *(v15 + 16))
  {
    sub_1000133C4(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v7);
    sub_10036EEBC(v7);
    ++v18;
    sub_1003739EC(v7, type metadata accessor for DriverEvent);
    if (v16 == v18)
    {
    }
  }

  __break(1u);

  result = sub_1003739EC(v7, type metadata accessor for DriverEvent);
  __break(1u);
  return result;
}

uint64_t (*sub_100370EBC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100370F20;
}

uint64_t sub_100370F20(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_100370840();
  }

  return result;
}

uint64_t sub_100370F54()
{
  v1 = *v0;
  v2 = qword_1005976D0;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();

  swift_getWitnessTable();
  v6 = Dictionary.filter(_:)();
  v7 = *(v0 + v2);
  *(v0 + v2) = v6;

  v8 = qword_1005976D8;
  swift_beginAccess();
  NANBitmap.Channel.operatingClass.getter(*(v0 + v8));
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  Sequence.filter(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Array.init<A>(_:)();
  Sequence.forEach(_:)();
}

BOOL sub_1003711AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v18 = a3;
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  v5 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = *(v7 + 16);
  v17 = a1;
  v11(&v17 - v9, a1, TupleTypeMetadata2);
  v12 = *(TupleTypeMetadata2 + 48);
  LOBYTE(a2) = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(v10 + 1) | (*(v10 + 1) << 16), (a2 >> 8) & 0xFFFFFFFFFFFFLL);
  v13 = *(*(v5 - 8) + 8);
  v13(&v10[v12], v5);
  if (a2)
  {
    return 1;
  }

  else
  {
    v11(v10, v17, TupleTypeMetadata2);
    v15 = *(TupleTypeMetadata2 + 48);
    v14 = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(v10 + 1) | (*(v10 + 1) << 16), v18 & 0xFFFFFFFFFFFFLL);
    v13(&v10[v15], v5);
  }

  return v14;
}

uint64_t sub_100371384(unint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = *(v1 + qword_10059BA10);
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v12 = sub_100349E9C();

  if ((v12 & 1) == 0)
  {
    return 2;
  }

  swift_unownedRetainStrong();
  v13 = sub_100019F94();

  if (v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return 2;
    }
  }

  swift_unownedRetainStrong();
  v15 = sub_100410360(a1 >> 16);

  if (!v15)
  {
    return 2;
  }

  swift_unownedRetainStrong();
  v16 = sub_10040E40C();

  if (v16)
  {
    return 0;
  }

  swift_unownedRetainStrong();
  sub_10040CAE8();

  v17 = sub_10033ACA4(a1 >> 16);

  if (v17)
  {
    return 0;
  }

  v43 = HIWORD(a1);
  v44 = HIBYTE(a1);
  v41 = HIDWORD(a1);
  v42 = a1 >> 40;
  v40 = a1 >> 24;
  v19 = qword_1005976D8;
  swift_beginAccess();
  v38 = a1 >> 8;
  v39 = v19;
  v20 = *(v2 + v19);
  v45 = a1;
  v46 = BYTE2(a1);
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  if (*(v20 + 16))
  {
    v21 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();

    WitnessTable = swift_getWitnessTable();
    v37 = v21;
    v35 = WitnessTable;
    v36 = sub_1002B7254(&v45, v21, WitnessTable);
    if (v23)
    {
      v24 = *(v20 + 36);

      v25 = *(v2 + v39);

      v31 = v35;
      v34 = v24;
      Dictionary.subscript.getter();

      LOBYTE(v25) = sub_10037059C(v6);
      v26 = *(v7 + 8);
      v26(v10, v6);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      v33 = v26;
      v27 = v39;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.remove(at:)();
      v33(v10, v6);
      swift_endAccess();
      sub_100370840();
      goto LABEL_17;
    }
  }

  v27 = v39;
LABEL_17:
  v28 = *(v2 + qword_1005976C8);
  v29 = *(v2 + v27);
  if (*(v2 + qword_1005976C8 + 8))
  {
    type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();

    swift_getWitnessTable();
  }

  else
  {
    __chkstk_darwin();
    *(&v32 - 4) = v4;
    *(&v32 - 3) = v5;
    LOBYTE(v31) = a1;
    BYTE1(v31) = v38;
    BYTE2(v31) = BYTE2(a1);
    BYTE3(v31) = v40;
    BYTE4(v31) = v41;
    BYTE5(v31) = v42;
    BYTE6(v31) = v43;
    HIBYTE(v31) = v44;
    type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();

    swift_getWitnessTable();
    Dictionary.filter(_:)();
  }

  v30 = Dictionary.count.getter();

  return v30 < v28;
}

uint64_t sub_1003718E8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v98 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v84 - v7;
  v8 = *(v4 + 88);
  v9 = *(v8 + 8);
  v10 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = *(AssociatedTypeWitness - 8);
  v106 = AssociatedTypeWitness;
  v12 = *(v105 + 64);
  __chkstk_darwin();
  v108 = &v84 - v13;
  v14 = type metadata accessor for DispatchTime();
  v103 = *(v14 - 8);
  v104 = v14;
  v15 = *(v103 + 64);
  __chkstk_darwin();
  v102 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v97 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v84 - v22;
  v24 = *(v17 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v27 = &v84 - v26;
  v107 = a1;
  v111[0] = a1;
  v28 = qword_1005976D0;
  swift_beginAccess();
  v99 = v10;
  v100 = v8;
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  swift_getWitnessTable();
  v29 = type metadata accessor for Dictionary();
  v109 = v2;
  v96 = v28;
  v30 = v24;
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  v31 = *(v24 + 48);
  v110 = v17;
  if (v31(v23, 1, v17) == 1)
  {
    return (*(v19 + 8))(v23, v18);
  }

  v33 = v110;
  (*(v24 + 32))(v27, v23, v110);
  if (sub_10037059C(v33))
  {
    return (*(v30 + 8))(v27, v110);
  }

  v94 = v29;
  type metadata accessor for P2PTimer();
  v34 = v102;
  variable initialization expression of AWDLPeer.lastUpdated();
  (*(v103 + 40))(&v27[*(v110 + 52)], v34, v104);
  type metadata accessor for BinaryEncoder();
  v35 = *(v27 + 1);
  v36 = *(v27 + 2);
  v120 = *v27;
  v121 = v35;
  v122 = v36;
  sub_10000AB0C(v35, v36);
  v37 = sub_10027837C();
  v38 = static BinaryEncoder.encode<A>(_:)(&v120, &type metadata for NANServiceInfo, v37);
  v40 = v39;
  sub_1001842D0(v120, v121, v122);
  if (v40 >> 60 == 15)
  {
    v41 = 0;
  }

  else
  {
    v41 = v38;
  }

  if (v40 >> 60 == 15)
  {
    v42 = 0xC000000000000000;
  }

  else
  {
    v42 = v40;
  }

  v43 = v107;
  v120 = *(v27 + 3);

  v44 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
  v45 = sub_1002304FC();
  v46 = static BinaryEncoder.encode<A>(_:)(&v120, v44, v45);
  v48 = v47;

  if (v48 >> 60 == 15)
  {
    v49 = 0;
  }

  else
  {
    v49 = v46;
  }

  if (v48 >> 60 == 15)
  {
    v50 = 0xC000000000000000;
  }

  else
  {
    v50 = v48;
  }

  v51 = v42 >> 62;
  v52 = v108;
  if ((v42 >> 62) > 1)
  {
    if (v51 == 2 && *(v41 + 16) != *(v41 + 24))
    {
      goto LABEL_30;
    }
  }

  else if (v51)
  {
    if (v41 != v41 >> 32)
    {
      goto LABEL_30;
    }
  }

  else if ((v42 & 0xFF000000000000) != 0)
  {
    goto LABEL_30;
  }

  v53 = v50 >> 62;
  if ((v50 >> 62) > 1)
  {
    if (v53 != 2 || *(v49 + 16) == *(v49 + 24))
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  if (!v53)
  {
    if ((v50 & 0xFF000000000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_30:
    v84 = v42 >> 62;
    v103 = v50;
    v104 = v49;
    v95 = v42;
    v92 = v41;
    v102 = (v43 >> 8);
    v54 = *(v109 + qword_10059BA10);
    swift_unownedRetainStrong();
    v55 = *(*v54 + 96);
    swift_beginAccess();
    (*(v105 + 16))(v52, v54 + v55, v106);

    v91 = HIWORD(v43);
    v90 = v43 >> 40;
    v88 = BYTE3(v43);
    v89 = HIDWORD(v43);
    v56 = *(v110 + 40);
    v93 = v27;
    v57 = v98;
    sub_1003738C8(&v27[v56], v98);
    v58 = type metadata accessor for NANIdentityKey(0);
    v59 = *(v58 - 8);
    v60 = *(v59 + 48);
    if (v60(v57, 1, v58) == 1)
    {
      v61 = v101;
      (*(v59 + 56))(v101, 1, 1, v58);
      if (v60(v57, 1, v58) != 1)
      {
        sub_100016290(v57, &unk_100595C50, &unk_1004AFD20);
      }
    }

    else
    {
      v61 = v101;
      sub_100373938(v57, v101, type metadata accessor for NANIdentityKey);
      (*(v59 + 56))(v61, 0, 1, v58);
    }

    v62 = HIBYTE(v43);
    v85 = BYTE6(v43);
    v86 = BYTE5(v43);
    v87 = BYTE4(v43);
    v98 = BYTE2(v43);
    v101 = BYTE1(v43);
    v63 = v106;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v65 = v92;
    v42 = v95;
    v66 = v108;
    (*(AssociatedConformanceWitness + 264))(v92, v95, v104, v103, v43, ((v43 & 0xFF00000000000000 | (BYTE6(v43) << 48) | (BYTE5(v43) << 40) | (BYTE3(v43) << 24) | (BYTE4(v43) << 32)) >> 16) & 0xFFFFFFFFFFFFFF00 | BYTE2(v43), v102, v61, v63, AssociatedConformanceWitness);
    v67 = v30;
    sub_100016290(v61, &unk_100595C50, &unk_1004AFD20);
    (*(v105 + 8))(v66, v63);
    sub_10000AB0C(v65, v42);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v68, v69))
    {
      sub_1000124C8(v65, v42);

      v73 = v65;
LABEL_49:
      v30 = v67;
      v81 = *(v67 + 16);
      v82 = v97;
      v27 = v93;
      v83 = v110;
      v81(v97, v93, v110);
      (*(v30 + 56))(v82, 0, 1, v83);
      v112 = v43;
      v113 = v102;
      v114 = BYTE2(v43);
      v115 = BYTE3(v43);
      v116 = v89;
      v117 = v90;
      v118 = v91;
      v119 = v62;
      swift_beginAccess();
      Dictionary.subscript.setter();
      swift_endAccess();
      sub_100370840();
      sub_1000124C8(v104, v103);
      v72 = v73;
      goto LABEL_50;
    }

    v70 = swift_slowAlloc();
    result = swift_slowAlloc();
    v43 = result;
    v111[0] = result;
    *v70 = 134218498;
    if (v84 > 1)
    {
      if (v84 != 2)
      {
        v71 = 0;
        goto LABEL_48;
      }

      v75 = *(v65 + 16);
      v74 = *(v65 + 24);
      v76 = __OFSUB__(v74, v75);
      v71 = v74 - v75;
      if (!v76)
      {
        goto LABEL_48;
      }

      __break(1u);
    }

    else if (!v84)
    {
      v71 = BYTE6(v95);
LABEL_48:
      *(v70 + 4) = v71;
      v42 = v95;
      sub_1000124C8(v65, v95);
      *(v70 + 12) = 2080;
      v77 = NANPeerServiceIdentifier.description.getter((v62 << 48) | (v85 << 40) | (v86 << 32) | (v87 << 24) | (v88 << 16) | (v98 << 8) | v101);
      v79 = sub_100002320(v77, v78, v111);

      *(v70 + 14) = v79;
      v73 = v65;
      *(v70 + 22) = 256;
      v80 = v107;
      *(v70 + 24) = v107;
      _os_log_impl(&_mh_execute_header, v68, v69, "Transmitted a follow up of size %ld to %s from %hhu", v70, 0x19u);
      sub_100002A00(v43);
      LODWORD(v43) = v80;

      goto LABEL_49;
    }

    LODWORD(v71) = HIDWORD(v65) - v65;
    if (__OFSUB__(HIDWORD(v65), v65))
    {
      __break(1u);
      return result;
    }

    v71 = v71;
    goto LABEL_48;
  }

  if (v49 != v49 >> 32)
  {
    goto LABEL_30;
  }

LABEL_39:
  sub_1000124C8(v49, v50);
  v72 = v41;
LABEL_50:
  sub_1000124C8(v72, v42);
  return (*(v30 + 8))(v27, v110);
}