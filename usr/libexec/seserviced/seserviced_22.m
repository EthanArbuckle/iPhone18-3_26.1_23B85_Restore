unint64_t *sub_1001C4480(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1001C451C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_1001C451C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v28 = a3;
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
    v14 = (*(v28 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_1000754F0(*(v28 + 56) + 32 * v13, v27);
    v25[0] = v15;
    v25[1] = v16;
    v17 = sub_1000754F0(v27, &v26);
    v24[0] = v15;
    v24[1] = v16;
    __chkstk_darwin(v17);
    v19[2] = v24;
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = sub_1002F784C(sub_10012E558, v19, v23);
    sub_100075768(v25, &qword_100505FD8, &unk_10040DE10);
    sub_1000752F4(v27);

    if (v15)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_100332734(v21, v20, v22, v28);
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
      return sub_100332734(v21, v20, v22, v28);
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

unint64_t *sub_1001C4704(uint64_t a1, uint64_t a2)
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

      v10 = sub_1001C4480(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1001C451C((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1001C48C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKExpress.ExpressKey();
    sub_1001C5000(&qword_100503638, type metadata accessor for DSKExpress.ExpressKey);
    v4 = v3;
    v7 = a3;
    Set.Iterator.init(_cocoa:)();
    v6 = v71[2];
    v8 = v71[3];
    v9 = v71[4];
    v10 = v71[5];
    v11 = v71[6];
  }

  else
  {
    v7 = a3;
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (a2)
  {
    v16 = 0;
  }

  else
  {
    v16 = v7 == 0xC000000000000000;
  }

  v17 = !v16;
  v65 = v17;
  v68 = v7 >> 62;
  v18 = __OFSUB__(HIDWORD(a2), a2);
  v61 = v18;
  v60 = HIDWORD(a2) - a2;
  v64 = BYTE6(v7);
  v62 = _swiftEmptyArrayStorage;
  v66 = a2;
  v67 = v6;
  while (1)
  {
    v19 = v11;
    if (v6 < 0)
    {
      v23 = __CocoaSet.Iterator.next()();
      if (!v23 || (v70 = v23, type metadata accessor for DSKExpress.ExpressKey(), swift_dynamicCast(), v22 = v71[0], v69 = v19, v6 = v67, !v71[0]))
      {
LABEL_84:
        sub_100093854();
        return v62;
      }
    }

    else
    {
      v20 = v10;
      v21 = v11;
      if (!v11)
      {
        while (1)
        {
          v10 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v10 >= v15)
          {
            goto LABEL_84;
          }

          v21 = *(v8 + 8 * v10);
          ++v20;
          if (v21)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
      }

LABEL_24:
      v69 = (v21 - 1) & v21;
      v22 = *(*(v6 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v21)))));

      if (!v22)
      {
        goto LABEL_84;
      }
    }

    v24 = v22[4];
    v25 = v22[5];
    v26 = v25 >> 62;
    if (v25 >> 62 == 3)
    {
      if (v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25 == 0xC000000000000000;
      }

      v28 = v68;
      v30 = !v27 || v68 < 3;
      if (((v30 | v65) & 1) == 0)
      {
        goto LABEL_79;
      }

LABEL_50:
      v31 = 0;
      if (v28 <= 1)
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }

    v28 = v68;
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_50;
      }

      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      v34 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v34)
      {
        goto LABEL_90;
      }

      if (v68 <= 1)
      {
        goto LABEL_47;
      }
    }

    else if (v26)
    {
      LODWORD(v31) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_89;
      }

      v31 = v31;
      if (v68 <= 1)
      {
LABEL_47:
        v35 = v64;
        if (v28)
        {
          v35 = v60;
          if (v61)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_53;
      }
    }

    else
    {
      v31 = BYTE6(v25);
      if (v68 <= 1)
      {
        goto LABEL_47;
      }
    }

LABEL_51:
    if (v28 != 2)
    {
      if (!v31)
      {
        goto LABEL_79;
      }

      goto LABEL_18;
    }

    v37 = *(v66 + 16);
    v36 = *(v66 + 24);
    v34 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v34)
    {
      goto LABEL_88;
    }

LABEL_53:
    if (v31 != v35)
    {
      goto LABEL_18;
    }

    if (v31 < 1)
    {
      goto LABEL_79;
    }

    if (v26 <= 1)
    {
      break;
    }

    if (v26 == 2)
    {
      v39 = v7;
      v40 = *(v24 + 16);
      v58 = *(v24 + 24);
      sub_100069E2C(v66, v39);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v40, v42))
        {
          goto LABEL_93;
        }

        v41 += v40 - v42;
      }

      if (__OFSUB__(v58, v40))
      {
        goto LABEL_92;
      }

      __DataStorage._length.getter();
      v43 = v41;
      v44 = v66;
      v45 = v66;
      v7 = a3;
      v46 = a3;
      v47 = v4;
LABEL_73:
      sub_10019F024(v43, v45, v46, v71);
      if (v47)
      {
        goto LABEL_95;
      }

      v4 = 0;
      sub_10006A178(v44, v7);
      v6 = v67;
      if ((v71[0] & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_79:
      v51 = v22[2];
      v52 = v22[3];
      sub_100069E2C(v51, v52);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_10012E5A4(0, *(v62 + 2) + 1, 1, v62);
      }

      v11 = v69;
      v54 = *(v62 + 2);
      v53 = *(v62 + 3);
      if (v54 >= v53 >> 1)
      {
        v62 = sub_10012E5A4((v53 > 1), v54 + 1, 1, v62);
      }

      *(v62 + 2) = v54 + 1;
      v55 = &v62[16 * v54];
      *(v55 + 4) = v51;
      *(v55 + 5) = v52;
      v7 = a3;
      v6 = v67;
    }

    else
    {
      memset(v71, 0, 14);
      v44 = v66;
      sub_100069E2C(v66, v7);
      sub_10019F024(v71, v66, v7, &v70);
      if (v4)
      {
LABEL_95:
        v57 = v44;
        goto LABEL_97;
      }

      v4 = 0;
      v38 = v66;
LABEL_78:
      sub_10006A178(v38, v7);
      v6 = v67;
      if (v70)
      {
        goto LABEL_79;
      }

LABEL_18:

      v11 = v69;
    }
  }

  if (v26)
  {
    v59 = v4;
    v48 = v24;
    if (v24 >> 32 < v24)
    {
      goto LABEL_91;
    }

    sub_100069E2C(v66, a3);
    v49 = __DataStorage._bytes.getter();
    if (v49)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v48, v50))
      {
        goto LABEL_94;
      }

      v49 += v48 - v50;
    }

    __DataStorage._length.getter();
    v43 = v49;
    v44 = v66;
    v45 = v66;
    v7 = a3;
    v46 = a3;
    v47 = v59;
    goto LABEL_73;
  }

  v71[0] = v22[4];
  LOWORD(v71[1]) = v25;
  BYTE2(v71[1]) = BYTE2(v25);
  BYTE3(v71[1]) = BYTE3(v25);
  BYTE4(v71[1]) = BYTE4(v25);
  BYTE5(v71[1]) = BYTE5(v25);
  sub_100069E2C(v66, v7);
  sub_10019F024(v71, v66, v7, &v70);
  if (!v4)
  {
    v4 = 0;
    v38 = v66;
    goto LABEL_78;
  }

  v57 = v66;
LABEL_97:
  result = sub_10006A178(v57, v7);
  __break(1u);
  return result;
}

uint64_t sub_1001C4F48()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001C4F88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001C4FC0()
{
  sub_1000752F4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001C5000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001C5048()
{
  sub_1000752F4((v0 + 16));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001C5098()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001C5118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1001C51F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001C52CC()
{
  sub_1001C5D00(319, &qword_100506048, type metadata accessor for CreationMetadata);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1001C5398(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001C5458(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001C54FC()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1001C5598();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C5598()
{
  if (!qword_1005060E0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005060E0);
    }
  }
}

uint64_t sub_1001C55FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SESPeerIdentityData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 12)
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1001C5770(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SESPeerIdentityData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 12)
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

void sub_1001C58CC()
{
  type metadata accessor for SESPeerIdentityData(319);
  if (v0 <= 0x3F)
  {
    sub_1001C5D00(319, &qword_100506048, type metadata accessor for CreationMetadata);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001C5990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001C5AEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001C5C30()
{
  sub_1001C5D00(319, &unk_100506220, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_1001C5D00(319, &qword_100506048, type metadata accessor for CreationMetadata);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C5D00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1001C5D54@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_100068FC4(&qword_1005062F0, &qword_10040E020);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v11 = type metadata accessor for SESTLKRecordData(0);
  v12 = [v1 recordData];
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_1001C87DC(&qword_1005062F8, type metadata accessor for SESTLKRecordData);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v2)
  {

    sub_10006A178(v13, v15);

    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_100075768(v7, &qword_1005062F0, &qword_10040E020);
    v16 = [v1 recordData];
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = *(v11 + 20);
    v21 = type metadata accessor for CreationMetadata(0);
    result = (*(*(v21 - 8) + 56))(a1 + v20, 1, 1, v21);
    *a1 = v17;
    a1[1] = v19;
  }

  else
  {
    sub_10006A178(v13, v15);

    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    return sub_1001C8B90(v7, a1, type metadata accessor for SESTLKRecordData);
  }

  return result;
}

void sub_1001C5FF8(uint64_t *a1@<X8>)
{
  *a1 = sub_1001C7DE0(0x726556646C697542, 0xEC0000006E6F6973, 3227953);
  a1[1] = v2;
  v3 = type metadata accessor for CreationMetadata(0);
  v4 = a1 + v3[5];
  static Date.now.getter();
  v5 = sub_1001C7DE0(0x536C65646F4D5748, 0xEA00000000007274, 0x6E776F6E6B6E553CLL);
  v6 = (a1 + v3[6]);
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_1001C7DE0(0x754E6C6169726553, 0xEC0000007265626DLL, 0x6E776F6E6B6E553CLL);
  v9 = (a1 + v3[7]);
  *v9 = v8;
  v9[1] = v10;
  if (os_variant_has_internal_diagnostics() && (v11 = [objc_opt_self() aaPrimaryAppleAccount]) != 0)
  {
    v12 = v11;
    v13 = [v11 username];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v20 = (a1 + v3[8]);
    *v20 = v15;
    v20[1] = v17;
    v21 = [v12 aa_altDSID];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {

      v23 = 0;
      v25 = 0;
    }

    v26 = (a1 + v3[9]);
    *v26 = v23;
    v26[1] = v25;
  }

  else
  {
    v18 = (a1 + v3[8]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (a1 + v3[9]);
    *v19 = 0;
    v19[1] = 0;
  }
}

uint64_t sub_1001C61D4(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005062C0, &qword_10040E000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001C8940();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_100069E2C(v15, v11);
  sub_1000B8890();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10006A178(v15, v16);
  if (!v2)
  {
    v12 = *(type metadata accessor for SESTLKRecordData(0) + 20);
    LOBYTE(v15) = 1;
    type metadata accessor for CreationMetadata(0);
    sub_1001C87DC(&qword_1005062A8, type metadata accessor for CreationMetadata);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001C63B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v23 = &v21 - v6;
  v24 = sub_100068FC4(&qword_1005062B0, &qword_10040DFF8);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v24);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SESTLKRecordData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 28);
  sub_1001C5FF8(&v14[v15]);
  v16 = type metadata accessor for CreationMetadata(0);
  (*(*(v16 - 8) + 56))(&v14[v15], 0, 1, v16);
  v17 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001C8940();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000752F4(a1);
    return sub_100075768(&v14[v15], &qword_100504F08, &unk_10040DE20);
  }

  else
  {
    v18 = v22;
    v26 = 0;
    sub_1000B87D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v14 = v25;
    LOBYTE(v25) = 1;
    sub_1001C87DC(&qword_100506278, type metadata accessor for CreationMetadata);
    v19 = v24;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v18 + 8))(v9, v19);
    sub_100147EA4(v23, &v14[v15], &qword_100504F08, &unk_10040DE20);
    sub_1001C8878(v14, v21, type metadata accessor for SESTLKRecordData);
    sub_1000752F4(a1);
    return sub_1001C88E0(v14, type metadata accessor for SESTLKRecordData);
  }
}

unint64_t sub_1001C6718()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x5464657070617277;
  }

  *v0;
  return result;
}

uint64_t sub_1001C675C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5464657070617277 && a2 == 0xEA00000000004B4CLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004660D0 == a2)
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

uint64_t sub_1001C6854(uint64_t a1)
{
  v2 = sub_1001C8940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C6890(uint64_t a1)
{
  v2 = sub_1001C8940();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C68FC(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100506298, &qword_10040DFF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001C8788();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v21 = *v3;
  v22 = v11;
  v20 = 0;
  sub_100069E2C(v21, v11);
  sub_1000B8890();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_10006A178(v21, v22);
  }

  else
  {
    sub_10006A178(v21, v22);
    v12 = v3[3];
    v21 = v3[2];
    v22 = v12;
    v20 = 1;
    sub_100069E2C(v21, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v21, v22);
    v14 = v3[5];
    v21 = v3[4];
    v22 = v14;
    v20 = 2;
    sub_100069E2C(v21, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v21, v22);
    v15 = v3[7];
    v21 = v3[6];
    v22 = v15;
    v20 = 3;
    sub_100069E2C(v21, v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v21, v22);
    v16 = type metadata accessor for SESPeerIdentityData(0);
    v17 = *(v16 + 32);
    LOBYTE(v21) = 4;
    type metadata accessor for Date();
    sub_1001C87DC(&qword_1005062A0, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = *(v16 + 36);
    LOBYTE(v21) = 5;
    type metadata accessor for CreationMetadata(0);
    sub_1001C87DC(&qword_1005062A8, type metadata accessor for CreationMetadata);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001C6C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = &v34 - v5;
  v6 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_100068FC4(&qword_100506260, &qword_10040DFD8);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = type metadata accessor for SESPeerIdentityData(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v16 + 40);
  static Date.now.getter();
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 56);
  v41 = v20;
  v22(&v19[v20], 0, 1, v21);
  v23 = *(v16 + 44);
  sub_1001C5FF8(&v19[v23]);
  v24 = type metadata accessor for CreationMetadata(0);
  v25 = *(*(v24 - 8) + 56);
  v42 = v23;
  v25(&v19[v23], 0, 1, v24);
  v27 = a1[3];
  v26 = a1[4];
  v43 = a1;
  sub_1000752B0(a1, v27);
  sub_1001C8788();
  v39 = v14;
  v28 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v30 = v41;
    sub_1000752F4(v43);
    sub_100075768(&v19[v30], &qword_1005031F0, &unk_10040C4C0);
    return sub_100075768(&v19[v42], &qword_100504F08, &unk_10040DE20);
  }

  else
  {
    v40 = v21;
    v45 = 0;
    sub_1000B87D4();
    v29 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v19 = v44;
    v45 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v41;
    *(v19 + 1) = v44;
    v45 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v19 + 2) = v44;
    v45 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v19 + 3) = v44;
    LOBYTE(v44) = 4;
    sub_1001C87DC(&qword_100506270, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100147EA4(v9, &v19[v31], &qword_1005031F0, &unk_10040C4C0);
    LOBYTE(v44) = 5;
    sub_1001C87DC(&qword_100506278, type metadata accessor for CreationMetadata);
    v32 = v36;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v38 + 8))(v39, v29);
    sub_100147EA4(v32, &v19[v42], &qword_100504F08, &unk_10040DE20);
    sub_1001C8878(v19, v35, type metadata accessor for SESPeerIdentityData);
    sub_1000752F4(v43);
    return sub_1001C88E0(v19, type metadata accessor for SESPeerIdentityData);
  }
}

unint64_t sub_1001C7288()
{
  v1 = *v0;
  v2 = 0x6E65644972656570;
  v3 = 0x7472654364736163;
  v4 = 0x6E6F697461657263;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001C7374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C9060(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C739C(uint64_t a1)
{
  v2 = sub_1001C8788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C73D8(uint64_t a1)
{
  v2 = sub_1001C8788();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C7444(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005062E0, &qword_10040E018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001C8824();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for SESPeerIdentityData(0);
  sub_1001C87DC(&qword_100504E28, type metadata accessor for SESPeerIdentityData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SESTLKShareData(0);
    v12 = v11[5];
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = v13[1];
    v17 = *v13;
    v18 = v14;
    v19 = 2;
    sub_100069E2C(v17, v14);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v17, v18);
    v15 = v11[7];
    LOBYTE(v17) = 3;
    type metadata accessor for CreationMetadata(0);
    sub_1001C87DC(&qword_1005062A8, type metadata accessor for CreationMetadata);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001C76DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v31 - v5;
  v37 = type metadata accessor for SESPeerIdentityData(0);
  v7 = *(*(v37 - 8) + 64);
  v8 = __chkstk_darwin(v37);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v35 = v31 - v11;
  v36 = sub_100068FC4(&qword_100506288, &qword_10040DFE8);
  v34 = *(v36 - 8);
  v12 = *(v34 + 64);
  __chkstk_darwin(v36);
  v14 = v31 - v13;
  v15 = type metadata accessor for SESTLKShareData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 28);
  sub_1001C5FF8(&v19[v20]);
  v21 = type metadata accessor for CreationMetadata(0);
  v22 = *(*(v21 - 8) + 56);
  v40 = v19;
  v41 = v20;
  v22(&v19[v20], 0, 1, v21);
  v23 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001C8824();
  v38 = v14;
  v24 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_1000752F4(a1);
    return sub_100075768(&v40[v41], &qword_100504F08, &unk_10040DE20);
  }

  else
  {
    v31[1] = v21;
    v32 = v6;
    v25 = v34;
    v39 = a1;
    LOBYTE(v42) = 0;
    sub_1001C87DC(&qword_100504E20, type metadata accessor for SESPeerIdentityData);
    v26 = v35;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v26;
    v28 = v40;
    sub_1001C8B90(v27, v40, type metadata accessor for SESPeerIdentityData);
    LOBYTE(v42) = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001C8B90(v10, v28 + *(v15 + 20), type metadata accessor for SESPeerIdentityData);
    v43 = 2;
    sub_1000B87D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v28 + *(v15 + 24)) = v42;
    LOBYTE(v42) = 3;
    sub_1001C87DC(&qword_100506278, type metadata accessor for CreationMetadata);
    v29 = v32;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v25 + 8))(v38, v36);
    sub_100147EA4(v29, v28 + v41, &qword_100504F08, &unk_10040DE20);
    sub_1001C8878(v28, v33, type metadata accessor for SESTLKShareData);
    sub_1000752F4(v39);
    return sub_1001C88E0(v28, type metadata accessor for SESTLKShareData);
  }
}

unint64_t sub_1001C7C6C()
{
  v1 = 0x6574707972636E65;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000013;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001C7D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C927C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C7D38(uint64_t a1)
{
  v2 = sub_1001C8824();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C7D74(uint64_t a1)
{
  v2 = sub_1001C8824();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C7DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();
  MGCopyAnswer();

  sub_100068FC4(&qword_100506280, &qword_10040DFE0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  return a3;
}

uint64_t sub_1001C7E7C(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005062D8, &qword_10040E010);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001C8994();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v28[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for CreationMetadata(0);
    v14 = v13[5];
    v28[14] = 1;
    type metadata accessor for Date();
    sub_1001C87DC(&qword_1005062A0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    v28[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    v28[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = (v3 + v13[8]);
    v22 = *v21;
    v23 = v21[1];
    v28[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = (v3 + v13[9]);
    v25 = *v24;
    v26 = v24[1];
    v28[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001C80F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = type metadata accessor for Date();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100068FC4(&qword_1005062C8, &qword_10040E008);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v41);
  v10 = &v36 - v9;
  v11 = type metadata accessor for CreationMetadata(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v43 = a1;
  sub_1000752B0(a1, v16);
  sub_1001C8994();
  v42 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(v43);
  }

  v17 = v39;
  v18 = v40;
  v49 = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v19;
  v37 = v14;
  v48 = 1;
  sub_1001C87DC(&qword_100506270, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 32))(v37 + v11[5], v7, v4);
  v47 = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v37;
  v22 = (v37 + v11[6]);
  *v22 = v20;
  v22[1] = v23;
  v46 = 3;
  v36 = 0;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v11;
  v26 = (v21 + v11[7]);
  *v26 = v24;
  v26[1] = v27;
  v45 = 4;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = (v21 + v11[8]);
  *v29 = v28;
  v29[1] = v30;
  v44 = 5;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v32;
  (*(v17 + 8))(v42, v41);
  v34 = (v21 + v25[9]);
  *v34 = v31;
  v34[1] = v33;
  sub_1001C8878(v21, v38, type metadata accessor for CreationMetadata);
  sub_1000752F4(v43);
  return sub_1001C88E0(v21, type metadata accessor for CreationMetadata);
}

uint64_t sub_1001C8604()
{
  v1 = *v0;
  v2 = 0x6F69737265567773;
  v3 = 0x656369766564;
  v4 = 1684632420;
  if (v1 != 4)
  {
    v4 = 0x44495344746C61;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 1)
  {
    v5 = 0x6C65646F6DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001C86AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C93F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C86E0(uint64_t a1)
{
  v2 = sub_1001C8994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C871C(uint64_t a1)
{
  v2 = sub_1001C8994();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001C8788()
{
  result = qword_100506268;
  if (!qword_100506268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506268);
  }

  return result;
}

uint64_t sub_1001C87DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001C8824()
{
  result = qword_100506290;
  if (!qword_100506290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506290);
  }

  return result;
}

uint64_t sub_1001C8878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C88E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001C8940()
{
  result = qword_1005062B8;
  if (!qword_1005062B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005062B8);
  }

  return result;
}

unint64_t sub_1001C8994()
{
  result = qword_1005062D0;
  if (!qword_1005062D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005062D0);
  }

  return result;
}

uint64_t sub_1001C89E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = String._bridgeToObjectiveC()();
  v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = *a5;
  v10 = a5[1];
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = (a5 + *(type metadata accessor for SESTLKShareData(0) + 20));
  v13 = *v12;
  v14 = v12[1];
  v15.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = type metadata accessor for PropertyListEncoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1001C87DC(&qword_1005062E8, type metadata accessor for SESTLKShareData);
  v19 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v5)
  {
  }

  else
  {
    v22 = v19;
    v23 = v20;

    v24 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v22, v23);
    v26 = [v24 withView:v7 tlkUUID:v8.super.isa sourcePeerIdentifier:v11.super.isa targetPeerIdentifier:v15.super.isa shareData:isa];

    return v26;
  }
}

uint64_t sub_1001C8B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001C8C44()
{
  result = qword_100506300;
  if (!qword_100506300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506300);
  }

  return result;
}

unint64_t sub_1001C8C9C()
{
  result = qword_100506308;
  if (!qword_100506308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506308);
  }

  return result;
}

unint64_t sub_1001C8CF4()
{
  result = qword_100506310;
  if (!qword_100506310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506310);
  }

  return result;
}

