unint64_t sub_100120AEC()
{
  result = qword_1002038B8;
  if (!qword_1002038B8)
  {
    sub_100021ED0(&qword_1002038A8, &qword_1001AE058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002038B8);
  }

  return result;
}

uint64_t sub_100120B50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100120B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100203918, &qword_1001AE0B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_100120C08(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100120C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100120C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100120CF8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100120DA4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100120ECC()
{
  v0 = type metadata accessor for AnyCodable();
  sub_100120F20(v0, qword_100205D38);
  sub_1000FC128(v0, qword_100205D38);
  return AnyCodable.init(value:)();
}

uint64_t *sub_100120F20(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100120F84(uint64_t a1)
{
  v83 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  v2 = *(*(v83 - 8) + 64);
  v3 = __chkstk_darwin(v83);
  v82 = (&v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v81 = &v71 - v5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = _swiftEmptyDictionarySingleton;
  v73 = a1 + 64;
  v74 = a1;
  v72 = v10;
  while (v9)
  {
LABEL_12:
    v77 = v11;
    v78 = v9;
    v16 = __clz(__rbit64(v9)) | (v11 << 6);
    v17 = *(a1 + 56);
    v18 = (*(a1 + 48) + 16 * v16);
    v19 = v18[1];
    v79 = *v18;
    v20 = *(v17 + 8 * v16);
    v21 = *(v20 + 16);
    v86 = v20;
    if (v21)
    {
      v76 = v12;
      v92 = _swiftEmptyArrayStorage;
      v75 = v19;

      sub_10010A6B4(0, v21, 0);
      v22 = v92;
      v23 = v20 + 64;
      v24 = -1 << *(v20 + 32);
      v25 = _HashTable.startBucket.getter();
      v26 = 0;
      v80 = v20 + 72;
      v84 = v21;
      v85 = v20 + 64;
      while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << *(v20 + 32))
      {
        v28 = v25 >> 6;
        if ((*(v23 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
        {
          goto LABEL_45;
        }

        v87 = v26;
        v88 = *(v20 + 36);
        v89 = 1 << v25;
        v91 = v22;
        v29 = v83;
        v30 = *(v83 + 48);
        v31 = *(v20 + 56);
        v32 = (*(v20 + 48) + 16 * v25);
        v34 = *v32;
        v33 = v32[1];
        v35 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
        v36 = *(v35 - 8);
        v37 = v81;
        (*(v36 + 16))(&v81[v30], v31 + *(v36 + 72) * v25, v35);
        v38 = v82;
        v90 = v34;
        *v82 = v34;
        *(v38 + 8) = v33;
        v39 = *(v29 + 48);
        v22 = v91;
        (*(v36 + 32))(v38 + v39, &v37[v30], v35);
        swift_bridgeObjectRetain_n();
        sub_100124218(v38);
        v92 = v22;
        v41 = v22[2];
        v40 = v22[3];
        if (v41 >= v40 >> 1)
        {
          sub_10010A6B4((v40 > 1), v41 + 1, 1);
          v22 = v92;
        }

        v22[2] = v41 + 1;
        v42 = &v22[2 * v41];
        v42[4] = v90;
        v42[5] = v33;
        v23 = v85;
        v20 = v86;
        v27 = 1 << *(v86 + 32);
        if (v25 >= v27)
        {
          goto LABEL_46;
        }

        v43 = *(v85 + 8 * v28);
        if ((v43 & v89) == 0)
        {
          goto LABEL_47;
        }

        if (v88 != *(v86 + 36))
        {
          goto LABEL_48;
        }

        v44 = v43 & (-2 << (v25 & 0x3F));
        if (v44)
        {
          v27 = __clz(__rbit64(v44)) | v25 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v45 = v28 << 6;
          v46 = v28 + 1;
          v47 = (v80 + 8 * v28);
          while (v46 < (v27 + 63) >> 6)
          {
            v49 = *v47++;
            v48 = v49;
            v45 += 64;
            ++v46;
            if (v49)
            {
              sub_1000468A0(v25, v88, 0);
              v27 = __clz(__rbit64(v48)) + v45;
              goto LABEL_15;
            }
          }

          sub_1000468A0(v25, v88, 0);
        }

LABEL_15:
        v26 = v87 + 1;
        v25 = v27;
        if (v87 + 1 == v84)
        {
          v91 = v22;
          v6 = v73;
          a1 = v74;
          v10 = v72;
          v19 = v75;
          v12 = v76;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v91 = _swiftEmptyArrayStorage;
LABEL_32:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v12;
    v51 = v19;
    v52 = sub_100099644(v79, v19);
    v54 = v12[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      goto LABEL_50;
    }

    v58 = v53;
    if (v12[3] >= v57)
    {
      v60 = v78;
      if (isUniquelyReferenced_nonNull_native)
      {
        v12 = v92;
        if (v53)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v64 = v52;
        sub_100109A9C();
        v60 = v78;
        v52 = v64;
        v12 = v92;
        if (v58)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_100108404(v57, isUniquelyReferenced_nonNull_native);
      v52 = sub_100099644(v79, v19);
      if ((v58 & 1) != (v59 & 1))
      {
        goto LABEL_52;
      }

      v60 = v78;
      v12 = v92;
      if (v58)
      {
LABEL_5:
        v13 = v12[7];
        v14 = *(v13 + 8 * v52);
        *(v13 + 8 * v52) = v91;

        goto LABEL_6;
      }
    }

    v12[(v52 >> 6) + 8] |= 1 << v52;
    v61 = (v12[6] + 16 * v52);
    *v61 = v79;
    v61[1] = v51;
    *(v12[7] + 8 * v52) = v91;
    v62 = v12[2];
    v56 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v56)
    {
      goto LABEL_51;
    }

    v12[2] = v63;
LABEL_6:
    v9 = (v60 - 1) & v60;

    v11 = v77;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      v92 = 0;
      v93 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v65._object = 0x80000001001BAF80;
      v65._countAndFlagsBits = 0xD000000000000032;
      String.append(_:)(v65);
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      v66 = Dictionary.description.getter();
      v68 = v67;

      v69._countAndFlagsBits = v66;
      v69._object = v68;
      String.append(_:)(v69);

      return v92;
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
    if (v9)
    {
      v11 = v15;
      goto LABEL_12;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1001215BC()
{
  _StringGuts.grow(_:)(35);

  sub_100004E70(&qword_100201580, &qword_1001AB980);
  v0._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000021;
}

_OWORD *sub_100121664(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100099644(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100109790();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100107EC8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100099644(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100005090(v23);

    return sub_100009268(a1, v23);
  }

  else
  {
    sub_1001096D8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_100121874(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_100099644(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_100099644(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

void *sub_1001219E0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_100122A78(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_100121A7C(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = sub_100122DA8(v11, a2, a3, a4, a5, a6);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_100121B44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100004E70(&qword_100203510, &qword_1001ADD80);
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
    *(*(v9 + 56) + 8 * v26) = v21;
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

uint64_t sub_100121D88(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = __chkstk_darwin(v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  sub_100004E70(&qword_100203518, &qword_1001ADD88);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    Hasher.init(_seed:)();

    v54 = v28;
    String.hash(into:)();
    result = Hasher._finalize()();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
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

void *sub_100122114(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10012226C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10012251C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_10012261C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100122774(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001228CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100122A20(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100122A78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v15 = *(*(a3 + 56) + 8 * v14);
      v16 = (*(a3 + 48) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];

      sub_100099644(v17, v18);
      v20 = v19;

      if (v20)
      {
        *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_100121B44(v23, a2, v24, a3);
        }
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

    if (v5 >= v10)
    {
      return sub_100121B44(v23, a2, v24, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100122BE8(uint64_t a1, uint64_t a2)
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

      v10 = sub_1001219E0(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100122A78(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_100122DA8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a6;
  v53 = a4;
  v43 = a2;
  v44 = a1;
  v52 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  v7 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v9 = &v43 - v8;
  v60 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v10 = *(*(v60 - 8) + 64);
  result = __chkstk_darwin(v60);
  v58 = &v43 - v13;
  v45 = 0;
  v14 = 0;
  v55 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v50 = v12 + 16;
  v51 = v12;
  v54 = (v12 + 8);
  v57 = v9;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v56 = (v20 - 1) & v20;
LABEL_12:
    v25 = v22 | (v14 << 6);
    v26 = v55[7];
    v27 = (v55[6] + 16 * v25);
    v29 = *v27;
    v28 = v27[1];
    v30 = *(v51 + 72);
    v48 = v25;
    v31 = *(v51 + 16);
    v32 = v58;
    v33 = v60;
    v31(v58, v26 + v30 * v25, v60);
    v34 = v57;
    *v57 = v29;
    *(v34 + 1) = v28;
    v31(&v34[*(v52 + 48)], v32, v33);
    v35 = v53;
    v36 = *(v53 + 16);
    swift_bridgeObjectRetain_n();
    if (v36 && (v37 = sub_100099644(v46, v47), (v38 & 1) != 0))
    {
      v39 = *(*(v35 + 56) + 8 * v37);
      v59[0] = v29;
      v59[1] = v28;
      __chkstk_darwin(v37);
      *(&v43 - 2) = v59;

      v40 = v49;
      v41 = sub_100120CF8(sub_100124290, (&v43 - 4), v39);
      v49 = v40;

      sub_100124218(v57);
      (*v54)(v58, v60);

      v20 = v56;
      if (v41)
      {
        *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
        if (__OFADD__(v45++, 1))
        {
          __break(1u);
          return sub_100121D88(v44, v43, v45, v55);
        }
      }
    }

    else
    {
      sub_100124218(v57);
      (*v54)(v58, v60);

      v20 = v56;
    }
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return sub_100121D88(v44, v43, v45, v55);
    }

    v24 = v16[v14];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v56 = (v24 - 1) & v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100123138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  swift_bridgeObjectRetain_n();
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_100121A7C(v16, v11, a1, a2, a3, a4);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v13);
  bzero(&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = sub_100122DA8((&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, a1, a2, a3, a4);

  if (v4)
  {
    swift_willThrow();
  }

LABEL_6:

  return v14;
}

uint64_t sub_100123368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v104 = a2;
  Logger.sensitive(_:)();
  v11 = *(v7 + 8);
  v11(v10, v6);
  sub_10010D040(_swiftEmptyArrayStorage);

  if (a1)
  {
    v12 = defaultLogger()();
    __chkstk_darwin(v12);
    *(&v94 - 2) = a1;
    Logger.sensitive(_:)();
    v11(v10, v6);

    v13 = sub_100122BE8(a2, a1);

    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    v20 = _swiftEmptyDictionarySingleton;
    v99 = v18;
    v100 = a1;
    v102 = v13;
    v98 = v13 + 64;
    while (v17)
    {
      v24 = v19;
LABEL_12:
      v25 = __clz(__rbit64(v17)) | (v24 << 6);
      v26 = *(v13 + 56);
      v27 = (*(v13 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v26 + 8 * v25);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v31 = v3;
      v32 = sub_100123138(v30, a1, v28, v29);
      v106 = v31;
      v103 = v30;

      v33 = *(v32 + 16);
      if (v33)
      {
        v101 = v28;
        sub_100004E70(&qword_100203410, &qword_1001ADCC0);
        v34 = *(sub_100004E70(&qword_1002004D8, &qword_1001ACBF0) - 8);
        v35 = *(v34 + 72);
        v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = swift_allocObject();
        v38 = j__malloc_size(v37);
        if (!v35)
        {
          goto LABEL_63;
        }

        if (v38 - v36 == 0x8000000000000000 && v35 == -1)
        {
          goto LABEL_69;
        }

        v37[2] = v33;
        v37[3] = 2 * ((v38 - v36) / v35);
        v40 = *(sub_100004E70(&qword_1002004D8, &qword_1001ACBF0) - 8);
        v41 = sub_10012226C(v105, v37 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v33, v32);
        sub_1000BAE9C();
        if (v41 != v33)
        {
          goto LABEL_64;
        }

        v14 = v98;
        v28 = v101;
      }

      else
      {

        v37 = _swiftEmptyArrayStorage;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v20;
      v43 = sub_100099644(v28, v29);
      v45 = v20[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_62;
      }

      v49 = v44;
      if (v20[3] >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = v28;
          v55 = v43;
          sub_100109AB0();
          v43 = v55;
          v28 = v54;
        }
      }

      else
      {
        sub_100108418(v48, isUniquelyReferenced_nonNull_native);
        v43 = sub_100099644(v28, v29);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_72;
        }
      }

      v3 = v106;
      v17 &= v17 - 1;
      if (v49)
      {
        v21 = v43;

        v20 = v105[0];
        v22 = *(v105[0] + 56);
        v23 = *(v22 + 8 * v21);
        *(v22 + 8 * v21) = v37;
      }

      else
      {
        v20 = v105[0];
        *(v105[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
        v51 = (v20[6] + 16 * v43);
        *v51 = v28;
        v51[1] = v29;
        *(v20[7] + 8 * v43) = v37;

        v52 = v20[2];
        v47 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v47)
        {
          goto LABEL_66;
        }

        v20[2] = v53;
      }

      v19 = v24;
      v13 = v102;
      v18 = v99;
      a1 = v100;
    }

    while (1)
    {
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v24 >= v18)
      {

        goto LABEL_31;
      }

      v17 = *(v14 + 8 * v24);
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v57 = a2 + 64;
    v58 = 1 << *(a2 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(a2 + 64);
    v61 = (v58 + 63) >> 6;

    v62 = 0;
    v20 = _swiftEmptyDictionarySingleton;
    v106 = v3;
    v102 = a2;
    v95 = a2 + 64;
    v96 = v61;
    while (v60)
    {
      v66 = v62;
LABEL_42:
      v67 = __clz(__rbit64(v60)) | (v66 << 6);
      v68 = *(a2 + 56);
      v69 = (*(a2 + 48) + 16 * v67);
      v70 = v69[1];
      v103 = *v69;
      v71 = *(*(v68 + 8 * v67) + 16);
      v101 = *(v68 + 8 * v67);
      if (v71)
      {
        v99 = v70;
        sub_100004E70(&qword_100203410, &qword_1001ADCC0);
        v72 = *(sub_100004E70(&qword_1002004D8, &qword_1001ACBF0) - 8);
        v73 = *(v72 + 72);
        v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v75 = swift_allocObject();
        v76 = j__malloc_size(v75);
        if (!v73)
        {
          goto LABEL_67;
        }

        if (v76 - v74 == 0x8000000000000000 && v73 == -1)
        {
          goto LABEL_71;
        }

        v75[2] = v71;
        v75[3] = 2 * ((v76 - v74) / v73);
        v78 = *(sub_100004E70(&qword_1002004D8, &qword_1001ACBF0) - 8);
        v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v100 = v75;
        v80 = sub_10012226C(v105, v75 + v79, v71, v101);
        v97 = v105[1];
        v98 = v80;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_1000BAE9C();
        if (v98 != v71)
        {
          goto LABEL_68;
        }

        a2 = v102;
        v57 = v95;
        v70 = v99;
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v100 = _swiftEmptyArrayStorage;
      }

      v81 = swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v20;
      v82 = sub_100099644(v103, v70);
      v84 = v20[2];
      v85 = (v83 & 1) == 0;
      v47 = __OFADD__(v84, v85);
      v86 = v84 + v85;
      if (v47)
      {
        goto LABEL_65;
      }

      v87 = v83;
      if (v20[3] >= v86)
      {
        if ((v81 & 1) == 0)
        {
          v92 = v70;
          v93 = v82;
          sub_100109AB0();
          v82 = v93;
          v70 = v92;
        }
      }

      else
      {
        sub_100108418(v86, v81);
        v82 = sub_100099644(v103, v70);
        if ((v87 & 1) != (v88 & 1))
        {
          goto LABEL_72;
        }
      }

      v60 &= v60 - 1;
      if (v87)
      {
        v63 = v82;

        v20 = v105[0];
        v64 = *(v105[0] + 56);
        v65 = *(v64 + 8 * v63);
        *(v64 + 8 * v63) = v100;
      }

      else
      {
        v20 = v105[0];
        *(v105[0] + 8 * (v82 >> 6) + 64) |= 1 << v82;
        v89 = (v20[6] + 16 * v82);
        *v89 = v103;
        v89[1] = v70;
        *(v20[7] + 8 * v82) = v100;

        v90 = v20[2];
        v47 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v47)
        {
          goto LABEL_70;
        }

        v20[2] = v91;
      }

      v62 = v66;
      v61 = v96;
    }

    while (1)
    {
      v66 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v66 >= v61)
      {
LABEL_31:

        return v20;
      }

      v60 = *(v57 + 8 * v66);
      ++v62;
      if (v60)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100123C64(uint64_t a1)
{
  v81 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  v2 = *(*(v81 - 8) + 64);
  v3 = __chkstk_darwin(v81);
  v80 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v79 = &v69[-v5];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v77 = _swiftEmptyDictionarySingleton;
  v70 = a1 + 64;
  v71 = a1;
  v73 = v10;
  while (v9)
  {
LABEL_12:
    v74 = v11;
    v75 = v9;
    v15 = __clz(__rbit64(v9)) | (v11 << 6);
    v16 = *(a1 + 56);
    v17 = (*(a1 + 48) + 16 * v15);
    v18 = v17[1];
    v76 = *v17;
    v19 = *(v16 + 8 * v15);
    v20 = *(v19 + 16);
    if (v20)
    {
      v91 = _swiftEmptyArrayStorage;
      v72 = v18;

      sub_10010A6B4(0, v20, 0);
      v21 = v91;
      v22 = v19 + 64;
      v23 = -1 << *(v19 + 32);
      v24 = _HashTable.startBucket.getter();
      v25 = 0;
      v78 = v19 + 72;
      v82 = v20;
      v83 = v19 + 64;
      v84 = v19;
      while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(v19 + 32))
      {
        if ((*(v22 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
        {
          goto LABEL_43;
        }

        v85 = v25;
        v86 = *(v19 + 36);
        v87 = 1 << v24;
        v28 = v81;
        v29 = *(v81 + 48);
        v30 = *(v19 + 56);
        v31 = (*(v19 + 48) + 16 * v24);
        v32 = *v31;
        v88 = v31[1];
        v89 = v24 >> 6;
        v33 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
        v34 = v21;
        v35 = *(v33 - 8);
        v36 = v79;
        (*(v35 + 16))(&v79[v29], v30 + *(v35 + 72) * v24, v33);
        v37 = v80;
        v90 = v32;
        *v80 = v32;
        v38 = v88;
        *(v37 + 8) = v88;
        (*(v35 + 32))(v37 + *(v28 + 48), &v36[v29], v33);
        v21 = v34;
        swift_bridgeObjectRetain_n();
        sub_100124218(v37);
        v91 = v34;
        v40 = v34[2];
        v39 = v34[3];
        if (v40 >= v39 >> 1)
        {
          sub_10010A6B4((v39 > 1), v40 + 1, 1);
          v21 = v91;
        }

        v21[2] = v40 + 1;
        v41 = &v21[2 * v40];
        v42 = v89;
        v41[4] = v90;
        v41[5] = v38;
        v19 = v84;
        v26 = 1 << *(v84 + 32);
        if (v24 >= v26)
        {
          goto LABEL_44;
        }

        v22 = v83;
        v43 = *(v83 + 8 * v42);
        if ((v43 & v87) == 0)
        {
          goto LABEL_45;
        }

        if (v86 != *(v84 + 36))
        {
          goto LABEL_46;
        }

        v44 = v43 & (-2 << (v24 & 0x3F));
        if (v44)
        {
          v26 = __clz(__rbit64(v44)) | v24 & 0x7FFFFFFFFFFFFFC0;
          v27 = v82;
        }

        else
        {
          v45 = v42 << 6;
          v46 = v42 + 1;
          v47 = (v78 + 8 * v42);
          v27 = v82;
          while (v46 < (v26 + 63) >> 6)
          {
            v49 = *v47++;
            v48 = v49;
            v45 += 64;
            ++v46;
            if (v49)
            {
              sub_1000468A0(v24, v86, 0);
              v26 = __clz(__rbit64(v48)) + v45;
              goto LABEL_15;
            }
          }

          sub_1000468A0(v24, v86, 0);
        }

LABEL_15:
        v25 = v85 + 1;
        v24 = v26;
        if (v85 + 1 == v27)
        {
          v50 = v21;
          v6 = v70;
          a1 = v71;
          v51 = v77;
          v18 = v72;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v50 = _swiftEmptyArrayStorage;
    v51 = v77;
LABEL_32:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v51;
    v53 = v18;
    v54 = sub_100099644(v76, v18);
    v56 = v77[2];
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      goto LABEL_48;
    }

    v60 = v55;
    if (v77[3] >= v59)
    {
      v62 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = v54;
        sub_100109A9C();
        v62 = v75;
        v54 = v67;
      }
    }

    else
    {
      sub_100108404(v59, isUniquelyReferenced_nonNull_native);
      v54 = sub_100099644(v76, v18);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_50;
      }

      v62 = v75;
    }

    v63 = v91;
    v77 = v91;
    if (v60)
    {
      v12 = v91[7];
      v13 = *(v12 + 8 * v54);
      *(v12 + 8 * v54) = v50;
    }

    else
    {
      v91[(v54 >> 6) + 8] |= 1 << v54;
      v64 = (v63[6] + 16 * v54);
      *v64 = v76;
      v64[1] = v53;
      *(v63[7] + 8 * v54) = v50;
      v65 = v63[2];
      v58 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v58)
      {
        goto LABEL_49;
      }

      v63[2] = v66;
    }

    v9 = (v62 - 1) & v62;

    v10 = v73;
    v11 = v74;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v77;
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_12;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100124218(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100124290(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

Swift::Int sub_1001242EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10010B604(v8, v6);
  sub_10010B5EC(v8, v5);
  return Hasher._finalize()();
}

void sub_100124378(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  String.hash(into:)();
  String.hash(into:)();
  sub_10010B604(a1, v8);

  sub_10010B5EC(a1, v7);
}

Swift::Int sub_1001243EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10010B604(v8, v6);
  sub_10010B5EC(v8, v5);
  return Hasher._finalize()();
}

uint64_t sub_100124474(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_1000FFD08(v3, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1000FFD20(v5, v8);
}

uint64_t sub_10012456C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_100004E70(&qword_100203870, &qword_1001AE008);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[16];

  return v15(v16, a2, v14);
}

uint64_t sub_100124704(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_100004E70(&qword_100203870, &qword_1001AE008);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[16];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for PayloadMetadata()
{
  result = qword_100203980;
  if (!qword_100203980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001248D4()
{
  type metadata accessor for DCCredentialPayloadFormat(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100124AB0(319, &qword_100203990, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        sub_100124A60(319, &unk_100202728, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100124A60(319, &qword_100202650, &type metadata for Data, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_100124AB0(319, &unk_100203998, &type metadata accessor for ISO18013MobileSecurityObject.IdentifierList);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100124A60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100124AB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_100124B18()
{
  result = qword_1002039F8;
  if (!qword_1002039F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002039F8);
  }

  return result;
}

__n128 sub_100124B6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100124B80(uint64_t *a1, int a2)
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

uint64_t sub_100124BC8(uint64_t result, int a2, int a3)
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

uint64_t sub_100124C18(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for Insecure.SHA1();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Insecure.SHA1Digest();
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  v15 = v14;
  sub_100124F98(&qword_100201090, &type metadata accessor for Insecure.SHA1);
  dispatch thunk of HashFunction.init()();
  sub_100009708(v13, v15);
  sub_1000265CC(v13, v15);
  sub_1000092BC(v13, v15);
  dispatch thunk of HashFunction.finalize()();
  (*(v19 + 8))(v7, v4);
  sub_100124F98(&qword_100201098, &type metadata accessor for Insecure.SHA1Digest);
  v16 = v21;
  v17 = Digest.data.getter();
  sub_1000092BC(v13, v15);
  (*(v20 + 8))(v11, v16);
  return v17;
}

uint64_t sub_100124F60()
{
  v1 = v0[1];
  v2 = v0[2];
  return sub_100124C18(*v0);
}

id sub_100124F6C(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = *v2;
  return sub_100030AA8(a1, a2, v3, v4);
}

uint64_t sub_100124F98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100125008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001250CC, 0, 0);
}

uint64_t sub_1001250CC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v1 + 16);
  v6 = swift_allocObject();
  v0[11] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;

  sub_100009708(v4, v3);
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = &unk_1001AE550;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

  v10 = swift_task_alloc();
  v0[13] = v10;
  v11 = sub_100004E70(&qword_100203B08, &qword_1001AE520);
  *v10 = v0;
  v10[1] = sub_100125228;

  return AsyncCoreDataContainer.write<A>(_:)(v0 + 2, &unk_1001AE8C0, v8, v11);
}

uint64_t sub_100125228()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1001253BC;
  }

  else
  {
    v6 = *(v2 + 88);
    v5 = *(v2 + 96);

    v4 = sub_10012534C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012534C()
{
  v1 = v0[10];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_1001253BC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100125558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100125620, 0, 0);
}

uint64_t sub_100125620()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v0[10] = v7;
  v7[2] = v2;
  v7[3] = v5;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v1;

  sub_100009708(v5, v4);
  sub_100009708(v3, v1);
  v8 = *(v6 + 16);
  v9 = swift_allocObject();
  v0[11] = v9;
  *(v9 + 16) = &unk_1001AE5B0;
  *(v9 + 24) = v7;
  v10 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_100125784;

  return AsyncCoreDataContainer.write<A>(_:)(v11, &unk_1001AE5B8, v9, &type metadata for () + 8);
}

uint64_t sub_100125784()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1001258A8;
  }

  else
  {
    v6 = *(v2 + 80);
    v5 = *(v2 + 88);

    v4 = sub_100058874;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001258A8()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v10 = v0[7];

  v9 = enum case for DIPError.Code.internalError(_:);
  v8 = *(v5 + 104);
  v8(v4);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (v8)(v4, v9, v10);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100125AF8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100125BB8, 0, 0);
}

uint64_t sub_100125BB8()
{
  v1 = v0[2];
  v2 = *(*(v1 + 16) + 16);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = &unk_1001AE590;
  *(v3 + 24) = v1;
  v4 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];
  swift_retain_n();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100125CC4;

  return AsyncCoreDataContainer.write<A>(_:)(v0 + 9, &unk_1001AE598, v3, &type metadata for Bool);
}

uint64_t sub_100125CC4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100125E2C, 0, 0);
  }

  else
  {
    v5 = *(v3 + 40);
    v4 = *(v3 + 48);
    v6 = *(v3 + 16);

    v7 = *(v3 + 72);

    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_100125E2C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  (*(v5 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_100125FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[12] = v11;
  *v11 = v4;
  v11[1] = sub_100126114;

  return sub_10012ED08(1);
}

uint64_t sub_100126114(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_1001268BC;
  }

  else
  {
    v5 = sub_100126228;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100126228()
{
  v1 = v0[13];
  if (!v1)
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.progenitorKeyUnavailable(_:), v0[6]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = v0[14];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = v3[7];
  sub_100009278(v3 + 3, v3[6]);
  v7 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
  v8 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
  sub_100009708(v7, v8);
  dispatch thunk of AppleIDVManaging.generatePrearmTrustKeyforWatchAndCopyPublicKey(nonce:prognitorPublicKey:)();
  v0[15] = v19;
  v0[16] = v20;
  v0[17] = v21;
  v0[18] = v22;
  v0[19] = v23;
  v0[20] = v24;
  v0[21] = v25;
  v0[22] = v26;
  sub_1000092BC(v7, v8);
  if (v2)
  {

LABEL_5:
    v9 = v0[11];
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  v13 = v0[10];
  v12 = v0[11];
  v18 = v0[9];
  defaultLogger()();
  v14 = swift_task_alloc();
  v14[2] = v19;
  v14[3] = v20;
  v14[4] = v21;
  v14[5] = v22;
  v14[6] = v23;
  v14[7] = v24;
  v14[8] = v25;
  v14[9] = v26;
  Logger.sensitive(_:)();

  (*(v13 + 8))(v12, v18);
  sub_100009708(v19, v20);
  sub_100009708(v21, v22);
  sub_100009708(v23, v24);
  sub_100009708(v25, v26);
  v15 = async function pointer to DIPTrustKey.init(encryptedPrivateKey:attestation:publicKey:keyBlob:)[1];
  v16 = swift_task_alloc();
  v0[23] = v16;
  *v16 = v0;
  v16[1] = sub_1001266D0;
  v17 = v0[2];

  return DIPTrustKey.init(encryptedPrivateKey:attestation:publicKey:keyBlob:)(v17);
}

uint64_t sub_1001266D0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100126A50;
  }

  else
  {
    v3 = sub_1001267E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001267E4()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[8];
  sub_1000092BC(v0[15], v0[16]);
  sub_1000092BC(v6, v5);
  sub_1000092BC(v4, v3);
  sub_1000092BC(v1, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001268BC()
{
  v1 = v0[14];
  v2 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100126A50()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[13];
  sub_1000092BC(v0[15], v0[16]);
  sub_1000092BC(v6, v5);
  sub_1000092BC(v4, v3);
  sub_1000092BC(v1, v2);

  v8 = v0[24];
  v9 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100126C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[14] = v13;
  *v13 = v6;
  v13[1] = sub_100126D7C;

  return sub_10012ED08(0);
}

uint64_t sub_100126D7C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_100127534;
  }

  else
  {
    v5 = sub_100126E90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100126E90()
{
  v1 = v0[15];
  if (!v1)
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.progenitorKeyUnavailable(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v19 = v2[7];
  v20 = v0[16];
  sub_100009278(v2 + 3, v2[6]);
  v8 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
  v7 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
  sub_100009708(v8, v7);
  dispatch thunk of AppleIDVManaging.getPrearmTrustKeyFromExistingKeyBlob(keyBlob:nonce:prognitorPublicKey:)();
  v0[17] = v21;
  v0[18] = v22;
  v0[19] = v23;
  v0[20] = v24;
  v0[21] = v25;
  v0[22] = v26;
  v0[23] = v27;
  v0[24] = v28;
  sub_1000092BC(v8, v7);
  if (v20)
  {

LABEL_5:
    v9 = v0[13];
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  v13 = v0[12];
  v12 = v0[13];
  v18 = v0[11];
  defaultLogger()();
  v14 = swift_task_alloc();
  v14[2] = v21;
  v14[3] = v22;
  v14[4] = v23;
  v14[5] = v24;
  v14[6] = v25;
  v14[7] = v26;
  v14[8] = v27;
  v14[9] = v28;
  Logger.sensitive(_:)();

  (*(v13 + 8))(v12, v18);
  sub_100009708(v21, v22);
  sub_100009708(v23, v24);
  sub_100009708(v25, v26);
  sub_100009708(v27, v28);
  v15 = async function pointer to DIPTrustKey.init(encryptedPrivateKey:attestation:publicKey:keyBlob:)[1];
  v16 = swift_task_alloc();
  v0[25] = v16;
  *v16 = v0;
  v16[1] = sub_100127348;
  v17 = v0[2];

  return (DIPTrustKey.init(encryptedPrivateKey:attestation:publicKey:keyBlob:))(v17);
}

uint64_t sub_100127348()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1001276C8;
  }

  else
  {
    v3 = sub_10012745C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012745C()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[15];
  v8 = v0[13];
  v9 = v0[10];
  sub_1000092BC(v0[17], v0[18]);
  sub_1000092BC(v6, v5);
  sub_1000092BC(v4, v3);
  sub_1000092BC(v1, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100127534()
{
  v1 = v0[16];
  v2 = v0[13];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001276C8()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[15];
  sub_1000092BC(v0[17], v0[18]);
  sub_1000092BC(v6, v5);
  sub_1000092BC(v4, v3);
  sub_1000092BC(v1, v2);

  v8 = v0[26];
  v9 = v0[13];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001278A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[11] = v10;
  *v10 = v3;
  v10[1] = sub_1001279F0;

  return sub_10012ED08(1);
}

uint64_t sub_1001279F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_100127F3C;
  }

  else
  {
    v5 = sub_100127B04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100127B04()
{
  v1 = v0[12];
  if (!v1)
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.progenitorKeyUnavailable(_:), v0[5]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = v0[13];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = v3[7];
  sub_100009278(v3 + 3, v3[6]);
  v7 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
  v8 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
  sub_100009708(v7, v8);
  dispatch thunk of AppleIDVManaging.updatePrearmTrustKeyforWatch(inKeyBlob:prognitorPublicKey:)();
  sub_1000092BC(v7, v8);
  if (v2)
  {

LABEL_5:
    v9 = v0[10];
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  v12 = v0[9];
  v13 = v0[10];
  v16 = v0[8];
  v17 = v0[7];
  sub_1000092BC(v18, v19);
  defaultLogger()();
  v14 = swift_task_alloc();
  v14[2] = v20;
  v14[3] = v21;
  v14[4] = v22;
  v14[5] = v23;
  v14[6] = v24;
  v14[7] = v25;
  Logger.sensitive(_:)();
  sub_1000092BC(v20, v21);
  sub_1000092BC(v22, v23);

  (*(v12 + 8))(v13, v16);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100127F3C()
{
  v1 = v0[13];
  v2 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001280C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[14] = v8;
  *v8 = v4;
  v8[1] = sub_1001281D0;

  return sub_100137B2C(0xD000000000000012, 0x80000001001B18B0);
}

uint64_t sub_1001281D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 112);
  v9 = *v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = v3;

  if (v3)
  {
    v7 = sub_100128504;
  }

  else
  {
    v7 = sub_1001282E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001282E8()
{
  v1 = v0[18];
  v2 = v0[10];
  v0[19] = sub_10012C720();
  v0[20] = v3;
  if (v1)
  {
    v4 = v0[17];
    sub_10001C120(v0[15], v0[16]);
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_10012868C;
    v8 = v0[10];

    return sub_10012C910();
  }
}

uint64_t sub_100128504()
{
  v1 = v0[18];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10012868C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 168);
  v8 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  if (v2)
  {
    v6 = sub_100128B18;
  }

  else
  {
    v6 = sub_1001287A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001287A4()
{
  v30 = v0[23];
  v32 = v0[24];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v26 = v0[17];
  v4 = v0[15];
  v28 = v0[9];
  v29 = v0[22];
  v5 = v0[7];
  v27 = v0[8];
  sub_10001A940(v0[10] + 24, (v0 + 2));
  v6 = v0[6];
  sub_100009278(v0 + 2, v0[5]);
  v7 = [v5 credentialNonce];
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v3 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = v4;
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = v3;
  }

  v13 = v4;
  v14 = v11;
  sub_100032EBC(v13, v3);
  sub_100009708(v1, v2);
  v15 = dispatch thunk of AppleIDVManaging.generatePhoneToken(withNonce:aclBlob:keyBlob:keyAttestation:casdCertificate:)();
  v18 = v0[22];
  v17 = v0[23];
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[17];
  if (v32)
  {
    sub_10001C120(v0[15], v0[16]);
    sub_1000092BC(v20, v19);
    sub_1000092BC(v8, v10);
    sub_10001C120(v18, v17);
    sub_1000092BC(v20, v19);
    sub_1000092BC(v14, v12);
    sub_100005090(v0 + 2);
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[13];
    v31 = v16;
    v33 = v15;
    sub_10001C120(v0[15], v0[16]);
    sub_1000092BC(v20, v19);
    sub_1000092BC(v8, v10);
    sub_10001C120(v18, v17);
    sub_1000092BC(v20, v19);
    sub_1000092BC(v14, v12);
    sub_100005090(v0 + 2);

    v25 = v0[1];

    return v25(v33, v31);
  }
}

uint64_t sub_100128B18()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_1000092BC(v0[19], v0[20]);
  sub_10001C120(v3, v1);
  v4 = v0[24];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100128CC0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100128E48, 0, 0);
}

uint64_t sub_100128E48()
{
  v1 = v0[25];
  v2 = v0[9];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = [v6 credentialAccessibilityEnabled];

    _os_log_impl(&_mh_execute_header, v4, v5, "establishPrearmTrust called with accessibility enabled: %{BOOL,public}d", v7, 8u);

    v8 = v0[9];
  }

  else
  {

    v8 = v0[9];
    v4 = v8;
  }

  v9 = v0[25];
  v10 = v0[14];
  v11 = v0[15];

  v12 = *(v11 + 8);
  v0[26] = v12;
  v0[27] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  v13 = [v8 credentialPairingID];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v0[28] = v16;
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = sub_100129004;
  v18 = v0[10];

  return sub_10013AF38(v14, v16);
}

uint64_t sub_100129004(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 232);
  v8 = *v3;
  *(*v3 + 240) = v2;

  if (v2)
  {
    v9 = sub_10012B210;
  }

  else
  {
    v10 = v6[28];

    v6[31] = a2;
    v6[32] = a1;
    v9 = sub_100129140;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100129140()
{
  *(v0 + 40) = vextq_s8(*(v0 + 248), *(v0 + 248), 8uLL);
  v1 = [objc_opt_self() standardUserDefaults];
  v2._object = 0x80000001001BB6A0;
  v2._countAndFlagsBits = 0xD000000000000029;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = *(v0 + 192);
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "SIMULATING no prearm trust", v7, 2u);
    }

    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = *(v0 + 192);
    v13 = *(v0 + 112);

    v11(v12, v13);
    sub_10001C120(v8, v9);
    *(v0 + 40) = xmmword_1001AE390;
  }

  v14 = *(v0 + 80);
  v15 = *(*(v14 + 16) + 16);
  v16 = swift_allocObject();
  *(v0 + 264) = v16;
  *(v16 + 16) = sub_100141150;
  *(v16 + 24) = v14;
  v17 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  swift_retain_n();
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  v19 = sub_100004E70(&qword_100203B08, &qword_1001AE520);
  *v18 = v0;
  v18[1] = sub_100129370;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 56, sub_100141878, v16, v19);
}

uint64_t sub_100129370()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_10012A3E4;
  }

  else
  {
    v5 = *(v2 + 264);
    v6 = *(v2 + 80);

    v4 = sub_100129498;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100129498()
{
  v177 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  defaultLogger()();
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = v2;
  sub_100032EBC(v6, v5);
  sub_100032EBC(v4, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  sub_10001C120(v6, v5);
  v167 = v4;
  sub_10001C120(v4, v3);
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v162 = *(v0 + 112);
  v164 = *(v0 + 184);
  v170 = v3 >> 60;
  v13 = &off_1001FE000;
  v14 = *(v0 + 72);
  if (v10)
  {
    v160 = v3;
    v15 = swift_slowAlloc();
    v176[0] = swift_slowAlloc();
    *v15 = 136315650;
    if (v5 >> 60 == 15)
    {
      v16 = 0x746E65736261;
    }

    else
    {
      v16 = 0x746E6573657270;
    }

    if (v5 >> 60 == 15)
    {
      v17 = 0xE600000000000000;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    v18 = sub_10010150C(v16, v17, v176);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    if (v170 <= 0xE)
    {
      v19 = 0x746E6573657270;
    }

    else
    {
      v19 = 0x746E65736261;
    }

    if (v170 <= 0xE)
    {
      v20 = 0xE700000000000000;
    }

    else
    {
      v20 = 0xE600000000000000;
    }

    v21 = sub_10010150C(v19, v20, v176);

    *(v15 + 14) = v21;
    *(v15 + 22) = 1024;
    v22 = [v14 credentialAccessibilityEnabled];

    *(v15 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "establishPrearmTrust -\nexisting trust       : %s\nexisting attestation : %s\naccessibilityEnabled : %{BOOL}d", v15, 0x1Cu);
    swift_arrayDestroy();
    v13 = &off_1001FE000;

    v3 = v160;

    v12(v164, v162);
  }

  else
  {

    v12(v164, v162);
  }

  if (v170 > 0xE)
  {
    v23 = *(v0 + 152);
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v29 = *(v0 + 152);
    v30 = *(v0 + 112);
    if (v26)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "establishPrearmTrust - no re-use possible", v31, 2u);

      v32 = v167;
LABEL_19:
      sub_10001C120(v32, v3);
LABEL_37:
      v28(v29, v30);
      sub_10001C120(*(v0 + 40), *(v0 + 48));
      v173 = *(v0 + 280);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  swift_beginAccess();
  v33 = *(v0 + 48);
  if (v33 >> 60 == 15)
  {
    v34 = *(v0 + 72);
    sub_100009708(v167, v3);
    if (![v34 v13[452]])
    {
      v63 = *(v0 + 160);
      defaultLogger()();
      v24 = Logger.logObject.getter();
      v64 = static os_log_type_t.info.getter();
      v65 = os_log_type_enabled(v24, v64);
      v28 = *(v0 + 208);
      v66 = *(v0 + 216);
      v29 = *(v0 + 160);
      v30 = *(v0 + 112);
      if (v65)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v24, v64, "establishPrearmTrust - watch has an integrity issue. previous progenitor key with no trust blob. Forcing a redo", v67, 2u);

        sub_10001C120(v167, v3);
        v32 = v167;
        goto LABEL_19;
      }

      sub_10001C120(v167, v3);
      sub_10001C120(v167, v3);
LABEL_36:

      goto LABEL_37;
    }

    v35 = *(v0 + 168);
    sub_10001C120(v167, v3);
    defaultLogger()();
    sub_100009708(v167, v3);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    sub_10001C120(v167, v3);
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 208);
    v39 = *(v0 + 216);
    v41 = *(v0 + 168);
    v42 = *(v0 + 112);
    v161 = v3;
    if (v38)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v176[0] = v44;
      *v43 = 136315138;
      v45 = Data.base16EncodedString()();
      v46 = sub_10010150C(v45._countAndFlagsBits, v45._object, v176);

      *(v43 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "establishPrearmTrust - AX returning attestations %s", v43, 0xCu);
      sub_100005090(v44);
    }

    v40(v41, v42);
LABEL_66:
    sub_10001C120(*(v0 + 40), *(v0 + 48));
    v150 = *(v0 + 192);
    v149 = *(v0 + 200);
    v152 = *(v0 + 176);
    v151 = *(v0 + 184);
    v154 = *(v0 + 160);
    v153 = *(v0 + 168);
    v156 = *(v0 + 144);
    v155 = *(v0 + 152);
    v158 = *(v0 + 128);
    v157 = *(v0 + 136);
    v175 = *(v0 + 104);

    v159 = *(v0 + 8);

    return v159(v167, v161);
  }

  v47 = *(v0 + 40);
  v171 = *(v0 + 280);
  v49 = *(v0 + 72);
  v48 = *(v0 + 80);
  v165 = v48[7];
  sub_100009278(v48 + 3, v48[6]);
  sub_100032EBC(v167, v3);
  sub_100032EBC(v47, v33);
  v50 = [v49 credentialBAACertificate];
  v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  dispatch thunk of AppleIDVManaging.validatePrearmTrust(baaCertificate:protectedPublicKey:)();
  if (!v171)
  {
    v166 = v33;
    v172 = v47;
    v68 = *(v0 + 176);
    sub_10001C120(v167, v3);
    sub_1000092BC(v51, v53);
    defaultLogger()();
    sub_100009708(v167, v3);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    sub_10001C120(v167, v3);
    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v0 + 208);
    v73 = *(v0 + 216);
    v74 = *(v0 + 176);
    v75 = *(v0 + 112);
    v161 = v3;
    if (v71)
    {
      v163 = *(v0 + 208);
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v176[0] = v77;
      *v76 = 136315138;
      v78 = Data.base16EncodedString()();
      v79 = sub_10010150C(v78._countAndFlagsBits, v78._object, v176);

      *(v76 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v69, v70, "establishPrearmTrust - returning attestations %s", v76, 0xCu);
      sub_100005090(v77);

      sub_10001C120(v172, v166);

      v163(v74, v75);
    }

    else
    {
      sub_10001C120(v172, v166);

      v72(v74, v75);
    }

    goto LABEL_66;
  }

  sub_10001C120(*(v0 + 40), *(v0 + 48));
  sub_1000092BC(v51, v53);
  sub_10001C120(v47, v33);
  sub_10001C120(v167, v3);
  sub_10001C120(v167, v3);
  v54 = *(v0 + 128);
  defaultLogger()();
  swift_errorRetain();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = *(v0 + 96);
    v58 = *(v0 + 104);
    v59 = *(v0 + 88);
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    (*(v57 + 104))(v58, enum case for DIPError.Code.internalError(_:), v59);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v60 + 4) = v62;
    *v61 = v62;
    _os_log_impl(&_mh_execute_header, v55, v56, "establishPrearmTrust - ignoring error inspecting previous trust and globalAuthACL, %@", v60, 0xCu);
    sub_10000A0D4(v61, &qword_1002003B8, &unk_1001AB850);
  }

  else
  {
  }

  v13 = &off_1001FE000;
  v80 = *(v0 + 216);
  (*(v0 + 208))(*(v0 + 128), *(v0 + 112));
  v173 = 0;
LABEL_38:
  v81 = *(v0 + 144);
  defaultLogger()();
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "establishPrearmTrust - creating new trust and globalAuthACL", v84, 2u);
  }

  v86 = *(v0 + 208);
  v85 = *(v0 + 216);
  v87 = *(v0 + 144);
  v88 = *(v0 + 112);
  v89 = *(v0 + 72);

  v86(v87, v88);
  v90 = [v89 v13[452]];
  v91 = *(v0 + 72);
  if (v90)
  {
    v92 = *(v0 + 136);
    defaultLogger()();
    v93 = v91;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();

    v96 = os_log_type_enabled(v94, v95);
    v98 = *(v0 + 208);
    v97 = *(v0 + 216);
    v99 = *(v0 + 136);
    v100 = *(v0 + 112);
    if (v96)
    {
      v101 = *(v0 + 72);
      v168 = *(v0 + 208);
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v176[0] = v103;
      *v102 = 136446210;
      v104 = [v101 v13[452]];
      v105 = v104 == 0;
      if (v104)
      {
        v106 = 20047;
      }

      else
      {
        v106 = 4605519;
      }

      if (v105)
      {
        v107 = 0xE300000000000000;
      }

      else
      {
        v107 = 0xE200000000000000;
      }

      v108 = v13;
      v109 = sub_10010150C(v106, v107, v176);

      *(v102 + 4) = v109;
      v13 = v108;
      _os_log_impl(&_mh_execute_header, v94, v95, "Skipping establishing prearm trust with watch because phone's accessibility is turned %{public}s", v102, 0xCu);
      sub_100005090(v103);

      v168(v99, v100);
    }

    else
    {

      v98(v99, v100);
    }

    v119 = *(v0 + 72);
    v118 = *(v0 + 80);
    v120 = v118[7];
    sub_100009278(v118 + 3, v118[6]);
    [v119 v13[452]];
    v121 = dispatch thunk of AppleIDVManaging.prepareUnboundACLForWatch(withAccessibilityEnabled:)();
    *(v0 + 328) = v121;
    *(v0 + 336) = v122;
    if (v173)
    {
      goto LABEL_53;
    }

    v144 = v121;
    v145 = v122;
    if ([*(v0 + 72) v13[452]])
    {
      v146 = 2;
    }

    else
    {
      v146 = 3;
    }

    v147 = swift_task_alloc();
    *(v0 + 344) = v147;
    *v147 = v0;
    v147[1] = sub_10012AE24;
    v148 = *(v0 + 80);

    return sub_100125008(v144, v145, v146);
  }

  else
  {
    v110 = *(v0 + 80);
    v111 = v110[7];
    sub_100009278(v110 + 3, v110[6]);
    v112 = [v91 credentialBAACertificate];
    v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    v116 = dispatch thunk of AppleIDVManaging.establishPrearmTrust(baaCertificate:)();
    *(v0 + 288) = v116;
    *(v0 + 296) = v117;
    if (v173)
    {
      sub_1000092BC(v113, v115);
LABEL_53:
      v124 = *(v0 + 192);
      v123 = *(v0 + 200);
      v126 = *(v0 + 176);
      v125 = *(v0 + 184);
      v128 = *(v0 + 160);
      v127 = *(v0 + 168);
      v130 = *(v0 + 144);
      v129 = *(v0 + 152);
      v131 = *(v0 + 136);
      v169 = *(v0 + 128);
      v174 = *(v0 + 104);

      v132 = *(v0 + 8);

      return v132();
    }

    v134 = *(v0 + 72);
    v135 = v116;
    v136 = v113;
    v137 = v117;
    sub_1000092BC(v136, v115);
    v138 = [v134 credentialPairingID];
    v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = v140;

    *(v0 + 304) = v141;
    v142 = swift_task_alloc();
    *(v0 + 312) = v142;
    *v142 = v0;
    v142[1] = sub_10012AB24;
    v143 = *(v0 + 80);

    return sub_10013A578(v135, v137, v139, v141);
  }
}

uint64_t sub_10012A3E4()
{
  v74 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 80);

  sub_10001C120(*(v0 + 40), *(v0 + 48));
  v3 = *(v0 + 280);
  v4 = *(v0 + 128);
  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    (*(v7 + 104))(v8, enum case for DIPError.Code.internalError(_:), v9);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "establishPrearmTrust - ignoring error inspecting previous trust and globalAuthACL, %@", v10, 0xCu);
    sub_10000A0D4(v11, &qword_1002003B8, &unk_1001AB850);
  }

  else
  {
  }

  v13 = *(v0 + 216);
  (*(v0 + 208))(*(v0 + 128), *(v0 + 112));
  v14 = *(v0 + 144);
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "establishPrearmTrust - creating new trust and globalAuthACL", v17, 2u);
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 144);
  v21 = *(v0 + 112);
  v22 = *(v0 + 72);

  v19(v20, v21);
  if ([v22 credentialAccessibilityEnabled])
  {
    v23 = *(v0 + 136);
    v24 = *(v0 + 72);
    defaultLogger()();
    v25 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 208);
    v29 = *(v0 + 216);
    v31 = *(v0 + 136);
    v32 = *(v0 + 112);
    if (v28)
    {
      v72 = *(v0 + 208);
      v33 = *(v0 + 72);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73 = v35;
      *v34 = 136446210;
      v36 = [v33 credentialAccessibilityEnabled];
      v37 = v36 == 0;
      if (v36)
      {
        v38 = 20047;
      }

      else
      {
        v38 = 4605519;
      }

      if (v37)
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v39 = 0xE200000000000000;
      }

      v40 = sub_10010150C(v38, v39, &v73);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v26, v27, "Skipping establishing prearm trust with watch because phone's accessibility is turned %{public}s", v34, 0xCu);
      sub_100005090(v35);

      v72(v31, v32);
    }

    else
    {

      v30(v31, v32);
    }

    v51 = *(v0 + 72);
    v50 = *(v0 + 80);
    v52 = v50[7];
    sub_100009278(v50 + 3, v50[6]);
    [v51 credentialAccessibilityEnabled];
    v53 = dispatch thunk of AppleIDVManaging.prepareUnboundACLForWatch(withAccessibilityEnabled:)();
    *(v0 + 328) = v53;
    *(v0 + 336) = v54;
    v66 = v53;
    v67 = v54;
    if ([*(v0 + 72) credentialAccessibilityEnabled])
    {
      v69 = 2;
    }

    else
    {
      v69 = 3;
    }

    v70 = swift_task_alloc();
    *(v0 + 344) = v70;
    *v70 = v0;
    v70[1] = sub_10012AE24;
    v71 = *(v0 + 80);

    return sub_100125008(v66, v67, v69);
  }

  else
  {
    v42 = *(v0 + 72);
    v41 = *(v0 + 80);
    v43 = v41[7];
    sub_100009278(v41 + 3, v41[6]);
    v44 = [v42 credentialBAACertificate];
    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = dispatch thunk of AppleIDVManaging.establishPrearmTrust(baaCertificate:)();
    *(v0 + 288) = v48;
    *(v0 + 296) = v49;
    v55 = *(v0 + 72);
    v56 = v48;
    v57 = v45;
    v58 = v49;
    sub_1000092BC(v57, v47);
    v59 = [v55 credentialPairingID];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    *(v0 + 304) = v62;
    v63 = swift_task_alloc();
    *(v0 + 312) = v63;
    *v63 = v0;
    v63[1] = sub_10012AB24;
    v64 = *(v0 + 80);

    return sub_10013A578(v56, v58, v60, v62);
  }
}

uint64_t sub_10012AB24()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_10012B940;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_10012AC40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012AC40()
{
  sub_1000092BC(*(v0 + 288), *(v0 + 296));
  v1 = *(v0 + 320);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = v2[7];
  sub_100009278(v2 + 3, v2[6]);
  [v3 credentialAccessibilityEnabled];
  v5 = dispatch thunk of AppleIDVManaging.prepareUnboundACLForWatch(withAccessibilityEnabled:)();
  *(v0 + 328) = v5;
  *(v0 + 336) = v6;
  if (v1)
  {
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v10 = *(v0 + 176);
    v9 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    v23 = *(v0 + 128);
    v24 = *(v0 + 104);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = v5;
    v19 = v6;
    if ([*(v0 + 72) credentialAccessibilityEnabled])
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    v21 = swift_task_alloc();
    *(v0 + 344) = v21;
    *v21 = v0;
    v21[1] = sub_10012AE24;
    v22 = *(v0 + 80);

    return sub_100125008(v18, v19, v20);
  }
}

uint64_t sub_10012AE24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 344);
  v8 = *v3;
  v4[44] = a1;
  v4[45] = a2;
  v4[46] = v2;

  if (v2)
  {
    v6 = sub_10012BA48;
  }

  else
  {
    v6 = sub_10012AF3C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10012AF3C()
{
  if (v0[45] >> 60 == 15)
  {
    v2 = v0[41];
    v1 = v0[42];
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.idcsMissingProgenitorKeyAttestation(_:), v0[11]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v2, v1);
    v4 = v0[24];
    v3 = v0[25];
    v6 = v0[22];
    v5 = v0[23];
    v8 = v0[20];
    v7 = v0[21];
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[16];
    v12 = v0[17];
    v27 = v0[13];

    v13 = v0[1];

    return v13();
  }

  else
  {
    sub_1000092BC(v0[41], v0[42]);
    v28 = v0[44];
    v29 = v0[45];
    v16 = v0[24];
    v15 = v0[25];
    v18 = v0[22];
    v17 = v0[23];
    v20 = v0[20];
    v19 = v0[21];
    v22 = v0[18];
    v21 = v0[19];
    v23 = v0[16];
    v24 = v0[17];
    v26 = v0[13];

    v25 = v0[1];

    return v25(v28, v29);
  }
}

uint64_t sub_10012B210()
{
  v73 = v0;
  v1 = *(v0 + 224);

  v2 = *(v0 + 240);
  v3 = *(v0 + 128);
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    (*(v6 + 104))(v7, enum case for DIPError.Code.internalError(_:), v8);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "establishPrearmTrust - ignoring error inspecting previous trust and globalAuthACL, %@", v9, 0xCu);
    sub_10000A0D4(v10, &qword_1002003B8, &unk_1001AB850);
  }

  else
  {
  }

  v12 = *(v0 + 216);
  (*(v0 + 208))(*(v0 + 128), *(v0 + 112));
  v13 = *(v0 + 144);
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "establishPrearmTrust - creating new trust and globalAuthACL", v16, 2u);
  }

  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = *(v0 + 144);
  v20 = *(v0 + 112);
  v21 = *(v0 + 72);

  v18(v19, v20);
  v22 = [v21 credentialAccessibilityEnabled];
  v23 = *(v0 + 72);
  if (v22)
  {
    v24 = *(v0 + 136);
    defaultLogger()();
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 208);
    v29 = *(v0 + 216);
    v31 = *(v0 + 136);
    v32 = *(v0 + 112);
    if (v28)
    {
      v71 = *(v0 + 208);
      v33 = *(v0 + 72);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v72 = v35;
      *v34 = 136446210;
      v36 = [v33 credentialAccessibilityEnabled];
      v37 = v36 == 0;
      if (v36)
      {
        v38 = 20047;
      }

      else
      {
        v38 = 4605519;
      }

      if (v37)
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v39 = 0xE200000000000000;
      }

      v40 = sub_10010150C(v38, v39, &v72);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v26, v27, "Skipping establishing prearm trust with watch because phone's accessibility is turned %{public}s", v34, 0xCu);
      sub_100005090(v35);

      v71(v31, v32);
    }

    else
    {

      v30(v31, v32);
    }

    v50 = *(v0 + 72);
    v49 = *(v0 + 80);
    v51 = v49[7];
    sub_100009278(v49 + 3, v49[6]);
    [v50 credentialAccessibilityEnabled];
    v52 = dispatch thunk of AppleIDVManaging.prepareUnboundACLForWatch(withAccessibilityEnabled:)();
    *(v0 + 328) = v52;
    *(v0 + 336) = v53;
    v65 = v52;
    v66 = v53;
    if ([*(v0 + 72) credentialAccessibilityEnabled])
    {
      v68 = 2;
    }

    else
    {
      v68 = 3;
    }

    v69 = swift_task_alloc();
    *(v0 + 344) = v69;
    *v69 = v0;
    v69[1] = sub_10012AE24;
    v70 = *(v0 + 80);

    return sub_100125008(v65, v66, v68);
  }

  else
  {
    v41 = *(v0 + 80);
    v42 = v41[7];
    sub_100009278(v41 + 3, v41[6]);
    v43 = [v23 credentialBAACertificate];
    v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = dispatch thunk of AppleIDVManaging.establishPrearmTrust(baaCertificate:)();
    *(v0 + 288) = v47;
    *(v0 + 296) = v48;
    v54 = *(v0 + 72);
    v55 = v47;
    v56 = v44;
    v57 = v48;
    sub_1000092BC(v56, v46);
    v58 = [v54 credentialPairingID];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    *(v0 + 304) = v61;
    v62 = swift_task_alloc();
    *(v0 + 312) = v62;
    *v62 = v0;
    v62[1] = sub_10012AB24;
    v63 = *(v0 + 80);

    return sub_10013A578(v55, v57, v59, v61);
  }
}

uint64_t sub_10012B940()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  sub_1000092BC(v3, v2);
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[16];
  v13 = v0[17];
  v16 = v0[13];
  v17 = v0[40];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10012BA48()
{
  sub_1000092BC(v0[41], v0[42]);
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v13 = v0[13];
  v14 = v0[46];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10012BB40(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10012BC5C, 0, 0);
}

uint64_t sub_10012BC5C()
{
  v1 = [*(v0 + 16) credentialPairingID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 80) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_10012BD2C;
  v6 = *(v0 + 24);

  return sub_10013AF38(v2, v4);
}

uint64_t sub_10012BD2C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v9 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v6 = sub_10012C378;
  }

  else
  {
    v7 = v4[10];

    v6 = sub_10012BE4C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10012BE4C()
{
  v41 = v0;
  v1 = v0[13];
  if (v1 >> 60 == 15)
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.missingWatchPrearmTrustWhenWatchPrearming(_:), v0[4]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_7:
    v34 = v0[9];
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v35 = v0[1];
    goto LABEL_8;
  }

  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[2];
  sub_100009708(v2, v0[13]);
  defaultLogger()();
  sub_100032EBC(v2, v1);
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  sub_10001C120(v2, v1);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[8];
    v39 = v0[9];
    v11 = v0[7];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = Data.base64EncodedString(options:)(0);
    v15 = sub_10010150C(v14._countAndFlagsBits, v14._object, v40);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v16 = [v12 credentialPairingID];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10010150C(v17, v19, v40);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully retrieved persisted protected public key: %s for pairingID: %s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v39, v11);
  }

  else
  {
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[7];

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[12];
  v28 = v0[2];
  v27 = v0[3];
  v29 = v27[7];
  sub_100009278(v27 + 3, v27[6]);
  v30 = [v28 credentialAuthorizationToken];
  v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  dispatch thunk of AppleIDVManaging.prearmCredential(withAuthorizationToken:protectedPublicKey:)();
  sub_1000092BC(v31, v33);
  sub_10001C120(v26, v25);
  sub_10001C120(v26, v25);
  if (v24)
  {
    goto LABEL_7;
  }

  v37 = v0[9];
  v38 = v0[6];

  v35 = v0[1];
LABEL_8:

  return v35();
}

uint64_t sub_10012C378()
{
  v1 = v0[10];

  v2 = v0[14];
  v3 = v0[9];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012C50C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = v0[7];
  sub_100009278(v0 + 3, v0[6]);
  dispatch thunk of AppleIDVManaging.credentialAuthenticationTokenStatus()();
  return 2;
}

uint64_t sub_10012C720()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v0 + 64) + 16);
  result = dispatch thunk of SESKeystore.getCASDCertificate()();
  if (v1)
  {
    v9 = result;
    (*(v3 + 104))(v6, enum case for DIPError.Code.internalError(_:), v2);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v9;
  }

  return result;
}

uint64_t sub_10012C910()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_10012CA00;

  return sub_10012ED08(0);
}

uint64_t sub_10012CA00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_10012CD24;
  }

  else
  {
    v5 = sub_10012CB14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012CB14()
{
  if (v0[7])
  {
    v1 = v0[8];
    v2 = *(v0[2] + 64);
    v3 = sub_10002E3C4(v0[7]);
    v5 = v4;

    if (v1)
    {
      (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
      swift_errorRetain();
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v6 = v0[1];

      return v6();
    }
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  v8 = v0[5];

  v9 = v0[1];

  return v9(v3, v5);
}

uint64_t sub_10012CD24()
{
  v1 = v0[8];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10012CEAC()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_10012CF98;

  return sub_10013B9D8();
}

uint64_t sub_10012CF98(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_10012D2C4;
  }

  else
  {
    v5 = sub_10012D0AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012D0AC()
{
  if (v0[7])
  {
    v1 = v0[8];
    v2 = *(v0[2] + 64);
    v3 = v0[7];

    v5 = sub_10002E3C4(v4);
    v7 = v6;

    if (v1)
    {
      (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
      swift_errorRetain();
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v8 = v0[1];

      return v8();
    }
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v10 = v0[5];

  v11 = v0[1];

  return v11(v5, v7);
}

uint64_t sub_10012D2C4()
{
  v1 = v0[8];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10012D44C()
{
  v1[10] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10012D50C, 0, 0);
}

uint64_t sub_10012D50C()
{
  v1 = v0[10];
  type metadata accessor for ACLFetcher();
  inited = swift_initStackObject();
  v0[14] = inited;
  *(inited + 16) = v1;
  type metadata accessor for AppleIDVManager();

  sub_1000215BC((inited + 24));
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10012D5E8;
  v4 = v0[10];

  return sub_10012ED08(0);
}

uint64_t sub_10012D5E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_10012DFF0;
  }

  else
  {
    v5 = sub_10012D6FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012D6FC()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey;
    v3 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
    v0[18] = v3;
    v4 = *(v2 + 8);
    v0[19] = v4;
    sub_100009708(v3, v4);

    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_10012D9DC;
    v6 = v0[10];

    return sub_10013B9D8();
  }

  else
  {
    v9 = v0[14];
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[11]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10012D9DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_10012E178;
  }

  else
  {
    v5 = sub_10012DAF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012DAF0()
{
  v1 = v0[21];
  if (!v1)
  {
    v12 = v0[18];
    v11 = v0[19];
    v24 = v0[14];
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.idcsMissingGlobalThirdPartyAuthACL(_:), v0[11]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v12, v11);
LABEL_7:

    goto LABEL_8;
  }

  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v6 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
  v5 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
  sub_100009708(v6, v5);

  v7 = sub_10000975C(v4, v3, v6, v5);
  if (v2)
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[14];
    sub_1000092BC(v6, v5);
    sub_1000092BC(v9, v8);

LABEL_8:
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  v13 = v7;
  v14 = SecAccessControlRef.constraintsData.getter();
  v16 = v0[19];
  v25 = v0[18];
  v17 = v0[14];
  if (v15 >> 60 == 15)
  {
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.idcsInvalidACL(_:), v0[11]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v6, v5);
    sub_1000092BC(v25, v16);
    goto LABEL_7;
  }

  v20 = v0[10];
  v21 = v14;
  v22 = v15;

  sub_1000092BC(v6, v5);
  sub_1000092BC(v25, v16);

  swift_setDeallocating();
  sub_100005090((v17 + 24));

  v23 = v0[1];

  return v23(v21, v22);
}

uint64_t sub_10012DFF0()
{
  v1 = v0[14];

  v2 = v0[17];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10012E178()
{
  v1 = v0[14];
  sub_1000092BC(v0[18], v0[19]);

  v2 = v0[22];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10012E30C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_10012E3D4, 0, 0);
}

uint64_t sub_10012E3D4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 104);
  v4 = *(v0 + 16);
  v5 = *(*(v1 + 64) + 16);
  *(v0 + 64) = v5;
  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  *(v0 + 72) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  swift_retain_n();
  sub_100032EBC(v4, v2);
  v8 = *(v6 + 16);
  v9 = swift_allocObject();
  *(v0 + 80) = v9;
  *(v9 + 16) = &unk_1001AE4B8;
  *(v9 + 24) = v7;
  v10 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_10012E534;

  return AsyncCoreDataContainer.write<A>(_:)();
}

uint64_t sub_10012E534()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_10012E658;
  }

  else
  {
    v6 = *(v2 + 72);
    v5 = *(v2 + 80);

    v4 = sub_100141874;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012E658()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  (*(v7 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10012E804()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10012E8C4, 0, 0);
}

uint64_t sub_10012E8C4()
{
  v1 = v0[2];
  v2 = *(*(v1 + 64) + 16);
  v0[6] = v2;
  v3 = *(*(v1 + 16) + 16);
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = &unk_1001AE4E0;
  *(v4 + 24) = v2;
  v5 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];
  swift_retain_n();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_10012E9D8;

  return AsyncCoreDataContainer.write<A>(_:)();
}

uint64_t sub_10012E9D8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10012EB68;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v4 = sub_10012EAFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012EAFC()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10012EB68()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10012ED08(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 88) = a1;
  v3 = type metadata accessor for DIPError.Code();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10012EDCC, 0, 0);
}

uint64_t sub_10012EDCC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 88);
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(v3 + 16);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = &unk_1001AE408;
  *(v6 + 24) = v4;
  v7 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = sub_100004E70(&qword_100203AC8, &qword_1001AE420);
  *v8 = v0;
  v8[1] = sub_10012EF1C;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 16, &unk_1001AE418, v6, v9);
}

