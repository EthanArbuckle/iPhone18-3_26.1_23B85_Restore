char *static ScopedIDsUtils.incomplete(playerIDs:gameBundleIDs:scopedIDs:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_23:

    return a1;
  }

  if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a2 + 16);
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v44 = a3;
  v8 = 0;
  v49 = &_swiftEmptySetSingleton;
  v45 = a1 + 32;
  v9 = (a2 + 40);
  while (v8 != v6)
  {
    v10 = (v45 + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
    ++v8;

    v13 = v7;
    v14 = v9;
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v50[0] = v12;
      v50[1] = v11;
      v50[2] = v15;
      v50[3] = v16;
      v50[4] = 0;
      swift_bridgeObjectRetain_n();

      sub_1001E89B8(v47, v50);

      v17 = v48;

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  v18 = v49;
  v19 = v44;
  v20 = sub_1001E6DF0(v44);
  v21 = _swiftEmptyArrayStorage;
  if (!v20)
  {
LABEL_21:
    sub_1001D4AC4(v21);
    sub_1001E8294(v32, v18, v33, v34, v35, v36, v37, v38, v42, v43, v44, v45, v46, v47[0], v47[1], v47[2], v47[3], v48, v49, v50[0]);
    v40 = v39;

    sub_1001E6E3C(v40);
    a1 = v41;

    return a1;
  }

  v22 = v20;
  v43 = v18;
  v47[0] = _swiftEmptyArrayStorage;
  result = sub_1001B1860(0, v20 & ~(v20 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v21 = v47[0];
    v45 = v44 & 0xC000000000000001;
    do
    {
      if (v45)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v19 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = [v25 playerID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = [v26 gameBundleID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v47[0] = v21;
      v30 = v21[2];
      v29 = v21[3];
      if (v30 >= v29 >> 1)
      {
        v31 = sub_1001EBAD8(v29);
        sub_1001B1860(v31, v30 + 1, 1);
        v21 = v47[0];
      }

      ++v24;
      v21[2] = v30 + 1;
      sub_1001EBAA8();
      v19 = v44;
    }

    while (v22 != v24);
    v18 = v43;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_1001E8294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1001EB3E8(a1);
  }

  else
  {

    sub_1001E0A90(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

char *static ScopedIDsUtils.merge(scopedIDs:with:)(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if (!sub_1001E6E2C(a2))
      {

        return v3;
      }

      sub_1001E71D8(v4);
      v5 = sub_1001E6DF0(v3);
      if (v5)
      {
        v6 = v5;
        result = sub_1001B1860(0, v5 & ~(v5 >> 63), 0);
        if (v6 < 0)
        {
          __break(1u);
          return result;
        }

        v8 = 0;
        v28 = v3 & 0xC000000000000001;
        v29 = v3;
        do
        {
          if (v28)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v9 = *(v3 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = [v9 playerID];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v12 = [v10 gameBundleID];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v14 = _swiftEmptyArrayStorage[2];
          v13 = _swiftEmptyArrayStorage[3];
          if (v14 >= v13 >> 1)
          {
            v15 = sub_1001EBAD8(v13);
            sub_1001B1860(v15, v14 + 1, 1);
          }

          ++v8;
          _swiftEmptyArrayStorage[2] = v14 + 1;
          sub_1001EBAA8();
          v3 = v29;
        }

        while (v6 != v8);
      }

      sub_1001D4AC4(_swiftEmptyArrayStorage);
      a2 = v16;
      v3 = _swiftEmptyArrayStorage;
      v17 = v16 + 56;
      v18 = 1 << *(v16 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v16 + 56);
      v21 = (v18 + 63) >> 6;

      v22 = 0;
      while (v20)
      {
LABEL_23:
        sub_1001E4380();
        v25 = *(*(a2 + 48) + 40 * (v24 | (v22 << 6)) + 32);
        if (v25)
        {
          v26 = v25;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v27 >> 1)
          {
            sub_1001EBAD8(v27);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = _swiftEmptyArrayStorage;
        }
      }

      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v21)
        {

          return v3;
        }

        v20 = *(v17 + 8 * v23);
        ++v22;
        if (v20)
        {
          v22 = v23;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_29:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter());
  }

  return a2;
}

Swift::Int sub_1001E8764()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_1001E880C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1002C4A80;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1001E8870(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_1001EBACC();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_1001E9B0C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_1001E89B8(void *a1, void *a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  v6 = *a2;
  v5 = a2[1];
  String.hash(into:)();
  v8 = a2[2];
  v7 = a2[3];
  v33 = a2;
  String.hash(into:)();
  Hasher._finalize()();
  v9 = v4 + 56;
  sub_1001EBACC();
  v12 = v11 & ~v10;
  if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v31 = v4;
    v14 = *(v4 + 48);
    while (1)
    {
      v15 = (v14 + 40 * v12);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == v6 && v15[1] == v5;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == v8 && v17 == v7;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v37[0] = v33[4];
    sub_1001A974C(v37, &qword_1003B64B0);
    v24 = (*(v31 + 48) + 40 * v12);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    v29 = v24[4];
    *a1 = v25;
    a1[1] = v26;
    a1[2] = v27;
    a1[3] = v28;
    a1[4] = v29;
    v30 = v29;

    return 0;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v33[4];
    v36 = *v32;
    v37[0] = v21;

    sub_1001EB864(v37, v35);
    sub_1001E9C74(v33, v12, isUniquelyReferenced_nonNull_native);
    *v32 = v36;
    v22 = *(v33 + 1);
    *a1 = *v33;
    *(a1 + 1) = v22;
    a1[4] = v33[4];
    return 1;
  }
}

BOOL sub_1001E8BDC(char *a1, char *a2)
{
  v23 = a1;
  v4 = sub_1001A6C04(&qword_1003B6260);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v22 = v2;
  v8 = *v2;
  sub_1001AC7E4(&qword_1003B6268, &qword_1003B6260);
  v28 = a2;
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v25 = v8;
  v26 = v8 + 56;
  sub_1001EBACC();
  v11 = ~v10;
  v27 = v5 + 16;
  v24 = v5 + 8;
  while (1)
  {
    v12 = v9 & v11;
    v13 = (1 << (v9 & v11)) & *(v26 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      v18 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v28;
      (*(v5 + 16))(v7, v28, v4);
      v29 = *v18;
      sub_1001E9E4C(v7, v12, isUniquelyReferenced_nonNull_native);
      *v18 = v29;
      (*(v5 + 32))(v23, v20, v4);
      return v13 == 0;
    }

    v14 = *(v5 + 72) * v12;
    v15 = *(v5 + 16);
    v15(v7, *(v25 + 48) + v14, v4);
    sub_1001AC7E4(&qword_1003B6490, &qword_1003B6260);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = *(v5 + 8);
    v17(v7, v4);
    if (v16)
    {
      break;
    }

    v9 = v12 + 1;
  }

  v17(v28, v4);
  v15(v23, *(v25 + 48) + v14, v4);
  return v13 == 0;
}

BOOL sub_1001E8EA0(void *a1, void *a2)
{
  v4 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  sub_1001EBACC();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(v4 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v21;
      v17 = a2;
      sub_1001EA0D8(v17, v8, isUniquelyReferenced_nonNull_native);
      *v21 = v23;
      *a1 = v17;
      return v9 == 0;
    }

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {

      goto LABEL_12;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      break;
    }

    v5 = v8 + 1;
  }

LABEL_12:
  v18 = *(*(v4 + 48) + 8 * v8);
  *a1 = v18;
  v19 = v18;
  return v9 == 0;
}

uint64_t sub_1001E9040()
{
  v1 = v0;
  v2 = *v0;
  sub_1001A6C04(&qword_1003B6388);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1001E880C(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001E929C()
{
  v1 = v0;
  v2 = *v0;
  sub_1001A6C04(&qword_1003B6348);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v30 = v1;
  v31 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      sub_1001E880C(0, (v29 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v30;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 40 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v32 = v15[4];
    Hasher.init(_seed:)();
    String.hash(into:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v4 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v4 + 48) + 40 * v23);
    *v28 = v16;
    v28[1] = v17;
    v28[2] = v18;
    v28[3] = v19;
    v28[4] = v32;
    ++*(v4 + 16);
    v2 = v31;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v11 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001E9538()
{
  v1 = v0;
  v35 = sub_1001A6C04(&qword_1003B6260);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - v3;
  v4 = *v0;
  sub_1001A6C04(&qword_1003B6498);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_1001E880C(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_1001AC7E4(&qword_1003B6268, &qword_1003B6260);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001E9894()
{
  v1 = v0;
  v2 = *v0;
  sub_1001A6C04(&qword_1003B6488);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v26 = v0;
  v27 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_1001E880C(0, (v25 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();

    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v4 + 48) + 8 * v20) = v15;
    ++*(v4 + 16);
    v2 = v27;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v11 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1001E9B0C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1001E9040();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1001EA87C();
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1001EA2A8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void sub_1001E9C74(void *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_1001E929C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1001EA3BC();
      goto LABEL_21;
    }

    sub_1001EAAB0();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = *a1;
  v10 = a1[1];
  String.hash(into:)();
  v11 = a1[2];
  v12 = a1[3];
  String.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = v8 + 56;
  v15 = -1 << *(v8 + 32);
  a2 = v13 & ~v15;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 48);
    do
    {
      v18 = (v17 + 40 * a2);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == v9 && v18[1] == v10;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v22 = v19 == v11 && v20 == v12;
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_24;
        }
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_21:
  v23 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v24 = *(v23 + 48) + 40 * a2;
  v25 = *(a1 + 1);
  *v24 = *a1;
  *(v24 + 16) = v25;
  *(v24 + 32) = a1[4];
  v26 = *(v23 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v23 + 16) = v28;
    return;
  }

  __break(1u);
LABEL_24:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1001E9E4C(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1001A6C04(&qword_1003B6260);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001E9538();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1001EAD30();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1001AC7E4(&qword_1003B6268, &qword_1003B6260);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1001AC7E4(&qword_1003B6490, &qword_1003B6260);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1001EA4F0();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_1001EA0D8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001E9894();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1001EB04C();
LABEL_10:
      v13 = *v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for URLResourceKey(0);
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {
          goto LABEL_19;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_20;
        }

        v14 = a2 + 1;
      }
    }

    result = sub_1001EA72C();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

void sub_1001EA2A8()
{
  v2 = v0;
  sub_1001A6C04(&qword_1003B6388);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  if (*(v3 + 16))
  {
    v5 = sub_10000477C();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    sub_1000044D0();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_15:
        v19 = v16 | (v10 << 6);
        v20 = (*(v3 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = (*(v4 + 48) + 16 * v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v4;
  }
}

void sub_1001EA3BC()
{
  v2 = v0;
  sub_1001A6C04(&qword_1003B6348);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  if (*(v3 + 16))
  {
    v5 = sub_10000477C();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    sub_1000044D0();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        sub_1001E4380();
LABEL_15:
        v19 = 5 * (v16 | (v10 << 6));
        v20 = (*(v3 + 48) + 8 * v19);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        v26 = (*(v4 + 48) + 8 * v19);
        *v26 = v21;
        v26[1] = v22;
        v26[2] = v23;
        v26[3] = v24;
        v26[4] = v25;
        v27 = v25;
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v4;
  }
}

void *sub_1001EA4F0()
{
  v1 = v0;
  v2 = sub_1001A6C04(&qword_1003B6260);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  sub_1001A6C04(&qword_1003B6498);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

id sub_1001EA72C()
{
  v1 = v0;
  sub_1001A6C04(&qword_1003B6488);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001EA87C()
{
  v1 = v0;
  v2 = *v0;
  sub_1001A6C04(&qword_1003B6388);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001EAAB0()
{
  v1 = v0;
  v2 = *v0;
  sub_1001A6C04(&qword_1003B6348);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v31 = v0;
    v32 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v33 = (v9 - 1) & v9;
LABEL_12:
        v15 = (*(v2 + 48) + 40 * (v12 | (v5 << 6)));
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        v20 = v15[4];
        Hasher.init(_seed:)();
        v21 = v20;

        String.hash(into:)();
        String.hash(into:)();
        result = Hasher._finalize()();
        v22 = -1 << *(v4 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v4 + 48) + 40 * v25);
        *v30 = v16;
        v30[1] = v17;
        v30[2] = v18;
        v30[3] = v19;
        v30[4] = v20;
        ++*(v4 + 16);
        v2 = v32;
        v9 = v33;
        if (!v33)
        {
          goto LABEL_7;
        }
      }

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
        v29 = *(v11 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v31;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v33 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001EAD30()
{
  v1 = v0;
  v32 = sub_1001A6C04(&qword_1003B6260);
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - v3;
  v5 = *v0;
  sub_1001A6C04(&qword_1003B6498);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_1001AC7E4(&qword_1003B6268, &qword_1003B6260);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1001EB04C()
{
  v1 = v0;
  v2 = *v0;
  sub_1001A6C04(&qword_1003B6488);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v16 = v15;
        String.hash(into:)();
        v17 = Hasher._finalize()();

        v18 = -1 << *(v4 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v4 + 48) + 8 * v21) = v16;
        ++*(v4 + 16);
        v2 = v27;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v26;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001EB2A0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1001EB370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1001EB3E8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_1001A974C(v19, &qword_1003B64B0))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v2 + 48) + 40 * (v10 | (v9 << 6));
      v16 = *(v11 + 32);
      v12 = *(v11 + 16);
      v15[0] = *v11;
      v15[1] = v12;
      v17 = v15[0];
      v18 = v12;
      v19[0] = v16;
      sub_1001EB808(&v17, v13);
      sub_1001EB808(&v18, v13);
      sub_1001EB864(v19, v13);
      sub_1001E1F68(v15, v14);
      sub_1001A974C(v14, &qword_1003B64B8);
      sub_1001EB8D4(&v17);
      sub_1001EB8D4(&v18);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_1001EB578(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1001E8800(a3);
  sub_1001D13A0(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_1001EB604;
}

unint64_t sub_1001EB630()
{
  result = qword_1003B6060;
  if (!qword_1003B6060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B6060);
  }

  return result;
}

uint64_t sub_1001EB674(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1001E6DF0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1001EB630();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1001AC7E4(&qword_1003B64A8, &qword_1003B64A0);
        for (i = 0; i != v7; ++i)
        {
          sub_1001A6C04(&qword_1003B64A0);
          v9 = sub_1001EB578(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001EB7FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001EB864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B64B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EB928(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

__n128 sub_1001EB96C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001EB980(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001EB9C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001EBA1C()
{
  result = qword_1003B64C0;
  if (!qword_1003B64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B64C0);
  }

  return result;
}

void sub_1001EBAA8()
{
  v7 = (v0 + 40 * v1);
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v5;
  v7[7] = v6;
  v7[8] = v2;
}

uint64_t sub_1001EBAE4(uint64_t a1, unint64_t a2)
{
  sub_1001A6C04(&qword_1003B5BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C4BC0;
  v6 = v2[1];
  v19 = *v2;
  v7 = v19;
  v20 = v6;
  *(inited + 48) = v6;
  *(inited + 96) = v7;
  v18 = v2[2];
  *(inited + 192) = v18;
  *(inited + 32) = 101;
  *(inited + 40) = 0xE100000000000000;
  sub_1001F77C4();
  *(v8 + 72) = &type metadata for String;
  *(v8 + 80) = v9;
  *(v8 + 88) = 0xE800000000000000;
  *(v8 + 120) = &type metadata for String;
  *(v8 + 128) = 0x7550656369766564;
  *(v8 + 136) = 0xEF6E656B6F546873;
  *(v8 + 144) = a1;
  *(v8 + 152) = a2;
  *(v8 + 168) = &type metadata for Data;
  *(v8 + 176) = 104;
  *(v8 + 184) = v10;
  *(v8 + 216) = &type metadata for String;
  *(v8 + 224) = 28776;
  *(v8 + 232) = 0xE200000000000000;
  *(v8 + 240) = v11;
  *(v8 + 264) = &type metadata for String;
  *(v8 + 272) = 0x4449726579616C70;
  *(v8 + 280) = 0xE800000000000000;
  v16 = v2[4];
  v17 = v11;
  *(v8 + 288) = v16;
  sub_1001F7304();
  *(v12 + 312) = &type metadata for String;
  *(v12 + 320) = 0xD000000000000010;
  *(v12 + 328) = v13;
  *(v12 + 360) = &type metadata for Bool;
  *(v12 + 336) = 1;
  sub_1001EB808(&v20, v15);
  sub_1001EB808(&v19, v15);
  sub_1001D09EC(a1, a2);
  sub_1001EB808(&v18, v15);
  sub_1001EB808(&v17, v15);
  sub_1001EB808(&v16, v15);
  return Dictionary.init(dictionaryLiteral:)();
}

id PeerDiscovery.__allocating_init(delegate:localPlayerID:localPushToken:)()
{
  sub_1001F74F4();
  swift_allocObject();
  sub_1001F761C();
  return PeerDiscovery.init(delegate:localPlayerID:localPushToken:)();
}

id PeerDiscovery.init(delegate:localPlayerID:localPushToken:)()
{
  sub_1001F74F4();
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  v1[15] = 0;
  v1[16] = 0;
  v1[21] = _swiftEmptyDictionarySingleton;
  v1[22] = _swiftEmptyDictionarySingleton;
  v1[23] = _swiftEmptyDictionarySingleton;
  v1[17] = v4;
  v1[18] = v3;
  v1[19] = v2;
  v1[20] = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v6;
}

uint64_t PeerDiscovery.startBrowsing()()
{
  sub_100005528();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_1001B6A00(v2);
  v1[4] = v3;
  v1[5] = sub_1001F7510();
  v1[6] = swift_task_alloc();
  v4 = sub_100004750();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001EBED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1001F77F4();
  a19 = v24;
  a20 = v25;
  a18 = v21;
  if (*(*(v21 + 16) + 120))
  {
    static os_log_type_t.debug.getter();
    sub_1001F74B8();
    v26 = Logger.logObject.getter();
    if (sub_1001F7528(v26))
    {
      sub_1001F71F0();
      sub_100005B28();
      sub_1001F7610();
      *v22 = 136315138;
      *(v22 + 4) = sub_100005C3C(0xD00000000000002ELL, v23 | 0x8000000000000000, &a10);
      sub_1001F70CC(&_mh_execute_header, v27, v28, "Nearby - %s");
      sub_1000060C0();
      sub_1001E3DC0();
    }

    v29 = sub_1001F706C();
    v30(v29);
    v31 = swift_task_alloc();
    *(v21 + 56) = v31;
    *v31 = v21;
    v31[1] = sub_1001EC11C;
    sub_1001F75B8();

    return PeerDiscovery.stopBrowsing()();
  }

  else
  {
    static os_log_type_t.info.getter();
    sub_1001F74B8();
    v34 = Logger.logObject.getter();
    if (sub_1001F7528(v34))
    {
      sub_1001F71F0();
      sub_100005B28();
      sub_1001F7610();
      sub_100006B90(4.8149e-34);
      *(v22 + 4) = sub_100005C3C(0xD00000000000001ALL, v35, v36);
      sub_1001F70CC(&_mh_execute_header, v37, v38, "Nearby - %s");
      sub_1000060C0();
      sub_1001E3DC0();
    }

    v39 = sub_1001F706C();
    v40(v39);
    v41 = *(v21 + 16);
    type metadata accessor for PeerBrowser();
    sub_1001F7388();
    v42 = swift_allocObject();

    *(v41 + 120) = sub_1001F672C(v43, v42);

    if (*(v41 + 120))
    {

      sub_1001B757C();
    }

    sub_1000046F8();
    sub_1001F75B8();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
  }
}

uint64_t sub_1001EC11C()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_100004750();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001EC214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001F77F4();
  static os_log_type_t.info.getter();
  sub_1001F74B8();
  v15 = Logger.logObject.getter();
  if (sub_1001F7528(v15))
  {
    sub_1001F71F0();
    sub_100005B28();
    sub_1001F7610();
    sub_100006B90(4.8149e-34);
    *(v14 + 4) = sub_100005C3C(0xD00000000000001ALL, v16, v17);
    sub_1001F70CC(&_mh_execute_header, v18, v19, "Nearby - %s");
    sub_1000060C0();
    sub_1001E3DC0();
  }

  v20 = sub_1001F706C();
  v21(v20);
  v22 = *(v13 + 16);
  type metadata accessor for PeerBrowser();
  sub_1001F7388();
  v23 = swift_allocObject();

  *(v22 + 120) = sub_1001F672C(v24, v23);

  if (*(v22 + 120))
  {

    sub_1001B757C();
  }

  sub_1000046F8();
  sub_1001F75B8();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t PeerDiscovery.stopBrowsing()()
{
  sub_100005528();
  v1[8] = v0;
  v2 = type metadata accessor for Logger();
  v1[9] = v2;
  sub_1001B6A00(v2);
  v1[10] = v3;
  v1[11] = sub_1001E41A0();
  v4 = sub_100004750();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001EC3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001F77F4();
  static os_log_type_t.info.getter();
  sub_1001F74B8();
  v16 = Logger.logObject.getter();
  if (sub_1001F7528(v16))
  {
    sub_1001F71F0();
    sub_100005B28();
    sub_1001F7610();
    sub_100006B90(4.8149e-34);
    *(v14 + 4) = sub_100005C3C(0xD00000000000001ALL, v17, v18);
    sub_1001F70CC(&_mh_execute_header, v19, v20, "Nearby - %s");
    sub_1000060C0();
    sub_1001E3DC0();
  }

  v21 = sub_1001F706C();
  v22(v21);
  v23 = *(v13 + 64);
  sub_1001E42EC();
  v24 = *(v23 + 184) + 64;
  sub_1001F7050();
  result = sub_1001F7718();
  v26 = 0;
  if (v15)
  {
    while (1)
    {
LABEL_7:
      sub_1001F73B0();
      sub_100219C98();
    }
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    if (v27 >= v14)
    {
      break;
    }

    ++v26;
    if (*(v24 + 8 * v27))
    {
      goto LABEL_7;
    }
  }

  v28 = *(v13 + 64);

  sub_1001F75EC();
  sub_1001A6C04(&qword_1003B64C8);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  if (*(v28 + 120))
  {

    sub_1001B7F04();
  }

  *(v28 + 120) = 0;

  sub_1000046F8();
  sub_1001F75B8();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1001EC5E8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1001F6FB8;

  return PeerDiscovery.startBrowsing()();
}

uint64_t sub_1001EC6B0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1001EC758;

  return PeerDiscovery.stopBrowsing()();
}

uint64_t sub_1001EC758()
{
  sub_100005528();
  sub_1000057F0();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100004410();
  *v4 = v3;

  v2[2](v2);
  _Block_release(v2);
  sub_1000046F8();

  return v5();
}

uint64_t PeerDiscovery.startListening(_:)()
{
  sub_100005528();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Logger();
  v1[4] = v3;
  sub_1001B6A00(v3);
  v1[5] = v4;
  v1[6] = sub_1001F7510();
  v1[7] = swift_task_alloc();
  v5 = sub_100004750();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001EC930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  if (*(*(v16 + 24) + 128))
  {
    static os_log_type_t.debug.getter();
    sub_1001F74B8();
    v21 = Logger.logObject.getter();
    if (sub_1001F7528(v21))
    {
      sub_1001F71F0();
      sub_100005B28();
      sub_1001F7610();
      sub_100006B90(4.8149e-34);
      *(v18 + 4) = sub_100005C3C(0xD00000000000002FLL, v22, v23);
      sub_1001F70CC(&_mh_execute_header, v24, v25, "Nearby - %s");
      sub_1000060C0();
      sub_1001E3DC0();
    }

    v26 = sub_1001F706C();
    v27(v26);
    v28 = swift_task_alloc();
    *(v16 + 64) = v28;
    *v28 = v16;
    v28[1] = sub_1001ECC0C;
    sub_100005B0C();

    return PeerDiscovery.stopListening()();
  }

  else
  {
    sub_1001F77A0();
    static os_log_type_t.info.getter();
    sub_1000044FC();
    _StringGuts.grow(_:)(52);
    sub_1001F7794();
    v31._countAndFlagsBits = 0xD000000000000032;
    v31._object = 0x800000010030AB00;
    String.append(_:)(v31);
    v54._countAndFlagsBits = Dictionary.description.getter();
    sub_1001F7670(v54);

    sub_1001F75D4();
    v32 = Logger.logObject.getter();
    sub_1001F7570(v32);
    sub_1001F7788();
    if (v33)
    {
      sub_100005AE4();
      sub_1001F71D4();
      sub_1001F7358();
      sub_1001F710C(4.8149e-34, v34);
      sub_1001F74D0();
      *(v20 + 4) = v19;
      sub_1001F70EC(&_mh_execute_header, v35, v36, "Nearby - %s");
      sub_1001F7008();
      sub_1000047A4();
    }

    else
    {
    }

    v37 = sub_1001F718C();
    v38(v37);
    sub_1001F7848();
    v39 = swift_allocObject();
    sub_1001F7868(v39);
    v19[5] = v15;
    v19[6] = v15;
    v19[7] = v17;
    v19[8] = v20;
    v19[9] = v18;
    v19[3] = &off_10036BE00;
    v19[4] = 0;
    swift_unknownObjectWeakAssign();
    v40 = sub_1001F72BC();
    sub_1001D09EC(v40, v41);
    v42 = sub_1001F72BC();
    sub_1001D09EC(v42, v43);

    sub_10023F438();

    v44 = sub_1001F72BC();
    sub_1000072CC(v44, v45);
    v14[16] = v19;

    if (v14[16])
    {

      sub_10023E8EC();
    }

    sub_1000046F8();
    sub_100005B0C();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1001ECC0C()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_100004750();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001ECD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  sub_1001F77A0();
  static os_log_type_t.info.getter();
  sub_1000044FC();
  _StringGuts.grow(_:)(52);
  sub_1001F7794();
  sub_1001F7310();
  v20._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v20);
  v44._countAndFlagsBits = Dictionary.description.getter();
  sub_1001F7670(v44);

  sub_1001F75D4();
  v21 = Logger.logObject.getter();
  sub_1001F7570(v21);
  sub_1001F7788();
  if (v22)
  {
    sub_100005AE4();
    sub_1001F71D4();
    sub_1001F7358();
    sub_1001F710C(4.8149e-34, v23);
    sub_1001F74D0();
    *(v19 + 4) = v18;
    sub_1001F70EC(&_mh_execute_header, v24, v25, "Nearby - %s");
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  v26 = sub_1001F718C();
  v27(v26);
  sub_1001F7848();
  v28 = swift_allocObject();
  sub_1001F7868(v28);
  v18[5] = v15;
  v18[6] = v15;
  v18[7] = v16;
  v18[8] = v19;
  v18[9] = v17;
  v18[3] = &off_10036BE00;
  v18[4] = 0;
  swift_unknownObjectWeakAssign();
  v29 = sub_1001F72BC();
  sub_1001D09EC(v29, v30);
  v31 = sub_1001F72BC();
  sub_1001D09EC(v31, v32);

  sub_10023F438();

  v33 = sub_1001F72BC();
  sub_1000072CC(v33, v34);
  *(v14 + 128) = v18;

  if (*(v14 + 128))
  {

    sub_10023E8EC();
  }

  sub_1000046F8();
  sub_100005B0C();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

uint64_t PeerDiscovery.stopListening()()
{
  sub_100005528();
  v1[14] = v0;
  v2 = type metadata accessor for NWEndpoint();
  v1[15] = v2;
  sub_1001B6A00(v2);
  v1[16] = v3;
  v1[17] = sub_1001E41A0();
  sub_1001A6C04(&qword_1003B64D0);
  v1[18] = sub_1001F7510();
  v1[19] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[20] = v4;
  sub_1001B6A00(v4);
  v1[21] = v5;
  v1[22] = sub_1001E41A0();
  v6 = sub_100004750();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001ED00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  sub_1001F7810();
  a29 = v35;
  a30 = v36;
  a28 = v31;
  static os_log_type_t.info.getter();
  sub_1001F74B8();
  v37 = Logger.logObject.getter();
  if (sub_1001F7528(v37))
  {
    sub_1001F71F0();
    v33 = sub_100005B28();
    a19 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_100005C3C(0xD00000000000001BLL, v34 | 0x8000000000000000, &a19);
    sub_1001F70CC(&_mh_execute_header, v38, v39, "Nearby - %s");
    sub_1000060C0();
    sub_1001E3DC0();
  }

  v40 = sub_1001F706C();
  v41(v40);
  v42 = v31[16];
  v43 = v31[14];
  sub_1001E42EC();
  v83 = v43;
  v44 = *(v43 + 168) + 64;
  sub_1001F7050();
  v47 = v46 & v45;
  v49 = (63 - v48) >> 6;
  v85 = v42 + 32;
  v86 = v42 + 16;
  v89 = v42;
  v90 = v50;
  v91 = v42 + 8;

  v52 = 0;
  v53 = &unk_1003B64D8;
  v87 = v49;
  v88 = v44;
  v84 = v31;
  if (v47)
  {
    while (1)
    {
      v54 = v52;
LABEL_9:
      v56 = v31[17];
      v55 = v31[18];
      v33 = v31[15];
      v57 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v58 = v57 | (v54 << 6);
      (*(v89 + 16))(v56, *(v90 + 48) + *(v89 + 72) * v58, v33);
      v59 = *(*(v90 + 56) + 8 * v58);
      v60 = v53;
      v61 = sub_1001A6C04(v53);
      v62 = *(v61 + 48);
      (*(v89 + 32))(v55, v56, v33);
      *(v55 + v62) = v59;
      v63 = v61;
      v53 = v60;
      v31 = v84;
      sub_1001A9674(v55, 0, 1, v63);

      v49 = v87;
      v44 = v88;
LABEL_10:
      v64 = v31[19];
      sub_1001F6784(v31[18], v64);
      v65 = sub_1001A6C04(v53);
      if (sub_1001A969C(v64, 1, v65) == 1)
      {
        break;
      }

      v33 = v31[15];
      sub_100219C98();

      v66 = sub_1001F77B8();
      result = v67(v66);
      if (!v47)
      {
        goto LABEL_5;
      }
    }

    v70 = v31[14];

    sub_1001F75EC();
    sub_1001A6C04(&qword_1003B64E0);
    Dictionary._Variant.removeAll(keepingCapacity:)(0);
    swift_endAccess();
    sub_1001E42EC();
    v71 = *(v70 + 176) + 64;
    sub_1001F7050();
    result = sub_1001F7718();
    v72 = 0;
    if (v33)
    {
      while (1)
      {
LABEL_18:
        sub_1001F73B0();
        sub_100219C98();
      }
    }

    while (1)
    {
      v73 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v73 >= v64)
      {
        v74 = v31[14];

        sub_1001F75EC();
        sub_1001A6C04(&qword_1003B64C8);
        Dictionary._Variant.removeAll(keepingCapacity:)(0);
        swift_endAccess();
        if (*(v74 + 128))
        {

          sub_10023ED44();
        }

        *(v74 + 128) = 0;

        sub_1000046F8();
        sub_1001F7468();

        return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, v83, v84, v85, v86, v87, v88, v89, v90, v91, a19, a20, a21, a22);
      }

      ++v72;
      if (*(v71 + 8 * v73))
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v54 >= v49)
      {
        v68 = v31[18];
        v69 = sub_1001A6C04(v53);
        sub_1001A9674(v68, 1, 1, v69);
        v47 = 0;
        goto LABEL_10;
      }

      v47 = *(v44 + 8 * v54);
      ++v52;
      if (v47)
      {
        v52 = v54;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001ED4D8(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_1001ED5B8;

  return PeerDiscovery.startListening(_:)();
}

uint64_t sub_1001ED5B8()
{
  sub_1000057FC();
  sub_1000057F0();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100004410();
  *v4 = v3;

  v2[2](v2);
  _Block_release(v2);
  sub_1000046F8();

  return v5();
}

uint64_t sub_1001ED724(uint64_t a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  sub_1001F7598();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  v6 = sub_1001B6ACC();

  return sub_10028022C(v6, v7);
}

uint64_t sub_1001ED78C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1001F6FB8;

  return PeerDiscovery.stopListening()();
}

uint64_t PeerDiscovery.sendDataToParticipant(_:deviceID:data:)()
{
  sub_100005528();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[9] = v5;
  v1[10] = v6;
  v1[8] = v7;
  v8 = type metadata accessor for Logger();
  v1[15] = v8;
  sub_1001B6A00(v8);
  v1[16] = v9;
  v1[17] = sub_1001F7510();
  v1[18] = swift_task_alloc();
  v10 = sub_100004750();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1001ED8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = v14[14];
  sub_1001F7688();
  v16 = sub_1001B6ACC();
  v19 = sub_1001B2F9C(v16, v17, v18);
  swift_endAccess();
  if (v19 || (v15 = v14[14], sub_1001F7688(), v20 = sub_1001B6ACC(), v19 = sub_1001B2F9C(v20, v21, v22), swift_endAccess(), v19))
  {
    v14[19] = v19;
    v23 = v14[8];
    static os_log_type_t.info.getter();
    sub_1001F73E4();
    _StringGuts.grow(_:)(40);

    sub_1001F7304();
    v24._countAndFlagsBits = sub_1001F7604();
    String.append(_:)(v24);
    v25._countAndFlagsBits = sub_1001F70B4();
    v25._object = (v26 & 0xFFFF0000FFFFLL | 0xEC000000203A0000);
    String.append(_:)(v25);
    v27._countAndFlagsBits = sub_1001F7224();
    String.append(_:)(v27);
    static GKLog.match.getter();
    v28 = Logger.logObject.getter();
    if (os_log_type_enabled(v28, v15))
    {
      sub_100005AE4();
      sub_1001F7278();
      *v23 = 136315138;
      v29 = sub_1001E3F2C();
      sub_100005C3C(v29, v30, v31);
      sub_1001F7658();
      *(v23 + 4) = 0xD000000000000018;
      sub_1001F7448(&_mh_execute_header, v32, v33, "Nearby - %s");
      sub_1000058BC();
      sub_1001F719C();
    }

    else
    {
    }

    v34 = sub_1001F72F8();
    v35(v34);
    type metadata accessor for NWProtocolFramer.Message();
    v14[20] = sub_1001FC3F0();
    sub_1001A6C04(&qword_1003B6BB0);
    sub_1001F7388();
    v36 = swift_allocObject();
    sub_1001F773C(v36, xmmword_1002C3960);
    swift_allocObject();

    sub_1001F77B8();
    v14[21] = NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
    v37 = swift_task_alloc();
    v14[22] = v37;
    *v37 = v14;
    v37[1] = sub_1001EDCEC;
    sub_1001D1934(v14[12]);
    sub_100005B0C();

    return sub_10021A03C();
  }

  else
  {
    v40 = v14[11];
    v42 = v14[8];
    v41 = v14[9];
    static os_log_type_t.debug.getter();
    sub_1000044FC();
    _StringGuts.grow(_:)(55);
    sub_1001F7794();
    sub_1001F7310();
    v43._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v43);
    v44._countAndFlagsBits = sub_1001F761C();
    String.append(_:)(v44);
    v45._countAndFlagsBits = 0xD00000000000001ELL;
    v45._object = 0x800000010030ABB0;
    String.append(_:)(v45);
    v46._countAndFlagsBits = sub_1001E3F2C();
    String.append(_:)(v46);
    sub_1001F75D4();
    v47 = Logger.logObject.getter();
    if (sub_1001F7570(v47))
    {
      sub_100005AE4();
      sub_1001F71D4();
      sub_1001F7358();
      sub_1001F710C(4.8149e-34, v48);
      sub_1001F74D0();
      *(v42 + 4) = v41;
      sub_1001F70EC(&_mh_execute_header, v49, v50, "Nearby - %s");
      sub_1001F7008();
      sub_1000047A4();
    }

    else
    {
    }

    v51 = sub_1001F718C();
    v52(v51);

    sub_100005B0C();

    return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1001EDCEC()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_100004750();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001EDDE4()
{
  sub_100005528();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1001EDF10(int a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[4] = v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v8;
  v9 = a3;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v5[6] = v10;
  v5[7] = v12;
  v13 = swift_task_alloc();
  v5[8] = v13;
  *v13 = v5;
  v13[1] = sub_1001EE03C;

  return PeerDiscovery.sendDataToParticipant(_:deviceID:data:)();
}

uint64_t sub_1001EE03C(uint64_t a1)
{
  sub_1000057F0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v1;
  sub_100004410();
  *v10 = v9;

  sub_1000072CC(v8, v7);

  if (a1)
  {
    v11 = _convertErrorToNSError(_:)();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v4 + 24);
  v13 = sub_100005558();
  v14(v13);

  _Block_release(v12);
  sub_1000046F8();

  return v15();
}

void PeerDiscovery.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void PeerDiscovery.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t PeerDiscovery.deinit()
{
  sub_1001AF9D0(v0 + 112);

  sub_1000072CC(*(v0 + 152), *(v0 + 160));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PeerDiscovery.__deallocating_deinit()
{
  PeerDiscovery.deinit();

  return _swift_defaultActor_deallocate(v0);
}

id sub_1001EE31C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v69 = &v65 - v6;
  v7 = type metadata accessor for NWTXTRecord();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NWBrowser.Result.Metadata();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v65 - v16;
  NWBrowser.Result.metadata.getter();
  (*(v12 + 16))(v15, v17, v11);
  if ((*(v12 + 88))(v15, v11) != enum case for NWBrowser.Result.Metadata.bonjour(_:))
  {
    v44 = v17;
    v47 = *(v12 + 8);
    v45 = v12 + 8;
    v46 = v47;
    v47(v15, v11);
    v48 = static os_log_type_t.info.getter();
    static GKLog.match.getter();
    v49 = Logger.logObject.getter();
    if (os_log_type_enabled(v49, v48))
    {
      v50 = v11;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v70 = v45;
      v53 = v52;
      v73 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_100005C3C(0xD000000000000021, 0x800000010030B4E0, &v73);
      _os_log_impl(&_mh_execute_header, v49, v48, "Nearby - %s", v51, 0xCu);
      sub_100005BE0(v53);

      (*(v71 + 8))(v5, v72);
      result = v46(v44, v50);
    }

    else
    {

      (*(v71 + 8))(v5, v72);
      result = v46(v44, v11);
    }

    goto LABEL_28;
  }

  (*(v12 + 96))(v15, v11);
  v68 = v8;
  (*(v8 + 32))(v10, v15, v7);
  v18 = NWTXTRecord.subscript.getter();
  v20 = v7;
  if (!v19)
  {
    v70 = v12;
    v67 = v11;
    v54 = static os_log_type_t.info.getter();
    v73 = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v55._object = 0x800000010030B510;
    v55._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v55);
    _print_unlocked<A, B>(_:_:)();
    v57 = v73;
    v56 = v74;
    v58 = v69;
    static GKLog.match.getter();
    v59 = Logger.logObject.getter();
    if (os_log_type_enabled(v59, v54))
    {
      v60 = swift_slowAlloc();
      v66 = v17;
      v61 = v60;
      v62 = swift_slowAlloc();
      v73 = v62;
      *v61 = 136315138;
      v63 = sub_100005C3C(v57, v56, &v73);

      *(v61 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v59, v54, "Nearby - %s", v61, 0xCu);
      sub_100005BE0(v62);

      (*(v71 + 8))(v58, v72);
      (*(v68 + 8))(v10, v20);
      result = (*(v70 + 8))(v66, v67);
    }

    else
    {

      (*(v71 + 8))(v58, v72);
      (*(v68 + 8))(v10, v7);
      result = (*(v70 + 8))(v17, v67);
    }

    goto LABEL_28;
  }

  v21 = v19;
  v71 = v18;
  v72 = v20;
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v23 = sub_100004EB4(result);
    if (v24)
    {
      if (v71 == v23 && v21 == v24)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      (*(v68 + 8))(v10, v72);
      result = (*(v12 + 8))(v17, v11);
      goto LABEL_28;
    }

LABEL_10:
    v70 = v12;
    v27 = NWTXTRecord.subscript.getter();
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      v67 = v11;
      v31 = NWTXTRecord.subscript.getter();
      if (v32)
      {
        v33 = v31;
        v34 = v32;
        v66 = v17;
        v35 = NWTXTRecord.subscript.getter();
        if (v36)
        {
          v37 = v35;
          v38 = v36;
          v39 = NWTXTRecord.subscript.getter();
          v40 = v10;
          v42 = v41;
          (*(v68 + 8))(v40, v72);
          result = (*(v70 + 8))(v66, v67);
          if (v42)
          {
            v43 = v71;
          }

          else
          {

            v43 = 0;
            v21 = 0;
            v29 = 0;
            v30 = 0;
            v33 = 0;
            v34 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
          }

          goto LABEL_29;
        }

        v17 = v66;
        v11 = v67;
      }

      else
      {
        v11 = v67;
      }
    }

    v64 = v68;

    (*(v64 + 8))(v10, v72);
    result = (*(v70 + 8))(v17, v11);
LABEL_28:
    v43 = 0;
    v21 = 0;
    v29 = 0;
    v30 = 0;
    v33 = 0;
    v34 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v42 = 0;
LABEL_29:
    *a1 = v43;
    a1[1] = v21;
    a1[2] = v29;
    a1[3] = v30;
    a1[4] = v33;
    a1[5] = v34;
    a1[6] = v37;
    a1[7] = v38;
    a1[8] = v39;
    a1[9] = v42;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001EEB68(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v3 = type metadata accessor for Logger();
  v2[52] = v3;
  v2[53] = *(v3 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  type metadata accessor for NWEndpoint();
  v2[56] = swift_task_alloc();

  return _swift_task_switch(sub_1001EEC60, v1, 0);
}

uint64_t sub_1001EF1FC()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_100004750();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001EF2F4()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001EF368(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for NWBrowser.Result.Metadata();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001EF49C, v1, 0);
}

uint64_t sub_1001EF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  sub_1001F7810();
  a29 = v32;
  a30 = v33;
  a28 = v31;
  static os_log_type_t.info.getter();
  sub_1001F73E4();
  a17 = 0;
  a18 = v34;
  _StringGuts.grow(_:)(27);
  v35 = a18;
  v31[11] = a17;
  v31[12] = v35;
  v36._countAndFlagsBits = 0xD000000000000019;
  v36._object = 0x800000010030B540;
  String.append(_:)(v36);
  type metadata accessor for NWBrowser.Result();
  _print_unlocked<A, B>(_:_:)();
  static GKLog.match.getter();
  v37 = Logger.logObject.getter();
  v38 = os_log_type_enabled(v37, v30);
  v101 = v31[22];
  v40 = v31[18];
  v39 = v31[19];
  if (v38)
  {
    a15 = (v31 + 2);
    v41 = sub_100005AE4();
    v42 = sub_100005808();
    a17 = v42;
    *v41 = 136315138;
    v43 = sub_1001F7604();
    v46 = sub_100005C3C(v43, v44, v45);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v30, "Nearby - %s", v41, 0xCu);
    sub_100005BE0(v42);
    sub_1000043D8();
    sub_1000043D8();
  }

  else
  {
  }

  v47 = *(v39 + 8);
  (v47)(v101, v40);
  v48 = v31[13];
  v49 = v31[14];
  sub_1001E42EC();
  v50 = *(v49 + 184);
  v51 = swift_task_alloc();
  v51[2] = v48;

  v52 = sub_1001EFF00(sub_1001F6E98, v51, v50);
  v54 = v53;
  v56 = v55;

  if (v54)
  {
    if (*(v56 + 48))
    {
      a15 = v52;
      v101 = v47;
      a12 = v31 + 5;
      a13 = v56;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        sub_1001F77AC();
        v51 = String._bridgeToObjectiveC()();
        v58 = String._bridgeToObjectiveC()();
        [Strong playerLost:v51 deviceID:v58];
        swift_unknownObjectRelease();
      }

      static os_log_type_t.info.getter();
      sub_1001F7230();
      a17 = 0;
      a18 = v59;
      _StringGuts.grow(_:)(34);

      sub_1001F7304();
      a17 = 0xD00000000000001FLL;
      a18 = v60;
      v61._countAndFlagsBits = sub_1001F77AC();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 46;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);
      v64 = a17;
      v63 = a18;
      static GKLog.match.getter();
      v65 = Logger.logObject.getter();
      v100 = v51;
      v66 = os_log_type_enabled(v65, v51);
      v67 = v31[21];
      v68 = v31[18];
      v69 = v31[19];
      if (v66)
      {
        sub_100005AE4();
        a11 = v69;
        a10 = v67;
        v70 = sub_100005B28();
        a17 = v70;
        *v69 = 136315138;
        v71 = sub_100005C3C(v64, v63, &a17);
        v72 = v68;
        v73 = v71;

        *(v69 + 4) = v73;
        sub_1001F73F0(&_mh_execute_header, v65, v100, "Nearby - %s");
        sub_100005BE0(v70);
        sub_1000043D8();
        sub_1001E3DC0();

        v74 = a10;
        v75 = v72;
      }

      else
      {

        v74 = sub_1001E4240();
      }

      v101(v74, v75);
      sub_1001F7688();
      a14 = sub_1001B2F9C(a15, v54, *(v49 + 184));
      if (a14)
      {
        v77 = v31[16];
        v76 = v31[17];
        a11 = v31[15];
        swift_endAccess();
        sub_100219C98();
        sub_1001F75EC();
        sub_10020AF5C(a15, v54);
        swift_endAccess();

        static os_log_type_t.info.getter();
        sub_1001F73E4();
        a17 = 0;
        a18 = v78;
        _StringGuts.grow(_:)(26);

        sub_1001F7304();
        a17 = 0xD000000000000018;
        a18 = v79;
        NWBrowser.Result.metadata.getter();
        v80 = NWBrowser.Result.Metadata.debugDescription.getter();
        v82 = v81;
        (*(v77 + 8))(v76, a11);
        v83._countAndFlagsBits = v80;
        v83._object = v82;
        String.append(_:)(v83);

        v84 = a17;
        v85 = a18;
        static GKLog.match.getter();
        v86 = Logger.logObject.getter();
        if (os_log_type_enabled(v86, v54))
        {
          sub_100005AE4();
          a17 = sub_1001F7278();
          *v76 = 136315138;
          v87 = sub_100005C3C(v84, v85, &a17);

          *(v76 + 4) = v87;
          sub_1001F7448(&_mh_execute_header, v88, v89, "Nearby - %s");
          sub_1000058BC();
          sub_1001F719C();
        }

        else
        {
        }

        v90 = sub_1001F72F8();
        (v101)(v90);
        goto LABEL_19;
      }

      swift_endAccess();
    }
  }

LABEL_19:

  sub_1000046F8();
  sub_1001F7468();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, a15, v101, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1001EFAB4(uint64_t a1)
{
  v2 = type metadata accessor for NWEndpoint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001A6C04(&qword_1003B6538);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_1001A6C04(&qword_1003B6540);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  if (*(*(a1 + 16) + 32))
  {

    NWConnection.endpoint.getter();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_1001A9674(v16, v17, 1, v2);
  NWBrowser.Result.endpoint.getter();
  sub_1001A9674(v14, 0, 1, v2);
  v18 = *(v5 + 48);
  sub_1001F6EB8(v16, v7, &qword_1003B6540);
  sub_1001F6EB8(v14, &v7[v18], &qword_1003B6540);
  if (sub_1001A969C(v7, 1, v2) != 1)
  {
    v20 = v11;
    sub_1001F6EB8(v7, v11, &qword_1003B6540);
    if (sub_1001A969C(&v7[v18], 1, v2) != 1)
    {
      v21 = v26;
      (*(v3 + 32))(v26, &v7[v18], v2);
      sub_1001F6F70(&qword_1003B5BC8, 255, &type metadata accessor for NWEndpoint);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = v20;
      v19 = v22;
      v23 = *(v3 + 8);
      v23(v21, v2);
      sub_1001F6F1C(v14, &qword_1003B6540);
      sub_1001F6F1C(v16, &qword_1003B6540);
      v23(v25, v2);
      sub_1001F6F1C(v7, &qword_1003B6540);
      return v19 & 1;
    }

    sub_1001F6F1C(v14, &qword_1003B6540);
    sub_1001F6F1C(v16, &qword_1003B6540);
    (*(v3 + 8))(v11, v2);
    goto LABEL_9;
  }

  sub_1001F6F1C(v14, &qword_1003B6540);
  sub_1001F6F1C(v16, &qword_1003B6540);
  if (sub_1001A969C(&v7[v18], 1, v2) != 1)
  {
LABEL_9:
    sub_1001F6F1C(v7, &qword_1003B6538);
    v19 = 0;
    return v19 & 1;
  }

  sub_1001F6F1C(v7, &qword_1003B6540);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1001EFF00(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v20 = a3;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v20 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(v20 + 56) + 8 * v12);
      v19[0] = *v13;
      v19[1] = v14;
      v19[2] = v16;

      v17 = a1(v19);
      if (v3)
      {

        return v15;
      }

      if (v17)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return v15;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001F0084()
{
  sub_100005528();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  sub_1001A6C04(&qword_1003B60F0);
  v1[11] = sub_1001F7510();
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for NWBrowser.Result();
  v1[13] = v4;
  sub_1001B6A00(v4);
  v1[14] = v5;
  v1[15] = *(v6 + 64);
  v1[16] = sub_1001F7510();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v7 = type metadata accessor for NWBrowser.Result.Change();
  v1[19] = v7;
  sub_1001B6A00(v7);
  v1[20] = v8;
  v1[21] = sub_1001F7510();
  v1[22] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v1[23] = v9;
  sub_1001B6A00(v9);
  v1[24] = v10;
  v1[25] = sub_1001F7510();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v11 = sub_100004750();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1001F0244()
{
  v133 = v1;
  v2 = v1[27];
  v3 = v1[9];
  static os_log_type_t.debug.getter();
  sub_1001F7230();
  _StringGuts.grow(_:)(42);

  sub_1001F7304();
  v131 = 0xD00000000000001BLL;
  v132 = v4;
  sub_1001F6FC0();
  v1[28] = sub_1001F6F70(v5, 255, v6);
  sub_1001F7224();
  v7._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x65676E616863202CLL;
  v8._object = 0xEB00000000203A73;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_1002199C8(v3);
  String.append(_:)(v9);

  v11 = v131;
  v10 = v132;
  static GKLog.match.getter();
  v12 = Logger.logObject.getter();
  v13 = sub_1001F7758(v12);
  v14 = v1[23];
  v15 = v1[24];
  if (v13)
  {
    sub_100005AE4();
    v131 = sub_1001F71D4();
    MEMORY[0xD00000000000001B] = 136315138;
    v16 = sub_1001F7224();
    sub_100005C3C(v16, v17, v18);
    sub_1001F74D0();
    MEMORY[0xD00000000000001F] = v11;
    sub_1001F74A0(&_mh_execute_header, v2, v0, "Nearby - %s");
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  v21 = *(v15 + 8);
  v20 = v15 + 8;
  v19 = v21;
  v22 = sub_1001F72F8();
  v21(v22);
  v1[29] = v21;
  v23 = v1[9];
  if (v23)
  {
    v24 = v1[20];
    v25 = *(v23 + 32);
    *(v1 + 300) = v25;
    v26 = -1;
    v27 = -1 << v25;
    if (-(-1 << v25) < 64)
    {
      v26 = ~(-1 << -(-1 << v25));
    }

    v28 = v26 & *(v23 + 56);
    v29 = enum case for NWBrowser.Result.Change.added(_:);
    *(v1 + 72) = enum case for NWBrowser.Result.Change.added(_:);
    *(v1 + 73) = enum case for NWBrowser.Result.Change.removed(_:);
    *(v1 + 74) = enum case for NWBrowser.Result.Change.changed(_:);

    if (v28)
    {
      v31 = 0;
LABEL_33:
      v69 = (v24 + 88);
      v1[30] = v28;
      v1[31] = v31;
      v70 = v1[21];
      v71 = v1[22];
      v72 = v1[19];
      (*(v24 + 16))(v71, *(v30 + 48) + *(v24 + 72) * (__clz(__rbit64(v28)) | (v31 << 6)), v72);
      v73 = sub_1001F70A4();
      v74(v73);
      v75 = sub_100005540();
      v77 = v76(v75);
      if (v77 == v29)
      {
        v71 = v1[21];
        v78 = sub_1000062AC();
        v79(v78);
        v80 = sub_1001F703C();
        v81(v80);
      }

      else
      {
        if (v77 == *(v1 + 73))
        {
          v91 = sub_1000062AC();
          v92(v91);
          v93 = sub_1001F703C();
          v94(v93);
          v95 = swift_task_alloc();
          v1[35] = v95;
          *v95 = v1;
          sub_1001F6FD8(v95);
          sub_1001F782C();

          return sub_1001EF368(v96);
        }

        sub_1001F731C();
        if (!v112)
        {

          v121 = sub_1001E4240();
          v122(v121);
          goto LABEL_27;
        }

        v113 = sub_1001F720C();
        v114(v113);
        sub_1001A6C04(&qword_1003B6528);
        v115 = sub_1001F712C();
        v116(v115);
        type metadata accessor for NWBrowser.Result.Change.Flags();
        sub_1000047C0();
        (*(v117 + 8))(v71 + v70);
        v118 = sub_1001F72F8();
        v119(v118);
      }

      if (*(v1[8] + 16))
      {
        sub_1001F7408();
        sub_1001F7344();
        do
        {
          sub_1001F716C();
          if ((v82 & 1) == 0)
          {
            goto LABEL_46;
          }

          v83 = sub_1001F707C();
          v84(v83);
          sub_1001F6FC0();
          sub_1001F6F70(&qword_1003B6530, 255, v85);
          sub_1001F7364();
          v86 = sub_1001F714C();
          v87(v86);
        }

        while ((v71 & 1) == 0);
        v88 = swift_task_alloc();
        v1[34] = v88;
        *v88 = v1;
        sub_10000588C(v88);
        sub_1001F782C();

        return sub_1001EEB68(v89);
      }

LABEL_46:
      sub_1001F76D8();
      sub_1001F7230();
      v131 = 0;
      v132 = v98;
      _StringGuts.grow(_:)(112);
      v99 = v132;
      v1[6] = 0;
      v1[7] = v99;
      sub_1001F74E8();
      String.append(_:)(v100);
      sub_1001F76BC();
      v101 = sub_1001F7550();
      v102(v101);
      sub_1001F74E8();
      String.append(_:)(v103);
      v104 = v1[6];
      static GKLog.match.getter();
      v105 = Logger.logObject.getter();
      sub_1001F7758(v105);
      sub_1001F7330();
      if (v106)
      {
        sub_100005AE4();
        v131 = sub_1001F7278();
        *v69 = 136315138;
        v107 = sub_1001E3F2C();
        sub_100005C3C(v107, v108, v109);
        sub_1001F7658();
        *(v24 + 92) = v104;
        sub_1001F7428(&_mh_execute_header, v110, v111, "Nearby - %s");
        sub_1000058BC();
        sub_1001F719C();

        ((v24 + 88))(v20, v24);
      }

      else
      {

        v120 = sub_1001F7540();
        v69(v120);
      }
    }

    else
    {
      v68 = 0;
      while (((63 - v27) >> 6) - 1 != v68)
      {
        v31 = v68 + 1;
        v28 = *(v30 + 8 * v68++ + 64);
        if (v28)
        {
          goto LABEL_33;
        }
      }

LABEL_26:
    }

LABEL_27:
    sub_1001F7294();

    sub_1000046F8();
    sub_1001F782C();

    __asm { BRAA            X1, X16 }
  }

  static os_log_type_t.info.getter();
  sub_1001F74B8();
  v32 = Logger.logObject.getter();
  if (os_log_type_enabled(v32, v14))
  {
    sub_100005AE4();
    v131 = sub_100005B28();
    *v10 = 136315138;
    *(v10 + 4) = sub_100005C3C(0xD00000000000002FLL, 0x800000010030B390, &v131);
    sub_1001F73F0(&_mh_execute_header, v32, v14, "Nearby - %s");
    sub_1000060C0();
    sub_1001E3DC0();
  }

  v33 = sub_100005540();
  v19(v33);
  v123 = v1 + 2;
  v34 = v1[8] + 56;
  sub_1001F7050();
  v37 = v36 & v35;
  v39 = (63 - v38) >> 6;
  v126 = v40;
  v127 = v41;

  v43 = 0;
  v124 = v39;
  v125 = v34;
  v130 = v1;
  if (v37)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v39)
    {
      goto LABEL_26;
    }

    v37 = *(v34 + 8 * v44);
    ++v43;
    if (v37)
    {
      v43 = v44;
      do
      {
LABEL_16:
        v45 = v1[16];
        v47 = v1[12];
        v46 = v1[13];
        v128 = v1[17];
        v129 = v1[11];
        v48 = v130[10];
        v49 = *(v127 + 16);
        v49(v45, *(v126 + 48) + *(v127 + 72) * (__clz(__rbit64(v37)) | (v43 << 6)), v46);
        v50 = type metadata accessor for TaskPriority();
        sub_1001A9674(v47, 1, 1, v50);
        v51 = sub_1001F77AC();
        (v49)(v51);
        v53 = sub_1001F6F70(&qword_1003B6520, v52, type metadata accessor for PeerDiscovery);
        v54 = (*(v127 + 80) + 40) & ~*(v127 + 80);
        v55 = swift_allocObject();
        *(v55 + 2) = v48;
        *(v55 + 3) = v53;
        *(v55 + 4) = v48;
        (*(v127 + 32))(&v55[v54], v128, v46);
        sub_1001F6EB8(v47, v129, &qword_1003B60F0);
        v56 = sub_1001A969C(v129, 1, v50);
        v1 = v130;
        swift_retain_n();

        if (v56 == 1)
        {
          sub_1001F6F1C(v130[11], &qword_1003B60F0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          v57 = sub_1001F72F8();
          v58(v57);
        }

        v59 = *(v55 + 2);
        swift_unknownObjectRetain();

        if (v59)
        {
          swift_getObjectType();
          v60 = dispatch thunk of Actor.unownedExecutor.getter();
          v62 = v61;
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = 0;
          v62 = 0;
        }

        sub_1001F6F1C(v130[12], &qword_1003B60F0);
        v63 = swift_allocObject();
        *(v63 + 16) = &unk_1002C4E00;
        *(v63 + 24) = v55;
        if (v62 | v60)
        {
          *v123 = 0;
          v123[1] = 0;
          v130[4] = v60;
          v130[5] = v62;
        }

        v37 &= v37 - 1;
        swift_task_create();

        v64 = sub_100005558();
        result = v65(v64);
        v39 = v124;
        v34 = v125;
      }

      while (v37);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F0CC8()
{
  sub_1001AFA50();
  sub_1000057F0();
  v2 = *(v1 + 256);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_100004410();
  *v5 = v4;

  v6 = sub_1001E4240();
  v2(v6);

  return _swift_task_switch(sub_1001F0E30, v3, 0);
}

void sub_1001F0E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001F7394();
  sub_1001E4394();
  v22 = *(v19 + 248);
  if (((*(v19 + 240) - 1) & *(v19 + 240)) != 0)
  {
LABEL_7:
    v28 = sub_1001F723C(v22);
    v29(v28);
    v30 = sub_1001F70A4();
    v31(v30);
    v32 = sub_100005540();
    v34 = v33(v32);
    if (v34 == v20)
    {
      v17 = *(v19 + 168);
      v35 = sub_1000062AC();
      v36(v35);
      v37 = sub_1001F703C();
      v38(v37);
    }

    else
    {
      if (v34 == *(v19 + 292))
      {
        v48 = sub_1000062AC();
        v49(v48);
        v50 = sub_1001F703C();
        v51(v50);
        v52 = swift_task_alloc();
        *(v19 + 280) = v52;
        *v52 = v19;
        sub_1001F6FD8(v52);
        sub_1001E41B8();

        sub_1001EF368(v53);
        return;
      }

      sub_1001F731C();
      if (!v67)
      {

        v76 = sub_1001E4240();
        v77(v76);
LABEL_26:
        sub_1001F7294();

        sub_1000046F8();
        sub_1001E41B8();

        v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16);
        return;
      }

      v68 = sub_1001F720C();
      v69(v68);
      sub_1001A6C04(&qword_1003B6528);
      v70 = sub_1001F712C();
      v71(v70);
      type metadata accessor for NWBrowser.Result.Change.Flags();
      sub_1000047C0();
      (*(v72 + 8))(v17 + v16);
      v73 = sub_1001F72F8();
      v74(v73);
    }

    if (*(*(v19 + 64) + 16))
    {
      sub_1001F7408();
      sub_1001F7344();
      while (1)
      {
        sub_1001F716C();
        if ((v39 & 1) == 0)
        {
          break;
        }

        v40 = sub_1001F707C();
        v41(v40);
        sub_1001F6FC0();
        sub_1001F6F70(&qword_1003B6530, 255, v42);
        sub_1001F7364();
        v43 = sub_1001F714C();
        v44(v43);
        if (v17)
        {
          v45 = swift_task_alloc();
          *(v19 + 272) = v45;
          *v45 = v19;
          sub_10000588C();
          sub_1001E41B8();

          sub_1001EEB68(v46);
          return;
        }
      }
    }

    sub_1001F76D8();
    sub_100006A28();
    _StringGuts.grow(_:)(112);
    *(v19 + 48) = a12;
    *(v19 + 56) = a13;
    sub_1001F74E8();
    v55._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v55);
    sub_1001F76BC();
    v56 = sub_1001F7550();
    v57(v56);
    sub_1001F74E8();
    String.append(_:)(v58);
    v60 = *(v19 + 48);
    v59 = *(v19 + 56);
    static GKLog.match.getter();
    v61 = Logger.logObject.getter();
    sub_1001F7758(v61);
    sub_1001F7330();
    if (v62)
    {
      sub_100005AE4();
      a11 = v21;
      sub_1001F7278();
      sub_1001F75A8();
      v63 = sub_1000063C0(4.8149e-34);
      sub_100005C3C(v63, v59, v64);
      sub_1001F7658();
      *(v21 + 4) = v60;
      sub_1001F7428(&_mh_execute_header, v65, v66, "Nearby - %s");
      sub_1000058BC();
      sub_1001F719C();

      (v21)(a10, v20);
    }

    else
    {

      v75 = sub_1001F7540();
      (v21)(v75);
    }

    goto LABEL_26;
  }

  while (!__OFADD__(v22, 1))
  {
    v23 = sub_1001F7640();
    if (v26 == v27)
    {

      goto LABEL_26;
    }

    v22 = v24 + 1;
    if (*(v23 + 8 * v25 + 56))
    {
      v22 = v25;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1001F12A0()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_100004750();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001F1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001F7394();
  sub_1001E4394();
  result = (*(*(v19 + 112) + 8))(*(v19 + 136), *(v19 + 104));
  v23 = *(v19 + 248);
  if (((*(v19 + 240) - 1) & *(v19 + 240)) != 0)
  {
LABEL_7:
    v28 = sub_1001F723C(v23);
    v29(v28);
    v30 = sub_1001F70A4();
    v31(v30);
    v32 = sub_100005540();
    v34 = v33(v32);
    if (v34 == v20)
    {
      v17 = *(v19 + 168);
      v35 = sub_1000062AC();
      v36(v35);
      v37 = sub_1001F703C();
      v38(v37);
    }

    else
    {
      if (v34 == *(v19 + 292))
      {
        v48 = sub_1000062AC();
        v49(v48);
        v50 = sub_1001F703C();
        v51(v50);
        v52 = swift_task_alloc();
        *(v19 + 280) = v52;
        *v52 = v19;
        sub_1001F6FD8();
        sub_1001E41B8();

        return sub_1001EF368(v53);
      }

      sub_1001F731C();
      if (!v67)
      {

        v76 = sub_1001E4240();
        v77(v76);
LABEL_26:
        sub_1001F7294();

        sub_1000046F8();
        sub_1001E41B8();

        return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16);
      }

      v68 = sub_1001F720C();
      v69(v68);
      sub_1001A6C04(&qword_1003B6528);
      v70 = sub_1001F712C();
      v71(v70);
      type metadata accessor for NWBrowser.Result.Change.Flags();
      sub_1000047C0();
      (*(v72 + 8))(v17 + v16);
      v73 = sub_1001F72F8();
      v74(v73);
    }

    if (*(*(v19 + 64) + 16))
    {
      sub_1001F7408();
      sub_1001F7344();
      while (1)
      {
        sub_1001F716C();
        if ((v39 & 1) == 0)
        {
          break;
        }

        v40 = sub_1001F707C();
        v41(v40);
        sub_1001F6FC0();
        sub_1001F6F70(&qword_1003B6530, 255, v42);
        sub_1001F7364();
        v43 = sub_1001F714C();
        v44(v43);
        if (v17)
        {
          v45 = swift_task_alloc();
          *(v19 + 272) = v45;
          *v45 = v19;
          sub_10000588C();
          sub_1001E41B8();

          return sub_1001EEB68(v46);
        }
      }
    }

    sub_1001F76D8();
    sub_100006A28();
    _StringGuts.grow(_:)(112);
    *(v19 + 48) = a12;
    *(v19 + 56) = a13;
    sub_1001F74E8();
    v55._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v55);
    sub_1001F76BC();
    v56 = sub_1001F7550();
    v57(v56);
    sub_1001F74E8();
    String.append(_:)(v58);
    v60 = *(v19 + 48);
    v59 = *(v19 + 56);
    static GKLog.match.getter();
    v61 = Logger.logObject.getter();
    sub_1001F7758(v61);
    sub_1001F7330();
    if (v62)
    {
      sub_100005AE4();
      a11 = v21;
      sub_1001F7278();
      sub_1001F75A8();
      v63 = sub_1000063C0(4.8149e-34);
      sub_100005C3C(v63, v59, v64);
      sub_1001F7658();
      *(v21 + 4) = v60;
      sub_1001F7428(&_mh_execute_header, v65, v66, "Nearby - %s");
      sub_1000058BC();
      sub_1001F719C();

      (v21)(a10, v20);
    }

    else
    {

      v75 = sub_1001F7540();
      (v21)(v75);
    }

    goto LABEL_26;
  }

  while (!__OFADD__(v23, 1))
  {
    result = sub_1001F7640();
    if (v26 == v27)
    {

      goto LABEL_26;
    }

    v23 = v24 + 1;
    if (*(result + 8 * v25 + 56))
    {
      v23 = v25;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F1820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1001AF328;

  return sub_1001EEB68(a5);
}

uint64_t sub_1001F18BC()
{
  sub_100005528();
  v0[6] = v1;
  v2 = type metadata accessor for Logger();
  v0[7] = v2;
  sub_1001B6A00(v2);
  v0[8] = v3;
  v0[9] = sub_1001E41A0();
  v4 = sub_100004750();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001F1960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v17 = *(v14 + 48);
  static os_log_type_t.info.getter();
  sub_1000044FC();
  _StringGuts.grow(_:)(22);

  sub_1001F7304();
  sub_1001F76F4();
  v33._countAndFlagsBits = Error.localizedDescription.getter();
  sub_1001F7670(v33);

  sub_1001F75D4();
  v18 = Logger.logObject.getter();
  if (sub_1001F7570(v18))
  {
    sub_100005AE4();
    sub_1001F71D4();
    sub_1001F7358();
    sub_1001F710C(4.8149e-34, v19);
    sub_1001F74D0();
    *(v16 + 4) = v15;
    sub_1001F70EC(&_mh_execute_header, v20, v21, "Nearby - %s");
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  v22 = sub_1001F718C();
  v23(v22);

  sub_1000046F8();
  sub_100005B0C();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001F1A88()
{
  v1 = v0;
  v2 = type metadata accessor for NWEndpoint();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - v8;
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  NWConnection.endpoint.getter();
  swift_beginAccess();
  v12 = sub_1001AFC5C(v11, *(v0 + 168));
  swift_endAccess();
  v13 = *(v3 + 8);
  result = v13(v11, v2);
  if (v12)
  {

    NWConnection.endpoint.getter();
    swift_beginAccess();
    if (sub_1001AFC5C(v9, *(v1 + 168)))
    {
      swift_endAccess();
      v13(v9, v2);
      sub_100219C98();
    }

    else
    {
      swift_endAccess();
      v13(v9, v2);
    }

    NWConnection.endpoint.getter();
    swift_beginAccess();
    sub_10020B06C();
    swift_endAccess();

    return v13(v6, v2);
  }

  return result;
}

uint64_t sub_1001F1CB8()
{
  sub_100005528();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Logger();
  v1[4] = v3;
  sub_1001B6A00(v3);
  v1[5] = v4;
  v1[6] = sub_1001E41A0();
  v5 = sub_100004750();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001F1D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  sub_1001F77A0();
  static os_log_type_t.info.getter();
  sub_1000044FC();
  _StringGuts.grow(_:)(23);

  sub_1001F7304();
  v34 = v17;
  v35._countAndFlagsBits = NWConnection.debugDescription.getter();
  sub_1001F7670(v35);

  sub_1001F75D4();
  v18 = Logger.logObject.getter();
  sub_1001F7570(v18);
  sub_1001F7788();
  if (v19)
  {
    sub_100005AE4();
    sub_1001F71D4();
    sub_1001F7358();
    sub_1001F710C(4.8149e-34, v20);
    sub_1001F74D0();
    *(v16 + 4) = v15;
    sub_1001F70EC(&_mh_execute_header, v21, v22, "Nearby - %s");
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  v23 = sub_1001F718C();
  v24(v23);
  sub_1001F1A88();

  sub_1000046F8();
  sub_100005B0C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, 0xD000000000000015, v34, a12, a13, a14);
}

uint64_t sub_1001F1E88()
{
  sub_100005528();
  v1[6] = v2;
  v1[7] = v0;
  v3 = type metadata accessor for Logger();
  v1[8] = v3;
  sub_1001B6A00(v3);
  v1[9] = v4;
  v1[10] = sub_1001F7510();
  v1[11] = swift_task_alloc();
  v5 = sub_100004750();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001F1F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v17 = v14[6];
  static os_log_type_t.info.getter();
  sub_1000044FC();
  _StringGuts.grow(_:)(24);

  sub_1001F7304();
  v39 = v18;
  v40._countAndFlagsBits = sub_10021A9D8();
  sub_1001F7670(v40);

  sub_1001F75D4();
  v19 = Logger.logObject.getter();
  v20 = sub_1001F7570(v19);
  v21 = v14[9];
  if (v20)
  {
    sub_100005AE4();
    sub_1001F71D4();
    sub_1001F7358();
    sub_1001F710C(4.8149e-34, v22);
    sub_1001F74D0();
    *(v16 + 4) = v15;
    sub_1001F70EC(&_mh_execute_header, v23, v24, "Nearby - %s");
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  v25 = *(v21 + 8);
  v26 = sub_100005558();
  v25(v26);
  v14[12] = v25;
  if (*(v14[6] + 48))
  {
    v27 = swift_task_alloc();
    v14[13] = v27;
    *v27 = v14;
    v27[1] = sub_1001F20E8;
    sub_1001D1934(v14[6]);
    sub_100005B0C();

    return sub_1001F2408(v28);
  }

  else
  {

    sub_1000046F8();
    sub_100005B0C();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, 0xD000000000000016, v39, a12, a13, a14);
  }
}

uint64_t sub_1001F20E8()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = *(v3 + 56);

    return _swift_task_switch(sub_1001F2210, v7, 0);
  }

  else
  {

    sub_1000046F8();

    return v8();
  }
}

uint64_t sub_1001F2210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void, void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001F7394();
  sub_1001E4394();
  v17 = static os_log_type_t.debug.getter();
  sub_100006A28();
  _StringGuts.grow(_:)(49);

  sub_1001F7304();
  v38 = v18;
  v19._countAndFlagsBits = sub_10021A9D8();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x3A726F727245202ELL;
  v20._object = 0xE900000000000020;
  String.append(_:)(v20);
  swift_getErrorValue();
  v21._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v21);

  static GKLog.match.getter();
  v22 = Logger.logObject.getter();
  v23 = os_log_type_enabled(v22, v17);
  v24 = v16[12];
  v25 = v16[10];
  v26 = v16[8];
  if (v23)
  {
    sub_100005AE4();
    a11 = v24;
    sub_1001F7278();
    sub_1001F75A8();
    v27 = sub_1000063C0(4.8149e-34);
    sub_100005C3C(v27, v38, v28);
    sub_1001F7658();
    *(v17 + 4) = 0xD000000000000024;
    _os_log_impl(&_mh_execute_header, v22, v17, "Nearby - %s", v17, 0xCu);
    sub_1000058BC();
    sub_1001F719C();

    v24(a10, v26);
  }

  else
  {

    v24(v25, v26);
  }

  sub_1000046F8();
  sub_1001E41B8();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, 0xD000000000000024, v38, a14, a15, a16);
}

uint64_t sub_1001F2408(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001F2520, v1, 0);
}

uint64_t sub_1001F2520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1001F77D8();
  a25 = v30;
  a26 = v31;
  a24 = v27;
  v32 = *(*(v27 + 56) + 128);
  *(v27 + 112) = v32;
  if (!v32)
  {
    static os_log_type_t.debug.getter();
    sub_1001F74B8();
    v61 = Logger.logObject.getter();
    if (sub_1001F7528(v61))
    {
      sub_1001F71F0();
      a13 = sub_100005B28();
      *v28 = 136315138;
      *(v28 + 4) = sub_100005C3C(0xD000000000000027, v29 | 0x8000000000000000, &a13);
      sub_1001F70CC(&_mh_execute_header, v62, v63, "Nearby - %s");
      sub_1000060C0();
      sub_1001E3DC0();
    }

    v64 = sub_1001F706C();
    v65(v64);
    goto LABEL_17;
  }

  sub_10023EF90();
  if (!v33)
  {
    static os_log_type_t.debug.getter();
    sub_1001F73E4();
    a13 = 0;
    a14 = v66;
    _StringGuts.grow(_:)(49);
    v67 = a14;
    *(v27 + 16) = a13;
    *(v27 + 24) = v67;
    v68._countAndFlagsBits = 0xD00000000000002FLL;
    v68._object = 0x800000010030AE50;
    String.append(_:)(v68);
    *(v27 + 32) = v32;
    type metadata accessor for PeerListener();
    _print_unlocked<A, B>(_:_:)();
    v69 = *(v27 + 16);
    static GKLog.match.getter();
    v70 = Logger.logObject.getter();
    v71 = os_log_type_enabled(v70, v26);
    v72 = *(v27 + 88);
    v74 = *(v27 + 64);
    v73 = *(v27 + 72);
    if (v71)
    {
      sub_100005AE4();
      a11 = v72;
      a13 = sub_1001F7278();
      *v72 = 136315138;
      v75 = sub_1001E3F2C();
      sub_100005C3C(v75, v76, v77);
      sub_1001F7658();
      *(v72 + 4) = v69;
      sub_1001F7448(&_mh_execute_header, v78, v79, "Nearby - %s");
      sub_1000058BC();
      sub_1001F719C();
    }

    else
    {
    }

    (*(v73 + 8))(v72, v74);
LABEL_17:

    sub_1000046F8();
    goto LABEL_18;
  }

  v34 = *(*(v27 + 48) + 32);
  *(v27 + 120) = v34;
  if (!v34)
  {

    v80 = static os_log_type_t.debug.getter();
    static GKLog.match.getter();
    v81 = Logger.logObject.getter();
    if (os_log_type_enabled(v81, v80))
    {
      v82 = sub_100005AE4();
      v83 = sub_100005808();
      a13 = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_100005C3C(0xD000000000000027, 0x800000010030AE80, &a13);
      _os_log_impl(&_mh_execute_header, v81, v80, "Nearby - %s", v82, 0xCu);
      sub_100005BE0(v83);
      sub_1000047A4();
      sub_1000043D8();
    }

    v84 = sub_1001F72F8();
    v85(v84);
    goto LABEL_17;
  }

  v35 = objc_opt_self();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v27 + 40) = 0;
  v37 = [v35 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v27 + 40];

  v38 = *(v27 + 40);
  if (v37)
  {
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    *(v27 + 128) = v39;
    *(v27 + 136) = v41;
    type metadata accessor for NWProtocolFramer.Message();
    *(v27 + 144) = sub_1001FC3F0();
    sub_1001A6C04(&qword_1003B6BB0);
    sub_1001F7388();
    v42 = swift_allocObject();
    sub_1001F773C(v42, xmmword_1002C3960);
    swift_allocObject();

    sub_1001F72C8();
    *(v27 + 152) = NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
    v43 = static os_log_type_t.info.getter();
    a13 = 0;
    a14 = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v44._countAndFlagsBits = 0xD00000000000002FLL;
    v44._object = 0x800000010030AEB0;
    String.append(_:)(v44);
    v45 = Dictionary.description.getter();
    v47 = v46;

    v48._countAndFlagsBits = v45;
    v48._object = v47;
    String.append(_:)(v48);

    v49._countAndFlagsBits = 0xD000000000000012;
    v49._object = 0x800000010030AEE0;
    String.append(_:)(v49);
    v50._countAndFlagsBits = NWConnection.debugDescription.getter();
    String.append(_:)(v50);

    v52 = a13;
    v51 = a14;
    static GKLog.match.getter();
    v53 = Logger.logObject.getter();
    v54 = os_log_type_enabled(v53, v43);
    v55 = *(v27 + 104);
    v57 = *(v27 + 64);
    v56 = *(v27 + 72);
    if (v54)
    {
      v58 = sub_100005AE4();
      v59 = sub_100005808();
      a13 = v59;
      *v58 = 136315138;
      v60 = sub_100005C3C(v52, v51, &a13);

      *(v58 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v53, v43, "Nearby - %s", v58, 0xCu);
      sub_100005BE0(v59);
      sub_1000043D8();
      sub_1000043D8();
    }

    else
    {
    }

    (*(v56 + 8))(v55, v57);
    v96 = sub_100005540();
    sub_1001D09EC(v96, v97);
    v98 = swift_task_alloc();
    *(v27 + 160) = v98;
    *v98 = v27;
    v98[1] = sub_1001F2C6C;
    sub_100005540();
    sub_1001F7484();

    return sub_10021A03C();
  }

  v95 = v38;

  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_1000046F8();
LABEL_18:
  sub_1001F7484();

  return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1001F2C6C()
{
  sub_1000057FC();
  v1 = *(*v0 + 56);
  v2 = *v0;
  sub_100004410();
  *v3 = v2;

  v4 = sub_1001D1B80();
  sub_1000072CC(v4, v5);

  return _swift_task_switch(sub_1001F2DD4, v1, 0);
}

uint64_t sub_1001F2DD4()
{
  sub_1001AFA50();

  v0 = sub_1001D1B80();
  sub_1000072CC(v0, v1);

  sub_1000046F8();

  return v2();
}

uint64_t sub_1001F2EB8()
{
  sub_100005528();
  v1[6] = v2;
  v1[7] = v0;
  v3 = type metadata accessor for Logger();
  v1[8] = v3;
  sub_1001B6A00(v3);
  v1[9] = v4;
  v1[10] = sub_1001E41A0();
  v5 = sub_100004750();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001F2F5C()
{
  sub_1001E3F50();
  sub_1001D1988();
  v3 = *(v0 + 48);
  static os_log_type_t.info.getter();
  sub_1000044FC();
  _StringGuts.grow(_:)(18);

  sub_1001F7304();
  sub_1001F76F4();
  v13._countAndFlagsBits = Error.localizedDescription.getter();
  sub_1001F7670(v13);

  sub_1001F75D4();
  v4 = Logger.logObject.getter();
  if (sub_1001F7570(v4))
  {
    sub_100005AE4();
    sub_1001F71D4();
    sub_1001F7358();
    sub_1001F710C(4.8149e-34, v5);
    sub_1001F74D0();
    *(v2 + 4) = v1;
    sub_1001F70EC(&_mh_execute_header, v6, v7, "Nearby - %s");
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  v8 = sub_1001F718C();
  v9(v8);
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_1001F30B8;
  sub_100005B0C();

  return PeerDiscovery.stopListening()();
}

uint64_t sub_1001F30B8()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_1001F31B4()
{
  sub_100005528();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Logger();
  v1[4] = v3;
  sub_1001B6A00(v3);
  v1[5] = v4;
  v1[6] = sub_1001E41A0();
  v5 = sub_100004750();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001F3258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  sub_1001F77A0();
  static os_log_type_t.debug.getter();
  sub_1000044FC();
  _StringGuts.grow(_:)(139);
  sub_1001F7794();
  sub_1001F7310();
  v17._countAndFlagsBits = 0xD000000000000089;
  String.append(_:)(v17);
  v34._countAndFlagsBits = NWConnection.debugDescription.getter();
  sub_1001F7670(v34);

  sub_1001F75D4();
  v18 = Logger.logObject.getter();
  sub_1001F7570(v18);
  sub_1001F7788();
  if (v19)
  {
    sub_100005AE4();
    sub_1001F71D4();
    sub_1001F7358();
    sub_1001F710C(4.8149e-34, v20);
    sub_1001F74D0();
    *(v16 + 4) = v15;
    sub_1001F70EC(&_mh_execute_header, v21, v22, "Nearby - %s");
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  v23 = sub_1001F718C();
  v24(v23);
  sub_1001F1A88();

  sub_1000046F8();
  sub_100005B0C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001F3384()
{
  sub_100005528();
  v1[16] = v2;
  v1[17] = v0;
  v3 = type metadata accessor for Logger();
  v1[18] = v3;
  sub_1001B6A00(v3);
  v1[19] = v4;
  v1[20] = sub_1001F7510();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for NWEndpoint();
  v1[23] = v5;
  sub_1001B6A00(v5);
  v1[24] = v6;
  v1[25] = sub_1001E41A0();
  v7 = sub_100004750();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001F348C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001F7394();
  sub_1001E4394();
  NWConnection.endpoint.getter();
  v17 = static os_log_type_t.info.getter();
  sub_100006A28();
  _StringGuts.grow(_:)(49);
  v16[8] = a12;
  v69 = v16 + 2;
  v16[9] = a13;
  v18._countAndFlagsBits = 0xD000000000000019;
  v18._object = 0x800000010030AD50;
  String.append(_:)(v18);
  v19._countAndFlagsBits = NWConnection.debugDescription.getter();
  String.append(_:)(v19);

  sub_1001F7310();
  v20._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v20);
  _print_unlocked<A, B>(_:_:)();
  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  static GKLog.match.getter();
  v22 = Logger.logObject.getter();
  v23 = os_log_type_enabled(v22, v17);
  v68 = v16[22];
  v25 = v16[18];
  v24 = v16[19];
  if (v23)
  {
    v26 = sub_100005AE4();
    a12 = sub_100005808();
    *v26 = 136315138;
    v27 = sub_1001F7604();
    v30 = sub_100005C3C(v27, v28, v29);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v17, "Nearby - %s", v26, 0xCu);
    sub_100005BE0(a12);
    sub_1000043D8();
    sub_1000043D8();
  }

  else
  {
  }

  v31 = *(v24 + 8);
  (v31)(v68, v25);
  v32 = v16[25];
  v33 = v16[17];
  sub_1001F7688();
  v34 = sub_1001AFC5C(v32, *(v33 + 168));
  swift_endAccess();
  v35 = v16[16];
  if (v34)
  {

    v36 = static os_log_type_t.debug.getter();
    sub_100006A28();
    _StringGuts.grow(_:)(25);
    v16[12] = a12;
    v16[13] = a13;
    v37._countAndFlagsBits = 0xD000000000000017;
    v37._object = 0x800000010030ADB0;
    String.append(_:)(v37);
    v16[15] = v35;
    type metadata accessor for NWConnection();
    _print_unlocked<A, B>(_:_:)();
    v38 = v16[12];
    static GKLog.match.getter();
    v39 = Logger.logObject.getter();
    if (os_log_type_enabled(v39, v36))
    {
      sub_100005AE4();
      v69 = v31;
      a12 = sub_1001F71D4();
      *v31 = 136315138;
      v40 = sub_1001F7224();
      sub_100005C3C(v40, v41, v42);
      sub_1001F74D0();
      *(v31 + 4) = v38;
      sub_1001F74A0(&_mh_execute_header, v39, v36, "Nearby - %s");
      sub_1001F7008();
      sub_1000047A4();
    }

    else
    {
    }

    v43 = sub_1001E4240();
    (v31)(v43);
    NWConnection.cancel()();
    v52 = sub_1001F7628();
    v53(v52);

    sub_1000046F8();
    sub_1001E41B8();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, v68, v69, a12, a13, a14, a15, a16);
  }

  else
  {
    v44 = static os_log_type_t.info.getter();
    sub_100006A28();
    _StringGuts.grow(_:)(26);
    v16[10] = a12;
    v16[11] = a13;
    v45._countAndFlagsBits = 0xD000000000000018;
    v45._object = 0x800000010030AD90;
    String.append(_:)(v45);
    v16[14] = v35;
    type metadata accessor for NWConnection();
    _print_unlocked<A, B>(_:_:)();
    v46 = v16[10];
    static GKLog.match.getter();
    v47 = Logger.logObject.getter();
    if (os_log_type_enabled(v47, v44))
    {
      sub_100005AE4();
      sub_1001F71D4();
      *v31 = 136315138;
      v48 = sub_1001F7224();
      sub_100005C3C(v48, v49, v50);
      sub_1001F74D0();
      *(v31 + 4) = v46;
      sub_1001F74A0(&_mh_execute_header, v47, v44, "Nearby - %s");
      sub_1001F7008();
      sub_1000047A4();
    }

    else
    {
    }

    v51 = sub_1001E4240();
    (v31)(v51);
    v63 = v16[17];
    type metadata accessor for PeerConnection();
    v64 = swift_allocObject();

    v16[26] = sub_1001F6C10(v65, v63, v64);
    v66 = swift_task_alloc();
    v16[27] = v66;
    *v66 = v16;
    v66[1] = sub_1001F3A08;
    sub_1001E41B8();

    return sub_10021A654();
  }
}

uint64_t sub_1001F3A08()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_100004750();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001F3B00()
{
  sub_1001AFA50();
  v1 = *(v0 + 136);
  sub_1001F75EC();

  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 168);
  sub_100005540();
  sub_1001B9E70();
  *(v1 + 168) = v6;
  swift_endAccess();

  v2 = sub_1001F7628();
  v3(v2);

  sub_1000046F8();

  return v4();
}

uint64_t sub_1001F3BE4()
{
  sub_100005528();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v1[34] = v5;
  v6 = type metadata accessor for Logger();
  v1[39] = v6;
  sub_1001B6A00(v6);
  v1[40] = v7;
  v1[41] = sub_1001F7510();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v8 = sub_100004750();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1001F3CC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  sub_1001F7810();
  a29 = v31;
  a30 = v32;
  a28 = v30;
  v33 = v30[35];
  v34 = static os_log_type_t.info.getter();
  a18 = 0;
  a19 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v35 = a19;
  v30[28] = a18;
  v30[29] = v35;
  sub_1001F7310();
  v36._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v36);
  countAndFlagsBits = 0;
  object = 0;
  v135 = (v33 >> 60);
  if (v33 >> 60 != 15)
  {
    v39 = Data.base64EncodedString(options:)(0);
    countAndFlagsBits = v39._countAndFlagsBits;
    object = v39._object;
  }

  v40 = v30[36];
  v41 = sub_100219928(countAndFlagsBits, object);
  v43 = v42;

  v44._countAndFlagsBits = v41;
  v44._object = v43;
  String.append(_:)(v44);

  v45._countAndFlagsBits = 0x67617373656D202CLL;
  v45._object = 0xEB00000000203A65;
  String.append(_:)(v45);
  v30[32] = v40;
  type metadata accessor for NWProtocolFramer.Message();
  _print_unlocked<A, B>(_:_:)();
  v46._countAndFlagsBits = 0xD000000000000013;
  v46._object = 0x800000010030AF20;
  String.append(_:)(v46);
  v47._countAndFlagsBits = sub_10021A9D8();
  String.append(_:)(v47);

  v48 = v30[28];
  static GKLog.match.getter();
  v49 = Logger.logObject.getter();
  v50 = os_log_type_enabled(v49, v34);
  v51 = v30[45];
  v53 = v30[39];
  v52 = v30[40];
  if (v50)
  {
    sub_100005AE4();
    a16 = v51;
    a15 = v53;
    LOBYTE(v53) = v34;
    a18 = sub_1001F7278();
    off_1002C2000 = 136315138;
    v54 = sub_1001E3F2C();
    sub_100005C3C(v54, v55, v56);
    sub_1001F7658();
    *&off_1002C2004 = v48;
    _os_log_impl(&_mh_execute_header, v49, v34, "Nearby - %s", &off_1002C2000, 0xCu);
    sub_1000058BC();
    sub_1001F719C();

    v57 = *(v52 + 8);
    v57(v51, a15);
  }

  else
  {

    v57 = *(v52 + 8);
    v58 = sub_1001F72F8();
    v57(v58, v59);
  }

  if (v135 <= 0xE)
  {
    sub_1001D09EC(v30[34], v30[35]);
    switch(sub_1001FC4A4())
    {
      case 1u:
        v99 = swift_task_alloc();
        v30[46] = v99;
        *v99 = v30;
        v99[1] = sub_1001F4698;
        sub_1001D1934(v30[34]);
        sub_1001F7468();

        result = sub_1001F49E4(v100, v101, v102);
        break;
      case 2u:
        v83 = swift_task_alloc();
        v30[48] = v83;
        *v83 = v30;
        v83[1] = sub_1001F484C;
        sub_1001D1934(v30[34]);
        sub_1001F7468();

        result = sub_1001F58E0(v84, v85, v86);
        break;
      case 3u:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          v76 = static os_log_type_t.info.getter();
          static GKLog.match.getter();
          v77 = Logger.logObject.getter();
          v104 = os_log_type_enabled(v77, v76);
          v79 = v30[43];
          v80 = v30[39];
          if (!v104)
          {
            goto LABEL_31;
          }

          v135 = v30[43];
          v81 = " messages received. Drop.";
          sub_100005AE4();
          a16 = v80;
          a18 = sub_1001F71D4();
          *v80 = 136315138;
          v82 = 0xD000000000000041;
          goto LABEL_30;
        }

        v135 = Strong;
        v89 = v30[37];
        memcpy(v30 + 2, (v89 + 40), 0x50uLL);
        v90 = v30[3];
        if (v90)
        {
          a10 = v89;
          v91 = v30[38];
          a12 = v30[5];
          a13 = v30[2];
          a14 = v30[7];
          v92 = v30[11];
          a11 = v30[10];
          sub_1001F7688();
          a15 = *(v91 + 184);

          a16 = v92;

          v93 = sub_1001B2F9C(a13, v90, a15);
          swift_endAccess();
          if (v93)
          {
            v95 = v30[34];
            v94 = v30[35];

            v96 = String._bridgeToObjectiveC()();
            v97 = String._bridgeToObjectiveC()();
            sub_1001F6F1C((v30 + 2), &qword_1003B6510);
            isa = Data._bridgeToObjectiveC()().super.isa;
            [v135 receivedData:v96 deviceID:v97 data:isa];
            sub_1001B9874(v95, v94);
            swift_unknownObjectRelease();

            goto LABEL_12;
          }

          sub_1001F6F1C((v30 + 2), &qword_1003B6510);
          v89 = a10;
        }

        memcpy(v30 + 12, (v89 + 40), 0x50uLL);
        v109 = v30[13];
        if (v109)
        {
          v110 = v30[21];
          v111 = v30[38];
          a14 = v30[20];
          a16 = v30[12];
          sub_1001F7688();
          v112 = *(v111 + 176);

          a15 = v110;

          v113 = sub_1001B2F9C(a16, v109, v112);
          swift_endAccess();
          if (v113)
          {

            v114 = String._bridgeToObjectiveC()();
            v115 = String._bridgeToObjectiveC()();
            sub_1001F6F1C((v30 + 12), &qword_1003B6510);
            sub_1001D1B80();
            v116 = Data._bridgeToObjectiveC()().super.isa;
            [v135 receivedData:v114 deviceID:v115 data:v116];
            v117 = sub_1001D1B80();
            sub_1001B9874(v117, v118);

            swift_unknownObjectRelease();
            goto LABEL_12;
          }

          sub_1001F6F1C((v30 + 12), &qword_1003B6510);
        }

        v119 = v30[37];
        v120 = static os_log_type_t.debug.getter();
        a18 = 0;
        a19 = 0xE000000000000000;
        _StringGuts.grow(_:)(52);
        v121 = a19;
        v30[30] = a18;
        v30[31] = v121;
        v122._countAndFlagsBits = 0xD000000000000032;
        v122._object = 0x800000010030AFE0;
        String.append(_:)(v122);
        v30[33] = v119;
        type metadata accessor for PeerConnection();
        _print_unlocked<A, B>(_:_:)();
        v123 = v30[30];
        v124 = v30[31];
        static GKLog.match.getter();
        v125 = Logger.logObject.getter();
        v126 = os_log_type_enabled(v125, v120);
        v127 = v30[44];
        v63 = v30[39];
        a16 = v30[40];
        if (v126)
        {
          a15 = v30[39];
          v128 = sub_100005AE4();
          a14 = v127;
          v129 = sub_100005808();
          a18 = v129;
          *v128 = 136315138;
          v130 = sub_100005C3C(v123, v124, &a18);

          *(v128 + 4) = v130;
          _os_log_impl(&_mh_execute_header, v125, v120, "Nearby - %s", v128, 0xCu);
          sub_100005BE0(v129);
          sub_1000043D8();
          sub_1000043D8();
          v131 = sub_1001F7604();
          sub_1001B9874(v131, v132);

          swift_unknownObjectRelease();
          v66 = a15;
          v65 = a14;
          goto LABEL_11;
        }

        v133 = sub_1001F7604();
        sub_1001B9874(v133, v134);

        swift_unknownObjectRelease();

        v65 = v127;
        goto LABEL_10;
      default:
        v76 = static os_log_type_t.info.getter();
        static GKLog.match.getter();
        v77 = Logger.logObject.getter();
        v78 = os_log_type_enabled(v77, v76);
        v79 = v30[42];
        v80 = v30[39];
        if (v78)
        {
          v135 = v30[42];
          v81 = "Invalid content received. Drop.";
          sub_100005AE4();
          a16 = v80;
          a18 = sub_1001F71D4();
          *v80 = 136315138;
          v82 = 0xD000000000000029;
LABEL_30:
          *(v80 + 4) = sub_100005C3C(v82, v81 | 0x8000000000000000, &a18);
          sub_1001F74A0(&_mh_execute_header, v77, v76, "Nearby - %s");
          sub_1001F7008();
          sub_1000047A4();
          v105 = sub_1001F761C();
          sub_1001B9874(v105, v106);

          v66 = a16;
          v65 = v135;
        }

        else
        {
LABEL_31:
          v107 = sub_1001F761C();
          sub_1001B9874(v107, v108);

          v65 = v79;
          v66 = v80;
        }

        goto LABEL_11;
    }
  }

  else
  {
    static os_log_type_t.info.getter();
    sub_1001F74B8();
    v60 = Logger.logObject.getter();
    v61 = os_log_type_enabled(v60, v53);
    v62 = v30[41];
    v63 = v30[39];
    if (v61)
    {
      sub_1001F71F0();
      a18 = sub_100005B28();
      sub_1001F7560(4.8149e-34);
      *(v49 + 4) = sub_100005C3C(v64 + 13, 0x80000001002C2000, &a18);
      sub_1001F73F0(&_mh_execute_header, v60, v53, "Nearby - %s");
      sub_1000060C0();
      sub_1001E3DC0();
    }

    v65 = v62;
LABEL_10:
    v66 = v63;
LABEL_11:
    v57(v65, v66);
LABEL_12:

    sub_1000046F8();
    sub_1001F7468();

    return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, v135, a18, a19, a20, a21, a22);
  }

  return result;
}

uint64_t sub_1001F4698()
{
  sub_1000057FC();
  v2 = *v1;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 376) = v0;

  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = sub_1001F4944;
  }

  else
  {
    v6 = sub_1001F47B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001F47B8()
{
  sub_1000057FC();
  sub_1001B9874(*(v0 + 272), *(v0 + 280));

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001F484C()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_100004750();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001F4944()
{
  sub_1001AFA50();
  sub_1001B9874(*(v0 + 272), *(v0 + 280));

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001F49E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[111] = v3;
  v4[110] = a3;
  v4[109] = a2;
  v4[108] = a1;
  v5 = type metadata accessor for NWEndpoint();
  v4[112] = v5;
  v4[113] = *(v5 - 8);
  v4[114] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[115] = v6;
  v4[116] = *(v6 - 8);
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();

  return _swift_task_switch(sub_1001F4B30, v3, 0);
}

uint64_t sub_1001F4B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1001F7394();
  a23 = v26;
  a24 = v27;
  sub_1001E4394();
  a22 = v24;
  v28 = *(v24 + 880);
  static os_log_type_t.info.getter();
  sub_1001F7230();
  a11 = 0;
  a12 = v29;
  _StringGuts.grow(_:)(41);
  v30 = a12;
  *(v24 + 824) = a11;
  *(v24 + 832) = v30;
  sub_1001F7310();
  v31._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v31);
  *(v24 + 856) = v28;
  type metadata accessor for PeerConnection();
  _print_unlocked<A, B>(_:_:)();
  v32 = *(v24 + 824);
  static GKLog.match.getter();
  v33 = Logger.logObject.getter();
  v34 = sub_1001F7570(v33);
  v35 = *(v24 + 928);
  if (v34)
  {
    sub_100005AE4();
    a11 = sub_1001F71D4();
    *v25 = 136315138;
    v36 = sub_1001F7224();
    sub_100005C3C(v36, v37, v38);
    sub_1001F74D0();
    *(v25 + 4) = v32;
    sub_1001F70EC(&_mh_execute_header, v39, v40, "Nearby - %s");
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  v41 = *(v35 + 8);
  v42 = sub_100005558();
  v41(v42);
  *(v24 + 968) = v41;
  sub_1001A7B44(0, &qword_1003B6D70);
  sub_1001A6C04(&unk_1003B62A0);
  sub_1001F7388();
  v43 = swift_allocObject();
  v72 = 1;
  *(v43 + 16) = xmmword_1002C33A0;
  v44 = sub_1001A7B44(0, &qword_1003B7DB0);
  *(v43 + 32) = v44;
  sub_1001F7388();
  v45 = swift_allocObject();
  v46 = v45;
  *(v45 + 16) = xmmword_1002C33A0;
  *(v45 + 32) = v44;
  sub_1001F761C();
  v47 = static NSKeyedUnarchiver.unarchivedDictionary(keysOfClasses:objectsOfClasses:from:)();

  if (!v47)
  {
    static os_log_type_t.debug.getter();
    sub_1001F74B8();
    v61 = Logger.logObject.getter();
    if (os_log_type_enabled(v61, v46))
    {
      sub_100005AE4();
      a11 = sub_100005B28();
      *v43 = 136315138;
      *(v43 + 4) = sub_100005C3C(0xD000000000000029, 0x800000010030B050, &a11);
      sub_1001F73F0(&_mh_execute_header, v61, v46, "Nearby - %s");
      sub_1000060C0();
      sub_1001E3DC0();
    }

    v62 = sub_100005540();
    v41(v62);
    goto LABEL_34;
  }

  sub_1001F77C4();
  *(v24 + 760) = v48;
  *(v24 + 768) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(v47, (v24 + 456));
  sub_1001B2E34(v24 + 256);
  if (*(v24 + 480))
  {
    if ((sub_1001F7770() & 1) == 0)
    {
      goto LABEL_33;
    }

    v49 = *(v24 + 744);
    *(v24 + 976) = v49;
    v50 = *(v24 + 752);
    *(v24 + 984) = v50;
    *(v24 + 696) = 101;
    *(v24 + 704) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    sub_1001AFA68(v47, (v24 + 520));
    sub_1001B2E34(v24 + 336);
    if (*(v24 + 544))
    {
      if ((sub_1001F7770() & 1) == 0)
      {
        goto LABEL_32;
      }

      v51 = *(v24 + 680);
      v52 = *(v24 + 688);
      *(v24 + 664) = 104;
      *(v24 + 672) = 0xE100000000000000;
      AnyHashable.init<A>(_:)();
      sub_1001AFA68(v47, (v24 + 584));
      sub_1001B2E34(v24 + 416);
      if (*(v24 + 608))
      {
        if ((sub_1001F7770() & 1) == 0)
        {

LABEL_32:

LABEL_33:

          goto LABEL_34;
        }

        v53 = *(v24 + 840);
        v54 = *(v24 + 848);
        *(v24 + 712) = 28776;
        *(v24 + 720) = 0xE200000000000000;
        AnyHashable.init<A>(_:)();
        sub_1001AFA68(v47, (v24 + 552));
        sub_1001B2E34(v24 + 376);
        if (*(v24 + 576))
        {
          if ((sub_1001F7770() & 1) == 0)
          {
LABEL_31:

            goto LABEL_32;
          }

          v72 = *(v24 + 728);
          v55 = *(v24 + 736);
          *(v24 + 776) = 0x4449726579616C70;
          *(v24 + 784) = 0xE800000000000000;
          AnyHashable.init<A>(_:)();
          sub_1001AFA68(v47, (v24 + 488));

          sub_1001B2E34(v24 + 296);
          if (*(v24 + 512))
          {
            if (sub_1001F7770())
            {
              v56 = *(v24 + 792);
              v57 = *(v24 + 800);
              *(v24 + 176) = v49;
              *(v24 + 184) = v50;
              *(v24 + 192) = v51;
              *(v24 + 200) = v52;
              *(v24 + 208) = v53;
              *(v24 + 216) = v54;
              *(v24 + 224) = v72;
              *(v24 + 232) = v55;
              *(v24 + 240) = v56;
              *(v24 + 248) = v57;
              memcpy((v24 + 16), (v24 + 176), 0x50uLL);

              v58 = swift_task_alloc();
              *(v24 + 992) = v58;
              *v58 = v24;
              v58[1] = sub_1001F52D0;
              sub_1001E41B8();

              return sub_10021AB08();
            }

            goto LABEL_31;
          }

          v63 = v24 + 488;
        }

        else
        {

          v63 = v24 + 552;
        }
      }

      else
      {

        v63 = v24 + 584;
      }
    }

    else
    {

      v63 = v24 + 520;
    }
  }

  else
  {

    v63 = v24 + 456;
  }

  sub_1001F6F1C(v63, &qword_1003B5808);
LABEL_34:

  sub_1000046F8();
  sub_1001E41B8();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, v72, 2, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1001F52D0()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_100004750();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001F53C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_1001E3F50();
  a21 = v23;
  a22 = v24;
  sub_1001D1988();
  a20 = v22;
  v25 = v22[123];
  v26 = v22[122];
  v27 = v22[111];
  v28 = v22[110];
  sub_1001F75EC();

  swift_isUniquelyReferenced_nonNull_native();
  a10 = *(v27 + 176);
  sub_1001B98B0(v28, v26, v25);
  *(v27 + 176) = a10;

  swift_endAccess();
  v29 = *(v28 + 32);
  if (v29)
  {

    v30 = static os_log_type_t.info.getter();
    static GKLog.match.getter();
    v31 = Logger.logObject.getter();
    v32 = os_log_type_enabled(v31, v30);
    v33 = v22[121];
    if (v32)
    {
      v53 = v22[121];
      v34 = sub_100005AE4();
      v35 = sub_100005808();
      a10 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100005C3C(0xD000000000000061, 0x800000010030B0C0, &a10);
      _os_log_impl(&_mh_execute_header, v31, v30, "Nearby - %s", v34, 0xCu);
      sub_100005BE0(v35);
      sub_1000047A4();
      sub_1000043D8();

      v36 = sub_1001F72BC();
      v53(v36);
    }

    else
    {

      v37 = sub_1001F72BC();
      v33(v37);
    }

    NWConnection.endpoint.getter();
    sub_1001F75EC();
    sub_10020B06C();
    swift_endAccess();

    v38 = sub_1001F72BC();
    v39(v38);
  }

  v40 = v22[118];
  static os_log_type_t.info.getter();
  sub_1000044FC();
  _StringGuts.grow(_:)(64);
  v41 = a11;
  v22[101] = a10;
  v22[102] = v41;
  sub_1001F7310();
  v42._countAndFlagsBits = 0xD00000000000003ELL;
  String.append(_:)(v42);
  memcpy(v22 + 12, v22 + 2, 0x50uLL);
  _print_unlocked<A, B>(_:_:)();
  sub_1001F6C90((v22 + 22));
  v43 = v22[101];
  static GKLog.match.getter();
  v44 = Logger.logObject.getter();
  v45 = sub_1001F7758(v44);
  v46 = v22[121];
  if (v45)
  {
    sub_100005AE4();
    sub_1001F71D4();
    sub_1001F7358();
    sub_1001F710C(4.8149e-34, v47);
    sub_1001F74D0();
    *(v46 + 4) = v43;
    sub_1001F74A0(&_mh_execute_header, v40, v29, "Nearby - %s");
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  v48 = sub_1001F72F8();
  (v46)(v48);
  v49 = swift_task_alloc();
  v22[125] = v49;
  *v49 = v22;
  v49[1] = sub_1001F575C;
  sub_1001D1934(v22[110]);
  sub_100005B0C();

  return sub_1001F5EB0(v50);
}

uint64_t sub_1001F575C()
{
  sub_1001AFA50();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1001F58E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  v5 = type metadata accessor for Logger();
  v4[46] = v5;
  v4[47] = *(v5 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();

  return _swift_task_switch(sub_1001F59BC, v3, 0);
}

uint64_t sub_1001F59BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1001F77D8();
  a25 = v30;
  a26 = v31;
  a24 = v27;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v34 = *(v27 + 352);
    memcpy((v27 + 96), (v34 + 40), 0x50uLL);
    v35 = *(v27 + 104);
    if (v35)
    {
      a13 = v33;
      v36 = *(v27 + 96);
      v37 = *(v27 + 160);
      v38 = *(v27 + 168);
      a10 = *(v27 + 336);
      a11 = *(v27 + 344);
      *(v27 + 16) = v36;
      *(v27 + 24) = v35;
      v39 = *(v34 + 88);
      v40 = *(v34 + 72);
      *(v27 + 32) = *(v34 + 56);
      *(v27 + 48) = v40;
      *(v27 + 64) = v39;
      *(v27 + 80) = v37;
      *(v27 + 88) = v38;
      memcpy((v27 + 176), (v34 + 40), 0x50uLL);
      sub_1001F6CC0(v27 + 176, v27 + 256);
      v41 = static os_log_type_t.info.getter();
      sub_1001F7588();
      _StringGuts.grow(_:)(88);
      v42._countAndFlagsBits = 0xD000000000000023;
      v42._object = 0x800000010030B250;
      String.append(_:)(v42);

      v43._countAndFlagsBits = sub_1001F77B8();
      String.append(_:)(v43);

      v44._countAndFlagsBits = sub_1001F70B4();
      v44._object = (v45 & 0xFFFF0000FFFFLL | 0xEC000000203A0000);
      String.append(_:)(v44);

      a12 = v36;
      v46._countAndFlagsBits = sub_100005540();
      String.append(_:)(v46);

      sub_1001F7310();
      v47._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v47);
      v48._countAndFlagsBits = sub_10021A9D8();
      String.append(_:)(v48);

      v49._countAndFlagsBits = 0x742068737550202ELL;
      v49._object = 0xEE00203A6E656B6FLL;
      String.append(_:)(v49);
      v50._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v50);

      v51 = a14;
      v52 = a15;
      static GKLog.match.getter();
      v53 = Logger.logObject.getter();
      LODWORD(a11) = v41;
      v54 = os_log_type_enabled(v53, v41);
      v55 = *(v27 + 400);
      v57 = *(v27 + 368);
      v56 = *(v27 + 376);
      if (v54)
      {
        sub_100005AE4();
        a10 = v37;
        a9 = v55;
        v58 = sub_100005B28();
        a14 = v58;
        *v37 = 136315138;
        v59 = sub_100005C3C(v51, v52, &a14);

        *(v37 + 4) = v59;
        sub_1001F73F0(&_mh_execute_header, v53, a11, "Nearby - %s");
        sub_100005BE0(v58);
        sub_1000043D8();
        sub_1000043D8();

        (*(v56 + 8))(a9, v57);
      }

      else
      {

        (*(v56 + 8))(v55, v57);
      }

      v67 = *(v27 + 336);
      v66 = *(v27 + 344);
      sub_1001F77B8();
      v68 = String._bridgeToObjectiveC()();
      v69 = String._bridgeToObjectiveC()();
      sub_1001EBAE4(v67, v66);
      sub_1001F6F1C(v27 + 96, &qword_1003B6510);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [a13 playerFound:v68 deviceID:v69 discoveryInfo:isa];

      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    v63 = static os_log_type_t.debug.getter();
    static GKLog.match.getter();
    v64 = Logger.logObject.getter();
    if (os_log_type_enabled(v64, v63))
    {
      v65 = sub_1001F71F0();
      a14 = sub_100005808();
      *v65 = 136315138;
      *(v65 + 4) = sub_100005C3C(0xD000000000000037, v29 | 0x8000000000000000, &a14);
      _os_log_impl(&_mh_execute_header, v64, v63, "Nearby - %s", v65, 0xCu);
      sub_1000060C0();
      sub_1000043D8();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    static os_log_type_t.debug.getter();
    sub_1001F74B8();
    v60 = Logger.logObject.getter();
    if (sub_1001F7528(v60))
    {
      sub_1001F71F0();
      a14 = sub_100005B28();
      *v28 = 136315138;
      *(v28 + 4) = sub_100005C3C(0xD00000000000002ELL, v29 | 0x8000000000000000, &a14);
      sub_1001F70CC(&_mh_execute_header, v61, v62, "Nearby - %s");
      sub_1000060C0();
      sub_1001E3DC0();
    }
  }

  v71 = sub_1001F706C();
  v72(v71);
LABEL_14:

  sub_1000046F8();
  sub_1001F7484();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1001F5EB0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for Logger();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001F5F88, v1, 0);
}

uint64_t sub_1001F5F88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Swift::String a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23)
{
  sub_1001F7394();
  a22 = v27;
  a23 = v28;
  sub_1001E4394();
  a21 = v24;
  v29 = v24[12];
  if (*(v29 + 32))
  {
    memcpy(v24 + 2, (v29 + 40), 0x50uLL);
    v25 = v24[3];
    if (v25)
    {
      v30 = v24[11];
      v67 = v24[2];
      type metadata accessor for NWProtocolFramer.Message();

      v24[19] = sub_1001FC3F0();
      sub_1001A6C04(&qword_1003B6BB0);
      sub_1001F7388();
      v31 = swift_allocObject();
      sub_1001F773C(v31, xmmword_1002C3960);
      swift_allocObject();

      sub_1001F72C8();
      v24[20] = NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
      v32 = static os_log_type_t.info.getter();
      sub_100006A28();
      _StringGuts.grow(_:)(70);
      v33._countAndFlagsBits = 0xD000000000000022;
      v33._object = 0x800000010030B1B0;
      String.append(_:)(v33);

      v34._countAndFlagsBits = sub_1001F77AC();
      String.append(_:)(v34);

      v35._countAndFlagsBits = sub_1001F70B4();
      v35._object = (v36 & 0xFFFF0000FFFFLL | 0xEC000000203A0000);
      String.append(_:)(v35);

      v37._countAndFlagsBits = v67;
      v37._object = v25;
      String.append(_:)(v37);
      sub_1001F6F1C((v24 + 2), &qword_1003B6510);

      sub_1001F7310();
      v38._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v38);
      v39._countAndFlagsBits = sub_10021A9D8();
      String.append(_:)(v39);

      v40 = a12;
      static GKLog.match.getter();
      v41 = Logger.logObject.getter();
      if (os_log_type_enabled(v41, v32))
      {
        sub_100005AE4();
        a11 = sub_1001F7278();
        v42 = sub_1000063C0(4.8149e-34);
        v44 = sub_100005C3C(v42, v40, v43);

        *(v30 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v41, v32, "Nearby - %s", v30, 0xCu);
        sub_1000058BC();
        sub_1001F719C();
      }

      else
      {
      }

      v63 = sub_100005558();
      v64(v63);
      v65 = swift_task_alloc();
      v24[21] = v65;
      *v65 = v24;
      v65[1] = sub_1001F63E8;
      sub_1001E41B8();

      return sub_10021A03C();
    }

    static os_log_type_t.debug.getter();
    sub_1001F74B8();
    v48 = Logger.logObject.getter();
    if (sub_1001F7528(v48))
    {
      sub_1001F71F0();
      a11 = sub_100005B28();
      sub_1001F7560(4.8149e-34);
      v47 = v49 + 35;
      goto LABEL_9;
    }
  }

  else
  {
    static os_log_type_t.debug.getter();
    sub_1001F74B8();
    v45 = Logger.logObject.getter();
    if (sub_1001F7528(v45))
    {
      sub_1001F71F0();
      a11 = sub_100005B28();
      sub_1001F7560(4.8149e-34);
      v47 = v46 + 30;
LABEL_9:
      *(v25 + 4) = sub_100005C3C(v47, v26 | 0x8000000000000000, &a11);
      sub_1001F70CC(&_mh_execute_header, v50, v51, "Nearby - %s");
      sub_1000060C0();
      sub_1001E3DC0();
    }
  }

  v52 = sub_1001F706C();
  v53(v52);

  sub_1000046F8();
  sub_1001E41B8();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10._countAndFlagsBits, a10._object, a11, a12, a13, a14, a15);
}

uint64_t sub_1001F63E8()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_100004750();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001F64E0()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001F6560(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, a2, sizeof(__dst));
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &__dst[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 24) = &off_10036BE00;
  swift_unknownObjectWeakAssign();
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for NWParameters();
  sub_100245048();
  type metadata accessor for NWConnection();
  swift_allocObject();
  v10 = NWConnection.init(to:using:)();

  (*(v7 + 8))(a1, v6);
  *(a4 + 32) = v10;

  memcpy(v13, (a4 + 40), sizeof(v13));
  memcpy((a4 + 40), __dst, 0x50uLL);
  sub_1001F6F1C(v13, &qword_1003B6510);
  return a4;
}

uint64_t sub_1001F672C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 24) = &off_10036BDE8;
  *(a2 + 32) = 0;
  swift_unknownObjectWeakAssign();

  return a2;
}

uint64_t sub_1001F6784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B64D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F6820(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001F6860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F68C4()
{
  sub_1001AFA50();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_100005540();

  return v4(v3);
}

uint64_t sub_1001F6980()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v3 = sub_1001F71B8(v1);

  return v4(v3);
}

uint64_t sub_1001F6A10()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_100005540();

  return v4(v3);
}

uint64_t sub_1001F6AB8()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v3 = sub_1001F71B8(v1);

  return v4(v3);
}

uint64_t sub_1001F6B48()
{
  _Block_release(*(v0 + 16));

  v1 = sub_1001F7598();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1001F6B80()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v3 = sub_1001F71B8(v1);

  return v4(v3);
}

uint64_t sub_1001F6C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 24) = &off_10036BE00;
  swift_unknownObjectWeakAssign();

  *(a3 + 32) = a1;

  return a3;
}

uint64_t sub_1001F6CF8()
{
  sub_1001AFA50();
  v2 = v1;
  v3 = *(type metadata accessor for NWBrowser.Result() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_1001E3D24(v8);
  *v9 = v10;
  v9[1] = sub_1001AF9F8;

  return sub_1001F1820(v2, v5, v6, v7, v0 + v4);
}

uint64_t sub_1001F6DE8()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF328;

  return sub_100214E00();
}

uint64_t sub_1001F6EB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1001A6C04(a3);
  v4 = sub_1001B6ACC();
  v5(v4);
  return a2;
}

uint64_t sub_1001F6F1C(uint64_t a1, uint64_t *a2)
{
  sub_1001A6C04(a2);
  sub_1000047C0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001F6F70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001F7008()
{
  sub_100005BE0(v0);
}

void sub_1001F70CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1001F70EC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_1001F710C(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_100005C3C(v3, v2, va);
}

uint64_t sub_1001F714C()
{
  *(v1 + 256) = *(v2 + 8);
  *(v1 + 264) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_1001F719C()
{
}

uint64_t sub_1001F71D4()
{

  return swift_slowAlloc();
}

uint64_t sub_1001F71F0()
{

  return swift_slowAlloc();
}

uint64_t sub_1001F723C@<X0>(uint64_t a1@<X8>)
{
  v2[30] = v1;
  v2[31] = a1;
  return v2[22];
}

uint64_t sub_1001F7278()
{

  return swift_slowAlloc();
}

uint64_t sub_1001F7294()
{
}

uint64_t sub_1001F7364()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1001F73B0()
{
}

void sub_1001F73F0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1001F7408()
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

void sub_1001F7428(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void sub_1001F7448(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void sub_1001F74A0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1001F74B8()
{

  return static GKLog.match.getter();
}

uint64_t sub_1001F74D0()
{
}

uint64_t sub_1001F7510()
{

  return swift_task_alloc();
}

BOOL sub_1001F7528(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

BOOL sub_1001F7570(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t sub_1001F75D4()
{

  return static GKLog.match.getter();
}

uint64_t sub_1001F75EC()
{

  return swift_beginAccess();
}

uint64_t sub_1001F7658()
{
}

void sub_1001F7670(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_1001F7688()
{

  return swift_beginAccess();
}

void sub_1001F76A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v17 = v14;
  v18 = v15;

  String.append(_:)(*&v17);
}

uint64_t sub_1001F76BC()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_1001F76D8()
{

  return static os_log_type_t.info.getter();
}

uint64_t sub_1001F76F4()
{

  return swift_getErrorValue();
}

uint64_t sub_1001F7718()
{
}

uint64_t sub_1001F773C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return type metadata accessor for NWConnection.ContentContext(0);
}

BOOL sub_1001F7758(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t sub_1001F7770()
{

  return swift_dynamicCast();
}

uint64_t sub_1001F7848()
{

  return type metadata accessor for PeerListener();
}

uint64_t sub_1001F7868(uint64_t a1)
{
  *(a1 + 24) = 0;

  return swift_unknownObjectWeakInit();
}

void sub_1001F7890(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v47 = a2;
  v49 = a1;
  v4 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v4 - 8);
  v46 = &v45 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v45 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - v15;
  __chkstk_darwin(v14);
  v18 = &v45 - v17;
  v48 = swift_allocObject();
  *(v48 + 16) = a3;
  _Block_copy(a3);
  _Block_copy(a3);
  static GKLog.daemon.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "FriendBulletin loadBulletinsForPushNotification:", v21, 2u);
  }

  v22 = *(v7 + 8);
  v22(v18, v6);
  v50 = 99;
  v51 = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  v23 = v49;
  sub_1001AFA68(v49, &v53);
  sub_1001B2E34(v52);
  if (!v54)
  {
    sub_1001A974C(&v53, &qword_1003B5808);
LABEL_16:
    static GKLog.daemon.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "FriendBulletin loadBulletinsForPushNotification: failed to get category", v35, 2u);
    }

    v22(v10, v6);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0 || v50 != 52)
  {
    goto LABEL_16;
  }

  v50 = 116;
  v51 = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(v23, &v53);
  sub_1001B2E34(v52);
  if (!v54)
  {
    sub_1001A974C(&v53, &qword_1003B5808);
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    static GKLog.daemon.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "FriendBulletin loadBulletinsForPushNotification: failed to get type, attempting to parse using the old protocol", v39, 2u);
      v23 = v49;
    }

    v22(v13, v6);
    _Block_copy(a3);
    sub_1001F9620(v23, v47, a3);
    goto LABEL_25;
  }

  v25 = v50;
  v24 = v51;
  v26 = v50 == 0x64657469766E69 && v51 == 0xE700000000000000;
  if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v27 = 1;
    v28 = 2;
LABEL_14:
    v29 = [objc_opt_self() controller];
    [v29 reportFriendInviteActivityEventAtStage:v28 hostApp:0];

    v30 = type metadata accessor for TaskPriority();
    sub_1001A9674(v46, 1, 1, v30);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = v47;
    *(v31 + 40) = v49;
    *(v31 + 48) = v27;
    v32 = v48;
    *(v31 + 56) = sub_1001FBD0C;
    *(v31 + 64) = v32;

    sub_1001D1C0C();

LABEL_25:

    goto LABEL_20;
  }

  if (v25 == 0x6465747065636361 && v24 == 0xE800000000000000)
  {

    goto LABEL_35;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
LABEL_35:
    v27 = 0;
    v28 = 8;
    goto LABEL_14;
  }

  static GKLog.daemon.getter();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "FriendBulletin loadBulletinsForPushNotification: unknown type", v44, 2u);
  }

  v22(v16, v6);
LABEL_19:
  isa = Array._bridgeToObjectiveC()().super.isa;
  (a3)[2](a3, isa);

LABEL_20:
  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_1001F7F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v9 = type metadata accessor for Logger();
  v8[4] = v9;
  v8[5] = *(v9 - 8);
  v8[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[7] = v10;
  *v10 = v8;
  v10[1] = sub_1001F808C;

  return sub_1001F84D8();
}

uint64_t sub_1001F808C()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;

  if (v0)
  {
    v5 = sub_1001F8258;
  }

  else
  {
    v5 = sub_1001F8194;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001F8194()
{
  sub_1000057FC();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  sub_1001A6C04(&qword_1003B5B60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002C33A0;
  *(v3 + 56) = type metadata accessor for FriendBulletin();
  *(v3 + 32) = v1;
  v4 = v1;
  v2(v3);

  sub_1000046F8();

  return v5();
}

uint64_t sub_1001F8258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  v11 = v10[8];
  sub_1001FBCA0();
  swift_allocError();
  *v12 = v11;
  swift_errorRetain();
  static GKLog.daemon.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_100005AE4();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "FriendBulletin Unable to parse bulletin, bailing. Reason: %@", v15, 0xCu);
    sub_1001A974C(v16, &unk_1003B6180);
    sub_1000043D8();
    sub_1001FC090();
  }

  v19 = v10[5];
  v18 = v10[6];
  v20 = v10[4];
  v21 = v10[2];

  (*(v19 + 8))(v18, v20);
  v21(_swiftEmptyArrayStorage);

  sub_1000046F8();
  sub_1001D185C();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

Swift::Int sub_1001F8494()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001F84D8()
{
  sub_100005528();
  *(v0 + 974) = v1;
  *(v0 + 816) = v2;
  v3 = type metadata accessor for URL();
  *(v0 + 824) = v3;
  *(v0 + 832) = *(v3 - 8);
  *(v0 + 840) = swift_task_alloc();
  *(v0 + 848) = swift_task_alloc();
  sub_1001A6C04(&qword_1003B5800);
  *(v0 + 856) = swift_task_alloc();
  *(v0 + 864) = swift_task_alloc();
  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001F85E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_100223A5C(*(v10 + 816), (v10 + 280));
  memcpy((v10 + 80), (v10 + 280), 0xC8uLL);
  if (sub_1001FBC7C(v10 + 80) == 1)
  {
    *(v10 + 968) = 0;
    sub_1001FBCA0();
    swift_willThrowTypedImpl();
    goto LABEL_16;
  }

  v11 = *(v10 + 128);
  *(v10 + 576) = *(v10 + 112);
  *(v10 + 592) = v11;
  v12 = *(v10 + 96);
  *(v10 + 544) = *(v10 + 80);
  *(v10 + 560) = v12;
  v13 = *(v10 + 544);
  *(v10 + 872) = v13;
  v14 = *(v10 + 552);
  *(v10 + 880) = v14;
  if (!v14)
  {
    sub_1001A974C(v10 + 280, &qword_1003B6578);
    *(v10 + 969) = 1;
    sub_1001FBCA0();
LABEL_15:
    swift_willThrowTypedImpl();
    goto LABEL_16;
  }

  v15 = *(v10 + 560);
  v16 = *(v10 + 568);
  v17 = *(v10 + 816);
  v18 = *(v10 + 128);
  *(v10 + 512) = *(v10 + 112);
  *(v10 + 528) = v18;
  *(v10 + 480) = v13;
  *(v10 + 488) = v14;
  *(v10 + 496) = v15;
  *(v10 + 504) = v16;
  type metadata accessor for FriendBulletin();

  sub_1001A96E4(v10 + 544, v10 + 608, &qword_1003B6580);
  v19 = sub_1001F9520(v17);
  *(v10 + 888) = v19;
  if (!v19)
  {
    sub_1001A974C(v10 + 544, &qword_1003B6580);
    sub_1001A974C(v10 + 280, &qword_1003B6578);
    *(v10 + 970) = 2;
    sub_1001FBCA0();
    goto LABEL_15;
  }

  v20 = v19;
  v21 = [objc_opt_self() shared];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 inboxContactsOnly];

    if (!v23)
    {
      v42 = sub_1001FC0E0();
      *(v10 + 920) = v42;
      *v42 = v10;
      sub_1000047D4(v42);
      sub_1001D185C();

      return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
    }

    v24 = [objc_opt_self() gameCenterClient];
    *(v10 + 896) = v24;
    if (v24)
    {
      v25 = v24;
      sub_1001A7B44(0, &qword_1003B5FB0);
      v26 = v25;
      sub_1001FC0AC();
      v27 = sub_1001D132C();
      *(v10 + 904) = v27;
      if (v27)
      {
        v28 = v27;
        if (v16)
        {
          sub_1001A6C04(&qword_1003B5B98);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002C33A0;
          *(inited + 32) = v15;
          *(inited + 40) = v16;

          sub_10024A08C(inited);
          isa = Set._bridgeToObjectiveC()().super.isa;
          *(v10 + 912) = isa;

          *(v10 + 16) = v10;
          *(v10 + 56) = v10 + 808;
          *(v10 + 24) = sub_1001F8AF8;
          v31 = swift_continuation_init();
          *(v10 + 728) = sub_1001A6C04(&qword_1003B6588);
          *(v10 + 704) = v31;
          *(v10 + 672) = _NSConcreteStackBlock;
          *(v10 + 680) = 1107296256;
          *(v10 + 688) = sub_1001F95A4;
          *(v10 + 696) = &unk_10036C030;
          [v28 getContactsForContactAssociationIDs:isa completionHandler:v10 + 672];
          sub_1001D185C();

          return _swift_continuation_await(v21);
        }

        sub_1001A974C(v10 + 544, &qword_1003B6580);
        sub_1001A974C(v10 + 280, &qword_1003B6578);
      }

      else
      {
        sub_1001A974C(v10 + 544, &qword_1003B6580);
        sub_1001A974C(v10 + 280, &qword_1003B6578);
      }
    }

    else
    {
      sub_1001A974C(v10 + 544, &qword_1003B6580);
      sub_1001A974C(v10 + 280, &qword_1003B6578);
    }

    *(v10 + 972) = 4;
    sub_1001FBCA0();
    swift_willThrowTypedImpl();

LABEL_16:

    sub_1001D17DC();
    sub_1001D185C();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }

  __break(1u);
  return _swift_continuation_await(v21);
}

