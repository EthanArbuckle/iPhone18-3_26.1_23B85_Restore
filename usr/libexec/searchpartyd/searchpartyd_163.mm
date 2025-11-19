uint64_t sub_1010DB40C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v161 = a3;
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v150[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v150[-v11];
  __chkstk_darwin(v10);
  v14 = &v150[-v13];
  v15 = type metadata accessor for UUID();
  v159 = *(v15 - 8);
  v160 = v15;
  v16 = *(v159 + 64);
  v17 = __chkstk_darwin(v15);
  v157 = &v150[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v21 = &v150[-v20];
  __chkstk_darwin(v19);
  v158 = &v150[-v22];
  v164._countAndFlagsBits = a1;
  v164._object = a2;
  v162 = 9086;
  v163 = 0xE200000000000000;
  sub_1000DF96C();
  v23 = StringProtocol.components<A>(separatedBy:)();
  v24._countAndFlagsBits = 3095148;
  v24._object = 0xE300000000000000;
  if (String.hasPrefix(_:)(v24))
  {

    v25._countAndFlagsBits = 3095148;
    v25._object = 0xE300000000000000;
    v28 = String.deletingPrefix(_:)(v25);
    object = v28._object;
    countAndFlagsBits = v28._countAndFlagsBits;
    v29 = (v28._object >> 56) & 0xF;
    if ((v28._object & 0x2000000000000000) == 0)
    {
      v29 = v28._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
LABEL_14:
      v36 = v161;
      *v161 = countAndFlagsBits;
      v36[1] = object;
      v37 = type metadata accessor for StableIdentifier();
LABEL_15:
      swift_storeEnumTagMultiPayload();
      return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    }

    goto LABEL_32;
  }

  v30._countAndFlagsBits = 3095137;
  v30._object = 0xE300000000000000;
  if (!String.hasPrefix(_:)(v30) || v23[2] < 2uLL)
  {
    v31._countAndFlagsBits = 0x2F3A656C6568;
    v31._object = 0xE600000000000000;
    if (!String.hasPrefix(_:)(v31) || v23[2] < 5uLL)
    {
      v32._countAndFlagsBits = 792356205;
      v32._object = 0xE400000000000000;
      if (String.hasPrefix(_:)(v32))
      {

        v33._countAndFlagsBits = 792356205;
        v33._object = 0xE400000000000000;
        v34 = String.deletingPrefix(_:)(v33);
        object = v34._object;
        countAndFlagsBits = v34._countAndFlagsBits;
        v35 = (v34._object >> 56) & 0xF;
        if ((v34._object & 0x2000000000000000) == 0)
        {
          v35 = v34._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          goto LABEL_14;
        }
      }

      else if (v23[2] == 3)
      {
        v40 = v23[4];
        v39 = v23[5];
        v41 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v41 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v41)
        {
          v43 = v23[6];
          v42 = v23[7];
          v44 = HIBYTE(v42) & 0xF;
          if ((v42 & 0x2000000000000000) == 0)
          {
            v44 = v43 & 0xFFFFFFFFFFFFLL;
          }

          if (v44)
          {
            v46 = v23[8];
            v45 = v23[9];
            v47 = v23[5];

            v48 = HIBYTE(v45) & 0xF;
            if ((v45 & 0x2000000000000000) == 0)
            {
              v48 = v46 & 0xFFFFFFFFFFFFLL;
            }

            if (v48)
            {
              v36 = v161;
              *v161 = v40;
              v36[1] = v39;
              v36[2] = v43;
              v36[3] = v42;
              v36[4] = v46;
              v36[5] = v45;
              v37 = type metadata accessor for StableIdentifier();
              goto LABEL_15;
            }
          }
        }
      }

      goto LABEL_32;
    }

    v62 = v23[4];
    v63 = v23[5];

    v64._countAndFlagsBits = 0x2F3A656C6568;
    v64._object = 0xE600000000000000;
    String.deletingPrefix(_:)(v64);

    UUID.init(uuidString:)();

    v66 = v159;
    v65 = v160;
    if ((*(v159 + 48))(v9, 1, v160) == 1)
    {

      sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_33;
    }

    v72 = *(v66 + 32);
    v73 = v157;
    result = v72(v157, v9, v65);
    v74 = v23[2];
    if (v74 >= 2)
    {
      v76 = v23[6];
      v75 = v23[7];
      v77 = HIBYTE(v75) & 0xF;
      if ((v75 & 0x2000000000000000) == 0)
      {
        v77 = v76 & 0xFFFFFFFFFFFFLL;
      }

      if (!v77)
      {

        (*(v66 + 8))(v73, v65);
        goto LABEL_33;
      }

      if (v74 != 2)
      {
        v79 = v23[8];
        v78 = v23[9];
        v80 = HIBYTE(v78) & 0xF;
        if ((v78 & 0x2000000000000000) == 0)
        {
          v80 = v79 & 0xFFFFFFFFFFFFLL;
        }

        if (!v80)
        {

          (*(v66 + 8))(v73, v160);
          goto LABEL_33;
        }

        if (v74 >= 4)
        {
          v81 = v23[11];
          v82 = HIBYTE(v81) & 0xF;
          if ((v81 & 0x2000000000000000) == 0)
          {
            v82 = v23[10] & 0xFFFFFFFFFFFFLL;
          }

          if (!v82)
          {

            (*(v159 + 8))(v73, v160);
            goto LABEL_33;
          }

          v156 = v23[10];
          if (v74 != 4)
          {
            v83 = v23[13];
            v158 = v23[12];

            v84 = sub_1010DADF4(v158, v83);
            if ((v84 & 0x100) == 0)
            {
              v85 = v84;
              v86 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
              v87 = v161;
              v155 = (v161 + v86[12]);
              v154 = (v161 + v86[16]);
              v158 = (v161 + v86[20]);
              v159 = v86[24];
              v72(v161, v157, v160);
              v88 = v154;
              v89 = v155;
              *v155 = v76;
              v89[1] = v75;
              *v88 = v79;
              v88[1] = v78;
              v90 = v158;
              *v158 = v156;
              v90[1] = v81;
              *(v87 + v159) = v85;
              v91 = type metadata accessor for StableIdentifier();
              swift_storeEnumTagMultiPayload();
              return (*(*(v91 - 8) + 56))(v87, 0, 1, v91);
            }

            (*(v159 + 8))(v157, v160);

LABEL_32:

            goto LABEL_33;
          }

          goto LABEL_95;
        }

LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v49 = v23[6];
  v50 = v23[7];

  v51._countAndFlagsBits = 46786;
  v51._object = 0xA200000000000000;
  v52 = String.hasPrefix(_:)(v51);

  v53 = v23[2];
  if (!v52)
  {
    if (v53)
    {
      v68 = v23[4];
      v67 = v23[5];

      v69._countAndFlagsBits = 3095137;
      v69._object = 0xE300000000000000;
      String.deletingPrefix(_:)(v69);

      UUID.init(uuidString:)();

      v71 = v159;
      v70 = v160;
      if ((*(v159 + 48))(v12, 1, v160) == 1)
      {

        sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
        goto LABEL_33;
      }

      v99 = *(v71 + 32);
      v99(v21, v12, v70);
      v101 = v23[6];
      v100 = v23[7];

      v102 = HIBYTE(v100) & 0xF;
      if ((v100 & 0x2000000000000000) == 0)
      {
        v102 = v101 & 0xFFFFFFFFFFFFLL;
      }

      if (!v102)
      {

        (*(v71 + 8))(v21, v70);
        goto LABEL_33;
      }

      v103 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v104 = v70;
      v105 = v161;
      v106 = (v161 + v103[12]);
      v107 = (v161 + v103[16]);
      v108 = v103[20];
      v158 = v101;
      v109 = (v161 + v108);
      v159 = v103[24];
      v110 = (v161 + v103[28]);
      v99(v161, v21, v104);
      *v106 = 0;
      v106[1] = 0;
      *v107 = 0;
      v107[1] = 0;
      v111 = v159;
      *v109 = v158;
      v109[1] = v100;
      *(v105 + v111) = 256;
      v112 = type metadata accessor for StableIdentifier();
      *v110 = 0;
      v110[1] = 0;
      goto LABEL_60;
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (!v53)
  {
    __break(1u);
    goto LABEL_91;
  }

  v54 = v23[4];
  v55 = v23[5];

  v56._countAndFlagsBits = 3095137;
  v56._object = 0xE300000000000000;
  String.deletingPrefix(_:)(v56);

  UUID.init(uuidString:)();

  v57 = v159;
  v58 = v160;
  v59 = (*(v159 + 48))(v14, 1, v160);
  v60 = v158;
  if (v59 == 1)
  {

    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
LABEL_33:
    v61 = type metadata accessor for StableIdentifier();
    return (*(*(v61 - 8) + 56))(v161, 1, 1, v61);
  }

  v157 = *(v57 + 32);
  (v157)(v158, v14, v58);
  v92 = v23[6];
  v93 = v23[7];

  v94._countAndFlagsBits = 46786;
  v94._object = 0xA200000000000000;
  v95 = String.deletingPrefix(_:)(v94);

  v164 = v95;
  v162 = 42946;
  v163 = 0xA200000000000000;
  v96 = v57;
  v97 = StringProtocol.components<A>(separatedBy:)();

  v98 = v97[2];
  if (v98 < 4)
  {
    (*(v96 + 8))(v60, v58);
    goto LABEL_32;
  }

  v113 = v97[8];
  v114 = v97[9];
  v115 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v115 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v115)
  {

    (*(v159 + 8))(v60, v160);
    goto LABEL_33;
  }

  v116 = v97[4];
  v117 = v97[5];
  v118 = HIBYTE(v117) & 0xF;
  if ((v117 & 0x2000000000000000) == 0)
  {
    v118 = v116 & 0xFFFFFFFFFFFFLL;
  }

  if (v118)
  {
    v119 = v97[5];
  }

  else
  {
    v116 = 0;
    v117 = 0;
  }

  v121 = v97[6];
  v120 = v97[7];
  v122 = HIBYTE(v120) & 0xF;
  if ((v120 & 0x2000000000000000) == 0)
  {
    v122 = v121 & 0xFFFFFFFFFFFFLL;
  }

  if (v122)
  {
    v153 = v97[7];
    v154 = v121;
  }

  else
  {
    v153 = 0;
    v154 = 0;
  }

  v123 = v97[10];
  v124 = v97[11];

  result = sub_1010DADF4(v123, v124);
  v125 = result;
  v155 = v117;
  v156 = v113;
  v159 = v116;
  if (v98 == 4)
  {

    v126 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v105 = v161;
    v127 = (v161 + v126[12]);
    v128 = (v161 + v126[16]);
    v129 = v126[20];
    v152 = v114;
    v130 = v125;
    v131 = (v161 + v129);
    v132 = v161 + v126[24];
    v133 = (v161 + v126[28]);
    (v157)(v161, v60, v160);
    v135 = v154;
    v134 = v155;
    *v127 = v159;
    v127[1] = v134;
    v136 = v153;
    *v128 = v135;
    v128[1] = v136;
    v137 = v152;
    *v131 = v156;
    v131[1] = v137;
    *v132 = v130;
    v132[1] = HIBYTE(v130) & 1;
    v112 = type metadata accessor for StableIdentifier();
    *v133 = 0;
    v133[1] = 0;
LABEL_60:
    swift_storeEnumTagMultiPayload();
    return (*(*(v112 - 8) + 56))(v105, 0, 1, v112);
  }

  if (v97[2] >= 5uLL)
  {
    v139 = v97[12];
    v138 = v97[13];

    v140 = HIBYTE(v138) & 0xF;
    if ((v138 & 0x2000000000000000) == 0)
    {
      v140 = v139 & 0xFFFFFFFFFFFFLL;
    }

    v151 = v125;
    if (v140)
    {
      v152 = v139;
    }

    else
    {

      v152 = 0;
      v138 = 0;
    }

    v141 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v105 = v161;
    v142 = (v161 + v141[12]);
    v143 = (v161 + v141[16]);
    v144 = (v161 + v141[20]);
    v145 = v161 + v141[24];
    v146 = (v161 + v141[28]);
    (v157)(v161, v158, v160);
    v148 = v154;
    v147 = v155;
    *v142 = v159;
    v142[1] = v147;
    v149 = v153;
    *v143 = v148;
    v143[1] = v149;
    *v144 = v156;
    v144[1] = v114;
    BYTE1(v149) = BYTE1(v151);
    *v145 = v151;
    v145[1] = BYTE1(v149) & 1;
    *v146 = v152;
    v146[1] = v138;
    v112 = type metadata accessor for StableIdentifier();
    goto LABEL_60;
  }

LABEL_96:
  __break(1u);
  return result;
}

void sub_1010DC108(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016BB090, &unk_1013D6A90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v17[-1] - v7);
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    sub_10015049C(v17, v17[3]);
    v10 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v12 = v11;
    v13 = objc_autoreleasePoolPush();
    sub_1010DB40C(v10, v12, v8);
    objc_autoreleasePoolPop(v13);
    v14 = type metadata accessor for StableIdentifier();
    if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
    {
      sub_10000B3A8(v8, &qword_1016BB090, &unk_1013D6A90);
      sub_1010E0288();
      swift_allocError();
      *v15 = v10;
      v15[1] = v12;
      swift_willThrow();
    }

    else
    {

      sub_10012C0F0(v8, a2);
    }

    sub_100007BAC(v17);
  }

  sub_100007BAC(a1);
}

uint64_t sub_1010DC2EC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v51[-v8];
  v10 = type metadata accessor for StableIdentifier();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10012BF78(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v44 = *v13;
      v45 = v13[1];
      v46 = v13[2];
      v47 = v13[3];
      v48 = v13[4];
      v49 = v13[5];
      Hasher._combine(_:)(1uLL);
      String.hash(into:)();

      String.hash(into:)();

      String.hash(into:)();
    }

    v26 = *v13;
    v27 = v13[1];
    v28 = 0;
LABEL_11:
    Hasher._combine(_:)(v28);
    String.hash(into:)();
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v15 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v16 = (v13 + v15[12]);
      v17 = *v16;
      v18 = v16[1];
      v19 = (v13 + v15[16]);
      v20 = *v19;
      v21 = v19[1];
      v22 = (v13 + v15[20]);
      v23 = v22[1];
      v55 = *v22;
      v24 = *(v3 + 32);
      v56 = *(v13 + v15[24]);
      v24(v7, v13, v2);
      Hasher._combine(_:)(3uLL);
      sub_1010DF43C(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();

      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v56);
      return (*(v3 + 8))(v7, v2);
    }

    v42 = *v13;
    v43 = v13[1];
    v28 = 4;
    goto LABEL_11;
  }

  v29 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
  v30 = (v13 + v29[12]);
  v32 = *v30;
  v31 = v30[1];
  v33 = (v13 + v29[16]);
  v34 = *v33;
  v35 = v33[1];
  v36 = (v13 + v29[20]);
  v37 = v36[1];
  v55 = *v36;
  v38 = v13 + v29[24];
  v52 = *v38;
  v56 = v38[1];
  v39 = (v13 + v29[28]);
  v40 = *v39;
  v41 = v39[1];
  v53 = v34;
  v54 = v40;
  (*(v3 + 32))(v9, v13, v2);
  Hasher._combine(_:)(2uLL);
  sub_1010DF43C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  if (!v31)
  {
    Hasher._combine(_:)(0);
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    goto LABEL_16;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();

  if (!v35)
  {
    goto LABEL_15;
  }

LABEL_9:
  Hasher._combine(_:)(1u);
  String.hash(into:)();

LABEL_16:
  String.hash(into:)();

  if (v56)
  {
    v50 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v50 = v52;
  }

  Hasher._combine(_:)(v50);
  if (v41)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1010DC7F4(void *a1)
{
  v1 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_1010DA578();
  sub_10015049C(v3, v3[3]);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();

  return sub_100007BAC(v3);
}

Swift::Int sub_1010DC8A8()
{
  Hasher.init(_seed:)();
  sub_1010DC2EC();
  return Hasher._finalize()();
}

Swift::Int sub_1010DC8EC()
{
  Hasher.init(_seed:)();
  sub_1010DC2EC();
  return Hasher._finalize()();
}

uint64_t sub_1010DC940(uint64_t a1)
{
  v2 = sub_1010E03D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010DC97C(uint64_t a1)
{
  v2 = sub_1010E03D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1010DCA44()
{
  result = qword_1016C7900;
  if (!qword_1016C7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7900);
  }

  return result;
}

uint64_t sub_1010DCA98(uint64_t a1)
{
  v2 = sub_1010E0384();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010DCAD4(uint64_t a1)
{
  v2 = sub_1010E0384();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1010DCB9C()
{
  result = qword_1016C7908;
  if (!qword_1016C7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7908);
  }

  return result;
}

uint64_t sub_1010DCBF0(uint64_t a1)
{
  v2 = sub_1010E0330();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010DCC2C(uint64_t a1)
{
  v2 = sub_1010E0330();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1010DCCF4()
{
  result = qword_1016C7910;
  if (!qword_1016C7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7910);
  }

  return result;
}

uint64_t sub_1010DCD48(uint64_t a1)
{
  v2 = sub_1010E0234();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010DCD84(uint64_t a1)
{
  v2 = sub_1010E0234();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010DCE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1010DCECC(uint64_t a1)
{
  v2 = sub_1010E02DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010DCF08(uint64_t a1)
{
  v2 = sub_1010E02DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010DCF88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = sub_1000BC4D4(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    return sub_100007BAC(a1);
  }

  v13 = v20;
  v14 = v21;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v13 + 8))(v11, v8);
  result = sub_100007BAC(a1);
  *v14 = v15;
  v14[1] = v17;
  return result;
}

uint64_t sub_1010DD154(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = sub_1000BC4D4(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  v17();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1010DD2A0()
{
  result = qword_1016C7918;
  if (!qword_1016C7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7918);
  }

  return result;
}

unint64_t sub_1010DD340()
{
  result = qword_1016C7928;
  if (!qword_1016C7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7928);
  }

  return result;
}

unsigned __int8 *sub_1010DD394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1010DEFC8();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1010DD968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1010DEFC8();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOWORD(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOWORD(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1010DDF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1010DEFC8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1010DE4C8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1010DEFC8();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1010DEA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1010DEFC8();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1010DEFC8()
{
  v0 = String.subscript.getter();
  v4 = sub_1010DF048(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1010DF048(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1000148E8(v9, 0);
  v12 = sub_1010DF1A0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1010DF1A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1010DF3C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1010DF3C0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1010DF3C0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1010DF43C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1010DF484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v141 = v4;
  v142 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v123 - v10;
  v11 = type metadata accessor for StableIdentifier();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = (&v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v18 = &v123 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v123 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = (&v123 - v23);
  __chkstk_darwin(v22);
  v26 = (&v123 - v25);
  v27 = sub_1000BC4D4(&qword_1016C7930, &qword_101405728);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = (&v123 + *(v29 + 56) - v30);
  v32 = a1;
  v33 = &v123 - v30;
  sub_10012BF78(v32, &v123 - v30);
  sub_10012BF78(a2, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10012BF78(v33, v26);
      v57 = *v26;
      v56 = v26[1];
      if (!swift_getEnumCaseMultiPayload())
      {
LABEL_20:
        if (v57 == *v31 && v56 == v31[1])
        {
        }

        else
        {
          v85 = v31[1];
          v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v86 & 1) == 0)
          {
            sub_1010E01D8(v33);
            return 0;
          }
        }

        v103 = v33;
LABEL_41:
        sub_1010E01D8(v103);
        return 1;
      }

LABEL_11:

LABEL_37:
      sub_10000B3A8(v33, &qword_1016C7930, &qword_101405728);
      return 0;
    }

    v87 = v33;
    sub_10012BF78(v33, v24);
    v88 = *v24;
    v89 = v24[1];
    v91 = v24[2];
    v90 = v24[3];
    v93 = v24[4];
    v92 = v24[5];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v33 = v87;
      goto LABEL_37;
    }

    v142 = v93;
    v94 = *v31;
    v95 = v31[1];
    v96 = v31[2];
    v97 = v31[3];
    v98 = v31[4];
    v99 = v31[5];
    v141 = v98;
    if (v88 == v94 && v89 == v95)
    {
    }

    else
    {
      v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v101 & 1) == 0)
      {

        goto LABEL_93;
      }
    }

    v104 = v91 == v96 && v90 == v97;
    v105 = v87;
    if (v104)
    {
    }

    else
    {
      v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v106 & 1) == 0)
      {

        goto LABEL_59;
      }
    }

    if (v142 == v141 && v92 == v99)
    {

      v103 = v105;
      goto LABEL_41;
    }

    v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v107)
    {
      v103 = v105;
      goto LABEL_41;
    }

LABEL_59:
    sub_1010E01D8(v105);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v139 = v33;
    sub_10012BF78(v33, v21);
    v58 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v59 = v58[12];
    v60 = *&v21[v59 + 8];
    v136 = *&v21[v59];
    v137 = v60;
    v61 = v58[16];
    v62 = *&v21[v61];
    v138 = *&v21[v61 + 8];
    v63 = v58[20];
    v64 = *&v21[v63];
    v65 = *&v21[v63 + 8];
    v134 = v62;
    v135 = v64;
    v66 = v58[24];
    LODWORD(v132) = v21[v66];
    LODWORD(v133) = v21[v66 + 1];
    v67 = v58[28];
    v68 = *&v21[v67 + 8];
    v131 = *&v21[v67];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      (*(v142 + 8))(v21, v141);
LABEL_35:
      v33 = v139;
      goto LABEL_37;
    }

    v129 = v65;
    v130 = v68;
    v69 = *(v31 + v59);
    v70 = *(v31 + v59 + 8);
    v71 = *(v31 + v61);
    v72 = *(v31 + v61 + 8);
    v126 = v71;
    v73 = *(v31 + v63);
    v74 = *(v31 + v63 + 8);
    v127 = v73;
    v128 = v69;
    v75 = *(v31 + v66 + 1);
    v124 = *(v31 + v66);
    v125 = v75;
    v76 = *(v31 + v67 + 8);
    v123 = *(v31 + v67);
    v78 = v141;
    v77 = v142;
    v79 = v140;
    (*(v142 + 32))(v140, v31, v141);
    v80 = static UUID.== infix(_:_:)();
    v81 = *(v77 + 8);
    v81(v21, v78);
    if ((v80 & 1) == 0)
    {
      v81(v79, v78);

LABEL_45:

      sub_1010E01D8(v139);
      return 0;
    }

    v142 = v76;
    v82 = v139;
    if (v137)
    {
      v83 = v72;
      if (v70)
      {
        if (v136 == v128 && v137 == v70)
        {

LABEL_75:
          v115 = v130;
          if (v138)
          {
            v116 = v81;
            if (v83)
            {
              if (v134 == v126 && v138 == v83)
              {

LABEL_88:
                v118 = v139;
                if (v135 == v127 && v129 == v74)
                {

                  v119 = v142;
                }

                else
                {
                  v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v119 = v142;
                  if ((v120 & 1) == 0)
                  {
                    v116(v79, v78);

                    goto LABEL_109;
                  }
                }

                if (v133)
                {
                  if (!v125)
                  {
LABEL_97:
                    v116(v79, v78);

                    goto LABEL_113;
                  }
                }

                else
                {
                  if (v132 == v124)
                  {
                    v121 = v125;
                  }

                  else
                  {
                    v121 = 1;
                  }

                  if (v121)
                  {
                    goto LABEL_97;
                  }
                }

                if (v115)
                {
                  if (!v119)
                  {

                    v116(v79, v78);
                    goto LABEL_113;
                  }

                  if (v131 == v123 && v115 == v119)
                  {

                    v116(v79, v78);
                    v103 = v118;
                    goto LABEL_41;
                  }

                  v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v116(v79, v78);
                  if ((v122 & 1) == 0)
                  {
LABEL_113:
                    sub_1010E01D8(v118);
                    return 0;
                  }

LABEL_112:
                  v103 = v118;
                  goto LABEL_41;
                }

                v116(v79, v78);
                if (!v119)
                {
                  goto LABEL_112;
                }

LABEL_109:

                goto LABEL_113;
              }

              v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v117)
              {
                goto LABEL_88;
              }
            }

            else
            {
            }
          }

          else
          {
            v116 = v81;
            if (!v83)
            {
              goto LABEL_88;
            }
          }

          v87 = v139;
          v116(v79, v78);
LABEL_93:
          sub_1010E01D8(v87);
          return 0;
        }

        v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v114)
        {
          goto LABEL_75;
        }
      }

      else
      {
      }
    }

    else
    {
      v83 = v72;
      if (!v70)
      {
        goto LABEL_75;
      }
    }

    v81(v79, v78);
    sub_1010E01D8(v82);
    return 0;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_10012BF78(v33, v15);
    v57 = *v15;
    v56 = v15[1];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v139 = v33;
  v140 = v9;
  sub_10012BF78(v33, v18);
  v35 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
  v36 = v35[12];
  v37 = *&v18[v36];
  v38 = *&v18[v36 + 8];
  v39 = v35[16];
  v40 = *&v18[v39 + 8];
  v137 = *&v18[v39];
  v138 = v37;
  v41 = v35[20];
  v42 = *&v18[v41 + 8];
  v136 = *&v18[v41];
  v43 = v35[24];
  LODWORD(v135) = v18[v43];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    (*(v142 + 8))(v18, v141);
    goto LABEL_35;
  }

  v132 = v38;
  v133 = v40;
  v134 = v42;
  v44 = v31 + v36;
  v45 = *(v31 + v36);
  v46 = *(v44 + 1);
  v47 = *(v31 + v39);
  v48 = *(v31 + v39 + 8);
  v49 = *(v31 + v41 + 8);
  v130 = *(v31 + v41);
  v131 = v47;
  LODWORD(v129) = *(v31 + v43);
  v51 = v141;
  v50 = v142;
  v52 = v140;
  (*(v142 + 32))(v140, v31, v141);
  v53 = static UUID.== infix(_:_:)();
  v54 = *(v50 + 8);
  v54(v18, v51);
  if ((v53 & 1) == 0)
  {
    v54(v52, v51);

LABEL_44:

    goto LABEL_45;
  }

  v142 = v49;
  if (v138 != v45 || v132 != v46)
  {
    v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v55 = v133;
    if (v108)
    {
      goto LABEL_61;
    }

    v54(v52, v51);

    goto LABEL_44;
  }

  v55 = v133;