unint64_t sub_1001C8D4C()
{
  result = qword_100506318;
  if (!qword_100506318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506318);
  }

  return result;
}

unint64_t sub_1001C8DA4()
{
  result = qword_100506320;
  if (!qword_100506320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506320);
  }

  return result;
}

unint64_t sub_1001C8DFC()
{
  result = qword_100506328;
  if (!qword_100506328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506328);
  }

  return result;
}

unint64_t sub_1001C8E54()
{
  result = qword_100506330;
  if (!qword_100506330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506330);
  }

  return result;
}

unint64_t sub_1001C8EAC()
{
  result = qword_100506338;
  if (!qword_100506338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506338);
  }

  return result;
}

unint64_t sub_1001C8F04()
{
  result = qword_100506340;
  if (!qword_100506340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506340);
  }

  return result;
}

unint64_t sub_1001C8F5C()
{
  result = qword_100506348;
  if (!qword_100506348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506348);
  }

  return result;
}

unint64_t sub_1001C8FB4()
{
  result = qword_100506350;
  if (!qword_100506350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506350);
  }

  return result;
}

unint64_t sub_1001C900C()
{
  result = qword_100506358;
  if (!qword_100506358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506358);
  }

  return result;
}

uint64_t sub_1001C9060(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644972656570 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100466090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004660B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7472654364736163 && a2 == 0xEF65746163696669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC000000656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004660D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1001C927C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001004660F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100466110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED0000626F6C4264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004660D0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001C93F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69737265567773 && a2 == 0xE90000000000006ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1001C9628(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_state);
  if (v2)
  {
    v3 = v1;
    v5 = qword_1005019D8;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Removing %@ from background assertion table", v11, 0xCu);
      sub_1000C2998(v12);
    }

    v14 = [v8 processIdentifier];
    if (v14 >= 1)
    {
      v25 = 0;
      v15 = *&v6[OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions];
      v16 = __chkstk_darwin(v14);
      __chkstk_darwin(v16);

      os_unfair_lock_lock(v15 + 6);
      sub_1001CB170();
      os_unfair_lock_unlock(v15 + 6);

      v17 = *(v3 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_appStateObserver);
      [v17 unregisterForAppStateChanges:v8];

      return;
    }

    v24 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v24, v22, "Invalid PID provided for invalidation", v23, 2u);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_10051B2C8);
    v24 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1002FFA0C(0x662865766F6D6572, 0xED0000293A6D6F72, &v25);
      _os_log_impl(&_mh_execute_header, v24, v19, "%s called while not active", v20, 0xCu);
      sub_1000752F4(v21);

      return;
    }
  }
}

void sub_1001C9AD0(uint64_t *a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  if (*(*a1 + 16) && (sub_10008CBA8(a2), (v9 & 1) != 0))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unexpected assertion exist, pid=%d)", v13, 8u);
    }
  }

  else
  {
    type metadata accessor for BackgroundAssertionHandle();
    v14 = swift_allocObject();
    *(v14 + 48) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v14 + 16) = a3;
    *(v14 + 20) = a2;
    v15 = *(v14 + 24);
    *(v14 + 24) = 0;

    *(v14 + 48) = a5;
    swift_unknownObjectWeakAssign();
    v16 = *(v14 + 32);
    *(v14 + 32) = 0;

    v17 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a1;
    sub_10031681C(v14, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v19;
  }
}

uint64_t sub_1001C9C8C(uint64_t *a1, uint64_t *a2, int a3)
{
  v5 = *a1;
  v6 = sub_10008CBA8(a3);
  if (v7)
  {
    v8 = v6;
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v16 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100313190();
      v11 = v16;
    }

    v12 = v8;
    v13 = *(*(v11 + 56) + 8 * v8);
    sub_1000E39DC(v12, v11);
    *a1 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = *a2;
  *a2 = v13;
}

void sub_1001C9D2C(uint64_t a1)
{
  if (a1 >= 1 && (v2 = *(v1 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_state)) != 0)
  {
    v3 = *(v2 + OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions);
    v4 = __chkstk_darwin(a1);
    __chkstk_darwin(v4);
    v6 = v5;

    os_unfair_lock_lock(v3 + 6);
    sub_1001CB078();
    os_unfair_lock_unlock(v3 + 6);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    v10 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v10, v8, "Invalid PID or observer inactive", v9, 2u);
    }
  }
}

unint64_t sub_1001C9EF8(unint64_t result, int a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    result = sub_10008CBA8(a2);
    if (v3)
    {
      v4 = *(*(v2 + 56) + 8 * result);

      sub_10033325C();
    }
  }

  return result;
}

void sub_1001C9F50(int a1)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v4, v5, "Wired transceive detected for %d, setting up background timer", v6, 8u);
  }

  if (a1 >= 1 && (v8 = *(v1 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_state)) != 0)
  {
    v9 = *(v8 + OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions);
    v10 = __chkstk_darwin(v7);
    __chkstk_darwin(v10);
    v12 = v11;

    os_unfair_lock_lock(v9 + 6);
    sub_1001CB170();
    os_unfair_lock_unlock(v9 + 6);
  }

  else
  {
    v15 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v15, v13, "Invalid PID or observer inactive", v14, 2u);
    }
  }
}

void sub_1001CA1A0(uint64_t *a1, int a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v6 = sub_10008CBA8(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v4 + 56) + 8 * v6);
    v9 = *(a3 + OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_backgroundAssertionQueue);

    sub_1003333B8(v9);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v11, v12, "Missing assertion for %d, no background assertion support for this client", v13, 8u);
    }
  }
}

void sub_1001CA2E4(int a1, id a2)
{
  v3 = [a2 processIdentifier];
  if (v3 < 1)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v9 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v9, v7, "Invalid PID", v8, 2u);
    }
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions);
    v5 = __chkstk_darwin(v3);
    __chkstk_darwin(v5);

    os_unfair_lock_lock(v4 + 6);
    sub_1001CB170();
    os_unfair_lock_unlock(v4 + 6);
  }
}

void sub_1001CA4B0(uint64_t *a1, int a2, char a3)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v6 = sub_10008CBA8(a2), (v7 & 1) != 0))
  {
    *(*(*(v4 + 56) + 8 * v6) + 16) = a3;

    if (a3)
    {
      if (a3 == 1)
      {
        sub_100333CE0();
      }

      else
      {
        sub_100333E54();
      }
    }

    else
    {
      sub_100333A98();
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v9, v10, "Assertion for %d not found", v11, 8u);
    }
  }
}

void sub_1001CA708(void *a1, const char *a2, int a3)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_10051B2C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 2u);
  }

  sub_1001CA2E4(a3, a1);
}

id sub_1001CA87C()
{
  v1 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BackgroundAssertionMonitor.deinit()", v5, 2u);
  }

  v6 = *&v1[OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions];

  os_unfair_lock_lock((v6 + 24));
  sub_1001CA9B0((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  v8.receiver = v1;
  v8.super_class = type metadata accessor for SECBackgroundAssertion.AppStateObserverDelegate();
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_1001CA9B0(void *a1)
{
  v21 = a1;
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
  v22 = v1;
  while (v5)
  {
LABEL_11:
    v11 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = p_class_meths[315];

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = p_class_meths;
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = *(v11 + 20);

      _os_log_impl(&_mh_execute_header, v14, v15, "Stopping timer for pid %d", v17, 8u);
      p_class_meths = v16;
      v1 = v22;

      v18 = *(v11 + 24);
      if (v18)
      {
        goto LABEL_15;
      }
    }

    else
    {

      v18 = *(v11 + 24);
      if (v18)
      {
LABEL_15:
        [v18 invalidate];
        v19 = *(v11 + 24);
        goto LABEL_18;
      }
    }

    v19 = 0;
LABEL_18:
    *(v11 + 24) = 0;

    v20 = *(v11 + 32);
    if (v20)
    {
      sub_1003AE754(v20);
      v9 = *(v11 + 32);
    }

    else
    {
      v9 = 0;
    }

    v5 &= v5 - 1;
    *(v11 + 32) = 0;
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      *v21 = _swiftEmptyDictionarySingleton;
      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

id sub_1001CAC70()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v24 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions;
  v16 = sub_100091E8C(_swiftEmptyArrayStorage);
  sub_100068FC4(&unk_100506490, ",y\a");
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v16;
  v18 = v23;
  *&v23[v15] = v17;
  v22 = OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_backgroundAssertionQueue;
  v21[1] = sub_10006928C();
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  v26 = _swiftEmptyArrayStorage;
  sub_1001CB0E0();
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_1001A1FB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v18[v22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = type metadata accessor for SECBackgroundAssertion.AppStateObserverDelegate();
  v25.receiver = v18;
  v25.super_class = v19;
  return objc_msgSendSuper2(&v25, "init");
}

uint64_t sub_1001CB078()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1001CB0E0()
{
  result = qword_1005064A0;
  if (!qword_1005064A0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005064A0);
  }

  return result;
}

void *sub_1001CB188(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v72 = a4;
  v73 = a2;
  v74 = a3;
  v5 = type metadata accessor for JPKIInternalTypes.CertificateType();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  __chkstk_darwin(v5);
  v68 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JPKIInternalTypes.CertificateInfo();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v64 - v13;
  v15 = type metadata accessor for JPKIInternalTypes.InternalError();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v23 = (&v64 - v22);
  __chkstk_darwin(v21);
  v25 = &v64 - v24;
  v71 = a1;
  v26 = v75;
  sub_1001CB91C(a1, v73, v74, (&v64 - v24));
  if (v26)
  {
    (*(v16 + 32))(v72, v25, v15);
  }

  else
  {
    v65 = v14;
    v66 = v20;
    v64 = v12;
    v73 = v16;
    v74 = v15;
    v75 = 0;
    v28 = [objc_allocWithZone(RAPDU) init];
    v76 = 0;
    v29 = v71;
    v30 = sub_1003AEF50();
    if (v30)
    {
      v31 = v30;
      v32 = v76;

      v33 = sub_1003B0934(v31);
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      LODWORD(v33) = Data._Representation.subscript.getter();
      sub_10006A178(v34, v36);
      if ((~v33 & 0xC) != 0)
      {
        v23 = _swiftEmptyArrayStorage;
      }

      else
      {
        v37 = v75;
        sub_1001CBBD8(v29, 2, v23);
        if (v37)
        {

          (*(v73 + 32))(v72, v23, v74);
          return v23;
        }

        v75 = 0;
        (*(v69 + 104))(v68, enum case for JPKIInternalTypes.CertificateType.signing(_:), v70);
        v51 = v65;
        JPKIInternalTypes.CertificateInfo.init(type:authTriesRemaining:)();
        v23 = sub_10012FAF8(0, 1, 1, _swiftEmptyArrayStorage);
        v53 = v23[2];
        v52 = v23[3];
        if (v53 >= v52 >> 1)
        {
          v23 = sub_10012FAF8(v52 > 1, v53 + 1, 1, v23);
        }

        v54 = v67;
        v23[2] = v53 + 1;
        (*(v54 + 32))(v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v53, v51, v8);
      }

      v55 = sub_1003B0934(v31);
      v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      LODWORD(v55) = Data._Representation.subscript.getter();
      sub_10006A178(v56, v58);
      if ((~v55 & 0xC) != 0)
      {
      }

      else
      {
        v59 = v75;
        v60 = v66;
        sub_1001CBBD8(v29, 0, v66);
        if (v59)
        {

          (*(v73 + 32))(v72, v60, v74);
        }

        else
        {
          (*(v69 + 104))(v68, enum case for JPKIInternalTypes.CertificateType.user(_:), v70);
          v61 = v64;
          JPKIInternalTypes.CertificateInfo.init(type:authTriesRemaining:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_10012FAF8(0, v23[2] + 1, 1, v23);
          }

          v63 = v23[2];
          v62 = v23[3];
          if (v63 >= v62 >> 1)
          {
            v23 = sub_10012FAF8(v62 > 1, v63 + 1, 1, v23);
          }

          v23[2] = v63 + 1;
          (*(v67 + 32))(v23 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v63, v61, v8);
        }
      }
    }

    else
    {
      v38 = v76;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100501A60 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000958E4(v39, qword_1005064B8);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v28;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v76 = v44;
        *v43 = 136315138;
        swift_getErrorValue();
        v45 = Error.localizedDescription.getter();
        v47 = sub_1002FFA0C(v45, v46, &v76);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v40, v41, "Error while reading availability info %s", v43, 0xCu);
        sub_1000752F4(v44);

        v28 = v42;
      }

      v49 = v72;
      v48 = v73;
      v50 = v74;
      *v72 = 0xD00000000000003CLL;
      v49[1] = 0x8000000100466230;
      (*(v48 + 104))(v49, enum case for JPKIInternalTypes.InternalError.internalError(_:), v50);
      sub_1001D07D8();
      swift_willThrowTypedImpl();
    }
  }

  return v23;
}

void sub_1001CB91C(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = sub_1003AF1FC(a1, isa);

  if (v9)
  {
    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_1005064B8);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 136315138;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = a3;
      v18 = v11;
      v19 = sub_1002FFA0C(v15, v16, &v26);

      *(v14 + 4) = v19;
      v11 = v18;
      a3 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to select Alphonso : %s", v14, 0xCu);
      sub_1000752F4(v25);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_100069E2C(a2, a3);
    _StringGuts.grow(_:)(28);

    v26 = 0xD00000000000001ALL;
    v27 = 0x80000001004662E0;
    swift_getErrorValue();
    v20._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v20);

    v21 = v26;
    v22 = v27;
    *a4 = a2;
    a4[1] = a3;
    a4[2] = v21;
    a4[3] = v22;
    v23 = enum case for JPKIInternalTypes.InternalError.selectFailed(_:);
    v24 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v24 - 8) + 104))(a4, v23, v24);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_1001CBBD8(void *a1, char a2, void *a3)
{
  if (a2)
  {
    if (a2 != 2)
    {
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v15._countAndFlagsBits = 0xD000000000000039;
      v15._object = 0x8000000100466270;
      String.append(_:)(v15);
      _print_unlocked<A, B>(_:_:)();
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      v16 = enum case for JPKIInternalTypes.InternalError.internalError(_:);
      v17 = type metadata accessor for JPKIInternalTypes.InternalError();
      (*(*(v17 - 8) + 104))(a3, v16, v17);
      sub_1001D07D8();
      return swift_willThrowTypedImpl();
    }

    v5 = -101;
  }

  else
  {
    v5 = -104;
  }

  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10040AA50;
  *(v6 + 32) = 0x2000;
  *(v6 + 34) = 0;
  *(v6 + 35) = v5;
  *(v6 + 36) = 0;
  v7 = sub_1002B3B94(v6);
  v9 = v8;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v31[0] = 0;
  v11 = sub_1003AE9C8(a1, isa, v31);

  if (v11)
  {
    v12 = v31[0];
    if ((~sub_1003B0984(v11) & 0x63C0) != 0)
    {

      sub_10006A178(v7, v9);
      return 0;
    }

    else
    {
      v13 = sub_1003B0984(v11);

      sub_10006A178(v7, v9);
      return v13 & 0xF;
    }
  }

  else
  {
    v18 = v31[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_1005064B8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v22 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_1002FFA0C(v23, v24, v31);

      *(v22 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Authentication invalid and failed with error %s", v22, 0xCu);
      sub_1000752F4(v30);
    }

    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    *a3 = 0xD000000000000027;
    a3[1] = 0x80000001004662B0;
    a3[2] = v26;
    a3[3] = v27;
    v28 = enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:);
    v29 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v29 - 8) + 104))(a3, v28, v29);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v7, v9);
  }
}

uint64_t sub_1001CC040(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v130 = a6;
  v128 = a5;
  v129 = a4;
  v133 = a3;
  v131 = a2;
  v127 = type metadata accessor for JPKIInternalTypes.CertificateType();
  v124 = *(v127 - 8);
  v7 = *(v124 + 64);
  __chkstk_darwin(v127);
  v123 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for JPKIInternalTypes.UserAuthenticationInternal();
  v125 = *(v126 - 8);
  v9 = *(v125 + 64);
  __chkstk_darwin(v126);
  v11 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JPKIInternalTypes.InternalError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = (v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v15);
  v20 = (v120 - v19);
  v21 = __chkstk_darwin(v18);
  v23 = (v120 - v22);
  __chkstk_darwin(v21);
  v25 = v120 - v24;
  v26 = a1;
  v27 = a1;
  v28 = v132;
  v29 = v131;
  sub_1001CB91C(v27, v131, v133, (v120 - v24));
  if (v28)
  {
    (*(v13 + 32))(v130, v25, v12);
    return v29;
  }

  v30 = v20;
  v120[0] = v17;
  v120[1] = v23;
  v31 = v29;
  v32 = v127;
  v132 = v26;
  v122 = v13;
  v121 = v12;
  v33 = v125;
  v34 = v126;
  (*(v125 + 16))(v11, v128, v126);
  v35 = (*(v33 + 88))(v11, v34);
  v36 = v33;
  if (v35 == enum case for JPKIInternalTypes.UserAuthenticationInternal.standard(_:))
  {
    (*(v33 + 96))(v11, v34);
    sub_1001CDF98(v132, v129, *v11, *(v11 + 1), v30);
    v37 = v122;
    v40 = v32;

    v41 = v124;
    v42 = v123;
  }

  else
  {
    v37 = v122;
    if (v35 != enum case for JPKIInternalTypes.UserAuthenticationInternal.biometry(_:))
    {
      goto LABEL_113;
    }

    v40 = v32;
    (*(v36 + 96))(v11, v34);
    v38 = *v11;
    v39 = *(v11 + 1);
    sub_1001CEE1C(v132, v31, v133, v129, v38, v39, v120[0]);
    v41 = v124;
    v42 = v123;
    sub_10006A178(v38, v39);
  }

  (*(v41 + 16))(v42, v129, v40);
  v43 = (*(v41 + 88))(v42, v40);
  if (v43 == enum case for JPKIInternalTypes.CertificateType.user(_:))
  {
    v44 = 10;
    goto LABEL_11;
  }

  if (v43 != enum case for JPKIInternalTypes.CertificateType.signing(_:))
  {
LABEL_113:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v44 = 1;
LABEL_11:
  v141 = xmmword_1004098D0;
  v137 = 0;
  LODWORD(v131) = v44;
  v45 = sub_1003AEF50();
  v46 = v137;
  if (!v45)
  {
    v64 = v137;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_95;
  }

  v47 = v45;
  v48 = v46;
  v49 = sub_1003B0934(v47);
  v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v139 = &type metadata for Data;
  v140 = &protocol witness table for Data;
  v137 = v50;
  v138 = v52;
  v53 = sub_1000752B0(&v137, &type metadata for Data);
  v54 = *v53;
  v55 = v53[1];
  sub_100069E2C(v50, v52);
  sub_10008E4C8(v54, v55);
  sub_10006A178(v50, v52);
  sub_1000752F4(&v137);
  v56 = sub_1003B0934(v47);
  v57 = v47;

  v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v61 = v60;
  v62 = v60 >> 62;
  if ((v60 >> 62) > 1)
  {
    if (v62 != 2)
    {
      sub_10006A178(v58, v60);
      v63 = 0;
      goto LABEL_23;
    }

    v66 = *(v58 + 16);
    v65 = *(v58 + 24);
    sub_10006A178(v58, v61);
    v63 = v65 - v66;
    if (!__OFSUB__(v65, v66))
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    sub_10006A178(v58, v61);
    if (__OFSUB__(HIDWORD(v58), v58))
    {
      goto LABEL_112;
    }

    v63 = HIDWORD(v58) - v58;
    goto LABEL_23;
  }

  if (v62)
  {
    goto LABEL_20;
  }

  sub_10006A178(v58, v60);
  v63 = BYTE6(v60);
LABEL_23:
  v67 = 0;
  v69 = *(&v141 + 1);
  v68 = v141;
  v70 = *(&v141 + 1) >> 62;
  if ((*(&v141 + 1) >> 62) > 1)
  {
    if (v70 == 2)
    {
      v67 = *(v141 + 16);
    }
  }

  else if (v70)
  {
    v67 = v141;
  }

  if (__OFADD__(v67, 1))
  {
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
  }

  if (v70 > 1)
  {
    if (v70 == 2)
    {
      v71 = *(v141 + 24);
    }

    else
    {
      v71 = 0;
    }
  }

  else if (v70)
  {
    v71 = v141 >> 32;
  }

  else
  {
    v71 = BYTE14(v141);
  }

  if (v71 < v67 + 1)
  {
    goto LABEL_109;
  }

  sub_100069E2C(v141, *(&v141 + 1));
  v72 = Data._Representation.subscript.getter();
  v74 = v73;
  sub_10006A178(v68, v69);
  v135 = v72;
  v136 = v74;
  v75 = sub_1001ACD80(&v135);
  v126 = 0;
  v77 = 0;
  v128 = v135;
  v127 = v136;
  v78 = v136 >> 62;
  v79 = v57;
  if ((v136 >> 62) > 1)
  {
    if (v78 == 2)
    {
      v77 = *(v128 + 16);
    }
  }

  else if (v78)
  {
    v77 = v128;
  }

  v133 = (v75 + v77);
  if (__OFADD__(v75, v77))
  {
    __break(1u);
    goto LABEL_45;
  }

  while (1)
  {
    v83 = *(&v141 + 1);
    v82 = v141;
    v84 = *(&v141 + 1) >> 62;
    if ((*(&v141 + 1) >> 62) <= 1)
    {
      if (v84)
      {
        LODWORD(v85) = DWORD1(v141) - v141;
        if (__OFSUB__(DWORD1(v141), v141))
        {
          goto LABEL_100;
        }

        v85 = v85;
      }

      else
      {
        v85 = BYTE14(v141);
      }

LABEL_56:
      if (v85 >= v133)
      {
        goto LABEL_93;
      }

      if (v84 == 2)
      {
        v90 = *(v141 + 16);
        v89 = *(v141 + 24);
        v81 = __OFSUB__(v89, v90);
        v88 = v89 - v90;
        if (v81)
        {
          goto LABEL_102;
        }
      }

      else if (v84 == 1)
      {
        LODWORD(v88) = DWORD1(v141) - v141;
        if (__OFSUB__(DWORD1(v141), v141))
        {
          goto LABEL_103;
        }

        v88 = v88;
      }

      else
      {
        v88 = BYTE14(v141);
      }

      goto LABEL_67;
    }

    if (v84 == 2)
    {
      v87 = *(v141 + 16);
      v86 = *(v141 + 24);
      v81 = __OFSUB__(v86, v87);
      v85 = v86 - v87;
      if (v81)
      {
        goto LABEL_101;
      }

      goto LABEL_56;
    }

    if (v133 <= 0)
    {
LABEL_93:

      sub_10006A178(v128, v127);
      type metadata accessor for JPKIInternalTypes.CertificateData();
      sub_100069E2C(v82, v83);
      v29 = JPKIInternalTypes.CertificateData.__allocating_init(certificateData:)();
      sub_10006A178(v141, *(&v141 + 1));
      return v29;
    }

    v88 = 0;
LABEL_67:
    v81 = __OFSUB__(3900, v88);
    v91 = 3900 - v88;
    if (v81)
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
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
      goto LABEL_108;
    }

    if (v91 < 0)
    {
      goto LABEL_98;
    }

    v137 = 0;
    v92 = sub_1003AEF50();
    if (!v92)
    {
      break;
    }

    v93 = v92;
    v94 = v137;

    v79 = v93;
    v95 = sub_1003B0934(v79);
    v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    v139 = &type metadata for Data;
    v140 = &protocol witness table for Data;
    v137 = v96;
    v138 = v98;
    v99 = sub_1000752B0(&v137, &type metadata for Data);
    v100 = *v99;
    v101 = v99[1];
    v102 = v101 >> 62;
    if ((v101 >> 62) > 1)
    {
      if (v102 != 2)
      {
        memset(v134, 0, 14);
        goto LABEL_83;
      }

      v129 = v79;
      v103 = *(v100 + 16);
      v104 = *(v100 + 24);
      sub_100069E2C(v96, v98);
      if (__DataStorage._bytes.getter() && __OFSUB__(v103, __DataStorage._offset.getter()))
      {
        goto LABEL_110;
      }

      if (__OFSUB__(v104, v103))
      {
        goto LABEL_105;
      }

      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_10006A178(v96, v98);
      v79 = v129;
    }

    else
    {
      if (!v102)
      {
        v134[0] = *v99;
        LOWORD(v134[1]) = v101;
        BYTE2(v134[1]) = BYTE2(v101);
        BYTE3(v134[1]) = BYTE3(v101);
        BYTE4(v134[1]) = BYTE4(v101);
        BYTE5(v134[1]) = BYTE5(v101);
LABEL_83:
        Data._Representation.append(contentsOf:)();
        goto LABEL_84;
      }

      v105 = v100;
      if (v100 >> 32 < v100)
      {
        goto LABEL_104;
      }

      sub_100069E2C(v96, v98);
      if (__DataStorage._bytes.getter() && __OFSUB__(v105, __DataStorage._offset.getter()))
      {
        goto LABEL_111;
      }

      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_10006A178(v96, v98);
    }

LABEL_84:
    sub_1000752F4(&v137);
    v106 = sub_1003B0934(v79);

    v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    v76 = v108;
    v109 = v108 >> 62;
    if ((v108 >> 62) > 1)
    {
      if (v109 == 2)
      {
        v111 = *(v68 + 16);
        v110 = *(v68 + 24);
        sub_10006A178(v68, v76);
        v80 = v110 - v111;
        if (__OFSUB__(v110, v111))
        {
          goto LABEL_107;
        }
      }

      else
      {
LABEL_45:
        sub_10006A178(v68, v76);
        v80 = 0;
      }
    }

    else if (v109)
    {
      sub_10006A178(v68, v108);
      LODWORD(v80) = HIDWORD(v68) - v68;
      if (__OFSUB__(HIDWORD(v68), v68))
      {
        goto LABEL_106;
      }

      v80 = v80;
    }

    else
    {
      sub_10006A178(v68, v108);
      v80 = BYTE6(v108);
    }

    v81 = __OFADD__(v63, v80);
    v63 += v80;
    if (v81)
    {
      goto LABEL_99;
    }
  }

  v112 = v137;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10006A178(v128, v127);
  v37 = v122;
LABEL_95:
  swift_getErrorValue();
  v113 = Error.localizedDescription.getter();
  v115 = v114;
  LOBYTE(v137) = v131;
  v116 = dispatch thunk of CustomStringConvertible.description.getter();
  v117 = v130;
  *v130 = v113;
  v117[1] = v115;
  v117[2] = v116;
  v117[3] = v118;
  v29 = v121;
  (*(v37 + 104))(v117, enum case for JPKIInternalTypes.InternalError.certificateReadFailed(_:), v121);
  sub_1001D07D8();
  swift_willThrowTypedImpl();

  sub_10006A178(v141, *(&v141 + 1));
  return v29;
}