uint64_t sub_1001F8AF8()
{
  sub_100005528();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  return _swift_task_switch(sub_1001F8BCC, 0, 0);
}

uint64_t sub_1001F8BCC()
{
  sub_1000057FC();
  v1 = *(v0 + 808);

  v2 = *(v1 + 16);

  if (v2 == 1)
  {
    v3 = *(v0 + 904);

    v4 = sub_1001FC0E0();
    *(v0 + 920) = v4;
    *v4 = v0;
    v5 = sub_1000047D4(v4);
  }

  else
  {
    v7 = *(v0 + 904);
    v8 = *(v0 + 896);
    v9 = *(v0 + 888);
    sub_1001A974C(v0 + 544, &qword_1003B6580);
    sub_1001A974C(v0 + 280, &qword_1003B6578);
    *(v0 + 973) = 5;
    sub_1001FBCA0();
    swift_willThrowTypedImpl();

    sub_1001FC100();

    sub_1001D17DC();
    v5 = 5;
  }

  return v6(v5);
}

uint64_t sub_1001F8D44()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 928) = v3;
  *(v1 + 936) = v4;

  v5 = sub_10000448C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001F8E34()
{
  sub_1000057FC();
  if (*(v0 + 936))
  {
    v1 = sub_1001FC0E0();
    *(v0 + 944) = v1;
    *v1 = v0;
    v2 = sub_1000047D4(v1);
  }

  else
  {
    sub_1001A974C(v0 + 544, &qword_1003B6580);
    sub_1001A974C(v0 + 280, &qword_1003B6578);
    v4 = *(v0 + 888);
    *(v0 + 971) = 3;
    sub_1001FBCA0();
    swift_willThrowTypedImpl();

    sub_1001FC100();

    sub_1001D17DC();
    v2 = 3;
  }

  return v3(v2);
}