uint64_t sub_10012EF1C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10012F084, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[8];
    v6 = v3[6];

    v7 = v3[2];

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_10012F084()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10012F220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_10012F2EC;

  return sub_10012F470(a4, a5, a6, a2, 0);
}

uint64_t sub_10012F2EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_10012F448, 0, 0);
  }
}

uint64_t sub_10012F470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 152) = a4;
  *(v6 + 160) = v5;
  *(v6 + 492) = a5;
  *(v6 + 144) = a3;
  v10 = type metadata accessor for DIPError.Code();
  *(v6 + 168) = v10;
  v11 = *(v10 - 8);
  *(v6 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v6 + 192) = v13;
  v14 = *(v13 - 8);
  *(v6 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  v16 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v6 + 216) = v16;
  v17 = *(v16 - 8);
  *(v6 + 224) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  v19 = swift_task_alloc();
  *(v6 + 248) = v19;
  *v19 = v6;
  v19[1] = sub_10012F658;

  return sub_1001318E8(v6 + 16, a1, a2, a3);
}

uint64_t sub_10012F658()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_100130FD0;
  }

  else
  {
    v3 = sub_10012F76C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012F76C()
{
  v1 = *(v0[20] + 64);
  v0[33] = v1;
  v2 = *(v1 + 16);
  v0[34] = v2;

  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_10012F824;
  v4 = v0[19];

  return sub_10019F998(v4, v2);
}

uint64_t sub_10012F824()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_10013118C;
  }

  else
  {
    v3 = sub_10012F938;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012F938()
{
  v13 = *(v0 + 240);
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = swift_allocObject();
  *(v0 + 296) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v0 + 304) = *(v4 + 16);
  v6 = swift_allocObject();
  *(v0 + 312) = v6;
  *(v6 + 16) = sub_10013EE78;
  *(v6 + 24) = v5;
  v7 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v0 + 488) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v8 = *(v2 + 104);
  *(v0 + 320) = v8;
  *(v0 + 328) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;

  v8(v13, v7, v1);
  v9 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 336) = v10;
  *v10 = v0;
  v10[1] = sub_10012FACC;
  v11 = *(v0 + 240);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_100026510, v6, &type metadata for () + 8);
}

