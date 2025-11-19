void sub_1000D48D8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v8 = qword_10051B7F0;
    *v7 = qword_10051B7F0;
    (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
    v9 = v8;
    v10 = _dispatchPreconditionTest(_:)();
    (*(v4 + 8))(v7, v3);
    if ((v10 & 1) == 0)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (*(v1 + 16) != 1)
    {
      break;
    }

    v3 = *(a1 + 16);
    if (!v3)
    {
LABEL_34:
      if (qword_100501B70 == -1)
      {
LABEL_35:
        v26 = 0;
        if (v3)
        {
          v27 = (a1 + 32);
          do
          {
            v28 = *v27++;
            v26 |= qword_10040AA30[v28];
            --v3;
          }

          while (v3);
        }

        sub_100243A54(v26, 1uLL);
        return;
      }

LABEL_43:
      swift_once();
      goto LABEL_35;
    }

    if (qword_100501D78 != -1)
    {
      swift_once();
    }

    v29[0] = v1;
    v30 = a1;
    v11 = sub_1000CAAC4();
    v1 = v11;
    if ((v11 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer();
      sub_1000E0514(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v1 = v34;
      a1 = v35;
      v12 = v36;
      v13 = v37;
      v4 = v38;
    }

    else
    {
      v13 = 0;
      v17 = -1 << *(v11 + 32);
      a1 = v11 + 56;
      v12 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v4 = v19 & *(v11 + 56);
    }

    v31 = 0;
    v29[1] = v12;
    v20 = (v12 + 64) >> 6;
    while (1)
    {
      v7 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

      v24 = __CocoaSet.Iterator.next()();
      if (!v24 || (v32 = v24, type metadata accessor for Peer(), swift_dynamicCast(), (v23 = v33) == 0))
      {
LABEL_33:
        sub_100093854();
        a1 = v30;
        goto LABEL_34;
      }

LABEL_28:
      if (*v23 == _TtC10seserviced8LyonPeer && *(v23 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1 && *(v23 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) == 1)
      {
        v25 = v31;
        sub_1000C8E3C(v23);
        if (v25)
        {
        }

        v31 = 0;
      }
    }

    v21 = v13;
    v22 = v4;
    if (v4)
    {
LABEL_24:
      v4 = (v22 - 1) & v22;
      v23 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v22)))));

      if (!v23)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }

    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v20)
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 8 * v13);
      ++v21;
      if (v22)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_41:
    swift_once();
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "LyonUWB is not running", v16, 2u);
  }
}