uint64_t sub_1001F8F74()
{
  sub_100005528();
  sub_1000057F0();
  v2 = v1;
  sub_100006028();
  *v3 = v2;
  v2[98] = v0;
  v2[99] = v4;
  v2[100] = v5;
  v6 = *v0;
  sub_100004410();
  *v7 = v6;
  v2[119] = v8;

  sub_1001A974C((v2 + 35), &qword_1003B6578);
  v9 = sub_10000448C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001F907C()
{
  v1 = *(v0 + 952);
  if (v1)
  {
    v2 = *(v0 + 792);
    v3 = *(v0 + 936);
    v4 = *(v0 + 928);
    v5 = *(v0 + 974);
    v6 = *(v0 + 888);
    sub_100286CE8(v4, v3, v6);
    sub_100286CF4(v2, v1, v6);
    if (v5)
    {
      sub_1001F9F10();
    }

    else
    {
      sub_1001FA2F4();
    }

    v10 = swift_task_alloc();
    *(v0 + 960) = v10;
    *v10 = v0;
    v10[1] = sub_1001F9228;

    return sub_100224A38();
  }

  else
  {
    sub_1001A974C(v0 + 544, &qword_1003B6580);

    v7 = *(v0 + 888);
    *(v0 + 971) = 3;
    sub_1001FBCA0();
    swift_willThrowTypedImpl();

    sub_1001FC100();

    sub_1001D17DC();

    return v8(3);
  }
}

uint64_t sub_1001F9228()
{
  sub_100005528();
  sub_1000057F0();
  v2 = v1;
  sub_100006028();
  *v3 = v2;
  v4 = *v0;
  sub_100004410();
  *v5 = v4;

  sub_1001A974C(v2 + 544, &qword_1003B6580);
  v6 = sub_10000448C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001F9320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  v11 = v10 + 108;
  v12 = v10[107];
  v13 = v10[103];
  sub_1001A96E4(v10[108], v12, &qword_1003B5800);
  v14 = sub_1001A969C(v12, 1, v13);
  v15 = v10[111];
  if (v14 == 1)
  {
    v16 = *v11;

    sub_1001A974C(v16, &qword_1003B5800);
    v11 = v10 + 107;
  }

  else
  {
    v17 = v10[106];
    v18 = v10[105];
    v19 = v10[104];
    v20 = v10[103];
    (*(v19 + 32))(v17, v10[107], v20);
    sub_1001A6C04(&qword_1003B6BB0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002C3960;
    (*(v19 + 16))(v18, v17, v20);
    v22 = objc_allocWithZone(type metadata accessor for BulletinAttachment());
    *(v21 + 32) = sub_100245618(0x656D686361747461, 0xEC000000315F746ELL, v18, 1);
    sub_100231AB8(v21, v15);

    (*(v19 + 8))(v17, v20);
  }

  sub_1001A974C(*v11, &qword_1003B5800);

  sub_1001D17DC();
  sub_1001D185C();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

id sub_1001F9520(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPushNotification:v2.super.isa];

  return v3;
}

uint64_t sub_1001F95A4(uint64_t a1)
{
  v1 = *sub_100006454((a1 + 32), *(a1 + 56));
  sub_1001A7B44(0, &qword_1003B5B78);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_1001D1358(v1, v2);
}

void sub_1001F9620(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  type metadata accessor for FriendBulletin();
  _Block_copy(a3);

  v17 = sub_1001F9520(v16);
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = v17;
  v35 = 0x656C746974;
  v36 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(a1, &v38);
  sub_1001B2E34(v37);
  if (!v39)
  {

    sub_1001A974C(&v38, &qword_1003B5808);
LABEL_11:
    static GKLog.daemon.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "FriendBulletin loadBulletinsForPushNotification: failed to create bulletin", v25, 2u);
    }

    (*(v6 + 8))(v9, v5);
    v26.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (a3)[2](a3, v26.super.isa);

    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v19 = v35;
  v20 = v36;
  v35 = 26991;
  v36 = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(a1, &v38);
  sub_1001B2E34(v37);
  if (v39)
  {
    if (swift_dynamicCast())
    {
      v21 = v18;
      sub_100286CE8(v19, v20, v21);
      v35 = 2036625250;
      v36 = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      sub_1001AFA68(a1, &v38);
      sub_1001B2E34(v37);
      if (v39)
      {
        if (swift_dynamicCast())
        {
          v22 = String._bridgeToObjectiveC()();

          goto LABEL_23;
        }
      }

      else
      {
        sub_1001A974C(&v38, &qword_1003B5808);
      }

      v22 = 0;
LABEL_23:
      [v21 setMessage:v22];

      sub_1001F9F10();

      v35 = 0x656D686361747461;
      v36 = 0xEB0000000073746ELL;
      AnyHashable.init<A>(_:)();
      sub_1001AFA68(a1, &v38);
      sub_1001B2E34(v37);
      if (v39)
      {
        sub_1001A6C04(&qword_1003B61B0);
        if (swift_dynamicCast())
        {
          v30 = v35;
LABEL_28:
          v31 = type metadata accessor for TaskPriority();
          sub_1001A9674(v14, 1, 1, v31);
          v32 = swift_allocObject();
          v32[2] = 0;
          v32[3] = 0;
          v32[4] = v21;
          v32[5] = v30;
          v32[6] = sub_1001FC050;
          v32[7] = v15;
          v33 = v21;

          sub_1001D1C0C();

          goto LABEL_15;
        }
      }

      else
      {
        sub_1001A974C(&v38, &qword_1003B5808);
      }

      v30 = _swiftEmptyArrayStorage;
      goto LABEL_28;
    }
  }

  else
  {

    sub_1001A974C(&v38, &qword_1003B5808);
  }

  static GKLog.daemon.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "FriendBulletin loadBulletinsForPushNotification: failed to get player id", v29, 2u);
  }

  (*(v6 + 8))(v11, v5);
  v26.super.isa = Array._bridgeToObjectiveC()().super.isa;
  (a3)[2](a3, v26.super.isa);