uint64_t sub_10012FACC()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  v2[43] = v0;

  v5 = v2[39];
  if (v0)
  {
    (*(v2[28] + 8))(v2[30], v2[27]);

    v6 = sub_10012FE10;
  }

  else
  {
    v7 = v2[37];
    v8 = v2[30];
    v9 = v2[27];
    v10 = v2[28];

    v11 = *(v10 + 8);
    v2[44] = v11;
    v2[45] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    v6 = sub_10012FC64;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10012FC64()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_10012FCFC;
  v3 = v0[33];

  return sub_10002CF1C(v1);
}

uint64_t sub_10012FCFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = sub_100131358;
  }

  else
  {
    v5 = sub_10012FFE8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012FE10()
{
  v1 = v0[37];
  v2 = v0[34];

  sub_10013EE48((v0 + 2));
  v3 = v0[43];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[26];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(0, 0xF000000000000000);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10012FFE8()
{
  v1 = *(v0 + 160);
  v2 = v1[14];
  sub_100009278(v1 + 10, v1[13]);
  if (dispatch thunk of DeviceInformationProviding.isPhone.getter())
  {
    v3 = *(v0 + 40);
    v4 = swift_task_alloc();
    *(v0 + 392) = v4;
    *v4 = v0;
    v4[1] = sub_100130498;
    v5 = *(v0 + 264);

    return sub_10002CF1C(v3);
  }

  else
  {
    v7 = *(v0 + 384);
    *(v0 + 416) = 0;
    v8 = *(v0 + 208);
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "created a new progenitor key", v11, 2u);
    }

    v12 = *(v0 + 376);
    v13 = *(v0 + 264);
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = *(v0 + 192);

    (*(v15 + 8))(v14, v16);
    *(v0 + 424) = sub_10002E3C4(v12);
    *(v0 + 432) = v17;
    if (v7)
    {
      v18 = *(v0 + 376);
      v19 = *(v0 + 272);

      sub_10013EE48(v0 + 16);
      v20 = *(v0 + 232);
      v21 = *(v0 + 240);
      v22 = *(v0 + 208);
      (*(*(v0 + 176) + 104))(*(v0 + 184), enum case for DIPError.Code.internalError(_:), *(v0 + 168));
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10001C120(0, 0xF000000000000000);

      v23 = *(v0 + 8);

      return v23();
    }

    else
    {
      v24 = *(v0 + 376);
      v40 = *(v0 + 320);
      v41 = *(v0 + 328);
      v25 = *(v0 + 488);
      v26 = *(v0 + 232);
      v27 = *(v0 + 216);
      v29 = *(v0 + 152);
      v28 = *(v0 + 160);
      v30 = *(v0 + 492);
      v31 = *(v0 + 144);
      v32 = swift_allocObject();
      *(v0 + 440) = v32;
      *(v32 + 16) = v30;
      *(v32 + 24) = v28;
      v33 = *(v0 + 32);
      *(v32 + 32) = *(v0 + 16);
      *(v32 + 48) = v33;
      v34 = *(v0 + 64);
      *(v32 + 64) = *(v0 + 48);
      *(v32 + 80) = v34;
      *(v32 + 96) = v29;
      *(v32 + 104) = v24;
      *(v32 + 112) = v31;
      *(v32 + 120) = 0;

      sub_10013EF38(v0 + 16, v0 + 80);
      v35 = swift_allocObject();
      *(v0 + 448) = v35;
      *(v35 + 16) = sub_10013EF0C;
      *(v35 + 24) = v32;

      v40(v26, v25, v27);
      v36 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

      v37 = swift_task_alloc();
      *(v0 + 456) = v37;
      *v37 = v0;
      v37[1] = sub_1001309E0;
      v38 = *(v0 + 304);
      v39 = *(v0 + 232);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v37, v39, sub_100027120, v35, &type metadata for () + 8);
    }
  }
}

