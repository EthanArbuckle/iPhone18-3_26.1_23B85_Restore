uint64_t sub_100DEEF64(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v7 = qword_1013E9EE8[a2];
  Hasher._combine(_:)(v7);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (qword_1013E9EE8[*(*(v5 + 48) + v10)] != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v10);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100E01A74(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DEF098(void *a1, uint64_t a2)
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

      type metadata accessor for AnyCancellable();
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

    v18 = sub_1010F24EC(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100DF8424(v19 + 1);
    }

    sub_1010F42CC(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  v10 = *(v6 + 40);
  sub_1000097BC(&qword_1016BC180, &type metadata accessor for AnyCancellable);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_100E01BF0(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_1000097BC(&qword_1016BC188, &type metadata accessor for AnyCancellable);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
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

uint64_t sub_100DEF338(void *a1, void *a2)
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

      sub_100008BB8(0, &unk_1016C7F80, SPStandaloneBeacon_ptr);
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

    v20 = sub_1010F2720(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100DFAED0(v21 + 1, &unk_1016BC160, &unk_101406280);
    }

    v19 = v8;
    sub_1010FD5C0();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016C7F80, SPStandaloneBeacon_ptr);
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
    sub_100DFDEC8(v19, v13, isUniquelyReferenced_nonNull_native, &unk_1016BC160, &unk_101406280, &unk_1016C7F80, SPStandaloneBeacon_ptr);
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

uint64_t sub_100DEF5A0(void *a1, void *a2)
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

      sub_100008BB8(0, &unk_1016C7F70, SPBeaconGroup_ptr);
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

    v20 = sub_1010F2910(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100DFAED0(v21 + 1, &unk_1016BC150, &qword_1013E9EC0);
    }

    v19 = v8;
    sub_1010FD5C0();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016C7F70, SPBeaconGroup_ptr);
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
    sub_100DFDEC8(v19, v13, isUniquelyReferenced_nonNull_native, &unk_1016BC150, &qword_1013E9EC0, &unk_1016C7F70, SPBeaconGroup_ptr);
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

uint64_t sub_100DEF830(void *a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  v10 = *(*v5 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();

  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(*(v9 + 48) + 8 * v13);
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
      if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
      {

        goto LABEL_12;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v26 = *(*(v9 + 48) + 8 * v13);
    *a1 = v26;
    v27 = v26;
    return 0;
  }

  else
  {
LABEL_9:
    v22 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v6;
    v24 = a2;
    sub_100DFE644(v24, v13, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v31;
    *a1 = v24;
    return 1;
  }
}

uint64_t sub_100DEFA08(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  v11 = static Hasher._hash(seed:_:)();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + 8 * v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_100DFE20C(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DEFB08(void *a1, void *a2)
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

      sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
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

    v20 = sub_1010F2D38(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100DFAED0(v21 + 1, &unk_1016BC170, &qword_1013D6BD8);
    }

    v19 = v8;
    sub_1010FD5C0();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
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
    sub_100DFDEC8(v19, v13, isUniquelyReferenced_nonNull_native, &unk_1016BC170, &qword_1013D6BD8, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
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

uint64_t sub_100DEFD8C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = type metadata accessor for BeaconIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v27 = &v26 - v10;
  v28 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v30 = v4;
  v13 = *(v4 + 20);
  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v11 + 32);
  v16 = v14 & ~v15;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    do
    {
      sub_100E0ED24(*(v11 + 48) + v18 * v16, v9, type metadata accessor for BeaconIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v19 = *(v30 + 20);
        v20 = static UUID.== infix(_:_:)();
        sub_100E0EC5C(v9, type metadata accessor for BeaconIdentifier);
        if (v20)
        {
          sub_100E0EC5C(a2, type metadata accessor for BeaconIdentifier);
          sub_100E0ED24(*(v11 + 48) + v18 * v16, v29, type metadata accessor for BeaconIdentifier);
          return 0;
        }
      }

      else
      {
        sub_100E0EC5C(v9, type metadata accessor for BeaconIdentifier);
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  v22 = v28;
  v23 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v27;
  sub_100E0ED24(a2, v27, type metadata accessor for BeaconIdentifier);
  v31 = *v22;
  sub_100E01FE4(v25, v16, isUniquelyReferenced_nonNull_native);
  *v22 = v31;
  sub_100E0ECBC(a2, v29, type metadata accessor for BeaconIdentifier);
  return 1;
}

uint64_t sub_100DF0094(uint64_t a1, uint64_t a2, unint64_t a3, Swift::UInt32 a4)
{

  return sub_100DF29FC(a1, a2, a3, a4, &qword_1016BBE48, &qword_1013E9DB0, &qword_1016BBE40, &qword_1013BFD20);
}

uint64_t sub_100DF010C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  Hasher.init(_seed:)();
  v56 = v7;
  v57 = v6;
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  v55 = v4 + 56;
  v43 = a2;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v50 = *(a2 + 32);
    v53 = ~v9;
    v51 = *(a2 + 24);
    v52 = *(a2 + 16);
    v49 = *(a2 + 48);
    v47 = *(a2 + 40);
    v48 = *(a2 + 64);
    v40 = v4;
    v41 = *(a2 + 72);
    v45 = *(a2 + 56);
    v46 = *(a2 + 80);
    v54 = *(v4 + 48);
    do
    {
      v11 = v54 + 88 * v10;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *(v11 + 40);
      v16 = *(v11 + 48);
      v17 = *(v11 + 56);
      v18 = *(v11 + 64);
      v20 = *(v11 + 72);
      v19 = *(v11 + 80);
      v21 = *v11 == v57 && *(v11 + 8) == v56;
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v22 = v13 == v52 && v12 == v51;
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v14 ^ v50) & 1) != 0)
      {
        goto LABEL_4;
      }

      if (v16)
      {
        if (!v49)
        {
          goto LABEL_4;
        }

        v23 = v15 == v47 && v16 == v49;
        if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v49)
      {
        goto LABEL_4;
      }

      if (v18)
      {
        if (!v48)
        {
          goto LABEL_4;
        }

        v24 = v17 == v45 && v18 == v48;
        if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v48)
      {
        goto LABEL_4;
      }

      if (v19)
      {
        if (v46)
        {
          v25 = v20 == v41 && v19 == v46;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
LABEL_41:
            sub_100E0EDE8(v43);
            v26 = *(v40 + 48) + 88 * v10;
            v27 = *(v26 + 16);
            v59[0] = *v26;
            v59[1] = v27;
            v29 = *(v26 + 48);
            v28 = *(v26 + 64);
            v30 = *(v26 + 80);
            v59[2] = *(v26 + 32);
            v60 = v30;
            v59[3] = v29;
            v59[4] = v28;
            v31 = *(v26 + 16);
            *a1 = *v26;
            *(a1 + 16) = v31;
            v32 = *(v26 + 32);
            v33 = *(v26 + 48);
            v34 = *(v26 + 64);
            *(a1 + 80) = *(v26 + 80);
            *(a1 + 48) = v33;
            *(a1 + 64) = v34;
            *(a1 + 32) = v32;
            sub_100E0ED8C(v59, v58);
            return 0;
          }
        }
      }

      else if (!v46)
      {
        goto LABEL_41;
      }

LABEL_4:
      v10 = (v10 + 1) & v53;
    }

    while (((*(v55 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  v36 = *v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = *v42;
  sub_100E0ED8C(v43, v59);
  sub_100E022F4(v43, v10, isUniquelyReferenced_nonNull_native);
  *v42 = v58[0];
  v38 = *(v43 + 48);
  *(a1 + 32) = *(v43 + 32);
  *(a1 + 48) = v38;
  *(a1 + 64) = *(v43 + 64);
  *(a1 + 80) = *(v43 + 80);
  v39 = *(v43 + 16);
  result = 1;
  *a1 = *v43;
  *(a1 + 16) = v39;
  return result;
}

uint64_t sub_100DF0448(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v58 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v4 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v6 = &v43 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v57 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v51 = &v43 - v17;
  v18 = __chkstk_darwin(v16);
  v44 = &v43 - v19;
  __chkstk_darwin(v18);
  v21 = &v43 - v20;
  v45 = v2;
  v60 = *v2;
  v22 = *(v60 + 40);
  Hasher.init(_seed:)();
  v59 = a2;
  sub_1000D2A70(a2, v21, &qword_1016980D0, &unk_10138F3B0);
  v23 = *(v8 + 48);
  if (v23(v21, 1, v7) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v8 + 32))(v11, v21, v7);
    Hasher._combine(_:)(1u);
    sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v8 + 8))(v11, v7);
  }

  v24 = Hasher._finalize()();
  v25 = -1 << *(v60 + 32);
  v26 = v24 & ~v25;
  v56 = v60 + 56;
  if (((*(v60 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_14:
    v37 = v45;
    v38 = *v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v59;
    v41 = v44;
    sub_1000D2A70(v59, v44, &qword_1016980D0, &unk_10138F3B0);
    v61 = *v37;
    sub_100E025F8(v41, v26, isUniquelyReferenced_nonNull_native);
    *v37 = v61;
    sub_1000D2AD8(v40, v46, &qword_1016980D0, &unk_10138F3B0);
    return 1;
  }

  v54 = v23;
  v55 = v8 + 48;
  v48 = v11;
  v52 = ~v25;
  v47 = (v8 + 32);
  v53 = *(v53 + 72);
  v50 = (v8 + 8);
  v27 = v51;
  while (1)
  {
    v28 = v53 * v26;
    sub_1000D2A70(*(v60 + 48) + v53 * v26, v27, &qword_1016980D0, &unk_10138F3B0);
    v29 = *(v58 + 48);
    sub_1000D2A70(v27, v6, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v59, &v6[v29], &qword_1016980D0, &unk_10138F3B0);
    v30 = v54;
    if (v54(v6, 1, v7) == 1)
    {
      break;
    }

    sub_1000D2A70(v6, v57, &qword_1016980D0, &unk_10138F3B0);
    if (v30(&v6[v29], 1, v7) == 1)
    {
      v27 = v51;
      sub_10000B3A8(v51, &qword_1016980D0, &unk_10138F3B0);
      (*v50)(v57, v7);
      goto LABEL_7;
    }

    v31 = v7;
    v32 = v57;
    v33 = v48;
    (*v47)(v48, &v6[v29], v31);
    sub_1000097BC(&qword_1016984A0, &type metadata accessor for UUID);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v34 = *v50;
    v35 = v33;
    v36 = v32;
    v7 = v31;
    (*v50)(v35, v31);
    v27 = v51;
    sub_10000B3A8(v51, &qword_1016980D0, &unk_10138F3B0);
    v34(v36, v7);
    sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
    if (v49)
    {
      goto LABEL_16;
    }

LABEL_8:
    v26 = (v26 + 1) & v52;
    if (((*(v56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_10000B3A8(v27, &qword_1016980D0, &unk_10138F3B0);
  if (v30(&v6[v29], 1, v7) != 1)
  {
LABEL_7:
    sub_10000B3A8(v6, &qword_1016AF880, &unk_10138CE20);
    goto LABEL_8;
  }

  sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
LABEL_16:
  sub_10000B3A8(v59, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(*(v60 + 48) + v28, v46, &qword_1016980D0, &unk_10138F3B0);
  return 0;
}

uint64_t sub_100DF0AF0(void *a1, void *a2)
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

      sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
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

    v20 = sub_1010F2F28(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100DFAED0(v21 + 1, &unk_1016BBE60, &qword_1013E9DB8);
    }

    v19 = v8;
    sub_1010FD5C0();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
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
    sub_100DFDEC8(v19, v13, isUniquelyReferenced_nonNull_native, &unk_1016BBE60, &qword_1013E9DB8, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
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

uint64_t sub_100DF0D58(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:bytes:count:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
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
    sub_100E02C68(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DF0E40(void *a1, uint64_t a2)
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

      type metadata accessor for Service();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F3118(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DF9B40(v20 + 1);
    }

    sub_1010F43D0(v21, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  v11 = *(a2 + 32);
  NSObject.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;

    sub_100E02D8C(v18, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v15 = ~v13;
  while (*(*(*(v6 + 48) + 8 * v14) + 32) != *(a2 + 32))
  {
    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v14);

  return 0;
}

uint64_t sub_100DF104C(void *a1, uint64_t a2)
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

      type metadata accessor for Characteristic();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F3324(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DF9D9C(v20 + 1);
    }

    sub_1010F4480(v21, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  v11 = *(a2 + 40);
  NSObject.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;

    sub_100E02F10(v18, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v15 = ~v13;
  while (*(*(*(v6 + 48) + 8 * v14) + 40) != *(a2 + 40))
  {
    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v14);

  return 0;
}

uint64_t sub_100DF1258(void *a1, uint64_t a2)
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

      sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
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

    v18 = sub_1010F3530(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100DF9FF8(v19 + 1);
    }

    sub_1010F4530(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  v10 = *(v6 + 40);
  sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_100E03094(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_1000041A4(&qword_1016BC070, &qword_1016B2F60, &qword_1013D3ED0);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
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

uint64_t sub_100DF1524(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v46[0] = a2[2];
  v6 = *v2;
  v7 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v43 = *(v46[0] + 16);
  Hasher._combine(_:)(v43);
  v8 = *(v46[0] + 16);
  if (v8)
  {
    v9 = (v46[0] + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      String.hash(into:)();

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v37 = a2;
  v39 = a2[4];
  v40 = a2[3];
  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  v42 = v6 + 56;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_28:
    v32 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *v36;

    sub_1000D2A70(v46, v44, &qword_1016B0470, &qword_10138EB80);

    sub_100E03290(v37, v14, isUniquelyReferenced_nonNull_native);
    *v36 = v45;
    v34 = *(v37 + 16);
    *a1 = *v37;
    *(a1 + 16) = v34;
    *(a1 + 32) = *(v37 + 32);
    return 1;
  }

  v41 = ~v13;
  v35 = v6;
  v15 = *(v6 + 48);
  while (1)
  {
    v16 = (v15 + 40 * v14);
    result = *v16;
    v19 = v16[2];
    v18 = v16[3];
    v20 = v16[4];
    if (*v16 != v5 || v16[1] != v4)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (*(v19 + 16) != v43)
    {
      goto LABEL_7;
    }

    if (v43 && v19 != v46[0])
    {
      break;
    }

LABEL_25:
    if (v18 == v40 && v20 == v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_10000B3A8(v46, &qword_1016B0470, &qword_10138EB80);

      v27 = (*(v35 + 48) + 40 * v14);
      v28 = v27[1];
      v30 = v27[2];
      v29 = v27[3];
      v31 = v27[4];
      *a1 = *v27;
      *(a1 + 8) = v28;
      *(a1 + 16) = v30;
      *(a1 + 24) = v29;
      *(a1 + 32) = v31;

      return 0;
    }

LABEL_7:
    v14 = (v14 + 1) & v41;
    if (((*(v42 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v22 = *(v46[0] + 16);
  v23 = (v19 + 40);
  v24 = (v46[0] + 40);
  v25 = v43;
  while (v22)
  {
    result = *(v23 - 1);
    if (result != *(v24 - 1) || *v23 != *v24)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    --v22;
    v23 += 2;
    v24 += 2;
    if (!--v25)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DF1848(void *a1, uint64_t a2)
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

      sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
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

    v18 = sub_1010F3768(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100DFA598(v19 + 1);
    }

    sub_1010F454C(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  v10 = *(v6 + 40);
  sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_100E03568(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_1000041A4(&unk_1016C7C80, &unk_1016A6020, &unk_101393420);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
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

uint64_t sub_100DF1AF8(_OWORD *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_100E76BF0();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v50 = v4 + 56;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v46 = ~v7;
    v59 = *(a2 + 8);
    v60 = *a2;
    v40 = v4;
    v47 = *(v4 + 48);
    while (1)
    {
      v9 = v47 + 160 * v8;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v13 = *(v9 + 40);
      v15 = *(v9 + 48);
      v14 = *(v9 + 56);
      v16 = *(v9 + 64);
      v17 = *(v9 + 72);
      v57 = *(v9 + 88);
      v58 = *(v9 + 80);
      v55 = *(v9 + 104);
      v56 = *(v9 + 96);
      v53 = *(v9 + 120);
      v54 = *(v9 + 112);
      v51 = *(v9 + 129);
      v52 = *(v9 + 128);
      v48 = *(v9 + 131);
      v49 = *(v9 + 130);
      v45 = *(v9 + 136);
      v18 = *v9 == v60 && *(v9 + 8) == v59;
      v43 = *(v9 + 152);
      v44 = *(v9 + 144);
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v10 == *(a2 + 16) && v11 == *(a2 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v12 == *(a2 + 32) && v13 == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v15 == *(a2 + 48) && v14 == *(a2 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v16 == *(a2 + 64) && v17 == *(a2 + 72) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v58 == *(a2 + 80) && v57 == *(a2 + 88) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v56 == *(a2 + 96) && v55 == *(a2 + 104) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v54 == *(a2 + 112) && v53 == *(a2 + 120) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v52 == (*(a2 + 128) & 1) && ((v51 ^ *(a2 + 129)) & 1) == 0 && v49 == (*(a2 + 130) & 1) && ((v48 ^ *(a2 + 131)) & 1) == 0 && v45 == *(a2 + 136) && (v44 == *(a2 + 144) && v43 == *(a2 + 152) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        break;
      }

      v8 = (v8 + 1) & v46;
      if (((*(v50 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    sub_10013CDDC(a2);
    v19 = (*(v40 + 48) + 160 * v8);
    v20 = v19[1];
    v62[0] = *v19;
    v62[1] = v20;
    v21 = v19[5];
    v23 = v19[2];
    v22 = v19[3];
    v62[4] = v19[4];
    v62[5] = v21;
    v62[2] = v23;
    v62[3] = v22;
    v24 = v19[6];
    v25 = v19[7];
    v26 = v19[9];
    v62[8] = v19[8];
    v62[9] = v26;
    v62[6] = v24;
    v62[7] = v25;
    v27 = v19[7];
    a1[6] = v19[6];
    a1[7] = v27;
    v28 = v19[9];
    a1[8] = v19[8];
    a1[9] = v28;
    v29 = v19[3];
    a1[2] = v19[2];
    a1[3] = v29;
    v30 = v19[5];
    a1[4] = v19[4];
    a1[5] = v30;
    v31 = v19[1];
    *a1 = *v19;
    a1[1] = v31;
    sub_10013CD18(v62, v61);
    return 0;
  }

  else
  {
LABEL_39:
    v33 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61[0] = *v41;
    sub_10013CD18(a2, v62);
    sub_100E03764(a2, v8, isUniquelyReferenced_nonNull_native);
    *v41 = v61[0];
    v35 = *(a2 + 112);
    a1[6] = *(a2 + 96);
    a1[7] = v35;
    v36 = *(a2 + 144);
    a1[8] = *(a2 + 128);
    a1[9] = v36;
    v37 = *(a2 + 48);
    a1[2] = *(a2 + 32);
    a1[3] = v37;
    v38 = *(a2 + 80);
    a1[4] = *(a2 + 64);
    a1[5] = v38;
    v39 = *(a2 + 16);
    result = 1;
    *a1 = *a2;
    a1[1] = v39;
  }

  return result;
}

uint64_t sub_100DF1EF0(void *a1, uint64_t a2)
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

      sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
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

    v18 = sub_1010F39A0(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100DFAC18(v19 + 1);
    }

    sub_1010F4568(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
  v10 = *(v6 + 40);
  sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_100E03B44(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_1000041A4(&unk_1016C9050, &unk_1016C2180, &unk_1013EA680);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
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

uint64_t sub_100DF21A0(void *a1, void *a2)
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

      sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
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

    v20 = sub_1010F3BD8(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100DFAED0(v21 + 1, &unk_1016BBFB0, &qword_1013E9E30);
    }

    v19 = v8;
    sub_1010FD5C0();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
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
    sub_100DFDEC8(v19, v13, isUniquelyReferenced_nonNull_native, &unk_1016BBFB0, &qword_1013E9E30, &unk_1016BBFC0, CKRecordZoneID_ptr);
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

uint64_t sub_100DF2408(void *a1, uint64_t a2)
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

      sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
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

    v18 = sub_1010F3DC8(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100DFB0F0(v19 + 1);
    }

    sub_1010F4608(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
  v10 = *(v6 + 40);
  sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_100E03D40(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_1000041A4(&unk_1016C7C60, &qword_1016BBE10, &qword_1013E9D98);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
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

uint64_t sub_100DF26D4(_BYTE *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_100DFC9A4(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DF27F4(_DWORD *a1, unint64_t a2)
{
  v5 = HIDWORD(a2);
  v6 = *v2;
  v7 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v6 + 48) + 8 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == v5)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_100E03F3C(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
    result = 1;
  }

  *a1 = a2;
  a1[1] = v5;
  return result;
}

uint64_t sub_100DF290C(uint64_t a1, uint64_t a2, unint64_t a3, Swift::UInt32 a4)
{

  return sub_100DF29FC(a1, a2, a3, a4, &unk_1016BBF50, &qword_1013E9E10, &qword_1016ABED0, &qword_1013BFD98);
}

uint64_t sub_100DF2984(uint64_t a1, uint64_t a2, unint64_t a3, Swift::UInt32 a4)
{

  return sub_100DF29FC(a1, a2, a3, a4, &unk_1016BBF60, &qword_1013E9E18, &qword_1016ABF00, &qword_1013BFDB8);
}

uint64_t sub_100DF29FC(uint64_t a1, uint64_t a2, unint64_t a3, Swift::UInt32 a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = *v8;
  v15 = *(*v8 + 40);
  Hasher.init(_seed:)();
  sub_100017D5C(a2, a3);
  Data.hash(into:)();
  sub_100016590(a2, a3);
  Hasher._combine(_:)(a4);
  v16 = Hasher._finalize()();
  v17 = v14 + 56;
  v70 = v14;
  v18 = -1 << *(v14 + 32);
  v19 = v16 & ~v18;
  v59 = a7;
  if ((*(v14 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    if (a2)
    {
      v21 = 0;
    }

    else
    {
      v21 = a3 == 0xC000000000000000;
    }

    v22 = !v21;
    v23 = a3 >> 62;
    v24 = __OFSUB__(HIDWORD(a2), a2);
    v69 = v24;
    v68 = HIDWORD(a2) - a2;
    v25 = BYTE6(a3);
    v67 = a4;
    v26 = a2;
    v27 = v14;
    v65 = ~v18;
    v66 = v14 + 56;
    v64 = v22;
    v62 = a3;
    v63 = BYTE6(a3);
    v56 = v26;
    while (1)
    {
      v28 = *(v27 + 48) + 24 * v19;
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      v32 = v30 >> 62;
      if (v30 >> 62 != 3)
      {
        break;
      }

      if (v29)
      {
        v33 = 0;
      }

      else
      {
        v33 = v30 == 0xC000000000000000;
      }

      v35 = !v33 || v23 < 3;
      if ((v35 | v22))
      {
        goto LABEL_37;
      }

LABEL_13:
      if (v31 == a4)
      {
        sub_100016590(v26, a3);
        v53 = *(v27 + 48) + 24 * v19;
        v54 = *v53;
        v55 = *(v53 + 8);
        LODWORD(v53) = *(v53 + 16);
        *a1 = v54;
        *(a1 + 8) = v55;
        *(a1 + 16) = v53;
        sub_100017D5C(v54, v55);
        return 0;
      }

LABEL_14:
      v19 = (v19 + 1) & v20;
      if (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        v39 = __OFSUB__(v37, v38);
        v36 = v37 - v38;
        if (v39)
        {
          goto LABEL_67;
        }

        if (v23 > 1)
        {
          goto LABEL_38;
        }
      }

      else
      {
LABEL_37:
        v36 = 0;
        if (v23 > 1)
        {
LABEL_38:
          if (v23 != 2)
          {
            if (v36)
            {
              goto LABEL_14;
            }

            goto LABEL_13;
          }

          v42 = *(v26 + 16);
          v41 = *(v26 + 24);
          v39 = __OFSUB__(v41, v42);
          v40 = v41 - v42;
          if (v39)
          {
            goto LABEL_66;
          }

LABEL_40:
          if (v36 != v40)
          {
            goto LABEL_14;
          }

          if (v36 < 1)
          {
            goto LABEL_13;
          }

          if (v32 > 1)
          {
            if (v32 != 2)
            {
              *&v72[6] = 0;
              *v72 = 0;
              sub_100017D5C(v26, a3);
              sub_100017D5C(v29, v30);
              goto LABEL_60;
            }

            v43 = a3;
            v45 = *(v29 + 16);
            v44 = *(v29 + 24);
            sub_100017D5C(v26, v43);
            sub_100017D5C(v29, v30);
            v46 = __DataStorage._bytes.getter();
            if (v46)
            {
              v47 = __DataStorage._offset.getter();
              if (__OFSUB__(v45, v47))
              {
                goto LABEL_71;
              }

              v46 += v45 - v47;
            }

            if (__OFSUB__(v44, v45))
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (!v32)
            {
              *v72 = v29;
              *&v72[8] = v30;
              v72[10] = BYTE2(v30);
              v72[11] = BYTE3(v30);
              v72[12] = BYTE4(v30);
              v72[13] = BYTE5(v30);
              sub_100017D5C(v26, a3);
              sub_100017D5C(v29, v30);
              v27 = v70;
LABEL_60:
              sub_100771A28(v72, v26, a3, &v71);
              sub_100016590(v26, a3);
              sub_100016590(v29, v30);
              v49 = v71;
LABEL_61:
              a4 = v67;
              v20 = v65;
              v17 = v66;
              v22 = v64;
              v25 = v63;
              if (!v49)
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }

            if (v29 >> 32 < v29)
            {
              goto LABEL_69;
            }

            sub_100017D5C(v26, v62);
            sub_100017D5C(v29, v30);
            v46 = __DataStorage._bytes.getter();
            if (v46)
            {
              v48 = __DataStorage._offset.getter();
              if (__OFSUB__(v29, v48))
              {
                goto LABEL_72;
              }

              v46 += v29 - v48;
            }
          }

          __DataStorage._length.getter();
          v26 = v56;
          a3 = v62;
          sub_100771A28(v46, v56, v62, v72);
          sub_100016590(v56, v62);
          sub_100016590(v29, v30);
          v49 = v72[0];
          v27 = v70;
          goto LABEL_61;
        }
      }
    }

    else if (v32)
    {
      LODWORD(v36) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_68;
      }

      v36 = v36;
      if (v23 > 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v36 = BYTE6(v30);
      if (v23 > 1)
      {
        goto LABEL_38;
      }
    }

    v40 = v25;
    if (v23)
    {
      v40 = v68;
      if (v69)
      {
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
    }

    goto LABEL_40;
  }

  v26 = a2;
LABEL_64:
  v50 = *v60;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v72 = *v60;
  sub_100017D5C(v26, a3);
  sub_100E040B8(v26, a3, a4, v19, isUniquelyReferenced_nonNull_native, a5, a6, v59, a8);
  *v60 = *v72;
  *a1 = v26;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return 1;
}

uint64_t sub_100DF2F5C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016A59A0, &unk_1013B34C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100DF32B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC138, &unk_101406270);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v29 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
      sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v28;
      *(*(v6 + 48) + 8 * v14) = v29;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v8, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF355C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BC1C0, &qword_1013E9EE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF3918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016B5498, &qword_1013D6818);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF3B78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BBEB8, &qword_1013E9DD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF3DD8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4 - 8);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000BC4D4(&unk_1016BBF90, &qword_1013B3678);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v28 = v2;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v29 = result + 56;
    for (i = v30; v15; ++*(v10 + 16))
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v21 = *(v31 + 72);
      sub_100E0ECBC(*(v7 + 48) + v21 * (v18 | (v11 << 6)), i, type metadata accessor for SharedBeaconRecord);
      v22 = *(v10 + 40);
      Hasher.init(_seed:)();
      sub_1011D8230();
      Hasher._finalize()();
      v23 = -1 << *(v10 + 32);
      v24 = v29;
      v25 = _HashTable.nextHole(atOrAfter:)();
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_100E0ECBC(i, *(v10 + 48) + v25 * v21, type metadata accessor for SharedBeaconRecord);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v7 + 32);
    if (v26 >= 64)
    {
      bzero((v7 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v26;
    }

    v2 = v28;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100DF4074(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BBE28, &qword_1013E9DA0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
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
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF42A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BeaconNamingRecord();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  __chkstk_darwin(v4);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BBF88, &qword_1013E9E20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v44 = v2;
    v45 = result;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    v46 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v49 = *(v47 + 72);
      sub_100E0ECBC(v23 + v49 * (v20 | (v12 << 6)), v7, type metadata accessor for BeaconNamingRecord);
      v24 = v11[5];
      Hasher.init(_seed:)();
      v25 = *v7;
      v26 = v7[1];
      Data.hash(into:)();
      v27 = v48;
      v28 = v48[5];
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v29 = v7 + v27[6];
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v7 + v27[7]));
      v30 = (v7 + v27[8]);
      v31 = *v30;
      v32 = v30[1];
      String.hash(into:)();
      v33 = (v7 + v27[9]);
      if (v33[1])
      {
        v34 = *v33;
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v11 = v45;
      v8 = v46;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v18 + 8 * v37);
          if (v41 != -1)
          {
            v19 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100E0ECBC(v7, v11[6] + v19 * v49, type metadata accessor for BeaconNamingRecord);
      ++v11[2];
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v42 = 1 << *(v8 + 32);
    if (v42 >= 64)
    {
      bzero(v13, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v42;
    }

    v2 = v44;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_100DF46A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016A5A00, &qword_1013B3500);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._combine(_:)(v22);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF4924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BC1B0, &qword_1013E9ED8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v29 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
      sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v28;
      *(*(v6 + 48) + 8 * v14) = v29;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v8, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF4BC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC020, &qword_1013B3580);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF4E3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016A5A58, &qword_1013B3578);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = *(v19 + 1);
      v22 = *(v19 + 2);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF50BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RawSearchResult();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4 - 8);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016A58C0, &qword_1013B32C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v28 = v2;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v29 = result + 56;
    for (i = v30; v15; ++*(v10 + 16))
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v21 = *(v31 + 72);
      sub_100E0ECBC(*(v7 + 48) + v21 * (v18 | (v11 << 6)), i, type metadata accessor for RawSearchResult);
      v22 = *(v10 + 40);
      Hasher.init(_seed:)();
      sub_100D15128();
      Hasher._finalize()();
      v23 = -1 << *(v10 + 32);
      v24 = v29;
      v25 = _HashTable.nextHole(atOrAfter:)();
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_100E0ECBC(i, *(v10 + 48) + v25 * v21, type metadata accessor for RawSearchResult);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v7 + 32);
    if (v26 >= 64)
    {
      bzero((v7 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v26;
    }

    v2 = v28;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100DF5358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016A5A68, &qword_1013B3588);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF58B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC038, &qword_1013E9E58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = (*(v3 + 48) + 4 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v34 = v19[3];
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 4 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v34;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF5B38(uint64_t a1)
{
  v92 = type metadata accessor for UUID();
  v3 = *(v92 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v92);
  v91 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v70 - v11;
  v13 = type metadata accessor for OwnerSharingCircle();
  v79 = *(v13 - 1);
  v14 = *(v79 + 64);
  __chkstk_darwin(v13);
  v16 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = v1;
  v17 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v18 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016A5A18, &qword_1013B3538);
  v19 = static _SetStorage.resize(original:capacity:move:)();
  v20 = v19;
  if (*(v17 + 16))
  {
    v21 = 0;
    v22 = *(v17 + 56);
    v72 = (v17 + 56);
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v22;
    v71 = (v23 + 63) >> 6;
    v83 = v3 + 16;
    v86 = (v3 + 32);
    v88 = (v3 + 8);
    v74 = v19 + 56;
    v85 = v3;
    v90 = v10;
    v84 = v12;
    v78 = v17;
    v77 = v13;
    v76 = v19;
    v75 = v16;
    while (v25)
    {
      v29 = __clz(__rbit64(v25));
      v81 = (v25 - 1) & v25;
LABEL_16:
      v82 = v21;
      v33 = *(v17 + 48);
      v80 = *(v79 + 72);
      sub_100E0ECBC(v33 + v80 * (v29 | (v21 << 6)), v16, type metadata accessor for OwnerSharingCircle);
      v34 = v20[5];
      Hasher.init(_seed:)();
      v35 = *v16;
      v36 = v16[1];
      Data.hash(into:)();
      v37 = v13[5];
      v38 = sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v39 = v16 + v13[6];
      v89 = v38;
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v16 + v13[7]));
      v40 = *(v16 + v13[8]);
      v41 = v40 + 64;
      v42 = 1 << *(v40 + 32);
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      else
      {
        v43 = -1;
      }

      v44 = v43 & *(v40 + 64);
      v45 = (v42 + 63) >> 6;
      v87 = v40;

      v46 = 0;
      v47 = v86;
      v93 = 0;
      if (!v44)
      {
LABEL_21:
        if (v45 <= v46 + 1)
        {
          v49 = v46 + 1;
        }

        else
        {
          v49 = v45;
        }

        v50 = v49 - 1;
        v51 = v90;
        while (1)
        {
          v48 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (v48 >= v45)
          {
            v67 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
            (*(*(v67 - 8) + 56))(v51, 1, 1, v67);
            v44 = 0;
            goto LABEL_29;
          }

          v44 = *(v41 + 8 * v48);
          ++v46;
          if (v44)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

      while (1)
      {
        v48 = v46;
LABEL_28:
        v52 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v53 = v52 | (v48 << 6);
        v54 = v87;
        v55 = v85;
        v56 = v91;
        v57 = v92;
        (*(v85 + 16))(v91, *(v87 + 48) + *(v85 + 72) * v53, v92);
        LOBYTE(v54) = *(*(v54 + 56) + v53);
        v58 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        v59 = *(v58 + 48);
        v60 = *(v55 + 32);
        v51 = v90;
        v61 = v56;
        v47 = v86;
        v60(v90, v61, v57);
        *(v51 + v59) = v54;
        (*(*(v58 - 8) + 56))(v51, 0, 1, v58);
        v50 = v48;
        v12 = v84;
LABEL_29:
        sub_1000D2AD8(v51, v12, &unk_1016BC360, &qword_10139CBE0);
        v62 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        if ((*(*(v62 - 8) + 48))(v12, 1, v62) == 1)
        {
          break;
        }

        v63 = *(v62 + 48);
        v64 = v91;
        v65 = v92;
        (*v47)(v91, v12, v92);
        v66 = v12[v63];
        v96 = v101;
        v97 = v102;
        v98 = v103;
        v94 = v99;
        v95 = v100;
        dispatch thunk of Hashable.hash(into:)();
        (*v88)(v64, v65);
        Hasher._combine(_:)(v66);
        result = Hasher._finalize()();
        v46 = v50;
        v93 ^= result;
        if (!v44)
        {
          goto LABEL_21;
        }
      }

      Hasher._combine(_:)(v93);
      v13 = v77;
      v16 = v75;
      Hasher._combine(_:)(*(v75 + v77[9]));
      Hasher._finalize()();
      v20 = v76;
      v26 = -1 << *(v76 + 32);
      v27 = v74;
      v28 = _HashTable.nextHole(atOrAfter:)();
      *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      sub_100E0ECBC(v16, v20[6] + v28 * v80, type metadata accessor for OwnerSharingCircle);
      ++v20[2];
      v17 = v78;
      v21 = v82;
      v25 = v81;
    }

    v30 = v21;
    result = v72;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v71)
      {
        v68 = 1 << *(v17 + 32);
        if (v68 >= 64)
        {
          bzero(v72, ((v68 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v72 = -1 << v68;
        }

        v69 = v73;
        *(v17 + 16) = 0;

        goto LABEL_38;
      }

      v32 = v72[v21];
      ++v30;
      if (v32)
      {
        v29 = __clz(__rbit64(v32));
        v81 = (v32 - 1) & v32;
        goto LABEL_16;
      }
    }

LABEL_40:
    __break(1u);
  }

  else
  {

    v69 = v73;
LABEL_38:
    *v69 = v20;
  }

  return result;
}

uint64_t sub_100DF637C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016B54C8, &qword_1013D6910);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
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
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF6878(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for MACAddress();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BC090, &qword_1013E9E78);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1000097BC(&unk_1016BC080, &type metadata accessor for MACAddress);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100DF6BD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC1A8, &qword_1013E9ED0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF6E34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC1A0, &qword_1013E9EC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v20 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
      }

      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF70B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BBEB0, &qword_1013E9DC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v38 + 72);
      sub_100E0ECBC(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for OwnedBeaconGroup);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      v26 = *(v39 + 24);
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100E0ECBC(v7, *(v11 + 48) + v19 * v24, type metadata accessor for OwnedBeaconGroup);
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_100DF7418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC118, &qword_1013E9EB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v29 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
      sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v28;
      *(*(v6 + 48) + 8 * v14) = v29;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v8, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF76D0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WildModeTrackingLocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BBFA8, &qword_1013E9E28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_1010F4144(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_100E0ECBC(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, type metadata accessor for WildModeTrackingLocation);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

unint64_t sub_100DF78D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC028, &qword_1013E9E48);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v21 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
    for (i = result + 56; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_1007766A4(v22, v17);
      Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v17;
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
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
        goto LABEL_14;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      bzero((v3 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v2 = v21;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF7AB8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BeaconStatus(0);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BC030, &qword_1013E9E50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v38 + 72);
      sub_100E0ECBC(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for BeaconStatus);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v26 = *(v39 + 24);
      type metadata accessor for Date();
      sub_1000097BC(&unk_101698070, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100E0ECBC(v7, *(v11 + 48) + v19 * v24, type metadata accessor for BeaconStatus);
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_100DF7E6C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Destination();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BC010, &qword_1013E9E38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1000097BC(&qword_1016BC000, &type metadata accessor for Destination);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100DF81C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016AAA18, &qword_1013BD810);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_1013E9EE8[v18]);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF8424(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BC190, &unk_101406290);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      type metadata accessor for AnyCancellable();
      sub_1000097BC(&qword_1016BC180, &type metadata accessor for AnyCancellable);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF86E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v5;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v22 = Hasher._finalize()();

      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
      v5 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v5 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v4 = v31;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_100DF8954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC0E8, &unk_101406260);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v29 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
      sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v28;
      *(*(v6 + 48) + 8 * v14) = v29;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v8, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF8BF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    v29 = v4;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v11 >= 64)
    {
      bzero((v5 + 56), 8 * v14);
    }

    else
    {
      *v10 = -1 << v11;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_100DF8E28(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BeaconIdentifier();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000BC4D4(&unk_1016BBE50, &unk_1013B34E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48);
      v23 = *(v37 + 72);
      v24 = v39;
      sub_100E0ECBC(v22 + v23 * (v19 | (v11 << 6)), v39, type metadata accessor for BeaconIdentifier);
      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v26 = v24 + *(v38 + 20);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_100E0ECBC(v39, *(v10 + 48) + v18 * v23, type metadata accessor for BeaconIdentifier);
      ++*(v10 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v7 + 32);
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100DF91A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC098, &qword_1013E9E80);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = *(v3 + 48) + 88 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v34 = *(v19 + 48);
      v35 = *(v19 + 64);
      v36 = *(v19 + 80);
      v32 = *(v19 + 16);
      v33 = *(v19 + 32);
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 88 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 48) = v34;
      *(v15 + 64) = v35;
      *(v15 + 80) = v36;
      *(v15 + 16) = v32;
      *(v15 + 32) = v33;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF943C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v15 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BA360, &unk_1013E48B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v17 = result;
  v53 = v14;
  if (*(v14 + 16))
  {
    v49 = v4;
    v43 = v2;
    v18 = 0;
    v19 = (v53 + 56);
    v20 = 1 << *(v53 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v53 + 56);
    v23 = (v20 + 63) >> 6;
    v47 = v13;
    v48 = (v5 + 48);
    v44 = (v5 + 8);
    v45 = (v5 + 32);
    v24 = result + 56;
    v25 = v51;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = *(v53 + 48);
      v52 = *(v50 + 72);
      sub_1000D2AD8(v30 + v52 * (v27 | (v18 << 6)), v13, &qword_1016980D0, &unk_10138F3B0);
      v31 = *(v17 + 40);
      Hasher.init(_seed:)();
      sub_1000D2A70(v13, v25, &qword_1016980D0, &unk_10138F3B0);
      v32 = v49;
      if ((*v48)(v25, 1, v49) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v33 = v46;
        (*v45)(v46, v25, v32);
        Hasher._combine(_:)(1u);
        sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v44)(v33, v32);
      }

      result = Hasher._finalize()();
      v34 = -1 << *(v17 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      v13 = v47;
      if (((-1 << v35) & ~*(v24 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v25 = v51;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v24 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v24 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v25 = v51;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_1000D2AD8(v13, *(v17 + 48) + v26 * v52, &qword_1016980D0, &unk_10138F3B0);
      ++*(v17 + 16);
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    v41 = 1 << *(v53 + 32);
    if (v41 >= 64)
    {
      bzero(v19, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v41;
    }

    v2 = v43;
    *(v53 + 16) = 0;
  }

  *v2 = v17;
  return result;
}

uint64_t sub_100DF9918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BBE70, &qword_1013E9DC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF9B40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BC0C0, &qword_101406240);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v20 = *(v18 + 32);
      NSObject.hash(into:)();

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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF9D9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC0B8, &qword_1013E9E98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v20 = *(v18 + 40);
      NSObject.hash(into:)();

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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DF9FF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC068, &unk_101406230);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v29 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
      sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v28;
      *(*(v6 + 48) + 8 * v14) = v29;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v8, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DFA29C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC018, &qword_1013E9E40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
    v39 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v42 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 40 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v23 = v19[2];
      v22 = v19[3];
      v43 = v19[4];
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();
      v40 = v21;
      v41 = v20;
      String.hash(into:)();
      Hasher._combine(_:)(*(v23 + 16));
      v25 = *(v23 + 16);
      if (v25)
      {
        v26 = (v23 + 40);
        do
        {
          v27 = *(v26 - 1);
          v28 = *v26;

          String.hash(into:)();

          v26 += 2;
          --v25;
        }

        while (v25);
      }

      String.hash(into:)();
      result = Hasher._finalize()();
      v6 = v39;
      v29 = -1 << *(v39 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v13 + 8 * v31);
          if (v35 != -1)
          {
            v14 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v3 = v38;
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v39 + 48) + 40 * v14);
      *v15 = v41;
      v15[1] = v40;
      v15[2] = v23;
      v15[3] = v22;
      v15[4] = v43;
      ++*(v39 + 16);
      v11 = v42;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v42 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      bzero(v8, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v36;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DFA598(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BBEF0, &qword_1014060B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v29 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
      sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v28;
      *(*(v6 + 48) + 8 * v14) = v29;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v8, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DFA83C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BC0A0, &qword_1013E9E88);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  v7 = v3;
  if (*(v3 + 16))
  {
    v8 = 0;
    v23 = (v3 + 56);
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
    v22 = (v9 + 63) >> 6;
    v25 = v5;
    v24 = v5 + 56;
    if (v11)
    {
      do
      {
        v12 = __clz(__rbit64(v11));
        v42 = (v11 - 1) & v11;
LABEL_14:
        v16 = *(v7 + 48) + 160 * (v12 | (v8 << 6));
        v39 = *(v16 + 8);
        v40 = *v16;
        v37 = *(v16 + 16);
        v38 = *(v16 + 24);
        v35 = *(v16 + 40);
        v36 = *(v16 + 32);
        v34 = *(v16 + 48);
        v48 = *(v16 + 64);
        v49 = *(v16 + 56);
        v47 = *(v16 + 72);
        v45 = *(v16 + 88);
        v46 = *(v16 + 80);
        v31 = *(v16 + 96);
        v43 = *(v16 + 112);
        v44 = *(v16 + 104);
        v26 = *(v16 + 120);
        v27 = *(v16 + 128);
        v28 = *(v16 + 129);
        v29 = *(v16 + 130);
        v30 = *(v16 + 131);
        v41 = *(v16 + 132);
        v50 = *(v16 + 136);
        LODWORD(v51) = *(v16 + 137);
        *(&v51 + 3) = *(v16 + 140);
        v32 = *(v16 + 152);
        v33 = *(v16 + 144);
        v17 = *(v25 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(v27 & 1);
        Hasher._combine(_:)(v28 & 1);
        Hasher._combine(_:)(v29 & 1);
        Hasher._combine(_:)(v30 & 1);
        Hasher._combine(_:)(v50);
        String.hash(into:)();
        Hasher._finalize()();
        v18 = -1 << *(v25 + 32);
        v19 = _HashTable.nextHole(atOrAfter:)();
        *(v24 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        v20 = *(v25 + 48) + 160 * v19;
        *v20 = v40;
        *(v20 + 8) = v39;
        *(v20 + 16) = v37;
        *(v20 + 24) = v38;
        *(v20 + 32) = v36;
        *(v20 + 40) = v35;
        v7 = v3;
        *(v20 + 48) = v34;
        *(v20 + 56) = v49;
        *(v20 + 64) = v48;
        *(v20 + 72) = v47;
        *(v20 + 80) = v46;
        *(v20 + 88) = v45;
        *(v20 + 96) = v31;
        *(v20 + 104) = v44;
        *(v20 + 112) = v43;
        *(v20 + 120) = v26;
        *(v20 + 128) = v27;
        *(v20 + 129) = v28;
        *(v20 + 130) = v29;
        *(v20 + 131) = v30;
        *(v20 + 132) = v41;
        *(v20 + 136) = v50;
        *(v20 + 140) = *(&v51 + 3);
        *(v20 + 137) = v51;
        *(v20 + 144) = v33;
        *(v20 + 152) = v32;
        ++*(v25 + 16);
        v11 = v42;
      }

      while (v42);
    }

    v13 = v8;
    result = v3 + 56;
    while (1)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v22)
      {
        break;
      }

      v15 = v23[v8];
      ++v13;
      if (v15)
      {
        v12 = __clz(__rbit64(v15));
        v42 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v21 = 1 << *(v7 + 32);
    if (v21 >= 64)
    {
      bzero(v23, ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v23 = -1 << v21;
    }

    v6 = v25;
    *(v7 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DFAC18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BBFE0, &unk_101406210);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v29 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
      sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v28;
      *(*(v6 + 48) + 8 * v14) = v29;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v8, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DFAED0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_100DFB0F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BBE08, &qword_1013E9D90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v29 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
      sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v28;
      *(*(v6 + 48) + 8 * v14) = v29;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v8, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100DFB394(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_100DFB5DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BBF70, &qword_1013B3530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v3 + 16))
  {
    v8 = 0;
    v9 = (v3 + 56);
    v10 = 1 << *(v3 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v3 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      *&v6 = *(*(v3 + 48) + 8 * (v16 | (v8 << 6)));
      v28 = v6;
      v19 = *(v7 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v28);
      Hasher._combine(_:)(DWORD1(v28));
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(&v6 + 1) = *(&v28 + 1);
      *(*(v7 + 48) + 8 * v15) = v28;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100DFB840(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = *(v5 + 48) + 24 * (v18 | (v9 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v8 + 40);
      Hasher.init(_seed:)();
      sub_100017D5C(v22, v23);
      Data.hash(into:)();
      sub_100016590(v22, v23);
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      *(v17 + 16) = v24;
      ++*(v8 + 16);
      v5 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v5 + 32);
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    v4 = v34;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_100DFBAD0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
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
    sub_100DF2F5C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E05650(&type metadata accessor for UUID, &qword_1016A59A0, &unk_1013B34C0);
      goto LABEL_12;
    }

    sub_100E06904(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
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
      sub_1000097BC(&qword_1016984A0, &type metadata accessor for UUID);
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

uint64_t sub_100DFBD98(uint64_t result, unint64_t a2, char a3)
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
    sub_100DF32B8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BC138, &unk_101406270);
      goto LABEL_12;
    }

    sub_100E06C20(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
  sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000041A4(&qword_1016BC130, &unk_1016BC120, &unk_1013EA6D0);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

Swift::Int sub_100DFBF94(Swift::Int result, unint64_t a2, char a3)
{
  v40 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_78;
  }

  if (a3)
  {
    sub_100DF355C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_100E0653C(&unk_1016BC1C0, &qword_1013E9EE0);
      goto LABEL_78;
    }

    sub_100E06E9C(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  sub_10076EE68();
  result = Hasher._finalize()();
  v38 = v7 + 56;
  v39 = v7;
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v37 = ~v9;
    v10 = 0xED0000694669576ELL;
    v11 = 0x65776F5068676968;
    do
    {
      v12 = *(*(v39 + 48) + a2);
      if (v12 <= 3)
      {
        if (v12 == 2)
        {
          v15 = v11;
        }

        else
        {
          v15 = 0x4F7265776F506E6FLL;
        }

        if (v12 == 2)
        {
          v16 = 0xE900000000000072;
        }

        else
        {
          v16 = v10;
        }

        if (*(*(v39 + 48) + a2))
        {
          v17 = 0x6F506D756964656DLL;
        }

        else
        {
          v17 = 0x7265776F50776F6CLL;
        }

        if (*(*(v39 + 48) + a2))
        {
          v18 = 0xEB00000000726577;
        }

        else
        {
          v18 = 0xE800000000000000;
        }

        if (*(*(v39 + 48) + a2) <= 1u)
        {
          v13 = v17;
        }

        else
        {
          v13 = v15;
        }

        if (*(*(v39 + 48) + a2) <= 1u)
        {
          v14 = v18;
        }

        else
        {
          v14 = v16;
        }
      }

      else if (*(*(v39 + 48) + a2) <= 5u)
      {
        if (v12 == 4)
        {
          v13 = 0x4F7265776F506E6FLL;
        }

        else
        {
          v13 = 0x7265747461426E6FLL;
        }

        if (v12 == 4)
        {
          v14 = 0xED00006C6C65436ELL;
        }

        else
        {
          v14 = 0xEF694669576E4F79;
        }
      }

      else if (v12 == 6)
      {
        v13 = 0x7265747461426E6FLL;
        v14 = 0xEF6C6C65436E4F79;
      }

      else if (v12 == 7)
      {
        v13 = 0x6F696E61706D6F63;
        v14 = 0xEF79627261654E6ELL;
      }

      else
      {
        v13 = 0x6857796669746F6ELL;
        v14 = 0xEF646E756F466E65;
      }

      v19 = 0x6F696E61706D6F63;
      if (v40 != 7)
      {
        v19 = 0x6857796669746F6ELL;
      }

      v20 = 0xEF79627261654E6ELL;
      if (v40 != 7)
      {
        v20 = 0xEF646E756F466E65;
      }

      if (v40 == 6)
      {
        v19 = 0x7265747461426E6FLL;
        v20 = 0xEF6C6C65436E4F79;
      }

      if (v40 == 4)
      {
        v21 = 0x4F7265776F506E6FLL;
      }

      else
      {
        v21 = 0x7265747461426E6FLL;
      }

      v22 = 0xEF694669576E4F79;
      if (v40 == 4)
      {
        v22 = 0xED00006C6C65436ELL;
      }

      if (v40 <= 5u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = v11;
      if (v40 == 2)
      {
        v24 = v11;
      }

      else
      {
        v24 = 0x4F7265776F506E6FLL;
      }

      v25 = v10;
      if (v40 == 2)
      {
        v26 = 0xE900000000000072;
      }

      else
      {
        v26 = v10;
      }

      if (v40)
      {
        v27 = 0x6F506D756964656DLL;
      }

      else
      {
        v27 = 0x7265776F50776F6CLL;
      }

      if (v40)
      {
        v28 = 0xEB00000000726577;
      }

      else
      {
        v28 = 0xE800000000000000;
      }

      if (v40 <= 1u)
      {
        v24 = v27;
        v26 = v28;
      }

      v29 = v40 <= 3u ? v24 : v19;
      v30 = v40 <= 3u ? v26 : v20;
      if (v13 == v29 && v14 == v30)
      {
        goto LABEL_81;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_82;
      }

      a2 = (a2 + 1) & v37;
      v10 = v25;
      v11 = v23;
    }

    while (((*(v38 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_78:
  v32 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v32 + 48) + a2) = v40;
  v33 = *(v32 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (!v34)
  {
    *(v32 + 16) = v35;
    return result;
  }

  __break(1u);
LABEL_81:

LABEL_82:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100DFC3AC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100DF3918(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100E0467C();
      goto LABEL_16;
    }

    sub_100E07228(v8 + 1);
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

Swift::Int sub_100DFC52C(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100DF3B78(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_100E047D8();
        goto LABEL_68;
      }

      sub_100E07460(v8 + 1);
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
              sub_100017D5C(v21, v20);
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
            sub_100017D5C(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_100017D5C(v21, v20);
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
              sub_100771A28(v35, v42, v43, v51);
              result = sub_100016590(v21, v20);
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
            sub_100017D5C(v21, v20);
            v14 = v47;
          }

          sub_100771A28(v51, v7, a2, &v50);
          result = sub_100016590(v21, v20);
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

Swift::Int sub_100DFC9A4(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DFB394(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_100E0653C(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_100E0E3B8(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DFCB14(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_100DF3DD8(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_100E04984(type metadata accessor for SharedBeaconRecord, &unk_1016BBF90, &qword_1013B3678, type metadata accessor for SharedBeaconRecord);
      goto LABEL_12;
    }

    v28 = v11;
    sub_100E0769C(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  Hasher.init(_seed:)();
  sub_1011D8230();
  v18 = Hasher._finalize()();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_100E0ED24(*(v16 + 48) + v21 * a2, v13, type metadata accessor for SharedBeaconRecord);
      v22 = sub_1011DB3D8(v13, a1);
      sub_100E0EC5C(v13, type metadata accessor for SharedBeaconRecord);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for SharedBeaconRecord);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DFCD90(uint64_t result, unint64_t a2, char a3)
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
    sub_100DF4074(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E0653C(&qword_1016BBE28, &qword_1013E9DA0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E07904(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:bytes:count:)();
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

uint64_t sub_100DFCEC8(uint64_t *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BeaconNamingRecord();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  v77 = v4;
  if (v14 <= v13 || (a3 & 1) == 0)
  {
    v73 = v9;
    if (a3)
    {
      sub_100DF42A4(v13 + 1);
    }

    else
    {
      if (v14 > v13)
      {
        sub_100E04984(type metadata accessor for BeaconNamingRecord, &qword_1016BBF88, &qword_1013E9E20, type metadata accessor for BeaconNamingRecord);
        goto LABEL_87;
      }

      sub_100E07AF8(v13 + 1);
    }

    v72 = *v4;
    v15 = *(v72 + 40);
    Hasher.init(_seed:)();
    v16 = *a1;
    v17 = a1[1];
    Data.hash(into:)();
    v18 = v8[5];
    type metadata accessor for UUID();
    sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
    v78 = v18;
    dispatch thunk of Hashable.hash(into:)();
    v79 = v8[6];
    dispatch thunk of Hashable.hash(into:)();
    v71 = *(a1 + v8[7]);
    Hasher._combine(_:)(v71);
    v19 = (a1 + v8[8]);
    v20 = v19[1];
    v70 = *v19;
    v69 = v20;
    String.hash(into:)();
    v21 = (a1 + v8[9]);
    v22 = v21[1];
    v66 = *v21;
    v68 = v22;
    if (v22)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v9 = v73;
    v23 = Hasher._finalize()();
    v24 = v72;
    v25 = v72 + 56;
    v26 = -1 << *(v72 + 32);
    a2 = v23 & ~v26;
    if ((*(v72 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v84 = ~v26;
      v27 = *a1;
      v28 = a1[1];
      v85 = *(v9 + 72);
      if (v27)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28 == 0xC000000000000000;
      }

      v30 = !v29;
      v83 = v30;
      v31 = v28 >> 62;
      v80 = 0;
      v81 = v27;
      v32 = HIDWORD(v27) - v27;
      v33 = __OFSUB__(HIDWORD(v27), v27);
      v76 = v33;
      v75 = v32;
      v74 = v28;
      v82 = BYTE6(v28);
      v67 = a1;
      while (1)
      {
        sub_100E0ED24(*(v24 + 48) + v85 * a2, v12, type metadata accessor for BeaconNamingRecord);
        v34 = *v12;
        v35 = v12[1];
        v36 = v35 >> 62;
        if (v35 >> 62 == 3)
        {
          break;
        }

        if (v36 > 1)
        {
          if (v36 != 2)
          {
            goto LABEL_46;
          }

          v42 = *(v34 + 16);
          v41 = *(v34 + 24);
          v43 = __OFSUB__(v41, v42);
          v40 = v41 - v42;
          if (v43)
          {
            goto LABEL_93;
          }

          if (v31 > 1)
          {
            goto LABEL_47;
          }
        }

        else if (v36)
        {
          LODWORD(v40) = HIDWORD(v34) - v34;
          if (__OFSUB__(HIDWORD(v34), v34))
          {
            goto LABEL_92;
          }

          v40 = v40;
          if (v31 > 1)
          {
LABEL_47:
            if (v31 != 2)
            {
              if (v40)
              {
                goto LABEL_23;
              }

              goto LABEL_71;
            }

            v46 = *(v81 + 16);
            v45 = *(v81 + 24);
            v43 = __OFSUB__(v45, v46);
            v44 = v45 - v46;
            if (v43)
            {
              __break(1u);
LABEL_90:
              __break(1u);
              goto LABEL_91;
            }

            goto LABEL_49;
          }
        }

        else
        {
          v40 = BYTE6(v35);
          if (v31 > 1)
          {
            goto LABEL_47;
          }
        }

LABEL_43:
        v44 = v82;
        if (v31)
        {
          v44 = v75;
          if (v76)
          {
            goto LABEL_90;
          }
        }

LABEL_49:
        if (v40 != v44)
        {
          goto LABEL_23;
        }

        if (v40 < 1)
        {
          goto LABEL_71;
        }

        if (v36 > 1)
        {
          if (v36 == 2)
          {
            v48 = *(v34 + 16);
            v47 = *(v34 + 24);
            v49 = __DataStorage._bytes.getter();
            if (v49)
            {
              v50 = __DataStorage._offset.getter();
              if (__OFSUB__(v48, v50))
              {
                goto LABEL_96;
              }

              v49 += v48 - v50;
            }

            if (__OFSUB__(v47, v48))
            {
              goto LABEL_95;
            }

LABEL_67:
            __DataStorage._length.getter();
            v53 = v80;
            sub_100771A28(v49, v81, v74, v87);
            v80 = v53;
            a1 = v67;
            v9 = v73;
            v24 = v72;
            if ((v87[0] & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_71;
          }

          *&v87[6] = 0;
          *v87 = 0;
        }

        else
        {
          if (v36)
          {
            v51 = v34;
            if (v34 >> 32 < v34)
            {
              goto LABEL_94;
            }

            v49 = __DataStorage._bytes.getter();
            if (v49)
            {
              v52 = __DataStorage._offset.getter();
              if (__OFSUB__(v51, v52))
              {
                goto LABEL_97;
              }

              v49 += v51 - v52;
            }

            goto LABEL_67;
          }

          *v87 = *v12;
          *&v87[8] = v35;
          v87[10] = BYTE2(v35);
          v87[11] = BYTE3(v35);
          v87[12] = BYTE4(v35);
          v87[13] = BYTE5(v35);
        }

        v54 = v80;
        sub_100771A28(v87, v81, v74, &v86);
        v80 = v54;
        if (!v86)
        {
          goto LABEL_23;
        }

LABEL_71:
        v55 = v8[5];
        if (static UUID.== infix(_:_:)())
        {
          v56 = v12 + v8[6];
          if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v12 + v8[7]) == v71)
          {
            v57 = (v12 + v8[8]);
            v58 = *v57 == v70 && v57[1] == v69;
            if (v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v59 = (v12 + v8[9]);
              v60 = v59[1];
              if (v60)
              {
                if (v68 && (*v59 == v66 && v60 == v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                {
LABEL_86:
                  sub_100E0EC5C(v12, type metadata accessor for BeaconNamingRecord);
                  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  goto LABEL_87;
                }
              }

              else if (!v68)
              {
                goto LABEL_86;
              }
            }
          }
        }

LABEL_23:
        sub_100E0EC5C(v12, type metadata accessor for BeaconNamingRecord);
        a2 = (a2 + 1) & v84;
        if (((*(v25 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      if (v34)
      {
        v37 = 0;
      }

      else
      {
        v37 = v35 == 0xC000000000000000;
      }

      v39 = !v37 || v31 < 3;
      if (((v39 | v83) & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_46:
      v40 = 0;
      if (v31 > 1)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    }
  }

LABEL_87:
  v61 = *v77;
  *(*v77 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v61 + 48) + *(v9 + 72) * a2, type metadata accessor for BeaconNamingRecord);
  v63 = *(v61 + 16);
  v43 = __OFADD__(v63, 1);
  v64 = v63 + 1;
  if (v43)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
  }

  *(v61 + 16) = v64;
  return result;
}

Swift::Int sub_100DFD698(Swift::Int result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_100DF46A4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_100E04B8C();
      goto LABEL_18;
    }

    sub_100E07EBC(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  result = Hasher._finalize()();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a4;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *v19 == v10 && *(v19 + 8) == a2;
      if (v21 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (((v20 ^ a3) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v10;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3 & 1;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_21:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}