LABEL_14:
LABEL_15:
  _Block_release(a3);
}

uint64_t sub_1001F9CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_1001F9D64;

  return sub_100225064();
}

uint64_t sub_1001F9D64()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001F9E50()
{
  sub_1000057FC();
  v1 = v0[3];
  v2 = v0[2];
  sub_100231AB8(v0[6], v2);
  sub_1001A6C04(&qword_1003B5B60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002C33A0;
  *(v3 + 56) = type metadata accessor for FriendBulletin();
  *(v3 + 32) = v2;
  v4 = v2;
  v1(v3);

  sub_1000046F8();

  return v5();
}

void sub_1001F9F10()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001FBB78(v1, v2, v0);
  sub_1001FB87C();
  sub_1001D1B80();
  sub_1001FA110();
  v3 = [objc_allocWithZone(GKBulletinAction) init];
  sub_1001FC18C(v3);
  v4 = String._bridgeToObjectiveC()();
  [v3 setInfo:v4];

  [v0 setDefaultAction:v3];
  v5 = [objc_allocWithZone(GKBulletinAction) init];
  sub_1001FC18C(v5);
  v6 = String._bridgeToObjectiveC()();
  [v5 setInfo:v6];

  v7 = sub_1001D1B80();
  sub_1001FBBDC(v7, v8, v5);
  [v0 setAcceptAction:v5];
  v9 = [objc_allocWithZone(GKBulletinAction) init];
  sub_1001FC18C(v9);
  v10 = String._bridgeToObjectiveC()();
  [v9 setInfo:v10];

  v11 = sub_1001D1B80();
  sub_1001FBBDC(v11, v12, v9);
  [v0 setDeclineAction:v9];
  v13 = [objc_allocWithZone(GKBulletinAction) init];
  sub_1001FC18C(v13);
  v14 = String._bridgeToObjectiveC()();
  sub_1001FBC4C(&v17);
  [v13 setInfo:v14];

  v15 = sub_1001D1B80();
  sub_1001FBBDC(v15, v16, v13);
  [v0 setViewAction:v13];
}