LABEL_61:
  v109 = v139;
  v110 = v134;
  if (v137 == v131 && v55 == v48)
  {
  }

  else
  {
    v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v111 & 1) == 0)
    {
      v54(v52, v51);

LABEL_83:
      sub_1010E01D8(v109);
      return 0;
    }
  }

  if (v136 != v130 || v110 != v142)
  {
    v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v54(v52, v51);
    if (v112)
    {
      goto LABEL_71;
    }

    goto LABEL_83;
  }

  v54(v52, v51);
LABEL_71:
  v113 = v135 == v129;
  sub_1010E01D8(v109);
  return v113;
}

uint64_t sub_1010E01D8(uint64_t a1)
{
  v2 = type metadata accessor for StableIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1010E0234()
{
  result = qword_1016C7940;
  if (!qword_1016C7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7940);
  }

  return result;
}

unint64_t sub_1010E0288()
{
  result = qword_1016C7950;
  if (!qword_1016C7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7950);
  }

  return result;
}

unint64_t sub_1010E02DC()
{
  result = qword_1016C7960;
  if (!qword_1016C7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7960);
  }

  return result;
}

unint64_t sub_1010E0330()
{
  result = qword_1016C7978;
  if (!qword_1016C7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7978);
  }

  return result;
}

unint64_t sub_1010E0384()
{
  result = qword_1016C7990;
  if (!qword_1016C7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7990);
  }

  return result;
}

unint64_t sub_1010E03D8()
{
  result = qword_1016C79A8;
  if (!qword_1016C79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C79A8);
  }

  return result;
}

unint64_t sub_1010E0490()
{
  result = qword_1016C79B8;
  if (!qword_1016C79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C79B8);
  }

  return result;
}

unint64_t sub_1010E04E8()
{
  result = qword_1016C79C0;
  if (!qword_1016C79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C79C0);
  }

  return result;
}

unint64_t sub_1010E0540()
{
  result = qword_1016C79C8;
  if (!qword_1016C79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C79C8);
  }

  return result;
}

unint64_t sub_1010E0598()
{
  result = qword_1016C79D0;
  if (!qword_1016C79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C79D0);
  }

  return result;
}

unint64_t sub_1010E05F0()
{
  result = qword_1016C79D8;
  if (!qword_1016C79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C79D8);
  }

  return result;
}

unint64_t sub_1010E0648()
{
  result = qword_1016C79E0;
  if (!qword_1016C79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C79E0);
  }

  return result;
}

unint64_t sub_1010E06A0()
{
  result = qword_1016C79E8;
  if (!qword_1016C79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C79E8);
  }

  return result;
}

unint64_t sub_1010E06F8()
{
  result = qword_1016C79F0;
  if (!qword_1016C79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C79F0);
  }

  return result;
}

unint64_t sub_1010E0750()
{
  result = qword_1016C79F8;
  if (!qword_1016C79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C79F8);
  }

  return result;
}

unint64_t sub_1010E07A8()
{
  result = qword_1016C7A00;
  if (!qword_1016C7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7A00);
  }

  return result;
}

unint64_t sub_1010E0800()
{
  result = qword_1016C7A08;
  if (!qword_1016C7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7A08);
  }

  return result;
}

unint64_t sub_1010E0858()
{
  result = qword_1016C7A10;
  if (!qword_1016C7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7A10);
  }

  return result;
}

unint64_t sub_1010E08B0()
{
  result = qword_1016C7A18;
  if (!qword_1016C7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7A18);
  }

  return result;
}

unint64_t sub_1010E0908()
{
  result = qword_1016C7A20;
  if (!qword_1016C7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7A20);
  }

  return result;
}

unint64_t sub_1010E0960()
{
  result = qword_1016C7A28;
  if (!qword_1016C7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7A28);
  }

  return result;
}

uint64_t sub_1010E09D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_allocWithZone(CNContactStore) init];
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  LODWORD(v5) = [v5 isStringEmailAddress:v6];

  v7 = objc_opt_self();
  if (v5)
  {
    v8 = String._bridgeToObjectiveC()();
    v9 = &selRef_predicateForContactsMatchingEmailAddress_;
  }

  else
  {
    v10 = objc_allocWithZone(CNPhoneNumber);
    v11 = String._bridgeToObjectiveC()();
    v8 = [v10 initWithStringValue:v11];

    v9 = &selRef_predicateForContactsMatchingPhoneNumber_;
  }

  v12 = [v7 *v9];

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 descriptorForRequiredKeysForStyle:0];
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138C320;
  *(v16 + 32) = v15;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&unk_1016C7A38, &qword_101405D48);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v39 = 0;
  v37 = v4;
  v18 = [v4 unifiedContactsMatchingPredicate:v14 keysToFetch:isa error:&v39];

  v19 = v39;
  if (v18)
  {
    sub_1010E0EF8();
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v19;

    if (v20 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v23 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v24 = *(v20 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (a3)
        {

          v34 = [v25 givenName];
          a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          swift_unknownObjectRelease();
LABEL_22:

          return a1;
        }

        v27 = [v13 stringFromContact:v24 style:0];
        if (v27)
        {
          v35 = v27;

          a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          swift_unknownObjectRelease();
          goto LABEL_22;
        }

        ++v23;
        if (v26 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_26:

    swift_unknownObjectRelease();
  }

  else
  {
    v28 = v39;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    v39 = v29;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)();

    swift_unknownObjectRelease();
  }

  return a1;
}

unint64_t sub_1010E0EF8()
{
  result = qword_1016C7A48;
  if (!qword_1016C7A48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016C7A48);
  }

  return result;
}

unint64_t sub_1010E0FD4()
{
  result = qword_1016C7A50;
  if (!qword_1016C7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7A50);
  }

  return result;
}

unint64_t sub_1010E102C()
{
  result = qword_1016C7A58;
  if (!qword_1016C7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7A58);
  }

  return result;
}

unint64_t sub_1010E1084()
{
  result = qword_1016C7A60;
  if (!qword_1016C7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7A60);
  }

  return result;
}

unint64_t sub_1010E10DC()
{
  result = qword_1016C7A68;
  if (!qword_1016C7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7A68);
  }

  return result;
}

id sub_1010E1130()
{
  v1 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v19 = 0x7365547265646E75;
  v20 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v23 & 1) == 0)
  {
    v21 = &type metadata for KoreaFeatureFlag;
    v22 = sub_10013CCC4();
    v2 = isFeatureEnabled(_:)();
    sub_100007BAC(&v19);
    if (v2)
    {
      return 0;
    }
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    if (v8)
    {
      static os_log_type_t.default.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
      v10 = 1;
LABEL_16:

      return v10;
    }
  }

  [v1 coordinate];
  v12 = v11;
  [v1 coordinate];
  v14 = v13;
  if (qword_1016946C8 != -1)
  {
    swift_once();
  }

  result = [qword_10169F2F8 containsCoordinate:{v12, v14}];
  if (result)
  {
    v15 = qword_10169F300;
    if (qword_10169F300)
    {
      v9 = qword_10169F300;
    }

    else
    {
      v16 = sub_1003CD878();
      v17 = qword_10169F300;
      qword_10169F300 = v16;
      v9 = v16;

      v15 = 0;
    }

    v18 = v15;
    v10 = [v9 containsCoordinate:{v12, v14}];
    goto LABEL_16;
  }

  return result;
}