uint64_t sub_1001CCDF8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v137 = a5;
  v130 = a4;
  v133 = a3;
  v132 = a2;
  v135 = a1;
  v124 = type metadata accessor for JPKIInternalTypes.CertificateType();
  v123 = *(v124 - 8);
  v9 = *(v123 + 64);
  __chkstk_darwin(v124);
  v122 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for String.Encoding();
  v127 = *(v128 - 8);
  v11 = *(v127 + 64);
  __chkstk_darwin(v128);
  v126 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JPKIInternalTypes.InternalError();
  v138 = *(v13 - 8);
  v139 = v13;
  v14 = *(v138 + 64);
  v15 = __chkstk_darwin(v13);
  v129 = (&v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v131 = (&v120 - v17);
  v18 = type metadata accessor for JPKIInternalTypes.UserAuthentication();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = (&v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v25 = (&v120 - v24);
  v136 = *(v19 + 16);
  v136(&v120 - v24, a6, v18);
  v26 = *(v19 + 88);
  v27 = v26(v25, v18);
  if (v27 != enum case for JPKIInternalTypes.UserAuthentication.standard(_:))
  {
    v23 = v25;
LABEL_7:
    (*(v19 + 8))(v23, v18);
    *a7 = 0xD000000000000014;
    a7[1] = 0x8000000100466300;
    a7[2] = 0xD000000000000029;
    a7[3] = 0x8000000100466320;
    v37 = &enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:);
LABEL_8:
    (*(v138 + 104))(a7, *v37, v139);
    sub_1001D07D8();
    return swift_willThrowTypedImpl();
  }

  v28 = v27;
  v125 = a7;
  v121 = *(v19 + 96);
  v121(v25, v18);
  v29 = *v25;
  v30 = v25[1];
  v120 = v29;
  v136(v23, v137, v18);
  if (v26(v23, v18) != v28)
  {

    a7 = v125;
    goto LABEL_7;
  }

  v121(v23, v18);
  v31 = *v23;
  v32 = v23[1];
  v33 = v135;
  v34 = v134;
  v35 = v131;
  sub_1001CB91C(v135, v132, v133, v131);
  if (v34)
  {

    return (*(v138 + 32))(v125, v35, v139);
  }

  v38 = v130;
  sub_1001CDF98(v33, v130, v31, v32, v129);
  v39 = v126;
  static String.Encoding.ascii.getter();
  v40 = v120;
  v41 = v30;
  v42 = String.data(using:allowLossyConversion:)();
  v44 = v43;
  (*(v127 + 8))(v39, v128);
  if (v44 >> 60 == 15)
  {

    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000958E4(v45, qword_1005064B8);
    v46 = v41;

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v141[0] = v50;
      *v49 = 136642819;
      v51 = sub_1002FFA0C(v40, v46, v141);

      *(v49 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v47, v48, "Invalid auth string provided, cannot decode %{sensitive}s in ascii", v49, 0xCu);
      sub_1000752F4(v50);
    }

    else
    {
    }

    a7 = v125;
    *v125 = 0xD000000000000023;
    a7[1] = 0x8000000100466350;
    v37 = &enum case for JPKIInternalTypes.InternalError.typeMismatch(_:);
    goto LABEL_8;
  }

  v52 = v123;
  v53 = v122;
  v54 = v124;
  (*(v123 + 16))(v122, v38, v124);
  v55 = (*(v52 + 88))(v53, v54);
  if (v55 == enum case for JPKIInternalTypes.CertificateType.user(_:))
  {
    v56 = -104;
  }

  else
  {
    if (v55 != enum case for JPKIInternalTypes.CertificateType.signing(_:))
    {
LABEL_91:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v56 = -101;
  }

  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10040AA50;
  *(v57 + 32) = 9216;
  *(v57 + 34) = 1;
  *(v57 + 35) = v56;
  v58 = v44 >> 62;
  if ((v44 >> 62) <= 1)
  {
    if (!v58)
    {
      v59 = HIWORD(v44);
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (v58 != 2)
  {
LABEL_32:
    LOBYTE(v59) = 0;
    goto LABEL_33;
  }

  v61 = *(v42 + 16);
  v60 = *(v42 + 24);
  v62 = __OFSUB__(v60, v61);
  v59 = v60 - v61;
  if (v62)
  {
    __break(1u);
LABEL_27:
    LODWORD(v59) = HIDWORD(v42) - v42;
    if (__OFSUB__(HIDWORD(v42), v42))
    {
      __break(1u);
    }

    v59 = v59;
  }

  if ((v59 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_87:
    swift_once();
    goto LABEL_38;
  }

  if (v59 > 0xFF)
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  *(v57 + 36) = v59;
  v63 = sub_1002B3B94(v57);
  v65 = v64;

  v142 = v63;
  v143 = v65;
  Data.append(_:)();
  v32 = v42;
  if (v143 >> 62 == 2)
  {
    v66 = *(v142 + 24);
  }

  v67 = sub_100068FC4(&qword_100502608, &qword_100409A28);
  v141[3] = v67;
  v141[4] = sub_100075C60(&qword_100502610, &qword_100502608, &qword_100409A28);
  LOBYTE(v141[0]) = 0;
  v140 = *sub_1000752B0(v141, v67);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(v141);
  v68 = v142;
  v69 = v143;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v141[0] = 0;
  v71 = sub_100053EE8(v135, isa, v141);

  v72 = v141[0];
  if (v71)
  {
    sub_10009393C(0, &qword_100506538, off_1004BE528);
    v73 = v72;
    v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v89 = sub_1001D0830();
    sub_10006A178(v74, v76);
    sub_10006A178(v142, v143);
    v90 = sub_1003B0984(v89);
    if (v90 > 28417)
    {
      v91 = v32;
      if (v90 != 28418)
      {
        if (v90 == 36864)
        {

          return sub_10006A2D0(v32, v44);
        }

        goto LABEL_54;
      }
    }

    else
    {
      v91 = v32;
      if (v90 == 27012)
      {
        if (qword_100501A60 != -1)
        {
          swift_once();
        }

        v104 = type metadata accessor for Logger();
        sub_1000958E4(v104, qword_1005064B8);
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&_mh_execute_header, v105, v106, "User authentication method blocked", v107, 2u);
        }

        (*(v138 + 104))(v125, enum case for JPKIInternalTypes.InternalError.userAuthenticationMethodBlocked(_:), v139);
        goto LABEL_84;
      }

      if (v90 != 27013)
      {
LABEL_54:
        v97 = v91;
        if (qword_100501A60 != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        sub_1000958E4(v98, qword_1005064B8);
        v99 = v89;
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v141[0] = v103;
          *v102 = 33554946;
          *(v102 + 4) = sub_1003B0984(v99);

          *(v102 + 6) = 2080;
          *(v102 + 8) = sub_1002FFA0C(0xD00000000000005CLL, 0x80000001004663D0, v141);
          _os_log_impl(&_mh_execute_header, v100, v101, "Unexpected status word %hu returned during %s", v102, 0x10u);
          sub_1000752F4(v103);
        }

        else
        {
        }

        (*(v138 + 104))(v125, enum case for JPKIInternalTypes.InternalError.unknownError(_:), v139);
        sub_1001D07D8();
        swift_willThrowTypedImpl();

        v108 = v97;
        return sub_10006A2D0(v108, v44);
      }
    }

    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_1000958E4(v92, qword_1005064B8);
    sub_100069E2C(v91, v44);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v93, v94))
    {
      sub_10006A2D0(v91, v44);
LABEL_74:

      v141[0] = 0;
      v141[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      strcpy(v141, "Wrong length (");
      HIBYTE(v141[1]) = -18;
      if (v58 > 1)
      {
        v112 = 0;
        if (v58 != 2)
        {
          goto LABEL_83;
        }

        v114 = *(v91 + 16);
        v113 = *(v91 + 24);
        v62 = __OFSUB__(v113, v114);
        v112 = v113 - v114;
        if (!v62)
        {
          goto LABEL_83;
        }

        __break(1u);
      }

      else if (!v58)
      {
        v112 = BYTE6(v44);
LABEL_83:
        v142 = v112;
        v115._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v115);

        v116._countAndFlagsBits = 0x77656E20666F2029;
        v116._object = 0xED00006874756120;
        String.append(_:)(v116);
        v117 = v141[0];
        v118 = v141[1];
        v119 = v125;
        *v125 = 0xD00000000000001FLL;
        v119[1] = 0x8000000100466430;
        v119[2] = v117;
        v119[3] = v118;
        (*(v138 + 104))(v119, enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:), v139);
LABEL_84:
        sub_1001D07D8();
        swift_willThrowTypedImpl();

        v108 = v91;
        return sub_10006A2D0(v108, v44);
      }

      LODWORD(v112) = HIDWORD(v91) - v91;
      if (!__OFSUB__(HIDWORD(v91), v91))
      {
        v112 = v112;
        goto LABEL_83;
      }

      __break(1u);
      goto LABEL_90;
    }

    v95 = swift_slowAlloc();
    *v95 = 134217984;
    if (v58 > 1)
    {
      if (v58 != 2)
      {
        v96 = 0;
        goto LABEL_73;
      }

      v110 = *(v91 + 16);
      v109 = *(v91 + 24);
      v62 = __OFSUB__(v109, v110);
      v96 = v109 - v110;
      if (!v62)
      {
        goto LABEL_73;
      }

      __break(1u);
    }

    else if (!v58)
    {
      v96 = BYTE6(v44);
LABEL_73:
      *(v95 + 4) = v96;
      v111 = v95;
      sub_10006A2D0(v91, v44);
      _os_log_impl(&_mh_execute_header, v93, v94, "Wrong length (%ld) of provided authentication", v111, 0xCu);

      goto LABEL_74;
    }

    LODWORD(v96) = HIDWORD(v91) - v91;
    if (__OFSUB__(HIDWORD(v91), v91))
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v96 = v96;
    goto LABEL_73;
  }

  v77 = v141[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10006A178(v68, v69);
  if (qword_100501A60 != -1)
  {
    goto LABEL_87;
  }

LABEL_38:
  v78 = type metadata accessor for Logger();
  sub_1000958E4(v78, qword_1005064B8);
  swift_errorRetain();
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v141[0] = v82;
    *v81 = 136315138;
    swift_getErrorValue();
    v83 = Error.localizedDescription.getter();
    v85 = sub_1002FFA0C(v83, v84, v141);

    *(v81 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v79, v80, "Currenty authentication invalid and failed with error %s", v81, 0xCu);
    sub_1000752F4(v82);
  }

  swift_getErrorValue();
  v86 = Error.localizedDescription.getter();
  v87 = v125;
  *v125 = 0xD000000000000027;
  v87[1] = 0x80000001004662B0;
  v87[2] = v86;
  v87[3] = v88;
  (*(v138 + 104))(v87, enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:), v139);
  sub_1001D07D8();
  swift_willThrowTypedImpl();
  sub_10006A2D0(v32, v44);
}

uint64_t sub_1001CDF98(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v109 = a1;
  v110 = a5;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JPKIInternalTypes.CertificateType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a2, v13);
  v18 = (*(v14 + 88))(v17, v13);
  v19 = enum case for JPKIInternalTypes.CertificateType.user(_:);
  if (v18 != enum case for JPKIInternalTypes.CertificateType.user(_:) && v18 != enum case for JPKIInternalTypes.CertificateType.signing(_:))
  {
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_87:
      v112[0] = 0;
      v112[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v112[0] = 0xD000000000000017;
      v112[1] = 0x8000000100466470;
      LOWORD(v111) = sub_1003B0984(v19);
      v105._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v105);

      v106._countAndFlagsBits = 0xD000000000000011;
      v106._object = 0x8000000100466490;
      String.append(_:)(v106);
      v107._countAndFlagsBits = 0xD000000000000046;
      v107._object = 0x80000001004664B0;
      String.append(_:)(v107);
    }
  }

  v21 = v18;
  static String.Encoding.ascii.getter();
  v22 = String.data(using:allowLossyConversion:)();
  v24 = v23;
  (*(v9 + 8))(v12, v8);
  if (v24 >> 60 != 15)
  {
    sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10040AA50;
    *(v34 + 32) = 0x2000;
    *(v34 + 34) = 0;
    if (v21 == v19)
    {
      v35 = -104;
    }

    else
    {
      v35 = -101;
    }

    *(v34 + 35) = v35;
    v36 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v36 != 2)
      {
        goto LABEL_27;
      }

      v39 = *(v22 + 16);
      v38 = *(v22 + 24);
      v40 = __OFSUB__(v38, v39);
      v37 = v38 - v39;
      if (!v40)
      {
LABEL_24:
        if ((v37 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_81;
        }

        if (v37 <= 0xFF)
        {
LABEL_28:
          *(v34 + 36) = v37;
          v41 = sub_1002B3B94(v34);
          v43 = v42;

          v113 = v41;
          v114 = v43;
          Data.append(_:)();
          if (v114 >> 62 == 2)
          {
            v44 = *(v113 + 24);
          }

          v108[0] = v22;
          v45 = sub_100068FC4(&qword_100502608, &qword_100409A28);
          v112[3] = v45;
          v112[4] = sub_100075C60(&qword_100502610, &qword_100502608, &qword_100409A28);
          LOBYTE(v112[0]) = 0;
          LOBYTE(v111) = *sub_1000752B0(v112, v45);
          Data._Representation.replaceSubrange(_:with:count:)();
          sub_1000752F4(v112);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v112[0] = 0;
          v47 = sub_100053EE8(v109, isa, v112);

          v48 = v112[0];
          if (!v47)
          {
            v55 = v112[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
LABEL_34:
            if (qword_100501A60 == -1)
            {
LABEL_35:
              v56 = type metadata accessor for Logger();
              sub_1000958E4(v56, qword_1005064B8);
              swift_errorRetain();
              v57 = Logger.logObject.getter();
              v58 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v57, v58))
              {
                v59 = swift_slowAlloc();
                v60 = swift_slowAlloc();
                v112[0] = v60;
                *v59 = 136315138;
                swift_getErrorValue();
                v61 = Error.localizedDescription.getter();
                v63 = sub_1002FFA0C(v61, v62, v112);

                *(v59 + 4) = v63;
                _os_log_impl(&_mh_execute_header, v57, v58, "Authentication invalid and failed with error %s", v59, 0xCu);
                sub_1000752F4(v60);
              }

              swift_getErrorValue();
              v64 = Error.localizedDescription.getter();
              v65 = v110;
              *v110 = 0xD000000000000027;
              v65[1] = 0x80000001004662B0;
              v65[2] = v64;
              v65[3] = v66;
              v67 = enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:);
              v68 = type metadata accessor for JPKIInternalTypes.InternalError();
              (*(*(v68 - 8) + 104))(v65, v67, v68);
              sub_1001D07D8();
              swift_willThrowTypedImpl();
              sub_10006A2D0(v108[0], v24);

              return sub_10006A178(v113, v114);
            }

LABEL_81:
            swift_once();
            goto LABEL_35;
          }

          sub_10009393C(0, &qword_100506538, off_1004BE528);
          v49 = v48;
          v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v53 = v108[1];
          v54 = sub_1001D0830();
          if (v53)
          {
            sub_10006A178(v50, v52);
            goto LABEL_34;
          }

          v19 = v54;
          sub_10006A178(v50, v52);
          v69 = sub_1003B0984(v19);
          if (v69 != 27012)
          {
            if (v69 == 36864)
            {
              sub_10006A2D0(v108[0], v24);

              return sub_10006A178(v113, v114);
            }

            if ((v69 - 25552) >= 0xFFFFFFF0)
            {
              v82 = sub_1003B0984(v19) & 0xF;
              v83 = v108[0];
              if (qword_100501A60 != -1)
              {
                swift_once();
              }

              v84 = type metadata accessor for Logger();
              sub_1000958E4(v84, qword_1005064B8);
              v85 = Logger.logObject.getter();
              v86 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v85, v86))
              {
                v87 = swift_slowAlloc();
                *v87 = 134217984;
                *(v87 + 4) = v82;
                _os_log_impl(&_mh_execute_header, v85, v86, "Incorrect user authentication, %ld retries left", v87, 0xCu);
                v83 = v108[0];
              }

              v88 = v110;
              *v110 = v82;
              v89 = enum case for JPKIInternalTypes.InternalError.incorrectUserAuthentication(_:);
              v90 = type metadata accessor for JPKIInternalTypes.InternalError();
              (*(*(v90 - 8) + 104))(v88, v89, v90);
              sub_1001D07D8();
              swift_willThrowTypedImpl();
              v91 = v83;
              goto LABEL_79;
            }

            v76 = v108[0];
            if (v69 != 26368)
            {
              goto LABEL_87;
            }

            if (qword_100501A60 != -1)
            {
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            sub_1000958E4(v77, qword_1005064B8);
            sub_100069E2C(v76, v24);
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v78, v79))
            {
              sub_10006A2D0(v76, v24);
LABEL_68:

              v112[0] = 0;
              v112[1] = 0xE000000000000000;
              _StringGuts.grow(_:)(34);

              strcpy(v112, "Wrong length (");
              HIBYTE(v112[1]) = -18;
              if (v36 > 1)
              {
                v95 = 0;
                if (v36 != 2)
                {
                  goto LABEL_77;
                }

                v97 = *(v108[0] + 16);
                v96 = *(v108[0] + 24);
                v40 = __OFSUB__(v96, v97);
                v95 = v96 - v97;
                if (!v40)
                {
                  goto LABEL_77;
                }

                __break(1u);
              }

              else if (!v36)
              {
                v95 = BYTE6(v24);
LABEL_77:
                v111 = v95;
                v98._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v98);

                v99._countAndFlagsBits = 0xD000000000000012;
                v99._object = 0x8000000100466500;
                String.append(_:)(v99);
                v100 = v112[0];
                v101 = v112[1];
                v102 = v110;
                *v110 = 0xD000000000000027;
                v102[1] = 0x80000001004662B0;
                v102[2] = v100;
                v102[3] = v101;
                v103 = enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:);
                v104 = type metadata accessor for JPKIInternalTypes.InternalError();
                (*(*(v104 - 8) + 104))(v102, v103, v104);
                sub_1001D07D8();