void sub_1001FA110()
{
  sub_10000469C();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for CharacterSet();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043B4();
  v10 = v9 - v8;
  static CharacterSet.alphanumerics.getter();
  sub_1001B6954();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v12 = v11;
  (*(v6 + 8))(v10, v4);
  if (v12)
  {
    if (v1)
    {
      v13._countAndFlagsBits = sub_1001FC120();
      String.append(_:)(v13);
      v14 = 0xD00000000000001FLL;
      v15 = 0x800000010030B700;
      v16._countAndFlagsBits = sub_1001FC120();
      String.append(_:)(v16);

      v17 = 0xD00000000000001FLL;
      v18 = 0x800000010030B700;
      v19 = 0x800000010030B720;
      v20 = 0xD000000000000025;
    }

    else
    {
      v20 = 0xD000000000000043;
      v21._countAndFlagsBits = sub_1001FC120();
      String.append(_:)(v21);
      v14 = 0xD000000000000043;
      v15 = 0x800000010030B610;
      v19 = 0x800000010030B660;
      v22._countAndFlagsBits = sub_1001FC120();
      String.append(_:)(v22);

      v17 = 0xD000000000000047;
      v18 = 0x800000010030B6B0;
    }
  }

  else
  {
    v14 = 0;
    v17 = 0;
    v20 = 0;
    v15 = 0xE000000000000000;
    v18 = 0xE000000000000000;
    v19 = 0xE000000000000000;
  }

  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v3[2] = 0;
  v3[3] = 0xE000000000000000;
  v3[4] = v14;
  v3[5] = v15;
  v3[6] = v17;
  v3[7] = v18;
  v3[8] = v20;
  v3[9] = v19;
  sub_1000057D8();
}