uint64_t sub_100130498(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v7 = sub_100131524;
  }

  else
  {
    *(v4 + 408) = a1;
    v7 = sub_1001305C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001305C0()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  *(v0 + 416) = v1;
  v3 = *(v0 + 208);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "created a new progenitor key", v6, 2u);
  }

  v7 = *(v0 + 376);
  v8 = *(v0 + 264);
  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v11 = *(v0 + 192);

  (*(v10 + 8))(v9, v11);
  *(v0 + 424) = sub_10002E3C4(v7);
  *(v0 + 432) = v12;
  if (v2)
  {
    v13 = *(v0 + 376);
    v14 = *(v0 + 272);

    sub_10013EE48(v0 + 16);
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    v17 = *(v0 + 208);
    (*(*(v0 + 176) + 104))(*(v0 + 184), enum case for DIPError.Code.internalError(_:), *(v0 + 168));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(0, 0xF000000000000000);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 376);
    v36 = *(v0 + 320);
    v37 = *(v0 + 328);
    v35 = *(v0 + 488);
    v21 = *(v0 + 232);
    v22 = *(v0 + 216);
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 492);
    v26 = *(v0 + 144);
    v27 = swift_allocObject();
    *(v0 + 440) = v27;
    *(v27 + 16) = v25;
    *(v27 + 24) = v23;
    v28 = *(v0 + 32);
    *(v27 + 32) = *(v0 + 16);
    *(v27 + 48) = v28;
    v29 = *(v0 + 64);
    *(v27 + 64) = *(v0 + 48);
    *(v27 + 80) = v29;
    *(v27 + 96) = v24;
    *(v27 + 104) = v20;
    *(v27 + 112) = v26;
    *(v27 + 120) = v1;

    sub_10013EF38(v0 + 16, v0 + 80);
    v30 = swift_allocObject();
    *(v0 + 448) = v30;
    *(v30 + 16) = sub_10013EF0C;
    *(v30 + 24) = v27;

    v36(v21, v35, v22);
    v31 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v32 = swift_task_alloc();
    *(v0 + 456) = v32;
    *v32 = v0;
    v32[1] = sub_1001309E0;
    v33 = *(v0 + 304);
    v34 = *(v0 + 232);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v32, v34, sub_100027120, v30, &type metadata for () + 8);
  }
}