LABEL_78:
                swift_willThrowTypedImpl();
                v91 = v108[0];
LABEL_79:
                sub_10006A2D0(v91, v24);

                return sub_10006A178(v113, v114);
              }

              LODWORD(v95) = HIDWORD(v76) - v76;
              if (!__OFSUB__(HIDWORD(v76), v76))
              {
                v95 = v95;
                goto LABEL_77;
              }

              __break(1u);
LABEL_85:
              __break(1u);
            }

            v80 = swift_slowAlloc();
            *v80 = 134217984;
            if (v36 > 1)
            {
              if (v36 != 2)
              {
                v81 = 0;
                goto LABEL_67;
              }

              v93 = *(v108[0] + 16);
              v92 = *(v108[0] + 24);
              v40 = __OFSUB__(v92, v93);
              v81 = v92 - v93;
              if (!v40)
              {
                goto LABEL_67;
              }

              __break(1u);
            }

            else if (!v36)
            {
              v81 = BYTE6(v24);
LABEL_67:
              *(v80 + 4) = v81;
              v94 = v80;
              v76 = v108[0];
              sub_10006A2D0(v108[0], v24);
              _os_log_impl(&_mh_execute_header, v78, v79, "Wrong length (%ld) of provided authentication", v94, 0xCu);

              goto LABEL_68;
            }

            LODWORD(v81) = HIDWORD(v108[0]) - LODWORD(v108[0]);
            if (__OFSUB__(HIDWORD(v108[0]), v108[0]))
            {
              goto LABEL_85;
            }

            v81 = v81;
            goto LABEL_67;
          }

          if (qword_100501A60 == -1)
          {
LABEL_43:
            v70 = type metadata accessor for Logger();
            sub_1000958E4(v70, qword_1005064B8);
            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              *v73 = 0;
              _os_log_impl(&_mh_execute_header, v71, v72, "User authentication method blocked", v73, 2u);
            }

            v74 = enum case for JPKIInternalTypes.InternalError.userAuthenticationMethodBlocked(_:);
            v75 = type metadata accessor for JPKIInternalTypes.InternalError();
            (*(*(v75 - 8) + 104))(v110, v74, v75);
            sub_1001D07D8();
            goto LABEL_78;
          }

LABEL_83:
          swift_once();
          goto LABEL_43;
        }

        __break(1u);
LABEL_27:
        LOBYTE(v37) = 0;
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v36)
    {
      v37 = HIWORD(v24);
      goto LABEL_28;
    }

    LODWORD(v37) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      __break(1u);
      goto LABEL_83;
    }

    v37 = v37;
    goto LABEL_24;
  }

  if (qword_100501A60 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000958E4(v25, qword_1005064B8);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v112[0] = v29;
    *v28 = 136642819;
    *(v28 + 4) = sub_1002FFA0C(a3, a4, v112);
    _os_log_impl(&_mh_execute_header, v26, v27, "Invalid auth string provided, cannot decode %{sensitive}s in ascii", v28, 0xCu);
    sub_1000752F4(v29);
  }

  v30 = v110;
  *v110 = 0xD00000000000001ELL;
  v30[1] = 0x8000000100466450;
  v31 = enum case for JPKIInternalTypes.InternalError.typeMismatch(_:);
  v32 = type metadata accessor for JPKIInternalTypes.InternalError();
  (*(*(v32 - 8) + 104))(v30, v31, v32);
  sub_1001D07D8();
  return swift_willThrowTypedImpl();
}

void sub_1001CEE1C(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, void *a7)
{
  v154 = a6;
  v155 = a7;
  v153 = a5;
  v11 = type metadata accessor for JPKIInternalTypes.InternalError();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = v140 - v17;
  v19 = sub_1001CFD54(a1, a2, a3, (v140 - v17));
  if (v7)
  {
    (*(v12 + 32))(v155, v18, v11);
    return;
  }

  v21 = v19;
  v152 = v20;
  v150 = 0;
  v143 = v16;
  v144 = a2;
  v145 = a3;
  v147 = v12;
  v148 = v11;
  if (qword_100501A60 != -1)
  {
    swift_once();
  }

  v149 = a1;
  v22 = type metadata accessor for Logger();
  v23 = sub_1000958E4(v22, qword_1005064B8);
  v24 = v152;
  sub_100069E2C(v21, v152);
  v146 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  sub_10006A178(v21, v24);
  v27 = os_log_type_enabled(v25, v26);
  v151 = v21;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v157 = v29;
    *v28 = 136315138;
    v30 = v150;
    v31 = sub_100288788(v151, v24);
    v150 = v30;
    v156 = v31;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    v35 = sub_1002FFA0C(v32, v34, &v157);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "Performing biometric with ACL %s", v28, 0xCu);
    sub_1000752F4(v29);
  }

  v154 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v37 = String._bridgeToObjectiveC()();
  v38 = Data._bridgeToObjectiveC()().super.isa;
  v39 = v149;
  v41 = sub_1003AF3C4(v149, v40);
  v42 = [v41 seid];

  v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v46 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v43, v45);
  v157 = 0;
  v47 = isa;
  v48 = [v154 performChainAuthIfNeededForACL:isa operation:v37 auth:v38 seHandle:v39 seid:v46 error:&v157];

  if (v157)
  {
    v49 = v157;

    swift_willThrow();
    v50 = v49;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v155;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v157 = v56;
      *v55 = 136315138;
      swift_getErrorValue();
      v57 = Error.localizedDescription.getter();
      v59 = sub_1002FFA0C(v57, v58, &v157);

      *(v55 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failed to perform chain verification : %s", v55, 0xCu);
      sub_1000752F4(v56);
    }

    v60 = v152;
    v61 = _convertErrorToNSError(_:)();
    v62 = [v61 code];

    *v54 = v62;
    (*(v147 + 104))(v54, enum case for JPKIInternalTypes.InternalError.biometryFailed(_:), v148);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v151, v60);

    return;
  }

  v63 = v48;
  sub_1003AF2D8(v39);
  v64 = v155;
  if (!v63)
  {
    *v155 = 0xD00000000000001ALL;
    v64[1] = 0x8000000100466580;
    (*(v147 + 104))(v64, enum case for JPKIInternalTypes.InternalError.operationApprovalFailed(_:), v148);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v151, v152);
    return;
  }

  v65 = [v63 resolvedAuthorization];

  v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v39;
  v69 = v68;

  v70 = v150;
  v71 = v143;
  sub_1001CB91C(v39, v144, v145, v143);
  if (v70)
  {
    sub_10006A178(v151, v152);
    sub_10006A178(v66, v69);
    (*(v147 + 32))(v64, v71, v148);
LABEL_14:

    return;
  }

  v140[1] = 0;
  v150 = sub_1002B3B94(&off_1004C4880);
  v153 = v72;
  v73 = Data._bridgeToObjectiveC()().super.isa;
  v157 = 0;
  v74 = sub_1003AEB5C(v39, v73, &v157);

  v154 = v66;
  if (!v74)
  {
    v100 = v157;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v145 = v63;
      v104 = v103;
      v105 = swift_slowAlloc();
      v144 = v69;
      v106 = v105;
      v157 = v105;
      *v104 = 136315138;
      swift_getErrorValue();
      v107 = Error.localizedDescription.getter();
      v109 = v64;
      v110 = sub_1002FFA0C(v107, v108, &v157);

      *(v104 + 4) = v110;
      v64 = v109;
      _os_log_impl(&_mh_execute_header, v101, v102, "Failed to get nonce %s", v104, 0xCu);
      sub_1000752F4(v106);
      v69 = v144;

      v63 = v145;
    }

    v111 = v152;
    v157 = 0;
    v158 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v157 = 0xD000000000000015;
    v158 = 0x80000001004665A0;
    swift_getErrorValue();
    v112._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v112);

    v113 = v158;
    *v64 = v157;
    v64[1] = v113;
    (*(v147 + 104))(v64, enum case for JPKIInternalTypes.InternalError.operationApprovalFailed(_:), v148);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v151, v111);
    sub_10006A178(v150, v153);
    sub_10006A178(v154, v69);

    goto LABEL_14;
  }

  v145 = v63;
  v75 = v157;
  v76 = sub_1003B0934(v74);

  v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  v141 = objc_opt_self();
  v144 = v69;
  v80 = Data._bridgeToObjectiveC()().super.isa;
  v82 = sub_1003AF3C4(v67, v81);
  v83 = [v82 seid];

  v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  v87 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v84, v86);
  v88 = Data._bridgeToObjectiveC()().super.isa;
  v89 = String._bridgeToObjectiveC()();
  v142 = v77;
  v143 = v79;
  v90 = Data._bridgeToObjectiveC()().super.isa;
  v157 = 0;
  v91 = [v141 performOperationApprovalV3:v80 seid:v87 acl:v88 operation:v89 nonce:v90 error:&v157];

  v92 = v157;
  if (!v91)
  {
    v114 = v92;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v157 = v118;
      *v117 = 136315138;
      swift_getErrorValue();
      v119 = Error.localizedDescription.getter();
      v121 = sub_1002FFA0C(v119, v120, &v157);

      *(v117 + 4) = v121;
      _os_log_impl(&_mh_execute_header, v115, v116, "Failed to authorize : %s", v117, 0xCu);
      sub_1000752F4(v118);
    }

    v122 = v152;
    v123 = v144;
    v63 = v145;
    v124 = v155;
    v157 = 0;
    v158 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v157 = 0xD000000000000017;
    v158 = 0x80000001004665C0;
    swift_getErrorValue();
    v125._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v125);

    v126 = v158;
    *v124 = v157;
    v124[1] = v126;
    (*(v147 + 104))(v124, enum case for JPKIInternalTypes.InternalError.operationApprovalFailed(_:), v148);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v151, v122);
    sub_10006A178(v150, v153);
    sub_10006A178(v154, v123);

    sub_10006A178(v142, v143);
    goto LABEL_14;
  }

  v93 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;

  v96 = Data._bridgeToObjectiveC()().super.isa;
  v157 = 0;
  v97 = sub_1003AEF50();

  v98 = v145;
  if (v97)
  {
    v99 = v157;

    sub_10006A178(v151, v152);
    sub_10006A178(v150, v153);
    sub_10006A178(v154, v144);
    sub_10006A178(v93, v95);
    sub_10006A178(v142, v143);
  }

  else
  {
    v127 = v157;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v149 = v95;
      v131 = v130;
      v132 = swift_slowAlloc();
      v157 = v132;
      *v131 = 136315138;
      swift_getErrorValue();
      v133 = Error.localizedDescription.getter();
      v135 = sub_1002FFA0C(v133, v134, &v157);

      *(v131 + 4) = v135;
      _os_log_impl(&_mh_execute_header, v128, v129, "Applet rejected OP : %s", v131, 0xCu);
      sub_1000752F4(v132);
      v136 = v155;

      v95 = v149;

      v137 = v152;
    }

    else
    {

      v137 = v152;
      v136 = v155;
    }

    v157 = 0;
    v158 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v157 = 0xD000000000000014;
    v158 = 0x80000001004665E0;
    swift_getErrorValue();
    v138._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v138);

    v139 = v158;
    *v136 = v157;
    v136[1] = v139;
    (*(v147 + 104))(v136, enum case for JPKIInternalTypes.InternalError.operationApprovalFailed(_:), v148);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v151, v137);
    sub_10006A178(v150, v153);
    sub_10006A178(v154, v144);

    sub_10006A178(v93, v95);
    sub_10006A178(v142, v143);
  }
}

uint64_t sub_1001CFD54(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = v4;
  v10 = type metadata accessor for JPKIInternalTypes.InternalError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  v29 = xmmword_1004098E0;
  sub_10007A474(a2, a3, &off_1004C4858, a1, &v29);
  if (!v4)
  {
    v18 = *(&v29 + 1);
    if (*(&v29 + 1) >> 60 != 15)
    {
      v10 = v29;
      sub_100069E2C(v29, *(&v29 + 1));
      sub_10006A2D0(v10, v18);
      return v10;
    }

    sub_1001D07D8();
    v6 = swift_allocError();
    *v19 = 0xD000000000000013;
    v19[1] = 0x8000000100466630;
    (*(v11 + 104))(v19, enum case for JPKIInternalTypes.InternalError.internalError(_:), v10);
    swift_willThrow();
  }

  sub_10006A2D0(v29, *(&v29 + 1));
  *&v29 = v6;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    (*(v11 + 32))(v15, v17, v10);
    (*(v11 + 16))(a4, v15, v10);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v15, v10);
  }

  else
  {

    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    *&v29 = 0xD000000000000021;
    *(&v29 + 1) = 0x8000000100466600;
    v30 = sub_100288788(a2, a3);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 2112032;
    v24._object = 0xE300000000000000;
    String.append(_:)(v24);
    swift_getErrorValue();
    v25._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v25);

    v26 = *(&v29 + 1);
    *a4 = v29;
    a4[1] = v26;
    (*(v11 + 104))(a4, enum case for JPKIInternalTypes.InternalError.internalError(_:), v10);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
  }

  return v10;
}

uint64_t sub_1001D014C(uint64_t a1)
{
  v2 = SESKeyGetDesignatedKeys();
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2;
  sub_10009393C(0, &qword_100504178, SESDesignatedKey_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

LABEL_22:
  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_23:

LABEL_24:
    notify_post("com.apple.private.seservice.designatedkeynotfound");
    v29 = enum case for JPKIInternalTypes.InternalError.designatedKeyNotFound(_:);
    v30 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v30 - 8) + 104))(a1, v29, v30);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    return a1;
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if ([v7 designation] == 2)
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_23;
    }
  }

  v10 = objc_opt_self();
  v11 = [v8 assetACL];
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v12, v14);
  v32 = 0;
  v16 = [v10 getACLfromAssetACL:isa error:&v32];

  v17 = v32;
  if (v16)
  {
    a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v18 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_1005064B8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_1002FFA0C(v24, v25, &v32);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to decode assetACL? %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    v27 = enum case for JPKIInternalTypes.InternalError.designatedKeyCorrupt(_:);
    v28 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v28 - 8) + 104))(a1, v27, v28);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
  }

  return a1;
}

uint64_t sub_1001D059C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  result = sub_1001AD500(a1, a2, 227);
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1001AD500(result, v6, 218);
    v11 = v10;
    sub_10006A178(v7, v8);
    v12 = *a3;
    v13 = a3[1];
    *a3 = v9;
    a3[1] = v11;
    return sub_10006A2D0(v12, v13);
  }

  return result;
}

Swift::Int sub_1001D0648()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10040E59E[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001D06D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10040E59E[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1001D071C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D095C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001D0760()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_1005064B8);
  sub_1000958E4(v0, qword_1005064B8);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1001D07D8()
{
  result = qword_100506530;
  if (!qword_100506530)
  {
    type metadata accessor for JPKIInternalTypes.InternalError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506530);
  }

  return result;
}

id sub_1001D0830()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = 0;
  v2 = sub_1000596F0(ObjCClassFromMetadata, isa, &v6);

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1001D0908()
{
  result = qword_100506540;
  if (!qword_100506540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506540);
  }

  return result;
}

uint64_t sub_1001D095C(unsigned __int8 a1)
{
  if (a1 <= 0xAu)
  {
    if (a1 > 7u)
    {
      if (a1 == 8)
      {
        return 8;
      }

      if (a1 == 10)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == 1)
      {
        return 2;
      }

      if (a1 == 2)
      {
        return 3;
      }
    }
  }

  else if (a1 <= 0x17u)
  {
    if (a1 == 11)
    {
      return 1;
    }

    if (a1 == 23)
    {
      return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x18u:
        return 4;
      case 0x1Au:
        return 7;
      case 0x1Bu:
        return 5;
    }
  }

  return 9;
}

BOOL sub_1001D0A10()
{
  v0 = [objc_opt_self() sharedHardwareManagerWithNoUI];
  if ([v0 getHwSupport]!= 2)
  {
LABEL_8:

    return 0;
  }

  v12 = 0;
  v1 = [v0 getRadioEnabledState:&v12];
  if (v1)
  {
    v2 = v1;
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B2C8);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v4;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "NF Domain error %@ encountered while getting radio enabled state", v7, 0xCu);
      sub_1000C2998(v8);

      v4 = v5;
      v5 = v0;
      v0 = v9;
    }

    goto LABEL_8;
  }

  return v12 == 1;
}

id sub_1001D0C0C(id result, unint64_t a2, uint64_t a3, void (*a4)(id *, id *, uint64_t))
{
  v14 = result;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v11)
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a2 + 8 * j + 32);
      }

      v9 = result;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = result;
      a4(&v14, &v13, a3);

      if (v4)
      {
      }

      if (v10 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v11 = result;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return result;
}