void sub_1001FA2F4()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001FBB78(v1, v2, v0);
  sub_1001FB87C();
  sub_1001D1B80();
  sub_1001FA110();
  v3 = [objc_allocWithZone(GKBulletinAction) init];
  [v3 setType:0];
  v4 = String._bridgeToObjectiveC()();
  sub_1001FBC4C(&v7);
  [v3 setInfo:v4];

  v5 = sub_1001D1B80();
  sub_1001FBBDC(v5, v6, v3);
  [v0 setDefaultAction:v3];
}

void sub_1001FA3D8()
{
  sub_10000469C();
  v2 = v1;
  type metadata accessor for Logger();
  sub_1001FC054();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000043F0();
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  static GKLog.trace.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100005B50();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FriendBulletin handleAction:", v11, 2u);
    sub_1000043D8();
  }

  v12 = *(v4 + 8);
  v12(v8, v0);
  v13 = String._bridgeToObjectiveC()();
  v14 = type metadata accessor for FriendBulletin();
  v38.receiver = v2;
  v38.super_class = v14;
  objc_msgSendSuper2(&v38, "handleAction:", v13);

  v15 = sub_1001AC844(v2, &selRef_categoryIdentifier);
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v17)
  {
    if (v18 == v15 && v17 == v19)
    {

LABEL_19:

      sub_1001FA79C();
LABEL_28:
      sub_1000057D8();
      return;
    }

    v36 = v12;
    v21 = sub_1001FC16C();

    if (v21)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v36 = v12;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v17)
  {
    if (v22 == v15 && v17 == v23)
    {

LABEL_25:
      sub_1001FB298();
      goto LABEL_28;
    }

    v25 = sub_1001FC16C();

    if (v25)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  static GKLog.daemon.getter();
  v26 = v2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v27, v28))
  {

    goto LABEL_27;
  }

  v29 = sub_100005AE4();
  v30 = sub_100005808();
  v37 = v30;
  *v29 = 136315138;
  v31 = sub_1001AC844(v26, &selRef_categoryIdentifier);
  v33 = v32;

  if (v33)
  {
    v34 = sub_100005C3C(v31, v33, &v37);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "FriendBulleting handleAction invalid categoryIdentifier %s", v29, 0xCu);
    sub_100005BE0(v30);
    sub_1001E3EA0();
    sub_1000043D8();