id sub_1010E13F0()
{
  v1 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v19 = 0x7365547265646E75;
  v20 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v23 & 1) == 0)
  {
    v21 = &type metadata for KoreaFeatureFlag;
    v22 = sub_10013CCC4();
    v2 = isFeatureEnabled(_:)();
    sub_100007BAC(&v19);
    if (v2)
    {
      return 0;
    }
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    if (v8)
    {
      static os_log_type_t.default.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
      v10 = 1;
LABEL_16:

      return v10;
    }
  }

  [v1 latitude];
  v12 = v11;
  [v1 longitude];
  v14 = v13;
  if (qword_1016946C8 != -1)
  {
    swift_once();
  }

  result = [qword_10169F2F8 containsCoordinate:{v12, v14}];
  if (result)
  {
    v15 = qword_10169F300;
    if (qword_10169F300)
    {
      v9 = qword_10169F300;
    }

    else
    {
      v16 = sub_1003CD878();
      v17 = qword_10169F300;
      qword_10169F300 = v16;
      v9 = v16;

      v15 = 0;
    }

    v18 = v15;
    v10 = [v9 containsCoordinate:{v12, v14}];
    goto LABEL_16;
  }

  return result;
}

id sub_1010E16B4()
{
  v1 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v17 = 0x7365547265646E75;
  v18 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v21 & 1) == 0)
  {
    v19 = &type metadata for KoreaFeatureFlag;
    v20 = sub_10013CCC4();
    v2 = isFeatureEnabled(_:)();
    sub_100007BAC(&v17);
    if (v2)
    {
      return 0;
    }
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    if (v8)
    {
      static os_log_type_t.default.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
      v10 = 1;
LABEL_16:

      return v10;
    }
  }

  v11 = *v1;
  v12 = v1[1];
  if (qword_1016946C8 != -1)
  {
    swift_once();
  }

  result = [qword_10169F2F8 containsCoordinate:{v11, v12}];
  if (result)
  {
    v13 = qword_10169F300;
    if (qword_10169F300)
    {
      v9 = qword_10169F300;
    }

    else
    {
      v14 = sub_1003CD878();
      v15 = qword_10169F300;
      qword_10169F300 = v14;
      v9 = v14;

      v13 = 0;
    }

    v16 = v13;
    v10 = [v9 containsCoordinate:{v11, v12}];
    goto LABEL_16;
  }

  return result;
}

id sub_1010E1954()
{
  v1 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v18 = 0x7365547265646E75;
  v19 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v22 & 1) == 0)
  {
    v20 = &type metadata for KoreaFeatureFlag;
    v21 = sub_10013CCC4();
    v2 = isFeatureEnabled(_:)();
    sub_100007BAC(&v18);
    if (v2)
    {
      return 0;
    }
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    if (v8)
    {
      static os_log_type_t.default.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
      v10 = 1;
LABEL_16:

      return v10;
    }
  }

  v11 = type metadata accessor for BeaconEstimatedLocation();
  v12 = *(v1 + *(v11 + 28));
  v13 = *(v1 + *(v11 + 32));
  if (qword_1016946C8 != -1)
  {
    swift_once();
  }

  result = [qword_10169F2F8 containsCoordinate:{v12, v13}];
  if (result)
  {
    v14 = qword_10169F300;
    if (qword_10169F300)
    {
      v9 = qword_10169F300;
    }

    else
    {
      v15 = sub_1003CD878();
      v16 = qword_10169F300;
      qword_10169F300 = v15;
      v9 = v15;

      v14 = 0;
    }

    v17 = v14;
    v10 = [v9 containsCoordinate:{v12, v13}];
    goto LABEL_16;
  }

  return result;
}

Swift::Int sub_1010E1C04(void **a1)
{
  v2 = *(type metadata accessor for WildModeTrackingLocation(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100607388(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1010F4624(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1010E1CB0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(char *))
{
  v8 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for WildModeAssociationRecord(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1010FC79C(a1, v15, type metadata accessor for WildModeAssociationRecord);
  a2(v15);
  v16 = *(v4 + 168);
  sub_1009F1D18(v15);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177BA08);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    _os_log_impl(&_mh_execute_header, v18, v19, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v20, 8u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v21)
  {
  }

  sub_1010FC79C(v15, v11, type metadata accessor for WildModeAssociationRecord);
  swift_storeEnumTagMultiPayload();
  a4(v11);
  sub_10000B3A8(v11, &qword_1016A9590, &unk_1013BB520);
  return sub_1010FC804(v15, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_1010E2064()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v0, qword_1016C7A70);
  sub_1000076D4(v0, qword_1016C7A70);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_1010E20B8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 40);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  *a2 = v6 == 0;
  return result;
}

uint64_t sub_1010E2150()
{
  v1 = v0;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AD20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "UnknownDiscoverySession.deinit", v5, 2u);
  }

  v6 = *(v1 + 32);
  swift_unownedRelease();
  v7 = *(v1 + 40);

  v8 = *(v1 + 48);

  v9 = *(v1 + 56);

  v10 = *(v1 + 64);

  v11 = *(v1 + 72);

  v12 = *(v1 + 88);

  return v1;
}

uint64_t sub_1010E2288()
{
  sub_1010E2150();

  return swift_deallocClassInstance();
}

uint64_t sub_1010E22E0()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v70 - v4;
  v80 = sub_1000BC4D4(&qword_1016C7E58, &qword_1014061A0);
  v79 = *(v80 - 8);
  v6 = *(v79 + 64);
  __chkstk_darwin(v80);
  v8 = v70 - v7;
  v9 = sub_1000BC4D4(&qword_1016C7E60, &qword_1014061A8);
  v77 = *(v9 - 8);
  v10 = *(v77 + 64);
  v11 = __chkstk_darwin(v9);
  v71 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v78 = v70 - v14;
  __chkstk_darwin(v13);
  v81 = v70 - v15;
  v16 = sub_1000BC4D4(&qword_1016C7E68, &qword_1014061B0);
  v83 = *(v16 - 8);
  v84 = v16;
  v17 = *(v83 + 64);
  __chkstk_darwin(v16);
  v82 = v70 - v18;
  v88 = sub_1000BC4D4(&qword_1016C7E70, &qword_1014061B8);
  v86 = *(v88 - 8);
  v19 = *(v86 + 64);
  __chkstk_darwin(v88);
  v85 = v70 - v20;
  v21 = sub_1000BC4D4(&qword_1016C7E78, &qword_1014061C0);
  v89 = *(v21 - 8);
  v90 = v21;
  v22 = *(v89 + 64);
  __chkstk_darwin(v21);
  v87 = v70 - v23;
  v24 = sub_1000BC4D4(&qword_1016C7E80, &qword_1014061C8);
  v92 = *(v24 - 8);
  v93 = v24;
  v25 = *(v92 + 64);
  __chkstk_darwin(v24);
  v91 = v70 - v26;
  v27 = sub_1000BC4D4(&qword_1016C7E88, &qword_1014061D0);
  v95 = *(v27 - 8);
  v96 = v27;
  v28 = *(v95 + 64);
  __chkstk_darwin(v27);
  v94 = v70 - v29;
  v30 = sub_1000BC4D4(&qword_1016C7E90, &qword_1014061D8);
  v98 = *(v30 - 8);
  v99 = v30;
  v31 = *(v98 + 64);
  __chkstk_darwin(v30);
  v97 = v70 - v32;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v33 = qword_10177C218;
  v34 = [objc_opt_self() sharedInstance];
  v35 = [v34 isInternalBuild];

  if (v35 && (v36 = String._bridgeToObjectiveC()(), v37 = [v33 BOOLForKey:v36], v36, (v37 & 1) != 0))
  {
    v38 = &off_101608F48;
  }

  else
  {
    v38 = &off_101608F70;
  }

  v70[0] = v38;
  v39 = v1[9];
  v40 = sub_1011915AC(1);
  v100 = v1[3];
  v41 = v100;
  v101 = v40;
  v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v75 = v42;
  v74 = v44;
  v73 = v43 + 56;
  (v44)(v5, 1, 1);
  v76 = v41;
  v70[2] = sub_1000BC4D4(&qword_1016C7E98, &qword_1014061E0);
  v45 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v70[1] = sub_1000041A4(&qword_1016C7EA0, &qword_1016C7E98, &qword_1014061E0);
  v46 = sub_1004682F0();
  v72 = v45;
  v70[3] = v46;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v5, &unk_1016B0FE0, &unk_101391980);

  *(swift_allocObject() + 16) = v70[0];
  sub_1000041A4(&qword_1016C7EA8, &qword_1016C7E58, &qword_1014061A0);
  v47 = v71;
  v48 = v80;
  Publisher.filter(_:)();

  (*(v79 + 8))(v8, v48);
  v49 = v78;
  Publishers.Filter.filter(_:)();
  v50 = *(v77 + 8);
  v50(v47, v9);
  v51 = v81;
  Publishers.Filter.filter(_:)();
  v50(v49, v9);
  type metadata accessor for MACAddress();
  sub_1000041A4(&unk_1016C7EB0, &qword_1016C7E60, &qword_1014061A8);
  sub_1010FBFB0(&unk_1016BC080, &type metadata accessor for MACAddress);
  v52 = Publisher.unique<A>(by:)();
  v50(v51, v9);
  v101 = v52;

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016C7EC0, &qword_1014061E8);
  sub_1000041A4(&qword_1016C7EC8, &qword_1016C7EC0, &qword_1014061E8);
  v53 = v82;
  Publisher.flatMap<A>(maxPublishers:_:)();

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016C7CA0, &qword_1014060B8);
  sub_1000041A4(&qword_1016C7ED0, &qword_1016C7E68, &qword_1014061B0);
  sub_1000041A4(&qword_1016C7ED8, &qword_1016C7CA0, &qword_1014060B8);
  v54 = v84;
  v55 = v85;
  Publisher.flatMap<A>(maxPublishers:_:)();

  (*(v83 + 8))(v53, v54);
  if (qword_101695260 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v56, qword_1016C7A70);
  v57 = v76;
  v101 = v76;
  v74(v5, 1, 1, v75);
  sub_1000041A4(&qword_1016C7EE0, &qword_1016C7E70, &qword_1014061B8);
  v59 = v87;
  v58 = v88;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v5, &unk_1016B0FE0, &unk_101391980);

  (*(v86 + 8))(v55, v58);
  sub_1000BC4D4(&qword_1016C7EE8, &qword_1014061F0);
  sub_1000041A4(&qword_1016C7EF0, &qword_1016C7E78, &qword_1014061C0);
  v60 = v90;
  v61 = v91;
  Publisher.map<A>(_:)();
  (*(v89 + 8))(v59, v60);
  sub_1000BC4D4(&qword_1016C7EF8, &qword_1014061F8);
  sub_1000041A4(&qword_1016C7F00, &qword_1016C7E80, &qword_1014061C8);
  sub_1000041A4(&qword_1016C7F08, &qword_1016C7EF8, &qword_1014061F8);
  v62 = v93;
  v63 = v94;
  Publisher.catch<A>(_:)();
  (*(v92 + 8))(v61, v62);
  sub_1000041A4(&qword_1016C7F10, &qword_1016C7E88, &qword_1014061D0);

  v64 = v96;
  v65 = v97;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v95 + 8))(v63, v64);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&unk_1016C7F18, &qword_1016C7E90, &qword_1014061D8);
  v66 = v99;
  v67 = Publisher<>.sink(receiveValue:)();

  (*(v98 + 8))(v65, v66);
  v68 = v1[7];
  v1[7] = v67;
}

BOOL sub_1010E3198(_BYTE *a1, uint64_t a2)
{
  if (a1[1] != 1)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  v5 = sub_1002E1B4C();

  return sub_10062CFC0(v5, a2);
}

uint64_t sub_1010E326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for DiscoveredObject(0) + 32);
  v5 = type metadata accessor for MACAddress();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

id sub_1010E32EC@<X0>(id *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  *a2 = *a1;
  sub_1000BC4D4(&qword_1016C7EE8, &qword_1014061F0);
  swift_storeEnumTagMultiPayload();

  return v3;
}

uint64_t sub_1010E336C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  sub_1000BC4D4(&qword_1016C7F28, &unk_101406200);
  OS_dispatch_queue.sync<A>(execute:)();
  os_activity(name:block:)();
}

uint64_t sub_1010E3418(uint64_t a1)
{
  v2 = type metadata accessor for BluetoothCommunicationCoordinator.Error();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v54 - v8;
  __chkstk_darwin(v7);
  v55 = (&v54 - v10);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016C7EE8, &qword_1014061F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v54 - v18);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_1000D2A70(a1, v19, &qword_1016C7EE8, &qword_1014061F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v55;
      sub_1010FC734(v19, v55, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      if (qword_101694708 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177AD20);
      sub_1010FC79C(v22, v9, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        sub_1010FBFB0(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        swift_allocError();
        sub_1010FC79C(v9, v28, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v29 = _swift_stdlib_bridgeErrorToNSError();
        sub_1010FC804(v9, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&_mh_execute_header, v24, v25, "Object Discovery failed! Error: %{public}@", v26, 0xCu);
        sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

        v22 = v55;
      }

      else
      {

        sub_1010FC804(v9, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      }

      sub_1010FC79C(v22, v6, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        type metadata accessor for SPUnknownDiscoverySessionError(0);
        v56 = 1;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_1010FBFB0(&qword_1016962C0, type metadata accessor for SPUnknownDiscoverySessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v45 = v57;
        v46 = *(v21 + 16);
        sub_1000BC4D4(&qword_1016C7F28, &unk_101406200);
        v47 = OS_dispatch_queue.sync<A>(execute:)();
        v48 = v56;
        __chkstk_darwin(v47);
        *(&v54 - 2) = v48;
        *(&v54 - 1) = v45;
        os_activity(name:block:)();

        v49 = v22;
      }

      else
      {
        type metadata accessor for SPUnknownDiscoverySessionError(0);
        v56 = 0;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_1010FBFB0(&qword_1016962C0, type metadata accessor for SPUnknownDiscoverySessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v50 = v57;
        v51 = *(v21 + 16);
        sub_1000BC4D4(&qword_1016C7F28, &unk_101406200);
        v52 = OS_dispatch_queue.sync<A>(execute:)();
        v53 = v56;
        __chkstk_darwin(v52);
        *(&v54 - 2) = v53;
        *(&v54 - 1) = v50;
        os_activity(name:block:)();

        sub_1010FC804(v22, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v49 = v6;
      }

      return sub_1010FC804(v49, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    }

    else
    {
      v30 = *v19;
      if (qword_101694708 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000076D4(v31, qword_10177AD20);
      v32 = v30;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v57 = v55;
        *v35 = 136446210;
        v36 = [v32 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        (*(v12 + 8))(v15, v11);
        v40 = sub_1000136BC(v37, v39, &v57);

        *(v35 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v33, v34, "Created unknown beacon: %{public}s", v35, 0xCu);
        sub_100007BAC(v55);
      }

      v41 = *(v21 + 16);
      __chkstk_darwin(v42);
      *(&v54 - 2) = v21;
      *(&v54 - 1) = v32;
      sub_1000BC4D4(&qword_1016C7F28, &unk_101406200);
      v43 = OS_dispatch_queue.sync<A>(execute:)();
      v44 = v57;
      __chkstk_darwin(v43);
      *(&v54 - 2) = v44;
      *(&v54 - 1) = v32;
      os_activity(name:block:)();
    }
  }

  return result;
}

uint64_t sub_1010E3D48(_BYTE *a1)
{
  v98 = sub_1000BC4D4(&unk_1016C7DD0, &unk_101406148);
  v2 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v97 = &v88 - v3;
  v4 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v96 = &v88 - v6;
  v7 = sub_1000BC4D4(&qword_1016C7E38, &unk_101406180);
  v100 = *(v7 - 8);
  v8 = *(v100 + 64);
  __chkstk_darwin(v7);
  v99 = &v88 - v9;
  v10 = type metadata accessor for DiscoveredObject(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v95 = &v88 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v88 - v18;
  v20 = __chkstk_darwin(v17);
  v94 = &v88 - v21;
  v22 = __chkstk_darwin(v20);
  v93 = &v88 - v23;
  v24 = __chkstk_darwin(v22);
  v92 = &v88 - v25;
  __chkstk_darwin(v24);
  v27 = &v88 - v26;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_1000076D4(v28, qword_10177AD20);
  sub_1010FC79C(a1, v27, type metadata accessor for DiscoveredObject);
  v101 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v91 = a1;
    v33 = v32;
    v89 = swift_slowAlloc();
    v90 = v19;
    v102 = v89;
    *v33 = 136315394;
    v34 = sub_1000136BC(0xD00000000000001FLL, 0x800000010137B480, &v102);
    *(v33 + 4) = v34;
    *(v33 + 12) = 2080;
    v35 = sub_1002E1B74(v34);
    v36 = v11;
    v37 = v7;
    v39 = v38;
    sub_1010FC804(v27, type metadata accessor for DiscoveredObject);
    v40 = sub_1000136BC(v35, v39, &v102);
    v7 = v37;
    v11 = v36;
    v14 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v33 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s %s", v33, 0x16u);
    swift_arrayDestroy();
    v19 = v90;

    a1 = v91;
  }

  else
  {

    sub_1010FC804(v27, type metadata accessor for DiscoveredObject);
  }

  if (a1[1] == 1)
  {
    if (*a1)
    {
      v41 = v95;
      sub_1010FC79C(a1, v95, type metadata accessor for DiscoveredObject);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
LABEL_10:
        v46 = v45;
        v102 = v45;
        *v44 = 136446210;
        v47 = sub_1002E1B74(v45);
        v49 = v48;
        sub_1010FC804(v41, type metadata accessor for DiscoveredObject);
        v50 = sub_1000136BC(v47, v49, &v102);

        *(v44 + 4) = v50;
        v51 = "Unsupported type %{public}s";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v42, v43, v51, v44, 0xCu);
        sub_100007BAC(v46);

LABEL_24:
        v73 = type metadata accessor for AccessoryMetadata(0);
        v74 = v96;
        (*(*(v73 - 8) + 56))(v96, 1, 1, v73);
        v75 = v97;
        v76 = *(v98 + 48);
        sub_1010FC79C(a1, v97, type metadata accessor for DiscoveredObject);
        sub_1010FC0D4(v74, v75 + v76);
        v77 = v99;
        Just.init(_:)();
        sub_1000041A4(&unk_1016C7E40, &qword_1016C7E38, &unk_101406180);
        v57 = Publisher.eraseToAnyPublisher()();
        (*(v100 + 8))(v77, v7);
        return v57;
      }

      goto LABEL_22;
    }

    v58 = sub_1002E1B4C();
    if (v58 <= 1)
    {
      if (!v58)
      {
        sub_1010FC79C(a1, v19, type metadata accessor for DiscoveredObject);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v41 = v19;
          goto LABEL_10;
        }

        v72 = v19;
LABEL_23:
        sub_1010FC804(v72, type metadata accessor for DiscoveredObject);
        goto LABEL_24;
      }

      v41 = v94;
      sub_1010FC79C(a1, v94, type metadata accessor for DiscoveredObject);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v102 = v46;
        *v44 = 136446210;
        v68 = sub_1002E1B74(v46);
        v70 = v69;
        sub_1010FC804(v41, type metadata accessor for DiscoveredObject);
        v71 = sub_1000136BC(v68, v70, &v102);

        *(v44 + 4) = v71;
        v51 = "No metadata reading for durian accessory %{public}s";
        goto LABEL_11;
      }

LABEL_22:

      v72 = v41;
      goto LABEL_23;
    }

    if (v58 == 2)
    {
      v59 = v92;
      sub_1010FC79C(a1, v92, type metadata accessor for DiscoveredObject);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v102 = v63;
        *v62 = 136446210;
        v64 = sub_1002E1B74(v63);
        v66 = v65;
        sub_1010FC804(v59, type metadata accessor for DiscoveredObject);
        v67 = sub_1000136BC(v64, v66, &v102);

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "Reading metadata for accessory %{public}s", v62, 0xCu);
        sub_100007BAC(v63);
      }

      else
      {

        sub_1010FC804(v59, type metadata accessor for DiscoveredObject);
      }

      return sub_1010E5FEC(a1);
    }

    else
    {
      v79 = v93;
      sub_1010FC79C(a1, v93, type metadata accessor for DiscoveredObject);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v102 = v83;
        *v82 = 136446210;
        v84 = sub_1002E1B74(v83);
        v86 = v85;
        sub_1010FC804(v79, type metadata accessor for DiscoveredObject);
        v87 = sub_1000136BC(v84, v86, &v102);

        *(v82 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v80, v81, "Reading metadata for hele accessory %{public}s", v82, 0xCu);
        sub_100007BAC(v83);
      }

      else
      {

        sub_1010FC804(v79, type metadata accessor for DiscoveredObject);
      }

      return sub_1010E6B20(a1);
    }
  }

  else
  {
    sub_1010FC79C(a1, v14, type metadata accessor for DiscoveredObject);
    v52 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v53 = swift_allocObject();
    sub_1010FC734(v14, v53 + v52, type metadata accessor for DiscoveredObject);
    v54 = sub_1000BC4D4(&qword_1016C7D38, &qword_101406108);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    v102 = Future.init(_:)();
    sub_1000041A4(&qword_1016C7D40, &qword_1016C7D38, &qword_101406108);
    v57 = Publisher.eraseToAnyPublisher()();
  }

  return v57;
}