uint64_t sub_1000D4DE4()
{
  v1 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonUWB_pendingTimeSyncEvents);

  v4 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonUWB_blockedReaderIdentifiers);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LyonUWB()
{
  result = qword_100503560;
  if (!qword_100503560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D4EF4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000D5034(char a1)
{
  if (qword_100501BF0 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_1002A24A4(2, 2, a1 & 1, 2, 0, 2);
}

void sub_1000D50B0(uint64_t a1)
{
  if (qword_100501BF0 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_1002A24A4(2, a1 != 0, 2, 2, 0, 2);
}

uint64_t sub_1000D5130(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100108358(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100109978(v21 + 1);
    }

    v19 = v8;
    sub_10011F7A4();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000D8088(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_1000D5368(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for DSKBLE.BLEScanRequest();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      v22 = sub_1001087D8(v7, result + 1);
      v23 = *(v22 + 16);
      if (*(v22 + 24) <= v23)
      {
        sub_100109950(v23 + 1);
      }

      sub_10010BE38(v24, v22);

      *v3 = v22;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    String.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = -1 << *(v6 + 32);
    v15 = v13 & ~v14;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_15:
      v19 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v2;

      sub_1000D8208(v21, v15, isUniquelyReferenced_nonNull_native);
      *v2 = v26;
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v16 = ~v14;
    while (1)
    {
      v17 = *(*(v6 + 48) + 8 * v15);
      v18 = *(v17 + 16) == *(a2 + 16) && *(v17 + 24) == *(a2 + 24);
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v15);

    return 0;
  }

  return result;
}

uint64_t sub_1000D558C(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1000D83A4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000D5684(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_100108A00(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100109E88(v19 + 1);
    }

    sub_10010BF4C(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a2 + 16));
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_1000D84F0(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(*(v6 + 48) + 8 * v13) + 16) != *(a2 + 16))
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1000D589C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v52 = *v42;
    sub_100069E2C(a2, a3);
    sub_1000D8650(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v42 = *v52;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v50 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v47 = v16;
  v46 = a3;
  v48 = v12;
  v49 = BYTE6(a3);
  v44 = v6 + 56;
  v45 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v50) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_65;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_66;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v49;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v47)
          {
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v52 = v19;
        *&v52[8] = v18;
        v52[10] = BYTE2(v18);
        v52[11] = BYTE3(v18);
        v52[12] = BYTE4(v18);
        v52[13] = BYTE5(v18);
        sub_100069E2C(v19, v18);
        v12 = v48;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_67;
      }

      sub_100069E2C(v19, v18);
      v33 = __DataStorage._bytes.getter();
      if (v33)
      {
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_70;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_100069E2C(v19, v18);
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v34 = __DataStorage._offset.getter();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_69;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v46;
    sub_10019F024(v33, a2, v46, v52);
    sub_10006A178(v19, v18);
    v9 = v44;
    v6 = v45;
    v12 = v48;
    if (v52[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v52[6] = 0;
  *v52 = 0;
  sub_100069E2C(v19, v18);
LABEL_60:
  sub_10019F024(v52, a2, a3, &v51);
  sub_10006A178(v19, v18);
  if (!v51)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_10006A178(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_100069E2C(v41, *(&v41 + 1));
  return 0;
}

uint64_t sub_1000D5D24(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for Peer();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v20 = sub_10010857C(v7, result + 1);
        v21 = *(v20 + 16);
        if (*(v20 + 24) <= v21)
        {
          sub_100109BDC(v21 + 1);
        }

        sub_10010BE50(v22, v20);

        *v3 = v20;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v6 + 48) + 8 * v13);

        v16 = static UUID.== infix(_:_:)();

        if (v16)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_11:
      v17 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v3;

      sub_1000D8AC8(v19, v13, isUniquelyReferenced_nonNull_native);
      *v3 = v25;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000D5FBC(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *v5;
  v10 = *(*v5 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = v9 + 56;
  v13 = -1 << *(v9 + 32);
  v14 = v11 & ~v13;
  v57 = a1;
  if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    v20 = a4;
LABEL_64:
    v47 = *v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v69 = *v56;
    sub_100069E2C(a2, a3);
    sub_100069E2C(v20, a5);
    sub_1000D8CA4(a2, a3, v20, a5, v14, isUniquelyReferenced_nonNull_native);
    *v56 = *v69;
    *v57 = a2;
    v57[1] = a3;
    v57[2] = v20;
    v57[3] = a5;
    return 1;
  }

  v15 = ~v13;
  if (a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = a5 == 0xC000000000000000;
  }

  v17 = !v16;
  v66 = v17;
  v18 = a5 >> 62;
  v19 = __OFSUB__(HIDWORD(a4), a4);
  v63 = v19;
  v61 = a5;
  v62 = HIDWORD(a4) - a4;
  v65 = BYTE6(a5);
  v20 = a4;
  v60 = a4;
  v21 = v9;
  v64 = v15;
  while (1)
  {
    v22 = (*(v21 + 48) + 32 * v14);
    v24 = *v22;
    v23 = v22[1];
    v25 = v22[2];
    v26 = v22[3];
    v27 = v26 >> 62;
    if (v26 >> 62 == 3)
    {
      if (v25)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26 == 0xC000000000000000;
      }

      v30 = !v28 || v18 < 3;
      if (((v30 | v66) & 1) == 0)
      {
        sub_10006A178(a2, a3);
        v50 = 0;
        v51 = 0xC000000000000000;
        goto LABEL_66;
      }

LABEL_36:
      v31 = 0;
      if (v18 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_36;
      }

      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      v34 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v34)
      {
        goto LABEL_68;
      }

      if (v18 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v27)
    {
      LODWORD(v31) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_69;
      }

      v31 = v31;
      if (v18 <= 1)
      {
LABEL_33:
        v35 = v65;
        if (v18)
        {
          v35 = v62;
          if (v63)
          {
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
            __break(1u);
LABEL_73:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v31 = BYTE6(v26);
      if (v18 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v18 != 2)
    {
      if (!v31)
      {
        goto LABEL_65;
      }

      goto LABEL_13;
    }

    v37 = *(v20 + 16);
    v36 = *(v20 + 24);
    v34 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v34)
    {
      goto LABEL_67;
    }

LABEL_39:
    if (v31 == v35)
    {
      break;
    }

LABEL_13:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v31 < 1)
  {
    goto LABEL_65;
  }

  if (v27 <= 1)
  {
    if (!v27)
    {
      *v69 = v25;
      *&v69[8] = v26;
      v69[10] = BYTE2(v26);
      v69[11] = BYTE3(v26);
      v69[12] = BYTE4(v26);
      v69[13] = BYTE5(v26);
      v38 = v23;
      sub_100069E2C(v24, v23);
      sub_100069E2C(v25, v26);
      v21 = v9;
      goto LABEL_61;
    }

    if (v25 >> 32 < v25)
    {
      goto LABEL_70;
    }

    v55 = v23;
    sub_100069E2C(v24, v23);
    sub_100069E2C(v25, v26);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v46))
      {
        goto LABEL_73;
      }

      v45 += v25 - v46;
    }

    __DataStorage._length.getter();
    v20 = v60;
    a5 = v61;
    sub_10019F024(v45, v60, v61, v69);
    v43 = v24;
    v44 = v55;
LABEL_58:
    sub_10006A178(v43, v44);
    sub_10006A178(v25, v26);
    v21 = v9;
    if (v69[0])
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  if (v27 == 2)
  {
    v39 = *(v25 + 16);
    v54 = *(v25 + 24);
    v40 = v23;
    sub_100069E2C(v24, v23);
    sub_100069E2C(v25, v26);
    v41 = __DataStorage._bytes.getter();
    if (v41)
    {
      v42 = __DataStorage._offset.getter();
      if (__OFSUB__(v39, v42))
      {
        goto LABEL_72;
      }

      v41 += v39 - v42;
    }

    if (__OFSUB__(v54, v39))
    {
      goto LABEL_71;
    }

    __DataStorage._length.getter();
    v20 = v60;
    a5 = v61;
    sub_10019F024(v41, v60, v61, v69);
    v43 = v24;
    v44 = v40;
    goto LABEL_58;
  }

  *&v69[6] = 0;
  *v69 = 0;
  v38 = v23;
  sub_100069E2C(v24, v23);
  sub_100069E2C(v25, v26);
LABEL_61:
  sub_10019F024(v69, v20, a5, &v68);
  sub_10006A178(v24, v38);
  sub_10006A178(v25, v26);
  if (!v68)
  {
LABEL_62:
    v15 = v64;
    v12 = v9 + 56;
    goto LABEL_13;
  }

LABEL_65:
  sub_10006A178(a2, a3);
  v50 = v20;
  v51 = a5;
LABEL_66:
  sub_10006A178(v50, v51);
  v52 = (*(v21 + 48) + 32 * v14);
  v53 = *v52;
  v67 = v52[1];
  *v57 = *v52;
  *(v57 + 1) = v67;
  sub_100069E2C(v53, *(&v53 + 1));
  sub_100069E2C(v67, *(&v67 + 1));
  return 0;
}

uint64_t sub_1000D652C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v49 = v2;
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    Data.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = v6 + 56;
    v15 = -1 << *(v6 + 32);
    v16 = v13 & ~v15;
    if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
LABEL_64:
      v42 = *v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v55 = *v49;

      sub_1000D923C(v44, v16, isUniquelyReferenced_nonNull_native);
      *v49 = *v55;
      *a1 = a2;
      return 1;
    }

    v17 = ~v15;
    v52 = v6;
    v53 = a2;
    v51 = v6 + 56;
    v54 = ~v15;
    while (1)
    {
      v18 = *(*(v6 + 48) + 8 * v16);
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v22 = *(a2 + 16);
      v21 = *(a2 + 24);
      v23 = v20 >> 62;
      v24 = v21 >> 62;
      if (v20 >> 62 == 3)
      {
        break;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v33 = *(v19 + 16);
          v32 = *(v19 + 24);
          v30 = __OFSUB__(v32, v33);
          v26 = v32 - v33;
          if (v30)
          {
            goto LABEL_72;
          }

          goto LABEL_32;
        }

        v26 = 0;
        if (v24 > 1)
        {
          goto LABEL_26;
        }
      }

      else if (v23)
      {
        LODWORD(v26) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_73;
        }

        v26 = v26;
        if (v24 > 1)
        {
LABEL_26:
          if (v24 != 2)
          {
            if (!v26)
            {
              goto LABEL_63;
            }

            goto LABEL_10;
          }

          v29 = *(v22 + 16);
          v28 = *(v22 + 24);
          v30 = __OFSUB__(v28, v29);
          v31 = v28 - v29;
          if (v30)
          {
            goto LABEL_71;
          }

          goto LABEL_35;
        }
      }

      else
      {
        v26 = BYTE6(v20);
        if (v24 > 1)
        {
          goto LABEL_26;
        }
      }

LABEL_33:
      if (v24)
      {
        if (__OFSUB__(HIDWORD(v22), v22))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        if (v26 != HIDWORD(v22) - v22)
        {
          goto LABEL_10;
        }

        goto LABEL_39;
      }

      v31 = BYTE6(v21);
LABEL_35:
      if (v26 != v31)
      {
        goto LABEL_10;
      }

LABEL_39:
      if (v26 < 1)
      {
        goto LABEL_63;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v35 = *(v19 + 16);
          v34 = *(v19 + 24);

          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v37 = __DataStorage._offset.getter();
            if (__OFSUB__(v35, v37))
            {
              goto LABEL_77;
            }

            v36 += v35 - v37;
          }

          if (__OFSUB__(v34, v35))
          {
            goto LABEL_75;
          }

          __DataStorage._length.getter();
          sub_10019F024(v36, v22, v21, v55);

          v38 = v55[0];
          a2 = v53;
          goto LABEL_59;
        }

        *&v55[6] = 0;
        *v55 = 0;
      }

      else
      {
        if (v23)
        {
          v39 = v19;
          if (v19 >> 32 < v19)
          {
            goto LABEL_74;
          }

          v40 = __DataStorage._bytes.getter();
          if (v40)
          {
            v41 = __DataStorage._offset.getter();
            if (__OFSUB__(v39, v41))
            {
              goto LABEL_78;
            }

            v40 += v39 - v41;
          }

          a2 = v53;
          __DataStorage._length.getter();
          sub_10019F024(v40, v22, v21, v55);

          v38 = v55[0];
LABEL_59:
          v14 = v51;
          v6 = v52;
          v17 = v54;
          if (v38)
          {
            goto LABEL_63;
          }

          goto LABEL_10;
        }

        *v55 = *(v18 + 16);
        *&v55[8] = v20;
        v55[10] = BYTE2(v20);
        v55[11] = BYTE3(v20);
        v55[12] = BYTE4(v20);
        v55[13] = BYTE5(v20);

        v17 = v54;
      }

      sub_10019F024(v55, v22, v21, &v56);

      if (v56)
      {
        goto LABEL_63;
      }

LABEL_10:
      v16 = (v16 + 1) & v17;
      if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    if (v19)
    {
      v25 = 0;
    }

    else
    {
      v25 = v20 == 0xC000000000000000;
    }

    v26 = 0;
    v27 = v25 && v21 >> 62 == 3;
    if (v27 && !v22 && v21 == 0xC000000000000000)
    {
LABEL_63:

      *a1 = *(*(v6 + 48) + 8 * v16);

      return 0;
    }

LABEL_32:
    if (v24 > 1)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = __CocoaSet.member(for:)();

  if (v8)
  {

    v56 = v8;
    type metadata accessor for DSKExpress.ExpressKey();
    swift_dynamicCast();
    result = 0;
    *a1 = *v55;
    return result;
  }

  v45 = __CocoaSet.count.getter();
  if (__OFADD__(v45, 1))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  v46 = sub_100108C0C(v7, v45 + 1);
  *v55 = v46;
  v47 = *(v46 + 16);
  if (*(v46 + 24) <= v47)
  {
    sub_10010A598(v47 + 1);
    v46 = *v55;
  }

  sub_10010BFF0(v48, v46);

  *v3 = v46;
  *a1 = a2;
  return 1;
}