LABEL_27:
    v35 = sub_1001D1B80();
    v36(v35);
    goto LABEL_28;
  }

  __break(1u);
}

void sub_1001FA79C()
{
  sub_10000469C();
  v4 = v3;
  v6 = v5;
  type metadata accessor for Logger();
  sub_1001FC054();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000043F0();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = v41 - v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001FC160();
  v17 = v17 && v16 == v4;
  if (v17)
  {
    v18 = &selRef_defaultAction;
LABEL_8:

    goto LABEL_9;
  }

  sub_1000060F4();
  sub_1001F7658();
  if (v2)
  {
    v18 = &selRef_defaultAction;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001FC160();
  if (v17 && v24 == v4)
  {
    v18 = &selRef_acceptAction;
    goto LABEL_8;
  }

  sub_1000060F4();
  sub_1001F7658();
  if (v2)
  {
    v18 = &selRef_acceptAction;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001FC160();
  if (v17 && v30 == v4)
  {
    v18 = &selRef_declineAction;
    goto LABEL_8;
  }

  sub_1000060F4();
  sub_1001F7658();
  if (v2)
  {
    v18 = &selRef_declineAction;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001FC160();
  if (v17 && v32 == v4)
  {
    v18 = &selRef_viewAction;
    goto LABEL_8;
  }

  sub_1000060F4();
  sub_1001F7658();
  if ((v2 & 1) == 0)
  {
    goto LABEL_38;
  }

  v18 = &selRef_viewAction;
LABEL_9:
  v19 = [v1 *v18];
  if (!v19)
  {
LABEL_38:
    static GKLog.daemon.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = sub_100005AE4();
      v37 = sub_100005808();
      v41[1] = v37;
      *v36 = 136315138;
      v38 = sub_1001FC120();
      *(v36 + 4) = sub_100005C3C(v38, v39, v40);
      _os_log_impl(&_mh_execute_header, v34, v35, "FriendBulletin handleFriendRequestAction invalid actionid %s", v36, 0xCu);
      sub_100005BE0(v37);
      sub_1000043D8();
      sub_1001E3EA0();
    }

    (*(v8 + 8))(v12, v0);
    goto LABEL_41;
  }

  v41[0] = v19;
  if ([v19 type])
  {
    static GKLog.daemon.getter();
    v20 = v41[0];
    v21 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100005B44();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = sub_100005AE4();
      *v23 = 134217984;
      *(v23 + 4) = [v20 type];

      _os_log_impl(&_mh_execute_header, v21, v6, "FriendBulletin handleFriendRequestAction invalid action type %ld", v23, 0xCu);
      sub_1000043D8();
    }

    else
    {

      v21 = v20;
    }

    (*(v8 + 8))(v15, v0);
LABEL_41:
    sub_1000057D8();
    return;
  }

  sub_1001FB568();
  v26 = sub_1001FC120();
  sub_1001FAB30(v26, v27, v41[0]);
  sub_1000057D8();
}

void sub_1001FAB30(uint64_t a1, uint64_t a2, void *a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v6 == a2)
  {

    goto LABEL_13;
  }

  v8 = sub_1001FC13C();

  if (v8)
  {
LABEL_13:
    sub_1001FABF8(a3);
    return;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v9 == a2)
  {

LABEL_16:
    sub_1001FAE80(a3);
    return;
  }

  v11 = sub_1001FC13C();

  if (v11)
  {
    goto LABEL_16;
  }
}