uint64_t sub_1010E4930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DiscoveredObject(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1010FC79C(a3, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiscoveredObject);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1010FC734(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for DiscoveredObject);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;

  sub_10025EDD4(0, 0, v12, &unk_101406198, v15);
}

uint64_t sub_1010E4B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_1000BC4D4(&qword_1016C7DC8, &qword_101406140);
  v6[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v9 = type metadata accessor for AccessoryMetadata(0);
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_1010E4C8C, 0, 0);
}

uint64_t sub_1010E4C8C()
{
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_1000076D4(v1, qword_10177AD20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reading posh metadata...", v4, 2u);
  }

  v5 = v0[4];

  type metadata accessor for AccessoryMetadataManager();
  v6 = *(type metadata accessor for DiscoveredObject(0) + 32);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1010E4E00;
  v8 = v0[20];

  return sub_10037208C(v8, v5 + v6);
}

uint64_t sub_1010E4E00()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1010E5D24;
  }

  else
  {
    v3 = sub_1010E4F14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010E4F14()
{
  v145 = v0;
  v1 = *(v0 + 168);
  sub_1010FC79C(*(v0 + 160), *(v0 + 152), type metadata accessor for AccessoryMetadata);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v144 = v7;
    *v6 = 136446210;
    *(v0 + 16) = *(v4 + *(v5 + 20));
    sub_1002313AC();
    v8 = RawRepresentable<>.hexString.getter();
    v10 = v9;
    sub_1010FC804(v4, type metadata accessor for AccessoryMetadata);
    v11 = sub_1000136BC(v8, v10, &v144);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "productData: %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
    v12 = *(v0 + 152);

    sub_1010FC804(v12, type metadata accessor for AccessoryMetadata);
  }

  v13 = *(v0 + 168);
  sub_1010FC79C(*(v0 + 160), *(v0 + 144), type metadata accessor for AccessoryMetadata);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 144);
  if (v16)
  {
    v18 = *(v0 + 72);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v144 = v20;
    *v19 = 136446210;
    v21 = (v17 + *(v18 + 24));
    if (v21[1])
    {
      v22 = *v21;
      v23 = v21[1];
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = *(v0 + 144);

    sub_1010FC804(v24, type metadata accessor for AccessoryMetadata);
    v25 = sub_1000136BC(v22, v23, &v144);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "manufacturerName: %{public}s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  else
  {

    sub_1010FC804(v17, type metadata accessor for AccessoryMetadata);
  }

  v26 = *(v0 + 168);
  sub_1010FC79C(*(v0 + 160), *(v0 + 136), type metadata accessor for AccessoryMetadata);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 136);
  if (v29)
  {
    v31 = *(v0 + 72);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v144 = v33;
    *v32 = 136446210;
    v34 = (v30 + *(v31 + 28));
    if (v34[1])
    {
      v35 = *v34;
      v36 = v34[1];
    }

    else
    {
      v35 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = *(v0 + 136);

    sub_1010FC804(v37, type metadata accessor for AccessoryMetadata);
    v38 = sub_1000136BC(v35, v36, &v144);

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "modelName: %{public}s", v32, 0xCu);
    sub_100007BAC(v33);
  }

  else
  {

    sub_1010FC804(v30, type metadata accessor for AccessoryMetadata);
  }

  v39 = *(v0 + 168);
  sub_1010FC79C(*(v0 + 160), *(v0 + 128), type metadata accessor for AccessoryMetadata);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 128);
  if (v42)
  {
    v44 = *(v0 + 72);
    v45 = swift_slowAlloc();
    *v45 = 134349056;
    v46 = v43 + *(v44 + 48);
    if (*(v46 + 8))
    {
      v47 = 0;
    }

    else
    {
      v47 = *v46;
    }

    sub_1010FC804(v43, type metadata accessor for AccessoryMetadata);
    *(v45 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "accessoryCategory: %{public}llu", v45, 0xCu);
  }

  else
  {
    sub_1010FC804(*(v0 + 128), type metadata accessor for AccessoryMetadata);
  }

  v48 = *(v0 + 160);
  v49 = *(v0 + 168);
  v50 = *(v0 + 120);

  sub_1010FC79C(v48, v50, type metadata accessor for AccessoryMetadata);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 120);
  if (v53)
  {
    v55 = *(v0 + 72);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v144 = v57;
    *v56 = 136446210;
    v58 = v54 + *(v55 + 52);
    if (*(v58 + 4))
    {
      v59 = 0;
    }

    else
    {
      v59 = *v58;
    }

    v60 = sub_1010D840C(v59);
    v62 = v61;
    sub_1010FC804(v54, type metadata accessor for AccessoryMetadata);
    v63 = sub_1000136BC(v60, v62, &v144);

    *(v56 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v51, v52, "accessoryCapabilities: %{public}s", v56, 0xCu);
    sub_100007BAC(v57);
  }

  else
  {

    sub_1010FC804(v54, type metadata accessor for AccessoryMetadata);
  }

  v64 = *(v0 + 168);
  sub_1010FC79C(*(v0 + 160), *(v0 + 112), type metadata accessor for AccessoryMetadata);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  v67 = os_log_type_enabled(v65, v66);
  v68 = *(v0 + 112);
  if (v67)
  {
    v69 = *(v0 + 72);
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v144 = v71;
    *v70 = 136446210;
    v72 = *(v68 + *(v69 + 32));
    v73 = sub_10098E010();
    v75 = v74;
    sub_1010FC804(v68, type metadata accessor for AccessoryMetadata);
    v76 = sub_1000136BC(v73, v75, &v144);

    *(v70 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v65, v66, "firmwareVersion: %{public}s", v70, 0xCu);
    sub_100007BAC(v71);
  }

  else
  {

    sub_1010FC804(v68, type metadata accessor for AccessoryMetadata);
  }

  v77 = *(v0 + 168);
  sub_1010FC79C(*(v0 + 160), *(v0 + 104), type metadata accessor for AccessoryMetadata);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  v80 = os_log_type_enabled(v78, v79);
  v81 = *(v0 + 104);
  if (v80)
  {
    v82 = *(v0 + 72);
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v144 = v84;
    *v83 = 136446210;
    v85 = (v81 + *(v82 + 40));
    if (v85[1])
    {
      v86 = 0;
      v87 = 0xE000000000000000;
    }

    else
    {
      v88 = *v85;
      v86 = sub_10098E010();
      v87 = v89;
    }

    sub_1010FC804(*(v0 + 104), type metadata accessor for AccessoryMetadata);
    v90 = sub_1000136BC(v86, v87, &v144);

    *(v83 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v78, v79, "protocolVersion: %{public}s", v83, 0xCu);
    sub_100007BAC(v84);
  }

  else
  {

    sub_1010FC804(v81, type metadata accessor for AccessoryMetadata);
  }

  v91 = *(v0 + 168);
  sub_1010FC79C(*(v0 + 160), *(v0 + 96), type metadata accessor for AccessoryMetadata);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  v94 = os_log_type_enabled(v92, v93);
  v95 = *(v0 + 96);
  if (v94)
  {
    v96 = *(v0 + 72);
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v97 = 136446210;
    v99 = *(v95 + *(v96 + 56));
    v100 = 0xE700000000000000;
    v144 = v98;
    v101 = 0x64657265776F70;
    v102 = 0xEB00000000656C62;
    v103 = 0x6167726168636572;
    v104 = 0xE700000000000000;
    v105 = 0x6E776F6E6B6E75;
    if (v99 != 3)
    {
      v105 = 0;
      v104 = 0xE000000000000000;
    }

    if (v99 != 2)
    {
      v103 = v105;
      v102 = v104;
    }

    if (v99)
    {
      v101 = 0x61686365526E6F6ELL;
      v100 = 0xEE00656C62616772;
    }

    if (v99 <= 1)
    {
      v106 = v101;
    }

    else
    {
      v106 = v103;
    }

    if (v99 <= 1)
    {
      v107 = v100;
    }

    else
    {
      v107 = v102;
    }

    v108 = v98;
    sub_1010FC804(*(v0 + 96), type metadata accessor for AccessoryMetadata);
    v109 = sub_1000136BC(v106, v107, &v144);

    *(v97 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v92, v93, "batteryType: %{public}s", v97, 0xCu);
    sub_100007BAC(v108);
  }

  else
  {

    sub_1010FC804(v95, type metadata accessor for AccessoryMetadata);
  }

  v110 = *(v0 + 168);
  sub_1010FC79C(*(v0 + 160), *(v0 + 88), type metadata accessor for AccessoryMetadata);
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();
  v113 = os_log_type_enabled(v111, v112);
  v114 = *(v0 + 88);
  if (v113)
  {
    v115 = *(v0 + 72);
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v144 = v117;
    *v116 = 136446210;
    v118 = *(v114 + *(v115 + 60));
    if (v118 > 2)
    {
      if (v118 == 3)
      {
        v120 = 0xED0000776F4C796CLL;
        v119 = 0x6C61636974697263;
      }

      else
      {
        if (v118 == 4)
        {
          v119 = 0x6E776F6E6B6E75;
        }

        else
        {
          v119 = 0;
        }

        if (v118 == 4)
        {
          v120 = 0xE700000000000000;
        }

        else
        {
          v120 = 0xE000000000000000;
        }
      }
    }

    else if (*(v114 + *(v115 + 60)))
    {
      if (v118 == 1)
      {
        v119 = 0x6D756964656DLL;
      }

      else
      {
        v119 = 7827308;
      }

      if (v118 == 1)
      {
        v120 = 0xE600000000000000;
      }

      else
      {
        v120 = 0xE300000000000000;
      }
    }

    else
    {
      v120 = 0xE400000000000000;
      v119 = 1819047270;
    }

    sub_1010FC804(*(v0 + 88), type metadata accessor for AccessoryMetadata);
    v121 = sub_1000136BC(v119, v120, &v144);

    *(v116 + 4) = v121;
    _os_log_impl(&_mh_execute_header, v111, v112, "batteryState: %{public}s", v116, 0xCu);
    sub_100007BAC(v117);
  }

  else
  {

    sub_1010FC804(v114, type metadata accessor for AccessoryMetadata);
  }

  v122 = *(v0 + 160);
  v123 = *(v0 + 72);
  v124 = *(v0 + 80);
  v126 = *(v0 + 56);
  v125 = *(v0 + 64);
  v128 = *(v0 + 40);
  v127 = *(v0 + 48);
  v129 = *(v0 + 32);
  v130 = *(sub_1000BC4D4(&unk_1016C7DD0, &unk_101406148) + 48);
  sub_1010FC79C(v129, v125, type metadata accessor for DiscoveredObject);
  sub_1010FC79C(v122, v125 + v130, type metadata accessor for AccessoryMetadata);
  (*(v124 + 56))(v125 + v130, 0, 1, v123);
  swift_storeEnumTagMultiPayload();
  v128(v125);
  sub_10000B3A8(v125, &qword_1016C7DC8, &qword_101406140);
  sub_1010FC804(v122, type metadata accessor for AccessoryMetadata);
  v132 = *(v0 + 152);
  v131 = *(v0 + 160);
  v134 = *(v0 + 136);
  v133 = *(v0 + 144);
  v136 = *(v0 + 120);
  v135 = *(v0 + 128);
  v138 = *(v0 + 104);
  v137 = *(v0 + 112);
  v140 = *(v0 + 88);
  v139 = *(v0 + 96);
  v143 = *(v0 + 64);

  v141 = *(v0 + 8);

  return v141();
}