uint64_t sub_1001309E0()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(v2 + 464) = v0;

  v5 = *(v2 + 448);
  if (v0)
  {
    v6 = *(v2 + 360);
    (*(v2 + 352))(*(v2 + 232), *(v2 + 216));

    v7 = sub_100130D14;
  }

  else
  {
    v8 = *(v2 + 440);
    v10 = *(v2 + 352);
    v9 = *(v2 + 360);
    v11 = *(v2 + 232);
    v12 = *(v2 + 216);

    v10(v11, v12);
    v7 = sub_100130B5C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100130B5C()
{
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_100130C00;
  v2 = v0[34];
  v3 = v0[19];

  return sub_1001A02E0(v3, 0, 0xF000000000000000, 0, v2);
}

uint64_t sub_100130C00()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_1001316FC;
  }

  else
  {
    v3 = sub_100130F0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100130D14()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[47];
  v4 = v0[34];

  sub_10013EE48((v0 + 2));
  v5 = v0[58];
  v7 = v0[53];
  v6 = v0[54];
  v8 = v0[30];
  v11 = v0[29];
  v12 = v0[26];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(v7, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100130F0C()
{
  v1 = v0[52];
  v2 = v0[47];
  v3 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[26];
  v7 = v0[23];

  sub_10013EE48((v0 + 2));

  v8 = v0[1];
  v9 = v0[53];
  v10 = v0[54];

  return v8(v9, v10);
}

uint64_t sub_100130FD0()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[26];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(0, 0xF000000000000000);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10013118C()
{
  v1 = v0[34];

  sub_10013EE48((v0 + 2));
  v2 = v0[36];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[26];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(0, 0xF000000000000000);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100131358()
{
  v1 = v0[34];

  sub_10013EE48((v0 + 2));
  v2 = v0[48];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[26];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(0, 0xF000000000000000);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100131524()
{
  v1 = v0[47];
  v2 = v0[34];

  sub_10013EE48((v0 + 2));
  v3 = v0[50];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[26];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(0, 0xF000000000000000);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001316FC()
{
  v1 = v0[52];
  v2 = v0[47];
  v3 = v0[34];

  sub_10013EE48((v0 + 2));
  v4 = v0[60];
  v6 = v0[53];
  v5 = v0[54];
  v7 = v0[30];
  v10 = v0[29];
  v11 = v0[26];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(v6, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001318E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100131A30, 0, 0);
}

uint64_t sub_100131A30()
{
  v77 = v0;
  v1 = v0[6];
  v2 = sub_1001326E0(v0[3], v0[4], v0[5]);
  v4 = v3;
  type metadata accessor for SecAccessControl(0);
  v5 = static SecAccessControlRef.fromData(_:)();
  v6 = v0[15];
  v7 = v0[10];
  v8 = v0[11];
  v75 = v5;
  v9 = v0[6];
  defaultLogger()();
  v10 = swift_task_alloc();
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v75;
  Logger.cryptoParam(_:)();

  v11 = v7;
  v12 = *(v8 + 8);
  v12(v6, v11);
  v13 = *(v9 + 72);
  v74 = dispatch thunk of BiometricsHelper.requiresDoublePress.getter();
  if (v74 & 1) == 0 || (SecAccessControlRef.hasStockholmPolicy.getter() & 1) != 0 || (SecAccessControlRef.hasIDVPolicy.getter())
  {
    v14 = v0[12];
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No double press required", v17, 2u);
    }

    v18 = v0[12];
    v19 = v0[10];

    v12(v18, v19);
    sub_100009708(v2, v4);
    v20 = v75;
    v21 = v2;
    v22 = v4;
    goto LABEL_7;
  }

  v73 = v12;
  v40 = v0[14];
  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Double press required, updating ACL", v43, 2u);
  }

  v44 = v0[14];
  v45 = v0[10];
  v46 = v0[6];

  v73(v44, v45);
  v47 = v46[7];
  sub_100009278(v46 + 3, v46[6]);
  v48 = dispatch thunk of AppleIDVManaging.requireDoublePressOnACL(_:)();
  if (v49 >> 60 != 15)
  {
    v50 = v48;
    v51 = v49;
    sub_100009708(v48, v49);
    v52 = v51;
    v53 = static SecAccessControlRef.fromData(_:)();
    v54 = v0[13];
    sub_10001C120(v50, v52);
    v55 = v53;
    defaultLogger()();
    sub_100032EBC(v50, v52);
    v56 = v55;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    sub_10001C120(v50, v52);

    v59 = os_log_type_enabled(v57, v58);
    v60 = v0[10];
    v71 = v60;
    v72 = v0[13];
    v22 = v52;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v61 = 136315394;
      v62 = Data.base16EncodedString()();
      log = v57;
      v70 = v22;
      v63 = sub_10010150C(v62._countAndFlagsBits, v62._object, v76);

      *(v61 + 4) = v63;
      *(v61 + 12) = 2080;
      v64 = SecAccessControlRef.constraintsDescription.getter();
      v66 = v65;
      v68 = v58;
      v20 = v56;

      v67 = sub_10010150C(v64, v66, v76);
      v22 = v70;

      *(v61 + 14) = v67;
      v57 = log;
      _os_log_impl(&_mh_execute_header, log, v68, "setSESBackedGlobalAuthACL ACL with double press: %s = %s", v61, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v20 = v56;
    }

    v73(v72, v71);
    v21 = v50;
LABEL_7:
    v23 = v0[6];
    v24 = v23[7];
    sub_100009278(v23 + 3, v23[6]);
    v25 = v22;
    v26 = dispatch thunk of AppleIDVManaging.getUUIDsFromACL(_:)();
    v34 = v0[14];
    v33 = v0[15];
    v36 = v0[12];
    v35 = v0[13];
    v37 = v0[9];
    v38 = v0[2];
    *v38 = v74 & 1;
    *(v38 + 8) = v2;
    *(v38 + 16) = v4;
    *(v38 + 24) = v75;
    *(v38 + 32) = v21;
    *(v38 + 40) = v25;
    *(v38 + 48) = v20;
    *(v38 + 56) = v26;

    v39 = v0[1];
    goto LABEL_8;
  }

  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.appleIDVErrorRequireDoublePressOnACL(_:), v0[7]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1000092BC(v2, v4);

  v28 = v0[14];
  v27 = v0[15];
  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[9];

  v39 = v0[1];
LABEL_8:

  return v39();
}

uint64_t sub_100132138(uint64_t a1, char *a2)
{
  v4 = *(a1 + 64);
  result = sub_10013F468(0xD000000000000012, 0x80000001001B18B0, a2, v4);
  if (!v2)
  {
    return sub_10013F468(0xD00000000000001ELL, 0x80000001001B18D0, a2, v4);
  }

  return result;
}

void sub_1001321B4(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v54 = a3;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a4;
  if ((a1 & 1) == 0)
  {
    v29 = 0;
    v53 = 0xC000000000000000;
LABEL_7:
    type metadata accessor for StoredCryptoKey();
    v30 = *(a4 + 16);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext:v30];
    sub_10005FFF0(a5);
    type metadata accessor for StoredAuthACL();
    v33 = swift_getObjCClassFromMetadata();
    v34 = [objc_allocWithZone(v33) initWithContext:v30];
    [v34 setVersion:2];
    if (a6 < 0)
    {
      __break(1u);
    }

    else
    {
      v48 = ObjCClassFromMetadata;
      v35 = v32;
      [v34 setAclType:a6];
      v36 = String._bridgeToObjectiveC()();
      [v34 setIdentifier:v36];

      v49 = v29;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v34 setEncryptedACL:isa];

      if (v54[7])
      {
        v38 = v54[7];
      }

      else
      {
        v38 = _swiftEmptyArrayStorage;
      }

      v39 = v54[7];
      swift_bridgeObjectRetain_n();
      sub_10006055C(v38);
      if (v7)
      {

        sub_1000092BC(v49, v53);
      }

      else
      {
        v51 = a6;

        v40 = v35;
        [v34 setProgenitorKey:v35];
        v41 = v52;
        if (v52)
        {
          v42 = objc_allocWithZone(v48);

          v43 = [v42 initWithContext:v30];
          sub_10005FFF0(v41);
          v44 = [objc_allocWithZone(v33) initWithContext:v30];
          [v44 setVersion:2];
          [v44 setAclType:v51];
          v45 = String._bridgeToObjectiveC()();
          [v44 setIdentifier:v45];

          v46 = Data._bridgeToObjectiveC()().super.isa;
          [v44 setEncryptedACL:v46];

          sub_10006055C(v38);

          [v44 setProgenitorKey:v43];
        }

        else
        {
        }

        sub_100050240();
        sub_1000092BC(v49, v53);
      }
    }

    return;
  }

  v51 = a6;
  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v49 = a5;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v55 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10010150C(0xD00000000000003CLL, 0x80000001001BB100, &v55);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s keeping sidv acl", v21, 0xCu);
    sub_100005090(v22);

    a4 = v50;
  }

  (*(v14 + 8))(v17, v13);
  v23 = a2[7];
  sub_100009278(a2 + 3, a2[6]);
  v24 = v54[1];
  v25 = v54[2];
  v26 = *v54;
  v27 = dispatch thunk of AppleIDVManaging.persistACLBlob(_:requiresDoublePress:)();
  a6 = v51;
  if (!v7)
  {
    v29 = v27;
    v53 = v28;

    a5 = v49;
    goto LABEL_7;
  }
}

