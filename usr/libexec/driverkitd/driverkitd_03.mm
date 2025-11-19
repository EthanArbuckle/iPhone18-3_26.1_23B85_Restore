uint64_t sub_10003F210(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000D5764(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_10003F2C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_1001350D8, &qword_1000F4FB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_100061E08(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003F3F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100003CDC(&qword_1001350E8, &qword_1000F4FC0);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v24[48] = *(a1 + 80);
  *&v24[64] = v5;
  v24[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v24 = *(a1 + 32);
  *&v24[16] = v6;
  *&v24[32] = v4;
  v7 = *v24;
  sub_100014894(v24, v23, &qword_1001351C8, &qword_1000F50B8);
  result = sub_100061968(v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = a1 + 120;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v7;
    v11 = (v3[7] + 80 * result);
    *v11 = *&v24[8];
    v12 = *&v24[24];
    v13 = *&v24[40];
    v14 = *&v24[56];
    *(v11 + 57) = *&v24[65];
    v11[2] = v13;
    v11[3] = v14;
    v11[1] = v12;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v10 + 88;
    v19 = *(v10 + 32);
    v20 = *(v10 + 64);
    *&v24[48] = *(v10 + 48);
    *&v24[64] = v20;
    v24[80] = *(v10 + 80);
    v21 = *(v10 + 16);
    *v24 = *v10;
    *&v24[16] = v21;
    *&v24[32] = v19;
    v7 = *v24;
    sub_100014894(v24, v23, &qword_1001351C8, &qword_1000F50B8);
    result = sub_100061968(v7);
    v10 = v18;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003F5B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135048, &qword_1000F4F08);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_100061968(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003F6BC(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_1001351C0, &qword_1000F50B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003CDC(&qword_1001350C0, &qword_1000F4F98);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100014894(v10, v6, &qword_1001351C0, &qword_1000F50B0);
      result = sub_100061740(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for URL();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10003F8A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100003CDC(&qword_1001350C8, &qword_1000F4FA0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1000616D4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1000616D4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003F9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100003CDC(&qword_1001351B8, &qword_1000F50A8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1000616D4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1000616D4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003FAC4(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = v2 + 64;
    v6 = -1 << *(v2 + 32);
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v9 = *(v2 + 36);
    v25 = v2 + 72;
    v26 = v3;
    v28 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      if (v9 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v29 = v8;
      v12 = v5;
      v13 = (*(v2 + 48) + 16 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v2 + 56) + 8 * v7);

      a2(v14, v15, v16);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v2 = v28;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v10 = 1 << *(v28 + 32);
      if (v7 >= v10)
      {
        goto LABEL_24;
      }

      v18 = *(v12 + 8 * v11);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (v9 != *(v28 + 36))
      {
        goto LABEL_26;
      }

      v5 = v12;
      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v10 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v11 << 6;
        v21 = v11 + 1;
        v22 = (v25 + 8 * v11);
        while (v21 < (v10 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1000147E0(v7, v9, 0);
            v10 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        result = sub_1000147E0(v7, v9, 0);
LABEL_18:
        v2 = v28;
      }

      v8 = v29 + 1;
      v7 = v10;
      if (v29 + 1 == v26)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unint64_t sub_10003FD2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_1001350F8, &qword_1000F4FC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_100061ECC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10003FE2C(__objc2_class **a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v163 = a5;
  v152 = a4;
  v159 = a3;
  v160 = a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v147 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v157 = &v144 - v12;
  __chkstk_darwin(v11);
  v149 = &v144 - v13;
  v14 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v144 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v146 = &v144 - v19;
  v20 = __chkstk_darwin(v18);
  v150 = &v144 - v21;
  v22 = __chkstk_darwin(v20);
  v148 = &v144 - v23;
  v24 = __chkstk_darwin(v22);
  v145 = &v144 - v25;
  v26 = __chkstk_darwin(v24);
  v153 = &v144 - v27;
  v28 = __chkstk_darwin(v26);
  v162 = &v144 - v29;
  v30 = __chkstk_darwin(v28);
  v154 = &v144 - v31;
  v32 = __chkstk_darwin(v30);
  v155 = &v144 - v33;
  v34 = __chkstk_darwin(v32);
  v164 = &v144 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v144 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v144 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v144 - v43;
  __chkstk_darwin(v42);
  v46 = &v144 - v45;
  v47 = v7[7];
  v47(&v144 - v45, 1, 1, v6);
  v48 = OBJC_IVAR____TtC10driverkitd11OSExtension_originURL;
  swift_beginAccess();
  v161 = a1;
  v49 = a1 + v48;
  v50 = v7;
  sub_100014894(v49, v44, &unk_1001389D0, &qword_1000F4F60);
  v52 = v7[6];
  v51 = (v7 + 6);
  v165 = v52;
  v53 = v52(v44, 1, v6);
  v156 = v50;
  v158 = v47;
  if (v53 == 1)
  {
    sub_10000A184(v44, &unk_1001389D0, &qword_1000F4F60);
  }

  else
  {
    v54 = v149;
    (v50[4])(v149, v44, v6);
    sub_10007A7AC(v41);
    (v50[1])(v54, v6);
    sub_10000A184(v46, &unk_1001389D0, &qword_1000F4F60);
    v47(v41, 0, 1, v6);
    sub_100020D24(v41, v46, &unk_1001389D0, &qword_1000F4F60);
  }

  sub_100014894(v46, v38, &unk_1001389D0, &qword_1000F4F60);
  v55 = v165;
  v56 = v165(v38, 1, v6);
  sub_10000A184(v38, &unk_1001389D0, &qword_1000F4F60);
  v57 = v56 == 1;
  v58 = v163;
  v59 = v156;
  v60 = v158;
  v61 = v155;
  v62 = v154;
  v151 = v46;
  if (v57 && v55(v159, 1, v6) == 1)
  {
    sub_1000138F8((v161 + 3), &v167);
    if (v171)
    {
      sub_100013954(&v167);
      v172 = 0u;
      v173 = 0u;
      v174 = 0;
      sub_10000A184(&v172, &qword_1001342A8, &unk_1000F39C0);
      LODWORD(v155) = 0;
      v63 = 1;
      v64 = v164;
      goto LABEL_20;
    }

    sub_100009F34(&v167, &v172);
    sub_10000A184(&v172, &qword_1001342A8, &unk_1000F39C0);
  }

  sub_100014894(v46, v61, &unk_1001389D0, &qword_1000F4F60);
  if (v55(v61, 1, v6) == 1)
  {
    sub_100014894(v159, v62, &unk_1001389D0, &qword_1000F4F60);
    if (v55(v62, 1, v6) == 1)
    {
      sub_1000138F8((v161 + 3), &v167);
      if (v171)
      {
LABEL_93:
        result = sub_100013954(&v167);
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      sub_100009F34(&v167, &v172);
      v65 = *(&v173 + 1);
      v66 = v174;
      sub_100003C4C(&v172, *(&v173 + 1));
      (*(v66 + 64))(v65, v66);
      sub_100003C90(&v172);
      v67 = v154;
      v68 = v55(v154, 1, v6);
      v60 = v158;
      v61 = v155;
      if (v68 != 1)
      {
        sub_10000A184(v67, &unk_1001389D0, &qword_1000F4F60);
      }
    }

    else
    {
      (v59[4])(v157, v62, v6);
    }

    if (v55(v61, 1, v6) != 1)
    {
      sub_10000A184(v61, &unk_1001389D0, &qword_1000F4F60);
    }
  }

  else
  {
    (v59[4])(v157, v61, v6);
  }

  v64 = v164;
  v69 = v157;
  sub_1000C6EC4(v58[18], v58[19], v58[20], v58[21], v164);
  (v59[1])(v69, v6);
  v63 = 0;
  LODWORD(v155) = 1;
LABEL_20:
  v60(v64, v63, 1, v6);
  v70 = v153;
  sub_100014894(v64, v153, &unk_1001389D0, &qword_1000F4F60);
  v157 = v51;
  v71 = v55(v70, 1, v6);
  v72 = v161;
  if (v71 == 1)
  {
    sub_10000A184(v70, &unk_1001389D0, &qword_1000F4F60);
    v73 = 1;
    v74 = v6;
    v75 = v162;
  }

  else
  {
    v76 = v147;
    URL.deletingLastPathComponent()();
    v77 = v59[1];
    v77(v70, v6);
    v74 = v6;
    v75 = v162;
    sub_10007A7AC(v162);
    v77(v76, v74);
    v60 = v158;
    v73 = 0;
  }

  v158 = v74;
  v60(v75, v73, 1, v74);
  v78 = v58[69];
  if (v78)
  {
    v79 = v58[73];
    v80 = v58;
    v81 = v58[72];
    v82 = v80[71];
    v83 = v80[70];
    *&v167 = v78;
    *(&v167 + 1) = v83;
    v168 = v82;
    v169 = v81;
    v170 = v79;

    v84 = sub_1000D7374();
    v86 = v85;
    v87 = v160;

    v88 = v84;
    v75 = v162;
    v89 = sub_10009FAA0(v88, v86, v87);

    v90 = v89;

    v91 = v87;
    v59 = v156;

    v72 = v161;
  }

  else
  {
    v90 = 3;
    v91 = v160;
  }

  v92 = v165;
  if (*(v91 + 16) && (v93 = sub_100061588(0xD000000000000015, 0x8000000100105350), (v94 & 1) != 0) && (sub_10000B430(*(v91 + 56) + 32 * v93, &v172), (swift_dynamicCast() & 1) != 0) && v166 == 1)
  {
    if (!v155)
    {
      v105 = 0;
      v97 = 0;
      goto LABEL_39;
    }

    v95 = v145;
    sub_100014894(v75, v145, &unk_1001389D0, &qword_1000F4F60);
    v96 = v158;
    if (v92(v95, 1, v158) == 1)
    {
      sub_10000A184(v95, &unk_1001389D0, &qword_1000F4F60);
      v97 = 0;
    }

    else
    {
      URL.path.getter();
      (v59[1])(v95, v96);
      v142 = sub_100069024();

      v57 = (v142 & 1) == 0;
      v92 = v165;
      if (v57)
      {
        v97 = 0;
      }

      else
      {
        v97 = 0x8000;
      }
    }
  }

  else
  {
    v97 = 0;
    if (!v155)
    {
      v105 = 0;
      goto LABEL_39;
    }
  }

  v98 = v148;
  sub_100014894(v75, v148, &unk_1001389D0, &qword_1000F4F60);
  v99 = v158;
  if (v92(v98, 1, v158) == 1)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v100 = v163[12];
  v101 = URL.path.getter();
  v103 = v102;
  v104 = (v59[1])(v98, v99);
  *&v172 = v101;
  *(&v172 + 1) = v103;
  __chkstk_darwin(v104);
  *(&v144 - 2) = &v172;
  LOBYTE(v100) = sub_1000C7758(sub_100041D28, (&v144 - 4), v100);

  if (v100)
  {
    v97 |= 0x80000uLL;
    v75 = v162;
    goto LABEL_44;
  }

  v105 = 1;
  v75 = v162;
LABEL_39:
  v106 = sub_1000D7D88(&off_1001262B8);
  sub_100041BEC(&unk_1001262D8);
  if ((v106 & 1) != 0 && (sub_1000D7374(), v107._countAndFlagsBits = 0x6C7070612E6D6F63, v107._object = 0xE900000000000065, v108 = String.hasPrefix(_:)(v107), , v108))
  {
    v97 |= 0x80000uLL;
    if ((v105 & 1) == 0)
    {
LABEL_42:
      v109 = 0;
      goto LABEL_48;
    }
  }

  else if (!v105)
  {
    goto LABEL_42;
  }

LABEL_44:
  v110 = v165;
  v111 = v150;
  sub_100014894(v164, v150, &unk_1001389D0, &qword_1000F4F60);
  v112 = v158;
  if (v110(v111, 1, v158) == 1)
  {
    __break(1u);
    goto LABEL_92;
  }

  v113 = URL.path.getter();
  v115 = v114;
  v116 = (v59[1])(v111, v112);
  *&v172 = v113;
  *(&v172 + 1) = v115;
  __chkstk_darwin(v116);
  *(&v144 - 2) = &v172;
  LOBYTE(v113) = sub_1000C7758(sub_100041C40, (&v144 - 4), &off_100126140);

  if (v113)
  {
    v97 |= 0x180000uLL;
  }

  v109 = 1;
LABEL_48:
  v117 = v160;
  if (*(v160 + 16))
  {
    v118 = sub_100061588(0xD000000000000015, 0x8000000100105370);
    if (v119)
    {
      sub_10000B430(*(v117 + 56) + 32 * v118, &v172);
      if (swift_dynamicCast())
      {
        if (v166)
        {
          v97 |= 0x100000uLL;
        }
      }
    }
  }

  if (*(v117 + 16))
  {
    v120 = sub_100061588(0xD00000000000001BLL, 0x8000000100105080);
    if (v121)
    {
      sub_10000B430(*(v117 + 56) + 32 * v120, &v172);
      if ((swift_dynamicCast() & 1) != 0 && v166 == 1)
      {
        sub_100041AE0(v163);

        v122 = v152;
LABEL_58:
        v97 |= 0x10000uLL;
LABEL_68:
        v132 = v164;
        goto LABEL_69;
      }
    }
  }

  if (*v72 != _TtC10driverkitd15KernelExtension || (sub_1000D7374(), v123._countAndFlagsBits = 0x6C7070612E6D6F63, v123._object = 0xE900000000000065, v124 = String.hasPrefix(_:)(v123), , v124) || (v109 & 1) == 0)
  {

    sub_100041AE0(v163);
    goto LABEL_67;
  }

  LODWORD(v162) = v90;
  v125 = v146;
  sub_100014894(v75, v146, &unk_1001389D0, &qword_1000F4F60);
  v126 = v158;
  result = (v165)(v125, 1, v158);
  if (result == 1)
  {
    goto LABEL_94;
  }

  v128 = URL.path.getter();
  v130 = v129;
  v131 = v59[1];
  v131(v125, v126);
  if (v128 != 0xD000000000000013 || 0x8000000100105390 != v130)
  {
    v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

    LOBYTE(v90) = v162;
    if (v135)
    {
      sub_100041AE0(v163);

      goto LABEL_67;
    }

    v136 = v144;
    sub_100014894(v75, v144, &unk_1001389D0, &qword_1000F4F60);
    v137 = v158;
    result = (v165)(v136, 1, v158);
    if (result != 1)
    {

      v138 = v136;
      v139 = URL.path.getter();
      v141 = v140;
      v131(v138, v137);
      if (v139 != 0xD00000000000001ALL || 0x80000001001053B0 != v141)
      {
        v143 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100041AE0(v163);

        v122 = v152;
        if (v143)
        {
          goto LABEL_68;
        }

        goto LABEL_58;
      }

      sub_100041AE0(v163);

LABEL_67:
      v122 = v152;
      goto LABEL_68;
    }

LABEL_95:
    __break(1u);
    return result;
  }

  sub_100041AE0(v163);

  v122 = v152;
  v132 = v164;
  LOBYTE(v90) = v162;
LABEL_69:
  if (v90 != 3)
  {
    v133 = v97 | 0x20000;
    if (v90)
    {
      v133 = v97;
    }

    if (v90 == 1)
    {
      v97 = v133 | 0x40000;
    }

    else
    {
      v97 = v133;
    }
  }

  sub_10000A184(v75, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(v132, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(v151, &unk_1001389D0, &qword_1000F4F60);
  if (v122)
  {
    v134 = v97 | 0x400000;
  }

  else
  {
    v134 = v97;
  }

  sub_10000A184(v159, &unk_1001389D0, &qword_1000F4F60);
  return v134;
}

unint64_t sub_1000410BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100003CDC(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100061588(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000411B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135070, &qword_1000F4F30);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_100061F80(v5, v6, v7, v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 32 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v15 = v3[7] + 24 * result;
      *v15 = v9;
      *(v15 + 8) = v10;
      *(v15 + 16) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000412F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135160, &qword_1000F5048);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100061588(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000413F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135140, &qword_1000F5028);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_100061588(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100041508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135130, &qword_1000F5010);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100061588(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100041620(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100003CDC(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100061588(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100041714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135068, &qword_1000F4F28);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100061588(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100041810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100041878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000418E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100041A00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_100041A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041B54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003CDC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_100041BBC(unint64_t result)
{
  if (result != 5)
  {
    return sub_100014978(result);
  }

  return result;
}

uint64_t sub_100041C68()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041CA0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100041DC4(void (*a1)(uint64_t *))
{
  v3 = [objc_opt_self() enumeratorWithOptions:0];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100041ED0();
    v7 = v5;
    while (1)
    {
      v9[3] = v6;
      v9[4] = &off_100129D98;
      v9[0] = v7;
      v8 = v7;
      a1(v9);
      if (v1)
      {
        break;
      }

      sub_100003C90(v9);
      v7 = [v3 nextObject];
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    sub_100003C90(v9);
  }

  else
  {
LABEL_5:
  }
}

unint64_t sub_100041ED0()
{
  result = qword_100135348;
  if (!qword_100135348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100135348);
  }

  return result;
}

uint64_t sub_100041F90(char a1)
{
  v4[3] = &type metadata for KextsOutOfOSImageFeatureFlags;
  v4[4] = &off_10012DA10;
  LOBYTE(v4[0]) = a1 & 1;
  StaticString.description.getter();
  *sub_100003C4C(v4, &type metadata for KextsOutOfOSImageFeatureFlags);
  v1._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v1);

  String.utf8CString.getter();

  String.utf8CString.getter();

  v2 = j___os_feature_enabled_impl();

  sub_100003C90(v4);
  return v2;
}

uint64_t sub_1000420B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000420F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100042148(uint64_t a1)
{
  v3 = type metadata accessor for DriverBinEntry();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v33 = v1;
    v44 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v6, 0);
    v42 = v44;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = a1 + 72;
    v35 = v6;
    v36 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v14 = *(a1 + 36);
      v40 = v11;
      v41 = v14;
      v15 = v37;
      sub_1000418E0(*(a1 + 56) + *(v38 + 72) * v10, v37, type metadata accessor for DriverBinEntry);
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      strcpy(v43, "Staged bundle ");
      HIBYTE(v43[1]) = -18;
      v16 = v39;
      v17 = *(v39 + 28);
      type metadata accessor for URL();
      sub_1000470D8(&qword_1001342A0, &type metadata accessor for URL);
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 0x70706120726F6620;
      v19._object = 0xE900000000000020;
      String.append(_:)(v19);
      String.append(_:)(*(v15 + *(v16 + 20)));
      v21 = v43[0];
      v20 = v43[1];
      result = sub_1000471DC(v15, type metadata accessor for DriverBinEntry);
      v22 = v42;
      v44 = v42;
      v24 = v42[2];
      v23 = v42[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_1000635A4((v23 > 1), v24 + 1, 1);
        v22 = v44;
      }

      v22[2] = v24 + 1;
      v25 = &v22[2 * v24];
      v25[4] = v21;
      v25[5] = v20;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v36;
      v26 = *(v36 + 8 * v13);
      if ((v26 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v22;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v10 & 0x3F));
      if (v27)
      {
        v12 = __clz(__rbit64(v27)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v13 << 6;
        v29 = v13 + 1;
        v30 = (v34 + 8 * v13);
        while (v29 < (v12 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1000147E0(v10, v41, 0);
            v12 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1000147E0(v10, v41, 0);
      }

LABEL_4:
      v11 = v40 + 1;
      v10 = v12;
      if (v40 + 1 == v35)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100042504(uint64_t a1)
{
  v3 = sub_100003CDC(&qword_1001354F0, &qword_1000F5408);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = *(v8 + 16);
  v16 = a1;
  v26 = v17;
  v15(&v25 - v13, a1);
  if (*(*v1 + 16) && (v18 = *v1, , sub_1000615C4(v14), v20 = v19, , (v20 & 1) != 0))
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v27 = 0xD00000000000002DLL;
    v28 = 0x8000000100105990;
    sub_1000470D8(&qword_1001354D0, &type metadata accessor for UUID);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v21 = v26;
    (v15)(v12, v14, v26);
    sub_1000418E0(v16, v6, type metadata accessor for DriverBinEntry);
    v22 = type metadata accessor for DriverBinEntry();
    (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
    sub_100048218(v6, v12);
    return (*(v8 + 8))(v14, v21);
  }

  return result;
}

uint64_t sub_1000427FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = sub_100003CDC(&qword_1001354B0, &qword_1000F53F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100046E0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_100003CDC(&qword_100135490, &qword_1000F53E8);
  sub_100046F98();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000429B8()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x73656972746E65;
  }
}

uint64_t sub_1000429EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656972746E65 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100042AC8(uint64_t a1)
{
  v2 = sub_100046E0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042B04(uint64_t a1)
{
  v2 = sub_100046E0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042B40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100046C08(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_100042B90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DriverBinEntry();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(v6 - 8);
  v57 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UUID();
  v9 = *(v58 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v58);
  v52 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v49 - v17;
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v60 = 0xD000000000000013;
  v61 = 0x8000000100105910;
  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v59._countAndFlagsBits = *(a1 + 16);

  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x73656972746E6520;
  v22._object = 0xEA00000000000A3ALL;
  String.append(_:)(v22);
  v23 = 0;
  v55 = a1;
  v26 = *(a1 + 64);
  v25 = a1 + 64;
  v24 = v26;
  v27 = 1 << *(v25 - 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v24;
  v30 = (v27 + 63) >> 6;
  v49[2] = v9 + 16;
  v50 = v18;
  v49[0] = v25;
  v49[1] = v9 + 32;
  v53 = v9;
  v56 = (v9 + 8);
  v51 = v16;
  if ((v28 & v24) != 0)
  {
    while (1)
    {
      v31 = v23;
LABEL_12:
      v34 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v35 = v34 | (v31 << 6);
      v36 = v55;
      v37 = v52;
      v38 = v53;
      v39 = v58;
      (*(v53 + 16))(v52, *(v55 + 48) + *(v53 + 72) * v35, v58);
      v40 = v57;
      sub_1000418E0(*(v36 + 56) + *(v54 + 72) * v35, v57, type metadata accessor for DriverBinEntry);
      v41 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      v42 = *(v41 + 48);
      v43 = *(v38 + 32);
      v16 = v51;
      v43(v51, v37, v39);
      sub_100047174(v40, &v16[v42], type metadata accessor for DriverBinEntry);
      (*(*(v41 - 8) + 56))(v16, 0, 1, v41);
      v33 = v31;
      v18 = v50;
LABEL_13:
      sub_100020D24(v16, v18, &qword_1001342E0, &unk_1000F3A30);
      v44 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      if ((*(*(v44 - 8) + 48))(v18, 1, v44) == 1)
      {
        break;
      }

      v45 = v57;
      sub_100047174(&v18[*(v44 + 48)], v57, type metadata accessor for DriverBinEntry);
      v59._countAndFlagsBits = sub_10004310C();
      v59._object = v46;
      v47._countAndFlagsBits = 10;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);
      String.append(_:)(v59);

      sub_1000471DC(v45, type metadata accessor for DriverBinEntry);
      (*v56)(v18, v58);
      v23 = v33;
      if (!v29)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v30 <= v23 + 1)
    {
      v32 = v23 + 1;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 - 1;
    while (1)
    {
      v31 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v31 >= v30)
      {
        v48 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
        (*(*(v48 - 8) + 56))(v16, 1, 1, v48);
        v29 = 0;
        goto LABEL_13;
      }

      v29 = *(v49[0] + 8 * v31);
      ++v23;
      if (v29)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004310C()
{
  v1 = v0;
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  static TimeZone.current.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v7 setTimeZone:isa];

  type metadata accessor for UUID();
  sub_1000470D8(&qword_1001354D0, &type metadata accessor for UUID);
  v59 = dispatch thunk of CustomStringConvertible.description.getter();
  v60 = v9;
  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11 = type metadata accessor for DriverBinEntry();
  v12 = v11[6];
  v13 = type metadata accessor for URL();
  v54 = sub_1000470D8(&qword_1001342A0, &type metadata accessor for URL);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 10;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v58._countAndFlagsBits = 0xD000000000000011;
  v58._object = 0x8000000100105930;
  v16 = v1 + v11[5];
  v17 = sub_1000199E4();
  v20 = sub_10004448C(0x7FFFFFFFFFFFFFFFuLL, 1, v17, v18, v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    v50[1] = v13;
    v51 = v11;
    v52 = v1;
    v53 = v7;
    v57 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v21, 0);
    v22 = v57;
    v50[0] = v20;
    v23 = (v20 + 56);
    do
    {
      v24 = *(v23 - 3);
      v25 = *(v23 - 2);
      v26 = *(v23 - 1);
      v27 = *v23;
      v55 = 538976288;
      v56 = 0xE400000000000000;

      v28._countAndFlagsBits = static String._fromSubstring(_:)();
      String.append(_:)(v28);

      v29 = v55;
      v30 = v56;
      v57 = v22;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_1000635A4((v31 > 1), v32 + 1, 1);
        v22 = v57;
      }

      v22[2] = v32 + 1;
      v33 = &v22[2 * v32];
      v33[4] = v29;
      v33[5] = v30;
      v23 += 4;
      --v21;
    }

    while (v21);

    v1 = v52;
    v7 = v53;
    v11 = v51;
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v55 = v22;
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_100018594();
  v34 = BidirectionalCollection<>.joined(separator:)();
  v36 = v35;

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 10;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  String.append(_:)(v58);

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v58._countAndFlagsBits = 0xD000000000000013;
  v58._object = 0x8000000100105950;
  v39 = v1 + v11[7];
  v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 10;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  String.append(_:)(v58);

  v58._countAndFlagsBits = 0x656D695420202020;
  v58._object = 0xEF203A706D617473;
  v42 = v1 + v11[8];
  v43 = Date._bridgeToObjectiveC()().super.isa;
  v44 = [v7 stringFromDate:v43];

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v48._countAndFlagsBits = v45;
  v48._object = v47;
  String.append(_:)(v48);

  String.append(_:)(v58);

  return v59;
}

uint64_t sub_100043630(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_100044880(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000436C0()
{
  v1 = v0;
  _StringGuts.grow(_:)(27);

  strcpy(v7, "Staged bundle ");
  HIBYTE(v7[1]) = -18;
  v2 = type metadata accessor for DriverBinEntry();
  v3 = *(v2 + 28);
  type metadata accessor for URL();
  sub_1000470D8(&qword_1001342A0, &type metadata accessor for URL);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x70706120726F6620;
  v5._object = 0xE900000000000020;
  String.append(_:)(v5);
  String.append(_:)(*(v1 + *(v2 + 20)));
  return v7[0];
}

uint64_t sub_1000437E4(void *a1)
{
  v3 = sub_100003CDC(&qword_1001354E8, &qword_1000F5400);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100047084();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  type metadata accessor for UUID();
  sub_1000470D8(&qword_1001354C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = type metadata accessor for DriverBinEntry();
    v10 = v9[5];
    v19 = 1;
    type metadata accessor for ApplicationRecord(0);
    sub_1000470D8(&qword_1001349D8, type metadata accessor for ApplicationRecord);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v9[6];
    v18 = 2;
    type metadata accessor for URL();
    sub_1000470D8(&qword_100134990, &type metadata accessor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v9[7];
    v17 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v9[8];
    v16 = 4;
    type metadata accessor for Date();
    sub_1000470D8(&qword_100134608, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100043B0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v39 = type metadata accessor for Date();
  v36 = *(v39 - 8);
  v3 = *(v36 + 64);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URL();
  v43 = *(v47 - 8);
  v5 = *(v43 + 64);
  v6 = __chkstk_darwin(v47);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v35 - v8;
  v42 = type metadata accessor for ApplicationRecord(0);
  v9 = *(*(v42 - 1) + 64);
  __chkstk_darwin(v42);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin(v12);
  v48 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003CDC(&qword_1001354D8, &qword_1000F53F8);
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  __chkstk_darwin(v15);
  v18 = &v35 - v17;
  v19 = type metadata accessor for DriverBinEntry();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100047084();
  v49 = v18;
  v24 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return sub_100003C90(a1);
  }

  v50 = v19;
  v25 = v47;
  v55 = 0;
  sub_1000470D8(&qword_1001354A0, &type metadata accessor for UUID);
  v26 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 32))(v22, v48, v12);
  v54 = 1;
  sub_1000470D8(&qword_1001349C0, type metadata accessor for ApplicationRecord);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100047174(v11, &v22[v50[5]], type metadata accessor for ApplicationRecord);
  v53 = 2;
  sub_1000470D8(&qword_100134978, &type metadata accessor for URL);
  v27 = v41;
  v48 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v50[6];
  v29 = *(v43 + 32);
  v35 = v22;
  v41 = v29;
  (v29)(&v22[v28], v27, v25);
  v52 = 3;
  v30 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42 = a1;
  v31 = v35;
  (v41)(&v35[v50[7]], v30, v25);
  v51 = 4;
  sub_1000470D8(&qword_1001345F0, &type metadata accessor for Date);
  v33 = v38;
  v32 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v45 + 8))(v49, v26);
  (*(v36 + 32))(v31 + v50[8], v33, v32);
  sub_1000418E0(v31, v37, type metadata accessor for DriverBinEntry);
  sub_100003C90(v42);
  return sub_1000471DC(v31, type metadata accessor for DriverBinEntry);
}

uint64_t sub_100044314()
{
  v1 = *v0;
  v2 = 0x65626D754E6E6962;
  v3 = 0x5255646567617473;
  v4 = 0x7542646567617473;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F636552707061;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000443BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100047864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000443E4(uint64_t a1)
{
  v2 = sub_100047084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044420(uint64_t a1)
{
  v2 = sub_100047084();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10004448C@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    result = sub_100031B10((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_100031B10(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = _swiftEmptyArrayStorage;
  v15 = 15;
  v16 = 4294959064;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = String.subscript.getter();
        v9 = v19;
        result = sub_100046388(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = result;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = String.index(after:)();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = String.index(after:)();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v21 = String.subscript.getter();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_100031B10(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_100031B10((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = String.index(after:)();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = String.subscript.getter();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_100031B10(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v43;
LABEL_40:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_100031B10((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

uint64_t sub_100044880(uint64_t a1, uint64_t a2)
{
  v123 = type metadata accessor for DriverBinEntry();
  v4 = *(v123 - 1);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v123);
  v124 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v105 - v9;
  __chkstk_darwin(v8);
  v12 = &v105 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v121 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v105 - v18;
  v20 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  result = __chkstk_darwin(v22);
  v26 = &v105 - v25;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v116 = v24;
  v117 = 0;
  v122 = v4;
  v114 = a2;
  v27 = 0;
  v28 = *(a1 + 64);
  v106 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v105 = (v29 + 63) >> 6;
  v120 = (v14 + 32);
  v112 = v14 + 16;
  v113 = (v14 + 8);
  v115 = v26;
  v110 = v12;
  v111 = a1;
  v108 = v14;
  v109 = v13;
  v107 = v19;
  while (v31)
  {
    v119 = (v31 - 1) & v31;
    v32 = __clz(__rbit64(v31)) | (v27 << 6);
    v33 = v122;
LABEL_16:
    (*(v14 + 16))(v19, *(a1 + 48) + *(v14 + 72) * v32, v13);
    sub_1000418E0(*(a1 + 56) + *(v33 + 72) * v32, v12, type metadata accessor for DriverBinEntry);
    v38 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
    v39 = *(v38 + 48);
    v40 = v116;
    (*(v14 + 32))(v116, v19, v13);
    sub_100047174(v12, v40 + v39, type metadata accessor for DriverBinEntry);
    (*(*(v38 - 8) + 56))(v40, 0, 1, v38);
LABEL_17:
    v41 = v115;
    sub_100020D24(v40, v115, &qword_1001342E0, &unk_1000F3A30);
    v42 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
    v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *(v42 + 48);
    v46 = v121;
    (*v120)(v121, v41, v13);
    sub_100047174(v41 + v45, v10, type metadata accessor for DriverBinEntry);
    v47 = v114;
    v48 = sub_1000615C4(v46);
    v50 = v49;
    (*v113)(v46, v13);
    if ((v50 & 1) == 0)
    {
      goto LABEL_102;
    }

    v118 = v44;
    sub_1000418E0(*(v47 + 56) + *(v122 + 72) * v48, v124, type metadata accessor for DriverBinEntry);
    v51 = v10;
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_101;
    }

    v52 = v123[5];
    v53 = v124 + v52;
    v54 = &v10[v52];
    if ((*(v124 + v52) != *&v10[v52] || *(v124 + v52 + 8) != *&v10[v52 + 8]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_101;
    }

    v55 = type metadata accessor for ApplicationRecord(0);
    v56 = v55[5];
    result = static URL.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_101;
    }

    v57 = v55[6];
    v58 = *(v53 + v57);
    v59 = *&v54[v57];
    v60 = *(v58 + 16);
    if (v60 != *(v59 + 16))
    {
      goto LABEL_101;
    }

    if (v60 && v58 != v59)
    {
      v61 = (v58 + 40);
      v62 = (v59 + 40);
      while (1)
      {
        result = *(v61 - 1);
        if (result != *(v62 - 1) || *v61 != *v62)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v61 += 2;
        v62 += 2;
        if (!--v60)
        {
          goto LABEL_35;
        }
      }

LABEL_101:
      sub_1000471DC(v124, type metadata accessor for DriverBinEntry);
      v10 = v51;
LABEL_102:
      sub_1000471DC(v10, type metadata accessor for DriverBinEntry);
      return 0;
    }

LABEL_35:
    v64 = v55[7];
    v65 = *(v53 + v64);
    v66 = *(v53 + v64 + 8);
    v67 = &v54[v64];
    v69 = *v67;
    v68 = v67[1];
    v70 = v66 >> 62;
    v71 = v68 >> 62;
    if (v66 >> 62 == 3)
    {
      if (v65)
      {
        v72 = 0;
      }

      else
      {
        v72 = v66 == 0xC000000000000000;
      }

      if (v72 && v68 >> 62 == 3 && !v69 && v68 == 0xC000000000000000)
      {
        goto LABEL_70;
      }

      v75 = 0;
    }

    else if (v70)
    {
      if (v70 == 1)
      {
        LODWORD(v75) = HIDWORD(v65) - v65;
        if (__OFSUB__(HIDWORD(v65), v65))
        {
          goto LABEL_110;
        }

        v75 = v75;
      }

      else
      {
        v78 = *(v65 + 16);
        v77 = *(v65 + 24);
        v79 = __OFSUB__(v77, v78);
        v75 = v77 - v78;
        if (v79)
        {
          goto LABEL_111;
        }
      }
    }

    else
    {
      v75 = BYTE6(v66);
    }

    if (v71 > 1)
    {
      if (v71 != 2)
      {
        if (v75)
        {
          goto LABEL_101;
        }

        goto LABEL_70;
      }

      v82 = *(v69 + 16);
      v81 = *(v69 + 24);
      v79 = __OFSUB__(v81, v82);
      v80 = v81 - v82;
      if (v79)
      {
        goto LABEL_107;
      }
    }

    else if (v71)
    {
      LODWORD(v80) = HIDWORD(v69) - v69;
      if (__OFSUB__(HIDWORD(v69), v69))
      {
        goto LABEL_106;
      }

      v80 = v80;
    }

    else
    {
      v80 = BYTE6(v68);
    }

    if (v75 != v80)
    {
      goto LABEL_101;
    }

    if (v75 >= 1)
    {
      sub_1000146C4(v69, v68);
      v83 = v117;
      result = sub_10004617C(v65, v66, v69, v68);
      v117 = v83;
      if ((result & 1) == 0)
      {
        goto LABEL_101;
      }
    }

LABEL_70:
    v84 = v55[8];
    v85 = *(v53 + v84);
    v86 = *(v53 + v84 + 8);
    v87 = &v54[v84];
    v88 = *v87;
    v89 = v87[1];
    v90 = v86 >> 62;
    v91 = v89 >> 62;
    if (v86 >> 62 == 3)
    {
      v92 = 0;
      if (!v85 && v86 == 0xC000000000000000 && v89 >> 62 == 3)
      {
        v92 = 0;
        if (!v88 && v89 == 0xC000000000000000)
        {
          goto LABEL_96;
        }
      }

LABEL_83:
      if (v91 <= 1)
      {
        goto LABEL_84;
      }

      goto LABEL_89;
    }

    if (v90 == 2)
    {
      v94 = *(v85 + 16);
      v93 = *(v85 + 24);
      v79 = __OFSUB__(v93, v94);
      v92 = v93 - v94;
      if (v79)
      {
        goto LABEL_112;
      }

      goto LABEL_83;
    }

    if (v90 == 1)
    {
      LODWORD(v92) = HIDWORD(v85) - v85;
      if (__OFSUB__(HIDWORD(v85), v85))
      {
        goto LABEL_113;
      }

      v92 = v92;
      if (v91 <= 1)
      {
LABEL_84:
        if (v91)
        {
          LODWORD(v95) = HIDWORD(v88) - v88;
          if (__OFSUB__(HIDWORD(v88), v88))
          {
            goto LABEL_109;
          }

          v95 = v95;
        }

        else
        {
          v95 = BYTE6(v89);
        }

        goto LABEL_91;
      }
    }

    else
    {
      v92 = BYTE6(v86);
      if (v91 <= 1)
      {
        goto LABEL_84;
      }
    }

LABEL_89:
    if (v91 != 2)
    {
      if (v92)
      {
        goto LABEL_101;
      }

      goto LABEL_96;
    }

    v97 = *(v88 + 16);
    v96 = *(v88 + 24);
    v79 = __OFSUB__(v96, v97);
    v95 = v96 - v97;
    if (v79)
    {
      goto LABEL_108;
    }

LABEL_91:
    if (v92 != v95)
    {
      goto LABEL_101;
    }

    if (v92 >= 1)
    {
      sub_1000146C4(v88, v89);
      v98 = v117;
      v99 = sub_10004617C(v85, v86, v88, v89);
      v117 = v98;
      if ((v99 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

LABEL_96:
    v100 = v123[6];
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_101;
    }

    v101 = v123[7];
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_101;
    }

    v102 = v124;
    v103 = v123[8];
    v10 = v51;
    v104 = static Date.== infix(_:_:)();
    sub_1000471DC(v102, type metadata accessor for DriverBinEntry);
    result = sub_1000471DC(v51, type metadata accessor for DriverBinEntry);
    v12 = v110;
    a1 = v111;
    v14 = v108;
    v13 = v109;
    v19 = v107;
    v31 = v119;
    v44 = v118;
    if ((v104 & 1) == 0)
    {
      return v44;
    }
  }

  if (v105 <= v27 + 1)
  {
    v34 = v27 + 1;
  }

  else
  {
    v34 = v105;
  }

  v35 = v34 - 1;
  v33 = v122;
  while (1)
  {
    v36 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v36 >= v105)
    {
      v76 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      v40 = v116;
      (*(*(v76 - 8) + 56))(v116, 1, 1, v76);
      v119 = 0;
      v27 = v35;
      goto LABEL_17;
    }

    v37 = *(v106 + 8 * v36);
    ++v27;
    if (v37)
    {
      v119 = (v37 - 1) & v37;
      v32 = __clz(__rbit64(v37)) | (v36 << 6);
      v27 = v36;
      goto LABEL_16;
    }
  }

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
  return result;
}

uint64_t sub_1000451F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationRecord(0);
  v104 = *(v4 - 8);
  v105 = v4;
  v5 = *(v104 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v93 - v10);
  __chkstk_darwin(v9);
  v103 = &v93 - v12;
  v13 = sub_100003CDC(&qword_1001349F0, &unk_1000F56C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  result = __chkstk_darwin(v15);
  v19 = (&v93 - v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v100 = a2;
  v101 = v18;
  v20 = 0;
  v21 = *(a1 + 64);
  v94 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = &unk_1000F41A0;
  v26 = (v22 + 63) >> 6;
  v97 = (&v93 - v17);
  v98 = v8;
  v95 = v26;
  v96 = a1;
  while (v24)
  {
    v102 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v20 << 6);
LABEL_19:
    v32 = (*(a1 + 48) + 16 * v27);
    v33 = *v32;
    v34 = v32[1];
    v35 = v103;
    sub_1000418E0(*(a1 + 56) + *(v104 + 72) * v27, v103, type metadata accessor for ApplicationRecord);
    v36 = sub_100003CDC(&qword_1001349F8, v25);
    v37 = *(v36 + 48);
    v38 = v25;
    v39 = v101;
    *v101 = v33;
    *(v39 + 8) = v34;
    sub_100047174(v35, v39 + v37, type metadata accessor for ApplicationRecord);
    (*(*(v36 - 8) + 56))(v39, 0, 1, v36);
    sub_1000146C4(v33, v34);
    v19 = v97;
LABEL_20:
    sub_100020D24(v39, v19, &qword_1001349F0, &unk_1000F56C0);
    v40 = sub_100003CDC(&qword_1001349F8, v38);
    v41 = (*(*(v40 - 8) + 48))(v19, 1, v40) == 1;
    result = v41;
    if (v41)
    {
      return result;
    }

    v99 = v41;
    v42 = *v19;
    v43 = v19[1];
    sub_100047174(v19 + *(v40 + 48), v11, type metadata accessor for ApplicationRecord);
    v44 = v100;
    v45 = sub_1000618A8(v42, v43);
    v47 = v46;
    sub_1000128D8(v42, v43);
    if ((v47 & 1) == 0)
    {
      goto LABEL_98;
    }

    v48 = *(v44 + 56) + *(v104 + 72) * v45;
    v49 = v98;
    sub_1000418E0(v48, v98, type metadata accessor for ApplicationRecord);
    v25 = v38;
    v50 = v49;
    if ((*v49 != *v11 || v49[1] != v11[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_97;
    }

    v51 = v105[5];
    result = static URL.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_97;
    }

    v52 = v105[6];
    v53 = *(v49 + v52);
    v54 = *(v11 + v52);
    v55 = *(v53 + 16);
    if (v55 != *(v54 + 16))
    {
      goto LABEL_97;
    }

    if (v55 && v53 != v54)
    {
      v56 = (v53 + 40);
      v57 = (v54 + 40);
      while (1)
      {
        result = *(v56 - 1);
        if (result != *(v57 - 1) || *v56 != *v57)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v56 += 2;
        v57 += 2;
        if (!--v55)
        {
          goto LABEL_37;
        }
      }

LABEL_97:
      sub_1000471DC(v50, type metadata accessor for ApplicationRecord);
LABEL_98:
      sub_1000471DC(v11, type metadata accessor for ApplicationRecord);
      return 0;
    }

LABEL_37:
    v59 = v105[7];
    v60 = *(v50 + v59);
    v61 = *(v50 + v59 + 8);
    v62 = (v11 + v59);
    v63 = *v62;
    v64 = v62[1];
    v65 = v61 >> 62;
    v66 = v64 >> 62;
    if (v61 >> 62 == 3)
    {
      if (v60)
      {
        v67 = 0;
      }

      else
      {
        v67 = v61 == 0xC000000000000000;
      }

      if (v67 && v64 >> 62 == 3 && !v63 && v64 == 0xC000000000000000)
      {
        goto LABEL_72;
      }

      v70 = 0;
    }

    else if (v65)
    {
      if (v65 == 1)
      {
        LODWORD(v70) = HIDWORD(v60) - v60;
        if (__OFSUB__(HIDWORD(v60), v60))
        {
          goto LABEL_106;
        }

        v70 = v70;
      }

      else
      {
        v73 = *(v60 + 16);
        v72 = *(v60 + 24);
        v74 = __OFSUB__(v72, v73);
        v70 = v72 - v73;
        if (v74)
        {
          goto LABEL_107;
        }
      }
    }

    else
    {
      v70 = BYTE6(v61);
    }

    if (v66 > 1)
    {
      if (v66 != 2)
      {
        if (v70)
        {
          goto LABEL_97;
        }

        goto LABEL_72;
      }

      v77 = *(v63 + 16);
      v76 = *(v63 + 24);
      v74 = __OFSUB__(v76, v77);
      v75 = v76 - v77;
      if (v74)
      {
        goto LABEL_103;
      }
    }

    else if (v66)
    {
      LODWORD(v75) = HIDWORD(v63) - v63;
      if (__OFSUB__(HIDWORD(v63), v63))
      {
        goto LABEL_102;
      }

      v75 = v75;
    }

    else
    {
      v75 = BYTE6(v64);
    }

    if (v70 != v75)
    {
      goto LABEL_97;
    }

    if (v70 >= 1)
    {
      sub_1000146C4(v63, v64);
      result = sub_10004617C(v60, v61, v63, v64);
      if ((result & 1) == 0)
      {
        goto LABEL_97;
      }
    }

LABEL_72:
    v78 = v105[8];
    v80 = *(v50 + v78);
    v79 = *(v50 + v78 + 8);
    v81 = (v11 + v78);
    v82 = *v81;
    v83 = v81[1];
    v84 = v79 >> 62;
    v85 = v83 >> 62;
    if (v79 >> 62 == 3)
    {
      v86 = 0;
      if (!v80 && v79 == 0xC000000000000000 && v83 >> 62 == 3)
      {
        v86 = 0;
        if (!v82 && v83 == 0xC000000000000000)
        {
          goto LABEL_8;
        }
      }

LABEL_85:
      if (v85 <= 1)
      {
        goto LABEL_86;
      }

      goto LABEL_91;
    }

    if (v84 == 2)
    {
      v88 = *(v80 + 16);
      v87 = *(v80 + 24);
      v74 = __OFSUB__(v87, v88);
      v86 = v87 - v88;
      if (v74)
      {
        goto LABEL_108;
      }

      goto LABEL_85;
    }

    if (v84 == 1)
    {
      LODWORD(v86) = HIDWORD(v80) - v80;
      if (__OFSUB__(HIDWORD(v80), v80))
      {
        goto LABEL_109;
      }

      v86 = v86;
      if (v85 <= 1)
      {
LABEL_86:
        if (v85)
        {
          LODWORD(v89) = HIDWORD(v82) - v82;
          if (__OFSUB__(HIDWORD(v82), v82))
          {
            goto LABEL_104;
          }

          v89 = v89;
        }

        else
        {
          v89 = BYTE6(v83);
        }

        goto LABEL_93;
      }
    }

    else
    {
      v86 = BYTE6(v79);
      if (v85 <= 1)
      {
        goto LABEL_86;
      }
    }

LABEL_91:
    if (v85 != 2)
    {
      if (v86)
      {
        goto LABEL_97;
      }

      goto LABEL_8;
    }

    v91 = *(v82 + 16);
    v90 = *(v82 + 24);
    v74 = __OFSUB__(v90, v91);
    v89 = v90 - v91;
    if (v74)
    {
      goto LABEL_105;
    }

LABEL_93:
    if (v86 != v89)
    {
      goto LABEL_97;
    }

    if (v86 < 1)
    {
LABEL_8:
      sub_1000471DC(v50, type metadata accessor for ApplicationRecord);
      result = sub_1000471DC(v11, type metadata accessor for ApplicationRecord);
      v26 = v95;
      a1 = v96;
      v24 = v102;
    }

    else
    {
      sub_1000146C4(v82, v83);
      v92 = sub_10004617C(v80, v79, v82, v83);
      sub_1000471DC(v50, type metadata accessor for ApplicationRecord);
      sub_1000471DC(v11, type metadata accessor for ApplicationRecord);
      v26 = v95;
      a1 = v96;
      v24 = v102;
      result = v99;
      if ((v92 & 1) == 0)
      {
        return result;
      }
    }
  }

  if (v26 <= v20 + 1)
  {
    v28 = v20 + 1;
  }

  else
  {
    v28 = v26;
  }

  v29 = v28 - 1;
  while (1)
  {
    v30 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      v71 = sub_100003CDC(&qword_1001349F8, v25);
      v38 = v25;
      v39 = v101;
      (*(*(v71 - 8) + 56))(v101, 1, 1, v71);
      v102 = 0;
      v20 = v29;
      goto LABEL_20;
    }

    v31 = *(v94 + 8 * v30);
    ++v20;
    if (v31)
    {
      v102 = (v31 - 1) & v31;
      v27 = __clz(__rbit64(v31)) | (v30 << 6);
      v20 = v30;
      goto LABEL_19;
    }
  }

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
  return result;
}

uint64_t sub_100045A08(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveDriverInfo();
  v67 = *(active - 8);
  v4 = *(v67 + 64);
  v5 = __chkstk_darwin(active);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v56 - v9;
  __chkstk_darwin(v8);
  v64 = &v56 - v11;
  v12 = sub_100003CDC(&qword_100134BD0, &qword_1000F44D8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  result = __chkstk_darwin(v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v62 = (&v56 - v16);
  v63 = v17;
  v18 = 0;
  v58 = a1;
  v19 = *(a1 + 64);
  v57 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v24 = &unk_1000F44E0;
  v60 = v10;
  v61 = a2;
  v59 = v23;
  while (v22)
  {
    v66 = (v22 - 1) & v22;
    v25 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_18:
    v30 = (*(v58 + 48) + 16 * v25);
    v31 = *v30;
    v32 = v30[1];
    v33 = v64;
    sub_1000418E0(*(v58 + 56) + *(v67 + 72) * v25, v64, type metadata accessor for ActiveDriverInfo);
    v34 = sub_100003CDC(&qword_100134BD8, v24);
    v35 = *(v34 + 48);
    v36 = v24;
    v37 = v63;
    *v63 = v31;
    *(v37 + 8) = v32;
    sub_100047174(v33, v37 + v35, type metadata accessor for ActiveDriverInfo);
    (*(*(v34 - 8) + 56))(v37, 0, 1, v34);
    sub_1000146C4(v31, v32);
LABEL_19:
    v38 = v62;
    sub_100020D24(v37, v62, &qword_100134BD0, &qword_1000F44D8);
    v39 = sub_100003CDC(&qword_100134BD8, v36);
    v40 = 1;
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {
      return v40;
    }

    v41 = v36;
    v42 = v7;
    v43 = v67;
    v44 = *v38;
    v45 = v38[1];
    v46 = v60;
    sub_100047174(v38 + *(v39 + 48), v60, type metadata accessor for ActiveDriverInfo);
    v47 = v61;
    v48 = sub_1000618A8(v44, v45);
    v50 = v49;
    sub_1000128D8(v44, v45);
    if ((v50 & 1) == 0)
    {
      goto LABEL_28;
    }

    v7 = v42;
    sub_1000418E0(*(v47 + 56) + *(v43 + 72) * v48, v42, type metadata accessor for ActiveDriverInfo);
    if ((static URL.== infix(_:_:)() & 1) == 0 || ((v51 = *(active + 20), v52 = *(v42 + v51), v53 = *(v42 + v51 + 8), v54 = (v46 + v51), v52 != *v54) || v53 != v54[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_1000471DC(v42, type metadata accessor for ActiveDriverInfo);
LABEL_28:
      sub_1000471DC(v46, type metadata accessor for ActiveDriverInfo);
      return 0;
    }

    sub_1000471DC(v42, type metadata accessor for ActiveDriverInfo);
    result = sub_1000471DC(v46, type metadata accessor for ActiveDriverInfo);
    v24 = v41;
    v23 = v59;
    v22 = v66;
  }

  if (v23 <= v18 + 1)
  {
    v26 = v18 + 1;
  }

  else
  {
    v26 = v23;
  }

  v27 = v26 - 1;
  while (1)
  {
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v55 = sub_100003CDC(&qword_100134BD8, v24);
      v36 = v24;
      v37 = v63;
      (*(*(v55 - 8) + 56))(v63, 1, 1, v55);
      v66 = 0;
      v18 = v27;
      goto LABEL_19;
    }

    v29 = *(v57 + 8 * v28);
    ++v18;
    if (v29)
    {
      v66 = (v29 - 1) & v29;
      v25 = __clz(__rbit64(v29)) | (v28 << 6);
      v18 = v28;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100045F4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10004617C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100046708(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000128D8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100045F4C(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000128D8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10004630C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100046388(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1000464D8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1000464D8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100046570(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1000465E4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100046570(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10004630C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000465E4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_100046708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100045F4C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1000467C0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DriverBinEntry();
  v5 = v4[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = *(a1 + v5) == *(a2 + v5) && *(a1 + v5 + 8) == *(a2 + v5 + 8);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for ApplicationRecord(0);
  v10 = v9[5];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10001A6CC(*(v6 + v9[6]), *(v7 + v9[6])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_10006475C(*(v6 + v9[7]), *(v6 + v9[7] + 8), *(v7 + v9[7]), *(v7 + v9[7] + 8)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_10006475C(*(v6 + v9[8]), *(v6 + v9[8] + 8), *(v7 + v9[8]), *(v7 + v9[8] + 8)) & 1) == 0)
  {
    return 0;
  }

  v11 = v4[6];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v12 = v4[7];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v13 = v4[8];

  return static Date.== infix(_:_:)();
}

uint64_t sub_1000468FC(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for PropertyListDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100047120();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v2)
  {

    sub_1000128D8(a1, a2);
  }

  else
  {
    v9 = *&v16[8];
    v3 = *v16;
    if (__PAIR128__(0x80000001001038C0, 0xD000000000000024) == *&v16[8] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000128D8(a1, a2);
    }

    else
    {

      *v16 = 0;
      *&v16[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v11._countAndFlagsBits = 0xD000000000000028;
      v11._object = 0x80000001001059C0;
      String.append(_:)(v11);
      v12._countAndFlagsBits = 0xD000000000000024;
      v12._object = 0x80000001001038C0;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 0x20646E756F66202CLL;
      v13._object = 0xE800000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = v9;
      v14._object = *&v16[16];
      String.append(_:)(v14);

      sub_10001449C();
      swift_allocError();
      *v15 = *v16;
      *(v15 + 16) = *v16;
      *(v15 + 32) = *&v16[16];
      *(v15 + 48) = v17;
      *(v15 + 64) = v18;
      *(v15 + 72) = 50;
      swift_willThrow();
      sub_1000128D8(a1, a2);
    }
  }

  return v3;
}

uint64_t sub_100046B20(uint64_t a1)
{
  v8 = *(a1 + 16);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v2._countAndFlagsBits = 0x73656972746E6520;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);
  sub_100042148(a1);
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_100018594();
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return v9;
}

uint64_t sub_100046C08(uint64_t *a1)
{
  v3 = sub_100003CDC(&qword_100135480, &qword_1000F53E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100003C4C(a1, v8);
  sub_100046E0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100003CDC(&qword_100135490, &qword_1000F53E8);
    v10[7] = 0;
    sub_100046E60();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100003C90(a1);
  return v8;
}

unint64_t sub_100046E0C()
{
  result = qword_100135488;
  if (!qword_100135488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135488);
  }

  return result;
}

unint64_t sub_100046E60()
{
  result = qword_100135498;
  if (!qword_100135498)
  {
    sub_100009FA4(&qword_100135490, &qword_1000F53E8);
    sub_1000470D8(&qword_1001354A0, &type metadata accessor for UUID);
    sub_1000470D8(&qword_1001354A8, type metadata accessor for DriverBinEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135498);
  }

  return result;
}

uint64_t type metadata accessor for DriverBinEntry()
{
  result = qword_100135558;
  if (!qword_100135558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100046F98()
{
  result = qword_1001354B8;
  if (!qword_1001354B8)
  {
    sub_100009FA4(&qword_100135490, &qword_1000F53E8);
    sub_1000470D8(&qword_1001354C0, &type metadata accessor for UUID);
    sub_1000470D8(&qword_1001354C8, type metadata accessor for DriverBinEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001354B8);
  }

  return result;
}

unint64_t sub_100047084()
{
  result = qword_1001354E0;
  if (!qword_1001354E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001354E0);
  }

  return result;
}

uint64_t sub_1000470D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100047120()
{
  result = qword_1001354F8;
  if (!qword_1001354F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001354F8);
  }

  return result;
}

uint64_t sub_100047174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000471DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100047270(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ApplicationRecord(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for URL();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_10004740C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for ApplicationRecord(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for URL();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1000475A0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ApplicationRecord(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_100047658()
{
  result = qword_1001355A0;
  if (!qword_1001355A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355A0);
  }

  return result;
}

unint64_t sub_1000476B0()
{
  result = qword_1001355A8;
  if (!qword_1001355A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355A8);
  }

  return result;
}

unint64_t sub_100047708()
{
  result = qword_1001355B0;
  if (!qword_1001355B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355B0);
  }

  return result;
}

unint64_t sub_100047760()
{
  result = qword_1001355B8;
  if (!qword_1001355B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355B8);
  }

  return result;
}

unint64_t sub_1000477B8()
{
  result = qword_1001355C0;
  if (!qword_1001355C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355C0);
  }

  return result;
}

unint64_t sub_100047810()
{
  result = qword_1001355C8;
  if (!qword_1001355C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355C8);
  }

  return result;
}

uint64_t sub_100047864(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65626D754E6E6962 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F636552707061 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5255646567617473 && a2 == 0xE90000000000004CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7542646567617473 && a2 == 0xEC000000656C646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100047A20(uint64_t a1)
{
  v3 = type metadata accessor for DriverBinEntry();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v40 = v10;
  v34[1] = v1;
  v47 = _swiftEmptyArrayStorage;
  sub_1000635C4(0, v11, 0);
  v12 = v47;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v41 = v16;
  v38 = v16 + 32;
  v39 = (v16 + 16);
  v35 = a1 + 72;
  v36 = v11;
  v37 = a1 + 64;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v45 = v18;
    v46 = v21;
    v22 = v42;
    sub_100014718(*(a1 + 56) + *(v43 + 72) * v17, v42, type metadata accessor for DriverBinEntry);
    v23 = v40;
    (*v39)(v40, v22 + *(v44 + 24), v6);
    sub_100052CD4(v22, type metadata accessor for DriverBinEntry);
    v47 = v12;
    v24 = v6;
    v26 = v12[2];
    v25 = v12[3];
    if (v26 >= v25 >> 1)
    {
      sub_1000635C4(v25 > 1, v26 + 1, 1);
      v12 = v47;
    }

    v12[2] = v26 + 1;
    result = (*(v41 + 32))(v12 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v26, v23, v24);
    v19 = 1 << *(a1 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v6 = v24;
    v13 = v37;
    v27 = *(v37 + 8 * v20);
    if ((v27 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v17 & 0x3F));
    if (v28)
    {
      v19 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v20 << 6;
      v30 = v20 + 1;
      v31 = (v35 + 8 * v20);
      while (v30 < (v19 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1000147E0(v17, v46, 0);
          v19 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_1000147E0(v17, v46, 0);
    }

LABEL_4:
    v18 = v45 + 1;
    v17 = v19;
    if (v45 + 1 == v36)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100047DE8(uint64_t a1)
{
  v43 = type metadata accessor for URL();
  v3 = *(v43 - 8);
  v4 = v3[8];
  __chkstk_darwin(v43);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v35 = v1;
  v49 = _swiftEmptyArrayStorage;
  sub_1000635A4(0, v6, 0);
  v7 = v49;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v40 = v3 + 1;
  v41 = v3 + 2;
  v36 = a1 + 64;
  v37 = v6;
  v38 = v3;
  v39 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v44 = v12;
    v45 = v15;
    v16 = *(a1 + 48) + v3[9] * v11;
    v17 = v3[2];
    v46 = v7;
    v19 = v42;
    v18 = v43;
    v17(v42, v16, v43);
    v47 = 8224;
    v48 = 0xE200000000000000;
    v20._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v20);

    v21 = v3;
    v22 = v47;
    v23 = v48;
    v24 = v19;
    v7 = v46;
    result = (v21[1])(v24, v18);
    v49 = v7;
    v26 = v7[2];
    v25 = v7[3];
    if (v26 >= v25 >> 1)
    {
      result = sub_1000635A4((v25 > 1), v26 + 1, 1);
      v7 = v49;
    }

    v7[2] = v26 + 1;
    v27 = &v7[2 * v26];
    v27[4] = v22;
    v27[5] = v23;
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v39;
    v28 = *(v39 + 8 * v14);
    if ((v28 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v45 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v11 & 0x3F));
    if (v29)
    {
      v13 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v14 << 6;
      v31 = v14 + 1;
      v32 = (v36 + 8 * v14);
      while (v31 < (v13 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1000147E0(v11, v45, 0);
          v13 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1000147E0(v11, v45, 0);
    }

LABEL_4:
    v12 = v44 + 1;
    v11 = v13;
    v3 = v38;
    if (v44 + 1 == v37)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

_OWORD *sub_100048114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_10000B48C(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_100038828(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_10000A184(a1, &qword_1001343C8, &unk_1000F3CA0);
    v8 = *v2;
    v9 = sub_100061698(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_100039DA4();
        v14 = v16;
      }

      sub_10000B48C((*(v14 + 56) + 32 * v11), v17);
      sub_100036EFC(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_10000A184(v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  return result;
}

uint64_t sub_100048218(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003CDC(&qword_1001354F0, &qword_1000F5408);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for DriverBinEntry();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000A184(a1, &qword_1001354F0, &qword_1000F5408);
    sub_100036744(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000A184(v8, &qword_1001354F0, &qword_1000F5408);
  }

  else
  {
    sub_10004F64C(a1, v12, type metadata accessor for DriverBinEntry);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100038AA4(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_100048438(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_100003CDC(&qword_1001342D8, &unk_100101820);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ApplicationRecord(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_10000A184(a1, &qword_1001342D8, &unk_100101820);
    sub_100036A38(a2, a3, v10);
    sub_1000128D8(a2, a3);
    return sub_10000A184(v10, &qword_1001342D8, &unk_100101820);
  }

  else
  {
    sub_10004F64C(a1, v14, type metadata accessor for ApplicationRecord);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100039288(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1000128D8(a2, a3);
    *v3 = v20;
  }

  return result;
}

uint64_t sub_100048614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100009F34(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1000398B8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000A184(a1, &qword_1001342A8, &unk_1000F39C0);
    sub_100036D08(a2, a3, v10);

    return sub_10000A184(v10, &qword_1001342A8, &unk_1000F39C0);
  }

  return result;
}

uint64_t sub_100048734@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_100003CDC(&unk_1001389D0, &qword_1000F4F60) - 8) + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = *a1;
  swift_beginAccess();
  sub_100014894(v2 + v11, v10, &unk_1001389D0, &qword_1000F4F60);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a2, v10, v12);
  }

  sub_10000A184(v10, &unk_1001389D0, &qword_1000F4F60);
  URL.appendingPathComponent(_:)();
  (*(v13 + 16))(v8, a2, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_100052E00(v8, v2 + v11);
  return swift_endAccess();
}

char *sub_100048948()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_recursiveLock;
  [*(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_recursiveLock) lock];
  v8 = (v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo);
  v9 = *(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo);
  if (v9)
  {
    v11 = v8[1];
    v10 = v8[2];
    v12 = *(v0 + v7);
    v13 = *(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo);

    [v12 unlock];
    return v9;
  }

  v56 = v7;
  if (qword_100133AD8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_1000144F0(v14, qword_10014E9C8);

  v57 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v58[0] = v19;
    *v18 = 136315138;
    sub_1000486E4(v6);
    v20 = URL.path.getter();
    v55 = v1;
    v22 = v21;
    (*(v3 + 8))(v6, v2);
    v23 = sub_1000E3AF8(v20, v22, v58);
    v1 = v55;

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Loading dextbin info, reading plist file from %s", v18, 0xCu);
    sub_100003C90(v19);
  }

  v24 = *sub_100003C4C((v1 + 16), *(v1 + 40));
  sub_1000DF9D4(v58);
  v25 = v59;
  v26 = v60;
  sub_100003C4C(v58, v59);
  sub_1000486E4(v6);
  v27 = URL.path.getter();
  v29 = v28;
  (*(v3 + 8))(v6, v2);
  v30 = (*(v26 + 16))(v27, v29, 0, v25, v26);
  v32 = v31;

  sub_100003C90(v58);
  if (v32 >> 60 != 15)
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Loading dextbin info, decoding plist", v45, 2u);
    }

    sub_100041D48(v30, v32);
    v9 = sub_1000468FC(v30, v32);
    v48 = v47;
    v50 = v49;
    sub_100014988(v30, v32);
    v51 = *v8;
    v52 = v8[1];
    v53 = v8[2];
    *v8 = v9;
    v8[1] = v48;
    v8[2] = v50;

    sub_10004F708(v51);
    v54 = *(v1 + v56);
    goto LABEL_16;
  }

  v33 = errno.getter();
  result = strerror(v33);
  if (result)
  {
    v35 = String.init(cString:)();
    v37 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v58[0] = v41;
      *v40 = 136315138;
      v42 = sub_1000E3AF8(v35, v37, v58);

      *(v40 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "contentsOfFile failed to read plist: %s", v40, 0xCu);
      sub_100003C90(v41);
    }

    else
    {
    }

    v46 = v56;
    v9 = sub_10003E338(&_swiftEmptyArrayStorage);
    v54 = *(v1 + v46);
LABEL_16:
    [v54 unlock];
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100048FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = type metadata accessor for ApplicationRecord(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a1, v18);
  sub_100014718(a2, &v17[*(v11 + 56)], type metadata accessor for DriverBinEntry);
  sub_100014894(v17, v15, &unk_1001373B0, &unk_1000F3A40);
  v20 = &v15[*(v11 + 56)];
  v21 = type metadata accessor for DriverBinEntry();
  sub_100014718(v20 + *(v21 + 20), v9, type metadata accessor for ApplicationRecord);
  sub_100052CD4(v20, type metadata accessor for DriverBinEntry);
  v22 = &v9[*(v6 + 40)];
  v23 = *v22;
  v24 = v22[1];
  sub_1000146C4(*v22, v24);
  sub_100052CD4(v9, type metadata accessor for ApplicationRecord);
  LOBYTE(v11) = sub_10006475C(v23, v24, *(v27 + *(v6 + 40)), *(v27 + *(v6 + 40) + 8));
  sub_1000128D8(v23, v24);
  sub_10000A184(v17, &unk_1001373B0, &unk_1000F3A40);
  (*(v19 + 8))(v15, v18);
  return v11 & 1;
}

char *sub_100049250()
{
  v1 = v0;
  v375 = type metadata accessor for ApplicationRecord(0);
  v370 = *(v375 - 8);
  v2 = *(v370 + 64);
  v3 = __chkstk_darwin(v375);
  v384 = &v343 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v343 - v6;
  __chkstk_darwin(v5);
  v369 = &v343 - v8;
  v9 = sub_100003CDC(&qword_1001349F0, &unk_1000F56C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v379 = &v343 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v378 = &v343 - v13;
  v364 = type metadata accessor for DriverBinEntry();
  v373 = *(v364 - 8);
  v14 = *(v373 + 64);
  v15 = __chkstk_darwin(v364);
  v381 = &v343 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v358 = &v343 - v18;
  v19 = __chkstk_darwin(v17);
  v354 = &v343 - v20;
  v21 = __chkstk_darwin(v19);
  v390 = &v343 - v22;
  __chkstk_darwin(v21);
  v372 = &v343 - v23;
  v387 = type metadata accessor for UUID();
  v374 = *(v387 - 8);
  v24 = *(v374 + 64);
  v25 = __chkstk_darwin(v387);
  v392 = &v343 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v359 = &v343 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v343 - v30;
  v32 = __chkstk_darwin(v29);
  v388 = &v343 - v33;
  __chkstk_darwin(v32);
  v371 = &v343 - v34;
  v35 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v39 = &v343 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v385 = &v343 - v40;
  active = type metadata accessor for ActiveDriverInfo();
  v389 = *(active - 8);
  v42 = v389[8];
  __chkstk_darwin(active - 8);
  v391 = (&v343 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v366 = type metadata accessor for URL();
  v368 = *(v366 - 8);
  v44 = *(v368 + 64);
  v45 = __chkstk_darwin(v366);
  v345 = &v343 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v346 = (&v343 - v48);
  v49 = __chkstk_darwin(v47);
  v347 = (&v343 - v50);
  v51 = __chkstk_darwin(v49);
  v351 = &v343 - v52;
  __chkstk_darwin(v51);
  v54 = &v343 - v53;
  v396 = _swiftEmptyArrayStorage;
  v357 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_recursiveLock;
  [*(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_recursiveLock) lock];
  v55 = *sub_100003C4C((v0 + 16), *(v0 + 40));
  sub_1000DF9D4(&v397);
  v56 = *(&v398 + 1);
  v57 = v399;
  sub_100003C4C(&v397, *(&v398 + 1));
  (*(v57 + 24))(v1 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory, _swiftEmptyArrayStorage, 1, v56, v57);
  v365 = v1;
  v361 = v7;
  v386 = v39;
  v353 = v31;

  sub_100003C90(&v397);
  v73 = 0;
  v74 = v389;
  while (1)
  {
    v389 = v73;
    v77 = sub_100048948();
    v350 = v83;
    v355 = v84;
    v356 = sub_10003E338(_swiftEmptyArrayStorage);
    v393 = v356;
    v394 = 0xD000000000000024;
    v344 = 0x80000001001038C0;
    v395 = 0x80000001001038C0;
    sub_10004D334(v77);
    v85 = v366;
    if (!*(v1 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_activeDriversStateManager))
    {
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      *&v397 = 0;
      *(&v397 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      *&v397 = 0xD00000000000002DLL;
      *(&v397 + 1) = 0x8000000100105990;
      sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID);
      v342._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v342);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_197:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v86 = *(v1 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_activeDriversStateManager);

    v87 = sub_10001E490();
    v88 = v87;
    v89 = *(v87 + 16);
    if (v89)
    {
      v90 = sub_100032594(*(v87 + 16), 0);
      v91 = sub_1000591AC(&v397, v90 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), v89, v88);
      sub_1000145A4();
      if (v91 != v89)
      {
        goto LABEL_189;
      }

      v85 = v366;
    }

    else
    {

      v90 = _swiftEmptyArrayStorage;
    }

    v92 = v90[2];
    v363 = v77;
    if (v92)
    {
      *&v397 = _swiftEmptyArrayStorage;
      sub_1000635C4(0, v92, 0);
      v93 = v397;
      v94 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v383 = v90;
      v95 = v90 + v94;
      v96 = v74[9];
      v97 = (v368 + 16);
      do
      {
        v98 = v391;
        sub_100014718(v95, v391, type metadata accessor for ActiveDriverInfo);
        (*v97)(v54, v98, v85);
        sub_100052CD4(v98, type metadata accessor for ActiveDriverInfo);
        *&v397 = v93;
        v100 = v93[2];
        v99 = v93[3];
        if (v100 >= v99 >> 1)
        {
          sub_1000635C4(v99 > 1, v100 + 1, 1);
          v93 = v397;
        }

        v93[2] = v100 + 1;
        (*(v368 + 32))(v93 + ((*(v368 + 80) + 32) & ~*(v368 + 80)) + *(v368 + 72) * v100, v54, v85);
        v95 += v96;
        --v92;
      }

      while (v92);

      v1 = v365;
      v77 = v363;
      v39 = v386;
    }

    else
    {

      v93 = _swiftEmptyArrayStorage;
    }

    v101 = sub_1000EB530(v93);

    v103 = v389;
    v377 = sub_10004EB00(v102, v101);

    v104 = sub_10008101C(v77);
    v105 = sub_1000EB530(v104);

    v348 = v101;
    v106 = sub_10004F0D8(v101, v1, v105);
    v362 = v103;
    v1 = v106;

    v107 = *(v1 + 16);
    v349 = v105;
    v352 = v1;
    if (v107)
    {
      if (qword_100133AD8 != -1)
      {
        goto LABEL_190;
      }

      goto LABEL_20;
    }

LABEL_25:
    v127 = v387;
    v128 = *(v377 + 64);
    v360 = v377 + 64;
    v129 = 1 << *(v377 + 32);
    v130 = -1;
    if (v129 < 64)
    {
      v130 = ~(-1 << v129);
    }

    v80 = v130 & v128;
    v131 = (v129 + 63) >> 6;
    v391 = (v374 + 16);
    v389 = (v374 + 32);
    v383 = (v374 + 8);

    v73 = 0;
    *&v132 = 136315394;
    v367 = v132;
    v77 = v390;
    v382 = v131;
LABEL_28:
    v133 = v73;
    while (1)
    {
      if (!v80)
      {
        if (v131 <= v133 + 1)
        {
          v136 = v133 + 1;
        }

        else
        {
          v136 = v131;
        }

        v73 = (v136 - 1);
        v137 = v388;
        v138 = &unk_1000F3A40;
        v139 = v392;
        while (1)
        {
          v135 = v133 + 1;
          if (__OFADD__(v133, 1))
          {
            break;
          }

          if (v135 >= v131)
          {
            v170 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
            (*(*(v170 - 8) + 56))(v39, 1, 1, v170);
            v80 = 0;
            goto LABEL_41;
          }

          v80 = *(v360 + 8 * v135);
          v133 = (v133 + 1);
          if (v80)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      v135 = v133;
LABEL_40:
      v140 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v141 = v140 | (v135 << 6);
      v142 = v377;
      v143 = v374;
      (*(v374 + 16))(v371, *(v377 + 48) + *(v374 + 72) * v141, v127);
      v144 = v372;
      sub_100014718(*(v142 + 56) + *(v373 + 72) * v141, v372, type metadata accessor for DriverBinEntry);
      v145 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      v146 = *(v145 + 48);
      v39 = v386;
      (*(v143 + 32))();
      sub_10004F64C(v144, v39 + v146, type metadata accessor for DriverBinEntry);
      (*(*(v145 - 8) + 56))(v39, 0, 1, v145);
      v73 = v135;
      v77 = v390;
      v139 = v392;
      v137 = v388;
LABEL_41:
      v147 = v385;
      sub_100020D24(v39, v385, &qword_1001342E0, &unk_1000F3A30);
      v148 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      if ((*(*(v148 - 8) + 48))(v147, 1, v148) == 1)
      {
        break;
      }

      v149 = *(v148 + 48);
      (*v389)(v137, v147, v127);
      sub_10004F64C(v147 + v149, v77, type metadata accessor for DriverBinEntry);
      if (static UUID.== infix(_:_:)())
      {
        if (qword_100133AD8 != -1)
        {
          swift_once();
        }

        v171 = type metadata accessor for Logger();
        sub_1000144F0(v171, qword_10014E9C8);
        v172 = v354;
        sub_100014718(v77, v354, type metadata accessor for DriverBinEntry);
        v54 = *v391;
        v173 = v353;
        (*v391)(v353, v388, v127);
        v174 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v174, v39))
        {
          v175 = swift_slowAlloc();
          v343 = v54;
          v176 = v175;
          v177 = swift_slowAlloc();
          v380 = v73;
          v401 = v177;
          *v176 = v367;
          *&v397 = 0;
          *(&v397 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(27);

          strcpy(&v397, "Staged bundle ");
          HIBYTE(v397) = -18;
          v178 = v364;
          v179 = *(v364 + 28);
          sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL);
          v180._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v180);

          v181._countAndFlagsBits = 0x70706120726F6620;
          v181._object = 0xE900000000000020;
          String.append(_:)(v181);
          v182 = *(v178 + 20);
          v77 = v390;
          String.append(_:)(*(v172 + v182));
          v184 = *(&v397 + 1);
          v183 = v397;
          sub_100052CD4(v172, type metadata accessor for DriverBinEntry);
          v185 = sub_1000E3AF8(v183, v184, &v401);

          *(v176 + 4) = v185;
          *(v176 + 12) = 2080;
          sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID);
          v186 = dispatch thunk of CustomStringConvertible.description.getter();
          v188 = v187;
          v376 = *v383;
          v376(v173, v387);
          v189 = sub_1000E3AF8(v186, v188, &v401);
          v127 = v387;

          *(v176 + 14) = v189;
          _os_log_impl(&_mh_execute_header, v174, v39, "Copying old active bin entry %s with bin number %s", v176, 0x16u);
          swift_arrayDestroy();
          v73 = v380;

          v54 = v343;
        }

        else
        {

          v376 = *v383;
          v376(v173, v127);
          sub_100052CD4(v172, type metadata accessor for DriverBinEntry);
        }

        v1 = v359;
        (v54)(v359, v77, v127);
        if (*(v356 + 16))
        {

          sub_1000615C4(v1);
          v191 = v190;

          if (v191)
          {
            goto LABEL_196;
          }
        }

        sub_100014718(v77, v358, type metadata accessor for DriverBinEntry);
        v192 = v393;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v397 = v192;
        v194 = sub_1000615C4(v1);
        v196 = *(v192 + 16);
        v197 = (v195 & 1) == 0;
        v198 = __OFADD__(v196, v197);
        v199 = v196 + v197;
        if (v198)
        {
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          swift_once();
LABEL_20:
          v108 = type metadata accessor for Logger();
          v109 = sub_1000144F0(v108, qword_10014E9C8);

          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v389 = swift_slowAlloc();
            *&v397 = v389;
            *v112 = 136315138;
            v391 = v109;
            v113 = v362;
            v114 = sub_100047DE8(v1);
            v362 = v113;
            v401 = v114;
            sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
            sub_100018594();
            v115 = BidirectionalCollection<>.joined(separator:)();
            v117 = v116;

            v118 = sub_1000E3AF8(v115, v117, &v397);

            *(v112 + 4) = v118;
            _os_log_impl(&_mh_execute_header, v110, v111, "Found actively used drivers that are missing:\n%s", v112, 0xCu);
            sub_100003C90(v389);
          }

          v119 = v355;

          v120 = Logger.logObject.getter();
          v121 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            *&v397 = v123;
            *v122 = 136315138;
            sub_100042B90(v77, v350, v119);
            v126 = sub_1000E3AF8(v124, v125, &v397);

            *(v122 + 4) = v126;
            _os_log_impl(&_mh_execute_header, v120, v121, "%s", v122, 0xCu);
            sub_100003C90(v123);
          }

          goto LABEL_25;
        }

        v81 = v195;
        if (*(v192 + 24) >= v199)
        {
          v131 = v382;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v204 = v194;
            sub_10003A100();
            v131 = v382;
            v194 = v204;
            v77 = v390;
          }

          v127 = v387;
          v201 = v397;
          if ((v81 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        else
        {
          sub_100033310(v199, isUniquelyReferenced_nonNull_native);
          v194 = sub_1000615C4(v359);
          if ((v81 & 1) != (v200 & 1))
          {
            goto LABEL_197;
          }

          v127 = v387;
          v131 = v382;
          v201 = v397;
          if ((v81 & 1) == 0)
          {
LABEL_59:
            v201[(v194 >> 6) + 8] |= 1 << v194;
            v78 = v194;
            v76 = v359;
            (v54)(v201[6] + *(v374 + 72) * v194, v359, v127);
            sub_10004F64C(v358, v201[7] + *(v373 + 72) * v78, type metadata accessor for DriverBinEntry);
            v202 = v201[2];
            v198 = __OFADD__(v202, 1);
            v79 = v202 + 1;
            if (v198)
            {
              __break(1u);
LABEL_192:
              v78 = sub_100030EA0((v79 > 1), v81, 1, v78);
              goto LABEL_5;
            }

            v201[2] = v79;
            v131 = v382;
            goto LABEL_65;
          }
        }

        sub_100052D34(v358, v201[7] + *(v373 + 72) * v194);
        v76 = v359;
LABEL_65:
        v356 = v201;
        v393 = v201;
        v203 = v376;
        v376(v76, v127);
        sub_100052CD4(v77, type metadata accessor for DriverBinEntry);
        v203(v388, v127);
        v39 = v386;
        goto LABEL_28;
      }

      if (qword_100133AD8 != -1)
      {
        swift_once();
      }

      v150 = type metadata accessor for Logger();
      sub_1000144F0(v150, qword_10014E9C8);
      v151 = v381;
      sub_100014718(v77, v381, type metadata accessor for DriverBinEntry);
      (*v391)(v139, v137, v127);
      v152 = v137;
      v153 = v151;
      v154 = v139;
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v376 = swift_slowAlloc();
        v401 = v376;
        *v157 = v367;
        *&v397 = 0;
        *(&v397 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        strcpy(&v397, "Staged bundle ");
        HIBYTE(v397) = -18;
        v158 = v364;
        v159 = *(v364 + 28);
        sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL);
        v160._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v160);

        v161._countAndFlagsBits = 0x70706120726F6620;
        v161._object = 0xE900000000000020;
        String.append(_:)(v161);
        String.append(_:)(*(v153 + *(v158 + 20)));
        v163 = *(&v397 + 1);
        v162 = v397;
        sub_100052CD4(v153, type metadata accessor for DriverBinEntry);
        v164 = sub_1000E3AF8(v162, v163, &v401);

        *(v157 + 4) = v164;
        *(v157 + 12) = 2080;
        sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID);
        v165 = dispatch thunk of CustomStringConvertible.description.getter();
        v167 = v166;
        v380 = v73;
        v168 = *v383;
        (*v383)(v392, v387);
        v169 = sub_1000E3AF8(v165, v167, &v401);
        v39 = v386;

        *(v157 + 14) = v169;
        _os_log_impl(&_mh_execute_header, v155, v156, "Internal error: Bin entry %s was inserted with incorrect bin number %s", v157, 0x16u);
        swift_arrayDestroy();

        v127 = v387;
        sub_100052CD4(v390, type metadata accessor for DriverBinEntry);
        v168(v388, v127);
        v77 = v390;
        v133 = v380;
      }

      else
      {

        v134 = *v383;
        (*v383)(v154, v127);
        sub_100052CD4(v153, type metadata accessor for DriverBinEntry);
        sub_100052CD4(v77, type metadata accessor for DriverBinEntry);
        v134(v152, v127);
        v133 = v73;
      }

      v131 = v382;
    }

    v205 = *&v365[OBJC_IVAR____TtC10driverkitd16DriverBinManager_applicationManager];
    if (!v205)
    {
      goto LABEL_194;
    }

    v206 = v361;
    v139 = v379;
    if (*(v205 + 88))
    {
      v207 = *(v205 + 88);
    }

    else
    {
      v208 = *&v365[OBJC_IVAR____TtC10driverkitd16DriverBinManager_applicationManager];

      sub_10001B0B4();
      v207 = v209;
      v210 = *(v205 + 88);
      *(v205 + 88) = v209;
    }

    v138 = (v207 + 8);
    v211 = 1 << *(v207 + 32);
    v212 = -1;
    if (v211 < 64)
    {
      v212 = ~(-1 << v211);
    }

    v80 = v212 & v207[8];
    v390 = (v211 + 63) >> 6;
    v391 = v207;

    v1 = 0;
    v127 = &qword_1001349F8;
    v392 = v138;
LABEL_75:
    if (!v80)
    {
      if (v390 <= v1 + 1)
      {
        v214 = v1 + 1;
      }

      else
      {
        v214 = v390;
      }

      v215 = v214 - 1;
      while (1)
      {
        v213 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_176;
        }

        if (v213 >= v390)
        {
          v73 = &qword_1000F41A0;
          v239 = sub_100003CDC(&qword_1001349F8, &qword_1000F41A0);
          (*(*(v239 - 8) + 56))(v139, 1, 1, v239);
          v80 = 0;
          v1 = v215;
          goto LABEL_86;
        }

        v80 = *&v138[8 * v213];
        ++v1;
        if (v80)
        {
          v1 = v213;
          goto LABEL_85;
        }
      }
    }

    v213 = v1;
LABEL_85:
    v216 = __clz(__rbit64(v80));
    v80 &= v80 - 1;
    v217 = v216 | (v213 << 6);
    v218 = (v391[6] + 16 * v217);
    v219 = *v218;
    v220 = v218[1];
    v221 = v369;
    sub_100014718(v391[7] + *(v370 + 72) * v217, v369, type metadata accessor for ApplicationRecord);
    v73 = &qword_1000F41A0;
    v222 = sub_100003CDC(&qword_1001349F8, &qword_1000F41A0);
    v223 = *(v222 + 48);
    *v139 = v219;
    *(v139 + 1) = v220;
    sub_10004F64C(v221, &v139[v223], type metadata accessor for ApplicationRecord);
    v224 = *(*(v222 - 8) + 56);
    v225 = v222;
    v127 = &qword_1001349F8;
    v224(v139, 0, 1, v225);
    sub_1000146C4(v219, v220);
LABEL_86:
    v226 = v378;
    sub_100020D24(v139, v378, &qword_1001349F0, &unk_1000F56C0);
    v227 = sub_100003CDC(&qword_1001349F8, &qword_1000F41A0);
    if ((*(*(v227 - 8) + 48))(v226, 1, v227) == 1)
    {
      break;
    }

    v54 = *v226;
    v228 = *(v226 + 8);
    sub_10004F64C(v226 + *(v227 + 48), v206, type metadata accessor for ApplicationRecord);
    v229 = (v206 + *(v375 + 32));
    v230 = *v229;
    v77 = v229[1];
    v231 = v77 >> 62;
    v232 = v228 >> 62;
    if (v77 >> 62 == 3)
    {
      v233 = 0;
      if (v230)
      {
        goto LABEL_103;
      }

      if (v77 != 0xC000000000000000)
      {
        goto LABEL_103;
      }

      if (v228 >> 62 != 3)
      {
        goto LABEL_103;
      }

      v233 = 0;
      if (v54 || v228 != 0xC000000000000000)
      {
        goto LABEL_103;
      }

LABEL_73:
      sub_10004FED4(v206, v363, &v393, &v396);
      sub_1000128D8(v54, v228);
LABEL_74:
      sub_100052CD4(v206, type metadata accessor for ApplicationRecord);
      v139 = v379;
      v138 = v392;
      goto LABEL_75;
    }

    if (v231 > 1)
    {
      if (v231 == 2)
      {
        v238 = *(v230 + 16);
        v237 = *(v230 + 24);
        v198 = __OFSUB__(v237, v238);
        v233 = v237 - v238;
        if (v198)
        {
          goto LABEL_183;
        }

LABEL_103:
        if (v232 <= 1)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v233 = 0;
        if (v232 <= 1)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      if (!v231)
      {
        v233 = BYTE6(v77);
        if (v232 > 1)
        {
          goto LABEL_97;
        }

LABEL_104:
        if (!v232)
        {
          v236 = BYTE6(v228);
          goto LABEL_106;
        }

        if (__OFSUB__(HIDWORD(v54), v54))
        {
          goto LABEL_181;
        }

        if (v233 != HIDWORD(v54) - v54)
        {
          goto LABEL_137;
        }

LABEL_112:
        if (v233 < 1)
        {
          goto LABEL_73;
        }

        if (v231 > 1)
        {
          if (v231 != 2)
          {
            *(&v397 + 6) = 0;
            *&v397 = 0;
            sub_1000146C4(v54, v228);
            goto LABEL_136;
          }

          v240 = *(v230 + 16);
          v39 = *(v230 + 24);
          sub_1000146C4(v54, v228);
          v241 = __DataStorage._bytes.getter();
          if (v241)
          {
            v242 = __DataStorage._offset.getter();
            if (__OFSUB__(v240, v242))
            {
              goto LABEL_187;
            }

            v241 += v240 - v242;
          }

          v198 = __OFSUB__(v39, v240);
          v127 = (v39 - v240);
          if (v198)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (!v231)
          {
            *&v397 = v230;
            WORD4(v397) = v77;
            BYTE10(v397) = BYTE2(v77);
            BYTE11(v397) = BYTE3(v77);
            BYTE12(v397) = BYTE4(v77);
            BYTE13(v397) = BYTE5(v77);
            sub_1000146C4(v54, v228);
LABEL_136:
            v247 = v362;
            sub_100045F4C(&v397, v54, v228, &v401);
            v362 = v247;
            sub_1000128D8(v54, v228);
            if (v401)
            {
              goto LABEL_73;
            }

LABEL_137:
            if (qword_100133AD8 != -1)
            {
              swift_once();
            }

            v248 = type metadata accessor for Logger();
            sub_1000144F0(v248, qword_10014E9C8);
            v77 = v384;
            sub_100014718(v206, v384, type metadata accessor for ApplicationRecord);
            sub_1000146C4(v54, v228);
            v249 = Logger.logObject.getter();
            v250 = static os_log_type_t.error.getter();
            sub_1000128D8(v54, v228);
            if (os_log_type_enabled(v249, v250))
            {
              v73 = swift_slowAlloc();
              *&v397 = swift_slowAlloc();
              *v73 = v367;
              v251 = sub_100019D24();
              v253 = v252;
              sub_100052CD4(v384, type metadata accessor for ApplicationRecord);
              v254 = sub_1000E3AF8(v251, v253, &v397);

              *(v73 + 4) = v254;
              *(v73 + 6) = 2080;
              sub_1000146C4(v54, v228);
              v255 = Data.description.getter();
              v77 = v256;
              sub_1000128D8(v54, v228);
              v257 = sub_1000E3AF8(v255, v77, &v397);

              *(v73 + 14) = v257;
              _os_log_impl(&_mh_execute_header, v249, v250, "Application %s has unexpected unique identifier, expected %s", v73, 0x16u);
              swift_arrayDestroy();
              v206 = v361;

              sub_1000128D8(v54, v228);
            }

            else
            {
              sub_1000128D8(v54, v228);

              sub_100052CD4(v77, type metadata accessor for ApplicationRecord);
            }

            v127 = &qword_1001349F8;
            goto LABEL_74;
          }

          v39 = v230;
          v243 = v230 >> 32;
          v127 = (v243 - v39);
          if (v243 < v39)
          {
            goto LABEL_184;
          }

          sub_1000146C4(v54, v228);
          v241 = __DataStorage._bytes.getter();
          if (v241)
          {
            v244 = __DataStorage._offset.getter();
            if (__OFSUB__(v39, v244))
            {
              goto LABEL_188;
            }

            v241 += v39 - v244;
          }
        }

        __DataStorage._length.getter();
        v245 = v241;
        v246 = v362;
        sub_100045F4C(v245, v54, v228, &v397);
        v362 = v246;
        sub_1000128D8(v54, v228);
        v206 = v361;
        v127 = &qword_1001349F8;
        if (v397)
        {
          goto LABEL_73;
        }

        goto LABEL_137;
      }

      LODWORD(v233) = HIDWORD(v230) - v230;
      if (__OFSUB__(HIDWORD(v230), v230))
      {
        goto LABEL_182;
      }

      v233 = v233;
      if (v232 <= 1)
      {
        goto LABEL_104;
      }
    }

LABEL_97:
    if (v232 != 2)
    {
      if (!v233)
      {
        goto LABEL_73;
      }

      goto LABEL_137;
    }

    v235 = *(v54 + 2);
    v234 = *(v54 + 3);
    v198 = __OFSUB__(v234, v235);
    v236 = v234 - v235;
    if (!v198)
    {
LABEL_106:
      if (v233 == v236)
      {
        goto LABEL_112;
      }

      goto LABEL_137;
    }

    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
    swift_once();
    v58 = type metadata accessor for Logger();
    sub_1000144F0(v58, qword_10014E9C8);

    swift_errorRetain();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    v61 = os_log_type_enabled(v59, v60);
    v383 = v127;
    if (v61)
    {
      v62 = swift_slowAlloc();
      *&v397 = swift_slowAlloc();
      *v62 = 136315394;
      LODWORD(v382) = v60;
      v63 = URL.path.getter();
      v65 = sub_1000E3AF8(v63, v64, &v397);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2080;
      v393 = v127;
      swift_errorRetain();
      sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
      v66 = String.init<A>(describing:)();
      v68 = sub_1000E3AF8(v66, v67, &v397);

      *(v62 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v59, v382, "Failed to read directory %s: %s. Attempting to create directory", v62, 0x16u);
      swift_arrayDestroy();
    }

    v69 = *sub_100003C4C((v1 + 16), *(v1 + 40));
    sub_1000DF9D4(&v397);
    v70 = *(&v398 + 1);
    v71 = v399;
    sub_100003C4C(&v397, *(&v398 + 1));
    v72 = sub_10003E834(_swiftEmptyArrayStorage);
    (*(v71 + 48))(v1 + v80, 1, v72, v70, v71);
    v73 = 0;

    sub_100003C90(&v397);
    *&v397 = 0;
    *(&v397 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    *&v397 = 0xD000000000000015;
    *(&v397 + 1) = 0x8000000100105AA0;
    sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL);
    v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v75);

    v77 = *(&v397 + 1);
    v76 = v397;
    v78 = sub_100030EA0(0, 1, 1, _swiftEmptyArrayStorage);
    v80 = *(v78 + 16);
    v79 = *(v78 + 24);
    v81 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      goto LABEL_192;
    }

LABEL_5:
    v39 = v386;
    v74 = v389;

    *(v78 + 16) = v81;
    v82 = (v78 + 16 * v80);
    *(v82 + 4) = v76;
    *(v82 + 5) = v77;
    v396 = v78;
    v1 = v365;
  }

  v77 = v393;
  v258 = v394;
  v80 = v395;

  sub_10004D334(v77);
  if ((sub_100044880(v77, v363) & 1) == 0)
  {

    p_ivars = (&ApprovalSettingsStateManager + 48);
LABEL_148:
    v260 = v396;
    if (!*(v396 + 2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v260 = sub_100030EA0(0, 1, 1, v260);
      }

      v262 = *(v260 + 2);
      v261 = *(v260 + 3);
      if (v262 >= v261 >> 1)
      {
        v260 = sub_100030EA0((v261 > 1), v262 + 1, 1, v260);
      }

      *(v260 + 2) = v262 + 1;
      v263 = &v260[16 * v262];
      *(v263 + 4) = 0xD000000000000012;
      *(v263 + 5) = 0x8000000100105AC0;
      v396 = v260;
    }

    goto LABEL_155;
  }

  p_ivars = &ApprovalSettingsStateManager.ivars;
  if (v258 == v350 && v80 == v355)
  {

    goto LABEL_155;
  }

  v264 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v264 & 1) == 0)
  {
    goto LABEL_148;
  }

LABEL_155:
  v392 = v396;
  if (!*(v396 + 2))
  {

    [*&v365[v357] unlock];

    return 0;
  }

  v138 = v365;
  if (p_ivars[347] != -1)
  {
    swift_once();
  }

  v265 = type metadata accessor for Logger();
  v266 = sub_1000144F0(v265, qword_10014E9C8);
  v267 = Logger.logObject.getter();
  v268 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v267, v268))
  {
    v269 = swift_slowAlloc();
    *v269 = 0;
    _os_log_impl(&_mh_execute_header, v267, v268, "Saving dextbin info, encoding", v269, 2u);
  }

  v270 = type metadata accessor for PropertyListEncoder();
  v271 = *(v270 + 48);
  v272 = *(v270 + 52);
  swift_allocObject();

  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  *&v397 = v77;
  *(&v397 + 1) = v258;
  *&v398 = v80;
  sub_10004F6B4();
  v273 = v362;
  v274 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v139 = v273;
  if (v273)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
LABEL_172:
    v316 = sub_10003E338(_swiftEmptyArrayStorage);
    v317 = &v138[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo];
    v319 = *&v138[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo];
    v318 = *&v138[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 8];
    v320 = *&v138[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 16];
    *v317 = v316;
    v317[1] = 0xD000000000000024;
    v317[2] = v344;
    sub_10004F708(v319);
    swift_errorRetain();
    v321 = Logger.logObject.getter();
    v322 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v321, v322))
    {
      v323 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      *&v397 = v324;
      *v323 = 136315138;
      v401 = v139;
      swift_errorRetain();
      sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
      v325 = String.init<A>(describing:)();
      v327 = sub_1000E3AF8(v325, v326, &v397);
      v138 = v365;

      *(v323 + 4) = v327;
      _os_log_impl(&_mh_execute_header, v321, v322, "Can't save dextbin info: %s", v323, 0xCu);
      sub_100003C90(v324);
    }

    v328 = v357;

    [*&v138[v328] unlock];

    return &off_100126020;
  }

  v386 = v258;
  v387 = 0;
  v390 = v274;
  v391 = v275;

  v389 = v266;
  v277 = Logger.logObject.getter();
  v278 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v277, v278))
  {
    v279 = swift_slowAlloc();
    *v279 = 0;
    _os_log_impl(&_mh_execute_header, v277, v278, "Writing new dextbin info contents", v279, 2u);
    v138 = v365;
  }

  v280 = *sub_100003C4C(v138 + 2, *(v138 + 5));
  sub_1000DF9D4(&v397);
  v281 = *(&v398 + 1);
  v282 = v399;
  sub_100003C4C(&v397, *(&v398 + 1));
  v283 = v351;
  sub_100048708(v351);
  v284 = URL.path.getter();
  v286 = v285;
  v287 = *(v368 + 8);
  v368 += 8;
  v388 = v287;
  (v287)(v283, v366);
  v289 = v390;
  v288 = v391;
  sub_1000146C4(v390, v391);
  v290 = sub_10003E834(_swiftEmptyArrayStorage);
  LOBYTE(v281) = (*(v282 + 40))(v284, v286, v289, v288, v290, v281, v282);

  sub_1000128D8(v289, v288);

  sub_100003C90(&v397);
  if ((v281 & 1) == 0)
  {
    v300 = errno.getter();
    if (!strerror(v300))
    {
      goto LABEL_195;
    }

    v301 = String.init(cString:)();
    v303 = v302;
    *&v397 = 0;
    *(&v397 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    *&v397 = 0x6946657461657263;
    *(&v397 + 1) = 0xEB0000000020656CLL;
    v304 = v351;
    v138 = v365;
    sub_100048708(v351);
    v305 = URL.path.getter();
    v307 = v306;
    (v388)(v304, v366);
    v308._countAndFlagsBits = v305;
    v308._object = v307;
    String.append(_:)(v308);

    v309._countAndFlagsBits = 0x3A64656C69616620;
    v309._object = 0xEF206F6E72726520;
    String.append(_:)(v309);
    v310._countAndFlagsBits = v301;
    v310._object = v303;
    String.append(_:)(v310);

    v311 = v397;
    sub_10001449C();
    v139 = swift_allocError();
    *v312 = v311;
    v313 = v400;
    v315 = v398;
    v314 = v399;
    *(v312 + 16) = v397;
    *(v312 + 32) = v315;
    *(v312 + 48) = v314;
    *(v312 + 64) = v313;
    *(v312 + 72) = 19;
    swift_willThrow();
    sub_1000128D8(v390, v391);
    goto LABEL_172;
  }

  v291 = Logger.logObject.getter();
  v292 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v291, v292))
  {
    v293 = swift_slowAlloc();
    *v293 = 0;
    _os_log_impl(&_mh_execute_header, v291, v292, "Replacing old dextbin info contents", v293, 2u);
  }

  v138 = v365;
  v294 = *sub_100003C4C(v365 + 2, *(v365 + 5));
  sub_1000DF9D4(&v397);
  v295 = *(&v398 + 1);
  v296 = v399;
  sub_100003C4C(&v397, *(&v398 + 1));
  v73 = v347;
  sub_1000486E4(v347);
  v127 = v346;
  sub_100048708(v346);
  v297 = v387;
  (*(v296 + 88))(v73, v127, 0, 0, 0, 0, v295, v296);
  v139 = v297;
  if (v297)
  {
    sub_1000128D8(v390, v391);
    v298 = v366;
    v299 = v388;
    (v388)(v127, v366);
    (v299)(v73, v298);

    sub_100003C90(&v397);
    goto LABEL_172;
  }

LABEL_177:
  v329 = v127;
  v330 = v366;
  v331 = v388;
  (v388)(v329, v366);
  (v331)(v73, v330);
  sub_100003C90(&v397);
  v332 = *sub_100003C4C(v138 + 2, *(v138 + 5));
  sub_1000DF9D4(&v397);
  v333 = *(&v398 + 1);
  v334 = v399;
  sub_100003C4C(&v397, *(&v398 + 1));
  v335 = v345;
  sub_100048708(v345);
  (*(v334 + 104))(v335, v333, v334);
  if (v139)
  {

    sub_1000128D8(v390, v391);
    (v331)(v335, v366);
  }

  else
  {
    (v331)(v335, v366);
    sub_1000128D8(v390, v391);
  }

  sub_100003C90(&v397);
  v336 = v365;
  v337 = &v365[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo];
  v338 = *&v365[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo];
  v339 = *&v365[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 8];
  v340 = *&v365[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 16];
  v341 = v386;
  *v337 = v77;
  v337[1] = v341;
  v337[2] = v80;
  sub_10004F708(v338);
  [*(v336 + v357) unlock];
  return v392;
}

uint64_t sub_10004C554()
{
  sub_100003C90((v0 + 16));
  v1 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_applicationManager);

  v4 = *(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_activeDriversStateManager);

  v5 = *(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_subscribers);

  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager____lazy_storage___infoLocation, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager____lazy_storage___nextInfoLocation, &unk_1001389D0, &qword_1000F4F60);
  v6 = *(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 8);
  v7 = *(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 16);
  sub_10004F708(*(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo));
  return v0;
}

uint64_t sub_10004C66C()
{
  sub_10004C554();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DriverBinManager()
{
  result = qword_100135618;
  if (!qword_100135618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004C718()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10004C820();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10004C820()
{
  if (!qword_100134D18)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100134D18);
    }
  }
}

uint64_t sub_10004C878()
{
  v1 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_subscribers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10004C8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_10004CA44(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_10004CEC4(v11, v7, a3, v5);

  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10004CA44(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  v42 = a4;
  v34 = a2;
  v35 = a1;
  v5 = type metadata accessor for DriverBinEntry();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5 - 8);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v43 = a3;
  v44 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v38 = v11 + 16;
  v39 = v11;
  v36 = 0;
  v37 = (v11 + 8);
  while (v19)
  {
    v45 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v44;
LABEL_11:
    v25 = v43;
    (*(v39 + 16))(v22, v43[6] + *(v39 + 72) * v21, v8);
    v26 = v21;
    v27 = v25[7] + *(v41 + 72) * v21;
    v28 = v8;
    v29 = v40;
    sub_100014718(v27, v40, type metadata accessor for DriverBinEntry);
    v30 = v46;
    v31 = v42(v22, v29);
    v46 = v30;
    if (v30)
    {
      sub_100052CD4(v29, type metadata accessor for DriverBinEntry);
      return (*v37)(v22, v28);
    }

    v32 = v31;
    sub_100052CD4(v29, type metadata accessor for DriverBinEntry);
    result = (*v37)(v22, v28);
    v8 = v28;
    v19 = v45;
    if (v32)
    {
      *(v35 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_100058768(v35, v34, v36, v43);
      }
    }
  }

  v23 = v13;
  v22 = v44;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_100058768(v35, v34, v36, v43);
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      v45 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10004CD84(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_10004F748(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t *sub_10004CE28(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10004E3DC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_10004CEC4(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
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

    v8 = sub_10004CA44(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_10004CF54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_10004ECC0(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_10004D00C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for URL();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003CDC(&qword_1001357D8, &unk_1000F56D0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_100052DB8(&qword_1001342B0, &type metadata accessor for URL);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_10004D334(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v132 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v129 = &v122 - v10;
  v11 = __chkstk_darwin(v9);
  v136 = &v122 - v12;
  v13 = __chkstk_darwin(v11);
  v131 = &v122 - v14;
  v15 = __chkstk_darwin(v13);
  v126 = &v122 - v16;
  v17 = __chkstk_darwin(v15);
  v135 = &v122 - v18;
  v19 = __chkstk_darwin(v17);
  v130 = &v122 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v122 - v22;
  __chkstk_darwin(v21);
  v25 = &v122 - v24;
  v26 = *sub_100003C4C((v1 + 16), *(v1 + 40));
  sub_1000DF9D4(&v151);
  v27 = v152;
  v28 = v153;
  sub_100003C4C(&v151, v152);
  v29 = (*(v28 + 24))(v2 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory, 0, 1, v27, v28);
  sub_100003C90(&v151);
  v30 = sub_100047A20(a1);
  v144 = 0;
  v31 = sub_1000EB530(v30);

  v139 = *(v29 + 16);
  v140 = v2;
  if (v139)
  {
    v34 = 0;
    v134 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v137 = v29 + v134;
    v149 = (v5 + 16);
    v35 = (v5 + 8);
    v133 = (v5 + 32);
    *&v145 = v31 + 56;
    v36 = _swiftEmptyArrayStorage;
    *&v33 = 136315138;
    v123 = v33;
    *&v33 = 136315394;
    v122 = v33;
    v146 = v31;
    v147 = v25;
    v142 = v5;
    v138 = v29;
    while (1)
    {
      if (v34 >= *(v29 + 16))
      {
        __break(1u);
        return result;
      }

      v37 = *(v5 + 72);
      *&v143 = v34;
      v148 = v37;
      v38 = *(v5 + 16);
      v38(v25, v137 + v37 * v34, v4);
      if (URL.hasDirectoryPath.getter())
      {
        v141 = v36;
        if (!*(v31 + 16) || (v39 = *(v31 + 40), sub_100052DB8(&qword_1001342B0, &type metadata accessor for URL), v40 = dispatch thunk of Hashable._rawHashValue(seed:)(), v41 = -1 << *(v31 + 32), v42 = v40 & ~v41, ((*(v145 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0))
        {
LABEL_14:
          v36 = v141;
          if (qword_100133AD8 != -1)
          {
            swift_once();
          }

          v46 = type metadata accessor for Logger();
          sub_1000144F0(v46, qword_10014E9C8);
          v47 = v130;
          v38(v130, v147, v4);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v127 = v50;
            v128 = swift_slowAlloc();
            v151 = v128;
            *v50 = v123;
            sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL);
            v51 = dispatch thunk of CustomStringConvertible.description.getter();
            v52 = v47;
            v54 = v53;
            v55 = *v35;
            (*v35)(v52, v4);
            v56 = sub_1000E3AF8(v51, v54, &v151);

            v57 = v127;
            *(v127 + 1) = v56;
            _os_log_impl(&_mh_execute_header, v48, v49, "Will remove untracked directory %s", v57, 0xCu);
            sub_100003C90(v128);

            v31 = v146;
          }

          else
          {

            v75 = v47;
            v55 = *v35;
            (*v35)(v75, v4);
          }

          v25 = v147;
          v38(v135, v147, v4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_100031468(0, v36[2] + 1, 1, v36);
          }

          v5 = v142;
          v77 = v36[2];
          v76 = v36[3];
          if (v77 >= v76 >> 1)
          {
            v36 = sub_100031468(v76 > 1, v77 + 1, 1, v36);
          }

          v55(v25, v4);
          v36[2] = v77 + 1;
          result = (*v133)(v36 + v134 + v77 * v148, v135, v4);
          v29 = v138;
          goto LABEL_6;
        }

        v43 = ~v41;
        while (1)
        {
          v38(v23, *(v31 + 48) + v42 * v148, v4);
          sub_100052DB8(&qword_1001342B8, &type metadata accessor for URL);
          v44 = dispatch thunk of static Equatable.== infix(_:_:)();
          v45 = *v35;
          (*v35)(v23, v4);
          if (v44)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          v31 = v146;
          if (((*(v145 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v36 = v141;
        v25 = v147;
      }

      else
      {
        sub_1000486E4(v23);
        v58 = static URL.== infix(_:_:)();
        v45 = *v35;
        (*v35)(v23, v4);
        if ((v58 & 1) == 0)
        {
          v141 = v36;
          if (qword_100133AD8 != -1)
          {
            swift_once();
          }

          v59 = type metadata accessor for Logger();
          sub_1000144F0(v59, qword_10014E9C8);
          v60 = v126;
          v38(v126, v25, v4);

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            LODWORD(v127) = v62;
            v64 = v60;
            v65 = v63;
            v128 = swift_slowAlloc();
            v151 = v128;
            *v65 = v122;
            v124 = sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL);
            v125 = v61;
            v66 = dispatch thunk of CustomStringConvertible.description.getter();
            v68 = v67;
            v45(v64, v4);
            v69 = sub_1000E3AF8(v66, v68, &v151);
            v25 = v147;

            *(v65 + 4) = v69;
            *(v65 + 12) = 2080;
            sub_1000486E4(v23);
            v70 = dispatch thunk of CustomStringConvertible.description.getter();
            v72 = v71;
            v45(v23, v4);
            v73 = sub_1000E3AF8(v70, v72, &v151);

            *(v65 + 14) = v73;
            v74 = v125;
            _os_log_impl(&_mh_execute_header, v125, v127, "Will remove untracked file %s, since it is not the expected Info.plist at %s", v65, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            v45(v60, v4);
          }

          v38(v131, v25, v4);
          v36 = v141;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_100031468(0, v36[2] + 1, 1, v36);
          }

          v5 = v142;
          v79 = v36[2];
          v78 = v36[3];
          if (v79 >= v78 >> 1)
          {
            v36 = sub_100031468(v78 > 1, v79 + 1, 1, v36);
          }

          v45(v25, v4);
          v36[2] = v79 + 1;
          result = (*v133)(v36 + v134 + v79 * v148, v131, v4);
          v29 = v138;
          goto LABEL_5;
        }
      }

      v29 = v138;
      result = (v45)(v25, v4);
      v5 = v142;
LABEL_5:
      v31 = v146;
LABEL_6:
      v34 = v143 + 1;
      if (v143 + 1 == v139)
      {

        v2 = v140;
        goto LABEL_37;
      }
    }
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_37:
  v81 = v36;
  v82 = v36[2];
  v83 = v136;
  if (v82)
  {
    v85 = *(v5 + 16);
    v84 = v5 + 16;
    v149 = v85;
    v86 = (*(v84 + 64) + 32) & ~*(v84 + 64);
    v141 = v81;
    v87 = v81 + v86;
    v147 = *(v84 + 56);
    v148 = (v84 - 8);
    *&v80 = 136315138;
    v143 = v80;
    *&v80 = 136315394;
    v145 = v80;
    v142 = v84;
    v85(v136, v81 + v86, v4);
    while (1)
    {
      v89 = *sub_100003C4C((v2 + 16), *(v2 + 40));
      sub_1000DF9D4(&v151);
      v90 = v152;
      v91 = v153;
      sub_100003C4C(&v151, v152);
      v92 = v144;
      (*(v91 + 104))(v83, v90, v91);
      v93 = v92;
      if (v92)
      {
        sub_100003C90(&v151);
        v94 = v132;
        if (qword_100133AD8 != -1)
        {
          swift_once();
        }

        v95 = type metadata accessor for Logger();
        sub_1000144F0(v95, qword_10014E9C8);
        v149(v94, v83, v4);
        swift_errorRetain();
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v151 = v146;
          *v98 = v145;
          sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL);
          v99 = dispatch thunk of CustomStringConvertible.description.getter();
          v100 = v94;
          v102 = v101;
          v103 = *v148;
          (*v148)(v100, v4);
          v104 = sub_1000E3AF8(v99, v102, &v151);

          *(v98 + 4) = v104;
          *(v98 + 12) = 2080;
          v150 = v93;
          swift_errorRetain();
          sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
          v105 = String.init<A>(describing:)();
          v107 = sub_1000E3AF8(v105, v106, &v151);

          *(v98 + 14) = v107;
          _os_log_impl(&_mh_execute_header, v96, v97, "Difficulty removing %s: %s", v98, 0x16u);
          swift_arrayDestroy();
          v108 = v140;

          v83 = v136;
          (v103)(v136, v4);
          v2 = v108;
        }

        else
        {

          v88 = *v148;
          (*v148)(v94, v4);
          v83 = v136;
          (v88)(v136, v4);
        }

        v144 = 0;
      }

      else
      {
        v144 = 0;
        sub_100003C90(&v151);
        if (qword_100133AD8 != -1)
        {
          swift_once();
        }

        v109 = type metadata accessor for Logger();
        sub_1000144F0(v109, qword_10014E9C8);
        v110 = v129;
        v149(v129, v83, v4);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = v110;
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v151 = v115;
          *v114 = v143;
          v116 = URL.path.getter();
          v118 = v117;
          v146 = *v148;
          (v146)(v113, v4);
          v119 = v116;
          v83 = v136;
          v120 = sub_1000E3AF8(v119, v118, &v151);

          *(v114 + 4) = v120;
          _os_log_impl(&_mh_execute_header, v111, v112, "Removed untracked path %s", v114, 0xCu);
          sub_100003C90(v115);
          v2 = v140;

          (v146)(v83, v4);
        }

        else
        {

          v121 = *v148;
          (*v148)(v110, v4);
          (v121)(v83, v4);
        }
      }

      v87 = &v147[v87];
      if (!--v82)
      {
        break;
      }

      v149(v83, v87, v4);
    }
  }
}

uint64_t sub_10004E3DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v63 = a2;
  v65 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v83 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v62 - v11;
  v76 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v12 = *(*(v76 - 8) + 64);
  v13 = __chkstk_darwin(v76);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v62 - v16;
  v18 = type metadata accessor for DriverBinEntry();
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = *(v73 + 64);
  __chkstk_darwin(v18);
  v81 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for UUID();
  v21 = *(*(v80 - 8) + 64);
  result = __chkstk_darwin(v80);
  v79 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = 0;
  v25 = 0;
  v77 = a3;
  v26 = *(a3 + 64);
  v66 = a3 + 64;
  v27 = 1 << *(a3 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v70 = v23 + 16;
  v86 = (v7 + 16);
  v87 = a4;
  v84 = a4 + 7;
  v64 = v7;
  v85 = (v7 + 8);
  v71 = v30;
  v72 = v23;
  v69 = (v23 + 8);
  v82 = v15;
  v75 = v17;
  while (v29)
  {
    v33 = __clz(__rbit64(v29));
    v78 = (v29 - 1) & v29;
LABEL_13:
    v36 = v33 | (v25 << 6);
    v37 = v77;
    v38 = *(v72 + 16);
    v40 = v79;
    v39 = v80;
    v38(v79, v77[6] + *(v72 + 72) * v36, v80);
    v41 = v37[7];
    v42 = *(v73 + 72);
    v68 = v36;
    v43 = v41 + v42 * v36;
    v44 = v81;
    sub_100014718(v43, v81, type metadata accessor for DriverBinEntry);
    v38(v17, v40, v39);
    v45 = v76;
    sub_100014718(v44, &v17[*(v76 + 48)], type metadata accessor for DriverBinEntry);
    v46 = v82;
    sub_100014894(v17, v82, &unk_1001373B0, &unk_1000F3A40);
    v47 = v46 + *(v45 + 48);
    v48 = *v86;
    (*v86)(v88, v47 + *(v74 + 28), v6);
    sub_100052CD4(v47, type metadata accessor for DriverBinEntry);
    if (v87[2] && (v49 = v87, v50 = v87[5], sub_100052DB8(&qword_1001342B0, &type metadata accessor for URL), v51 = dispatch thunk of Hashable._rawHashValue(seed:)(), v52 = -1 << *(v49 + 32), v53 = v51 & ~v52, ((*(v84 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0))
    {
      v54 = ~v52;
      v55 = *(v64 + 72);
      while (1)
      {
        v56 = v83;
        v48(v83, v87[6] + v55 * v53, v6);
        sub_100052DB8(&qword_1001342B8, &type metadata accessor for URL);
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        v58 = *v85;
        (*v85)(v56, v6);
        if (v57)
        {
          break;
        }

        v53 = (v53 + 1) & v54;
        if (((*(v84 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v58(v88, v6);
      v17 = v75;
      sub_10000A184(v75, &unk_1001373B0, &unk_1000F3A40);
      v59 = *v69;
      v60 = v80;
      (*v69)(v82, v80);
      sub_100052CD4(v81, type metadata accessor for DriverBinEntry);
      result = (v59)(v79, v60);
      *(v65 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
      v61 = __OFADD__(v67++, 1);
      v30 = v71;
      v29 = v78;
      if (v61)
      {
        __break(1u);
        return sub_100058768(v65, v63, v67, v77);
      }
    }

    else
    {
LABEL_5:
      (*v85)(v88, v6);
      v17 = v75;
      sub_10000A184(v75, &unk_1001373B0, &unk_1000F3A40);
      v31 = *v69;
      v32 = v80;
      (*v69)(v82, v80);
      sub_100052CD4(v81, type metadata accessor for DriverBinEntry);
      result = (v31)(v79, v32);
      v30 = v71;
      v29 = v78;
    }
  }

  v34 = v25;
  while (1)
  {
    v25 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v25 >= v30)
    {
      return sub_100058768(v65, v63, v67, v77);
    }

    v35 = *(v66 + 8 * v25);
    ++v34;
    if (v35)
    {
      v33 = __clz(__rbit64(v35));
      v78 = (v35 - 1) & v35;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004EB00(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_10004CE28(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_10004E3DC((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_10004ECC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v49 = a4;
  v43 = a1;
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v57 = &v40 - v14;
  v44 = 0;
  v15 = 0;
  v51 = a3;
  v16 = *(a3 + 56);
  v42 = a3 + 56;
  v17 = 1 << *(a3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v47 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory;
  v48 = v13;
  v20 = (v17 + 63) >> 6;
  v55 = v13 + 16;
  v56 = a5;
  v53 = a5 + 56;
  v21 = (v13 + 8);
  v46 = v20;
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_14:
    v26 = v23 | (v15 << 6);
    v27 = *(v51 + 48);
    v28 = *(v48 + 72);
    v50 = v26;
    v54 = v28;
    v29 = *(v48 + 16);
    v29(v57, v27 + v28 * v26, v7);
    URL.path.getter();
    v30._countAndFlagsBits = URL.path.getter();
    v31 = String.hasPrefix(_:)(v30);

    if (!v31)
    {
      v22 = *v21;
      goto LABEL_6;
    }

    v45 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (*(a5 + 16) && (v32 = *(a5 + 40), sub_100052DB8(&qword_1001342B0, &type metadata accessor for URL), v33 = dispatch thunk of Hashable._rawHashValue(seed:)(), v34 = -1 << *(a5 + 32), v35 = v33 & ~v34, ((*(v53 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
    {
      v36 = ~v34;
      while (1)
      {
        v29(v11, *(v56 + 48) + v35 * v54, v7);
        sub_100052DB8(&qword_1001342B8, &type metadata accessor for URL);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v21;
        (*v21)(v11, v7);
        if (v37)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v53 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          result = (v22)(v57, v7);
          goto LABEL_21;
        }
      }

LABEL_6:
      result = (v22)(v57, v7);
      a5 = v56;
      v20 = v46;
      v19 = v52;
    }

    else
    {
      result = (*v21)(v57, v7);
LABEL_21:
      *(v43 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v38 = __OFADD__(v44++, 1);
      a5 = v56;
      v20 = v46;
      v19 = v52;
      if (v38)
      {
        goto LABEL_28;
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      v39 = v51;

      return sub_10004D00C(v43, v41, v44, v39);
    }

    v25 = *(v42 + 8 * v15);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v52 = (v25 - 1) & v25;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10004F0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = v45 - v14;
  v15 = *(a1 + 32);
  v16 = v15 & 0x3F;
  v46 = ((1 << v15) + 63) >> 6;
  object = 8 * v46;
  v56 = a2;

  if (v16 > 0xD)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v45[0] = v45;
    v45[1] = v4;
    __chkstk_darwin(v18);
    v48 = v45 - ((object + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v48, object);
    v49 = 0;
    v19 = 0;
    v20 = *(a1 + 56);
    v47 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v52 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory;
    v53 = v9;
    v24 = (v21 + 63) >> 6;
    v60 = v9 + 16;
    v61 = a3;
    v58 = a3 + 56;
    v9 += 8;
    v51 = v24;
    v54 = a1;
    while (v23)
    {
      v26 = __clz(__rbit64(v23));
      v57 = (v23 - 1) & v23;
LABEL_15:
      v29 = v26 | (v19 << 6);
      v30 = *(a1 + 48);
      v31 = *(v53 + 72);
      v55 = v29;
      v59 = v31;
      v4 = *(v53 + 16);
      v4(v62, v30 + v31 * v29, v8);
      URL.path.getter();
      v32._countAndFlagsBits = URL.path.getter();
      object = v32._object;
      v33 = String.hasPrefix(_:)(v32);

      if (!v33)
      {
        v25 = *v9;
        goto LABEL_7;
      }

      v50 = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (*(a3 + 16) && (v34 = *(a3 + 40), sub_100052DB8(&qword_1001342B0, &type metadata accessor for URL), object = v62, v35 = dispatch thunk of Hashable._rawHashValue(seed:)(), v36 = -1 << *(a3 + 32), v37 = v35 & ~v36, ((*(v58 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
      {
        v38 = ~v36;
        while (1)
        {
          v4(v13, *(v61 + 48) + v37 * v59, v8);
          sub_100052DB8(&qword_1001342B8, &type metadata accessor for URL);
          object = dispatch thunk of static Equatable.== infix(_:_:)();
          v25 = *v9;
          (*v9)(v13, v8);
          if (object)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v58 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            v25(v62, v8);
            goto LABEL_22;
          }
        }

LABEL_7:
        v25(v62, v8);
        a3 = v61;
        a1 = v54;
        v24 = v51;
        v23 = v57;
      }

      else
      {
        (*v9)(v62, v8);
LABEL_22:
        a1 = v54;
        *&v48[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
        v39 = __OFADD__(v49++, 1);
        a3 = v61;
        v24 = v51;
        v23 = v57;
        if (v39)
        {
          goto LABEL_30;
        }
      }
    }

    v27 = v19;
    while (1)
    {
      v19 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        v40 = sub_10004D00C(v48, v46, v49, a1);

        return v40;
      }

      v28 = *(v47 + 8 * v19);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v57 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v42 = swift_slowAlloc();
  v43 = a3;
  v44 = v56;

  v40 = sub_10004CF54(v42, v46, a1, v44, v43);

  return v40;
}

uint64_t sub_10004F64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10004F6B4()
{
  result = qword_1001357D0;
  if (!qword_1001357D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001357D0);
  }

  return result;
}

uint64_t sub_10004F708(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10004F748(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v71 = a5;
  v73 = a4;
  v55 = a2;
  v56 = a1;
  v69 = type metadata accessor for URL();
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v69);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v9 = *(*(v68 - 8) + 64);
  v10 = __chkstk_darwin(v68);
  v78 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v54 - v12;
  v13 = type metadata accessor for DriverBinEntry();
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  __chkstk_darwin(v13);
  v76 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UUID();
  v16 = *(*(v75 - 8) + 64);
  result = __chkstk_darwin(v75);
  v74 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v70 = a3;
  v23 = a3[8];
  v22 = a3 + 8;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v57 = 0;
  v58 = (v24 + 63) >> 6;
  v62 = (v6 + 16);
  v63 = v18 + 16;
  v64 = v18;
  v60 = (v18 + 8);
  v61 = (v6 + 8);
  while (v26)
  {
    v30 = __clz(__rbit64(v26));
    v72 = (v26 - 1) & v26;
LABEL_12:
    v33 = v30 | (v20 << 6);
    v34 = v70;
    v35 = *(v64 + 16);
    v36 = v74;
    v37 = v75;
    v35(v74, v70[6] + *(v64 + 72) * v33, v75);
    v38 = v34[7];
    v39 = *(v66 + 72);
    v59 = v33;
    v40 = v38 + v39 * v33;
    v41 = v76;
    sub_100014718(v40, v76, type metadata accessor for DriverBinEntry);
    v42 = v77;
    v35(v77, v36, v37);
    v43 = v68;
    sub_100014718(v41, v42 + *(v68 + 48), type metadata accessor for DriverBinEntry);
    v44 = v78;
    sub_100014894(v42, v78, &unk_1001373B0, &unk_1000F3A40);
    v45 = v44 + *(v43 + 48);
    v46 = v65;
    v47 = v69;
    (*v62)(v65, v45 + *(v67 + 28), v69);
    sub_100052CD4(v45, type metadata accessor for DriverBinEntry);
    v48 = URL.lastPathComponent.getter();
    v50 = v49;
    (*v61)(v46, v47);
    if (v48 == v73 && v50 == v71)
    {

      sub_10000A184(v77, &unk_1001373B0, &unk_1000F3A40);
      v51 = *v60;
      v52 = v75;
      (*v60)(v78, v75);
      sub_100052CD4(v76, type metadata accessor for DriverBinEntry);
      result = (v51)(v74, v52);
      v26 = v72;
      goto LABEL_15;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10000A184(v77, &unk_1001373B0, &unk_1000F3A40);
    v28 = *v60;
    v29 = v75;
    (*v60)(v78, v75);
    sub_100052CD4(v76, type metadata accessor for DriverBinEntry);
    result = (v28)(v74, v29);
    v26 = v72;
    if (v27)
    {
LABEL_15:
      *(v56 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      if (__OFADD__(v57++, 1))
      {
        __break(1u);
        return sub_100058768(v56, v55, v57, v70);
      }
    }
  }

  v31 = v20;
  while (1)
  {
    v20 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v20 >= v58)
    {
      return sub_100058768(v56, v55, v57, v70);
    }

    v32 = v22[v20];
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v72 = (v32 - 1) & v32;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004FD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_10004CD84(v14, v9, a1, a2, a3);

      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  __chkstk_darwin(v11);
  bzero(&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_10004F748((&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_10004FED4(uint64_t a1, uint64_t a2, uint64_t *a3, char **a4)
{
  v331 = a4;
  v378 = a3;
  v6 = type metadata accessor for ApplicationRecord(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v364 = &v326 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v353 = &v326 - v10;
  v373 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v11 = *(v373 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v373);
  v340 = &v326 - v13;
  v14 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v372 = &v326 - v16;
  v351 = sub_100003CDC(&qword_1001342E8, &qword_1000F4F50);
  v17 = *(*(v351 - 8) + 64);
  __chkstk_darwin(v351);
  v350 = &v326 - v18;
  v357 = type metadata accessor for DriverBinEntry();
  v19 = *(*(v357 - 1) + 64);
  v20 = __chkstk_darwin(v357);
  v329 = &v326 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v330 = &v326 - v23;
  __chkstk_darwin(v22);
  v356 = &v326 - v24;
  v382 = type metadata accessor for UUID();
  v25 = *(v382 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v382);
  v366 = &v326 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v365 = &v326 - v30;
  v31 = __chkstk_darwin(v29);
  v386 = &v326 - v32;
  v33 = __chkstk_darwin(v31);
  v333 = &v326 - v34;
  __chkstk_darwin(v33);
  v358 = &v326 - v35;
  v397 = type metadata accessor for URL();
  v36 = *(v397 - 8);
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v397);
  v338 = &v326 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v355 = &v326 - v41;
  v42 = __chkstk_darwin(v40);
  v345 = &v326 - v43;
  v44 = __chkstk_darwin(v42);
  v352 = &v326 - v45;
  v46 = __chkstk_darwin(v44);
  v48 = &v326 - v47;
  __chkstk_darwin(v46);
  v374 = &v326 - v49;
  v401 = a1;
  v376 = sub_10004C8C4(sub_100052D98, v400, a2);
  v398 = 0;
  v337 = v6;
  v51 = *(v6 + 24);
  v384 = a1;
  v375 = *(a1 + v51);
  v371 = *(v375 + 16);
  if (!v371)
  {
  }

  v52 = 0;
  v363 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory;
  v370 = v375 + 32;
  v369 = (v11 + 56);
  v53 = (v11 + 48);
  v54 = (v36 + 8);
  v368 = v53;
  v339 = " containing staged bundle ";
  v335 = (v25 + 16);
  v336 = 0x8000000100105BB0;
  v349 = "Driver Bin Changed";
  v377 = (v36 + 16);
  v332 = "xisting bin entry for ";
  v328 = " the directory does not exist";
  v327 = "Staged application ";
  *&v50 = 136315138;
  v347 = v50;
  *&v50 = 136315650;
  v346 = v50;
  *(&v55 + 1) = 2;
  v389 = xmmword_1000F3160;
  *&v55 = 136315906;
  v334 = v55;
  *&v55 = 136315394;
  v348 = v55;
  v391 = (v36 + 8);
  v396 = v48;
  v379 = (v25 + 32);
  v387 = (v25 + 8);
  do
  {
    if (v52 >= *(v375 + 16))
    {
      goto LABEL_115;
    }

    v56 = (v370 + 16 * v52);
    v57 = *v56;
    v58 = v56[1];
    v388 = v52 + 1;

    v59 = v374;
    v381 = v57;
    URL.init(fileURLWithPath:)();
    v60 = URL.lastPathComponent.getter();
    v62 = v61;
    v390 = *v54;
    v390(v59, v397);

    v64 = v398;
    v65 = sub_10004FD08(v63, v60, v62);

    v393 = v62;

    v66 = 0;
    v67 = 1 << *(v65 + 32);
    v68 = (v67 + 63) >> 6;
    v69 = 64;
    v70 = v372;
    v71 = v373;
    while (1)
    {
      v72 = *(v65 + v69);
      if (v72)
      {
        break;
      }

      v66 -= 64;
      v69 += 8;
      if (!--v68)
      {
        goto LABEL_9;
      }
    }

    v73 = __clz(__rbit64(v72));
    if (v73 - v67 == v66)
    {
LABEL_9:
      v74 = 1;
      goto LABEL_11;
    }

    v75 = *(v373 + 48);
    v76 = v340;
    sub_10008DFBC(v340, v340 + v75, v73 - v66, *(v65 + 36), 0, v65);
    (*v379)(v70, v76, v382);
    sub_10004F64C(v76 + v75, v70 + *(v71 + 48), type metadata accessor for DriverBinEntry);
    v74 = 0;
LABEL_11:
    v394 = v58;
    (*v369)(v70, v74, 1, v71);

    v77 = (*v368)(v70, 1, v71);
    v383 = v60;
    if (v77 != 1)
    {
      v398 = v64;
      v91 = *(v71 + 48);
      v92 = v351;
      v93 = *(v351 + 48);
      v89 = v379;
      v94 = *v379;
      v95 = v350;
      v88 = v382;
      (*v379)(v350, v70, v382);
      sub_10004F64C(v70 + v91, &v95[v93], type metadata accessor for DriverBinEntry);
      v96 = *(v92 + 48);
      v97 = v358;
      v94(v358, v95, v88);
      v98 = &v95[v96];
      v99 = v356;
      sub_10004F64C(v98, v356, type metadata accessor for DriverBinEntry);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        *&v408 = 0;
        *(&v408 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        *&v408 = 0x72746E65206E6942;
        *(&v408 + 1) = 0xEA00000000002079;
        v405._countAndFlagsBits = 0;
        v405._object = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        strcpy(&v405, "Staged bundle ");
        HIBYTE(v405._object) = -18;
        v115 = v99;
        v116 = v97;
        v117 = v357;
        v118 = v357[7];
        sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL);
        v119._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v119);

        v120._countAndFlagsBits = 0x70706120726F6620;
        v120._object = 0xE900000000000020;
        String.append(_:)(v120);
        String.append(_:)(*(v115 + v117[5]));
        String.append(_:)(v405);

        v121._countAndFlagsBits = 0xD000000000000022;
        v121._object = (v339 | 0x8000000000000000);
        String.append(_:)(v121);
        sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID);
        v122._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v122);

        v123 = v408;
        sub_10001449C();
        v83 = swift_allocError();
        *v124 = v123;
        v125 = v411;
        v127 = v409;
        v126 = v410;
        *(v124 + 16) = v408;
        *(v124 + 32) = v127;
        *(v124 + 48) = v126;
        *(v124 + 64) = v125;
        *(v124 + 72) = 50;
        swift_willThrow();
        v90 = v387;
        (*v387)(v116, v88);
        v128 = v115;
LABEL_29:
        sub_100052CD4(v128, type metadata accessor for DriverBinEntry);
        goto LABEL_30;
      }

      v90 = v387;
      if (*(*v378 + 16))
      {
        sub_1000615C4(v97);
        if (v100)
        {

          if (qword_100133AD8 != -1)
          {
            swift_once();
          }

          v101 = type metadata accessor for Logger();
          sub_1000144F0(v101, qword_10014E9C8);
          v102 = v333;
          (*v335)(v333, v97, v88);
          v103 = v394;

          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            *&v408 = swift_slowAlloc();
            *v106 = v348;
            v107 = sub_1000E3AF8(v381, v103, &v408);

            *(v106 + 4) = v107;
            *(v106 + 12) = 2080;
            sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID);
            v108 = dispatch thunk of CustomStringConvertible.description.getter();
            v110 = v109;
            v111 = v88;
            v112 = *v90;
            (*v90)(v102, v111);
            v113 = sub_1000E3AF8(v108, v110, &v408);

            *(v106 + 14) = v113;
            _os_log_impl(&_mh_execute_header, v104, v105, "Skipping bundle at %s, already inserted into new bin with UUID %s", v106, 0x16u);
            swift_arrayDestroy();
            v114 = v391;

            v54 = v114;

            v112(v358, v111);
            sub_100052CD4(v356, type metadata accessor for DriverBinEntry);
LABEL_111:
            v52 = v388;
            continue;
          }

          v189 = *v90;
          (*v90)(v102, v88);
          v189(v97, v88);
          v141 = v356;
LABEL_53:
          sub_100052CD4(v141, type metadata accessor for DriverBinEntry);
          goto LABEL_98;
        }
      }

      LOBYTE(v405._countAndFlagsBits) = 0;
      v129 = *sub_100003C4C((v380 + 16), *(v380 + 40));
      sub_1000DF9D4(&v408);
      v130 = v410;
      sub_100003C4C(&v408, *(&v409 + 1));
      v131 = v357[6];
      v132 = URL.path.getter();
      v133 = (*(v130 + 136))(v132);

      if (v133)
      {
        countAndFlagsBits = v405._countAndFlagsBits;
        sub_100003C90(&v408);
        if (countAndFlagsBits)
        {
          v135 = *sub_100003C4C((v380 + 16), *(v380 + 40));
          sub_1000DF9D4(&v408);
          v136 = v410;
          sub_100003C4C(&v408, *(&v409 + 1));
          v137 = v357[7];
          v138 = URL.path.getter();
          v139 = (*(v136 + 136))(v138);

          if (v139)
          {
            v140 = v405._countAndFlagsBits;
            sub_100003C90(&v408);
            if (v140)
            {

              sub_100042504(v99);
              (*v90)(v358, v382);
              v141 = v99;
              goto LABEL_53;
            }
          }

          else
          {
            sub_100003C90(&v408);
          }

          *&v408 = 0;
          *(&v408 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          *&v408 = 0x6220646567617453;
          v142 = 0xEE0020656C646E75;
          goto LABEL_28;
        }
      }

      else
      {
        sub_100003C90(&v408);
      }

      *&v408 = 0;
      *(&v408 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      *&v408 = 0xD000000000000012;
      v142 = v336;
LABEL_28:
      *(&v408 + 1) = v142;
      v143._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v143);

      v144._countAndFlagsBits = 0x20726F6620;
      v144._object = 0xE500000000000000;
      String.append(_:)(v144);
      String.append(_:)(*(v99 + v357[5]));
      v145._countAndFlagsBits = 0x6F6E2073656F6420;
      v145._object = 0xEF74736978652074;
      String.append(_:)(v145);
      v146 = v408;
      sub_10001449C();
      v83 = swift_allocError();
      *v147 = v146;
      v148 = v411;
      v150 = v409;
      v149 = v410;
      *(v147 + 16) = v408;
      *(v147 + 32) = v150;
      *(v147 + 48) = v149;
      *(v147 + 64) = v148;
      *(v147 + 72) = 19;
      swift_willThrow();
      v88 = v382;
      (*v90)(v358, v382);
      v128 = v99;
      goto LABEL_29;
    }

    sub_10000A184(v70, &qword_1001342E0, &unk_1000F3A30);
    *&v408 = 0;
    *(&v408 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v78._countAndFlagsBits = 0xD000000000000026;
    v78._object = (v349 | 0x8000000000000000);
    String.append(_:)(v78);
    v79._countAndFlagsBits = sub_100019D24();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 0x7264206874697720;
    v80._object = 0xED00002072657669;
    String.append(_:)(v80);
    v81._countAndFlagsBits = v60;
    v81._object = v393;
    String.append(_:)(v81);
    v82 = v408;
    sub_10001449C();
    v83 = swift_allocError();
    *v84 = v82;
    v85 = v411;
    v87 = v409;
    v86 = v410;
    *(v84 + 16) = v408;
    *(v84 + 32) = v87;
    *(v84 + 48) = v86;
    *(v84 + 64) = v85;
    *(v84 + 72) = 50;
    swift_willThrow();
    v88 = v382;
    v89 = v379;
    v90 = v387;
LABEL_30:
    if (qword_100133AD8 != -1)
    {
      swift_once();
    }

    v151 = type metadata accessor for Logger();
    v152 = sub_1000144F0(v151, qword_10014E9C8);
    swift_errorRetain();
    v395 = v152;
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *&v408 = v156;
      *v155 = v347;
      v405._countAndFlagsBits = v83;
      swift_errorRetain();
      sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
      v157 = String.init<A>(describing:)();
      v159 = sub_1000E3AF8(v157, v158, &v408);

      *(v155 + 4) = v159;
      v90 = v387;
      _os_log_impl(&_mh_execute_header, v153, v154, "Failed to reuse existing bin entry: %s. Creating new bin entry", v155, 0xCu);
      sub_100003C90(v156);
    }

    v160 = v365;
    v161 = v380;
    v162 = *v378;
    UUID.init()();
    v163 = v366;
    while (*(v162 + 16))
    {
      sub_1000615C4(v160);
      if ((v164 & 1) == 0)
      {
        break;
      }

      UUID.init()();
      (*v90)(v160, v88);
      (*v89)(v160, v163, v88);
    }

    (*v89)(v386, v160, v88);
    UUID.uuidString.getter();
    v165 = v396;
    URL.appendingPathComponent(_:isDirectory:)();

    v166 = *sub_100003C4C((v161 + 16), *(v161 + 40));
    sub_1000DF9D4(&v408);
    v167 = *(&v409 + 1);
    v168 = v410;
    sub_100003C4C(&v408, *(&v409 + 1));
    v169 = sub_10003E834(_swiftEmptyArrayStorage);
    (*(v168 + 48))(v165, 1, v169, v167, v168);
    v385 = v83;
    v398 = 0;

    sub_100003C90(&v408);
    v170 = v353;
    sub_100014718(v384, v353, type metadata accessor for ApplicationRecord);
    v171 = v352;
    v172 = v397;
    v354 = *v377;
    v354(v352, v165, v397);

    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v173, v174))
    {

      v390(v171, v172);
      sub_100052CD4(v170, type metadata accessor for ApplicationRecord);
      v182 = v380;
      v183 = v381;
      goto LABEL_80;
    }

    v342 = v174;
    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v405._countAndFlagsBits = v176;
    *v175 = v346;
    v177 = (v170 + *(v337 + 32));
    v178 = *v177;
    v179 = v177[1];
    v180 = v179 >> 62;
    v367 = HIDWORD(*v177);
    v344 = v173;
    v343 = v175;
    v341 = v176;
    if ((v179 >> 62) > 1)
    {
      if (v180 != 2)
      {
        goto LABEL_51;
      }

      v185 = *(v178 + 16);
      v184 = *(v178 + 24);
      v181 = v184 - v185;
      if (__OFSUB__(v184, v185))
      {
        goto LABEL_123;
      }

      if (!v181)
      {
        goto LABEL_51;
      }
    }

    else if (v180)
    {
      v187 = v367 - v178;
      if (__OFSUB__(v367, v178))
      {
        goto LABEL_124;
      }

      v181 = v187;
      if (!v187)
      {
LABEL_51:
        v188 = _swiftEmptyArrayStorage;
        v182 = v380;
        goto LABEL_79;
      }
    }

    else
    {
      v181 = BYTE6(v179);
      if (!BYTE6(v179))
      {
        goto LABEL_51;
      }
    }

    *&v402 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v181 & ~(v181 >> 63), 0);
    v362 = v178;
    if (v180)
    {
      if (v180 == 2)
      {
        v186 = *(v178 + 16);
      }

      else
      {
        v186 = v362;
      }
    }

    else
    {
      v186 = 0;
    }

    v392 = v186;
    if (v181 < 0)
    {
      goto LABEL_122;
    }

    v190 = 0;
    v188 = v402;
    v360 = v178 >> 32;
    v361 = BYTE6(v179);
    v359 = &v408 + v392;
    do
    {
      if (v190 >= v181)
      {
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
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
        __break(1u);
LABEL_127:
        __break(1u);
      }

      v191 = v190 + 1;
      if (__OFADD__(v190, 1))
      {
        goto LABEL_114;
      }

      v192 = v392 + v190;
      if (v180 == 2)
      {
        if (v192 < *(v178 + 16))
        {
          goto LABEL_116;
        }

        if (v192 >= *(v178 + 24))
        {
          goto LABEL_119;
        }

        v197 = __DataStorage._bytes.getter();
        if (!v197)
        {
          goto LABEL_126;
        }

        v194 = v197;
        v198 = __DataStorage._offset.getter();
        v196 = v192 - v198;
        if (__OFSUB__(v192, v198))
        {
          goto LABEL_121;
        }

        goto LABEL_72;
      }

      if (v180 == 1)
      {
        if (v192 < v362 || v192 >= v360)
        {
          goto LABEL_118;
        }

        v193 = __DataStorage._bytes.getter();
        if (!v193)
        {
          goto LABEL_125;
        }

        v194 = v193;
        v195 = __DataStorage._offset.getter();
        v196 = v192 - v195;
        if (__OFSUB__(v192, v195))
        {
          goto LABEL_120;
        }

LABEL_72:
        v199 = *(v194 + v196);
        goto LABEL_75;
      }

      if (v192 >= v361)
      {
        goto LABEL_117;
      }

      LOWORD(v408) = v178;
      BYTE2(v408) = BYTE2(v178);
      BYTE3(v408) = BYTE3(v178);
      BYTE4(v408) = v367;
      BYTE5(v408) = BYTE5(v178);
      BYTE6(v408) = BYTE6(v178);
      BYTE7(v408) = HIBYTE(v178);
      WORD4(v408) = v179;
      BYTE10(v408) = BYTE2(v179);
      BYTE11(v408) = BYTE3(v179);
      BYTE12(v408) = BYTE4(v179);
      BYTE13(v408) = BYTE5(v179);
      v199 = v359[v190];
LABEL_75:
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v200 = swift_allocObject();
      *(v200 + 16) = v389;
      *(v200 + 56) = &type metadata for UInt8;
      *(v200 + 64) = &protocol witness table for UInt8;
      *(v200 + 32) = v199;
      v201 = String.init(format:_:)();
      *&v402 = v188;
      v204 = v188[2];
      v203 = v188[3];
      if (v204 >= v203 >> 1)
      {
        v326 = v201;
        v206 = v202;
        sub_1000635A4((v203 > 1), v204 + 1, 1);
        v202 = v206;
        v201 = v326;
        v188 = v402;
      }

      v188[2] = v204 + 1;
      v205 = &v188[2 * v204];
      v205[4] = v201;
      v205[5] = v202;
      ++v190;
    }

    while (v191 != v181);
    v182 = v380;
    v88 = v382;
LABEL_79:
    v207 = v390;
    *&v408 = v188;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v208 = BidirectionalCollection<>.joined(separator:)();
    v210 = v209;

    sub_100052CD4(v353, type metadata accessor for ApplicationRecord);
    v211 = sub_1000E3AF8(v208, v210, &v405._countAndFlagsBits);

    v212 = v343;
    *(v343 + 1) = v211;
    *(v212 + 6) = 2080;
    v183 = v381;
    *(v212 + 14) = sub_1000E3AF8(v381, v394, &v405._countAndFlagsBits);
    *(v212 + 11) = 2080;
    v213 = v352;
    v214 = URL.path.getter();
    v216 = v215;
    v207(v213, v397);
    v217 = sub_1000E3AF8(v214, v216, &v405._countAndFlagsBits);

    *(v212 + 3) = v217;
    v218 = v344;
    _os_log_impl(&_mh_execute_header, v344, v342, "Attempting to copy out driver extension:\n  installIdentifier: %s\n               from: %s\n                 to: %s", v212, 0x20u);
    swift_arrayDestroy();

    v90 = v387;
LABEL_80:
    v219 = *sub_100003C4C((v182 + 16), *(v182 + 40));
    sub_1000DF9D4(&v408);
    v220 = *(&v409 + 1);
    v221 = v410;
    sub_100003C4C(&v408, *(&v409 + 1));
    v222 = URL.path.getter();
    v223 = v220;
    v224 = v398;
    sub_1000EC224(v183, v394, v222, v225, 950287, v223, v221);
    v398 = v224;
    if (!v224)
    {

      sub_100003C90(&v408);
      URL.appendingPathComponent(_:isDirectory:)();
      v399 = 0;
      v251 = *sub_100003C4C((v182 + 16), *(v182 + 40));
      sub_1000DF9D4(&v408);
      v252 = v410;
      sub_100003C4C(&v408, *(&v409 + 1));
      v253 = URL.path.getter();
      v254 = (*(v252 + 136))(v253);

      if (v254)
      {
        v255 = v399;
        sub_100003C90(&v408);
        v256 = v364;
        if (v255)
        {
          v257 = v330;
          (*v335)(v330, v386, v88);
          v258 = v357;
          sub_100014718(v384, v257 + v357[5], type metadata accessor for ApplicationRecord);
          v259 = v397;
          v260 = v354;
          v354((v257 + v258[6]), v396, v397);
          v261 = v258[7];
          v260(v257 + v261, v345, v259);
          v262 = v257 + v258[8];
          static Date.now.getter();
          sub_100042504(v257);
          *&v408 = 0;
          *(&v408 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(84);
          v263._countAndFlagsBits = 0xD000000000000013;
          v263._object = (v328 | 0x8000000000000000);
          String.append(_:)(v263);
          v264._countAndFlagsBits = sub_100019D24();
          String.append(_:)(v264);

          v265._countAndFlagsBits = 0x7264206874697720;
          v265._object = 0xED00002072657669;
          String.append(_:)(v265);
          v266._countAndFlagsBits = v383;
          v266._object = v393;
          String.append(_:)(v266);

          v267._countAndFlagsBits = 544175136;
          v267._object = 0xE400000000000000;
          String.append(_:)(v267);
          sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL);
          v268._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v268);

          v269._countAndFlagsBits = 0xD00000000000001ALL;
          v269._object = (v327 | 0x8000000000000000);
          String.append(_:)(v269);
          v270._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v270);

          v271._countAndFlagsBits = 0x5520676E69737520;
          v271._object = 0xEC00000020444955;
          String.append(_:)(v271);
          sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID);
          v272._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v272);

          v273 = v408;
          v274 = *v331;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v274 = sub_100030EA0(0, *(v274 + 2) + 1, 1, v274);
          }

          v276 = *(v274 + 2);
          v275 = *(v274 + 3);
          v277 = v390;
          if (v276 >= v275 >> 1)
          {
            v274 = sub_100030EA0((v275 > 1), v276 + 1, 1, v274);
          }

          *(v274 + 2) = v276 + 1;
          *&v274[16 * v276 + 32] = v273;
          *v331 = v274;
          v278 = *sub_100003C4C((v380 + 16), *(v380 + 40));
          sub_1000DFF08(&v405);
          v279 = v374;
          v260(v374, (v257 + v261), v397);
          v280 = sub_1000993E4(v279);
          if (v280)
          {
            v281 = v280;
            v403 = type metadata accessor for UncachedBundle();
            v404 = sub_100052DB8(&qword_1001373C0, type metadata accessor for UncachedBundle);
            *&v402 = v281;
            sub_100003C90(&v405._countAndFlagsBits);
            sub_100009F34(&v402, &v408);
            sub_100003C4C(&v408, *(&v409 + 1));
            v282 = sub_1000990BC();
            if (v283)
            {
              v284 = v282;
              v285 = v283;
              v286 = *sub_100003C4C((v380 + 16), *(v380 + 40));
              sub_1000E00C4(&v405);
              v287 = v406;
              v288 = v407;
              sub_100003C4C(&v405, v406);
              v289 = v397;
              v290 = URL.path.getter();
              sub_1000181C4(v284, v285, v290, v291, v287, v288);

              sub_100052CD4(v257, type metadata accessor for DriverBinEntry);
              v54 = v391;
              v277(v345, v289);
              v277(v396, v289);
              (*v387)(v386, v382);
              sub_100003C90(&v405._countAndFlagsBits);
              sub_100003C90(&v408);
              goto LABEL_111;
            }

            v313 = &v408;
          }

          else
          {
            v313 = &v405;
          }

          sub_100003C90(&v313->_countAndFlagsBits);
          v314 = v329;
          sub_100014718(v257, v329, type metadata accessor for DriverBinEntry);
          v315 = Logger.logObject.getter();
          v316 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v315, v316))
          {
            v317 = swift_slowAlloc();
            v318 = swift_slowAlloc();
            *&v408 = v318;
            *v317 = v347;
            v319 = v314 + v357[7];
            v320 = URL.path.getter();
            v322 = v321;
            sub_100052CD4(v314, type metadata accessor for DriverBinEntry);
            v323 = sub_1000E3AF8(v320, v322, &v408);

            *(v317 + 4) = v323;
            _os_log_impl(&_mh_execute_header, v315, v316, "Could not report driver install: could not resolve driver bundle at\n %s", v317, 0xCu);
            sub_100003C90(v318);
          }

          else
          {

            sub_100052CD4(v314, type metadata accessor for DriverBinEntry);
          }

          sub_100052CD4(v257, type metadata accessor for DriverBinEntry);
          v324 = v397;
          v54 = v391;
          v277(v345, v397);
          v277(v396, v324);
          (*v387)(v386, v382);
          goto LABEL_111;
        }
      }

      else
      {
        sub_100003C90(&v408);
        v256 = v364;
      }

      *&v408 = 0;
      *(&v408 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v302._countAndFlagsBits = 0x2064657461657243;
      v302._object = 0xE800000000000000;
      String.append(_:)(v302);
      v303 = v345;
      v304._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v304);

      v305._countAndFlagsBits = 0xD00000000000002DLL;
      v305._object = (v332 | 0x8000000000000000);
      String.append(_:)(v305);
      v306 = v408;
      sub_10001449C();
      swift_allocError();
      *v307 = v306;
      v308 = v411;
      v310 = v409;
      v309 = v410;
      *(v307 + 16) = v408;
      *(v307 + 32) = v310;
      *(v307 + 48) = v309;
      *(v307 + 64) = v308;
      *(v307 + 72) = 19;
      swift_willThrow();
      v311 = v397;
      v312 = v390;
      v390(v303, v397);
      v312(v396, v311);
      (*v90)(v386, v88);
      goto LABEL_95;
    }

    sub_100003C90(&v408);
    v226 = errno.getter();
    if (!strerror(v226))
    {
      goto LABEL_127;
    }

    v367 = String.init(cString:)();
    v392 = v227;
    v228 = v338;
    v229 = v397;
    v354(v338, v396, v397);
    v230 = v394;

    v231 = v398;
    swift_errorRetain();
    v232 = Logger.logObject.getter();
    v233 = static os_log_type_t.error.getter();

    v234 = os_log_type_enabled(v232, v233);
    v235 = v381;
    if (v234)
    {
      v236 = v229;
      v237 = v228;
      v238 = swift_slowAlloc();
      v362 = swift_slowAlloc();
      *&v408 = v362;
      *v238 = v334;
      v239 = sub_1000E3AF8(v235, v230, &v408);

      *(v238 + 4) = v239;
      *(v238 + 12) = 2080;
      v240 = URL.path.getter();
      LODWORD(v394) = v233;
      v242 = v241;
      v243 = v390;
      v390(v237, v236);
      v244 = sub_1000E3AF8(v240, v242, &v408);

      *(v238 + 14) = v244;
      *(v238 + 22) = 2080;
      v405._countAndFlagsBits = v231;
      swift_errorRetain();
      sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
      v245 = String.init<A>(describing:)();
      v247 = sub_1000E3AF8(v245, v246, &v408);

      *(v238 + 24) = v247;
      v248 = v243;
      *(v238 + 32) = 2080;
      v249 = sub_1000E3AF8(v367, v392, &v408);

      *(v238 + 34) = v249;
      _os_log_impl(&_mh_execute_header, v232, v394, "Could not copyfile:\nfrom: %s\nto: %s\nerror: %s\nerrno: %s", v238, 0x2Au);
      swift_arrayDestroy();

      v250 = v397;
    }

    else
    {

      v248 = v390;
      v390(v228, v229);
      v250 = v229;
    }

    swift_willThrow();
    v248(v396, v250);
    (*v90)(v386, v88);
    v256 = v364;
LABEL_95:
    sub_100014718(v384, v256, type metadata accessor for ApplicationRecord);
    v292 = v393;

    v293 = Logger.logObject.getter();
    v294 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v293, v294))
    {
      v295 = swift_slowAlloc();
      *&v408 = swift_slowAlloc();
      *v295 = v348;
      v296 = sub_1000E3AF8(v383, v292, &v408);
      v398 = 0;
      v297 = v296;

      *(v295 + 4) = v297;
      *(v295 + 12) = 2080;
      v298 = sub_100019D24();
      v300 = v299;
      sub_100052CD4(v256, type metadata accessor for ApplicationRecord);
      v301 = sub_1000E3AF8(v298, v300, &v408);

      *(v295 + 14) = v301;
      _os_log_impl(&_mh_execute_header, v293, v294, "Failed to stage driver %s from app %s", v295, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100052CD4(v256, type metadata accessor for ApplicationRecord);
      v398 = 0;
    }

LABEL_98:
    v52 = v388;
    v54 = v391;
  }

  while (v52 != v371);
}

uint64_t sub_100052CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100052D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverBinEntry();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052DB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100052E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v110 = a3;
  v108 = a1;
  v109 = a2;
  LODWORD(v118) = a7;
  v8 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v102 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v105 = &v90 - v13;
  __chkstk_darwin(v12);
  v15 = &v90 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v104 = &v90 - v23;
  __chkstk_darwin(v22);
  v111 = &v90 - v24;
  v25 = sub_100003CDC(qword_1001358E0, &unk_1000F57E0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v107 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v90 - v30;
  v32 = *(v29 + 48);
  v106 = v29;
  v33 = *(v29 + 64);
  v112 = v17;
  v34 = *(v17 + 56);
  v34(&v90 - v30, 1, 1, v16);
  v103 = v32;
  v34(&v31[v32], 1, 1, v16);
  v101 = v33;
  v34(&v31[v33], 1, 1, v16);
  if (!*(a4 + 16))
  {
    goto LABEL_6;
  }

  v35 = sub_100061588(0x6B6E696C6572505FLL, 0xEC0000004449434BLL);
  if ((v36 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_10000B430(*(a4 + 56) + 32 * v35, &v115);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v100 = a4;
  v98 = v21;
  v37 = v113;
  v38 = v114;
  sub_1000146C4(v113, v114);
  sub_1000C7328(v37, v38, v15);
  v39 = v112;
  v99 = *(v112 + 48);
  if (v99(v15, 1, v16) != 1)
  {
    v96 = v37;
    v97 = v38;
    v48 = v111;
    v94 = *(v39 + 32);
    v95 = v39 + 32;
    v94(v111, v15, v16);
    sub_10000A184(v31, &qword_100134FB0, &qword_1000F4E60);
    v49 = v48;
    v93 = *(v39 + 16);
    v93(v31, v48, v16);
    v34(v31, 0, 1, v16);
    v50 = v118;
    if ((v118 - 1) > 1)
    {
      (*(v39 + 8))(v49, v16);
      sub_1000128D8(v96, v97);
    }

    else
    {
      v92 = v39 + 48;
      v51 = v100;
      if (!*(v100 + 16) || (v52 = sub_100061588(0x49434B746F6F425FLL, 0xE900000000000044), (v53 & 1) == 0) || (sub_10000B430(*(v51 + 56) + 32 * v52, &v115), (swift_dynamicCast() & 1) == 0))
      {
LABEL_22:
        if (v50 == 2)
        {
          v57 = 0xD000000000000019;
        }

        else
        {
          v57 = 0xD000000000000016;
        }

        if (v50 == 2)
        {
          v58 = "o prelink UUID key?";
        }

        else
        {
          v58 = "auxiliary kext collection";
        }

        v59 = v58 | 0x8000000000000000;
        sub_10001449C();
        swift_allocError();
        *v60 = v57;
        *(v60 + 8) = v59;
        *(v60 + 16) = 0xD00000000000001DLL;
        *(v60 + 24) = 0x8000000100105D10;
        v61 = v117;
        v62 = v116;
        *(v60 + 32) = v115;
        *(v60 + 48) = v62;
        *(v60 + 64) = v61;
        *(v60 + 72) = 6;
        swift_willThrow();
        sub_1000128D8(v96, v97);
        (*(v112 + 8))(v111, v16);
        return sub_10000A184(v31, qword_1001358E0, &unk_1000F57E0);
      }

      v55 = v113;
      v54 = v114;
      sub_1000146C4(v113, v114);
      v56 = v105;
      sub_1000C7328(v55, v54, v105);
      if (v99(v56, 1, v16) == 1)
      {
        sub_1000128D8(v55, v54);
        sub_10000A184(v56, &qword_100134FB0, &qword_1000F4E60);
        goto LABEL_22;
      }

      v90 = v55;
      v91 = v54;
      v66 = v104;
      v94(v104, v56, v16);
      v67 = v103;
      sub_10000A184(&v31[v103], &qword_100134FB0, &qword_1000F4E60);
      v93(&v31[v67], v66, v16);
      v34(&v31[v67], 0, 1, v16);
      if (v50 == 2)
      {
        v68 = v100;
        v69 = v111;
        v70 = v112;
        if (*(v100 + 16))
        {
          v71 = sub_100061588(0x6C6261656761505FLL, 0xED00004449434B65);
          v72 = v90;
          if (v73)
          {
            sub_10000B430(*(v68 + 56) + 32 * v71, &v115);
            if (swift_dynamicCast())
            {
              v75 = v113;
              v74 = v114;
              sub_1000146C4(v113, v114);
              v105 = v75;
              v76 = v75;
              v77 = v102;
              v118 = v74;
              sub_1000C7328(v76, v74, v102);
              if (v99(v77, 1, v16) == 1)
              {
                sub_10000A184(v77, &qword_100134FB0, &qword_1000F4E60);
                sub_10001449C();
                swift_allocError();
                *v78 = 0xD000000000000019;
                *(v78 + 8) = 0x80000001001056A0;
                *(v78 + 16) = 0xD000000000000021;
                *(v78 + 24) = 0x8000000100105D30;
                v79 = v117;
                v80 = v116;
                *(v78 + 32) = v115;
                *(v78 + 48) = v80;
                *(v78 + 64) = v79;
                *(v78 + 72) = 6;
                swift_willThrow();
                sub_1000128D8(v105, v118);
                sub_1000128D8(v72, v91);
                sub_1000128D8(v96, v97);
                v81 = *(v70 + 8);
                v81(v104, v16);
                v81(v111, v16);
                return sub_10000A184(v31, qword_1001358E0, &unk_1000F57E0);
              }

              sub_1000128D8(v105, v118);
              sub_1000128D8(v72, v91);
              sub_1000128D8(v96, v97);
              v86 = *(v70 + 8);
              v86(v104, v16);
              v86(v111, v16);
              v87 = v98;
              v88 = v94;
              v94(v98, v77, v16);
              v89 = v101;
              sub_10000A184(&v31[v101], &qword_100134FB0, &qword_1000F4E60);
              v88(&v31[v89], v87, v16);
              v34(&v31[v89], 0, 1, v16);
              goto LABEL_30;
            }
          }

          sub_1000128D8(v72, v91);
          v83 = v96;
          v84 = &v119;
        }

        else
        {
          sub_1000128D8(v96, v97);
          v83 = v90;
          v84 = &v118;
        }

        sub_1000128D8(v83, *(v84 - 32));
        v85 = *(v70 + 8);
        v85(v104, v16);
        v85(v69, v16);
      }

      else
      {
        sub_1000128D8(v90, v91);
        sub_1000128D8(v96, v97);
        v82 = *(v112 + 8);
        v82(v66, v16);
        v82(v111, v16);
      }
    }

LABEL_30:
    v63 = v107;
    sub_100054A50(v31, v107);
    v64 = *(v106 + 48);
    v65 = *(v106 + 64);
    sub_100054AC0(v63, v108);
    sub_100054AC0(v63 + v64, v109);
    sub_100054AC0(v63 + v65, v110);
    return sub_10000A184(v31, qword_1001358E0, &unk_1000F57E0);
  }

  sub_1000128D8(v37, v38);
  sub_10000A184(v15, &qword_100134FB0, &qword_1000F4E60);
LABEL_6:
  if (v118 > 1)
  {
    if (v118 == 2)
    {
      v41 = "o prelink UUID key?";
      v42 = 0xD000000000000019;
    }

    else
    {
      v41 = "f dext in the ARV at %{public}s";
      v42 = 0xD000000000000012;
    }
  }

  else
  {
    if (v118)
    {
      v40 = "system kext collection";
    }

    else
    {
      v40 = "boot kernel collection";
    }

    v41 = (v40 - 32);
    v42 = 0xD000000000000016;
  }

  v43 = v41 | 0x8000000000000000;
  sub_10001449C();
  swift_allocError();
  *v44 = v42;
  *(v44 + 8) = v43;
  *(v44 + 16) = 0xD000000000000028;
  *(v44 + 24) = 0x8000000100105CE0;
  v45 = v117;
  v46 = v116;
  *(v44 + 32) = v115;
  *(v44 + 48) = v46;
  *(v44 + 64) = v45;
  *(v44 + 72) = 6;
  swift_willThrow();
  return sub_10000A184(v31, qword_1001358E0, &unk_1000F57E0);
}

uint64_t sub_1000539C0()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_100133AB8 != -1)
  {
    swift_once();
  }

  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_1000F3160;
  if (*(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == 2)
    {
      v10 = "o prelink UUID key?";
      v11 = 0xD000000000000019;
    }

    else
    {
      v10 = "f dext in the ARV at %{public}s";
      v11 = 0xD000000000000012;
    }
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind))
    {
      v9 = "system kext collection";
    }

    else
    {
      v9 = "boot kernel collection";
    }

    v10 = (v9 - 32);
    v11 = 0xD000000000000016;
  }

  v12 = v10 | 0x8000000000000000;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100003D24();
  *(v8 + 32) = v11;
  *(v8 + 40) = v12;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  (*(v3 + 8))(v6, v2);
  v13 = *(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch);
  v14 = *(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch + 8);
  type[0] = 0;
  LODWORD(subtype[0]) = 0;
  v15 = String.utf8CString.getter();
  macho_cpu_type_for_arch_name((v15 + 32), type, subtype);

  v16 = type[0];
  v17 = LODWORD(subtype[0]);
  v18 = sub_100003C4C((v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data), *(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data + 24));
  v19 = v43;
  v20 = sub_1000D4180(&off_100126848, v13, v14, v16 | (v17 << 32), 0, 1, *v18, v18[1]);
  if (!v19)
  {
    v21 = v20;
    sub_100054994("__PRELINK_INFO");
    sub_10005BC08(v21, type);

    if (!*&type[2] || (v22 = v49, v13 = *(&v48 + 1), , , *(&v22 + 1) >> 60 == 15))
    {
      v13 = 0x8000000100105C50;
      sub_10001449C();
      swift_allocError();
      *v23 = 0xD000000000000020;
      *(v23 + 8) = 0x8000000100105C50;
      v24 = v50;
      v26 = v48;
      v25 = v49;
      *(v23 + 16) = *type;
      *(v23 + 32) = v26;
      *(v23 + 48) = v25;
      *(v23 + 64) = v24;
      *(v23 + 72) = 24;
      swift_willThrow();
      goto LABEL_16;
    }

    v28 = sub_1000541FC(v22, *(&v22 + 1));
    if (!v28)
    {
      sub_10001449C();
      swift_allocError();
      *v39 = 0u;
      *(v39 + 16) = 0u;
      *(v39 + 32) = 0u;
      *(v39 + 48) = 0u;
      *(v39 + 64) = 0;
      *(v39 + 72) = 75;
      swift_willThrow();
      sub_100014988();
      goto LABEL_16;
    }

    v13 = v28;
    if (v28->data)
    {
      v29 = sub_100061588(0x56726567616E614DLL, 0xEE006E6F69737265);
      if (v30)
      {
        sub_10000B430(*(v13 + 56) + 32 * v29, type);
        sub_10000B48C(type, subtype);
        sub_10000B430(subtype, v45);
        if ((swift_dynamicCast() & 1) == 0)
        {

          v13 = 0x8000000100105C80;
          sub_10001449C();
          swift_allocError();
          *v34 = 0xD000000000000037;
          *(v34 + 8) = 0x8000000100105C80;
          v40 = v50;
          v42 = v48;
          v41 = v49;
          *(v34 + 16) = *type;
          *(v34 + 32) = v42;
          *(v34 + 48) = v41;
          *(v34 + 64) = v40;
          v38 = 24;
          goto LABEL_26;
        }

        v31 = v44;
        if (*(v1 + 16) < v44)
        {

          *type = 0;
          *&type[2] = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          *type = 0xD000000000000013;
          *&type[2] = 0x8000000100105CC0;
          v45[0] = v31;
          v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v32);

          v13 = *type;
          v33 = *&type[2];
          sub_10001449C();
          swift_allocError();
          *v34 = v13;
          *(v34 + 8) = v33;
          v35 = v50;
          v37 = v48;
          v36 = v49;
          *(v34 + 16) = *type;
          *(v34 + 32) = v37;
          *(v34 + 48) = v36;
          *(v34 + 64) = v35;
          v38 = 25;
LABEL_26:
          *(v34 + 72) = v38;
          swift_willThrow();
          sub_100014988();
          sub_100003C90(subtype);
          goto LABEL_16;
        }

        sub_100003C90(subtype);
      }
    }

    sub_100014988();
    sub_100053FDC(v1);
    return v13;
  }

  sub_100054994("__PRELINK_INFO");
LABEL_16:
  sub_100053FDC(v1);
  return v13;
}