uint64_t sub_1010E5D24()
{
  v33 = v0;
  v1 = v0[23];
  v2 = v0[21];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD000000000000026, 0x800000010137B4A0, &v32);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed due to %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  v10 = v0[23];
  v11 = v0[9];
  v12 = v0[10];
  v14 = v0[7];
  v13 = v0[8];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  v18 = *(sub_1000BC4D4(&unk_1016C7DD0, &unk_101406148) + 48);
  sub_1010FC79C(v17, v13, type metadata accessor for DiscoveredObject);
  (*(v12 + 56))(v13 + v18, 1, 1, v11);
  swift_storeEnumTagMultiPayload();
  v16(v13);

  sub_10000B3A8(v13, &qword_1016C7DC8, &qword_101406140);
  v20 = v0[19];
  v19 = v0[20];
  v22 = v0[17];
  v21 = v0[18];
  v24 = v0[15];
  v23 = v0[16];
  v26 = v0[13];
  v25 = v0[14];
  v28 = v0[11];
  v27 = v0[12];
  v31 = v0[8];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1010E600C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DiscoveredObject(0);
  v80 = *(v7 - 8);
  v8 = *(v80 + 64);
  __chkstk_darwin(v7);
  v81 = v9;
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v68 = &v61 - v13;
  v14 = type metadata accessor for MACAddress();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v71 = sub_1000BC4D4(&qword_1016A94D0, &qword_1013BB4C0);
  v69 = *(v71 - 8);
  v17 = *(v69 + 64);
  __chkstk_darwin(v71);
  v82 = &v61 - v18;
  v19 = sub_1000BC4D4(&qword_1016C7DE0, &qword_101406158);
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = *(v72 + 64);
  __chkstk_darwin(v19);
  v70 = &v61 - v21;
  v22 = sub_1000BC4D4(&qword_1016C7DE8, &qword_101406160);
  v75 = *(v22 - 8);
  v76 = v22;
  v23 = *(v75 + 64);
  __chkstk_darwin(v22);
  v74 = &v61 - v24;
  v25 = sub_1000BC4D4(&unk_1016C7DF0, &qword_101406168);
  v78 = *(v25 - 8);
  v79 = v25;
  v26 = *(v78 + 64);
  __chkstk_darwin(v25);
  v77 = &v61 - v27;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v65 = v10;
    v66 = a1;
    v67 = a2;
    v29 = *(v7 + 32);
    v30 = *(*(result + 88) + 24);
    v31 = result;
    v63 = result;
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = *(v15 + 16);
    v64 = a4;
    v33(&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a4 + v29, v14);
    v34 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v35 = swift_allocObject();
    (*(v15 + 32))(v35 + v34, &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    *(v35 + ((v16 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v36 = sub_1000BC4D4(&qword_10169E840, &unk_101406170);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();

    v83 = Future.init(_:)();
    sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170);
    v39 = Publisher.eraseToAnyPublisher()();

    v83 = v39;
    v84 = *(v31 + 24);
    v40 = v84;
    v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v42 = v68;
    v62 = *(*(v41 - 8) + 56);
    v62(v68, 1, 1, v41);
    v43 = v40;
    sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500);
    sub_1004682F0();
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v42, &unk_1016B0FE0, &unk_101391980);

    if (qword_101695260 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v44, qword_1016C7A70);
    v83 = *(v63 + 24);
    v45 = v83;
    v62(v42, 1, 1, v41);
    sub_1000041A4(&qword_1016A9528, &qword_1016A94D0, &qword_1013BB4C0);
    v46 = v45;
    v48 = v70;
    v47 = v71;
    v49 = v82;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v42, &unk_1016B0FE0, &unk_101391980);

    (*(v69 + 8))(v49, v47);
    sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
    sub_1000041A4(&qword_1016C7E20, &qword_1016C7DE0, &qword_101406158);
    v50 = v73;
    v51 = v74;
    Publisher.map<A>(_:)();
    (*(v72 + 8))(v48, v50);
    sub_1000BC4D4(&qword_1016C7DA8, &qword_101406138);
    sub_1000041A4(&qword_1016C7E28, &qword_1016C7DE8, &qword_101406160);
    sub_1000041A4(&qword_1016C7DB8, &qword_1016C7DA8, &qword_101406138);
    v52 = v76;
    v53 = v77;
    Publisher.catch<A>(_:)();
    (*(v75 + 8))(v51, v52);
    v54 = v65;
    sub_1010FC79C(v64, v65, type metadata accessor for DiscoveredObject);
    v55 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v56 = (v81 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    sub_1010FC734(v54, v57 + v55, type metadata accessor for DiscoveredObject);
    v58 = (v57 + v56);
    v59 = v67;
    *v58 = v66;
    v58[1] = v59;
    sub_1000041A4(&qword_1016C7E30, &unk_1016C7DF0, &qword_101406168);

    v60 = v79;
    Publisher<>.sink(receiveValue:)();

    (*(v78 + 8))(v53, v60);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1010E6A64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000BC4D4(a2, a3);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  sub_1010FC79C(a1, &v8 - v6, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  swift_storeEnumTagMultiPayload();
  return Just.init(_:)();
}

uint64_t sub_1010E6B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = *v3;
  v26 = a3;
  v6 = type metadata accessor for DiscoveredObject(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v4[3];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = swift_allocObject();
    swift_weakInit();
    sub_1010FC79C(a1, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiscoveredObject);
    v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    sub_1010FC734(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for DiscoveredObject);
    *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
    v20 = sub_1000BC4D4(&qword_1016C7D38, &qword_101406108);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v27 = Future.init(_:)();
    sub_1000041A4(&qword_1016C7D40, &qword_1016C7D38, &qword_101406108);
    v23 = Publisher.eraseToAnyPublisher()();

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010E6E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DiscoveredObject(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v57 - v12;
  v14 = sub_1000BC4D4(&qword_1016C7D48, &qword_101406110);
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  __chkstk_darwin(v14);
  v17 = &v57 - v16;
  v72 = sub_1000BC4D4(&qword_1016C7D50, &qword_101406118);
  v70 = *(v72 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v72);
  v67 = &v57 - v19;
  v20 = sub_1000BC4D4(&qword_1016C7D58, &qword_101406120);
  v73 = *(v20 - 8);
  v74 = v20;
  v21 = *(v73 + 64);
  __chkstk_darwin(v20);
  v71 = &v57 - v22;
  v23 = sub_1000BC4D4(&qword_1016C7D60, &qword_101406128);
  v76 = *(v23 - 8);
  v77 = v23;
  v24 = *(v76 + 64);
  __chkstk_darwin(v23);
  v75 = &v57 - v25;
  v26 = sub_1000BC4D4(&qword_1016C7D68, &qword_101406130);
  v79 = *(v26 - 8);
  v80 = v26;
  v27 = *(v79 + 64);
  __chkstk_darwin(v26);
  v78 = &v57 - v28;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v62 = v8;
    v63 = v9;
    v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = a1;
    v66 = a2;
    v30 = *(result + 88);
    v31 = *(v7 + 32);
    v32 = result;
    v59 = result;

    v33 = sub_10035B054();

    v81 = v33;
    v82 = *(v32 + 24);
    v34 = v82;
    v35 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v36 = *(v35 - 8);
    v58 = *(v36 + 56);
    v57 = v36 + 56;
    v58(v13, 1, 1, v35);
    v37 = v34;
    v61 = a4;
    sub_1000BC4D4(&unk_1016C7D70, &qword_1013BB580);
    v38 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_1016A95C8, &unk_1016C7D70, &qword_1013BB580);
    sub_1004682F0();
    v60 = v38;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v13, &unk_1016B0FE0, &unk_101391980);

    type metadata accessor for BluetoothCommunicationCoordinator.Error();
    sub_1000041A4(&unk_1016C7D80, &qword_1016C7D48, &qword_101406110);
    sub_1010FBFB0(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    v39 = v67;
    v40 = v69;
    Publisher<>.setFailureType<A>(to:)();
    (*(v68 + 8))(v17, v40);
    if (qword_101695260 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v41, qword_1016C7A70);
    v81 = *(v59 + 24);
    v42 = v81;
    v58(v13, 1, 1, v35);
    sub_1000041A4(&unk_1016C7D90, &qword_1016C7D50, &qword_101406118);
    v43 = v42;
    v45 = v71;
    v44 = v72;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v13, &unk_1016B0FE0, &unk_101391980);

    (*(v70 + 8))(v39, v44);
    sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
    sub_1000041A4(&qword_1016C7DA0, &qword_1016C7D58, &qword_101406120);
    v46 = v74;
    v47 = v75;
    Publisher.map<A>(_:)();
    (*(v73 + 8))(v45, v46);
    sub_1000BC4D4(&qword_1016C7DA8, &qword_101406138);
    sub_1000041A4(&qword_1016C7DB0, &qword_1016C7D60, &qword_101406128);
    sub_1000041A4(&qword_1016C7DB8, &qword_1016C7DA8, &qword_101406138);
    v48 = v77;
    v49 = v78;
    Publisher.catch<A>(_:)();
    (*(v76 + 8))(v47, v48);
    v50 = v64;
    sub_1010FC79C(v61, v64, type metadata accessor for DiscoveredObject);
    v51 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v52 = (v63 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    sub_1010FC734(v50, v53 + v51, type metadata accessor for DiscoveredObject);
    v54 = (v53 + v52);
    v55 = v66;
    *v54 = v65;
    v54[1] = v55;
    sub_1000041A4(&qword_1016C7DC0, &qword_1016C7D68, &qword_101406130);

    v56 = v80;
    Publisher<>.sink(receiveValue:)();

    (*(v79 + 8))(v49, v56);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1010E783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1010FC79C(a1, a2, type metadata accessor for AccessoryMetadata);
  sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1010E78A8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v63 = a4;
  v64 = a3;
  v65 = a2;
  v58 = type metadata accessor for BluetoothCommunicationCoordinator.Error();
  v5 = *(*(v58 - 8) + 64);
  v6 = __chkstk_darwin(v58);
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v57 - v8;
  v62 = sub_1000BC4D4(&qword_1016C7DC8, &qword_101406140);
  v10 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v12 = &v57 - v11;
  v13 = type metadata accessor for DiscoveredObject(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  v20 = type metadata accessor for AccessoryMetadata(0);
  v59 = *(v20 - 8);
  v60 = v20;
  v21 = *(v59 + 64);
  __chkstk_darwin(v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v57 - v26;
  sub_1000D2A70(a1, &v57 - v26, &qword_10169E890, &unk_1013BB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1010FC734(v27, v9, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    v28 = v9;
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177AD20);
    sub_1010FC79C(v65, v17, type metadata accessor for DiscoveredObject);
    v30 = v9;
    v31 = v61;
    sub_1010FC79C(v30, v61, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v66 = v36;
      *v34 = 136446466;
      v37 = sub_1002E1B74(v36);
      v39 = v38;
      sub_1010FC804(v17, type metadata accessor for DiscoveredObject);
      v40 = sub_1000136BC(v37, v39, &v66);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2114;
      sub_1010FBFB0(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      swift_allocError();
      sub_1010FC79C(v31, v41, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      v42 = _swift_stdlib_bridgeErrorToNSError();
      sub_1010FC804(v31, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      *(v34 + 14) = v42;
      *v35 = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to fetch metadata for %{public}s. Error %{public}@", v34, 0x16u);
      sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v36);
    }

    else
    {

      sub_1010FC804(v31, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      sub_1010FC804(v17, type metadata accessor for DiscoveredObject);
    }

    v43 = v28;
    v44 = type metadata accessor for BluetoothCommunicationCoordinator.Error;
  }

  else
  {
    sub_1010FC734(v27, v23, type metadata accessor for AccessoryMetadata);
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000076D4(v45, qword_10177AD20);
    v46 = v65;
    sub_1010FC79C(v65, v19, type metadata accessor for DiscoveredObject);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v66 = v50;
      *v49 = 136446210;
      v51 = sub_1002E1B74(v50);
      v53 = v52;
      sub_1010FC804(v19, type metadata accessor for DiscoveredObject);
      v54 = sub_1000136BC(v51, v53, &v66);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "Successfully fetched metadata for %{public}s", v49, 0xCu);
      sub_100007BAC(v50);
    }

    else
    {

      sub_1010FC804(v19, type metadata accessor for DiscoveredObject);
    }

    v55 = *(sub_1000BC4D4(&unk_1016C7DD0, &unk_101406148) + 48);
    sub_1010FC79C(v46, v12, type metadata accessor for DiscoveredObject);
    sub_1010FC79C(v23, &v12[v55], type metadata accessor for AccessoryMetadata);
    (*(v59 + 56))(&v12[v55], 0, 1, v60);
    swift_storeEnumTagMultiPayload();
    v64(v12);
    sub_10000B3A8(v12, &qword_1016C7DC8, &qword_101406140);
    v44 = type metadata accessor for AccessoryMetadata;
    v43 = v23;
  }

  return sub_1010FC804(v43, v44);
}

uint64_t sub_1010E8050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for DiscoveredObject(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AD20);
  v37 = a1;
  sub_1010FC79C(a1, v13, type metadata accessor for DiscoveredObject);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = v7;
    v20 = v19;
    v39 = v19;
    *v18 = 136446210;
    v21 = sub_1002E1B74(v19);
    v23 = v22;
    sub_1010FC804(v13, type metadata accessor for DiscoveredObject);
    v24 = sub_1000136BC(v21, v23, &v39);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Validate %{public}s", v18, 0xCu);
    sub_100007BAC(v20);
    v7 = v35;

    a2 = v34;
  }

  else
  {

    sub_1010FC804(v13, type metadata accessor for DiscoveredObject);
  }

  v25 = swift_allocObject();
  swift_weakInit();
  sub_1010FC79C(v37, v11, type metadata accessor for DiscoveredObject);
  sub_1000D2A70(a2, v7, &qword_1016A62A0, &unk_101396E10);
  v26 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v27 = (v9 + *(v38 + 80) + v26) & ~*(v38 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  sub_1010FC734(v11, v28 + v26, type metadata accessor for DiscoveredObject);
  sub_1010FC0D4(v7, v28 + v27);
  v29 = sub_1000BC4D4(&qword_1016C7CA0, &qword_1014060B8);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t sub_1010E844C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v169 = a5;
  v170 = a1;
  v7 = sub_1000BC4D4(&qword_1016C7CA8, &qword_1014060C0);
  v167 = *(v7 - 8);
  v168 = v7;
  v8 = *(v167 + 64);
  __chkstk_darwin(v7);
  v166 = &v139 - v9;
  v148 = sub_1000BC4D4(&unk_1016C7CB0, &qword_1014060C8);
  v146 = *(v148 - 8);
  v10 = *(v146 + 64);
  __chkstk_darwin(v148);
  v145 = &v139 - v11;
  v12 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v165 = &v139 - v14;
  v152 = type metadata accessor for AccessoryMetadata(0);
  v153 = *(v152 - 8);
  v15 = *(v153 + 64);
  __chkstk_darwin(v152);
  v144 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v155 = *(v17 - 8);
  v18 = *(v155 + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v156 = &v139 - v23;
  v154 = v24;
  __chkstk_darwin(v22);
  v26 = &v139 - v25;
  v158 = sub_1000BC4D4(&qword_1016C7CC0, &qword_1013BB5D8);
  v157 = *(v158 - 8);
  v27 = *(v157 + 64);
  v28 = __chkstk_darwin(v158);
  v151 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v143 = &v139 - v30;
  v31 = sub_1000BC4D4(&qword_1016C7CC8, &qword_1014060D0);
  v159 = *(v31 - 8);
  v160 = v31;
  v32 = *(v159 + 64);
  v33 = __chkstk_darwin(v31);
  v150 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v142 = &v139 - v35;
  v36 = sub_1000BC4D4(&qword_1016C7CD0, &qword_1014060D8);
  v161 = *(v36 - 8);
  v162 = v36;
  v37 = *(v161 + 64);
  v38 = __chkstk_darwin(v36);
  v149 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v141 = &v139 - v40;
  v41 = type metadata accessor for DiscoveredObject(0);
  v171 = *(v41 - 8);
  v42 = *(v171 + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v45 = &v139 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v43);
  v48 = &v139 - v47;
  v172 = v49;
  __chkstk_darwin(v46);
  v163 = &v139 - v50;
  v51 = sub_1000BC4D4(&qword_1016C7CD8, &unk_1014060E0);
  v140 = *(v51 - 8);
  v52 = *(v140 + 64);
  __chkstk_darwin(v51);
  v54 = &v139 - v53;
  v55 = swift_allocObject();
  *(v55 + 16) = v170;
  *(v55 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v147 = v55;
    v56 = *a4;
    v57 = a4[1];
    v170 = a4;
    if (v57)
    {
      if (v56)
      {
        v58 = qword_101694708;

        v59 = v165;
        if (v58 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_1000076D4(v60, qword_10177AD20);
        sub_1010FC79C(v170, v45, type metadata accessor for DiscoveredObject);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        v63 = os_log_type_enabled(v61, v62);
        v64 = Strong;
        if (v63)
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v173 = v66;
          *v65 = 136446210;
          v67 = sub_1002E1B74(v66);
          v69 = v68;
          sub_1010FC804(v45, type metadata accessor for DiscoveredObject);
          v70 = sub_1000136BC(v67, v69, &v173);

          *(v65 + 4) = v70;
          _os_log_impl(&_mh_execute_header, v61, v62, "Unsupported type %{public}s", v65, 0xCu);
          sub_100007BAC(v66);

LABEL_8:

LABEL_23:
          v173 = 0;
          sub_1000BC4D4(&qword_1016C7CE8, &qword_1014060F0);
          v100 = v145;
          Just.init(_:)();
          sub_1000041A4(&qword_1016C7D28, &unk_1016C7CB0, &qword_1014060C8);
          v101 = v148;
          v94 = Publisher.eraseToAnyPublisher()();
          (*(v146 + 8))(v100, v101);
          v83 = v163;
          goto LABEL_24;
        }

        v99 = v45;
        goto LABEL_22;
      }

      v95 = sub_1002E1B4C();
      v59 = v165;
      if ((v95 - 2) >= 2)
      {
        v111 = v171;
        if (v95)
        {
          v83 = v163;
          sub_1010FC79C(v170, v163, type metadata accessor for DiscoveredObject);
          v135 = (*(v111 + 80) + 24) & ~*(v111 + 80);
          v136 = swift_allocObject();
          v137 = Strong;
          *(v136 + 16) = Strong;
          sub_1010FC734(v83, v136 + v135, type metadata accessor for DiscoveredObject);
          sub_1000041A4(&qword_1016C7D28, &unk_1016C7CB0, &qword_1014060C8);

          Deferred.init(createPublisher:)();
          sub_1000041A4(&qword_1016C7D30, &qword_1016C7CD8, &unk_1014060E0);
          v94 = Publisher.eraseToAnyPublisher()();
          v138 = v51;
          v64 = v137;
          (*(v140 + 8))(v54, v138);
          goto LABEL_24;
        }

        v112 = qword_101694708;

        if (v112 != -1)
        {
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        sub_1000076D4(v113, qword_10177AD20);
        sub_1010FC79C(v170, v48, type metadata accessor for DiscoveredObject);
        v61 = Logger.logObject.getter();
        v114 = static os_log_type_t.error.getter();
        v115 = os_log_type_enabled(v61, v114);
        v64 = Strong;
        if (v115)
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v173 = v117;
          *v116 = 136446210;
          v118 = sub_1002E1B74(v117);
          v120 = v119;
          sub_1010FC804(v48, type metadata accessor for DiscoveredObject);
          v121 = sub_1000136BC(v118, v120, &v173);

          *(v116 + 4) = v121;
          _os_log_impl(&_mh_execute_header, v61, v114, "Unsupported type %{public}s", v116, 0xCu);
          sub_100007BAC(v117);

          goto LABEL_8;
        }

        v99 = v48;
LABEL_22:
        sub_1010FC804(v99, type metadata accessor for DiscoveredObject);
        goto LABEL_23;
      }

      v64 = Strong;
      v96 = *(Strong + 88);
      sub_1000D2A70(v169, v26, &qword_1016A62A0, &unk_101396E10);
      v97 = v153;
      if ((*(v153 + 48))(v26, 1, v152) == 1)
      {
        v98 = _swiftEmptyArrayStorage;
      }

      else
      {
        v122 = v144;
        sub_1010FC734(v26, v144, type metadata accessor for AccessoryMetadata);
        sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
        v123 = *(v97 + 72);
        v124 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v98 = swift_allocObject();
        *(v98 + 1) = xmmword_101385D80;
        sub_1010FC734(v122, v98 + v124, type metadata accessor for AccessoryMetadata);
      }

      v125 = sub_100366634(v98);

      v173 = v125;
      v174 = *(v64 + 24);
      v126 = v174;
      v127 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v127 - 8) + 56))(v59, 1, 1, v127);
      v128 = v126;
      sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90);
      sub_1004682F0();
      v129 = v143;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v59, &unk_1016B0FE0, &unk_101391980);

      v83 = v163;
      sub_1010FC79C(v170, v163, type metadata accessor for DiscoveredObject);
      v130 = v156;
      sub_1000D2A70(v169, v156, &qword_1016A62A0, &unk_101396E10);
      v131 = (*(v171 + 80) + 24) & ~*(v171 + 80);
      v132 = (v172 + *(v155 + 80) + v131) & ~*(v155 + 80);
      v133 = swift_allocObject();
      *(v133 + 16) = v64;
      sub_1010FC734(v83, v133 + v131, type metadata accessor for DiscoveredObject);
      sub_1010FC0D4(v130, v133 + v132);

      sub_1000BC4D4(&qword_1016C7CE8, &qword_1014060F0);
      sub_1000041A4(&qword_1016C7CF0, &qword_1016C7CC0, &qword_1013BB5D8);
      v88 = v142;
      v134 = v158;
      Publisher.map<A>(_:)();

      (*(v157 + 8))(v129, v134);
      v173 = 0;
      sub_1000041A4(&qword_1016C7CF8, &qword_1016C7CC8, &qword_1014060D0);
      v90 = &v173;
    }

    else
    {
      if (v56 == 1)
      {
        v71 = 1;
      }

      else
      {
        v71 = 2 * (v56 == 2);
      }

      v64 = Strong;
      v72 = *(Strong + 88);
      sub_1000D2A70(v169, v21, &qword_1016A62A0, &unk_101396E10);
      v73 = v153;
      if ((*(v153 + 48))(v21, 1, v152) == 1)
      {
        v74 = _swiftEmptyArrayStorage;
      }

      else
      {
        v75 = v144;
        sub_1010FC734(v21, v144, type metadata accessor for AccessoryMetadata);
        sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
        v76 = *(v73 + 72);
        v77 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v74 = swift_allocObject();
        *(v74 + 1) = xmmword_101385D80;
        sub_1010FC734(v75, v74 + v77, type metadata accessor for AccessoryMetadata);
      }

      v78 = sub_1003666F4(v74, v71);

      v173 = v78;
      v174 = *(v64 + 24);
      v79 = v174;
      v80 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v59 = v165;
      (*(*(v80 - 8) + 56))(v165, 1, 1, v80);
      v81 = v79;
      sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90);
      sub_1004682F0();
      v82 = v151;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v59, &unk_1016B0FE0, &unk_101391980);

      v83 = v163;
      sub_1010FC79C(v170, v163, type metadata accessor for DiscoveredObject);
      v84 = v156;
      sub_1000D2A70(v169, v156, &qword_1016A62A0, &unk_101396E10);
      v85 = (*(v171 + 80) + 24) & ~*(v171 + 80);
      v86 = (v172 + *(v155 + 80) + v85) & ~*(v155 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = v64;
      sub_1010FC734(v83, v87 + v85, type metadata accessor for DiscoveredObject);
      sub_1010FC0D4(v84, v87 + v86);

      sub_1000BC4D4(&qword_1016C7CE8, &qword_1014060F0);
      sub_1000041A4(&qword_1016C7CF0, &qword_1016C7CC0, &qword_1013BB5D8);
      v88 = v150;
      v89 = v158;
      Publisher.map<A>(_:)();

      (*(v157 + 8))(v82, v89);
      v173 = 0;
      sub_1000041A4(&qword_1016C7CF8, &qword_1016C7CC8, &qword_1014060D0);
      v90 = &v175;
    }

    v91 = *(v90 - 32);
    v92 = v160;
    Publisher.replaceError(with:)();
    (*(v159 + 8))(v88, v92);
    sub_1000041A4(&qword_1016C7D00, &qword_1016C7CD0, &qword_1014060D8);
    v93 = v162;
    v94 = Publisher.eraseToAnyPublisher()();
    (*(v161 + 8))(v91, v93);