uint64_t sub_1001326E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v72 = a2;
  v71 = a1;
  v5 = type metadata accessor for DIPError.Code();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  __chkstk_darwin(v5);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnrolledBiometricType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v59 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004E70(&qword_100203AD8, &qword_1001AE448);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  v61 = sub_100004E70(&qword_100203AE0, &qword_1001AE450);
  v20 = *(*(v61 - 8) + 64);
  v21 = __chkstk_darwin(v61);
  v66 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v60 = &v58 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v58 - v26;
  __chkstk_darwin(v25);
  v29 = &v58 - v28;
  v30 = *(v3 + 72);
  dispatch thunk of BiometricsHelper.biometricType.getter();
  v62 = a3;
  v67 = v29;
  v68 = v11;
  if (a3 != 1)
  {
    v34 = 0;
    goto LABEL_11;
  }

  (*(v13 + 104))(v27, enum case for EnrolledBiometricType.touchID(_:), v12);
  (*(v13 + 56))(v27, 0, 1, v12);
  v31 = *(v16 + 48);
  sub_10013FBD0(v29, v19);
  sub_10013FBD0(v27, &v19[v31]);
  v32 = *(v13 + 48);
  if (v32(v19, 1, v12) != 1)
  {
    v35 = v60;
    sub_10013FBD0(v19, v60);
    if (v32(&v19[v31], 1, v12) != 1)
    {
      v36 = v59;
      (*(v13 + 32))(v59, &v19[v31], v12);
      sub_10013FC40(&qword_100203AE8, &type metadata accessor for EnrolledBiometricType);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v13 + 8);
      v38(v36, v12);
      sub_10000A0D4(v27, &qword_100203AE0, &qword_1001AE450);
      v38(v35, v12);
      v39 = v19;
      v34 = v37;
      sub_10000A0D4(v39, &qword_100203AE0, &qword_1001AE450);
      v11 = v68;
      goto LABEL_10;
    }

    sub_10000A0D4(v27, &qword_100203AE0, &qword_1001AE450);
    (*(v13 + 8))(v35, v12);
    v11 = v68;
    goto LABEL_8;
  }

  sub_10000A0D4(v27, &qword_100203AE0, &qword_1001AE450);
  v33 = v32(&v19[v31], 1, v12);
  v11 = v68;
  if (v33 != 1)
  {
LABEL_8:
    sub_10000A0D4(v19, &qword_100203AD8, &qword_1001AE448);
    v34 = 0;
    goto LABEL_10;
  }

  sub_10000A0D4(v19, &qword_100203AE0, &qword_1001AE450);
  v34 = 1;
LABEL_10:
  v29 = v67;
LABEL_11:
  v40 = v66;
  defaultLogger()();
  sub_10013FBD0(v29, v40);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v43 = 67109634;
    *(v43 + 4) = v34 & 1;
    *(v43 + 8) = 2080;
    v44 = DCCredentialAuthACLTypeToString();
    v45 = v34;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = sub_10010150C(v46, v48, &v74);

    *(v43 + 10) = v49;
    *(v43 + 18) = 2080;
    v50 = Optional.debugDescription.getter();
    v52 = v51;
    sub_10000A0D4(v40, &qword_100203AE0, &qword_1001AE450);
    v53 = sub_10010150C(v50, v52, &v74);
    v34 = v45;

    *(v43 + 20) = v53;
    _os_log_impl(&_mh_execute_header, v41, v42, "Calling migrateOACLOperation with shouldHaveOACL = %{BOOL}d, acl type = %s, biometric type = %s", v43, 0x1Cu);
    swift_arrayDestroy();
    v29 = v67;

    (*(v69 + 8))(v68, v70);
  }

  else
  {

    sub_10000A0D4(v40, &qword_100203AE0, &qword_1001AE450);
    (*(v69 + 8))(v11, v70);
  }

  v54 = v73;
  sub_10000A6EC(v71, v72, v34 & 1);
  v56 = v55;
  sub_10000A0D4(v29, &qword_100203AE0, &qword_1001AE450);
  if (v54)
  {
    (*(v63 + 104))(v65, enum case for DIPError.Code.internalError(_:), v64);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v56;
}

uint64_t sub_100132F40()
{
  _StringGuts.grow(_:)(54);
  v0._object = 0x80000001001BB240;
  v0._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 2112800;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = SecAccessControlRef.constraintsDescription.getter();
  String.append(_:)(v3);

  return 0;
}

uint64_t sub_100133008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v10 = *(v9 + 64) + 15;
  v7[26] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v7[27] = v11;
  v12 = *(v11 - 8);
  v7[28] = v12;
  v13 = *(v12 + 64) + 15;
  v7[29] = swift_task_alloc();
  v14 = swift_task_alloc();
  v7[30] = v14;
  *v14 = v7;
  v14[1] = sub_100133174;

  return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
}

uint64_t sub_100133174(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v5 = *v2;
  *(*v2 + 248) = a1;

  if (v1)
  {
    v6 = *(v3 + 232);
    v7 = *(v3 + 208);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_1001332D0, 0, 0);
  }
}

uint64_t sub_1001332D0()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = [*(v0 + 248) aclType];

    v3 = swift_task_alloc();
    *(v0 + 256) = v3;
    *v3 = v0;
    v3[1] = sub_100133500;
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 152);

    return sub_1001318E8(v0 + 16, v4, v5, v2);
  }

  else
  {
    (*(*(v0 + 224) + 104))(*(v0 + 232), enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), *(v0 + 216));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v8 = *(v0 + 232);
    v9 = *(v0 + 208);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100133500()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 232);
    v6 = *(v2 + 208);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_100133658, 0, 0);
  }
}

uint64_t sub_100133658()
{
  v1 = *(*(v0[19] + 64) + 16);
  v0[33] = v1;

  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_10013370C;
  v3 = v0[18];

  return sub_10019F998(v3, v1);
}

uint64_t sub_10013370C()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_100133E34;
  }

  else
  {
    v3 = sub_100133820;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100133820()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v18 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v4;
  *(v9 + 56) = v3;
  v10 = *(v0 + 32);
  *(v9 + 64) = *(v0 + 16);
  *(v9 + 80) = v10;
  v11 = *(v0 + 64);
  *(v9 + 96) = *(v0 + 48);
  *(v9 + 112) = v11;

  sub_100009708(v6, v5);
  sub_100009708(v4, v3);
  sub_10013EF38(v0 + 16, v0 + 80);
  v12 = *(v8 + 16);
  v13 = swift_allocObject();
  *(v0 + 296) = v13;
  *(v13 + 16) = sub_100141608;
  *(v13 + 24) = v9;
  (*(v1 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v18);
  v14 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v15 = swift_task_alloc();
  *(v0 + 304) = v15;
  *v15 = v0;
  v15[1] = sub_1001339E0;
  v16 = *(v0 + 208);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v15, v16, sub_100027120, v13, &type metadata for () + 8);
}