void sub_1001FABF8(void *a1)
{
  type metadata accessor for Logger();
  sub_1001FC054();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043F0();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_100006A38();
  sub_1001AC844(a1, &selRef_playerID);
  if (v12)
  {
    v13 = [objc_opt_self() gameCenterClient];
    if (v13)
    {
      v14 = v13;
      sub_1001A7B44(0, &qword_1003B6068);
      v15 = v14;
      sub_1001FC0AC();
      v16 = sub_1001D132C();
      if (v16)
      {
        v17 = v16;
        v18 = String._bridgeToObjectiveC()();

        sub_1001FC06C();
        sub_1000058F0(COERCE_DOUBLE(1107296256));
        v35 = v19;
        v36 = &unk_10036C008;
        v20 = _Block_copy(aBlock);
        [v17 acceptFriendInvitationWithPlayerID:v18 completion:v20];
        _Block_release(v20);

        return;
      }
    }

    static GKLog.daemon.getter();
    v29 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100005B44();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = sub_100005B50();
      sub_100005564(v31);
      sub_100006BE4(&_mh_execute_header, v32, v33, "FriendBulletin acceptFriendRequest failed to initialize friendService");
      sub_1001FC090();
    }

    (*(v6 + 8))(v2, v1);
  }

  else
  {
    static GKLog.daemon.getter();
    v21 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100005B44();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = sub_100005B50();
      sub_100005564(v23);
      sub_1001FC12C();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      sub_1001FC090();
    }

    (*(v6 + 8))(v10, v1);
  }
}

void sub_1001FAE80(void *a1)
{
  type metadata accessor for Logger();
  sub_1001FC054();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043F0();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_100006A38();
  sub_1001AC844(a1, &selRef_playerID);
  if (v12)
  {
    v13 = [objc_opt_self() gameCenterClient];
    if (v13)
    {
      v14 = v13;
      sub_1001A7B44(0, &qword_1003B6068);
      v15 = v14;
      sub_1001FC0AC();
      v16 = sub_1001D132C();
      if (v16)
      {
        v17 = v16;
        v18 = String._bridgeToObjectiveC()();

        sub_1001FC06C();
        sub_1000058F0(COERCE_DOUBLE(1107296256));
        v35 = v19;
        v36 = &unk_10036BFE0;
        v20 = _Block_copy(aBlock);
        [v17 ignoreFriendInvitationWithPlayerID:v18 completion:v20];
        _Block_release(v20);

        return;
      }
    }

    static GKLog.daemon.getter();
    v29 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100005B44();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = sub_100005B50();
      sub_100005564(v31);
      sub_100006BE4(&_mh_execute_header, v32, v33, "FriendBulletin ignoreFriendRequest failed to initialize friendService");
      sub_1001FC090();
    }

    (*(v6 + 8))(v2, v1);
  }

  else
  {
    static GKLog.daemon.getter();
    v21 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100005B44();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = sub_100005B50();
      sub_100005564(v23);
      sub_1001FC12C();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      sub_1001FC090();
    }

    (*(v6 + 8))(v10, v1);
  }
}

void sub_1001FB108()
{
  sub_10000469C();
  v2 = v1;
  v4 = v3;
  type metadata accessor for Logger();
  sub_1001FC054();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043B4();
  v10 = v9 - v8;
  if (v4)
  {
    swift_errorRetain();
    static GKLog.friending.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_100005AE4();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, v2, v13, 0xCu);
      sub_1001A974C(v14, &unk_1003B6180);
      sub_1000043D8();
      sub_1001E3EA0();
    }

    else
    {
    }

    (*(v6 + 8))(v10, v0);
  }

  sub_1000057D8();
}

void sub_1001FB298()
{
  sub_10000469C();
  v5 = v4;
  v7 = v6;
  type metadata accessor for Logger();
  sub_1001FC054();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000043F0();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_100006A38();
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v7 && v15 == v5)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1001F7658();
    if ((v3 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v17 = [v1 defaultAction];
  if (!v17)
  {
LABEL_12:
    static GKLog.daemon.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_100005AE4();
      v25 = sub_100005808();
      v29 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100005C3C(v7, v5, &v29);
      _os_log_impl(&_mh_execute_header, v22, v23, "FriendBulletin handleAcceptedRequestAction invalid actionid %s", v24, 0xCu);
      sub_100005BE0(v25);
      sub_1000043D8();
      sub_1001E3EA0();
    }

    (*(v9 + 8))(v13, v0);
LABEL_20:
    sub_1000057D8();
    return;
  }

  v28 = v17;
  if ([v17 type])
  {
    static GKLog.daemon.getter();
    v18 = v28;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_100005AE4();
      *v21 = 134217984;
      *(v21 + 4) = [v18 type];

      _os_log_impl(&_mh_execute_header, v19, v20, "FriendBulletin handleAcceptedRequestAction invalid action type %ld", v21, 0xCu);
      sub_1000043D8();
    }

    else
    {

      v19 = v18;
    }

    (*(v9 + 8))(v2, v0);
    goto LABEL_20;
  }

  sub_1001FB568();
  sub_1000057D8();
}

void sub_1001FB568()
{
  sub_10000469C();
  v2 = v1;
  type metadata accessor for Logger();
  sub_1001FC054();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000043B4();
  v8 = v7 - v6;
  v9 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for URL();
  sub_1000043C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000043B4();
  v18 = v17 - v16;
  sub_1001AC844(v2, &selRef_info);
  if (v19)
  {
    URL.init(string:)();

    if (sub_1001A969C(v11, 1, v12) == 1)
    {
      sub_1001A974C(v11, &qword_1003B5800);
      static GKLog.daemon.getter();
      v20 = v2;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_100005AE4();
        v24 = sub_100005808();
        v40 = v24;
        *v23 = 136315138;
        v25 = sub_1001AC844(v20, &selRef_info);
        if (v26)
        {
          v27 = v26;
        }

        else
        {
          v25 = 7104878;
          v27 = 0xE300000000000000;
        }

        v28 = sub_100005C3C(v25, v27, &v40);

        *(v23 + 4) = v28;
        sub_1001FC12C();
        _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
        sub_100005BE0(v24);
        sub_1001E3EA0();
        sub_1001FC090();
      }

      (*(v4 + 8))(v8, v0);
      goto LABEL_11;
    }

    (*(v14 + 32))(v18, v11, v12);
    v34 = [objc_opt_self() defaultWorkspace];
    if (v34)
    {
      v36 = v34;
      URL._bridgeToObjectiveC()(v35);
      v38 = v37;
      [v36 openURL:v37];

      (*(v14 + 8))(v18, v12);
LABEL_11:
      sub_1000057D8();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001FB87C()
{
  v0 = objc_opt_self();
  result = [v0 defaultWorkspace];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = sub_1001B68F8(v3, v4, v2);

    if (v5)
    {
      return 1;
    }

    result = [v0 defaultWorkspace];
    if (result)
    {
      v6 = result;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = sub_1001B68F8(v7, v8, v6);

      return v9 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1001FB940(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for FriendBulletin();
  v3 = objc_msgSendSuper2(&v5, "initWithPushNotification:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1001FBA38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendBulletin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001FBA90(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FriendBulletin();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1001FBB20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendBulletin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001FBB78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setCategoryIdentifier:v4];
}

void sub_1001FBBDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setPlayerID:v4];
}

uint64_t sub_1001FBC34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001FBC7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1001FBCA0()
{
  result = qword_1003B6570;
  if (!qword_1003B6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6570);
  }

  return result;
}

uint64_t sub_1001FBD14()
{
  sub_100005838();
  v2 = *(v0 + 48);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_1001FC0C0(v5);

  return sub_1001F7F90(v6, v7, v8, v9, v10, v2, v4, v3);
}

uint64_t sub_1001FBDD4()
{
  sub_1001D1970();
  sub_100005838();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1001FC0C0(v1);
  sub_1001D185C();

  return sub_1001F9CC8(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for FriendBulletin.FriendBulletinError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FriendBulletin.FriendBulletinError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001FBFF4()
{
  result = qword_1003B6590;
  if (!qword_1003B6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6590);
  }

  return result;
}

void sub_1001FC06C()
{
  *(v1 - 80) = v0;
  *(v1 - 72) = 0;
  *(v1 - 112) = _NSConcreteStackBlock;
}

uint64_t sub_1001FC090()
{
}

uint64_t sub_1001FC0E0()
{

  return swift_task_alloc();
}

uint64_t sub_1001FC100()
{
}

uint64_t sub_1001FC13C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001FC16C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_1001FC18C(void *a1)
{
  v3 = *(v1 + 2728);

  return [a1 v3];
}

void sub_1001FC1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GKLog.daemon.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "URLSessionTask finished collecting metrics", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = [objc_opt_self() controller];
  [v12 reportURLSessionEventWithTask:a2 metrics:a3];
}

uint64_t sub_1001FC3F0()
{
  if (qword_1003B54D0 != -1)
  {
    swift_once();
  }

  v0 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();

  dispatch thunk of NWProtocolFramer.Message.subscript.setter();

  return v0;
}

uint64_t sub_1001FC4A4()
{
  dispatch thunk of NWProtocolFramer.Message.subscript.getter();
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_1001FCBA8(v2);
    return 0;
  }

  return result;
}

uint64_t sub_1001FC524(uint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1001FC560@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001FC524(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001FC58C@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1001FC534(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1001FC5B8()
{
  type metadata accessor for PeerDiscoveryFramer();
  sub_1001FCC54();
  type metadata accessor for NWProtocolFramer.Definition();
  swift_allocObject();
  result = NWProtocolFramer.Definition.init(implementation:)();
  qword_1003C0A90 = result;
  return result;
}

uint64_t sub_1001FC630()
{

  return swift_allocObject();
}

uint64_t sub_1001FC664@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NWProtocolFramer.StartResult.ready(_:);
  started = type metadata accessor for NWProtocolFramer.StartResult();
  v4 = *(*(started - 8) + 104);

  return v4(a1, v2, started);
}