LABEL_24:
    v173 = v94;
    v174 = *(v64 + 24);
    v102 = v174;
    v103 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v103 - 8) + 56))(v59, 1, 1, v103);

    v104 = v102;
    sub_1000BC4D4(&qword_1016C7D08, &unk_1014060F8);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_1016C7D10, &qword_1016C7D08, &unk_1014060F8);
    sub_1004682F0();
    v105 = v166;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v59, &unk_1016B0FE0, &unk_101391980);

    sub_1010FC79C(v170, v83, type metadata accessor for DiscoveredObject);
    v106 = (*(v171 + 80) + 32) & ~*(v171 + 80);
    v107 = swift_allocObject();
    v108 = v147;
    *(v107 + 16) = sub_100407A2C;
    *(v107 + 24) = v108;
    sub_1010FC734(v83, v107 + v106, type metadata accessor for DiscoveredObject);
    sub_1000041A4(&unk_1016C7D18, &qword_1016C7CA8, &qword_1014060C0);
    v109 = v168;
    Publisher<>.sink(receiveValue:)();

    (*(v167 + 8))(v105, v109);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }
}

uint64_t sub_1010E9AE0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v15 - v5;
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v15 - v9;
  v11 = type metadata accessor for AccessoryProductInfo();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_1010EA1EC(a2, v10, v6);
  sub_10000B3A8(v6, &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(v10, &qword_101697268, &qword_101394FE0);
  v15[1] = v13;
  sub_1000BC4D4(&qword_1016C7CE8, &qword_1014060F0);
  return Just.init(_:)();
}

uint64_t sub_1010E9CB4@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = type metadata accessor for AccessoryProductInfo();
  v15 = *(v14 - 8);
  v16 = v15;
  if (v13)
  {
    sub_1010FC79C(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v11, type metadata accessor for AccessoryProductInfo);
    (*(v16 + 56))(v11, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v11, 1, 1, v14);
  }

  v17 = sub_1010EA1EC(a2, v11, a3);
  result = sub_10000B3A8(v11, &qword_101697268, &qword_101394FE0);
  *a4 = v17;
  return result;
}

void sub_1010E9E24(void **a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DiscoveredObject(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11)
  {
    v12 = qword_101694708;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177AD20);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = a2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136446210;
      v21 = [v15 debugDescription];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_1000136BC(v22, v24, &v37);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully constructed unknown beacon %{public}s", v19, 0xCu);
      sub_100007BAC(v20);

      a2 = v36;
    }

    v36 = v15;
    (a2)(v11, 0);

    v26 = v36;
  }

  else
  {
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177AD20);
    sub_1010FC79C(a4, v10, type metadata accessor for DiscoveredObject);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136446210;
      v32 = sub_1002E1B74(v31);
      v34 = v33;
      sub_1010FC804(v10, type metadata accessor for DiscoveredObject);
      v35 = sub_1000136BC(v32, v34, &v37);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to construct unknown beacon: %{public}s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    else
    {

      sub_1010FC804(v10, type metadata accessor for DiscoveredObject);
    }
  }
}