uint64_t sub_1001339E0()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  v2[39] = v0;

  v5 = v2[37];
  if (v0)
  {
    (*(v2[25] + 8))(v2[26], v2[24]);

    v6 = sub_100133D24;
  }

  else
  {
    v7 = v2[36];
    v9 = v2[25];
    v8 = v2[26];
    v10 = v2[24];

    (*(v9 + 8))(v8, v10);
    v6 = sub_100133B6C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100133B6C()
{
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = sub_100133C10;
  v2 = v0[33];
  v3 = v0[18];

  return sub_1001A02E0(v3, 0, 0xF000000000000000, 0, v2);
}

uint64_t sub_100133C10()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_100133EB4;
  }

  else
  {
    v3 = sub_100133DB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100133D24()
{
  v1 = v0[36];
  v2 = v0[33];

  sub_10013EE48((v0 + 2));

  v3 = v0[39];
  v4 = v0[29];
  v5 = v0[26];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100133DB0()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[26];

  sub_10013EE48((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_100133E34()
{
  v1 = v0[33];

  sub_10013EE48((v0 + 2));
  v2 = v0[35];
  v3 = v0[29];
  v4 = v0[26];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100133EB4()
{
  v1 = v0[33];

  sub_10013EE48((v0 + 2));
  v2 = v0[41];
  v3 = v0[29];
  v4 = v0[26];

  v5 = v0[1];

  return v5();
}

void sub_100133F34(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a7;
  v56 = a5;
  v57 = a6;
  v52 = a3;
  v53 = a4;
  v54 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = type metadata accessor for DIPError.Code();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v7)
  {
    v23 = v22;
    v49 = v18;
    v50 = v17;
    v44 = v14;
    v46 = v10;
    v47 = a1;
    v48 = v9;
    v24 = v55;
    v25 = v56;
    v26 = v57;
    v51 = v21;
    if (!v22)
    {
      (*(v49 + 104))(v51, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v50);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    v45 = 0;
    v27 = [v22 version];
    if (v27 == 1)
    {
      v34 = v45;
      sub_1001346D0(v23, v52, v53, v47, v25);
      if (!v34)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v27 != 2)
      {
        (*(v49 + 104))(v51, enum case for DIPError.Code.idcsInvalidACLVersionStored(_:), v50);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return;
      }

      v28 = v24;
      defaultLogger()();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Updating global progenitor key", v31, 2u);
        v28 = v24;
      }

      (*(v46 + 8))(v16, v48);
      v32 = v28[6];
      v33 = v45;
      sub_10013FE5C(v23, v32, v28[4], v28[5], v25, v26);
      if (!v33)
      {
        sub_100134E84(v32, v47, v25, v26);
LABEL_11:
        v35 = sub_1000508BC(0xD00000000000001ELL, 0x80000001001B18D0);
        v36 = v48;
        if (v35)
        {
          v53 = v23;
          v37 = v35;
          if ([v35 version] != 2)
          {
            (*(v49 + 104))(v51, enum case for DIPError.Code.idcsInvalidACLVersionStored(_:), v50);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            return;
          }

          v52 = v37;
          v38 = v44;
          defaultLogger()();
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v39, v40, "Updating global third party progenitor key", v41, 2u);
            v36 = v48;
          }

          (*(v46 + 8))(v38, v36);
          v42 = v52;
          sub_10013FE5C(v52, *(v24 + 24), *(v24 + 8), *(v24 + 16), v25, v26);

          v23 = v53;
        }

        sub_100050240();
      }
    }
  }
}

uint64_t sub_1001346D0(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a5;
  v66 = a2;
  v67 = a3;
  v69 = type metadata accessor for DIPError.Code();
  v9 = *(v69 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v69);
  v68 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 encryptedACL];
  if (!v17)
  {
    goto LABEL_6;
  }

  v65 = v6;
  v62 = v13;
  v63 = v12;
  v18 = v17;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = [a1 identifier];
  if (!v22)
  {
    sub_1000092BC(v19, v21);
LABEL_6:
    v35 = v68;
    v32 = v69;
    (*(v9 + 104))(v68, enum case for DIPError.Code.invalidStoredData(_:), v69);
    sub_10002688C(_swiftEmptyArrayStorage);
    v34 = v9;
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    v36 = swift_allocError();
    v33 = v35;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v70 = v36;
    swift_willThrow();
    goto LABEL_7;
  }

  v59 = v16;
  v61 = a4;
  v64 = v9;
  v23 = v22;
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  v26 = [a1 aclType];
  v27 = v5[7];
  sub_100009278(v5 + 3, v5[6]);
  v28 = v65;
  v29 = dispatch thunk of AppleIDVManaging.persistModifiedACLBlob(_:referenceACLBlob:externalizedLAContext:)();
  v70 = v28;
  if (v28)
  {

    sub_1000092BC(v19, v21);
    v33 = v68;
    v32 = v69;
    v34 = v64;
LABEL_7:
    (*(v34 + 104))(v33, enum case for DIPError.Code.internalError(_:), v32);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v56 = v26;
  v57 = v31;
  v38 = v29;
  v66 = v21;
  v67 = v30;
  v58 = v23;
  v65 = v19;
  sub_100051424(v60, v25);
  v70 = 0;

  v39 = v59;
  defaultLogger()();
  v40 = v38;
  v41 = v67;
  sub_100009708(v38, v67);
  v42 = v57;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  sub_1000092BC(v40, v41);

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v71 = v46;
    *v45 = 136315138;
    v47 = Data.base64EncodedString(options:)(0);
    v48 = sub_10010150C(v47._countAndFlagsBits, v47._object, &v71);

    *(v45 + 4) = v48;
    v41 = v67;
    _os_log_impl(&_mh_execute_header, v43, v44, "Modified ACL: %s", v45, 0xCu);
    sub_100005090(v46);

    (*(v62 + 8))(v59, v63);
  }

  else
  {

    (*(v62 + 8))(v39, v63);
  }

  v49 = v56;
  type metadata accessor for StoredAuthACL();
  v50 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v61 + 16)];
  sub_100009708(v40, v41);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000092BC(v40, v41);
  [v50 setEncryptedACL:isa];

  [v50 setAclType:v49];
  v52 = v58;
  [v50 setIdentifier:v58];

  sub_100009708(v40, v41);

  sub_1000092BC(v40, v41);
  if (v42)
  {
    v53 = v42;
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
  }

  v54 = v70;
  sub_10006055C(v53);
  if (v54)
  {
    sub_1000092BC(v65, v66);
    sub_1000092BC(v40, v41);

    v70 = v54;
    v34 = v64;
    v33 = v68;
    v32 = v69;
    goto LABEL_7;
  }

  sub_1000092BC(v65, v66);
  sub_1000092BC(v40, v41);
}

void sub_100134E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a3;
  v87 = a4;
  v85 = a1;
  v5 = type metadata accessor for DIPError.Code();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  __chkstk_darwin(v5);
  v80 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CredentialKeyType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Logger();
  v13 = *(v91 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v91);
  v89 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v88 = &v69 - v18;
  __chkstk_darwin(v17);
  v20 = &v69 - v19;
  v21 = [objc_opt_self() standardUserDefaults];
  v22._countAndFlagsBits = 0xD000000000000031;
  v22._object = 0x80000001001BB930;
  v23 = NSUserDefaults.internalBool(forKey:)(v22);

  if (v23)
  {
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Skipping ACL update to presentment keys due to internal defaults setting", v26, 2u);
    }

    (*(v13 + 8))(v20, v91);
  }

  else
  {
    (*(v9 + 104))(v12, enum case for CredentialKeyType.ses(_:), v8);
    v27 = sub_100055D40(v12, 2);
    if (v4)
    {
      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v28 = v27;
      (*(v9 + 8))(v12, v8);
      if (v28 >> 62)
      {
        goto LABEL_31;
      }

      for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v31 = 0;
        v75 = v28 & 0xFFFFFFFFFFFFFF8;
        v76 = v28 & 0xC000000000000001;
        v73 = (v13 + 8);
        *&v29 = 136315138;
        v71 = v29;
        v74 = v28;
        v72 = i;
        while (1)
        {
          if (v76)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= *(v75 + 16))
            {
              goto LABEL_30;
            }

            v32 = *(v28 + 8 * v31 + 32);
          }

          v33 = v32;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          v34 = [v32 identifier];
          if (!v34)
          {
            v68 = v33;
LABEL_28:

            (*(v78 + 104))(v80, enum case for DIPError.Code.invalidStoredData(_:), v79);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            return;
          }

          v35 = v34;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = [v33 keyBlob];
          if (!v38)
          {
            v68 = v33;

            goto LABEL_28;
          }

          v39 = v38;
          v81 = v31 + 1;
          v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          v43 = *(v90 + 64);
          v44 = sub_10002BD74(v13, v37, v40, v42, 0, 0xF000000000000000);
          v83 = v40;
          v84 = v42;
          v82 = v44;
          v45 = v44 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob;
          v46 = *(v44 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob);
          v47 = *(v45 + 8);
          v48 = *(v43 + 16);
          v49 = dispatch thunk of SESKeystore.getACLConstraints(of:)();
          v51 = v50;
          type metadata accessor for SecAccessControl(0);
          v52 = static SecAccessControlRef.fromConstraintsData(_:)();
          sub_1000092BC(v49, v51);
          v77 = v52;
          if (SecAccessControlRef.isOSGNChild.getter())
          {
            v53 = v88;
            defaultLogger()();

            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v92 = v57;
              *v56 = v71;
              v13 = sub_10010150C(v13, v37, &v92);

              *(v56 + 4) = v13;
              _os_log_impl(&_mh_execute_header, v54, v55, "Presentment key %s is a child key; skipping ACL change", v56, 0xCu);
              sub_100005090(v57);

              sub_1000092BC(v83, v84);

              (*v73)(v88, v91);
            }

            else
            {

              sub_1000092BC(v83, v84);

              (*v73)(v53, v91);
            }
          }

          else
          {
            v58 = v89;
            defaultLogger()();

            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v70 = v33;
              v63 = v62;
              v92 = v62;
              *v61 = v71;
              v64 = sub_10010150C(v13, v37, &v92);

              *(v61 + 4) = v64;
              _os_log_impl(&_mh_execute_header, v59, v60, "Updating ACL for presentment key %s", v61, 0xCu);
              sub_100005090(v63);
              v33 = v70;

              (*v73)(v89, v91);
            }

            else
            {

              (*v73)(v58, v91);
            }

            v65 = v84;
            v13 = v82;
            v66 = sub_10002C42C(v82, v85, v86, v87);
            v67 = v83;
            sub_10005F7F4(v66);

            sub_1000092BC(v67, v65);
          }

          v28 = v74;
          ++v31;
          if (v81 == v72)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        ;
      }

LABEL_32:
    }
  }
}

uint64_t sub_100135A60()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100135B20, 0, 0);
}

uint64_t sub_100135B20()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking global auth oacl for migration", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(*(v8 + 16) + 16);
  v10 = swift_allocObject();
  v0[6] = v10;
  *(v10 + 16) = sub_100141018;
  *(v10 + 24) = v8;
  v11 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
  swift_retain_n();
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_100135CC4;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_100135CC4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100135DEC;
  }

  else
  {
    v5 = *(v2 + 48);
    v6 = *(v2 + 16);

    v4 = sub_1000145A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100135DEC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

void sub_100135E64(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v4 = type metadata accessor for Logger();
  v91 = *(v4 - 8);
  v5 = *(v91 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v80 - v10;
  __chkstk_darwin(v9);
  v13 = &v80 - v12;
  v14 = type metadata accessor for DIPError.Code();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (v2)
  {
    return;
  }

  v89 = v14;
  v90 = v15;
  v20 = v92;
  v86 = a1;
  v87 = v4;
  if (!v19)
  {
    (v90)[13](v18, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v89);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v85 = 0;
  v88 = v19;
  v21 = [v19 version];
  v22 = v90;
  if (v21 == 1)
  {
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Global auth acl is v1, no migration necessary", v41, 2u);
    }

    (*(v91 + 8))(v13, v87);
    goto LABEL_14;
  }

  if (v21 != 2)
  {
    (v90)[13](v18, enum case for DIPError.Code.idcsInvalidACLVersionStored(_:), v89);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_19:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v42 = v88;
LABEL_20:

    return;
  }

  v23 = [v88 progenitorKey];
  v24 = v89;
  if (!v23)
  {
LABEL_18:
    (v22)[13](v18, enum case for DIPError.Code.idcsMissingProgenitorKeyFromACL(_:), v24);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_19;
  }

  v25 = v23;
  v26 = [v23 identifier];
  if (!v26)
  {

    goto LABEL_18;
  }

  v27 = v26;
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = [v25 keyBlob];
  if (!v30)
  {

    v22 = v90;
    goto LABEL_18;
  }

  v31 = v30;
  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v33;
  v82 = v32;

  v34 = *(v20 + 64);
  v80 = v25;
  v35 = [v25 publicKeyIdentifier];
  if (v35)
  {
    v36 = v35;
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v38;
  }

  else
  {
    v37 = 0;
    v84 = 0xF000000000000000;
  }

  v43 = v82;
  v44 = v81;
  v45 = v37;
  v46 = v85;
  v47 = sub_10002DA84(v83, v29, v82, v81, v37, v84);
  v85 = v46;
  if (v46)
  {
    sub_10001C120(v37, v84);
    sub_1000092BC(v43, v44);

    return;
  }

  v48 = v47;
  sub_10001C120(v45, v84);
  v49 = *(v48 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob);
  v50 = *(v48 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob + 8);
  v51 = v85;
  v52 = sub_10002B1A4();
  if (v51)
  {

    (v90)[13](v18, enum case for DIPError.Code.internalError(_:), v89);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v82, v81);

    v42 = v80;
    goto LABEL_20;
  }

  v89 = v34;
  v90 = v52;
  v53 = SecAccessControlRef.data.getter();
  v55 = v54;
  v56 = [v88 aclType];
  if (v56 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v92 = sub_1001326E0(v53, v55, v56);
  v58 = v57;
  if ((sub_1000EBB34(v92, v57, v53, v55) & 1) == 0)
  {
    v84 = v55;
    v64 = v8;
    defaultLogger()();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Global auth acl requires migration", v67, 2u);
    }

    (*(v91 + 8))(v64, v87);
    v68 = [objc_allocWithZone(LAContext) init];
    sub_10000BD0C(v68);
    type metadata accessor for SecAccessControl(0);
    v70 = static SecAccessControlRef.fromData(_:)();
    v91 = v58;
    v71 = v48;
    v72 = [v68 externalizedContext];
    if (v72)
    {
      v73 = v72;

      v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = sub_10002EA64(v71, v70, v74, v76);
      v85 = 0;
      v78 = v77;
      sub_1000092BC(v74, v76);
      v79 = v80;
      sub_10005FFF0(v78);

      sub_1000092BC(v92, v91);
      sub_1000092BC(v53, v84);

      sub_1000092BC(v82, v81);
LABEL_14:
      sub_100050240();

      return;
    }

LABEL_39:
    __break(1u);
    return;
  }

  defaultLogger()();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Global auth acl already migrated, nothing to do", v61, 2u);
    v62 = v90;

    sub_1000092BC(v82, v81);
    sub_1000092BC(v92, v58);
    sub_1000092BC(v53, v55);
  }

  else
  {

    sub_1000092BC(v82, v81);
    sub_1000092BC(v92, v58);
    sub_1000092BC(v53, v55);
    v62 = v90;
  }

  v63 = v91;
  v69 = v87;

  (*(v63 + 8))(v11, v69);
}