uint64_t sub_1000D6A84(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:bytes:count:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 2 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1000D96AC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000D6B6C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for UWBSession();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100108330(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1001095DC(v21 + 1);
    }

    v19 = v8;
    sub_10011F7A4();

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for UWBSession();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000D97D0(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_1000D6D84(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000E0514(&qword_100502C18, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1000D9940(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1000D7064(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for DSKBLE.BLEConnectionRequest();
      swift_dynamicCast();
      result = 0;
      *a1 = v26;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v21 = sub_100108E38(v7, result + 1);
        v22 = *(v21 + 16);
        if (*(v21 + 24) <= v22)
        {
          sub_10010A814(v22 + 1);
        }

        sub_10010C0B4(v23, v21);

        *v3 = v21;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v24 = v2;
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    v11 = *(a2 + 16);
    type metadata accessor for UUID();
    sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v6 + 32);
    v14 = v12 & ~v13;
    if ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      v15 = ~v13;
      while (1)
      {
        v16 = *(*(*(v6 + 48) + 8 * v14) + 16);
        v17 = *(a2 + 16);

        LOBYTE(v16) = static UUID.== infix(_:_:)();

        if (v16)
        {
          break;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v14);

      return 0;
    }

    else
    {
LABEL_11:
      v18 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *v24;

      sub_1000D9BE4(v20, v14, isUniquelyReferenced_nonNull_native);
      *v24 = v27;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000D730C(Swift::Int *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *v3;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = __CocoaSet.member(for:)();

    if (v14)
    {

      v39 = v14;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v33 = sub_100109094(v13, result + 1);
        v38 = v33;
        v34 = *(v33 + 16);
        if (*(v33 + 24) <= v34)
        {
          sub_10010ACF0(v34 + 1);
          v33 = v38;
        }

        sub_10010C1BC(v35, v33);

        *v3 = v33;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v36 = v3;
    v37 = a1;
    v16 = *(v12 + 40);
    v17 = v9;
    Hasher.init(_seed:)();
    v18 = [*(a2 + 24) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v11, v17);
    v19 = Hasher._finalize()();
    v20 = -1 << *(v12 + 32);
    v21 = v19 & ~v20;
    if ((*(v12 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      while (1)
      {
        v23 = *(*(*(v12 + 48) + 8 * v21) + 24);
        v24 = *(a2 + 24);

        v25 = v23;
        v26 = v24;
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v12 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *v37 = *(*(v12 + 48) + 8 * v21);

      return 0;
    }

    else
    {
LABEL_11:
      v28 = v36;
      v29 = *v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v28;

      sub_1000D9DC4(v31, v21, isUniquelyReferenced_nonNull_native);
      v32 = v37;
      *v28 = v38;
      *v32 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000D7680(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10009393C(0, &qword_100503668, CBCharacteristic_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100109398(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10010B060(v21 + 1);
    }

    v19 = v8;
    sub_10011F7A4();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10009393C(0, &qword_100503668, CBCharacteristic_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000DA074(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_1000D78B8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000DA1F4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000D7A08(uint64_t a1, Swift::Int a2)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v24 = *(a2 + 24);
  v7 = *v2;
  v8 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 40 * v11);
      v14 = *v13 == v6 && v13[1] == v5;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_1000B6B54(&v24);
    v19 = *(v7 + 48) + 40 * v11;
    v20 = *(v19 + 8);
    v21 = *(v19 + 32);
    *a1 = *v19;
    *(a1 + 8) = v20;
    *(a1 + 16) = *(v19 + 16);
    *(a1 + 32) = v21;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_1000B6AF8(&v24, v23);
    sub_1000DA374(a2, v11, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
    v17 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v17;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1000D7BA4(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1000DA510(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000D7C9C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:_:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1000DA65C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000D7D7C(double *a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:_:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1000DA77C(v9, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000D7E70(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for SecureElementApplicationEntity();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1001093BC(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10010BC00(v21 + 1);
    }

    v19 = v8;
    sub_10011F7A4();

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for SecureElementApplicationEntity();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000DA8A8(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

void sub_1000D8088(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100109978(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10010C62C();
      goto LABEL_12;
    }

    sub_1000DCD58(v6 + 1, &unk_100507D10, &qword_10040A9E8);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_1000D8208(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100109950(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10010C794();
      goto LABEL_16;
    }

    sub_1000DB8B0(v6 + 1, &unk_100507CF0, &qword_10040B270, &String.hash(into:));
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for DSKBLE.BLEScanRequest();
    do
    {
      v14 = *(*(v8 + 48) + 8 * a2);
      if (*(v14 + 16) == *(v5 + 16) && *(v14 + 24) == *(v5 + 24))
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v5;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000D83A4(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10010998C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10010C640();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000DAD48(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000D84F0(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100109E88(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10010C7A8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000DB1F0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v4 + 16));
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(*(v8 + 48) + 8 * a2) + 16) != *(v4 + 16))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000D8650(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10010A0D8(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_10010C7BC();
        goto LABEL_68;
      }

      sub_1000DB418(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v49 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v46 = v18;
      v45 = HIDWORD(v7) - v7;
      v47 = v14;
      v48 = BYTE6(a2);
      v42 = v7;
      v43 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v48;
          if (v17)
          {
            v27 = v45;
            if (v46)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_100069E2C(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v51[6] = 0;
            *v51 = 0;
            sub_100069E2C(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_100069E2C(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v37 = __DataStorage._offset.getter();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              __DataStorage._length.getter();
              v7 = v42;
              a2 = v43;
              sub_10019F024(v35, v42, v43, v51);
              result = sub_10006A178(v21, v20);
              v12 = v10 + 56;
              v14 = v47;
              if (v51[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v51 = v21;
            *&v51[8] = v20;
            v51[10] = BYTE2(v20);
            v51[11] = BYTE3(v20);
            v51[12] = BYTE4(v20);
            v51[13] = BYTE5(v20);
            sub_100069E2C(v21, v20);
            v14 = v47;
          }

          sub_10019F024(v51, v7, a2, &v50);
          result = sub_10006A178(v21, v20);
          if (v50)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v49) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v44;
  *(*v44 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  return result;
}

Swift::Int sub_1000D8AC8(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100109BDC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10010C780();
      goto LABEL_12;
    }

    sub_1000DAF68(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for Peer();
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);

      v14 = static UUID.== infix(_:_:)();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000D8CA4(Swift::Int result, Swift::Int a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  v61 = result;
  if (v11 <= v10 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_10010A338(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_10010C918();
        goto LABEL_69;
      }

      sub_1000DB654(v10 + 1);
    }

    v12 = *v6;
    v13 = *(*v6 + 40);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v14 = v12 + 56;
    v15 = -1 << *(v12 + 32);
    a5 = result & ~v15;
    if ((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v16 = ~v15;
      if (a3)
      {
        v17 = 0;
      }

      else
      {
        v17 = a4 == 0xC000000000000000;
      }

      v18 = !v17;
      v72 = v18;
      v19 = a4 >> 62;
      v20 = __OFSUB__(HIDWORD(a3), a3);
      v64 = v20;
      v63 = HIDWORD(a3) - a3;
      v70 = v16;
      v71 = BYTE6(a4);
      v58 = v12;
      v59 = a3;
      v65 = v12 + 56;
      while (1)
      {
        v21 = (*(v12 + 48) + 32 * a5);
        v23 = *v21;
        v22 = v21[1];
        v25 = v21[2];
        v24 = v21[3];
        v26 = v24 >> 62;
        if (v24 >> 62 == 3)
        {
          break;
        }

        if (v26 > 1)
        {
          if (v26 != 2)
          {
            goto LABEL_32;
          }

          v42 = *(v25 + 16);
          v41 = *(v25 + 24);
          v34 = __OFSUB__(v41, v42);
          v30 = v41 - v42;
          if (v34)
          {
            goto LABEL_74;
          }
        }

        else if (v26)
        {
          LODWORD(v30) = HIDWORD(v25) - v25;
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_75;
          }

          v30 = v30;
        }

        else
        {
          v30 = BYTE6(v24);
        }

LABEL_33:
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            if (!v30)
            {
              goto LABEL_68;
            }

            goto LABEL_20;
          }

          v33 = *(a3 + 16);
          v32 = *(a3 + 24);
          v34 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (v34)
          {
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }
        }

        else
        {
          v31 = v71;
          if (v19)
          {
            v31 = v63;
            if (v64)
            {
              goto LABEL_72;
            }
          }
        }

        if (v30 == v31)
        {
          if (v30 < 1)
          {
            goto LABEL_68;
          }

          if (v26 > 1)
          {
            if (v26 == 2)
            {
              v43 = *(v25 + 16);
              v44 = *(v25 + 24);
              v67 = v22;
              sub_100069E2C(v23, v22);
              sub_100069E2C(v25, v24);
              v45 = __DataStorage._bytes.getter();
              if (v45)
              {
                v46 = __DataStorage._offset.getter();
                if (__OFSUB__(v43, v46))
                {
                  goto LABEL_78;
                }

                v45 += v43 - v46;
              }

              if (__OFSUB__(v44, v43))
              {
                goto LABEL_77;
              }

              __DataStorage._length.getter();
              a3 = v59;
              sub_10019F024(v45, v59, a4, v74);
              v16 = v70;
              sub_10006A178(v23, v67);
              result = sub_10006A178(v25, v24);
              v12 = v58;
              v14 = v65;
              if (v74[0])
              {
                goto LABEL_68;
              }
            }

            else
            {
              *&v74[6] = 0;
              *v74 = 0;
              v49 = v23;
              v69 = v23;
              v50 = a3;
              v51 = a4;
              v52 = v22;
              sub_100069E2C(v49, v22);
              sub_100069E2C(v25, v24);
              sub_10019F024(v74, v50, v51, v73);
              v16 = v70;
              v53 = v52;
              a4 = v51;
              a3 = v50;
              sub_10006A178(v69, v53);
              result = sub_10006A178(v25, v24);
              if (v73[0])
              {
                goto LABEL_68;
              }
            }
          }

          else
          {
            if (v26)
            {
              if (v25 >> 32 < v25)
              {
                goto LABEL_76;
              }

              v68 = v22;
              sub_100069E2C(v23, v22);
              sub_100069E2C(v25, v24);
              v47 = __DataStorage._bytes.getter();
              if (v47)
              {
                v48 = __DataStorage._offset.getter();
                if (__OFSUB__(v25, v48))
                {
                  goto LABEL_79;
                }

                v47 += v25 - v48;
              }

              __DataStorage._length.getter();
              a3 = v59;
              sub_10019F024(v47, v59, a4, v74);
              sub_10006A178(v23, v68);
              result = sub_10006A178(v25, v24);
              v40 = v74[0];
              v12 = v58;
              v14 = v65;
            }

            else
            {
              *v74 = v25;
              *&v74[8] = v24;
              v74[10] = BYTE2(v24);
              v74[11] = BYTE3(v24);
              v74[12] = BYTE4(v24);
              v74[13] = BYTE5(v24);
              v35 = v23;
              v66 = v23;
              v36 = a3;
              v37 = a4;
              v38 = v22;
              sub_100069E2C(v35, v22);
              sub_100069E2C(v25, v24);
              v14 = v65;
              sub_10019F024(v74, v36, v37, v73);
              v39 = v38;
              a4 = v37;
              a3 = v36;
              sub_10006A178(v66, v39);
              result = sub_10006A178(v25, v24);
              v40 = v73[0];
            }

            v16 = v70;
            if (v40)
            {
LABEL_68:
              result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_69;
            }
          }
        }

LABEL_20:
        a5 = (a5 + 1) & v16;
        if (((*(v14 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0xC000000000000000;
      }

      v29 = !v27 || v19 < 3;
      if (((v29 | v72) & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_32:
      v30 = 0;
      goto LABEL_33;
    }
  }

LABEL_69:
  v54 = *v60;
  *(*v60 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v55 = (*(v54 + 48) + 32 * a5);
  *v55 = v61;
  v55[1] = a2;
  v55[2] = a3;
  v55[3] = a4;
  v56 = *(v54 + 16);
  v34 = __OFADD__(v56, 1);
  v57 = v56 + 1;
  if (v34)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

  *(v54 + 16) = v57;
  return result;
}

Swift::Int sub_1000D923C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10010A598(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_10010CA98();
        goto LABEL_62;
      }

      sub_1000DB8B0(v6 + 1, &qword_100503640, &qword_10040AA00, &Data.hash(into:));
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    Hasher.init(_seed:)();
    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v12 = v8 + 56;
    v13 = -1 << *(v8 + 32);
    a2 = result & ~v13;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v14 = ~v13;
      result = type metadata accessor for DSKExpress.ExpressKey();
      v40 = v8 + 56;
      v41 = v8;
      v42 = v5;
      v44 = v14;
      while (1)
      {
        v15 = *(*(v8 + 48) + 8 * a2);
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v20 = v17 >> 62;
        v21 = v18 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v20 <= 1)
        {
          if (!v20)
          {
            v23 = BYTE6(v17);
            if (v21 <= 1)
            {
              goto LABEL_35;
            }

            goto LABEL_40;
          }

          LODWORD(v23) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_68;
          }

          v23 = v23;
          goto LABEL_34;
        }

        if (v20 == 2)
        {
          v26 = *(v16 + 16);
          v25 = *(v16 + 24);
          v27 = __OFSUB__(v25, v26);
          v23 = v25 - v26;
          if (v27)
          {
            goto LABEL_67;
          }

          goto LABEL_34;
        }

        v23 = 0;
        if (v21 <= 1)
        {
LABEL_35:
          if (v21)
          {
            LODWORD(v28) = HIDWORD(v19) - v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_65;
            }

            v28 = v28;
          }

          else
          {
            v28 = BYTE6(v18);
          }

          goto LABEL_42;
        }

LABEL_40:
        if (v21 != 2)
        {
          if (!v23)
          {
            goto LABEL_61;
          }

          goto LABEL_11;
        }

        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        v27 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v27)
        {
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
          __break(1u);
        }

LABEL_42:
        if (v23 != v28)
        {
          goto LABEL_11;
        }

        if (v23 < 1)
        {
          goto LABEL_61;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v32 = *(v16 + 16);
            v31 = *(v16 + 24);

            v33 = __DataStorage._bytes.getter();
            if (v33)
            {
              v34 = __DataStorage._offset.getter();
              if (__OFSUB__(v32, v34))
              {
                goto LABEL_71;
              }

              v33 += v32 - v34;
            }

            if (__OFSUB__(v31, v32))
            {
              goto LABEL_70;
            }

            goto LABEL_57;
          }

          *&v46[6] = 0;
          *v46 = 0;
        }

        else
        {
          if (v20)
          {
            v35 = v16;
            if (v16 >> 32 < v16)
            {
              goto LABEL_69;
            }

            v33 = __DataStorage._bytes.getter();
            if (v33)
            {
              v36 = __DataStorage._offset.getter();
              if (__OFSUB__(v35, v36))
              {
                goto LABEL_72;
              }

              v33 += v35 - v36;
            }

LABEL_57:
            __DataStorage._length.getter();
            sub_10019F024(v33, v19, v18, v46);

            v8 = v41;
            v5 = v42;
            v12 = v40;
            v14 = v44;
            if (v46[0])
            {
              goto LABEL_61;
            }

            goto LABEL_11;
          }

          *v46 = *(v15 + 16);
          *&v46[8] = v17;
          v46[10] = BYTE2(v17);
          v46[11] = BYTE3(v17);
          v46[12] = BYTE4(v17);
          v46[13] = BYTE5(v17);

          v14 = v44;
        }

        sub_10019F024(v46, v19, v18, &v45);

        if (v45)
        {
          goto LABEL_61;
        }

LABEL_11:
        a2 = (a2 + 1) & v14;
        if (((*(v12 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      if (v16)
      {
        v22 = 0;
      }

      else
      {
        v22 = v17 == 0xC000000000000000;
      }

      v23 = 0;
      v24 = v22 && v18 >> 62 == 3;
      if (v24 && !v19 && v18 == 0xC000000000000000)
      {
LABEL_61:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_62;
      }

LABEL_34:
      if (v21 <= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }
  }

LABEL_62:
  v37 = *v43;
  *(*v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v37 + 48) + 8 * a2) = v5;
  v38 = *(v37 + 16);
  v27 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (v27)
  {
    goto LABEL_66;
  }

  *(v37 + 16) = v39;
  return result;
}

uint64_t sub_1000D96AC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10010AAC8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10010CAC0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000DBD7C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 2 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 2 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000D97D0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001095DC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10010C3E0();
      goto LABEL_12;
    }

    sub_1000DCD58(v6 + 1, &unk_100503E90, &qword_10040A9E0);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for UWBSession();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000D9940(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001095F0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10010C3F4();
      goto LABEL_12;
    }

    sub_1000DAA18(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1000E0514(&qword_100502C18, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000D9BE4(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10010A814(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10010CAAC();
      goto LABEL_12;
    }

    sub_1000DBAE8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v10 = *(v5 + 16);
  type metadata accessor for UUID();
  sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    do
    {
      v13 = *(*(*(v8 + 48) + 8 * a2) + 16);
      v14 = *(v5 + 16);

      LOBYTE(v13) = static UUID.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000D9DC4(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10010ACF0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_10010CC00();
      goto LABEL_12;
    }

    sub_1000DBF70(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v16 = [*(a1 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v8 + 8))(v11, v7);
  v17 = Hasher._finalize()();
  v18 = -1 << *(v14 + 32);
  a2 = v17 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v29[1] = type metadata accessor for DSKBLE.BLEPeripheral();
    sub_10009393C(0, &qword_100502D20, NSObject_ptr);
    do
    {
      v20 = *(*(*(v14 + 48) + 8 * a2) + 24);
      v21 = *(a1 + 24);

      v22 = v20;
      v23 = v21;
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + 8 * a2) = a1;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000DA074(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10010B060(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10010CD54();
      goto LABEL_12;
    }

    sub_1000DCD58(v6 + 1, &unk_100504050, &qword_10040AA20);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10009393C(0, &qword_100503668, CBCharacteristic_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_1000DA1F4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10010B074(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10010CD68();
      goto LABEL_16;
    }

    sub_1000DC2AC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000DA374(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10010B2D4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10010CEC4();
      goto LABEL_16;
    }

    sub_1000DC4E4(v6 + 1);
  }

  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *v3;
  v11 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 40 * a2);
      if (*v14 == v8 && v14[1] == v9)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = *(v16 + 48) + 40 * a2;
  v18 = *(v5 + 16);
  *v17 = *v5;
  *(v17 + 16) = v18;
  *(v17 + 32) = *(v5 + 32);
  v19 = *(v16 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v16 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000DA510(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10010B558(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10010D03C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000DC748(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000DA65C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10010B7A8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10010D17C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000DC968(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000DA77C(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_10010B9CC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_10010D2BC();
      result = v7;
      goto LABEL_12;
    }

    sub_1000DCB58(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = static Hasher._hash(seed:_:)();
  v11 = -1 << *(v8 + 32);
  result = v10 & ~v11;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v11;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v12;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v13 + 48) + 8 * result) = a3;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000DA8A8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10010BC00(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10010D3FC();
      goto LABEL_12;
    }

    sub_1000DCD58(v6 + 1, &unk_100503FF0, &unk_10040B340);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for SecureElementApplicationEntity();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000DAA18(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100068FC4(&unk_100503F30, &unk_10040B2B0);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1000DAD48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503620, &unk_10040B2C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DAF68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100507CE0, &unk_10040B260);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);

      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DB1F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100503F40, &unk_1004101B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v17 + 16));
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DB418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100503EF0, &unk_10040B280);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_100069E2C(v19, v20);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DB654(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503618, &unk_10040B290);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 32 * (v15 | (v7 << 6)));
      v28 = v18[1];
      v29 = *v18;
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_100069E2C(v29, *(&v29 + 1));
      sub_100069E2C(v28, *(&v28 + 1));
      Data.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 32 * v13);
      *v14 = v29;
      v14[1] = v28;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DB8B0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  sub_100068FC4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v6 + 16))
  {
    v31 = v5;
    v10 = 0;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v6 + 48) + 8 * (v17 | (v10 << 6)));
      v21 = *(v9 + 40);
      Hasher.init(_seed:)();
      v22 = *(v20 + 16);
      v23 = *(v20 + 24);

      a4(v33, v22, v23);
      result = Hasher._finalize()();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v5 = v31;
        goto LABEL_28;
      }

      v19 = *(v6 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v5 = v9;
  }

  return result;
}

uint64_t sub_1000DBAE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100503E80, &unk_10040B250);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v30 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = *(v18 + 16);
      type metadata accessor for UUID();
      sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);

      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
      v11 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v30 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DBD7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503F90, &qword_10040A9F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 2 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DBF70(uint64_t a1)
{
  v2 = v1;
  v39 = type metadata accessor for UUID();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_100503678, &qword_10040AA28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v38 = (v4 + 8);
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(*(v8 + 48) + 8 * (v20 | (v12 << 6)));
      v24 = *(v11 + 40);
      Hasher.init(_seed:)();
      v25 = *(v23 + 24);

      v26 = [v25 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
      v27 = v39;
      dispatch thunk of Hashable.hash(into:)();
      (*v38)(v7, v27);
      result = Hasher._finalize()();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v23;
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v36;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1000DC2AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503648, &qword_10040AA08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DC4E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503658, &qword_10040AA18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 40 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v33 = v19[3];
      v34 = v19[2];
      v22 = v19[4];
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 40 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v34;
      v15[3] = v33;
      v15[4] = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DC748(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100503FD0, &unk_10040B320);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DC968(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&unk_100503FE0, &unk_10040B330);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DCB58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100068FC4(&qword_100503650, &qword_10040AA10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = v14 | (v7 << 6);
      v18 = *(v3 + 48);
      v19 = *(v18 + 8 * v17);
      v20 = *(v6 + 40);
      if (v19 != 0.0)
      {
        v21 = *(v18 + 8 * v17);
      }

      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v19;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_28:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000DCD58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_100068FC4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

unint64_t sub_1000DCF64(int64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for UUID();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v41 = (v13 + 1) & v12;
    v42 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    v40 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v42(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 24 * a1;
          v33 = (v31 + 24 * v11);
          if (a1 != v11 || v32 >= v33 + 24)
          {
            v34 = *v33;
            *(v32 + 16) = *(v33 + 2);
            *v32 = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1000DD28C(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + a1);
          v33 = (v31 + v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1000DD5AC(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 2 * a1);
          v33 = (v31 + 2 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

Swift::Int sub_1000DD8CC(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1000DDA60(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v3;
        v19 = (v17 + 40 * v6);
        if (v3 != v6 || v18 >= v19 + 40)
        {
          v9 = *v19;
          v10 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v9;
          *(v18 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000DDC00(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      sub_100069E2C(v11, v12);
      Data.hash(into:)();
      v13 = Hasher._finalize()();
      result = sub_10006A178(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000DDDB8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();
      sub_100069E2C(v13, v14);
      Data.hash(into:)();
      v15 = Hasher._finalize()();
      result = sub_10006A178(v13, v14);
      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1000DDF80(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000DE114(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1000DE434(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1000DE5E4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1000DE770(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 4 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:bytes:count:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 4 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000DE8E4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Date() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000DEAD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 2 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:bytes:count:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 2 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1000DEC48(uint64_t a1)
{
  v3 = *v1;
  v4 = NSObject._rawHashValue(seed:)(*(*v1 + 40));
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    type metadata accessor for UWBLyonSession();
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

Swift::Int sub_1000DED78(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = &_swiftEmptySetSingleton;
    v22 = &_swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
      while (1)
      {
        swift_dynamicCast();
        v6 = a1(&v21);
        if (v3)
        {
          break;
        }

        v7 = v21;
        if (v6)
        {
          v8 = v4[2];
          if (v4[3] <= v8)
          {
            sub_100109978(v8 + 1);
          }

          v4 = v22;
          result = NSObject._rawHashValue(seed:)(v22[5]);
          v10 = (v4 + 7);
          v11 = -1 << *(v4 + 32);
          v12 = result & ~v11;
          v13 = v12 >> 6;
          if (((-1 << v12) & ~v4[(v12 >> 6) + 7]) != 0)
          {
            v14 = __clz(__rbit64((-1 << v12) & ~v4[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v15 = 0;
            v16 = (63 - v11) >> 6;
            do
            {
              if (++v13 == v16 && (v15 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v17 = v13 == v16;
              if (v13 == v16)
              {
                v13 = 0;
              }

              v15 |= v17;
              v18 = *&v10[8 * v13];
            }

            while (v18 == -1);
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          }

          *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
          *(v4[6] + 8 * v14) = v7;
          ++v4[2];
        }

        else
        {
        }

        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_21;
        }
      }

      v20 = v21;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v19 = sub_1000DF288(a1, a2, a3);
    if (!v3)
    {
      return v19;
    }
  }

  return v4;
}

Swift::Int sub_1000DEFB8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = &_swiftEmptySetSingleton;
    v23 = &_swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Peer();
      v21 = v5;
      while (1)
      {
        swift_dynamicCast();
        v6 = v5(&v22);
        if (v3)
        {
          break;
        }

        v7 = v22;
        if (v6)
        {
          v8 = v4[2];
          if (v4[3] <= v8)
          {
            sub_100109BDC(v8 + 1);
          }

          v4 = v23;
          v9 = v23[5];
          Hasher.init(_seed:)();
          type metadata accessor for UUID();
          sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
          dispatch thunk of Hashable.hash(into:)();
          result = Hasher._finalize()();
          v11 = (v4 + 7);
          v12 = -1 << *(v4 + 32);
          v13 = result & ~v12;
          v14 = v13 >> 6;
          if (((-1 << v13) & ~v4[(v13 >> 6) + 7]) != 0)
          {
            v15 = __clz(__rbit64((-1 << v13) & ~v4[(v13 >> 6) + 7])) | v13 & 0x7FFFFFFFFFFFFFC0;
            v5 = v21;
          }

          else
          {
            v16 = 0;
            v17 = (63 - v12) >> 6;
            v5 = v21;
            do
            {
              if (++v14 == v17 && (v16 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v18 = v14 == v17;
              if (v14 == v17)
              {
                v14 = 0;
              }

              v16 |= v18;
              v19 = *&v11[8 * v14];
            }

            while (v19 == -1);
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          }

          *&v11[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
          *(v4[6] + 8 * v15) = v7;
          ++v4[2];
        }

        else
        {
        }

        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v20 = sub_1000DF538(a1, a2, a3);
    if (!v3)
    {
      return v20;
    }
  }

  return v4;
}

uint64_t sub_1000DF288(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v29 = a1;
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v25 = v6;
    v30 = v3;
    v27 = &v25;
    __chkstk_darwin();
    v26 = &v25 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v7);
    v28 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v31 = *(*(v4 + 48) + 8 * v16);
      v18 = v31;
      v3 = v30;
      v19 = v29(&v31);
      v30 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v20 = v19;

      v4 = v17;
      if (v20)
      {
        *&v26[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_10024A654(v26, v25, v28, v4);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_10024A654(v26, v25, v28, v4);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_1000DFD60(v23, v6, v4, v29);

  if (!v3)
  {
    return v24;
  }

  return result;
}

uint64_t sub_1000DF538(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v24 = v7;
    v29 = v3;
    v26 = &v24;
    __chkstk_darwin(a1);
    v25 = &v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v8);
    v27 = 0;
    v9 = 0;
    v7 = a3 + 56;
    v10 = 1 << *(a3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a3 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v30 = *(*(a3 + 48) + 8 * v17);

      v3 = v29;
      v18 = v28(&v30);
      v29 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v19 = v18;

      if (v19)
      {
        *&v25[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_10024AA64(v25, v24, v27, a3);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_10024AA64(v25, v24, v27, a3);
      }

      v16 = *(v7 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_1000DFDF0(v22, v7, a3, v28, a2);

  if (!v3)
  {
    return v23;
  }

  return result;
}

void sub_1000DF81C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_10024A654(a1, a2, v20, a3);
        return;
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
      goto LABEL_16;
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
}

uint64_t sub_1000DF988(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = 0;
  v21 = result;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v25 = *(*(a3 + 48) + 8 * v16);

    v17 = a4(&v25);

    if (v6)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return a6(v21, a2, v22, a3);
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
      goto LABEL_16;
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

void sub_1000DFB00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = type metadata accessor for UUID();
  v6 = *(*(v39 - 8) + 64);
  v8.n128_f64[0] = __chkstk_darwin(v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v7 + 16;
  v35 = v7;
  v32 = 0;
  v33 = (v7 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20, v8);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      (*v33)(v21, v20);
      return;
    }

    v26 = v24;
    (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        sub_10024ACE0(v31, v30, v32, v28);
        return;
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1000DFD60(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_1000DF81C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1000DFDF0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1000DF988(result, a2, a3, a4, a5, sub_10024AA64);

    return v10;
  }

  return result;
}

uint64_t sub_1000DFE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v6 = *(a1 + 8);
  if (a2)
  {
    v10 = *(a1 + 8);

    result = a4(a2, a3, v6);
    v6 = result;
  }

  else
  {
    v12 = *(a1 + 8);
  }

  *a5 = v6;
  return result;
}

uint64_t sub_1000DFF08(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for Peer();
  sub_1000E0514(&qword_100503F20, type metadata accessor for Peer);
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (!i)
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v10;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = *(a1 + 8 * i + 32);

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1000D5D24(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000E0074(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000E1E80();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100069E2C(v6, *v4);
      sub_1000D589C(v7, v6, v5);
      sub_10006A178(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000E0110(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000E1F54();
  result = Set.init(minimumCapacity:)();
  v12 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      sub_100069E2C(v8, v7);
      sub_100069E2C(v6, v5);
      sub_1000D5FBC(v11, v8, v7, v6, v5);
      v9 = v11[2];
      v10 = v11[3];
      sub_10006A178(v11[0], v11[1]);
      sub_10006A178(v9, v10);
      v4 += 4;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_1000E01DC(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for DSKExpress.ExpressKey();
  sub_1000E0514(&qword_100503638, type metadata accessor for DSKExpress.ExpressKey);
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (!i)
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v10;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = *(a1 + 8 * i + 32);

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1000D652C(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000E0348(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1000E0514(&unk_100507480, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_1000D6D84(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1000E0514(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E0560(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000E0578(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v5;
  v177 = a2;
  v178 = a3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  v18 = *(v10 + 8);
  v17 = v10 + 8;
  v18(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_125:
    v159 = *(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    *(v159 + 92) = 1;
    v160 = *(v159 + 100);
    v53 = __CFADD__(v160, 1);
    v161 = v160 + 1;
    if (!v53)
    {
      *(v159 + 100) = v161;
      v39 = 200;
LABEL_127:
      *(v13 + v17) = 13;
      sub_1000CC69C();
      if (!a1)
      {
        sub_10024277C(v162, v39);
      }

      goto LABEL_134;
    }

    __break(1u);
    goto LABEL_142;
  }

  if (*(v4 + 16) != 1)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "LyonUWB is not running", v28, 2u);
    }

    return;
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B5B0;
  v13 = a4;

  v20 = sub_10024F2B8(v19, a4);

  v16 = sub_1000CA858(v20, sub_10008EBB4);

  if (!v16)
  {
    goto LABEL_11;
  }

  type metadata accessor for UWBLyonSession();
  v21 = swift_dynamicCastClass();
  if (!v21 || (*(a4 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion + 2) & 1) != 0)
  {

LABEL_11:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "No active UWB Lyon session", v24, 2u);
    }

    sub_1000755A4();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    return;
  }

  v175 = v21;
  v176 = v4;
  v174 = *(a4 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion);
  v29 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v173 = v16;
    v33 = v32;
    v34 = swift_slowAlloc();
    v180 = v34;
    *v33 = 136315138;
    v35 = sub_10024FB58(a1);
    v172 = v29;
    v14 = sub_1002FFA0C(v35, v36, &v180);

    *(v33 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s", v33, 0xCu);
    sub_1000752F4(v34);
    v13 = a4;

    v16 = v173;
  }

  if (a1 <= 3u)
  {
    if (a1)
    {
      if (a1 != 2)
      {
LABEL_60:
        v56 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v56, v67))
        {
LABEL_63:

LABEL_106:
          sub_1000755A4();
          swift_allocError();
          *v125 = 0;
          goto LABEL_107;
        }

        v68 = swift_slowAlloc();
        *v68 = 16777472;
        *(v68 + 4) = a1;
        v59 = "Unable to parse UWB message with id %hhu";
        v60 = v67;
        v61 = v56;
        v62 = v68;
        v63 = 5;
LABEL_62:
        _os_log_impl(&_mh_execute_header, v61, v60, v59, v62, v63);

        goto LABEL_63;
      }

      v40 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
      if (*(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) == 8)
      {
        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        sub_100081644(0, v13);
        if (!v6)
        {
          sub_100081838(1, 0xD000000000000018, 0x8000000100462B30, v13);
          *(v13 + v40) = 9;
          v41 = sub_1000CBDA8(v177, v178);
          sub_100242464(v41);

          return;
        }

        goto LABEL_134;
      }

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v91, v92))
      {
        goto LABEL_105;
      }

      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v180 = v94;
      *v93 = 136315138;
      LOBYTE(v179) = *(v13 + v40);
      v108 = String.init<A>(describing:)();
      v110 = sub_1002FFA0C(v108, v109, &v180);

      *(v93 + 4) = v110;
      v98 = "Received M3 in invalid state %s";
    }

    else
    {
      v14 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
      if ((*(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) & 0xFE) == 6)
      {
        v64 = sub_1000CB98C(v177, v178, v174);
        v38 = v6;
        if (!v6)
        {
          v66 = (v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
          if ((*(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0 && *v66 == v65)
          {
            v31 = v64;
            sub_100242140(v64, 200);
            if (qword_1005018F8 == -1)
            {
              goto LABEL_57;
            }

            goto LABEL_140;
          }

          v131 = v65;
          v132 = v64;

          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v136 = v135;
            *v135 = 67109376;
            *(v135 + 4) = v131;
            *(v135 + 8) = 1024;
            v137 = *v66;
            if (v66[4])
            {
              v137 = 0;
            }

            *(v135 + 10) = v137;

            _os_log_impl(&_mh_execute_header, v133, v134, "m1 message contains incorrect uwbSession ID %u, expected %u", v136, 0xEu);
          }

          else
          {
          }

          sub_1000755A4();
          swift_allocError();
          *v138 = 3;
          swift_willThrow();

          return;
        }

LABEL_134:

        return;
      }

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v91, v92))
      {
        goto LABEL_105;
      }

      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v180 = v94;
      *v93 = 136315138;
      LOBYTE(v179) = *(v14 + v13);
      v95 = String.init<A>(describing:)();
      v97 = sub_1002FFA0C(v95, v96, &v180);

      *(v93 + 4) = v97;
      v98 = "Received M1 in invalid state %s";
    }

LABEL_104:
    _os_log_impl(&_mh_execute_header, v91, v92, v98, v93, 0xCu);
    sub_1000752F4(v94);

    goto LABEL_105;
  }

  if (a1 != 4)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        if (*(v175 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
        {
          v17 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
          v37 = *(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
          v38 = v6;
          if (v37 == 14 || v37 == 11)
          {
            if (qword_1005018F8 != -1)
            {
              swift_once();
            }

            sub_100081644(0, v13);
            if (v6)
            {
              goto LABEL_134;
            }

            sub_100081838(1, 0xD000000000000016, 0x8000000100462B10, v13);
            a1 = 0;
            if (*(v13 + v17) == 11)
            {
              v39 = 100;
              goto LABEL_127;
            }

            goto LABEL_125;
          }

          v126 = Logger.logObject.getter();
          v127 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v126, v127))
          {
            a4 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v180 = v31;
            *a4 = 136315138;
            LOBYTE(v179) = *(v13 + v17);
            v128 = String.init<A>(describing:)();
            v14 = sub_1002FFA0C(v128, v129, &v180);

            *(a4 + 4) = v14;
            _os_log_impl(&_mh_execute_header, v126, v127, "Received resume request in invalid state %s", a4, 0xCu);
            sub_1000752F4(v31);
          }

          v51 = *(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
          v130 = *(v51 + 64);
          v53 = __CFADD__(v130, 1);
          v54 = v130 + 1;
          if (!v53)
          {
LABEL_111:
            *(v51 + 64) = v54;
            return;
          }

          __break(1u);
LABEL_140:
          swift_once();
LABEL_57:
          sub_100081644(0, v13);
          if (v38)
          {

            return;
          }

          sub_100081838(1, 0xD000000000000018, 0x8000000100462B50, v13);

          if (*(v14 + v13) != 7)
          {
            v169 = *(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
            *(v169 + 92) = 1;
            v170 = *(v169 + 100);
            v53 = __CFADD__(v170, 1);
            v171 = v170 + 1;
            if (v53)
            {
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
              goto LABEL_150;
            }

            *(v169 + 100) = v171;
            v13 = a4;
          }

          *(v14 + v13) = 8;
          return;
        }

        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&_mh_execute_header, v99, v100, "UWB session invalidated; cannot resume", v101, 2u);
        }

        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        v102 = [objc_opt_self() TLVWithTag:3 value:0];
        if (!v102)
        {
          goto LABEL_149;
        }

        v103 = v102;
        v104 = [v102 asData];

        if (!v104)
        {
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v107 = v106;

        sub_100081ED8(2u, 1, v105, v107, v13);
LABEL_89:
        sub_10006A178(v105, v107);

        return;
      }

      goto LABEL_60;
    }

    goto LABEL_44;
  }

  v42 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v43 = *(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
  v44 = v6;
  if ((v43 - 11) >= 3)
  {
    if (v43 == 14)
    {

      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v180 = v114;
        *v113 = 136315138;
        LOBYTE(v179) = v42[v13];
        v115 = String.init<A>(describing:)();
        v42 = sub_1002FFA0C(v115, v116, &v180);

        *(v113 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v111, v112, "Lyon session not currently ranging %s, nothing to do", v113, 0xCu);
        sub_1000752F4(v114);
      }

      if (qword_1005018F8 != -1)
      {
        swift_once();
      }

      v117 = [objc_opt_self() TLVWithTag:17 unsignedChar:0];
      if (!v117)
      {
        goto LABEL_151;
      }

      v118 = v117;
      v119 = [v117 asData];

      if (!v119)
      {
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v120;

      sub_100081ED8(1u, 5, v105, v107, v13);
      if (v44)
      {
        goto LABEL_89;
      }

      sub_10006A178(v105, v107);

      v51 = *(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
      v121 = *(v51 + 64);
      v53 = __CFADD__(v121, 1);
      v54 = v121 + 1;
      if (!v53)
      {
        goto LABEL_111;
      }

      __break(1u);
    }

    else if (v43 == 10)
    {
      sub_1000CC69C();
      if (!v6)
      {
        if ((*(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0 && v69 == *(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID))
        {
          sub_100241AFC(v69, 200);
          if (qword_1005018F8 != -1)
          {
            swift_once();
          }

          v70 = [objc_opt_self() TLVWithTag:17 unsignedChar:0];
          if (!v70)
          {
            goto LABEL_153;
          }

          v71 = v70;
          v72 = [v70 asData];

          if (!v72)
          {
LABEL_154:
            __break(1u);
            return;
          }

          v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          sub_100081ED8(1u, 5, v73, v75, v13);
          sub_10006A178(v73, v75);
          v76 = *(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
          v77 = *(v76 + 96);
          v53 = __CFADD__(v77, 1);
          v78 = v77 + 1;
          if (!v53)
          {
            *(v76 + 96) = v78;
            v79 = qword_100501CD0;

            if (v79 == -1)
            {
LABEL_75:
              v80 = off_10050A240;

              v81 = v80[12];
              v53 = __CFADD__(v81, 1);
              v82 = v81 + 1;
              if (!v53)
              {
                v80[12] = v82;
                v42[v13] = 14;
                return;
              }

              __break(1u);
              goto LABEL_148;
            }

LABEL_146:
            swift_once();
            goto LABEL_75;
          }

LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v148 = v177;
        v147 = v178;
        sub_100069E2C(v177, v178);
        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.error.getter();
        sub_10006A178(v148, v147);
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v173 = v16;
          v152 = v151;
          v153 = swift_slowAlloc();
          v180 = v153;
          *v152 = 136315138;
          v179 = sub_100288788(v148, v147);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v154 = BidirectionalCollection<>.joined(separator:)();
          v156 = v155;

          v157 = sub_1002FFA0C(v154, v156, &v180);

          *(v152 + 4) = v157;
          _os_log_impl(&_mh_execute_header, v149, v150, "Unable to parse suspend request %s, erroring out", v152, 0xCu);
          sub_1000752F4(v153);

          v16 = v173;
        }

        sub_1000755A4();
        swift_allocError();
        *v158 = 3;
LABEL_107:
        swift_willThrow();

        return;
      }

      goto LABEL_134;
    }

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v180 = v94;
      *v93 = 136315138;
      LOBYTE(v179) = v42[v13];
      v122 = String.init<A>(describing:)();
      v124 = sub_1002FFA0C(v122, v123, &v180);

      *(v93 + 4) = v124;
      v98 = "Lyon session in invalid state %s, disconnecting";
      goto LABEL_104;
    }

LABEL_105:

    goto LABEL_106;
  }

  v45 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v6))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v180 = v47;
    *v46 = 136315138;
    LOBYTE(v179) = v42[v13];
    v48 = String.init<A>(describing:)();
    v50 = sub_1002FFA0C(v48, v49, &v180);

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v45, v6, "Out of order suspend request received in %s", v46, 0xCu);
    sub_1000752F4(v47);
  }

  v51 = *(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
  v52 = *(v51 + 64);
  v53 = __CFADD__(v52, 1);
  v54 = v52 + 1;
  if (!v53)
  {
    goto LABEL_111;
  }

  __break(1u);
LABEL_44:
  v17 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  if (*(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) == 12)
  {
    if (qword_1005018F8 != -1)
    {
      swift_once();
    }

    sub_100081644(0, v13);
    if (v6)
    {
      goto LABEL_134;
    }

    sub_1000CC9AC();
    if (v55)
    {
      if ((*(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
      {
        sub_100241AFC(*(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID), 100);
        v163 = *(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
        v164 = *(v163 + 80);
        v53 = __CFADD__(v164, 1);
        v165 = v164 + 1;
        if (!v53)
        {
          *(v163 + 80) = v165;
          v166 = qword_100501CD0;

          if (v166 == -1)
          {
LABEL_131:
            v42 = off_10050A240;

            v167 = *(v42 + 9);
            v53 = __CFADD__(v167, 1);
            v168 = v167 + 1;
            if (!v53)
            {
              *(v42 + 9) = v168;
              *(v13 + v17) = 14;
              if (*(v13 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) == 1)
              {
                sub_1000C8E3C(v13);
              }

              goto LABEL_134;
            }

            __break(1u);
            goto LABEL_145;
          }

LABEL_143:
          swift_once();
          goto LABEL_131;
        }

LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v56, v57))
      {
        goto LABEL_63;
      }

      v58 = swift_slowAlloc();
      *v58 = 0;
      v59 = "uwb sessionID not cached";
      v60 = v57;
      v61 = v56;
      v62 = v58;
      v63 = 2;
      goto LABEL_62;
    }

    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v180 = v142;
      *v141 = 136315138;

      v143 = UUID.uuidString.getter();
      v145 = v144;

      v146 = sub_1002FFA0C(v143, v145, &v180);

      *(v141 + 4) = v146;
      _os_log_impl(&_mh_execute_header, v139, v140, "Lock rejected suspend request for peer %s", v141, 0xCu);
      sub_1000752F4(v142);
    }
  }

  else
  {

    v83 = Logger.logObject.getter();
    v84 = v13;
    v85 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v180 = v87;
      *v86 = 136315138;
      LOBYTE(v179) = *(v84 + v17);
      v88 = String.init<A>(describing:)();
      v90 = sub_1002FFA0C(v88, v89, &v180);

      *(v86 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v83, v85, "Received suspend response in invalid state %s", v86, 0xCu);
      sub_1000752F4(v87);
    }
  }
}

uint64_t sub_1000E1DB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000D6A84(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1000E1E2C()
{
  result = qword_100503E50;
  if (!qword_100503E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E50);
  }

  return result;
}

unint64_t sub_1000E1E80()
{
  result = qword_100504730;
  if (!qword_100504730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504730);
  }

  return result;
}

uint64_t sub_1000E1F04(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10009393C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E1F54()
{
  result = qword_100503610;
  if (!qword_100503610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503610);
  }

  return result;
}

uint64_t sub_1000E1FD8(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_10009393C(0, a2, a3);
    sub_1000E1F04(a4, a2, a3);
    result = Set.init(minimumCapacity:)();
    v16 = result;
    if (v10)
    {
      break;
    }

    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v14 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v16;
      a5(&v15, v14);

      ++a2;
      if (v10 == v13)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  a4 = result;
  v13 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (v13)
  {
    goto LABEL_7;
  }

  return result;
}