uint64_t sub_1010EA1EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v360 = a3;
  v361 = a2;
  v374 = a1;
  v5 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v329 = v305 - v7;
  v331 = type metadata accessor for SharedBeaconRecord(0);
  v325 = *(v331 - 8);
  v8 = *(v325 + 64);
  v9 = __chkstk_darwin(v331);
  v323 = v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v330 = v305 - v12;
  __chkstk_darwin(v11);
  v326 = v305 - v13;
  v14 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v328 = v305 - v16;
  v17 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v352 = v305 - v19;
  v339 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v351 = *(v339 - 8);
  v20 = *(v351 + 64);
  v21 = __chkstk_darwin(v339);
  v336 = v305 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v335 = v305 - v24;
  __chkstk_darwin(v23);
  v333 = v305 - v25;
  v345 = type metadata accessor for DispatchTime();
  v344 = *(v345 - 8);
  v26 = *(v344 + 64);
  v27 = __chkstk_darwin(v345);
  v342 = v305 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v343 = v305 - v29;
  v337 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  v30 = *(*(v337 - 8) + 64);
  __chkstk_darwin(v337);
  v338 = v305 - v31;
  v32 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v350 = v305 - v34;
  v378 = type metadata accessor for WildModeAssociationRecord(0);
  v349 = *(v378 - 1);
  v35 = *(v349 + 64);
  v36 = __chkstk_darwin(v378);
  v341 = v305 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v334 = v305 - v39;
  v40 = __chkstk_darwin(v38);
  v346 = v305 - v41;
  __chkstk_darwin(v40);
  v362 = (v305 - v42);
  v43 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v366 = v305 - v45;
  v46 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v364 = v305 - v48;
  v49 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v353 = v305 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v365 = v305 - v54;
  __chkstk_darwin(v53);
  v363 = v305 - v55;
  v354 = type metadata accessor for Date();
  v371 = *(v354 - 8);
  v56 = *(v371 + 64);
  __chkstk_darwin(v354);
  v370 = v305 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v59 = *(*(v58 - 8) + 64);
  v60 = __chkstk_darwin(v58 - 8);
  v355 = v305 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v356 = (v305 - v62);
  v372 = type metadata accessor for MACAddress();
  v375 = *(v372 - 8);
  v63 = v375[8];
  v64 = __chkstk_darwin(v372);
  v347 = v305 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v369 = v305 - v66;
  v67 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v68 = *(*(v67 - 8) + 64);
  v69 = __chkstk_darwin(v67 - 8);
  v348 = v305 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v72 = v305 - v71;
  v377 = type metadata accessor for UUID();
  v373 = *(v377 - 8);
  v73 = v373[8];
  v74 = __chkstk_darwin(v377);
  v327 = v305 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v376 = v305 - v76;
  v77 = type metadata accessor for WildModeTrackingLocation(0);
  v340 = *(v77 - 1);
  v78 = *(v340 + 64);
  __chkstk_darwin(v77);
  v80 = (v305 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = type metadata accessor for DiscoveredObject(0);
  v82 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v84 = v305 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchPredicate();
  v86 = *(v85 - 8);
  v87 = *(v86 + 64);
  __chkstk_darwin(v85);
  v89 = (v305 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  v368 = v4;
  v90 = *(v4 + 24);
  *v89 = v90;
  (*(v86 + 104))(v89, enum case for DispatchPredicate.onQueue(_:), v85);
  v91 = v90;
  v92 = _dispatchPreconditionTest(_:)();
  v94 = *(v86 + 8);
  v93 = v86 + 8;
  v94(v89, v85);
  if ((v92 & 1) == 0)
  {
    __break(1u);
    goto LABEL_81;
  }

  v96 = v374;
  v97 = &v374[*(v81 + 36)];
  v85 = v97[1];
  if ((v85 & 0x2000000000000000) != 0)
  {
    return 0;
  }

  v92 = *v97;
  v98 = *v374;
  if (v374[1] == 1)
  {
    sub_100017D5C(*v97, v97[1]);
    if (v98)
    {
      if (qword_101694708 != -1)
      {
        swift_once();
      }

      v99 = type metadata accessor for Logger();
      sub_1000076D4(v99, qword_10177AD20);
      sub_1010FC79C(v96, v84, type metadata accessor for DiscoveredObject);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v382 = swift_slowAlloc();
        *v102 = 136315394;
        v103 = sub_1000136BC(0xD00000000000002ELL, 0x800000010137B400, &v382);
        *(v102 + 4) = v103;
        *(v102 + 12) = 2082;
        v104 = sub_1002E1B74(v103);
        v105 = v92;
        v107 = v106;
        sub_1010FC804(v84, type metadata accessor for DiscoveredObject);
        v108 = sub_1000136BC(v104, v107, &v382);

        *(v102 + 14) = v108;
        _os_log_impl(&_mh_execute_header, v100, v101, "%s Unsupported type %{public}s", v102, 0x16u);
        swift_arrayDestroy();

        sub_10001E524(v105, v85);
      }

      else
      {
        sub_10001E524(v92, v85);

        sub_1010FC804(v84, type metadata accessor for DiscoveredObject);
      }

      return 0;
    }

    v359 = v72;
    v324 = 1;
    v321 = 0;
    v357 = v92;
    v358 = v85;
  }

  else
  {
    v324 = v374[1];
    v357 = 0;
    v358 = 0xB000000000000000;
    v321 = v98;
    v359 = v72;
  }

  v109 = *(v368 + 96);
  v110 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v111 = *(v109 + v110);
  LODWORD(v318) = v98;
  if (v111)
  {
    v112 = v111;
    sub_100029784(v92, v85);
    v84 = v112;
    [v84 coordinate];
    *v80 = v113;
    [v84 coordinate];
    v80[1] = v114;
    [v84 horizontalAccuracy];
    v80[2] = v115;
    v116 = [v84 timestamp];
    v117 = v80 + *(v77 + 7);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v77 = sub_100A5DE18(0, 1, 1, _swiftEmptyArrayStorage);
    v93 = v77[2];
    v95 = v77[3];
    v81 = v93 + 1;
    v90 = v377;
    if (v93 < v95 >> 1)
    {
LABEL_13:

      v77[2] = v81;
      sub_1010FC734(v80, v77 + ((*(v340 + 80) + 32) & ~*(v340 + 80)) + *(v340 + 72) * v93, type metadata accessor for WildModeTrackingLocation);
      goto LABEL_15;
    }

LABEL_81:
    v77 = sub_100A5DE18(v95 > 1, v81, 1, v77);
    goto LABEL_13;
  }

  sub_100017D5C(v92, v85);
  v77 = _swiftEmptyArrayStorage;
  v90 = v377;
LABEL_15:
  UUID.init()();
  v118 = v373 + 7;
  v119 = v373[7];
  v119(v359, 1, 1, v90);
  sub_100017D5C(v92, v85);
  v120 = static MACAddress.length.getter();
  sub_10002EA98(v120, v92, v85, &v380);
  v121 = v356;
  MACAddress.init(data:type:)();
  v122 = v375;
  v123 = v375[6];
  v124 = v372;
  v320 = v375 + 6;
  v319 = v123;
  result = v123(v121, 1, v372);
  v367 = v85;
  v340 = v92;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v332 = swift_allocBox();
    v322 = v126;
    v127 = v122[4];
    v309 = v122 + 4;
    v308 = v127;
    v127(v369, v121, v124);

    static Date.trustedNow.getter(v370);
    v356 = v77;
    v128 = *(v371 + 56);
    v129 = v354;
    v128(v363, 1, 1, v354);
    v317 = sub_1002E1B4C();
    sub_1000D2A70(v360, v364, &qword_1016A62A0, &unk_101396E10);
    sub_1000D2A70(v361, v366, &qword_101697268, &qword_101394FE0);
    v128(v365, 1, 1, v129);
    v130 = v324 ^ 1;
    if (v318)
    {
      v130 = 1;
    }

    LODWORD(v374) = v130;
    v310 = v378[5];
    v131 = v362;
    v307 = v118;
    v306 = v119;
    v119(v362 + v310, 1, 1, v90);
    v311 = v378[6];
    v132 = v378[11];
    v128(v131 + v132, 1, 1, v129);
    v133 = (v131 + v378[12]);
    v134 = v378[14];
    v313 = v134;
    v135 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v135 - 8) + 56))(v131 + v134, 1, 1, v135);
    v136 = v122;
    v137 = v378[15];
    v138 = type metadata accessor for AccessoryProductInfo();
    (*(*(v138 - 8) + 56))(v131 + v137, 1, 1, v138);
    v312 = v378[16];
    v139 = v378[17];
    v314 = v139;
    sub_100309400(v357, v358);
    *(v131 + v139) = sub_100908B38(_swiftEmptyArrayStorage);
    v140 = v378[18];
    static Date.trustedNow.getter(v131 + v140);
    v128(v131 + v140, 0, 1, v129);
    v315 = v378[19];
    v128(v131 + v315, 1, 1, v129);
    v318 = v378[21];
    v316 = (v131 + v378[22]);
    v141 = v373[2];
    v305[1] = v373 + 2;
    v305[0] = v141;
    v141(v131, v376, v377);
    sub_1001DA61C(v359, v131 + v310, &qword_1016980D0, &unk_10138F3B0);
    *(v131 + v311) = 0;
    (v136[2])(v131 + v378[7], v369, v372);
    *(v131 + v378[8]) = v356;
    *(v131 + v378[9]) = 3;
    (*(v371 + 16))(v131 + v378[10], v370, v129);
    v142 = v131 + v132;
    v143 = v363;
    sub_1001DA61C(v363, v142, &unk_101696900, &unk_10138B1E0);
    v133[1] = 0;
    v133[2] = 0;
    *v133 = 0;
    *(v131 + v378[13]) = v317;
    v144 = v364;
    sub_1001DA61C(v364, v131 + v313, &qword_1016A62A0, &unk_101396E10);
    v145 = v366;
    sub_1001DA61C(v366, v131 + v137, &qword_101697268, &qword_101394FE0);
    *(v131 + v312) = 7;
    v146 = v353;
    static Date.trustedNow.getter(v353);
    v128(v146, 0, 1, v129);
    v147 = v378;
    sub_1008CCF08(v146, v131 + v140);
    sub_1000D2A70(v131 + v140, v146, &unk_101696900, &unk_10138B1E0);
    sub_1001DE1F0(v146, 7);
    sub_10000B3A8(v145, &qword_101697268, &qword_101394FE0);
    sub_10000B3A8(v144, &qword_1016A62A0, &unk_101396E10);
    v148 = v143;
    v149 = v147;
    sub_10000B3A8(v148, &unk_101696900, &unk_10138B1E0);
    (*(v371 + 8))(v370, v129);
    v150 = v375[1];
    v151 = v372;
    ++v375;
    v150(v369, v372);
    sub_10000B3A8(v359, &qword_1016980D0, &unk_10138F3B0);
    v152 = v373 + 1;
    v153 = v376;
    v376 = v373[1];
    (v376)(v153, v377);
    sub_1008CCF08(v365, v131 + v315);
    v154 = (v131 + v147[20]);
    v155 = v358;
    *v154 = v357;
    v154[1] = v155;
    *(v131 + v318) = v374;
    v156 = v316;
    *v316 = v321;
    v156[1] = v324;
    sub_1010FC734(v131, v322, type metadata accessor for WildModeAssociationRecord);
    v157 = *(v368 + 32);
    swift_unownedRetainStrong();
    v158 = v340;
    v159 = v367;
    sub_100017D5C(v340, v367);
    v160 = static MACAddress.length.getter();
    sub_10002EA98(v160, v158, v159, &v380);
    v161 = v355;
    MACAddress.init(data:type:)();
    result = v319(v161, 1, v151);
    if (result != 1)
    {
      v162 = v347;
      v308(v347, v161, v151);
      v163 = v350;
      sub_10125FD10(v162, v350);

      v150(v162, v151);
      v164 = (*(v349 + 48))(v163, 1, v149);
      v165 = v352;
      v166 = v351;
      if (v164 != 1)
      {
        v211 = v163;
        v212 = v346;
        sub_1010FC734(v211, v346, type metadata accessor for WildModeAssociationRecord);
        if (qword_101694708 != -1)
        {
          swift_once();
        }

        v213 = type metadata accessor for Logger();
        v214 = sub_1000076D4(v213, qword_10177AD20);
        v215 = v334;
        sub_1010FC79C(v212, v334, type metadata accessor for WildModeAssociationRecord);
        v216 = v340;
        v217 = v367;
        sub_100017D5C(v340, v367);
        v378 = v214;
        v218 = Logger.logObject.getter();
        v219 = static os_log_type_t.default.getter();
        sub_10001E524(v216, v217);
        if (os_log_type_enabled(v218, v219))
        {
          v220 = v215;
          v221 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v375 = v157;
          v379 = v222;
          *v221 = 136446466;
          sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID);
          v223 = dispatch thunk of CustomStringConvertible.description.getter();
          v225 = v224;
          v226 = v367;
          sub_1010FC804(v220, type metadata accessor for WildModeAssociationRecord);
          v227 = sub_1000136BC(v223, v225, &v379);

          *(v221 + 4) = v227;
          *(v221 + 12) = 2082;
          v380 = v216;
          v381 = v226;
          sub_10002EE9C();
          v228 = RawRepresentable<>.hexString.getter();
          v230 = sub_1000136BC(v228, v229, &v379);

          *(v221 + 14) = v230;
          _os_log_impl(&_mh_execute_header, v218, v219, "Found existing record %{public}s for advt %{public}s", v221, 0x16u);
          swift_arrayDestroy();
          v157 = v375;
          v212 = v346;
        }

        else
        {

          sub_1010FC804(v215, type metadata accessor for WildModeAssociationRecord);
        }

        v379 = 0;
        v254 = dispatch_group_create();
        dispatch_group_enter(v254);
        swift_unownedRetainStrong();
        v255 = v341;
        sub_1010FC79C(v212, v341, type metadata accessor for WildModeAssociationRecord);
        sub_1010ED0B4(v255, v356, v360, v361);

        v256 = v157[21];
        sub_1009F1D18(v255);
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v213, qword_10177BA08);
        v257 = Logger.logObject.getter();
        v258 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v257, v258))
        {
          v259 = swift_slowAlloc();
          *v259 = 67109120;
          _os_log_impl(&_mh_execute_header, v257, v258, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v259, 8u);
        }

        ThrottledDarwinPoster.post(bypassRateLimit:)(0);
        if (v260)
        {
        }

        v261 = v338;
        sub_1010FC79C(v255, v338, type metadata accessor for WildModeAssociationRecord);
        swift_storeEnumTagMultiPayload();
        sub_1010ED718(v261, v254, v332, &v379);

        v262 = v340;
        sub_10000B3A8(v261, &qword_1016A9590, &unk_1013BB520);
        sub_1010FC804(v255, type metadata accessor for WildModeAssociationRecord);
        v263 = v342;
        static DispatchTime.now()();
        v264 = v343;
        + infix(_:_:)();
        v265 = *(v344 + 8);
        v266 = v345;
        v265(v263, v345);
        OS_dispatch_group.wait(timeout:)();
        v265(v264, v266);
        if (static DispatchTimeoutResult.== infix(_:_:)())
        {
          v267 = Logger.logObject.getter();
          v268 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v267, v268))
          {
            v269 = swift_slowAlloc();
            *v269 = 0;
            _os_log_impl(&_mh_execute_header, v267, v268, "Timed out modifying UT record", v269, 2u);

            sub_10001E524(v262, v367);
            sub_100308D64(v357, v358);
          }

          else
          {
            sub_10001E524(v262, v367);
            sub_100308D64(v357, v358);
          }

          sub_1010FC804(v346, type metadata accessor for WildModeAssociationRecord);
        }

        else
        {
          sub_1010FC804(v212, type metadata accessor for WildModeAssociationRecord);

          swift_beginAccess();
          if (!v379)
          {
            goto LABEL_68;
          }

          sub_100308D64(v357, v358);
          sub_10001E524(v262, v367);
        }

        goto LABEL_75;
      }

      v373 = v152;
      sub_10000B3A8(v163, &unk_1016C7C90, &qword_1013BB4B0);
      swift_unownedRetainStrong();
      v167 = *(v157 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      v168 = 1;
      v169 = v348;
      v306(v348, 1, 1, v377);
      v170 = sub_1012DD334(v158, v367, v169);
      v171 = v170[2];
      if (v171)
      {
        sub_1010FC79C(v170 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * (v171 - 1), v165, type metadata accessor for BeaconKeyManager.IndexInformation);
        v168 = 0;
      }

      v172 = v336;
      v173 = v335;

      sub_10000B3A8(v348, &qword_1016980D0, &unk_10138F3B0);
      v174 = v168;
      v175 = v339;
      (*(v166 + 56))(v165, v174, 1, v339);
      if ((*(v166 + 48))(v165, 1, v175) == 1)
      {

        v176 = &unk_1016C1120;
        v177 = &qword_1013C49D0;
        v178 = v165;
      }

      else
      {
        v231 = v333;
        sub_1010FC734(v165, v333, type metadata accessor for BeaconKeyManager.IndexInformation);
        if (qword_101694708 != -1)
        {
          swift_once();
        }

        v232 = type metadata accessor for Logger();
        sub_1000076D4(v232, qword_10177AD20);
        sub_1010FC79C(v231, v173, type metadata accessor for BeaconKeyManager.IndexInformation);
        sub_1010FC79C(v231, v172, type metadata accessor for BeaconKeyManager.IndexInformation);
        v233 = v367;
        sub_100017D5C(v158, v367);
        v234 = Logger.logObject.getter();
        v235 = static os_log_type_t.default.getter();
        sub_10001E524(v158, v233);
        if (os_log_type_enabled(v234, v235))
        {
          v236 = v172;
          v237 = swift_slowAlloc();
          v238 = swift_slowAlloc();
          v375 = v157;
          v379 = v238;
          *v237 = 136315650;
          sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID);
          v239 = dispatch thunk of CustomStringConvertible.description.getter();
          v240 = v173;
          v242 = v241;
          sub_1010FC804(v240, type metadata accessor for BeaconKeyManager.IndexInformation);
          v243 = sub_1000136BC(v239, v242, &v379);

          *(v237 + 4) = v243;
          *(v237 + 12) = 2082;
          v244 = (v236 + *(v339 + 20));
          v245 = v244[4];
          sub_1000035D0(v244, v244[3]);
          v246 = *(v245 + 16);
          v247 = dispatch thunk of CustomStringConvertible.description.getter();
          v249 = v248;
          v158 = v340;
          sub_1010FC804(v236, type metadata accessor for BeaconKeyManager.IndexInformation);
          v250 = sub_1000136BC(v247, v249, &v379);

          *(v237 + 14) = v250;
          *(v237 + 22) = 2080;
          v380 = v158;
          v381 = v367;
          sub_10002EE9C();
          v251 = RawRepresentable<>.hexString.getter();
          v253 = sub_1000136BC(v251, v252, &v379);

          *(v237 + 24) = v253;

          _os_log_impl(&_mh_execute_header, v234, v235, "Found beacon %s\nand index %{public}s\nfor advt %s.", v237, 0x20u);
          swift_arrayDestroy();
          v157 = v375;
        }

        else
        {

          sub_1010FC804(v173, type metadata accessor for BeaconKeyManager.IndexInformation);
          sub_1010FC804(v172, type metadata accessor for BeaconKeyManager.IndexInformation);
        }

        v270 = v331;
        v271 = v330;
        v272 = v329;
        swift_unownedRetainStrong();
        v273 = v328;
        v274 = v333;
        sub_100AA33AC(v333, v328);

        v275 = type metadata accessor for OwnedBeaconRecord();
        v276 = (*(*(v275 - 8) + 48))(v273, 1, v275);
        sub_10000B3A8(v273, &unk_1016A9A20, &qword_10138B280);
        if (v276 != 1)
        {
          v277 = Logger.logObject.getter();
          v278 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v277, v278))
          {
            v279 = swift_slowAlloc();
            *v279 = 0;
            _os_log_impl(&_mh_execute_header, v277, v278, "Beacon belongs to owner. Not including in scan results", v279, 2u);

            sub_10001E524(v158, v367);
            sub_100308D64(v357, v358);
          }

          else
          {
            sub_10001E524(v158, v367);
            sub_100308D64(v357, v358);
          }

          sub_1010FC804(v274, type metadata accessor for BeaconKeyManager.IndexInformation);
          goto LABEL_75;
        }

        swift_unownedRetainStrong();
        sub_100AA5198(v274, v272);

        if ((*(v325 + 48))(v272, 1, v270) != 1)
        {
          v283 = v326;
          sub_1010FC734(v272, v326, type metadata accessor for SharedBeaconRecord);
          v284 = *(v283 + v270[16]);
          v179 = v322;
          if (v284 == 4 || v284 == 1)
          {
            sub_1010FC79C(v326, v271, type metadata accessor for SharedBeaconRecord);
            v285 = Logger.logObject.getter();
            v286 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v285, v286))
            {
              v287 = swift_slowAlloc();
              v288 = swift_slowAlloc();
              v380 = v288;
              *v287 = 136315138;
              sub_1010FC79C(v271, v323, type metadata accessor for SharedBeaconRecord);
              v289 = String.init<A>(describing:)();
              v290 = v271;
              v291 = v289;
              v293 = v292;
              sub_1010FC804(v290, type metadata accessor for SharedBeaconRecord);
              v294 = sub_1000136BC(v291, v293, &v380);
              v158 = v340;

              *(v287 + 4) = v294;
              _os_log_impl(&_mh_execute_header, v285, v286, "Found shared beacon %s", v287, 0xCu);
              sub_100007BAC(v288);
            }

            else
            {

              sub_1010FC804(v271, type metadata accessor for SharedBeaconRecord);
            }

            sub_1010FC804(v274, type metadata accessor for BeaconKeyManager.IndexInformation);
            v295 = v378;
            v296 = v378[5];
            sub_10000B3A8(v179 + v296, &qword_1016980D0, &unk_10138F3B0);
            v297 = v326;
            v298 = v377;
            (v305[0])(v179 + v296, v326 + v270[5], v377);
            v306(v179 + v296, 0, 1, v298);
            v299 = (v297 + v270[7]);
            v300 = *v299;
            v302 = *(v299 + 1);
            v301 = *(v299 + 2);

            sub_1010FC804(v297, type metadata accessor for SharedBeaconRecord);
            v303 = (v179 + v295[12]);
            v304 = v303[2];
            *v303 = v300;
            v303[1] = v302;
            v303[2] = v301;
          }

          else
          {
            sub_1010FC804(v326, type metadata accessor for SharedBeaconRecord);
            sub_1010FC804(v274, type metadata accessor for BeaconKeyManager.IndexInformation);
          }

          goto LABEL_25;
        }

        sub_1010FC804(v274, type metadata accessor for BeaconKeyManager.IndexInformation);
        v176 = &unk_101698C30;
        v177 = &unk_101392630;
        v178 = v272;
      }

      sub_10000B3A8(v178, v176, v177);
      v179 = v322;
LABEL_25:
      if (qword_101694708 != -1)
      {
        swift_once();
      }

      v180 = type metadata accessor for Logger();
      sub_1000076D4(v180, qword_10177AD20);
      v181 = v367;
      sub_100029784(v158, v367);

      v182 = Logger.logObject.getter();
      v183 = static os_log_type_t.default.getter();

      sub_10001E524(v158, v181);
      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        v375 = v157;
        v185 = v158;
        v186 = v184;
        v379 = swift_slowAlloc();
        *v186 = 136446466;
        swift_beginAccess();
        v187 = v327;
        v188 = v179;
        v189 = v377;
        (v305[0])(v327, v188, v377);
        sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID);
        v190 = dispatch thunk of CustomStringConvertible.description.getter();
        v192 = v191;
        v193 = v189;
        v179 = v322;
        (v376)(v187, v193);
        v194 = sub_1000136BC(v190, v192, &v379);

        *(v186 + 4) = v194;
        *(v186 + 12) = 2082;
        v380 = v185;
        v381 = v367;
        sub_10002EE9C();
        v195 = RawRepresentable<>.hexString.getter();
        v197 = sub_1000136BC(v195, v196, &v379);

        *(v186 + 14) = v197;
        _os_log_impl(&_mh_execute_header, v182, v183, "Saving new record %{public}s for advt %{public}s", v186, 0x16u);
        swift_arrayDestroy();
      }

      v198 = swift_allocObject();
      *(v198 + 16) = 0;
      v199 = dispatch_group_create();
      dispatch_group_enter(v199);
      swift_unownedRetainStrong();
      swift_beginAccess();
      v200 = v362;
      sub_1010FC79C(v179, v362, type metadata accessor for WildModeAssociationRecord);
      v201 = swift_allocObject();
      v201[2] = v199;
      v202 = v368;
      v201[3] = v332;
      v201[4] = v202;
      v201[5] = v198;

      v203 = v199;

      sub_100D76818(v200, sub_1010FC000, v201);

      sub_1010FC804(v200, type metadata accessor for WildModeAssociationRecord);
      v204 = v342;
      static DispatchTime.now()();
      v205 = v343;
      + infix(_:_:)();
      v206 = *(v344 + 8);
      v207 = v345;
      v206(v204, v345);
      OS_dispatch_group.wait(timeout:)();
      v206(v205, v207);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          *v210 = 0;
          _os_log_impl(&_mh_execute_header, v208, v209, "Timed out saving new UT record", v210, 2u);
        }

        sub_100308D64(v357, v358);

        goto LABEL_46;
      }

      swift_beginAccess();
      if (*(v198 + 16))
      {
        sub_100308D64(v357, v358);
LABEL_46:
        sub_10001E524(v340, v367);

LABEL_75:

        return 0;
      }

      v262 = v340;