uint64_t sub_100136AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100136BB0, 0, 0);
}

uint64_t sub_100136BB0()
{
  v1 = *(*(v0[4] + 64) + 16);
  v0[8] = v1;

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100136C64;
  v3 = v0[3];

  return sub_10019F998(v3, v1);
}

uint64_t sub_100136C64()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100137168;
  }

  else
  {
    v3 = sub_100136D78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100136D78()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v14 = *(v5 + 16);
  v7 = swift_allocObject();
  v0[12] = v7;
  *(v7 + 16) = sub_100141410;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v2 + 104);

  v9(v1, v8, v3);
  v10 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_100136F00;
  v12 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 15, v12, sub_10014142C, v7, &type metadata for Bool);
}

uint64_t sub_100136F00()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v13 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    (*(*(v2 + 48) + 8))(*(v2 + 56), *(v2 + 40));

    v5 = sub_1001370F0;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);
    v9 = *(v2 + 48);
    v8 = *(v2 + 56);
    v10 = *(v2 + 40);
    v11 = *(v2 + 16);

    (*(v9 + 8))(v8, v10);
    *v11 = *(v2 + 120);
    v5 = sub_100137084;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100137084()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001370F0()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[14];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100137168()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001371D4@<X0>(char *a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = sub_1001373BC();
  v6 = sub_10013F468(0xD000000000000012, 0x80000001001B18B0, a1, v5);

  if (!v2)
  {
    v8 = sub_1001373BC();
    sub_10013F468(0xD00000000000001ELL, 0x80000001001B18D0, a1, v8);

    result = sub_100051CD4();
    v9 = result;
    v17 = a2;
    if (result >> 62)
    {
      goto LABEL_15;
    }

    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      do
      {
        if (v10 < 1)
        {
          __break(1u);
          return result;
        }

        v11 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = [v12 options];
          if (!v14)
          {
            goto LABEL_6;
          }

          v15 = v14;
          v16 = [v14 presentmentAuthPolicy];

          if ((v16 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v16 == 2)
          {
            [v13 setState:0];
          }

LABEL_6:
          ++v11;

          if (v10 == v11)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_15:
        result = _CocoaArrayWrapper.endIndex.getter();
        v10 = result;
      }

      while (result);
    }

LABEL_16:

    result = sub_100050240();
    *v17 = v6 & 1;
  }

  return result;
}

void *sub_1001373BC()
{
  v0 = type metadata accessor for SESKeystore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = SESKeystore.init()();
  v4 = type metadata accessor for SEPairingManager();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = SEPairingManager.init()();
  v8 = type metadata accessor for GenericPasswordKeychainWrapper();
  v27 = v8;
  v28 = &off_1001F4DE8;
  v26[0] = swift_allocObject();
  v9 = type metadata accessor for SyncableKeyStoreProvider();
  v10 = swift_allocObject();
  v11 = sub_1000129AC(v26, v8);
  v12 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v10[5] = v8;
  v10[6] = &off_1001F4DE8;
  v10[2] = v16;

  sub_100005090(v26);
  v27 = v9;
  v28 = &off_1001F5068;
  v26[0] = v10;
  type metadata accessor for CredentialKeyManager();
  v17 = swift_allocObject();
  v18 = sub_1000129AC(v26, v9);
  v19 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v26[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_1000F20BC(v3, v7, *v21, v17);

  sub_100005090(v26);
  return v23;
}

uint64_t sub_100137614(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001376D8, 0, 0);
}

uint64_t sub_1001376D8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = sub_10013FCC8;
  *(v7 + 24) = v5;
  v8 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = sub_100004E70(&qword_100203AF0, &qword_1001AE460);
  *v9 = v0;
  v9[1] = sub_100137830;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100141890, v7, v10);
}

uint64_t sub_100137830()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100137998, 0, 0);
  }

  else
  {
    v4 = v3[9];
    v5 = v3[10];
    v6 = v3[8];

    v7 = v3[2];

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_100137998()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100137B2C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100137BF0, 0, 0);
}

uint64_t sub_100137BF0()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = *(v0[7] + 16);
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 16);
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = sub_10013E4A4;
  *(v6 + 24) = v4;
  v7 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = sub_100004E70(&qword_100203AC0, &qword_1001AE3F0);
  *v8 = v0;
  v8[1] = sub_100137D3C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_1000DCAB0, v6, v9);
}

uint64_t sub_100137D3C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_100137EE0;
  }

  else
  {
    v6 = *(v2 + 88);
    v5 = *(v2 + 96);

    v4 = sub_100137E60;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100137E60()
{
  v1 = v0[10];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];

  v5 = v0[1];

  return v5(v3, v2, v4);
}

uint64_t sub_100137EE0()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

void sub_10013807C(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v75 = a3;
  v73 = a4;
  v6 = type metadata accessor for DIPError.Code();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin(v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v70 - v16;
  __chkstk_darwin(v15);
  v19 = &v70 - v18;
  v20 = v76;
  v21 = sub_1000508BC(a1, a2);
  if (!v20)
  {
    v22 = v14;
    v23 = v74;
    v24 = v75;
    v76 = 0;
    if (v21)
    {
      v71 = v21;
      v25 = [v21 version];
      if (v25 == 1)
      {
        v36 = v17;
        defaultLogger()();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        v39 = os_log_type_enabled(v37, v38);
        v40 = v73;
        if (v39)
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "v1 acl", v41, 2u);
        }

        (*(v23 + 8))(v36, v10);
        v42 = v71;
        v43 = [v42 encryptedACL];
        if (!v43)
        {

          *v40 = 0;
          return;
        }

        v44 = v43;
        v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = [v42 aclType];
        if ((v48 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        v49 = v24[7];
        sub_100009278(v24 + 3, v24[6]);
        sub_100009708(v45, v47);
        v50 = v76;
        v51 = dispatch thunk of AppleIDVManaging.recoverPersistedACLBlob(from:)();
        if (v50)
        {
          sub_1000092BC(v45, v47);
          sub_1000092BC(v45, v47);
        }

        else
        {
          v56 = v51;
          v57 = v52;
          v58 = objc_allocWithZone(DCCredentialAuthACL);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v60 = [v58 initWithData:isa type:v48];

          sub_1000092BC(v56, v57);
          sub_1000092BC(v45, v47);
          sub_1000092BC(v45, v47);
          *v73 = v60;
        }
      }

      else
      {
        if (v25 == 2)
        {
          defaultLogger()();
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "v2 acl", v28, 2u);
          }

          (*(v23 + 8))(v19, v10);
          v29 = v24[8];
          v30 = v76;
          v31 = sub_10013EB24(v71);
          if (v30)
          {

            return;
          }

          v53 = v31 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob;
          v54 = *(v31 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob);
          v55 = *(v53 + 8);
          v61 = sub_10002B1A4();
          v62 = SecAccessControlRef.data.getter();
          v64 = v63;

          v65 = [v71 aclType];
          if ((v65 & 0x8000000000000000) == 0)
          {
            v66 = v65;
            v67 = objc_allocWithZone(DCCredentialAuthACL);
            v68 = Data._bridgeToObjectiveC()().super.isa;
            v69 = [v67 initWithData:v68 type:v66];

            sub_1000092BC(v62, v64);

            *v73 = v69;
            return;
          }

          goto LABEL_26;
        }

        (*(v72 + 104))(v9, enum case for DIPError.Code.idcsInvalidACLVersionStored(_:), v6);
        sub_10002688C(&_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      v32 = v22;
      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "no acl", v35, 2u);
      }

      (*(v23 + 8))(v32, v10);
      *v73 = 0;
    }
  }
}

void sub_1001388A4(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_1000508BC(a1, a2);
  if (!v3)
  {
    if (v5)
    {
      v6 = v5;
      v7 = [v6 encryptedACL];
      if (!v7)
      {

        v9 = 0;
        v12 = 0;
        v11 = 0xF000000000000000;
        goto LABEL_8;
      }

      v8 = v7;
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [v6 aclType];
      if ((v12 & 0x8000000000000000) == 0)
      {
LABEL_8:
        *a3 = v9;
        a3[1] = v11;
        a3[2] = v12;
        return;
      }

      __break(1u);
    }

    v9 = 0;
    v12 = 0;
    v11 = 0xF000000000000000;
    goto LABEL_8;
  }
}

uint64_t sub_100138978(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100138AA4, 0, 0);
}

uint64_t sub_100138AA4()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  v0[15] = v2;
  v3 = *(v2 + 16);
  v4 = swift_allocObject();
  v0[16] = v4;
  *(v4 + 16) = sub_100140E80;
  *(v4 + 24) = v1;
  v5 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  swift_retain_n();
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_100138BB4;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100140EA4, v4, &type metadata for Int);
}

uint64_t sub_100138BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100138F20;
  }

  else
  {
    v5 = v2[16];
    v6 = v2[7];

    v2[19] = v2[2];
    v4 = sub_100138CE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100138CE4()
{
  v1 = v0[7];
  v2 = *(v0[15] + 16);
  v3 = swift_allocObject();
  v0[20] = v3;
  *(v3 + 16) = sub_100140EBC;
  *(v3 + 24) = v1;
  v4 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  swift_retain_n();
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_100138DF0;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 3, sub_100141890, v3, &type metadata for Int);
}

uint64_t sub_100138DF0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1001392E8;
  }

  else
  {
    v5 = v2[20];
    v6 = v2[7];

    v2[23] = v2[3];
    v4 = sub_1001390D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100138F20()
{
  v1 = v0[16];
  v2 = v0[7];

  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[14];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001390D8()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = v0[19];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchCredentialUUIDsForAuthACL: active bound credentials = %ld, incomplete credentials = %ld", v6, 0x16u);
  }

  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[11];
  v10 = v0[12];
  v12 = v0[5];
  v11 = v0[6];

  v13 = *(v10 + 8);
  v0[24] = v13;
  v0[25] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v7, v9);
  v14 = swift_allocObject();
  v0[26] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  v15 = *(v8 + 16);
  v16 = swift_allocObject();
  v0[27] = v16;
  *(v16 + 16) = sub_100140EE0;
  *(v16 + 24) = v14;
  v17 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v18 = swift_task_alloc();
  v0[28] = v18;
  v19 = sub_100004E70(&qword_100203AF8, &qword_1001AE498);
  *v18 = v0;
  v18[1] = sub_1001394A0;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 4, sub_100141890, v16, v19);
}

uint64_t sub_1001392E8()
{
  v1 = v0[20];
  v2 = v0[7];

  v3 = v0[22];
  v4 = v0[13];
  v5 = v0[14];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001394A0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v8 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_100139710;
  }

  else
  {
    v5 = v2[26];
    v6 = v2[27];

    v2[30] = v2[4];
    v4 = sub_1001395CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001395CC()
{
  v1 = v0[30];
  if (v1)
  {
    if (v1[2])
    {
      goto LABEL_7;
    }

    v2 = v0[30];
  }

  v3 = v0[13];
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "fetchCredentialUUIDsForAuthACL: No UUIDs to return", v6, 2u);
  }

  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[13];
  v10 = v0[11];

  v8(v9, v10);
  v1 = &_swiftEmptyArrayStorage;
LABEL_7:
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[10];

  v14 = v0[1];
  v15 = v0[23];
  v16 = v0[19];

  return v14(v1, v16, v15);
}

uint64_t sub_100139710()
{
  v1 = v0[26];
  v2 = v0[27];

  v3 = v0[29];
  v4 = v0[13];
  v5 = v0[14];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001398C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_100112AE4(a2);
  v7 = sub_100140CAC(a1, v6);

  if (!v3)
  {
    v9 = *(v7 + 2);

    *a3 = v9;
  }

  return result;
}

void sub_100139938(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v7 = sub_100004E70(&qword_100203B00, &qword_1001AE4A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000508BC(a1, a2);
  if (v3)
  {
    return;
  }

  v34 = v15;
  if (!v16)
  {
LABEL_16:
    *a3 = 0;
    return;
  }

  v17 = v16;
  v18 = sub_1000607CC();

  if (!v18)
  {

    goto LABEL_16;
  }

  v30 = v17;
  v31 = a3;
  v37 = v18[2];
  if (v37)
  {
    v19 = 0;
    v33 = v12;
    v35 = (v12 + 32);
    v36 = (v12 + 48);
    v20 = v18 + 5;
    v21 = &_swiftEmptyArrayStorage;
    v22 = v34;
    v32 = v18;
    while (v19 < v18[2])
    {
      v24 = *(v20 - 1);
      v23 = *v20;

      UUID.init(uuidString:)();

      if ((*v36)(v10, 1, v11) == 1)
      {
        sub_10000A0D4(v10, &qword_100203B00, &qword_1001AE4A0);
      }

      else
      {
        v25 = *v35;
        (*v35)(v22, v10, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10010115C(0, v21[2] + 1, 1, v21);
        }

        v27 = v21[2];
        v26 = v21[3];
        if (v27 >= v26 >> 1)
        {
          v21 = sub_10010115C(v26 > 1, v27 + 1, 1, v21);
        }

        v21[2] = v27 + 1;
        v28 = v21 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27;
        v22 = v34;
        v25(v28, v34, v11);
        v18 = v32;
      }

      ++v19;
      v20 += 2;
      if (v37 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_18:

    *v31 = v21;
  }
}

void sub_100139C54(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = sub_10005AAEC();
  if (v3)
  {
    return;
  }

  v14 = v13;
  v30 = 0;
  v15 = [v12 credentialIdentifier];
  if (!v15)
  {
LABEL_8:

    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v16 = v15;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v14 options];
  v20 = [v19 presentmentAuthPolicy];

  if (v20 != 2 || !sub_1000A1058([v14 credentialState], a2))
  {

    goto LABEL_8;
  }

  defaultLogger()();
  v21 = v18;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v28 = v22;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315138;
    HIDWORD(v27) = v23;
    v26 = v29;
    *(v24 + 4) = sub_10010150C(v29, v18, &v31);
    _os_log_impl(&_mh_execute_header, v28, BYTE4(v27), "fetchBoundCredentials: credential identifier %s", v24, 0xCu);
    sub_100005090(v25);

    v21 = v18;

    (*(v8 + 8))(v11, v7);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v26 = v29;
  }

  *a3 = v26;
  a3[1] = v21;
}

unint64_t sub_100139F0C()
{
  type metadata accessor for SecAccessControl(0);
  v0 = static SecAccessControlRef.fromData(_:)();
  _StringGuts.grow(_:)(24);

  if (v0)
  {
    v1 = v0;
    v2 = SecAccessControlRef.constraintsDescription.getter();
    v4 = v3;
  }

  else
  {
    v4 = 0xE500000000000000;
    v2 = 0x3E6C696E3CLL;
  }

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD000000000000016;
}