void *sub_1001D0D38(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a1;
  sub_10019F3C0(0, v3, 0);
  v5 = v4 + 56;
  v6 = -1 << *(v4 + 32);
  result = _HashTable.startBucket.getter();
  v8 = result;
  v9 = 0;
  v28 = v4 + 64;
  v29 = v3;
  v30 = v4;
  v31 = v4 + 56;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v32 = v9;
    v34 = *(v4 + 36);
    v12 = (*(v4 + 48) + 16 * v8);
    v13 = *v12;
    v14 = v12[1];
    sub_100069E2C(*v12, v14);
    sub_100069E2C(v13, v14);
    v33 = v2;
    sub_100288788(v13, v14);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v15 = BidirectionalCollection<>.joined(separator:)();
    v17 = v16;

    sub_10006A178(v13, v14);
    result = sub_10006A178(v13, v14);
    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_10019F3C0((v18 > 1), v19 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[2 * v19];
    v20[4] = v15;
    v20[5] = v17;
    v4 = v30;
    v5 = v31;
    v10 = 1 << *(v30 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v21 = *(v31 + 8 * v11);
    if ((v21 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(v30 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v8 & 0x3F));
    if (v22)
    {
      v10 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v2 = v33;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v25 = (v28 + 8 * v11);
      v2 = v33;
      while (v24 < (v10 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1000937D4(v8, v34, 0);
          v10 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v8, v34, 0);
    }

LABEL_4:
    v9 = v32 + 1;
    v8 = v10;
    if (v32 + 1 == v29)
    {
      return _swiftEmptyArrayStorage;
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

void *sub_1001D1000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_10019F4A4(0, v1, 0);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = v2 + 72;
  v25 = v1;
  v26 = v2 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v27 = v7;
    v28 = *(v2 + 36);
    v10 = *(*(v2 + 56) + 8 * v6);
    v11 = v2;
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    result = sub_100069E2C(v12, v13);
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_10019F4A4((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v12;
    v16[5] = v13;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v2 = v11;
    v3 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(v2 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1000937D4(v6, v28, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v6, v28, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v25)
    {
      return _swiftEmptyArrayStorage;
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

unint64_t sub_1001D193C()
{
  v1 = *v0;
  v2 = 0x416567616B636170;
  v3 = 0x6E49656C75646F6DLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x657A696D6F527369;
  if (v1 != 3)
  {
    v4 = 0x737574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746169636F737361;
  if (v1 != 1)
  {
    v5 = 0x4941656C75646F6DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001D1A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001DA928(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D1A70(uint64_t a1)
{
  v2 = sub_1001D8304();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D1AAC(uint64_t a1)
{
  v2 = sub_1001D8304();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D1AE8()
{
  sub_10006A178(v0[2], v0[3]);
  sub_10006A178(v0[4], v0[5]);
  v1 = v0[6];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_1001D1B5C(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005069A0, &qword_10040E930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001D8304();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 24);
  v18 = *(v3 + 16);
  v19 = v11;
  LOBYTE(v17) = 0;
  sub_100069E2C(v18, v11);
  sub_1000B8890();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_10006A178(v18, v19);
  }

  else
  {
    sub_10006A178(v18, v19);
    v12 = *(v3 + 40);
    v18 = *(v3 + 32);
    v19 = v12;
    LOBYTE(v17) = 1;
    sub_100069E2C(v18, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v18, v19);
    v18 = *(v3 + 48);
    LOBYTE(v17) = 2;
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    sub_1001DB63C(&qword_100506988, sub_1000B8890);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + 56);
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = *(v3 + 57);
    LOBYTE(v17) = 4;
    sub_1001DB708();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_beginAccess();
    v17 = *(v3 + 64);
    v16[15] = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + 72);
    LOBYTE(v17) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001D1E78(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100506858, &unk_10040E8A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  v10 = (v3 + 64);
  *(v3 + 72) = 0;
  v11 = a1[3];
  v12 = a1[4];
  v21 = a1;
  sub_1000752B0(a1, v11);
  sub_1001D8304();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v16 = *(v3 + 64);

    type metadata accessor for SECleanup.Module();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v6;
    LOBYTE(v23) = 0;
    sub_1000B87D4();
    v14 = v5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 16) = v22;
    LOBYTE(v23) = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 32) = v22;
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    LOBYTE(v23) = 2;
    v15 = sub_1001DB63C(&qword_100506868, sub_1000B87D4);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v15;
    *(v3 + 48) = v22;
    LOBYTE(v22) = 3;
    *(v3 + 56) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v23) = 4;
    sub_1001D8358();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 57) = v22;
    LOBYTE(v22) = 5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v23;
    swift_beginAccess();
    v19 = *v10;
    *v10 = v18;

    LOBYTE(v23) = 6;
    LOBYTE(v18) = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v13 + 8))(v9, v14);
    *(v3 + 72) = v18 & 1;
  }

  sub_1000752F4(v21);
  return v3;
}

uint64_t sub_1001D235C()
{
  v1 = v0;
  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(130);
  v77 = v78;
  v2._countAndFlagsBits = 0xD000000000000014;
  v2._object = 0x80000001004667A0;
  String.append(_:)(v2);
  *&v78 = sub_100288788(*(v1 + 16), *(v1 + 24));
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x64696D202020200ALL;
  v7._object = 0xEA0000000000203ALL;
  String.append(_:)(v7);
  *&v78 = sub_100288788(*(v1 + 32), *(v1 + 40));
  v8 = BidirectionalCollection<>.joined(separator:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x647373202020200ALL;
  v12._object = 0xEA0000000000203ALL;
  String.append(_:)(v12);
  *&v78 = sub_100288788(*(v1 + 48), *(v1 + 56));
  v13 = BidirectionalCollection<>.joined(separator:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._object = 0x80000001004667C0;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  *&v78 = *(v0 + 128);
  _print_unlocked<A, B>(_:_:)();
  v18._countAndFlagsBits = 0xD000000000000018;
  v18._object = 0x80000001004667E0;
  String.append(_:)(v18);
  v19 = *(v0 + 80);
  v78 = *(v0 + 64);
  v79 = v19;
  v80 = *(v0 + 96);
  v81 = *(v0 + 112);
  v20._countAndFlagsBits = sub_1000B6CD0();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0xD000000000000017;
  v21._object = 0x8000000100466800;
  String.append(_:)(v21);
  v22 = *(v0 + 120);
  v23 = *(v22 + 16);
  v24 = _swiftEmptyArrayStorage;
  if (v23)
  {
    v63 = v0;
    v76 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v23, 0);
    v25 = 0;
    v26 = _swiftEmptyArrayStorage;
    v65 = v22 + 32;
    v64 = v23;
    while (1)
    {
      v27 = (v65 + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = v28 >> 62;
      v68 = HIDWORD(*v27);
      v67 = v25;
      if ((v28 >> 62) <= 1)
      {
        break;
      }

      if (v30 == 2)
      {
        v66 = v26;
        v33 = *(v29 + 16);
        v32 = *(v29 + 24);
        v31 = v32 - v33;
        if (__OFSUB__(v32, v33))
        {
          goto LABEL_56;
        }

        goto LABEL_13;
      }

LABEL_42:
      v69 = v24;
      v50 = BidirectionalCollection<>.joined(separator:)();
      v52 = v51;

      sub_10006A178(v29, v28);
      sub_10006A178(v29, v28);
      v76 = v26;
      v54 = v26[2];
      v53 = v26[3];
      if (v54 >= v53 >> 1)
      {
        sub_10019F3C0((v53 > 1), v54 + 1, 1);
        v26 = v76;
      }

      v25 = v67 + 1;
      v26[2] = v54 + 1;
      v55 = &v26[2 * v54];
      v55[4] = v50;
      v55[5] = v52;
      v24 = _swiftEmptyArrayStorage;
      if (v67 + 1 == v23)
      {
        v1 = v63;
        goto LABEL_46;
      }
    }

    v66 = v26;
    if (v30)
    {
      if (__OFSUB__(v68, v29))
      {
        goto LABEL_55;
      }

      v31 = v68 - v29;
LABEL_13:
      sub_100069E2C(v29, v28);
      sub_100069E2C(v29, v28);
      if (v31)
      {
LABEL_14:
        v75 = _swiftEmptyArrayStorage;
        v34 = v31 & ~(v31 >> 63);
        sub_10019F3C0(0, v34, 0);
        v24 = v75;
        if (v30 == 2)
        {
          v35 = *(v29 + 16);
LABEL_18:
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_54;
        }

        if (v30 == 1)
        {
          v35 = v29;
          goto LABEL_18;
        }

        if (v31 < 0)
        {
          goto LABEL_57;
        }

        v35 = 0;
LABEL_22:
        while (2)
        {
          if (!v34)
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
          }

          if (v30 == 2)
          {
            if (v35 < *(v29 + 16))
            {
              goto LABEL_48;
            }

            if (v35 >= *(v29 + 24))
            {
              goto LABEL_51;
            }

            v40 = __DataStorage._bytes.getter();
            if (!v40)
            {
              goto LABEL_59;
            }

            v37 = v40;
            v41 = __DataStorage._offset.getter();
            v39 = v35 - v41;
            if (__OFSUB__(v35, v41))
            {
              goto LABEL_53;
            }

LABEL_35:
            v42 = *(v37 + v39);
          }

          else
          {
            if (v30 == 1)
            {
              if (v35 < v29 || v35 >= v29 >> 32)
              {
                goto LABEL_50;
              }

              v36 = __DataStorage._bytes.getter();
              if (!v36)
              {
                goto LABEL_58;
              }

              v37 = v36;
              v38 = __DataStorage._offset.getter();
              v39 = v35 - v38;
              if (__OFSUB__(v35, v38))
              {
                goto LABEL_52;
              }

              goto LABEL_35;
            }

            if (v35 >= BYTE6(v28))
            {
              goto LABEL_49;
            }

            LOWORD(v69) = v29;
            BYTE2(v69) = BYTE2(v29);
            BYTE3(v69) = BYTE3(v29);
            BYTE4(v69) = v68;
            BYTE5(v69) = BYTE5(v29);
            BYTE6(v69) = BYTE6(v29);
            HIBYTE(v69) = HIBYTE(v29);
            v70 = v28;
            v71 = BYTE2(v28);
            v72 = BYTE3(v28);
            v73 = BYTE4(v28);
            v74 = BYTE5(v28);
            v42 = *(&v69 + v35);
          }

          sub_100068FC4(&qword_100502440, &unk_10040B240);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1004098F0;
          *(v43 + 56) = &type metadata for UInt8;
          *(v43 + 64) = &protocol witness table for UInt8;
          *(v43 + 32) = v42;
          v44 = String.init(format:_:)();
          v75 = v24;
          v47 = v24[2];
          v46 = v24[3];
          if (v47 >= v46 >> 1)
          {
            v62 = v44;
            v49 = v45;
            sub_10019F3C0((v46 > 1), v47 + 1, 1);
            v45 = v49;
            v44 = v62;
            v24 = v75;
          }

          v24[2] = v47 + 1;
          v48 = &v24[2 * v47];
          v48[4] = v44;
          v48[5] = v45;
          ++v35;
          --v34;
          if (!--v31)
          {
            break;
          }

          continue;
        }
      }
    }

    else
    {
      v31 = BYTE6(v28);
      if (BYTE6(v28))
      {
        goto LABEL_14;
      }
    }

    v23 = v64;
    v26 = v66;
    goto LABEL_42;
  }

LABEL_46:
  v56 = Array.description.getter();
  v58 = v57;

  v59._countAndFlagsBits = v56;
  v59._object = v58;
  String.append(_:)(v59);

  v60._countAndFlagsBits = 0x617473202020200ALL;
  v60._object = 0xED0000203A737574;
  String.append(_:)(v60);
  LOBYTE(v69) = *(v1 + 136);
  _print_unlocked<A, B>(_:_:)();
  return v77;
}

uint64_t sub_1001D2AA4()
{
  v1 = 6580577;
  v2 = *v0;
  v3 = 0x6C6379636566696CLL;
  if (v2 != 5)
  {
    v3 = 0x737574617473;
  }

  v4 = 0xD000000000000011;
  if (v2 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 6580589;
  if (v2 != 1)
  {
    v5 = 0x746169636F737361;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001D2B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001DAB9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D2BAC(uint64_t a1)
{
  v2 = sub_1001D9FD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2BE8(uint64_t a1)
{
  v2 = sub_1001D9FD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D2C24()
{
  sub_10006A178(v0[2], v0[3]);
  sub_10006A178(v0[4], v0[5]);
  sub_10006A178(v0[6], v0[7]);
  v1 = v0[13];
  v2 = v0[14];
  sub_10006A2D0(v0[9], v0[10]);
  sub_10006A2D0(v1, v2);
  v3 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_1001D2CC0(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100506978, &qword_10040E928);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001D9FD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 24);
  *&v27[0] = *(v3 + 16);
  *(&v27[0] + 1) = v11;
  LOBYTE(v23) = 0;
  sub_100069E2C(*&v27[0], v11);
  sub_1000B8890();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10006A178(*&v27[0], *(&v27[0] + 1));
  if (!v2)
  {
    v12 = *(v3 + 40);
    *&v27[0] = *(v3 + 32);
    *(&v27[0] + 1) = v12;
    LOBYTE(v23) = 1;
    sub_100069E2C(*&v27[0], v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(*&v27[0], *(&v27[0] + 1));
    v14 = *(v3 + 56);
    v30 = *(v3 + 48);
    v31 = v14;
    v29 = 2;
    sub_100069E2C(v30, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v30, v31);
    v15 = *(v3 + 80);
    v27[0] = *(v3 + 64);
    v27[1] = v15;
    v17 = *(v3 + 64);
    v16 = *(v3 + 80);
    v27[2] = *(v3 + 96);
    v28 = *(v3 + 112);
    v23 = v17;
    v24 = v16;
    v25 = *(v3 + 96);
    v26 = *(v3 + 112);
    v22 = 3;
    sub_1000B8828(v27, v20);
    sub_1001DB5E8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20[0] = v23;
    v20[1] = v24;
    v20[2] = v25;
    v21 = v26;
    sub_1000B8860(v20);
    v19 = *(v3 + 120);
    HIBYTE(v18) = 4;
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    sub_1001DB63C(&qword_100506988, sub_1000B8890);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = *(v3 + 128);
    HIBYTE(v18) = 5;
    sub_1001DB6B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = *(v3 + 136);
    HIBYTE(v18) = 6;
    sub_1001DB708();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001D30DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001D31AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SEType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SECleanup()
{
  result = qword_100506800;
  if (!qword_100506800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D32B0()
{
  type metadata accessor for SEType();
  if (v0 <= 0x3F)
  {
    sub_1001D338C(319, &qword_100506810, type metadata accessor for SECleanup.Module);
    if (v1 <= 0x3F)
    {
      sub_1001D338C(319, &unk_100506818, type metadata accessor for SECleanup.Instance);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001D338C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    sub_1000E1E80();
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001D3408(uint64_t *a1)
{
  v4 = sub_100068FC4(&qword_100506878, &qword_10040E8B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  *(v1 + 136) = 2;
  v9 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001D9FD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for SECleanup.Instance();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v13) = 0;
    sub_1000B87D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 16) = v14;
    LOBYTE(v13) = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 32) = v14;
    LOBYTE(v13) = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 48) = v14;
    v19 = 3;
    sub_1001DA028();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v15;
    *(v1 + 64) = v14;
    *(v1 + 80) = v10;
    *(v1 + 96) = v16;
    *(v1 + 112) = v17;
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    v18 = 4;
    sub_1001DB63C(&qword_100506868, sub_1000B87D4);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 120) = v13;
    v18 = 5;
    sub_1001DA07C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 128) = v13;
    v18 = 6;
    sub_1001D8358();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 136) = v13;
  }

  sub_1000752F4(a1);
  return v1;
}

uint64_t sub_1001D38C4(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_100068FC4(&qword_100506958, &qword_10040E908);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_100068FC4(&qword_100506960, &qword_10040E910);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_100068FC4(&qword_100506968, &qword_10040E918);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_100068FC4(&qword_100506970, &qword_10040E920);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001DB498();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1001DB540();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1001DB4EC();
      v21 = v27;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1001DB594();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_1001D3CAC@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1001D3D4C(uint64_t a1)
{
  v2 = sub_1001DB594();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D3D88(uint64_t a1)
{
  v2 = sub_1001DB594();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D3DC4()
{
  v1 = 1684104548;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576696C61;
  }
}

uint64_t sub_1001D3E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001DADF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D3E48(uint64_t a1)
{
  v2 = sub_1001DB498();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D3E84(uint64_t a1)
{
  v2 = sub_1001DB498();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D3EC0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1001D3EFC(uint64_t a1)
{
  v2 = sub_1001DB540();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D3F38(uint64_t a1)
{
  v2 = sub_1001DB540();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D3F74(uint64_t a1)
{
  v2 = sub_1001DB4EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D3FB0(uint64_t a1)
{
  v2 = sub_1001DB4EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D3FEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DAF08(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1001D4038()
{
  result = qword_100506850;
  if (!qword_100506850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506850);
  }

  return result;
}

uint64_t sub_1001D408C(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(30);

  strcpy(v103, "\n\tInstances: ");
  HIWORD(v103[1]) = -4864;
  v4 = _swiftEmptyArrayStorage;
  v5 = *(a1 + 16);
  if (v5)
  {
    v83 = a2;
    v102 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v5, 0);
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v87 = a1 + 32;
    v8 = v5;
    v85 = v5;
    while (1)
    {
      v9 = (v87 + 16 * v6);
      v11 = *v9;
      v10 = v9[1];
      v12 = v10 >> 62;
      v93 = HIDWORD(*v9);
      if ((v10 >> 62) > 1)
      {
        if (v12 == 2)
        {
          v89 = v6;
          v91 = v7;
          v15 = *(v11 + 16);
          v14 = *(v11 + 24);
          v13 = v14 - v15;
          if (__OFSUB__(v14, v15))
          {
            goto LABEL_109;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v89 = v6;
        v91 = v7;
        if (v12)
        {
          if (__OFSUB__(v93, v11))
          {
            goto LABEL_108;
          }

          v13 = v93 - v11;
LABEL_13:
          sub_100069E2C(v11, v10);
          sub_100069E2C(v11, v10);
          if (!v13)
          {
            goto LABEL_42;
          }

LABEL_14:
          v101 = _swiftEmptyArrayStorage;
          v16 = v13 & ~(v13 >> 63);
          sub_10019F3C0(0, v16, 0);
          v4 = v101;
          if (v12 == 2)
          {
            v17 = *(v11 + 16);
LABEL_18:
            if ((v13 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_107;
          }

          if (v12 == 1)
          {
            v17 = v11;
            goto LABEL_18;
          }

          if (v13 < 0)
          {
            goto LABEL_113;
          }

          v17 = 0;
LABEL_22:
          while (2)
          {
            if (!v16)
            {
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
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
              goto LABEL_110;
            }

            if (v12 != 2)
            {
              if (v12 == 1)
              {
                if (v17 < v11 || v17 >= v11 >> 32)
                {
                  goto LABEL_97;
                }

                v18 = __DataStorage._bytes.getter();
                if (!v18)
                {
                  goto LABEL_115;
                }

                v19 = v18;
                v20 = __DataStorage._offset.getter();
                v21 = v17 - v20;
                if (__OFSUB__(v17, v20))
                {
                  goto LABEL_99;
                }

LABEL_35:
                v24 = *(v19 + v21);
              }

              else
              {
                if (v17 >= BYTE6(v10))
                {
                  goto LABEL_96;
                }

                LOWORD(v95) = v11;
                BYTE2(v95) = BYTE2(v11);
                BYTE3(v95) = BYTE3(v11);
                BYTE4(v95) = v93;
                BYTE5(v95) = BYTE5(v11);
                BYTE6(v95) = BYTE6(v11);
                HIBYTE(v95) = HIBYTE(v11);
                v96 = v10;
                v97 = BYTE2(v10);
                v98 = BYTE3(v10);
                v99 = BYTE4(v10);
                v100 = BYTE5(v10);
                v24 = *(&v95 + v17);
              }

              sub_100068FC4(&qword_100502440, &unk_10040B240);
              v25 = swift_allocObject();
              *(v25 + 16) = xmmword_1004098F0;
              *(v25 + 56) = &type metadata for UInt8;
              *(v25 + 64) = &protocol witness table for UInt8;
              *(v25 + 32) = v24;
              v26 = String.init(format:_:)();
              v101 = v4;
              v29 = v4[2];
              v28 = v4[3];
              if (v29 >= v28 >> 1)
              {
                v82 = v26;
                v31 = v27;
                sub_10019F3C0((v28 > 1), v29 + 1, 1);
                v27 = v31;
                v26 = v82;
                v4 = v101;
              }

              v4[2] = v29 + 1;
              v30 = &v4[2 * v29];
              v30[4] = v26;
              v30[5] = v27;
              ++v17;
              --v16;
              if (!--v13)
              {
                v8 = v85;
                goto LABEL_42;
              }

              continue;
            }

            break;
          }

          if (v17 < *(v11 + 16))
          {
            goto LABEL_95;
          }

          if (v17 >= *(v11 + 24))
          {
            goto LABEL_98;
          }

          v22 = __DataStorage._bytes.getter();
          if (!v22)
          {
            goto LABEL_116;
          }

          v19 = v22;
          v23 = __DataStorage._offset.getter();
          v21 = v17 - v23;
          if (__OFSUB__(v17, v23))
          {
            goto LABEL_100;
          }

          goto LABEL_35;
        }

        v13 = BYTE6(v10);
        if (BYTE6(v10))
        {
          goto LABEL_14;
        }

LABEL_42:
        v6 = v89;
        v7 = v91;
      }

      v95 = v4;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v32 = BidirectionalCollection<>.joined(separator:)();
      v34 = v33;

      sub_10006A178(v11, v10);
      sub_10006A178(v11, v10);
      v102 = v7;
      v36 = v7[2];
      v35 = v7[3];
      if (v36 >= v35 >> 1)
      {
        sub_10019F3C0((v35 > 1), v36 + 1, 1);
        v7 = v102;
      }

      ++v6;
      v7[2] = v36 + 1;
      v37 = &v7[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
      v4 = _swiftEmptyArrayStorage;
      if (v6 == v8)
      {
        a2 = v83;
        break;
      }
    }
  }

  v38 = Array.description.getter();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x656C75646F4D090ALL;
  v42._object = 0xEB00000000203A73;
  String.append(_:)(v42);
  v43 = *(a2 + 16);
  v44 = _swiftEmptyArrayStorage;
  if (v43)
  {
    v102 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v43, 0);
    v45 = 0;
    v90 = a2 + 32;
    v46 = v102;
    v86 = v43;
    do
    {
      v47 = (v90 + 16 * v45);
      v48 = *v47;
      v49 = v47[1];
      v50 = v49 >> 62;
      v94 = HIDWORD(*v47);
      if ((v49 >> 62) > 1)
      {
        if (v50 == 2)
        {
          v92 = v45;
          v53 = *(v48 + 16);
          v52 = *(v48 + 24);
          v51 = v52 - v53;
          if (__OFSUB__(v52, v53))
          {
            goto LABEL_112;
          }

LABEL_59:
          sub_100069E2C(v48, v49);
          sub_100069E2C(v48, v49);
          if (!v51)
          {
            goto LABEL_88;
          }

LABEL_60:
          v101 = _swiftEmptyArrayStorage;
          v54 = v51 & ~(v51 >> 63);
          sub_10019F3C0(0, v54, 0);
          v44 = v101;
          v88 = v46;
          if (v50 == 2)
          {
            v55 = *(v48 + 16);
            goto LABEL_64;
          }

          if (v50 == 1)
          {
            v55 = v48;
LABEL_64:
            if ((v51 & 0x8000000000000000) == 0)
            {
              goto LABEL_68;
            }

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
          }

          if (v51 < 0)
          {
            goto LABEL_114;
          }

          v55 = 0;
LABEL_68:
          while (2)
          {
            if (!v54)
            {
              goto LABEL_94;
            }

            if (v50 == 2)
            {
              if (v55 < *(v48 + 16))
              {
                goto LABEL_101;
              }

              if (v55 >= *(v48 + 24))
              {
                goto LABEL_104;
              }

              v60 = __DataStorage._bytes.getter();
              if (!v60)
              {
                goto LABEL_118;
              }

              v57 = v60;
              v61 = __DataStorage._offset.getter();
              v59 = v55 - v61;
              if (__OFSUB__(v55, v61))
              {
                goto LABEL_106;
              }

LABEL_81:
              v62 = *(v57 + v59);
            }

            else
            {
              if (v50 == 1)
              {
                if (v55 < v48 || v55 >= v48 >> 32)
                {
                  goto LABEL_103;
                }

                v56 = __DataStorage._bytes.getter();
                if (!v56)
                {
                  goto LABEL_117;
                }

                v57 = v56;
                v58 = __DataStorage._offset.getter();
                v59 = v55 - v58;
                if (__OFSUB__(v55, v58))
                {
                  goto LABEL_105;
                }

                goto LABEL_81;
              }

              if (v55 >= BYTE6(v49))
              {
                goto LABEL_102;
              }

              LOWORD(v95) = v48;
              BYTE2(v95) = BYTE2(v48);
              BYTE3(v95) = BYTE3(v48);
              BYTE4(v95) = v94;
              BYTE5(v95) = BYTE5(v48);
              BYTE6(v95) = BYTE6(v48);
              HIBYTE(v95) = HIBYTE(v48);
              v96 = v49;
              v97 = BYTE2(v49);
              v98 = BYTE3(v49);
              v99 = BYTE4(v49);
              v100 = BYTE5(v49);
              v62 = *(&v95 + v55);
            }

            sub_100068FC4(&qword_100502440, &unk_10040B240);
            v63 = swift_allocObject();
            *(v63 + 16) = xmmword_1004098F0;
            *(v63 + 56) = &type metadata for UInt8;
            *(v63 + 64) = &protocol witness table for UInt8;
            *(v63 + 32) = v62;
            v64 = String.init(format:_:)();
            v101 = v44;
            v67 = v44[2];
            v66 = v44[3];
            if (v67 >= v66 >> 1)
            {
              v84 = v64;
              v69 = v65;
              sub_10019F3C0((v66 > 1), v67 + 1, 1);
              v65 = v69;
              v64 = v84;
              v44 = v101;
            }

            v44[2] = v67 + 1;
            v68 = &v44[2 * v67];
            v68[4] = v64;
            v68[5] = v65;
            ++v55;
            --v54;
            if (!--v51)
            {
              v43 = v86;
              v46 = v88;
              goto LABEL_88;
            }

            continue;
          }
        }
      }

      else
      {
        v92 = v45;
        if (v50)
        {
          if (!__OFSUB__(v94, v48))
          {
            v51 = v94 - v48;
            goto LABEL_59;
          }

          goto LABEL_111;
        }

        v51 = BYTE6(v49);
        if (BYTE6(v49))
        {
          goto LABEL_60;
        }

LABEL_88:
        v45 = v92;
      }

      v95 = v44;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v70 = BidirectionalCollection<>.joined(separator:)();
      v72 = v71;

      sub_10006A178(v48, v49);
      sub_10006A178(v48, v49);
      v102 = v46;
      v74 = v46[2];
      v73 = v46[3];
      if (v74 >= v73 >> 1)
      {
        sub_10019F3C0((v73 > 1), v74 + 1, 1);
        v46 = v102;
      }

      ++v45;
      v46[2] = v74 + 1;
      v75 = &v46[2 * v74];
      v75[4] = v70;
      v75[5] = v72;
      v44 = _swiftEmptyArrayStorage;
    }

    while (v45 != v43);
  }

  v76 = Array.description.getter();
  v78 = v77;

  v79._countAndFlagsBits = v76;
  v79._object = v78;
  String.append(_:)(v79);

  v80._countAndFlagsBits = 2314;
  v80._object = 0xE200000000000000;
  String.append(_:)(v80);
  return v103[0];
}

void sub_1001D49D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SEType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SECleanup();
  v41 = v9[6];
  *(a2 + v41) = _swiftEmptyDictionarySingleton;
  v40 = v9[7];
  *(a2 + v40) = _swiftEmptyDictionarySingleton;
  v10 = sub_1001DB7D4(a1);
  v12 = v11;
  v14 = v13;
  v42 = v15;
  v43 = a1;
  v16 = sub_1003AF3C4(a1, v11);
  v17 = [v16 type];

  if ((v17 - 1) > 5)
  {
    v18 = &enum case for SEType.EOSAdv(_:);
  }

  else
  {
    v18 = *(&off_1004CB1B8 + (v17 - 1));
  }

  (*(v5 + 104))(v8, *v18, v4);
  (*(v5 + 32))(a2, v8, v4);
  v20 = sub_1003AF3C4(v43, v19);
  v21 = [v20 csn];

  *(a2 + v9[5]) = v21;
  v22 = objc_opt_self();
  sub_100069E2C(v10, v12);
  v23 = v42;
  sub_100069E2C(v14, v42);
  sub_10006A178(v14, v23);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v10, v12);
  v25 = [v22 TLVsWithData:isa];

  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1000754A4();
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = sub_1001D0C0C(_swiftEmptyDictionarySingleton, v26, a2, sub_1001D4F00);

  *(a2 + v41) = v27;
  sub_100069E2C(v10, v12);
  sub_100069E2C(v14, v23);
  sub_10006A178(v10, v12);
  v28 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v14, v23);
  v29 = [v22 TLVsWithData:v28];

  if (!v29)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = sub_1001D0C0C(_swiftEmptyDictionarySingleton, v30, a2, sub_1001D540C);

  *(a2 + v40) = v31;
  if (qword_100501A80 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000958E4(v32, qword_100506560);
  sub_100069E2C(v10, v12);
  sub_100069E2C(v14, v23);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  sub_10006A178(v10, v12);
  sub_10006A178(v14, v23);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v35 = 136315394;
    v36 = Data.base64EncodedString(options:)(0);
    v37 = sub_1002FFA0C(v36._countAndFlagsBits, v36._object, v44);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2080;
    v38 = Data.base64EncodedString(options:)(0);
    v39 = sub_1002FFA0C(v38._countAndFlagsBits, v38._object, v44);

    *(v35 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "SECleanup init with: \n%s\n%s", v35, 0x16u);
    swift_arrayDestroy();

    sub_10006A178(v10, v12);
    sub_10006A178(v14, v23);
  }

  else
  {

    sub_10006A178(v10, v12);
    sub_10006A178(v14, v23);
  }
}

uint64_t sub_1001D4F00(uint64_t *a1, void **a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SECleanup();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = *a2;
  sub_1001DA29C(a3, &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_1001DBB70(&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1001DA51C(v11, sub_1001DBBD4);
  v15 = v14;

  if (!v15)
  {
    return result;
  }

  v54 = a1;
  v55 = v15;
  v17 = *(v15 + 48);
  v18 = (v17 + 40);
  v19 = -*(v17 + 16);
  v20 = -1;
  while (1)
  {
    if (v19 + v20 == -1)
    {
      v26 = *(v55 + 48);
      v53 = *(v26 + 16);
      if (!v53)
      {
      }

      v27 = 0;
      v28 = (v26 + 40);
      v29 = v54;
      while (1)
      {
        if (v27 >= *(v26 + 16))
        {
          goto LABEL_28;
        }

        v57 = v4;
        v33 = v26;
        v35 = *(v28 - 1);
        v34 = *v28;
        sub_100069E2C(v35, *v28);

        v36 = *v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56[0] = *v29;
        v38 = v56[0];
        v39 = sub_10008C8DC(v35, v34);
        v41 = *(v38 + 16);
        v42 = (v40 & 1) == 0;
        v43 = __OFADD__(v41, v42);
        v44 = v41 + v42;
        if (v43)
        {
          goto LABEL_29;
        }

        v45 = v40;
        if (*(v38 + 24) < v44)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v51 = v39;
        sub_1003131A4();
        v39 = v51;
        v47 = v56[0];
        if ((v45 & 1) == 0)
        {
LABEL_20:
          v47[(v39 >> 6) + 8] |= 1 << v39;
          v48 = (v47[6] + 16 * v39);
          *v48 = v35;
          v48[1] = v34;
          *(v47[7] + 8 * v39) = v55;
          v49 = v47[2];
          v43 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v43)
          {
            goto LABEL_30;
          }

          v47[2] = v50;
          goto LABEL_12;
        }

LABEL_11:
        v30 = v47[7];
        v31 = *(v30 + 8 * v39);
        *(v30 + 8 * v39) = v55;

        sub_10006A178(v35, v34);
LABEL_12:
        ++v27;
        v32 = v53;
        v29 = v54;
        *v54 = v47;
        v28 += 2;
        v26 = v33;
        v4 = v57;
        if (v32 == v27)
        {
        }
      }

      sub_10030E060(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_10008C8DC(v35, v34);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_31;
      }

LABEL_19:
      v47 = v56[0];
      if ((v45 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    if (++v20 >= *(v17 + 16))
    {
      break;
    }

    v21 = *(v18 - 1);
    v22 = *v18;
    v23 = sub_100069E2C(v21, *v18);
    if (qword_100501A68 != -1)
    {
      v23 = swift_once();
    }

    v18 += 2;
    v56[0] = v21;
    v56[1] = v22;
    __chkstk_darwin(v23);
    *(&v52 - 2) = v56;
    v25 = sub_1002F78F8(sub_100093990, (&v52 - 4), v24);
    sub_10006A178(v21, v22);
    if (v25)
    {
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001D52EC(uint64_t a1, unint64_t a2)
{
  if (qword_100501AC8 != -1)
  {
    swift_once();
  }

  if (sub_10008FB4C(qword_10051B478, qword_10051B480, a1, a2))
  {
    return 1;
  }

  if (qword_100501AE0 != -1)
  {
    swift_once();
  }

  if (sub_10008FB4C(qword_10051B4A8, unk_10051B4B0, a1, a2))
  {
    return 1;
  }

  if (qword_100501AE8 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B4B8;
  v6 = qword_10051B4C0;

  return sub_10008FB4C(v5, v6, a1, a2);
}

void sub_1001D540C(unint64_t a1, id *a2, uint64_t *a3)
{
  v122 = a3;
  v121 = a1;
  v4 = *a2;
  v5 = [*a2 childWithTag:79];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 value];
    if (v7)
    {
      v8 = v7;
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      goto LABEL_6;
    }
  }

  v9 = 0;
  v11 = 0xF000000000000000;
LABEL_6:
  v12 = [v4 childWithTag:204];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 value];
    if (v14)
    {
      v15 = v14;
      v124 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      goto LABEL_11;
    }
  }

  v124 = 0;
  v17 = 0xF000000000000000;
LABEL_11:
  v18 = [v4 childWithTag:132];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 value];
    if (v20)
    {
      v21 = v20;
      v125 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v22;

      goto LABEL_16;
    }
  }

  v125 = 0;
  v128 = 0xF000000000000000;
LABEL_16:
  v23 = [v4 childWithTag:40816];
  if (!v23)
  {
LABEL_20:
    v27 = 0;
    v127 = 0xF000000000000000;
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [v23 value];
  if (!v25)
  {

    goto LABEL_20;
  }

  v26 = v25;
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v28;

LABEL_21:
  v29 = v4;
  v30 = [v29 childWithTag:165];

  sub_1000B7D0C(v30, v130);
  v123 = v17;
  if (v11 >> 60 == 15)
  {
    goto LABEL_26;
  }

  if (v17 >> 60 == 15)
  {
    goto LABEL_26;
  }

  if (v128 >> 60 == 15)
  {
    goto LABEL_26;
  }

  if (v127 >> 60 == 15)
  {
    goto LABEL_26;
  }

  sub_10006A2BC(v9, v11);
  sub_10006A2BC(v124, v17);
  sub_10006A2BC(v125, v128);
  v126 = v27;
  sub_10006A2BC(v27, v127);
  Data._Representation.subscript.getter();
  v118 = AppletState.init(rawValue:)();
  v32 = v31;
  sub_10006A2D0(v27, v127);
  v33 = v3;
  sub_10006A2D0(v125, v128);
  sub_10006A2D0(v124, v123);
  sub_10006A2D0(v9, v11);
  if (v32)
  {
LABEL_26:
    if (qword_100501A80 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000958E4(v34, qword_100506560);
    v35 = v29;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      sub_10006A2D0(v9, v11);
      sub_10006A2D0(v124, v123);
      sub_10006A2D0(v125, v128);
      sub_10006A2D0(v27, v127);
      sub_1000B8860(v130);

      goto LABEL_32;
    }

    v126 = v27;
    v119 = v9;
    v120 = v11;
    v38 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v129[0] = v122;
    *v38 = 136315138;
    v39 = [v35 value];

    if (v39)
    {
      v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v132 = sub_100288788(v40, v42);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v43 = BidirectionalCollection<>.joined(separator:)();
      v45 = v44;
      sub_10006A178(v40, v42);

      v46 = sub_1002FFA0C(v43, v45, v129);

      *(v38 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "Skipping Instance: %s", v38, 0xCu);
      sub_1000752F4(v122);

      sub_10006A2D0(v119, v120);
      sub_10006A2D0(v124, v123);
      sub_10006A2D0(v125, v128);
      sub_10006A2D0(v126, v127);
      sub_1000B8860(v130);
LABEL_32:

      return;
    }

    __break(1u);
    goto LABEL_125;
  }

  v47 = *(v122 + *(type metadata accessor for SECleanup() + 24));
  if (!*(v47 + 16) || (v48 = sub_10008C8DC(v125, v128), (v49 & 1) == 0))
  {
    sub_10006A2D0(v27, v127);
    sub_1000B8860(v130);
    sub_10006A2D0(v124, v123);
    sub_10006A2D0(v125, v128);
    sub_10006A2D0(v9, v11);
    return;
  }

  v50 = *(*(v47 + 56) + 8 * v48);
  if ((BYTE2(v130[0]) & 1) == 0 && (v130[0] & 4) != 0)
  {

    sub_10006A2D0(v9, v11);
    sub_10006A2D0(v124, v123);
    sub_10006A2D0(v125, v128);
    sub_10006A2D0(v27, v127);
    sub_1000B8860(v130);
    *(v50 + 72) = 1;

    return;
  }

  v113 = BYTE2(v130[0]);
  v112 = LOWORD(v130[0]);
  v51 = v29;
  v116 = v50;

  v52 = [v51 childWithTag:164];

  v53 = _swiftEmptyArrayStorage;
  v120 = v11;
  v119 = v9;
  if (v52)
  {
    v115 = v52;
    v54 = [v52 children];
    if (!v54)
    {
LABEL_125:
      __break(1u);
      return;
    }

    v55 = v54;
    sub_1000754A4();
    v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v56 >> 62)
    {
      v57 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v114 = v51;
    if (v57)
    {
      v129[0] = _swiftEmptyArrayStorage;
      v58 = v129;
      sub_10019F4A4(0, v57 & ~(v57 >> 63), 0);
      if ((v57 & 0x8000000000000000) == 0)
      {
        v59 = 0;
        v60 = v129[0];
        v122 = (v56 & 0xC000000000000001);
        v117 = v3;
        while (1)
        {
          v61 = v9;
          v62 = v122 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v56 + 8 * v59 + 32);
          v63 = v57;
          v64 = v56;
          v65 = v62;
          v66 = [v65 value];
          if (!v66)
          {
            break;
          }

          v67 = v66;
          v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v68;

          if (v57 >> 60 == 15)
          {
            goto LABEL_122;
          }

          v129[0] = v60;
          v70 = v60[2];
          v69 = v60[3];
          if (v70 >= v69 >> 1)
          {
            sub_10019F4A4((v69 > 1), v70 + 1, 1);
            v60 = v129[0];
          }

          ++v59;
          v60[2] = v70 + 1;
          v71 = &v60[2 * v70];
          v71[4] = v56;
          v71[5] = v57;
          v57 = v63;
          v33 = v117;
          v9 = v61;
          v56 = v64;
          if (v63 == v59)
          {

            goto LABEL_56;
          }
        }

LABEL_122:
        __break(1u);
LABEL_123:
        swift_once();
LABEL_106:
        if (sub_10008FB4C(qword_10051B4B8, qword_10051B4C0, v63, v65))
        {
          v100 = 0;
        }

        else
        {
          v100 = 2;
        }

        goto LABEL_112;
      }

      __break(1u);
      goto LABEL_120;
    }

    v60 = _swiftEmptyArrayStorage;
LABEL_56:
    v73 = v60[2];
    if (v73)
    {
      v74 = v60 + 4;
      v53 = _swiftEmptyArrayStorage;
      do
      {
        *v129 = *v74;
        *&v75 = __chkstk_darwin(v72);
        v111 = v129;
        sub_100069E2C(v75, v76);
        v77 = v33;
        if ((sub_1002F78F8(sub_1001DC608, v110, v53) & 1) == 0)
        {
          v78 = *v129;
          sub_100069E2C(v129[0], v129[1]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_10012E5A4(0, *(v53 + 2) + 1, 1, v53);
          }

          v80 = *(v53 + 2);
          v79 = *(v53 + 3);
          if (v80 >= v79 >> 1)
          {
            v53 = sub_10012E5A4((v79 > 1), v80 + 1, 1, v53);
          }

          *(v53 + 2) = v80 + 1;
          *&v53[16 * v80 + 32] = v78;
          v33 = v77;
        }

        v72 = sub_10006A178(v129[0], v129[1]);
        ++v74;
        --v73;
      }

      while (v73);
    }

    else
    {
      v53 = _swiftEmptyArrayStorage;
    }
  }

  v81 = sub_1002EA6BC(5);
  if (*(v81 + 2))
  {
    v58 = *(v81 + 4);
    v57 = *(v81 + 5);
    sub_100069E2C(v58, v57);

    v129[0] = v58;
    v129[1] = v57;
    __chkstk_darwin(v82);
    v111 = v129;
    if (sub_1002F78F8(sub_1001DC608, v110, v53))
    {
LABEL_73:
      sub_10006A178(v58, v57);
      goto LABEL_75;
    }

    v11 = v129[1];
    v56 = v129[0];
    sub_100069E2C(v129[0], v129[1]);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_70:
      v84 = *(v53 + 2);
      v83 = *(v53 + 3);
      if (v84 >= v83 >> 1)
      {
        v53 = sub_10012E5A4((v83 > 1), v84 + 1, 1, v53);
      }

      *(v53 + 2) = v84 + 1;
      v85 = &v53[16 * v84];
      *(v85 + 4) = v56;
      *(v85 + 5) = v11;
      goto LABEL_73;
    }

LABEL_120:
    v53 = sub_10012E5A4(0, *(v53 + 2) + 1, 1, v53);
    goto LABEL_70;
  }

LABEL_75:
  sub_1000B7028();
  v87 = v86[2];
  v122 = v86;
  if (v87)
  {
    v88 = v86 + 4;
    do
    {
      *v129 = *v88;
      *&v89 = __chkstk_darwin(v86);
      v111 = v129;
      sub_100069E2C(v89, v90);
      v91 = v33;
      if ((sub_1002F78F8(sub_1001DBA28, v110, v53) & 1) == 0)
      {
        v92 = *v129;
        sub_100069E2C(v129[0], v129[1]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_10012E5A4(0, *(v53 + 2) + 1, 1, v53);
        }

        v94 = *(v53 + 2);
        v93 = *(v53 + 3);
        if (v94 >= v93 >> 1)
        {
          v53 = sub_10012E5A4((v93 > 1), v94 + 1, 1, v53);
        }

        *(v53 + 2) = v94 + 1;
        *&v53[16 * v94 + 32] = v92;
        v33 = v91;
      }

      v86 = sub_10006A178(v129[0], v129[1]);
      ++v88;
      --v87;
    }

    while (v87);
  }

  type metadata accessor for SECleanup.Instance();
  v95 = swift_allocObject();
  v60 = v95;
  *(v95 + 136) = 2;
  v57 = v119;
  v64 = v120;
  *(v95 + 16) = v119;
  *(v95 + 24) = v64;
  v96 = v124;
  v63 = v125;
  v65 = v128;
  *(v95 + 32) = v125;
  *(v95 + 40) = v65;
  v97 = v123;
  *(v95 + 48) = v96;
  *(v95 + 56) = v97;
  v98 = v130[1];
  *(v95 + 64) = v130[0];
  *(v95 + 80) = v98;
  *(v95 + 96) = v130[2];
  *(v95 + 112) = v131;
  *(v95 + 120) = v53;
  v99 = v118;
  *(v95 + 128) = v118;
  if (v99 > 128)
  {
    v56 = v121;
    if (v99 <= 134)
    {
      if (v99 == 129)
      {
        sub_10006A2BC(v57, v64);
        sub_10006A2BC(v124, v97);
        sub_10006A2BC(v63, v65);
        sub_1000B8828(v130, v129);
        v100 = 1;
        goto LABEL_112;
      }

      if (v99 != 130)
      {
        goto LABEL_95;
      }

      goto LABEL_109;
    }

    if (v99 == 135)
    {
      goto LABEL_96;
    }

    if (v99 == 143)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v56 = v121;
    if (v99 <= 0x27)
    {
      if (((1 << v99) & 0x8080808000) != 0)
      {
        goto LABEL_109;
      }

      if (((1 << v99) & 0x8A) == 0)
      {
        goto LABEL_95;
      }

LABEL_96:
      if (*(v95 + 80) >> 60 == 15)
      {
        sub_10006A2BC(v57, v64);
        sub_10006A2BC(v124, v97);
        sub_10006A2BC(v63, v65);
        if ((v113 & 1) != 0 || (v112 & 8) == 0)
        {
          sub_1000B8828(v130, v129);
          if (qword_100501AC8 != -1)
          {
            swift_once();
          }

          if ((sub_10008FB4C(qword_10051B478, qword_10051B480, v63, v65) & 1) == 0)
          {
            if (qword_100501AE0 != -1)
            {
              swift_once();
            }

            if ((sub_10008FB4C(qword_10051B4A8, unk_10051B4B0, v63, v65) & 1) == 0)
            {
              if (qword_100501AE8 == -1)
              {
                goto LABEL_106;
              }

              goto LABEL_123;
            }
          }

          goto LABEL_111;
        }

LABEL_110:
        sub_1000B8828(v130, v129);
LABEL_111:
        v100 = 0;
        goto LABEL_112;
      }

LABEL_109:
      sub_10006A2BC(v57, v64);
      sub_10006A2BC(v124, v97);
      sub_10006A2BC(v63, v65);
      goto LABEL_110;
    }
  }

LABEL_95:
  sub_10006A2BC(v57, v64);
  sub_10006A2BC(v124, v97);
  sub_10006A2BC(v63, v65);
  sub_1000B8828(v130, v129);
  v100 = 2;
LABEL_112:
  *(v60 + 136) = v100;
  sub_10006A2BC(v57, v64);

  v101 = *v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v129[0] = *v56;
  sub_100316830(v60, v57, v64, isUniquelyReferenced_nonNull_native);
  sub_10006A2D0(v57, v64);
  *v56 = v129[0];
  v103 = v116;
  swift_beginAccess();
  v104 = *(v103 + 64);
  sub_10006A2BC(v57, v64);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  *(v103 + 64) = v104;
  v106 = v64;
  if ((v105 & 1) == 0)
  {
    v104 = sub_10012E5A4(0, *(v104 + 2) + 1, 1, v104);
    *(v116 + 64) = v104;
  }

  v108 = *(v104 + 2);
  v107 = *(v104 + 3);
  if (v108 >= v107 >> 1)
  {
    v104 = sub_10012E5A4((v107 > 1), v108 + 1, 1, v104);
  }

  *(v104 + 2) = v108 + 1;
  v109 = &v104[16 * v108];
  *(v109 + 4) = v57;
  *(v109 + 5) = v106;
  *(v116 + 64) = v104;
  swift_endAccess();
  sub_10006A2D0(v57, v106);
  sub_10006A2D0(v124, v123);
  sub_10006A2D0(v63, v65);
  sub_10006A2D0(v126, v127);
  sub_1000B8860(v130);
}

uint64_t sub_1001D6458()
{
  v1 = 0;
  v2 = type metadata accessor for SECleanup();
  v3 = *(v0 + *(v2 + 28));
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v105 = *(v0 + *(v2 + 28));
  v106 = v0;

  v102 = 0;
  v104 = _swiftEmptyArrayStorage;
LABEL_6:
  if (v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v18 = v105;

      v1 = _swiftEmptyArrayStorage;
      v110 = _swiftEmptyArrayStorage;
      v19 = *(v106 + *(v2 + 24));
      v20 = v19 + 64;
      v21 = 1 << *(v19 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(v19 + 64);
      v24 = (v21 + 63) >> 6;

      v25 = 0;
      while (1)
      {
        do
        {
LABEL_20:
          if (!v23)
          {
            while (1)
            {
              v26 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                goto LABEL_106;
              }

              if (v26 >= v24)
              {

                if (qword_100501A70 != -1)
                {
                  goto LABEL_110;
                }

                goto LABEL_52;
              }

              v23 = *(v20 + 8 * v26);
              ++v25;
              if (v23)
              {
                v25 = v26;
                break;
              }
            }
          }

          v27 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v28 = *(*(v19 + 56) + ((v25 << 9) | (8 * v27)));
        }

        while (!*(v28 + 57));
        if (*(v28 + 57) == 2)
        {
          if (*(v28 + 56))
          {
            *(v28 + 57) = 0;

LABEL_41:

            goto LABEL_20;
          }

          *(v28 + 57) = 1;
          swift_beginAccess();
          v29 = *(v28 + 64);
          v103 = *(v29 + 16);
          if (v103)
          {
            v100 = v28;
            v101 = v24;
            v97 = v20;
            v98 = v19;
            v99 = v1;

            v30 = 0;
            v31 = (v29 + 40);
            v32 = v103;
            while (v30 < *(v29 + 16))
            {
              if (*(v18 + 16))
              {
                v1 = *(v31 - 1);
                v33 = *v31;
                sub_100069E2C(v1, *v31);
                v34 = sub_10008C8DC(v1, v33);
                if (v35)
                {
                  v107 = *(*(v18 + 56) + 8 * v34);

                  v36 = sub_1001D6E98(&v107);
                  sub_10006A178(v1, v33);
                  v32 = v103;
                  v18 = v105;

                  if (v36)
                  {

                    v1 = v99;
                    *(v100 + 57) = 0;
                    v20 = v97;
                    v19 = v98;
                    v24 = v101;
                    goto LABEL_41;
                  }
                }

                else
                {
                  sub_10006A178(v1, v33);
                }
              }

              v30 = (v30 + 1);
              v31 += 2;
              if (v32 == v30)
              {

                v19 = v98;
                v1 = v99;
                v20 = v97;
                v28 = v100;
                v24 = v101;
                if (!*(v100 + 57))
                {
                  goto LABEL_41;
                }

                goto LABEL_43;
              }
            }

            goto LABEL_107;
          }

          if (!*(v28 + 57))
          {
            goto LABEL_41;
          }
        }

        else
        {
        }

LABEL_43:
        v101 = v24;
        v103 = &v96;
        v38 = *(v28 + 24);
        v40 = v28;
        v107 = *(v28 + 16);
        v39 = v107;
        v108 = v38;
        __chkstk_darwin(v37);
        v95 = &v107;
        sub_100069E2C(v39, v38);
        v41 = v102;
        v42 = sub_1002F78F8(sub_1001DC608, v94, v1);
        v102 = v41;
        if (v42)
        {

          sub_10006A178(v39, v38);
        }

        else
        {
          v103 = v38;
          v43 = v1;
          v44 = v107;
          v99 = v108;
          v100 = v40;
          sub_100069E2C(v107, v108);
          v45 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_10012E5A4(0, *(v43 + 16) + 1, 1, v43);
          }

          v46 = v39;
          v48 = *(v45 + 2);
          v47 = *(v45 + 3);
          v49 = v103;
          if (v48 >= v47 >> 1)
          {
            v45 = sub_10012E5A4((v47 > 1), v48 + 1, 1, v45);
          }

          *(v45 + 2) = v48 + 1;
          v50 = &v45[16 * v48];
          *(v50 + 4) = v44;
          v1 = v45;
          *(v50 + 5) = v99;
          sub_10006A178(v46, v49);
          v110 = v45;
        }

        v18 = v105;
        v24 = v101;
      }
    }

    v7 = *(v4 + 8 * v10);
    ++v1;
    if (v7)
    {
      v1 = v10;
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v105 + 56) + ((v1 << 9) | (8 * v11)));
      v109[0] = v12;

      if ((sub_1001D6E98(v109) & 1) == 0)
      {
        v13 = *(v12 + 16);
        v14 = *(v12 + 24);
        sub_100069E2C(v13, v14);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v15 = v104;
        }

        else
        {
          v15 = sub_10012E5A4(0, *(v104 + 2) + 1, 1, v104);
        }

        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        if (v17 >= v16 >> 1)
        {
          v15 = sub_10012E5A4((v16 > 1), v17 + 1, 1, v15);
        }

        *(v15 + 2) = v17 + 1;
        v104 = v15;
        v9 = &v15[16 * v17];
        *(v9 + 4) = v13;
        *(v9 + 5) = v14;
      }

      goto LABEL_6;
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
  v51 = swift_once();
LABEL_52:
  __chkstk_darwin(v51);
  v95 = v106;
  v53 = sub_1001FAF64(sub_1001DC5D8, v94, v52);
  v54 = v53;
  v55 = v53 & 0xFFFFFFFFFFFFFF8;
  if (v53 >> 62)
  {
    v56 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v56 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = 0;
  while (1)
  {
    if (v56 == v57)
    {
      goto LABEL_64;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v57, 1))
      {
        break;
      }

      goto LABEL_59;
    }

    if (v57 >= *(v55 + 16))
    {
      goto LABEL_108;
    }

    v58 = *(v54 + 8 * v57 + 32);

    if (__OFADD__(v57, 1))
    {
      break;
    }

LABEL_59:
    v60 = *(v59 + 57);

    ++v57;
    if (!v60)
    {

      __chkstk_darwin(v62);
      v95 = v106;
      result = sub_1002B02E8(sub_1001DB75C, v94);
      v1 = v110;
      v64 = v110[2];
      if (result > v64)
      {
        __break(1u);
      }

      else
      {
        v65 = result;
        if ((result & 0x8000000000000000) == 0)
        {
          v66 = result;
          if (!__OFADD__(v64, result - v64))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v66 > *(v1 + 24) >> 1)
            {
              if (v64 <= v66)
              {
                v68 = v66;
              }

              else
              {
                v68 = v64;
              }

              v1 = sub_10012E5A4(isUniquelyReferenced_nonNull_native, v68, 1, v1);
              v110 = v1;
            }

            v61 = sub_1001A17E0(v65, v64, 0);
            v110 = v1;
            goto LABEL_75;
          }

LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }
      }

      __break(1u);
      goto LABEL_115;
    }
  }

  __break(1u);
LABEL_64:

LABEL_75:
  if (qword_100501A78 != -1)
  {
    v61 = swift_once();
  }

  __chkstk_darwin(v61);
  v95 = v106;
  v70 = sub_1001FAF64(sub_1001DB77C, v94, v69);
  v71 = v70;
  v72 = v70 & 0xFFFFFFFFFFFFFF8;
  if (v70 >> 62)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v73 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = 0;
  do
  {
    if (v73 == v74)
    {
      goto LABEL_89;
    }

    if ((v71 & 0xC000000000000001) != 0)
    {
      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v74, 1))
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (v74 >= *(v72 + 16))
      {
        goto LABEL_109;
      }

      v75 = *(v71 + 8 * v74 + 32);

      if (__OFADD__(v74, 1))
      {
LABEL_88:
        __break(1u);
LABEL_89:

LABEL_100:
        if (qword_100501A80 != -1)
        {
          swift_once();
        }

        v84 = type metadata accessor for Logger();
        sub_1000958E4(v84, qword_100506560);
        v85 = v104;

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v107 = v89;
          *v88 = 136315138;

          v90 = sub_1001D408C(v85, v1);
          v92 = v91;

          v93 = sub_1002FFA0C(v90, v92, &v107);

          *(v88 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v86, v87, "Preflight Result: %s", v88, 0xCu);
          sub_1000752F4(v89);
        }

        return v85;
      }
    }

    v77 = *(v76 + 57);

    ++v74;
  }

  while (v77);

  __chkstk_darwin(v78);
  v95 = v106;
  result = sub_1002B02E8(sub_1001DB798, v94);
  v1 = v110;
  v79 = v110[2];
  if (result > v79)
  {
    goto LABEL_116;
  }

  v80 = result;
  if (result < 0)
  {
    goto LABEL_117;
  }

  v81 = result;
  if (!__OFADD__(v79, result - v79))
  {
    v82 = swift_isUniquelyReferenced_nonNull_native();
    if (!v82 || v81 > *(v1 + 24) >> 1)
    {
      if (v79 <= v81)
      {
        v83 = v81;
      }

      else
      {
        v83 = v79;
      }

      v1 = sub_10012E5A4(v82, v83, 1, v1);
      v110 = v1;
    }

    sub_1001A17E0(v80, v79, 0);
    goto LABEL_100;
  }

LABEL_118:
  __break(1u);
  return result;
}

uint64_t sub_1001D6E98(uint64_t *a1)
{
  v2 = *a1;
  if (!*(*a1 + 136))
  {
    return 1;
  }

  if (*(*a1 + 136) == 1)
  {
    return 0;
  }

  v4 = *(v2 + 120);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = *a1;
    v6 = *(v1 + *(type metadata accessor for SECleanup() + 28));

    v7 = 0;
    v8 = (v4 + 40);
    while (v7 < *(v4 + 16))
    {
      if (*(v6 + 16))
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        sub_100069E2C(v9, *v8);
        v11 = sub_10008C8DC(v9, v10);
        if (v12)
        {
          v13 = *(*(v6 + 56) + 8 * v11);
          v16 = v13;

          v14 = sub_1001D6E98(&v16);
          sub_10006A178(v9, v10);
          if (v14)
          {

            *(v13 + 136) = 0;

            return 1;
          }
        }

        else
        {
          result = sub_10006A178(v9, v10);
        }
      }

      ++v7;
      v8 += 2;
      if (v5 == v7)
      {

        v2 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    result = 0;
    *(v2 + 136) = 1;
  }

  return result;
}

uint64_t sub_1001D7004(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_100501A70 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  v9 = v3;
  v5 = sub_1001FB084(sub_1001DB7B8, v8, v4);
  v10[0] = v1;
  v10[1] = v2;
  __chkstk_darwin(v5);
  v9 = v10;
  v6 = sub_1002F78F8(sub_100093990, v8, v5);

  return v6 & 1;
}

uint64_t sub_1001D7130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for SECleanup() + 24));
  if (*(v5 + 16) && (v6 = sub_10008C8DC(*a1, a1[1]), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_1001D71A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_100501A78 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  v9 = v3;
  v5 = sub_1001FB084(sub_1001DC5F0, v8, v4);
  v10[0] = v1;
  v10[1] = v2;
  __chkstk_darwin(v5);
  v9 = v10;
  v6 = sub_1002F78F8(sub_100093834, v8, v5);

  return v6 & 1;
}

double sub_1001D72D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for SECleanup() + 24));
  if (*(v5 + 16) && (v6 = sub_10008C8DC(*a1, a1[1]), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    *a3 = v9;
    a3[1] = v10;
    sub_100069E2C(v9, v10);
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_1004098E0;
  }

  return result;
}

uint64_t sub_1001D737C()
{
  sub_100068FC4(&qword_1005025E0, &unk_10040F430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10040E5B0;
  if (qword_100501A88 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B3F8;
  v2 = unk_10051B400;
  *(v0 + 32) = qword_10051B3F8;
  *(v0 + 40) = v2;
  sub_100069E2C(v1, v2);
  if (qword_100501A90 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B408;
  v4 = unk_10051B410;
  *(v0 + 48) = qword_10051B408;
  *(v0 + 56) = v4;
  sub_100069E2C(v3, v4);
  if (qword_100501A98 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B418;
  v6 = unk_10051B420;
  *(v0 + 64) = qword_10051B418;
  *(v0 + 72) = v6;
  sub_100069E2C(v5, v6);
  if (qword_100501AA0 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B428;
  v8 = unk_10051B430;
  *(v0 + 80) = qword_10051B428;
  *(v0 + 88) = v8;
  sub_100069E2C(v7, v8);
  if (qword_100501AA8 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B438;
  v10 = unk_10051B440;
  *(v0 + 96) = qword_10051B438;
  *(v0 + 104) = v10;
  sub_100069E2C(v9, v10);
  if (qword_100501AB0 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B448;
  v12 = unk_10051B450;
  *(v0 + 112) = qword_10051B448;
  *(v0 + 120) = v12;
  sub_100069E2C(v11, v12);
  if (qword_100501AD0 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B488;
  v14 = unk_10051B490;
  *(v0 + 128) = qword_10051B488;
  *(v0 + 136) = v14;
  sub_100069E2C(v13, v14);
  if (qword_100501AB8 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B458;
  v16 = unk_10051B460;
  *(v0 + 144) = qword_10051B458;
  *(v0 + 152) = v16;
  sub_100069E2C(v15, v16);
  if (qword_100501AC0 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B468;
  v18 = unk_10051B470;
  *(v0 + 160) = qword_10051B468;
  *(v0 + 168) = v18;
  sub_100069E2C(v17, v18);
  if (qword_100501AD8 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B498;
  v20 = unk_10051B4A0;
  *(v0 + 176) = qword_10051B498;
  *(v0 + 184) = v20;
  qword_100506548 = v0;

  return sub_100069E2C(v19, v20);
}

uint64_t sub_1001D7684()
{
  sub_100068FC4(&qword_1005025E0, &unk_10040F430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100409A40;
  result = sub_10013044C(0xD000000000000020, 0x80000001004668E0);
  if (v2 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 32) = result;
  *(v0 + 40) = v2;
  result = sub_10013044C(0xD000000000000020, 0x8000000100466910);
  if (v3 >> 60 == 15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  result = sub_10013044C(0xD000000000000020, 0x8000000100466940);
  if (v4 >> 60 != 15)
  {
    *(v0 + 64) = result;
    *(v0 + 72) = v4;
    qword_100506550 = v0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1001D7768()
{
  sub_100068FC4(&qword_1005025E0, &unk_10040F430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100409900;
  result = sub_10013044C(0xD000000000000014, 0x80000001004668A0);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = result;
    *(v0 + 40) = v2;
    result = sub_10013044C(0xD000000000000014, 0x80000001004668C0);
    if (v3 >> 60 != 15)
    {
      *(v0 + 48) = result;
      *(v0 + 56) = v3;
      qword_100506558 = v0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D781C()
{

  v2 = sub_1000E0074(v1);

  v3 = type metadata accessor for SECleanup();
  v4 = *(v0 + *(v3 + 28));

  v6 = sub_1000E39D0(v5);
  v7 = sub_1001D8890(v6, v2);

  v9 = sub_1000E0074(v8);

  v10 = *(v0 + *(v3 + 24));

  v12 = sub_1001D1000(v11);

  v13 = sub_1000E0074(v12);

  v14 = sub_1001D8890(v13, v9);

  if (*(v14 + 16) || *(v7 + 16))
  {
    if (qword_100501A80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_100506560);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v18 = 136315394;
      sub_1001D0D38(v7);

      v19 = Array.description.getter();
      v21 = v20;

      v22 = sub_1002FFA0C(v19, v21, v28);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      sub_1001D0D38(v14);

      v23 = Array.description.getter();
      v25 = v24;

      v26 = sub_1002FFA0C(v23, v25, v28);

      *(v18 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missed deletions:\nInstances: %s\nModules: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1001D7B20(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005068E0, &qword_10040E8D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001DA0D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for SEType();
  sub_1001DA4D4(&qword_1005068E8, 255, &type metadata accessor for SEType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SECleanup();
    v12 = *(v3 + v11[5]);
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + v11[6]);
    HIBYTE(v14) = 2;
    sub_100068FC4(&qword_1005068B0, &qword_10040E8C8);
    sub_1001DA35C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v11[7]);
    HIBYTE(v14) = 3;
    sub_100068FC4(&qword_1005068C8, &qword_10040E8D0);
    sub_1001DA418();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001D7D90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for SEType();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_100506898, &qword_10040E8C0);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for SECleanup();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001DA0D0();
  v29 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v17 = v15;
  v18 = v25;
  LOBYTE(v31) = 0;
  sub_1001DA4D4(&qword_1005068A8, 255, &type metadata accessor for SEType);
  v20 = v26;
  v19 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 32))(v17, v20, v4);
  LOBYTE(v31) = 1;
  *(v17 + v12[5]) = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100068FC4(&qword_1005068B0, &qword_10040E8C8);
  v30 = 2;
  sub_1001DA124();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v17 + v12[6]) = v31;
  sub_100068FC4(&qword_1005068C8, &qword_10040E8D0);
  v30 = 3;
  sub_1001DA1E0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v12[7];
  (*(v28 + 8))(v29, v19);
  *(v17 + v21) = v31;
  sub_1001DA29C(v17, v24);
  sub_1000752F4(a1);
  return sub_1001DA300(v17);
}

unint64_t sub_1001D81B4()
{
  v1 = 0x657079546573;
  v2 = 0x73656C75646F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x65636E6174736E69;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1001D8234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001DC444(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D825C(uint64_t a1)
{
  v2 = sub_1001DA0D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D8298(uint64_t a1)
{
  v2 = sub_1001DA0D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001D8304()
{
  result = qword_100506860;
  if (!qword_100506860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506860);
  }

  return result;
}

unint64_t sub_1001D8358()
{
  result = qword_100506870;
  if (!qword_100506870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506870);
  }

  return result;
}

uint64_t sub_1001D83AC()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100506560);
  sub_1000958E4(v0, qword_100506560);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001D8424()
{
  result = sub_10013044C(0xD000000000000012, 0x8000000100466AB0);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B3F8 = result;
    unk_10051B400 = v1;
  }

  return result;
}

uint64_t sub_1001D8470()
{
  result = sub_10013044C(0xD00000000000001CLL, 0x8000000100466A90);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B408 = result;
    unk_10051B410 = v1;
  }

  return result;
}

uint64_t sub_1001D84BC()
{
  result = sub_10013044C(0xD000000000000018, 0x8000000100466A70);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B418 = result;
    unk_10051B420 = v1;
  }

  return result;
}

uint64_t sub_1001D8508()
{
  result = sub_10013044C(0xD000000000000018, 0x8000000100466A50);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B428 = result;
    unk_10051B430 = v1;
  }

  return result;
}

uint64_t sub_1001D8554()
{
  result = sub_10013044C(0xD000000000000010, 0x8000000100466A30);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B438 = result;
    unk_10051B440 = v1;
  }

  return result;
}

uint64_t sub_1001D85A0()
{
  result = sub_10013044C(0xD000000000000020, 0x8000000100466A00);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B448 = result;
    unk_10051B450 = v1;
  }

  return result;
}

uint64_t sub_1001D85EC()
{
  result = sub_10013044C(0xD00000000000001ALL, 0x80000001004669E0);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B458 = result;
    unk_10051B460 = v1;
  }

  return result;
}

uint64_t sub_1001D8638()
{
  result = sub_10013044C(0xD000000000000014, 0x80000001004669C0);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B468 = result;
    unk_10051B470 = v1;
  }

  return result;
}

uint64_t sub_1001D86B0()
{
  result = sub_10013044C(0xD000000000000014, 0x8000000100465660);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B488 = result;
    unk_10051B490 = v1;
  }

  return result;
}

uint64_t sub_1001D86FC()
{
  result = sub_10013044C(0xD00000000000001ALL, 0x80000001004669A0);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B498 = result;
    unk_10051B4A0 = v1;
  }

  return result;
}

uint64_t sub_1001D8748()
{
  result = sub_10013044C(0xD000000000000020, 0x8000000100466970);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B4A8 = result;
    unk_10051B4B0 = v1;
  }

  return result;
}

uint64_t sub_1001D87B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5)
{
  result = sub_10013044C(a2, a3);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a4 = result;
    *a5 = v8;
  }

  return result;
}

void *sub_1001D8800(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1001D8A54(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1001D8890(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1001D8A54((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1001D8800(v11, v6, a2, a1);
  }

  return v9;
}

uint64_t sub_1001D8A54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) < *(a3 + 16))
  {
    v214 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v229 = a3 + 56;
    v189 = v11;
    v195 = a4 + 56;
    while (1)
    {
      if (v10)
      {
        v12 = __clz(__rbit64(v10));
        v212 = (v10 - 1) & v10;
      }

      else
      {
        v13 = v6;
        do
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_325;
          }

          if (v6 >= v11)
          {
LABEL_323:

            return sub_10024B29C(a1, a2, v214, v5);
          }

          v14 = *(v7 + 8 * v6);
          ++v13;
        }

        while (!v14);
        v12 = __clz(__rbit64(v14));
        v212 = (v14 - 1) & v14;
      }

      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      Hasher.init(_seed:)();
      sub_100069E2C(v17, v16);
      v225 = v17;
      v227 = v16;
      Data.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v229 + 8 * (v21 >> 6))) == 0)
      {
LABEL_6:
        sub_10006A178(v225, v227);
        v4 = a4;
        v11 = v189;
        v7 = v195;
        v10 = v212;
        continue;
      }

      v24 = ~v20;
      v25 = v16 >> 62;
      if (v17)
      {
        v26 = 0;
      }

      else
      {
        v26 = v16 == 0xC000000000000000;
      }

      v27 = !v26;
      v222 = v27;
      v206 = HIDWORD(v17);
      v28 = __OFSUB__(HIDWORD(v17), v17);
      v216 = v28;
      v202 = (v17 >> 32) - v17;
      v204 = v17 >> 32;
      v217 = v24;
      v218 = v16 >> 62;
      while (1)
      {
        v29 = (*(v5 + 48) + 16 * v21);
        v31 = *v29;
        v30 = v29[1];
        v32 = v30 >> 62;
        if (v30 >> 62 == 3)
        {
          if (v31)
          {
            v33 = 0;
          }

          else
          {
            v33 = v30 == 0xC000000000000000;
          }

          v35 = !v33 || v25 < 3;
          if (((v35 | v222) & 1) == 0)
          {
            v88 = 0;
            v89 = 0xC000000000000000;
            goto LABEL_162;
          }

LABEL_49:
          v36 = 0;
          if (v25 <= 1)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }

        if (v32 > 1)
        {
          if (v32 != 2)
          {
            goto LABEL_49;
          }

          v38 = *(v31 + 16);
          v37 = *(v31 + 24);
          v39 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v39)
          {
            goto LABEL_332;
          }

          if (v25 <= 1)
          {
            goto LABEL_46;
          }
        }

        else if (v32)
        {
          LODWORD(v36) = HIDWORD(v31) - v31;
          if (__OFSUB__(HIDWORD(v31), v31))
          {
            goto LABEL_333;
          }

          v36 = v36;
          if (v25 <= 1)
          {
LABEL_46:
            v40 = BYTE6(v227);
            if (v25)
            {
              v40 = HIDWORD(v225) - v225;
              if (v216)
              {
                goto LABEL_329;
              }
            }

            goto LABEL_52;
          }
        }

        else
        {
          v36 = BYTE6(v30);
          if (v25 <= 1)
          {
            goto LABEL_46;
          }
        }

LABEL_50:
        if (v25 != 2)
        {
          if (!v36)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v42 = *(v225 + 16);
        v41 = *(v225 + 24);
        v39 = __OFSUB__(v41, v42);
        v40 = v41 - v42;
        if (v39)
        {
          goto LABEL_328;
        }

LABEL_52:
        if (v36 != v40)
        {
          goto LABEL_26;
        }

        if (v36 < 1)
        {
          goto LABEL_161;
        }

        if (v32 > 1)
        {
          break;
        }

        if (v32)
        {
          if (v31 > v31 >> 32)
          {
            goto LABEL_335;
          }

          sub_100069E2C(v31, v30);
          v52 = __DataStorage._bytes.getter();
          if (v52)
          {
            v53 = v52;
            v54 = __DataStorage._offset.getter();
            if (__OFSUB__(v31, v54))
            {
              goto LABEL_339;
            }

            v198 = (v31 - v54 + v53);
          }

          else
          {
            v198 = 0;
          }

          __DataStorage._length.getter();
          v25 = v218;
          v5 = a3;
          if (v218 == 2)
          {
            v179 = *(v225 + 24);
            v185 = *(v225 + 16);
            v61 = __DataStorage._bytes.getter();
            if (v61)
            {
              v74 = __DataStorage._offset.getter();
              v75 = v185;
              if (__OFSUB__(v185, v74))
              {
                goto LABEL_368;
              }

              v61 += v185 - v74;
            }

            else
            {
              v75 = v185;
            }

            v85 = v179 - v75;
            if (__OFSUB__(v179, v75))
            {
              goto LABEL_358;
            }

            v86 = __DataStorage._length.getter();
            if (v86 >= v85)
            {
              v82 = v85;
            }

            else
            {
              v82 = v86;
            }

            v83 = v198;
            if (!v198)
            {
              goto LABEL_393;
            }

            v5 = a3;
            if (!v61)
            {
              goto LABEL_395;
            }
          }

          else
          {
            if (v218 != 1)
            {
              v73 = v198;
              *__s1 = v225;
              __s1[4] = v206;
              *&__s1[5] = *(&v225 + 5);
              __s1[7] = HIBYTE(v225);
              *&__s1[8] = v227;
              *&__s1[12] = WORD2(v227);
              if (!v198)
              {
                goto LABEL_378;
              }

LABEL_115:
              v70 = memcmp(v73, __s1, BYTE6(v227));
              sub_10006A178(v31, v30);
              v24 = v217;
              goto LABEL_116;
            }

            if (v204 < v225)
            {
              goto LABEL_357;
            }

            v62 = __DataStorage._bytes.getter();
            if (v62)
            {
              v182 = v62;
              v63 = __DataStorage._offset.getter();
              if (__OFSUB__(v225, v63))
              {
                goto LABEL_369;
              }

              v61 = (v225 - v63 + v182);
            }

            else
            {
              v61 = 0;
            }

            v87 = __DataStorage._length.getter();
            v82 = (v225 >> 32) - v225;
            if (v87 < v202)
            {
              v82 = v87;
            }

            v83 = v198;
            if (!v198)
            {
              goto LABEL_396;
            }

            if (!v61)
            {
              goto LABEL_394;
            }
          }

          goto LABEL_156;
        }

        *__s1 = v31;
        *&__s1[8] = v30;
        __s1[10] = BYTE2(v30);
        __s1[11] = BYTE3(v30);
        __s1[12] = BYTE4(v30);
        __s1[13] = BYTE5(v30);
        if (!v25)
        {
          goto LABEL_79;
        }

        if (v25 == 1)
        {
          if (v204 < v225)
          {
            goto LABEL_350;
          }

          sub_100069E2C(v31, v30);
          v43 = __DataStorage._bytes.getter();
          if (!v43)
          {
            goto LABEL_388;
          }

          v44 = v43;
          v45 = __DataStorage._offset.getter();
          if (__OFSUB__(v225, v45))
          {
            goto LABEL_354;
          }

          v46 = (v225 - v45 + v44);
          v47 = __DataStorage._length.getter();
          if (!v46)
          {
            goto LABEL_381;
          }

          goto LABEL_102;
        }

        v200 = *(v225 + 16);
        v183 = *(v225 + 24);
        sub_100069E2C(v31, v30);
        v55 = __DataStorage._bytes.getter();
        if (v55)
        {
          v64 = __DataStorage._offset.getter();
          v65 = v200;
          if (__OFSUB__(v200, v64))
          {
            goto LABEL_364;
          }

          v55 = &v200[v55 - v64];
        }

        else
        {
          v65 = v200;
        }

        v76 = v183 - v65;
        if (__OFSUB__(v183, v65))
        {
          goto LABEL_351;
        }

        v77 = __DataStorage._length.getter();
        if (!v55)
        {
          goto LABEL_380;
        }

LABEL_125:
        if (v77 >= v76)
        {
          v78 = v76;
        }

        else
        {
          v78 = v77;
        }

        v79 = memcmp(__s1, v55, v78);
        sub_10006A178(v31, v30);
        v5 = a3;
LABEL_158:
        v24 = v217;
        v25 = v218;
        if (!v79)
        {
          goto LABEL_161;
        }

LABEL_26:
        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if ((*(v229 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v32 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v25)
        {
LABEL_79:
          __s2 = v225;
          v232 = v206;
          v233 = *(&v225 + 5);
          v234 = HIBYTE(v225);
          v235 = v227;
          v236 = WORD2(v227);
          v58 = memcmp(__s1, &__s2, BYTE6(v227));
          v24 = v217;
          if (!v58)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        if (v25 != 2)
        {
          if (v204 < v225)
          {
            goto LABEL_349;
          }

          sub_100069E2C(v31, v30);
          v66 = __DataStorage._bytes.getter();
          if (!v66)
          {
            goto LABEL_382;
          }

          v67 = v66;
          v68 = __DataStorage._offset.getter();
          if (__OFSUB__(v225, v68))
          {
            goto LABEL_355;
          }

          v46 = (v225 - v68 + v67);
          v47 = __DataStorage._length.getter();
          if (!v46)
          {
            goto LABEL_383;
          }

LABEL_102:
          if (v47 >= v202)
          {
            v69 = (v225 >> 32) - v225;
          }

          else
          {
            v69 = v47;
          }

          v70 = memcmp(__s1, v46, v69);
          sub_10006A178(v31, v30);
          v5 = a3;
          v24 = v217;
          v25 = v218;
LABEL_116:
          if (!v70)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v199 = *(v225 + 16);
        v180 = *(v225 + 24);
        sub_100069E2C(v31, v30);
        v55 = __DataStorage._bytes.getter();
        if (v55)
        {
          v56 = __DataStorage._offset.getter();
          v57 = v199;
          if (__OFSUB__(v199, v56))
          {
            goto LABEL_365;
          }

          v55 = &v199[v55 - v56];
        }

        else
        {
          v57 = v199;
        }

        v76 = v180 - v57;
        if (__OFSUB__(v180, v57))
        {
          goto LABEL_352;
        }

        v77 = __DataStorage._length.getter();
        if (!v55)
        {
          goto LABEL_377;
        }

        goto LABEL_125;
      }

      v48 = *(v31 + 16);
      sub_100069E2C(v31, v30);
      v49 = __DataStorage._bytes.getter();
      if (v49)
      {
        v50 = v49;
        v51 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v51))
        {
          goto LABEL_338;
        }

        v197 = (v48 - v51 + v50);
      }

      else
      {
        v197 = 0;
      }

      __DataStorage._length.getter();
      v25 = v218;
      v5 = a3;
      if (v218 == 2)
      {
        v178 = *(v225 + 24);
        v184 = *(v225 + 16);
        v61 = __DataStorage._bytes.getter();
        if (v61)
        {
          v71 = __DataStorage._offset.getter();
          v72 = v184;
          if (__OFSUB__(v184, v71))
          {
            goto LABEL_366;
          }

          v61 += v184 - v71;
        }

        else
        {
          v72 = v184;
        }

        v80 = v178 - v72;
        if (__OFSUB__(v178, v72))
        {
          goto LABEL_356;
        }

        v81 = __DataStorage._length.getter();
        if (v81 >= v80)
        {
          v82 = v80;
        }

        else
        {
          v82 = v81;
        }

        v83 = v197;
        if (!v197)
        {
          goto LABEL_398;
        }

        v5 = a3;
        if (!v61)
        {
          goto LABEL_397;
        }
      }

      else
      {
        if (v218 != 1)
        {
          v73 = v197;
          *__s1 = v225;
          __s1[4] = v206;
          *&__s1[5] = *(&v225 + 5);
          __s1[7] = HIBYTE(v225);
          *&__s1[8] = v227;
          *&__s1[12] = WORD2(v227);
          if (!v197)
          {
            goto LABEL_379;
          }

          goto LABEL_115;
        }

        if (v204 < v225)
        {
          goto LABEL_353;
        }

        v59 = __DataStorage._bytes.getter();
        if (v59)
        {
          v181 = v59;
          v60 = __DataStorage._offset.getter();
          if (__OFSUB__(v225, v60))
          {
            goto LABEL_367;
          }

          v61 = (v225 - v60 + v181);
        }

        else
        {
          v61 = 0;
        }

        v84 = __DataStorage._length.getter();
        v82 = (v225 >> 32) - v225;
        if (v84 < v202)
        {
          v82 = v84;
        }

        v83 = v197;
        if (!v197)
        {
          goto LABEL_392;
        }

        if (!v61)
        {
          goto LABEL_391;
        }
      }

LABEL_156:
      if (v83 != v61)
      {
        v79 = memcmp(v83, v61, v82);
        sub_10006A178(v31, v30);
        goto LABEL_158;
      }

      sub_10006A178(v31, v30);
LABEL_161:
      v88 = v225;
      v89 = v227;
LABEL_162:
      sub_10006A178(v88, v89);
      a1[v22] |= v23;
      v39 = __OFADD__(v214++, 1);
      v4 = a4;
      v11 = v189;
      v7 = v195;
      v10 = v212;
      if (v39)
      {
        __break(1u);
        break;
      }
    }
  }

  v214 = 0;
  v90 = 0;
  v196 = v5 + 56;
  v91 = 1 << *(v5 + 32);
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  else
  {
    v92 = -1;
  }

  v93 = v92 & *(v5 + 56);
  v94 = (v91 + 63) >> 6;
  v203 = v94;
  v95 = v4 + 56;
  v223 = v4 + 56;
  while (1)
  {
LABEL_170:
    if (v93)
    {
      v96 = __clz(__rbit64(v93));
      v97 = (v93 - 1) & v93;
      goto LABEL_177;
    }

    v98 = v90;
    do
    {
      v90 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
      }

      if (v90 >= v94)
      {
        goto LABEL_323;
      }

      v99 = *(v196 + 8 * v90);
      ++v98;
    }

    while (!v99);
    v96 = __clz(__rbit64(v99));
    v97 = (v99 - 1) & v99;
LABEL_177:
    v100 = v96 | (v90 << 6);
    v215 = v97;
    v101 = (*(v5 + 48) + 16 * v100);
    v103 = *v101;
    v102 = v101[1];
    v104 = *(v4 + 40);
    Hasher.init(_seed:)();
    sub_100069E2C(v103, v102);
    Data.hash(into:)();
    v105 = Hasher._finalize()();
    v106 = -1 << *(v4 + 32);
    v107 = v105 & ~v106;
    v108 = v95;
    v230 = v102;
    if ((*(v95 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107))
    {
      break;
    }

LABEL_169:
    v95 = v108;
    sub_10006A178(v103, v230);
    v5 = a3;
    v94 = v203;
    v93 = v215;
  }

  v201 = v100;
  v109 = ~v106;
  v110 = v102 >> 62;
  if (v103)
  {
    v111 = 0;
  }

  else
  {
    v111 = v102 == 0xC000000000000000;
  }

  v112 = !v111;
  v226 = v112;
  v113 = __OFSUB__(HIDWORD(v103), v103);
  v219 = v113;
  v228 = BYTE6(v102);
  v213 = v103 >> 32;
  v205 = (v103 >> 32) - v103;
  __n = v109;
  while (1)
  {
    v114 = (*(v4 + 48) + 16 * v107);
    v115 = *v114;
    v116 = v114[1];
    v117 = v116 >> 62;
    if (v116 >> 62 == 3)
    {
      if (v115)
      {
        v118 = 0;
      }

      else
      {
        v118 = v116 == 0xC000000000000000;
      }

      v120 = !v118 || v110 < 3;
      if (((v120 | v226) & 1) == 0)
      {
        v95 = v108;
        v174 = 0;
        v175 = 0xC000000000000000;
LABEL_318:
        sub_10006A178(v174, v175);
        v176 = v214;
        goto LABEL_319;
      }

LABEL_212:
      v121 = 0;
      if (v110 <= 1)
      {
        goto LABEL_209;
      }

      goto LABEL_213;
    }

    if (v117 > 1)
    {
      if (v117 != 2)
      {
        goto LABEL_212;
      }

      v123 = *(v115 + 16);
      v122 = *(v115 + 24);
      v39 = __OFSUB__(v122, v123);
      v121 = v122 - v123;
      if (v39)
      {
        goto LABEL_330;
      }

      if (v110 <= 1)
      {
        goto LABEL_209;
      }
    }

    else if (v117)
    {
      LODWORD(v121) = HIDWORD(v115) - v115;
      if (__OFSUB__(HIDWORD(v115), v115))
      {
        goto LABEL_331;
      }

      v121 = v121;
      if (v110 <= 1)
      {
LABEL_209:
        v124 = v228;
        if (v110)
        {
          v124 = HIDWORD(v103) - v103;
          if (v219)
          {
            goto LABEL_326;
          }
        }

        goto LABEL_215;
      }
    }

    else
    {
      v121 = BYTE6(v116);
      if (v110 <= 1)
      {
        goto LABEL_209;
      }
    }

LABEL_213:
    if (v110 != 2)
    {
      if (!v121)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v126 = *(v103 + 16);
    v125 = *(v103 + 24);
    v39 = __OFSUB__(v125, v126);
    v124 = v125 - v126;
    if (v39)
    {
      goto LABEL_327;
    }

LABEL_215:
    if (v121 != v124)
    {
      goto LABEL_189;
    }

    if (v121 < 1)
    {
      goto LABEL_317;
    }

    if (v117 > 1)
    {
      break;
    }

    if (v117)
    {
      if (v115 > v115 >> 32)
      {
        goto LABEL_334;
      }

      sub_100069E2C(v115, v116);
      v133 = __DataStorage._bytes.getter();
      if (v133)
      {
        v134 = v133;
        v135 = __DataStorage._offset.getter();
        if (__OFSUB__(v115, v135))
        {
          goto LABEL_337;
        }

        v208 = (v115 - v135 + v134);
      }

      else
      {
        v208 = 0;
      }

      __DataStorage._length.getter();
      v4 = a4;
      v109 = __n;
      if (v110 == 2)
      {
        v194 = *(v103 + 16);
        v187 = *(v103 + 24);
        v143 = __DataStorage._bytes.getter();
        if (v143)
        {
          v159 = __DataStorage._offset.getter();
          v160 = v194;
          if (__OFSUB__(v194, v159))
          {
            goto LABEL_362;
          }

          v143 += v194 - v159;
        }

        else
        {
          v160 = v194;
        }

        v170 = v187 - v160;
        if (__OFSUB__(v187, v160))
        {
          goto LABEL_348;
        }

        v171 = __DataStorage._length.getter();
        if (v171 >= v170)
        {
          v167 = v170;
        }

        else
        {
          v167 = v171;
        }

        v168 = v208;
        if (!v208)
        {
          goto LABEL_390;
        }

        v4 = a4;
        if (!v143)
        {
          goto LABEL_389;
        }

        goto LABEL_315;
      }

      if (v110 == 1)
      {
        if (v213 < v103)
        {
          goto LABEL_347;
        }

        v144 = __DataStorage._bytes.getter();
        if (v144)
        {
          v192 = v144;
          v145 = __DataStorage._offset.getter();
          if (__OFSUB__(v103, v145))
          {
            goto LABEL_363;
          }

          v143 = (v103 - v145 + v192);
        }

        else
        {
          v143 = 0;
        }

        v172 = __DataStorage._length.getter();
        v167 = (v103 >> 32) - v103;
        if (v172 < v205)
        {
          v167 = v172;
        }

        v168 = v208;
        if (!v208)
        {
          goto LABEL_385;
        }

        if (!v143)
        {
          goto LABEL_384;
        }

        goto LABEL_315;
      }

      v158 = v208;
      *__s1 = v103;
      *&__s1[8] = v230;
      *&__s1[12] = WORD2(v230);
      if (!v208)
      {
        goto LABEL_371;
      }

      goto LABEL_277;
    }

    *__s1 = v115;
    *&__s1[8] = v116;
    __s1[10] = BYTE2(v116);
    __s1[11] = BYTE3(v116);
    __s1[12] = BYTE4(v116);
    __s1[13] = BYTE5(v116);
    if (!v110)
    {
      goto LABEL_240;
    }

    if (v110 == 1)
    {
      if (v213 < v103)
      {
        goto LABEL_342;
      }

      sub_100069E2C(v115, v116);
      v127 = sub_100189FB8(v103, v213, v230 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v211)
      {
        goto LABEL_399;
      }

      v128 = v127;
      sub_10006A178(v115, v116);
    }

    else
    {
      v146 = *(v103 + 16);
      v147 = *(v103 + 24);
      sub_100069E2C(v115, v116);
      v148 = sub_100189FB8(v146, v147, v230 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v211)
      {
        goto LABEL_399;
      }

      v128 = v148;
      sub_10006A178(v115, v116);
      v4 = a4;
    }

    v108 = v223;
    if (v128)
    {
      goto LABEL_317;
    }

LABEL_189:
    v107 = (v107 + 1) & v109;
    if (((*(v108 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
    {
      goto LABEL_169;
    }
  }

  if (v117 == 2)
  {
    v129 = *(v115 + 16);
    sub_100069E2C(v115, v116);
    v130 = __DataStorage._bytes.getter();
    if (v130)
    {
      v131 = v130;
      v132 = __DataStorage._offset.getter();
      if (__OFSUB__(v129, v132))
      {
        goto LABEL_336;
      }

      v207 = (v129 - v132 + v131);
    }

    else
    {
      v207 = 0;
    }

    __DataStorage._length.getter();
    v4 = a4;
    v109 = __n;
    if (v110 == 2)
    {
      v193 = *(v103 + 16);
      v186 = *(v103 + 24);
      v143 = __DataStorage._bytes.getter();
      if (v143)
      {
        v156 = __DataStorage._offset.getter();
        v157 = v193;
        if (__OFSUB__(v193, v156))
        {
          goto LABEL_360;
        }

        v143 += v193 - v156;
      }

      else
      {
        v157 = v193;
      }

      v165 = v186 - v157;
      if (__OFSUB__(v186, v157))
      {
        goto LABEL_346;
      }

      v166 = __DataStorage._length.getter();
      if (v166 >= v165)
      {
        v167 = v165;
      }

      else
      {
        v167 = v166;
      }

      v168 = v207;
      if (!v207)
      {
        goto LABEL_376;
      }

      v4 = a4;
      if (!v143)
      {
        goto LABEL_375;
      }

      goto LABEL_315;
    }

    if (v110 == 1)
    {
      if (v213 < v103)
      {
        goto LABEL_344;
      }

      v141 = __DataStorage._bytes.getter();
      if (v141)
      {
        v191 = v141;
        v142 = __DataStorage._offset.getter();
        if (__OFSUB__(v103, v142))
        {
          goto LABEL_361;
        }

        v143 = (v103 - v142 + v191);
      }

      else
      {
        v143 = 0;
      }

      v169 = __DataStorage._length.getter();
      v167 = (v103 >> 32) - v103;
      if (v169 < v205)
      {
        v167 = v169;
      }

      v168 = v207;
      if (!v207)
      {
        goto LABEL_387;
      }

      if (!v143)
      {
        goto LABEL_386;
      }

LABEL_315:
      if (v168 == v143)
      {
        sub_10006A178(v115, v116);
        sub_10006A178(v103, v230);
        v176 = v214;
        v95 = v223;
LABEL_319:
        v93 = v215;
        *(a1 + ((v201 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v201;
        v214 = v176 + 1;
        v5 = a3;
        v94 = v203;
        if (__OFADD__(v176, 1))
        {
          goto LABEL_340;
        }

        goto LABEL_170;
      }

      v173 = memcmp(v168, v143, v167);
      sub_10006A178(v115, v116);
      v108 = v223;
      v109 = __n;
      if (!v173)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v158 = v207;
    *__s1 = v103;
    *&__s1[8] = v230;
    *&__s1[12] = WORD2(v230);
    if (!v207)
    {
      goto LABEL_374;
    }

LABEL_277:
    v155 = memcmp(v158, __s1, v228);
    sub_10006A178(v115, v116);
LABEL_278:
    v108 = v223;
    if (!v155)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v110)
  {
LABEL_240:
    LOWORD(__s2) = v103;
    BYTE2(__s2) = BYTE2(v103);
    HIBYTE(__s2) = BYTE3(v103);
    v232 = BYTE4(v103);
    LOBYTE(v233) = BYTE5(v103);
    HIBYTE(v233) = BYTE6(v103);
    v234 = HIBYTE(v103);
    v235 = v230;
    v236 = WORD2(v230);
    v139 = v108;
    v140 = memcmp(__s1, &__s2, v228);
    v108 = v139;
    if (!v140)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  if (v110 != 2)
  {
    if (v213 < v103)
    {
      goto LABEL_341;
    }

    sub_100069E2C(v115, v116);
    v149 = __DataStorage._bytes.getter();
    if (!v149)
    {
      goto LABEL_372;
    }

    v150 = v149;
    v151 = __DataStorage._offset.getter();
    if (__OFSUB__(v103, v151))
    {
      goto LABEL_345;
    }

    v152 = (v103 - v151 + v150);
    v153 = __DataStorage._length.getter();
    if (!v152)
    {
      goto LABEL_373;
    }

    if (v153 >= v205)
    {
      v154 = (v103 >> 32) - v103;
    }

    else
    {
      v154 = v153;
    }

    v155 = memcmp(__s1, v152, v154);
    sub_10006A178(v115, v116);
    v4 = a4;
    v109 = __n;
    goto LABEL_278;
  }

  v209 = *(v103 + 16);
  v190 = *(v103 + 24);
  sub_100069E2C(v115, v116);
  v136 = __DataStorage._bytes.getter();
  if (v136)
  {
    v137 = __DataStorage._offset.getter();
    v138 = v209;
    if (__OFSUB__(v209, v137))
    {
      goto LABEL_359;
    }

    v136 = &v209[v136 - v137];
  }

  else
  {
    v138 = v209;
  }

  v161 = v190 - v138;
  if (__OFSUB__(v190, v138))
  {
    goto LABEL_343;
  }

  v162 = __DataStorage._length.getter();
  if (v136)
  {
    if (v162 >= v161)
    {
      v163 = v161;
    }

    else
    {
      v163 = v162;
    }

    v164 = memcmp(__s1, v136, v163);
    sub_10006A178(v115, v116);
    v4 = a4;
    v108 = v223;
    v109 = __n;
    if (!v164)
    {
LABEL_317:
      v95 = v108;
      v174 = v103;
      v175 = v230;
      goto LABEL_318;
    }

    goto LABEL_189;
  }

  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __DataStorage._length.getter();
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __DataStorage._length.getter();
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __DataStorage._length.getter();
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:

  __break(1u);
  return result;
}