LABEL_68:
      swift_unownedRetainStrong();
      v280 = v322;
      swift_beginAccess();
      v281 = v362;
      sub_1010FC79C(v280, v362, type metadata accessor for WildModeAssociationRecord);
      v282 = sub_10125EC08(v281);

      sub_10001E524(v262, v367);
      sub_100308D64(v357, v358);
      sub_1010FC804(v281, type metadata accessor for WildModeAssociationRecord);

      return v282;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1010ED0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a3;
  v64 = a4;
  v5 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v65 = &v54 - v7;
  v8 = type metadata accessor for AccessoryProductInfo();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  __chkstk_darwin(v8);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v59 = &v54 - v13;
  v14 = type metadata accessor for AccessoryMetadata(0);
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = *(v61 + 64);
  __chkstk_darwin(v14);
  v55 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WildModeTrackingLocation(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17 - 8);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v60 = type metadata accessor for WildModeAssociationRecord(0);
  v25 = v60[8];
  v68 = a1;
  v58 = v25;
  v26 = *(a1 + v25);
  v71 = v26;

  sub_10039A27C(v27);
  v28 = sub_10112A9D8(v71);

  v29 = v28[2];
  if (v29)
  {
    v30 = sub_1003A87B8(v28[2], 0);
    v31 = sub_1003AA07C(&v71, v30 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v29, v28);
    result = sub_1000128F8();
    if (v31 == v29)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_5:
  v57 = v26;
  v33 = v30[2];
  if (v33)
  {
    v34 = 0;
    v35 = _swiftEmptyArrayStorage;
    v69 = v30[2];
    v70 = v22;
    while (v34 < v30[2])
    {
      v36 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v37 = *(v18 + 72);
      sub_1010FC79C(v30 + v36 + v37 * v34, v24, type metadata accessor for WildModeTrackingLocation);
      if (sub_1010E16B4())
      {
        result = sub_1010FC804(v24, type metadata accessor for WildModeTrackingLocation);
      }

      else
      {
        sub_1010FC734(v24, v22, type metadata accessor for WildModeTrackingLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124B70(0, v35[2] + 1, 1);
          v35 = v71;
        }

        v40 = v35[2];
        v39 = v35[3];
        if (v40 >= v39 >> 1)
        {
          sub_101124B70(v39 > 1, v40 + 1, 1);
          v35 = v71;
        }

        v35[2] = v40 + 1;
        v41 = v35 + v36 + v40 * v37;
        v22 = v70;
        result = sub_1010FC734(v70, v41, type metadata accessor for WildModeTrackingLocation);
        v33 = v69;
      }

      if (v33 == ++v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_17:

    v42 = v68;
    v43 = v58;
    *(v68 + v58) = v35;
    sub_1010E1C04((v42 + v43));
    v44 = v59;
    sub_1000D2A70(v63, v59, &qword_1016A62A0, &unk_101396E10);
    v46 = v61;
    v45 = v62;
    if ((*(v61 + 48))(v44, 1, v62) == 1)
    {
      sub_10000B3A8(v44, &qword_1016A62A0, &unk_101396E10);
    }

    else
    {
      v47 = v55;
      sub_1010FC734(v44, v55, type metadata accessor for AccessoryMetadata);
      v48 = v60[14];
      sub_10000B3A8(v42 + v48, &qword_1016A62A0, &unk_101396E10);
      sub_1010FC734(v47, v42 + v48, type metadata accessor for AccessoryMetadata);
      (*(v46 + 56))(v42 + v48, 0, 1, v45);
    }

    v50 = v66;
    v49 = v67;
    v51 = v65;
    sub_1000D2A70(v64, v65, &qword_101697268, &qword_101394FE0);
    if ((*(v50 + 48))(v51, 1, v49) == 1)
    {
      return sub_10000B3A8(v51, &qword_101697268, &qword_101394FE0);
    }

    else
    {
      v52 = v56;
      sub_1010FC734(v51, v56, type metadata accessor for AccessoryProductInfo);
      v53 = v60[15];
      sub_10000B3A8(v42 + v53, &qword_101697268, &qword_101394FE0);
      sub_1010FC734(v52, v42 + v53, type metadata accessor for AccessoryProductInfo);
      return (*(v50 + 56))(v42 + v53, 0, 1, v49);
    }
  }

  return result;
}

void sub_1010ED718(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t *a4)
{
  v40 = a4;
  v41 = a2;
  v5 = type metadata accessor for WildModeAssociationRecord(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v40 - v17);
  v19 = swift_projectBox();
  sub_1000D2A70(a1, v18, &qword_1016A9590, &unk_1013BB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177AD20);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v20;
      v43[0] = v25;
      *v24 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v26 = String.init<A>(describing:)();
      v28 = sub_1000136BC(v26, v27, v43);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to update existing UT record. %s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    v29 = v40;
    swift_beginAccess();
    v30 = *v29;
    *v29 = v20;
  }

  else
  {
    sub_1010FC734(v18, v14, type metadata accessor for WildModeAssociationRecord);
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177AD20);
    sub_1010FC79C(v14, v12, type metadata accessor for WildModeAssociationRecord);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43[0] = v35;
      *v34 = 136315138;
      sub_1010FC79C(v12, v9, type metadata accessor for WildModeAssociationRecord);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      sub_1010FC804(v12, type metadata accessor for WildModeAssociationRecord);
      v39 = sub_1000136BC(v36, v38, v43);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Successfully modified existing record %s", v34, 0xCu);
      sub_100007BAC(v35);
    }

    else
    {

      sub_1010FC804(v12, type metadata accessor for WildModeAssociationRecord);
    }

    swift_beginAccess();
    sub_1010FC00C(v14, v19);
  }

  dispatch_group_leave(v41);
}

void sub_1010EDBD0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v51 = a2;
  v50 = type metadata accessor for WildModeAssociationRecord(0);
  v7 = *(*(v50 - 8) + 64);
  v8 = __chkstk_darwin(v50);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v48 - v12;
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v48 - v18);
  v20 = swift_projectBox();
  sub_1000D2A70(a1, v19, &qword_1016A9590, &unk_1013BB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v19;
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177AD20);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to save new UT record. %{public}@", v25, 0xCu);
      sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_beginAccess();
    v28 = *(a5 + 16);
    *(a5 + 16) = v21;
  }

  else
  {
    v48 = v20;
    sub_1010FC734(v19, v15, type metadata accessor for WildModeAssociationRecord);
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177AD20);
    sub_1010FC79C(v15, v13, type metadata accessor for WildModeAssociationRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v33;
      *v32 = 136446210;
      sub_1010FC79C(v13, v10, type metadata accessor for WildModeAssociationRecord);
      v34 = v50;
      v35 = String.init<A>(describing:)();
      v37 = v36;
      sub_1010FC804(v13, type metadata accessor for WildModeAssociationRecord);
      v38 = sub_1000136BC(v35, v37, &v52);

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "Successfully saved new record %{public}s", v32, 0xCu);
      sub_100007BAC(v33);
    }

    else
    {

      sub_1010FC804(v13, type metadata accessor for WildModeAssociationRecord);
      v34 = v50;
    }

    v39 = v48;
    swift_beginAccess();
    sub_1010FC070(v15, v39);
    v40 = v15[*(v34 + 64)];
    if (v40 != 8)
    {
      if ((v40 & 0xFA) != 0)
      {
        v41 = *(v49 + 32);
        swift_unownedRetainStrong();
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v29, qword_10177BA08);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 67109120;
          _os_log_impl(&_mh_execute_header, v42, v43, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v44, 8u);
        }

        ThrottledDarwinPoster.post(bypassRateLimit:)(0);
        if (v45)
        {
        }
      }

      if (v40 > 6 || v40 == 2)
      {
        v47 = *(v49 + 32);
        swift_unownedRetainStrong();
        sub_100A8AF58();
      }
    }

    sub_1010FC804(v15, type metadata accessor for WildModeAssociationRecord);
  }

  dispatch_group_leave(v51);
}

uint64_t sub_1010EE1DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v12 = a2;
  v13 = *(a1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + 48);
  *(a1 + 48) = 0x8000000000000000;
  sub_101002C6C(v12, v10, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v10, v6);
  *(a1 + 48) = v16;
  swift_endAccess();
  swift_beginAccess();
  *a3 = *(a1 + 40);
}

uint64_t sub_1010EE35C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v17;
    v5 = v18;
    v7 = v19;
    v6 = v20;
    v8 = v21;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v6 = 0;
  }

  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_1000128F8();
    }

    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    swift_dynamicCast();
    v14 = v6;
    v15 = v8;
    if (!v22)
    {
      return sub_1000128F8();
    }

LABEL_17:
    XPCSession.proxy.getter();
    if (v22)
    {
      [v22 discoveredUnknownAccessory:a2];
      swift_unknownObjectRelease();
    }

    v6 = v14;
    v8 = v15;
  }

  v12 = v6;
  v13 = v8;
  v14 = v6;
  if (v8)
  {
LABEL_13:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      return sub_1000128F8();
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v7 + 64) >> 6))
    {
      return sub_1000128F8();
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1010EE598(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_1000128F8();
    }

    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    swift_dynamicCast();
    v12 = v5;
    v13 = v6;
    if (!v21)
    {
      return sub_1000128F8();
    }

LABEL_17:
    XPCSession.proxy.getter();
    if (v21)
    {
      v15 = _convertErrorToNSError(_:)();
      [v21 unknownAccessoryDiscoveryError:v15];

      swift_unknownObjectRelease();
    }

    v5 = v12;
    v6 = v13;
  }

  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_13:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      return sub_1000128F8();
    }

    goto LABEL_17;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      return sub_1000128F8();
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1010EE7E4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_1000128F8();
    }

    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    swift_dynamicCast();
    v12 = v5;
    v13 = v6;
    if (!v20)
    {
      return sub_1000128F8();
    }

LABEL_17:
    XPCSession.proxy.getter();
    if (v20)
    {
      [v20 unknownAccessoryDiscoveryFinished];
      swift_unknownObjectRelease();
    }

    v5 = v12;
    v6 = v13;
  }

  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_13:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      return sub_1000128F8();
    }

    goto LABEL_17;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      return sub_1000128F8();
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1010EEA14(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  v8 = XPCSession.init(connection:)();
  if (v8)
  {
    v9 = v8;
    v10 = *(v2 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = v9;
    v7 = swift_allocObject();
    v7[2] = sub_1010FBFF8;
    v7[3] = v11;
    aBlock[4] = sub_1000D2FB0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_101666998;
    v12 = _Block_copy(aBlock);

    dispatch_sync(v10, v12);

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_101694708 != -1)
  {
LABEL_11:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AD20);
  v15 = v7;
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v15;
    *v18 = v15;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, oslog, v16, "Failed to make XPCSession from %@", v17, 0xCu);
    sub_10000B3A8(v18, &qword_10169BB30, &unk_10138B3C0);
  }
}

uint64_t sub_1010EECF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *(a1 + 40);
    }

    v6 = *(a1 + 40);

    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(v4 + 16);
  }

  swift_beginAccess();

  sub_100DF2408(&v23, a2);
  swift_endAccess();

  if (qword_101694708 != -1)
  {
LABEL_28:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177AD20);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = v7;
    *(v11 + 12) = 2048;
    v7 = *(a1 + 40);
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v12 = *(a1 + 40);
      }

      v13 = *(a1 + 40);

      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *(v7 + 16);
    }

    *(v11 + 14) = v14;

    _os_log_impl(&_mh_execute_header, v9, v10, "Session count: %ld -> %ld", v11, 0x16u);
  }

  else
  {
  }

  swift_beginAccess();
  a1 = *(a1 + 48);
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  while (v17)
  {
    v20 = v19;
LABEL_24:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v7 = *(*(a1 + 56) + ((v20 << 9) | (8 * v21)));
    XPCSession.proxy.getter();
    if (v23)
    {
      [v23 discoveredUnknownAccessory:v7];
      swift_unknownObjectRelease();
    }

    v19 = v20;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(a1 + 64 + 8 * v20);
    ++v19;
    if (v17)
    {
      goto LABEL_24;
    }
  }
}

void sub_1010EEFF4(void *a1, void *a2)
{
  v66 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  __chkstk_darwin(v3);
  v59 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v62 = a1;
  v64 = a1[5];
  if ((v64 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
    Set.Iterator.init(_cocoa:)();
    v6 = v69;
    v7 = v70;
    v8 = v71;
    v9 = v72;
    v10 = v73;
  }

  else
  {
    v11 = -1 << *(v64 + 32);
    v7 = v64 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v64 + 56);
    v6 = v64;
    swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v63 = v8;
  v14 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (!v10)
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v7 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_12:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

  if (v19)
  {
    while (1)
    {
      v65 = v10;
      v21 = v6;
      sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v9 = v17;
      v10 = v18;
      v6 = v21;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v20 = __CocoaSet.Iterator.next()();
      if (v20)
      {
        v67 = v20;
        sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
        swift_dynamicCast();
        v17 = v9;
        v18 = v10;
        if (v68)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    sub_1000128F8();

    v31 = v62;
    v32 = v62[5];
    if ((v32 & 0xC000000000000001) != 0)
    {
      if (v32 < 0)
      {
        v33 = v62[5];
      }

      v34 = v62[5];

      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *(v32 + 16);
    }

    swift_beginAccess();
    sub_1010F8A5C();
    swift_endAccess();

    v36 = v31[5];
    if ((v36 & 0xC000000000000001) != 0)
    {
      if (v36 < 0)
      {
        v37 = v31[5];
      }

      v38 = v31[5];

      v39 = __CocoaSet.count.getter();
    }

    else
    {
      v39 = *(v36 + 16);
    }

    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177AD20);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134218240;
      *(v43 + 4) = v35;
      *(v43 + 12) = 2048;
      v44 = v31[5];
      if ((v44 & 0xC000000000000001) != 0)
      {
        if (v44 < 0)
        {
          v45 = v31[5];
        }

        v46 = v31[5];

        v47 = __CocoaSet.count.getter();
      }

      else
      {
        v47 = *(v44 + 16);
      }

      *(v43 + 14) = v47;

      _os_log_impl(&_mh_execute_header, v41, v42, "Session count: %ld -> %ld", v43, 0x16u);

      if (v39)
      {
        goto LABEL_48;
      }
    }

    else
    {

      if (v39)
      {
        goto LABEL_48;
      }
    }

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Final session removed", v50, 2u);
    }

    v51 = *(v31[9] + 24);
    sub_10131ECB4();
    v52 = v31[2];
    v54 = v59;
    v53 = v60;
    *v59 = v52;
    v55 = v61;
    (*(v53 + 104))(v54, enum case for DispatchPredicate.onQueue(_:), v61);
    v56 = v52;
    LOBYTE(v52) = _dispatchPreconditionTest(_:)();

    (*(v53 + 8))(v54, v55);
    if ((v52 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v57 = v31[7];
    v31[7] = 0;
LABEL_48:

    return;
  }

LABEL_19:
  sub_1000128F8();

  if (qword_101694708 != -1)
  {
LABEL_50:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177AD20);
  v25 = v66;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "Could not find existing session for %@", v28, 0xCu);
    sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);
  }
}

uint64_t sub_1010EF708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v6[9] = v11;
  v12 = *(v11 - 8);
  v6[10] = v12;
  v6[11] = *(v12 + 64);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v13 = type metadata accessor for WildModeAssociationRecord(0);
  v6[15] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  v6[17] = v16;
  *v16 = v6;
  v16[1] = sub_1010EF8E0;

  return daemon.getter();
}

uint64_t sub_1010EF8E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v12 = *v1;
  v3[18] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[19] = v6;
  v7 = type metadata accessor for Daemon();
  v3[20] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1010FBFB0(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[21] = v9;
  v10 = sub_1010FBFB0(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1010EFAC0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1010EFAC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {
    v7 = sub_1010F0A6C;
    v8 = 0;
  }

  else
  {
    v9 = v4[18];

    v7 = sub_1010EFBF8;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1010EFBF8()
{
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[9];
  v5 = v0[2];
  v6 = *(v3 + 16);
  v0[24] = v6;
  v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[26] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_1010EFD68;
  v12 = v0[15];
  v11 = v0[16];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1001BCC5C, v8, v12);
}