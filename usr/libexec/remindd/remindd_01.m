unint64_t sub_100017700()
{
  v1 = 0xD000000000000020;
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_10001803C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v45 = a2;
  v5 = v4;
  v46 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v5 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v44 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v5 storeForAccountIdentifier:v18];

    v14 = v44;
    if (v19)
    {
      v20 = [v5 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v23; v24; i = v23)
      {
        v43 = a4;
        v25 = 0;
        v48 = v23 & 0xC000000000000001;
        v26 = v23 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v48)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= *(v26 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v25 + 32);
          }

          v31 = v30;
          v32 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          a4 = v24;
          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v25;
          if (v32 == v24)
          {
            a4 = v43;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        v24 = _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v44;
      [v44 set__unsafe_doesNotWorkUniversally_affectedStores:isa];
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v50;
  v35 = v46;
  v34[3] = v45;
  v34[4] = v35;
  v34[5] = v14;
  v34[6] = &v53;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_100412C00;
  *(v36 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0DE8;
  v37 = _Block_copy(aBlock);
  v38 = v14;

  [v38 performBlockAndWait:v37];
  _Block_release(v37);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (v53)
  {
    swift_willThrow();
    swift_errorRetain();

    sub_10003B40C(v50, v51, v52);
  }

  v40 = v52;
  if (!v52)
  {
    goto LABEL_27;
  }

  v42 = v50;
  v41 = v51;
  sub_100029344(v50, v51);

  *a4 = v42;
  a4[1] = v41;
  a4[2] = v40;

  sub_10003B40C(v50, v51, v52);
}

id sub_1000185BC()
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100791320;
  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x80000001007F6050;
  *(v0 + 88) = &type metadata for String;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = 0xD000000000000023;
  *(v0 + 72) = 0x80000001007F2430;
  v1 = rem_currentRuntimeVersion();
  *(v0 + 120) = &type metadata for Int;
  *(v0 + 96) = v1;
  v2 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [objc_opt_self() predicateWithFormat:v2 argumentArray:isa];

  return v4;
}

uint64_t sub_100018710(uint64_t result, int a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000F5104(a5, a6);
      swift_dynamicCast();
      return v16;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    sub_1000F5104(a5, a6);
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v10 = *(a4 + 40);
    v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v12 = -1 << *(a4 + 32);
    v9 = v11 & ~v12;
    if ((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v13 = ~v12;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v9);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_16;
        }

        v9 = (v9 + 1) & v13;
      }

      while (((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    __break(1u);
  }

  if ((v9 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v9)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v9 >> 6) + 56) >> v9) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * v9);
}

uint64_t sub_10001895C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for REMAnalyticsEvent();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v19[2] = 0;
  v19[3] = 0;
  (*(v16 + 104))(v19, enum case for REMAnalyticsEvent.storeControllerReadWrite(_:), v15);
  if ((REMAnalyticsEvent.isUsed.getter() & 1) == 0)
  {
    return (*(v16 + 8))(v19, v15);
  }

  v26 = *&v5[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_queue];
  v20 = swift_allocObject();
  v22 = v27;
  v21 = v28;
  v20[2] = v5;
  v20[3] = v22;
  v20[4] = a2;
  aBlock[4] = v21;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = v29;
  v23 = _Block_copy(aBlock);
  v24 = v5;

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v32 + 8))(v10, v7);
  (*(v30 + 8))(v14, v31);
  (*(v16 + 8))(v19, v15);
}

void *sub_100018CD8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100018D84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = sub_100017188(a2, a3);
  v9 = v8;
  v10 = *a4;
  swift_beginAccess();
  v11 = *(a1 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  v14 = sub_100005F4C(v7, v9);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v4) = v15;
  if (v13[3] < v19)
  {
    sub_100019274(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_100005F4C(v7, v9);
    if ((v4 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_6:
    *(a1 + v10) = v13;
    if ((v4 & 1) == 0)
    {
      v4 = v14;
      sub_10001986C(v14, v7, v9, 0, v13);

      v14 = v4;
    }

    v21 = v13[7];
    v22 = *(v21 + 8 * v14);
    v18 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v18)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v25 = v14;
    sub_100377BB0();
    v14 = v25;
  }

  *(v21 + 8 * v14) = v23;
  swift_endAccess();

  return sub_100018EFC();
}

uint64_t sub_100018EFC()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v22 - v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9);
  v12 = OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_postEventWorkItem;
  if (!*&v0[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_postEventWorkItem])
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    aBlock[4] = sub_1006E3C5C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FCDF8;
    v22[1] = _Block_copy(aBlock);
    v24 = _swiftEmptyArrayStorage;
    sub_10000AB38();
    v23 = v0;
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    v14 = v0;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = type metadata accessor for DispatchWorkItem();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = DispatchWorkItem.init(flags:block:)();

    v19 = *&v0[v12];
    *&v14[v12] = v18;

    v20 = *&v23[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_queue];
    static DispatchTime.now()();
    + infix(_:_:)();
    v21 = *(v2 + 8);
    v21(v6, v1);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v21)(v8, v1);
  }

  return result;
}

uint64_t sub_1000191C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019200(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100019274(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000F5104(&qword_1009431C8, &qword_1007A3BC8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_100019514(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMAccountStorageCDIngestor();
  swift_initStackObject();
  if (qword_100936098 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100006654(v4, qword_100946390);
  __chkstk_darwin(v5);
  sub_1000F5104(&qword_10094F630, qword_1007A3430);
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
  v6 = Sequence.map<A>(skippingError:_:)();
  if (v2)
  {

    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = v6;
  }

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_8:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      [objc_allocWithZone(type metadata accessor for REMAccount_Codable()) initWithStore:a2 storage:v11];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v8 != v10);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_10001986C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for RDSavedAlarmTriggers.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_100019990(void *a1)
{
  v45 = 0;
  v3 = [a1 remObjectIDWithError:&v45];
  if (v3)
  {
    v4 = v3;
    v5 = v45;
    v44 = [a1 type];
    v6 = [a1 name];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v9 = [a1 listIDsMergeableOrdering];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      if (qword_100935E80 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_100941670);
      v15 = v4;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543362;
        *(v18 + 4) = v15;
        *v19 = v4;
        v20 = v15;
        sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
      }

      v11 = 0;
      v13 = 0xC000000000000000;
    }

    v21 = objc_allocWithZone(REMAccountStorage);
    v22 = v4;
    v23 = String._bridgeToObjectiveC()();

    v1 = [v21 initWithObjectID:v22 type:v44 name:v23 nullableListIDsMergeableOrdering:0];

    isa = Data._bridgeToObjectiveC()().super.isa;
    [v1 setListIDsMergeableOrderingData:isa];

    [v1 setListIDsMergeableOrdering:0];
    v25 = [a1 externalIdentifier];
    [v1 setExternalIdentifier:v25];

    v26 = [a1 externalModificationTag];
    [v1 setExternalModificationTag:v26];

    v27 = [a1 daSyncToken];
    [v1 setDaSyncToken:v27];

    v28 = [a1 daPushKey];
    [v1 setDaPushKey:v28];

    v29 = [a1 daConstraintsDescriptionPath];
    [v1 setDaConstraintsDescriptionPath:v29];

    [v1 setDaAllowsCalendarAddDeleteModify:{objc_msgSend(a1, "daAllowsCalendarAddDeleteModify")}];
    [v1 setDaWasMigrated:{objc_msgSend(a1, "daWasMigrated")}];
    [v1 setDaSupportsSharedCalendars:{objc_msgSend(a1, "daSupportsSharedCalendars")}];
    [v1 setDebugSyncDisabled:{objc_msgSend(a1, "debugSyncDisabled")}];
    [v1 setInactive:{objc_msgSend(a1, "inactive")}];
    [v1 setDidChooseToMigrate:{objc_msgSend(a1, "didChooseToMigrate")}];
    [v1 setDidChooseToMigrateLocally:{objc_msgSend(a1, "didChooseToMigrateLocally")}];
    [v1 setDidFinishMigration:{objc_msgSend(a1, "didFinishMigration")}];
    [v1 setPersistenceCloudSchemaVersion:{objc_msgSend(a1, "persistenceCloudSchemaVersion")}];
    v30 = [a1 personID];
    [v1 setPersonID:v30];

    v31 = [a1 personIDSalt];
    if (v31)
    {
      v32 = v31;
      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v33, v35);
    }

    else
    {
      v36.super.isa = 0;
    }

    [v1 setPersonIDSalt:v36.super.isa];

    [v1 setResolutionTokenMap:0];
    v37 = [a1 resolutionTokenMapData];
    if (v37)
    {
      v38 = v37;
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v39, v41);
    }

    else
    {
      v42.super.isa = 0;
    }

    [v1 setResolutionTokenMapData:v42.super.isa];

    [v1 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
    [v1 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];

    sub_10001BBA0(v11, v13);
  }

  else
  {
    v8 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_10001A06C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_100019990(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_10001A230(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  isa = v5[8].isa;
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A820(a1);
  v15 = v14;
  v16 = v2[2];
  v17 = Notification._bridgeToObjectiveC()().super.isa;
  LODWORD(v16) = [v16 notificationContainsInternalChangesOnly:v17];

  if (v16)
  {

    if (qword_100936150 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100946FF0);
    v38 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v38, v19, "RDStoreControllerNotificationCenter: Store notification is ICCC or change tracking internal changes only. Skipping.", v20, 2u);
    }

    v21 = v38;
  }

  else
  {
    v37 = v9;
    if (qword_100936150 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100946FF0);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v25 = os_log_type_enabled(v23, v24);
    v38 = v5;
    v36 = v10;
    if (v25)
    {
      v35 = v15;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      if (v2[4])
      {
        v28 = v2[3];
        v29 = v2[4];
      }

      else
      {
        v29 = 0xE300000000000000;
        v28 = 7104878;
      }

      v30 = sub_10000668C(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "os_transaction INIT {name: com.apple.remindd.storeControllerNotificationCenter}, label: %s", v26, 0xCu);
      sub_10000607C(v27);

      v15 = v35;
    }

    else
    {
    }

    v31 = os_transaction_create();
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v32 = swift_allocObject();
    v32[2] = v15;
    v32[3] = v2;
    v32[4] = v31;
    aBlock[4] = sub_10001C880;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F1EF8;
    v33 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_10001BC00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
    swift_unknownObjectRelease();
    (v38[1].isa)(v8, v4);
    (*(v36 + 8))(v13, v37);
  }
}

uint64_t sub_10001A7D8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10001A820(uint64_t a1)
{
  v61[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61[1] = v1;
  v61[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61[3] = v2;
  v3 = 0;
  v4 = &_swiftEmptySetSingleton;
  v61[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61[5] = v5;
  v54 = &_swiftEmptySetSingleton;
  while (2)
  {
    v6 = &v61[2 * v3];
    v8 = *v6;
    v7 = v6[1];

    sub_10001AE08(a1, v8, v7);
    v10 = v9;

    if ((v10 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
      sub_10000CDE4(&qword_1009472F0, &qword_100943230, NSManagedObjectID_ptr);
      Set.Iterator.init(_cocoa:)();
      v10 = v61[6];
      v11 = v61[7];
      v12 = v61[8];
      v13 = v61[9];
      v14 = v61[10];
    }

    else
    {
      v13 = 0;
      v15 = -1 << *(v10 + 32);
      v11 = v10 + 56;
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(v10 + 56);
    }

    v53 = v3 + 1;
    v18 = (v12 + 64) >> 6;
    v56 = v10;
    v57 = v18;
    v58 = v11;
    while (1)
    {
      v19 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 < 0)
      {
        v19 = v4;
      }

      v55 = v19;
      v20 = v4 + 56;
      v21 = v13;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_2;
        }

        sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
        swift_dynamicCast();
        v24 = v60;
        v13 = v21;
        v59 = v14;
        v10 = v56;
        if (!v60)
        {
          goto LABEL_2;
        }

LABEL_21:
        v25 = [v24 entity];
        v26 = v25;
        if ((v4 & 0xC000000000000001) != 0)
        {
          break;
        }

        sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
        v29 = NSObject._rawHashValue(seed:)(*(v4 + 40));
        v30 = -1 << *(v4 + 32);
        v31 = v29 & ~v30;
        if (((*(v20 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
LABEL_32:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v54;
          v36 = v26;
          sub_10001B588(v36, v31, isUniquelyReferenced_nonNull_native);

          v4 = v54;
          v10 = v56;
          v11 = v58;
          goto LABEL_33;
        }

        v32 = ~v30;
        while (1)
        {
          v33 = *(*(v4 + 48) + 8 * v31);
          v34 = static NSObject.== infix(_:_:)();

          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v20 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v21 = v13;
        v14 = v59;
        v10 = v56;
LABEL_30:
        v18 = v57;
        v11 = v58;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

      v27 = v25;

      v28 = __CocoaSet.member(for:)();

      if (v28)
      {

        sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
        swift_dynamicCast();

        v21 = v13;
        v14 = v59;
        goto LABEL_30;
      }

      v37 = __CocoaSet.count.getter();
      if (__OFADD__(v37, 1))
      {
        goto LABEL_52;
      }

      v38 = sub_10037FC30(v55, v37 + 1);
      v60 = v38;
      v39 = *(v38 + 16);
      if (*(v38 + 24) <= v39)
      {
        sub_100381FF4(v39 + 1);
      }

      v40 = *(v38 + 40);
      v41 = v27;
      v42 = NSObject._rawHashValue(seed:)(v40);
      v43 = v38 + 56;
      v44 = -1 << *(v38 + 32);
      v45 = v42 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v38 + 56 + 8 * (v45 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v44) >> 6;
        v11 = v58;
        while (++v46 != v49 || (v48 & 1) == 0)
        {
          v50 = v46 == v49;
          if (v46 == v49)
          {
            v46 = 0;
          }

          v48 |= v50;
          v51 = *(v43 + 8 * v46);
          if (v51 != -1)
          {
            v47 = __clz(__rbit64(~v51)) + (v46 << 6);
            goto LABEL_47;
          }
        }

        goto LABEL_51;
      }

      v47 = __clz(__rbit64((-1 << v45) & ~*(v38 + 56 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      v11 = v58;
LABEL_47:
      *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      *(*(v38 + 48) + 8 * v47) = v41;
      ++*(v38 + 16);

      v54 = v38;
      v4 = v38;
      v10 = v56;
LABEL_33:
      v18 = v57;
      v14 = v59;
    }

LABEL_13:
    v22 = v21;
    v23 = v14;
    v13 = v21;
    if (v14)
    {
LABEL_17:
      v59 = (v23 - 1) & v23;
      v24 = *(*(v10 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v23)))));
      if (v24)
      {
        goto LABEL_21;
      }

LABEL_2:
      sub_10001B860();
      v3 = v53;
      if (v53 == 3)
      {
        swift_arrayDestroy();
        return;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_2;
    }

    v23 = *(v11 + 8 * v13);
    ++v22;
    if (v23)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_10001AE08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = Notification.userInfo.getter();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;

  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_10001B0D8(v14), (v8 & 1) == 0))
  {

    sub_10001B2CC(v14);
LABEL_8:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_9;
  }

  sub_100005EF0(*(v6 + 56) + 32 * v7, &v15);
  sub_10001B2CC(v14);

  if (*(&v16 + 1))
  {
    sub_100005EE0(&v15, v17);
    sub_100005EF0(v17, v14);
    sub_1000F5104(&qword_1009472F8, &qword_1007AA108);
    if (!swift_dynamicCast())
    {
      if (qword_100936150 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100006654(v9, qword_100946FF0);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14[0] = v13;
        *v12 = 136446210;
        *(v12 + 4) = sub_10000668C(a2, a3, v14);
        _os_log_impl(&_mh_execute_header, v10, v11, "Failed to cast userInfo[%{public}s] to Set<NSManagedObjectID>", v12, 0xCu);
        sub_10000607C(v13);
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100393618(_swiftEmptyArrayStorage);
        }
      }
    }

    sub_10000607C(v17);
    return;
  }

LABEL_9:
  sub_1000050A4(&v15, &qword_100939ED0, &qword_100791B10);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100393618(_swiftEmptyArrayStorage);
  }
}

unint64_t sub_10001B0D8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001B11C(a1, v4);
}

unint64_t sub_10001B11C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001B270(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001B2CC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10001B37C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000F5104(a2, a3);
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

void sub_10001B588(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001B868(v6 + 1, &qword_100942FD0, &qword_1007A3A50);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10019B2EC();
      goto LABEL_12;
    }

    sub_10001B37C(v6 + 1, &qword_100942FD0, &qword_1007A3A50);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
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

uint64_t sub_10001B868(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000F5104(a2, a3);
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

uint64_t sub_10001BBA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001BC00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10001BC4C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, id), uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v50 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v50);
  v11 = (v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v47 = v43 - v12;
  v56 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
LABEL_3:
    v54 = a2 >> 62;
    if (a2 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v57 = _swiftEmptyArrayStorage;
    sub_10001C83C(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
LABEL_78:

      __break(1u);
      return;
    }

    v16 = v15;
    v17 = v57;
    v49 = a1;
    if (!v15)
    {
      break;
    }

    v55 = a1 & 0xC000000000000001;
    v48 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v18 = a1;
    }

    else
    {
      v18 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v19 = a2 & 0xFFFFFFFFFFFFFF8;
    v45 = a2;
    v46 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v19 = a2;
    }

    v43[1] = v19;
    v43[2] = v18;
    v53 = a2 & 0xC000000000000001;
    v44 = v7 + 32;
    v20 = 4;
    v43[0] = v16;
    a2 = v16;
    while (1)
    {
      v21 = v56 ? _CocoaArrayWrapper.endIndex.getter() : *(v48 + 16);
      v22 = v20 - 4;
      if (v20 - 4 == v21)
      {
        break;
      }

      if (v55)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v48 + 16))
        {
          goto LABEL_74;
        }

        v23 = *(a1 + 8 * v20);
      }

      a1 = v23;
      if (v54)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
        v24 = v46;
      }

      else
      {
        v24 = v46;
        v25 = *(v46 + 16);
      }

      if (v22 == v25)
      {
        goto LABEL_78;
      }

      if (v53)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v24 + 16))
        {
          goto LABEL_70;
        }

        v26 = *(v45 + 8 * v20);
      }

      v27 = v26;
      v51(a1, v26);
      if (v4)
      {

        return;
      }

      v57 = v17;
      v29 = v17[2];
      v28 = v17[3];
      if (v29 >= v28 >> 1)
      {
        sub_10001C83C(v28 > 1, v29 + 1, 1);
        v17 = v57;
      }

      v17[2] = v29 + 1;
      (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v29, v11, v50);
      ++v20;
      --a2;
      a1 = v49;
      if (!a2)
      {
        a2 = v45;
        v30 = v46;
        v11 = v48;
        v16 = v43[0];
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  v11 = (a1 & 0xFFFFFFFFFFFFFF8);
  v55 = a1 & 0xC000000000000001;
  v30 = a2 & 0xFFFFFFFFFFFFFF8;
  v53 = a2 & 0xC000000000000001;
LABEL_39:
  if (a1 < 0)
  {
    v31 = a1;
  }

  else
  {
    v31 = v11;
  }

  v32 = v30;
  if (a2 < 0)
  {
    v30 = a2;
  }

  v44 = v30;
  v45 = v31;
  v46 = v7 + 32;
  v33 = v16 + 4;
  v48 = v11;
  if (!v56)
  {
LABEL_45:
    v34 = v11[2];
    goto LABEL_47;
  }

  while (1)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
LABEL_47:
    v35 = v33 - 4;
    if (v33 - 4 == v34)
    {
      break;
    }

    if (v55)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= v11[2])
      {
        goto LABEL_72;
      }

      v36 = *(a1 + 8 * v33);
    }

    v11 = v36;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_71;
    }

    if (v54)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
      v37 = v32;
      if (v35 == v38)
      {
LABEL_66:

        return;
      }
    }

    else
    {
      v37 = v32;
      if (v35 == *(v32 + 16))
      {
        goto LABEL_66;
      }
    }

    if (v53)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= *(v37 + 16))
      {
        goto LABEL_73;
      }

      v39 = *(a2 + 8 * v33);
    }

    v40 = v39;
    v51(v11, v39);
    if (v4)
    {

      return;
    }

    v57 = v17;
    v42 = v17[2];
    v41 = v17[3];
    if (v42 >= v41 >> 1)
    {
      sub_10001C83C(v41 > 1, v42 + 1, 1);
      v17 = v57;
    }

    v17[2] = v42 + 1;
    (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v42, v47, v50);
    ++v33;
    v11 = v48;
    a1 = v49;
    if (!v56)
    {
      goto LABEL_45;
    }
  }
}

size_t sub_10001C184(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F5104(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_10001C360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [objc_opt_self() currentThread];
  v10 = [v9 qualityOfService];

  sub_10043B8AC(a1, v10);
  v12 = v11;
  LOBYTE(v13) = v10 + 1;
  v14 = &qword_100936000;
  if ((v10 + 1) > 0x22)
  {
    goto LABEL_10;
  }

  if (((1 << v13) & 0x40401) != 0)
  {
    v13 = *(a2 + 56);
    if (v13)
    {
LABEL_14:
      v26 = v13;
      v27 = sub_100023058(v12);

      sub_100023B4C(v27, 0, 0);

      goto LABEL_15;
    }

    __break(1u);
  }

  if (((1 << v13) & 0x404000000) == 0)
  {
LABEL_10:
    if (qword_100936150 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v37 = a2;
  v15 = *(a2 + 56);
  if (!v15)
  {
    __break(1u);
    goto LABEL_27;
  }

  v10 = v15;
  v36 = sub_100023058(v12);

  v16 = qword_1009394D0;
  v17 = *&v10[qword_1009394D0];
  *v8 = v17;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  a2 = v5[13];
  (a2)(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v14 = v5[1];
  (v14)(v8, v4);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_100024350();
  v19 = *&v10[v16];
  *v8 = v19;
  (a2)(v8, v12, v4);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (v14)(v8, v4);
  if ((v19 & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
LABEL_11:
    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100946FF0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      *(v25 + 4) = v10;
    }

    v13 = *(a2 + 56);
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_27:
    __break(1u);
    return;
  }

  swift_beginAccess();

  sub_1003561D4(v21);
  swift_endAccess();

  sub_10043DF44();

  a2 = v37;
  v14 = &qword_100936000;
LABEL_15:
  if (v14[42] != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006654(v28, qword_100946FF0);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v32;
    *v31 = 136315138;
    if (*(a2 + 32))
    {
      v33 = *(a2 + 24);
      v34 = *(a2 + 32);
    }

    else
    {
      v34 = 0xE300000000000000;
      v33 = 7104878;
    }

    v35 = sub_10000668C(v33, v34, &v38);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "os_transaction RELEASE {name: com.apple.remindd.storeControllerNotificationCenter}, label: %s", v31, 0xCu);
    sub_10000607C(v32);
  }
}

size_t sub_10001C83C(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ED70, &qword_10079D4E8, &type metadata accessor for REMAccountsListDataView.Model.Account);
  *v3 = result;
  return result;
}

char *sub_10001C88C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED28, &qword_10079D470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10001C998(void *a1@<X0>, void *a2@<X1>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v167 = a5;
  v172 = a4;
  v166 = a2;
  v158 = a6;
  v8 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v9 = *(v8 - 8);
  v180 = v8;
  v181 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v179 = (&v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = _s10PredicatesOMa_3();
  v12 = *(*(v159 - 8) + 64);
  __chkstk_darwin(v159);
  v14 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s10PredicatesOMa_1();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v143 - v20;
  v22 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  v165 = *(v22 - 8);
  v23 = *(v165 + 64);
  __chkstk_darwin(v22);
  v25 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v178;
  sub_10001E540(a1, a3, v172);
  v175 = v26;
  if (v26)
  {
    return;
  }

  v163 = v25;
  v157 = v22;
  v152 = v15;
  v148 = v21;
  v149 = v19;
  v147 = v14;
  v162 = a1;
  v161 = a3;
  v153 = v28;
  v29 = &v190;
  v169 = v27;
  if (v27 >> 62)
  {
    goto LABEL_125;
  }

  v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v31 = v181;
  v32 = v157;
  v33 = v165;
  v34 = v163;
  v35 = v166;
  if (!v30)
  {
LABEL_105:

    v135 = v35;
    REMAccountsListDataView.Model.Account.init(account:children:)();

    return;
  }

  v189 = _swiftEmptyArrayStorage;
  sub_100030FA0(0, v30 & ~(v30 >> 63), 0);
  if (v30 < 0)
  {
    goto LABEL_127;
  }

  v36 = 0;
  v168 = v169 & 0xC000000000000001;
  v151 = v169 & 0xFFFFFFFFFFFFFF8;
  v150 = v169 + 32;
  v160 = (v33 + 104);
  v37 = v189;
  v176 = v31 + 32;
  v177 = (v31 + 104);
  v164 = v33 + 32;
  v156 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
  v145 = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
  v170 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
  v29 = (&v193 + 4);
  v174 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
  v146 = v30;
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_122;
    }

    if (v168)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *(v151 + 16))
      {
        goto LABEL_124;
      }

      v39 = *(v150 + 8 * v36);
    }

    v40 = *(v39 + 16);
    v173 = v38;
    if ((v40 & 0x8000000000000000) != 0)
    {
LABEL_38:
      v72 = (v40 & 0x7FFFFFFFFFFFFFFFLL);

      *v34 = v72;
      (*v160)(v34, v156, v32);
      goto LABEL_102;
    }

    v41 = [v40 isGroup];
    v40 = *(v39 + 16);
    if (v41)
    {
      break;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

    v71 = v40;
    if ([v71 isGroup])
    {

      v136 = objc_opt_self();
      v137 = String._bridgeToObjectiveC()();
      v138 = [v136 internalErrorWithDebugDescription:v137];

      v175 = v138;
      swift_willThrow();

      return;
    }

    *v34 = v71;
    (*v160)(v34, v145, v32);
LABEL_102:
    v189 = v37;
    v131 = v37[2];
    v130 = v37[3];
    if (v131 >= v130 >> 1)
    {
      sub_100030FA0(v130 > 1, v131 + 1, 1);
      v37 = v189;
    }

    v37[2] = v131 + 1;
    (*(v33 + 32))(v37 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v131, v34, v32);
    v36 = v173;
    if (v173 == v30)
    {
      goto LABEL_105;
    }
  }

  v155 = v39;
  v154 = v37;
  v42 = [v40 & 0x7FFFFFFFFFFFFFFFLL remObjectID];
  v43 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v162, "type")}];
  v44 = [v43 supportsCustomSmartLists];

  if (v44)
  {
    v45 = v148;
    *v148 = v42;
    *(v45 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    v46 = qword_100936528;
    v47 = v42;
    v48 = v175;
    v49 = v167;
    if (v46 != -1)
    {
      swift_once();
    }

    v50 = qword_100975238;
    v51 = sub_10001F6F4();
    v52 = sub_100405438(0, v50, v49, v51);

    if (qword_100936520 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v52 setSortDescriptors:isa];

    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v54 = NSManagedObjectContext.fetch<A>(_:)();
    if (v48)
    {
      v175 = v48;

      v139 = v45;
      goto LABEL_113;
    }

    v184 = v54;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v55 = Sequence.elements<A>(ofType:)();

    sub_100025434(v45, _s10PredicatesOMa_1);

    v56 = sub_1000271D0(v55, v172);

    v57 = v147;
    *v147 = v47;
    *(v57 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    v58 = v47;
    v59 = sub_100717C9C(v57, v161, v167);
    sub_100025434(v57, _s10PredicatesOMa_3);
    v178 = sub_1000303FC(v59, v172);
    v175 = 0;
    v60 = 0;
    v144 = v58;

    if (v56 >> 62)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v61 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v162;
    if (v61)
    {
      v188 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v61 < 0)
      {
        goto LABEL_129;
      }

      v63 = 0;
      v29 = &v192;
      v171 = (v56 & 0xFFFFFFFFFFFFFF8);
      do
      {
        v66 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_117;
        }

        if ((v56 & 0xC000000000000001) != 0)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v63 >= v171[2])
          {
            goto LABEL_121;
          }

          v67 = *(v56 + 8 * v63 + 32);
        }

        v68 = v67;
        _s19PolymorphicListItemCMa();
        v69 = swift_allocObject();
        v185 = type metadata accessor for REMList_Codable();
        v186 = sub_100030E90(&qword_100948C18, &type metadata accessor for REMList_Codable);
        v187 = sub_100030E90(&qword_100948C20, &type metadata accessor for REMList_Codable);
        v184 = v68;
        sub_100030E2C(&v184, &v183);
        v70 = v68;
        sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
        if (swift_dynamicCast())
        {

          sub_10000607C(&v184);
          v64 = v182;
        }

        else
        {
          type metadata accessor for REMSmartList_Codable();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_131;
          }

          sub_10000607C(&v184);
          v64 = v182 | 0x8000000000000000;
        }

        *(v69 + 16) = v64;
        sub_10000607C(&v183);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v65 = v188[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v63;
      }

      while (v66 != v61);

      v95 = v188;
      v60 = v175;
      v62 = v162;
    }

    else
    {

      v95 = _swiftEmptyArrayStorage;
    }

    v96 = v178;
    if (v178 >> 62)
    {
      v111 = v178;
      v97 = _CocoaArrayWrapper.endIndex.getter();
      v96 = v111;
      if (v97)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v97 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v97)
      {
LABEL_61:
        v171 = v95;
        v98 = v96;
        v188 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v97 < 0)
        {
          goto LABEL_130;
        }

        v99 = 0;
        v100 = v98;
        v101 = v98 & 0xC000000000000001;
        v102 = v98 & 0xFFFFFFFFFFFFFF8;
        do
        {
          v105 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_118;
          }

          if (v101)
          {
            v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v99 >= *(v102 + 16))
            {
              goto LABEL_123;
            }

            v106 = *(v100 + 8 * v99 + 32);
          }

          v107 = v106;
          _s19PolymorphicListItemCMa();
          v108 = swift_allocObject();
          v185 = type metadata accessor for REMSmartList_Codable();
          v186 = sub_100030E90(&qword_100948C30, &type metadata accessor for REMSmartList_Codable);
          v187 = sub_100030E90(&qword_100948C38, &type metadata accessor for REMSmartList_Codable);
          v184 = v107;
          sub_100030E2C(&v184, &v183);
          v109 = v107;
          sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
          type metadata accessor for REMList_Codable();
          if (swift_dynamicCast())
          {

            sub_10000607C(&v184);
            v103 = v182;
          }

          else
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_131;
            }

            sub_10000607C(&v184);
            v103 = v182 | 0x8000000000000000;
          }

          *(v108 + 16) = v103;
          sub_10000607C(&v183);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v104 = v188[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v99;
          v100 = v178;
        }

        while (v105 != v97);

        v110 = v188;
        v60 = v175;
        v62 = v162;
        v95 = v171;
        goto LABEL_79;
      }
    }

    v110 = _swiftEmptyArrayStorage;
LABEL_79:
    v184 = v95;
    sub_1000122B8(v110);
    v112 = v184;
    v184 = v153;
    v113 = v153;
    v114 = [v62 remObjectID];
    v115 = sub_10049A5C4(v112, v114, v161, &v184);
    v83 = v60;
    if (v60)
    {
      v175 = v60;

      v140 = v184;

      return;
    }

    v94 = v115;

    goto LABEL_81;
  }

  v73 = v149;
  *v149 = v42;
  *(v73 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  v74 = v42;
  v75 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v76 = [objc_allocWithZone(NSFetchRequest) init];
  v77 = [swift_getObjCClassFromMetadata() entity];
  [v76 setEntity:v77];

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v78 = Array._bridgeToObjectiveC()().super.isa;
  [v76 setAffectedStores:v78];

  [v76 setPredicate:v75];
  v79 = v175;
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v80 = Array._bridgeToObjectiveC()().super.isa;
  [v76 setSortDescriptors:v80];

  v81 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v79)
  {
    v171 = v74;
    v184 = v81;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v82 = Sequence.elements<A>(ofType:)();

    sub_100025434(v73, _s10PredicatesOMa_1);

    v83 = 0;
    v84 = sub_1000271D0(v82, v172);

    if (v84 >> 62)
    {
      v85 = _CocoaArrayWrapper.endIndex.getter();
      if (v85)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v85)
      {
LABEL_44:
        v175 = 0;
        v188 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v85 < 0)
        {
          goto LABEL_128;
        }

        v86 = 0;
        v178 = v84 & 0xFFFFFFFFFFFFFF8;
        do
        {
          v89 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_116;
          }

          if ((v84 & 0xC000000000000001) != 0)
          {
            v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v86 >= *(v178 + 16))
            {
              goto LABEL_120;
            }

            v90 = *(v84 + 8 * v86 + 32);
          }

          v91 = v90;
          _s19PolymorphicListItemCMa();
          v92 = swift_allocObject();
          v185 = type metadata accessor for REMList_Codable();
          v186 = sub_100030E90(&qword_100948C18, &type metadata accessor for REMList_Codable);
          v187 = sub_100030E90(&qword_100948C20, &type metadata accessor for REMList_Codable);
          v184 = v91;
          sub_100030E2C(&v184, &v183);
          v93 = v91;
          sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
          if (swift_dynamicCast())
          {

            sub_10000607C(&v184);
            v87 = v182;
          }

          else
          {
            type metadata accessor for REMSmartList_Codable();
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_131;
            }

            sub_10000607C(&v184);
            v87 = v182 | 0x8000000000000000;
          }

          *(v92 + 16) = v87;
          sub_10000607C(&v183);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v88 = v188[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v86;
        }

        while (v89 != v85);

        v94 = v188;
        v83 = v175;
        goto LABEL_81;
      }
    }

    v94 = _swiftEmptyArrayStorage;
LABEL_81:
    if (!(v94 >> 62))
    {
      v116 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v116)
      {
        goto LABEL_83;
      }

      goto LABEL_99;
    }

    if (!_CocoaArrayWrapper.endIndex.getter() || (v116 = _CocoaArrayWrapper.endIndex.getter()) == 0)
    {
LABEL_99:

LABEL_100:
      sub_1004A05A0(v163);
      v175 = v83;
      if (v83)
      {

        return;
      }

      v37 = v154;
      v35 = v166;
      v32 = v157;
      v33 = v165;
      v34 = v163;
      v30 = v146;
      goto LABEL_102;
    }

LABEL_83:
    v184 = _swiftEmptyArrayStorage;
    sub_100253C88(0, v116 & ~(v116 >> 63), 0);
    if ((v116 & 0x8000000000000000) == 0)
    {
      v175 = v83;
      v117 = 0;
      v118 = v184;
      v178 = v94 & 0xC000000000000001;
      v29 = &v192;
      v171 = (v94 & 0xFFFFFFFFFFFFFF8);
      v119 = v94;
      while (1)
      {
        v120 = v117 + 1;
        if (__OFADD__(v117, 1))
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
          v141 = *(v29 - 32);
          v30 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        if (v178)
        {
          v121 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 16);
          if ((v121 & 0x8000000000000000) != 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (v117 >= v171[2])
          {
            goto LABEL_119;
          }

          v124 = *(v94 + 8 * v117 + 32);

          v121 = *(v124 + 16);
          if ((v121 & 0x8000000000000000) != 0)
          {
LABEL_92:
            v122 = (v121 & 0x7FFFFFFFFFFFFFFFLL);
            v123 = &v191 + 4;
            goto LABEL_93;
          }
        }

        v122 = v121;
        if ([v122 isGroup])
        {

          v132 = objc_opt_self();
          v133 = String._bridgeToObjectiveC()();
          v134 = [v132 internalErrorWithDebugDescription:v133];

          v175 = v134;
          swift_willThrow();

          return;
        }

        v123 = &v193 + 4;
LABEL_93:
        v125 = *(v123 - 64);

        v126 = v179;
        *v179 = v122;
        v127 = v180;
        (*v177)(v126, v125, v180);
        v184 = v118;
        v129 = v118[2];
        v128 = v118[3];
        if (v129 >= v128 >> 1)
        {
          sub_100253C88(v128 > 1, v129 + 1, 1);
          v127 = v180;
          v118 = v184;
        }

        v118[2] = v129 + 1;
        (*(v181 + 32))(v118 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v129, v126, v127);
        ++v117;
        v94 = v119;
        if (v120 == v116)
        {

          v83 = v175;
          goto LABEL_100;
        }
      }
    }

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
    if (qword_100936260 != -1)
    {
      swift_once();
    }

    v142 = type metadata accessor for Logger();
    sub_100006654(v142, qword_100948A78);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown or unsupported REM object type for REMAccountsListDataView.ListItem", 75, 2);
    __break(1u);
    return;
  }

  v175 = v79;

  v139 = v73;
LABEL_113:
  sub_100025434(v139, _s10PredicatesOMa_1);
}

char *sub_10001E288(char *a1, int64_t a2, char a3)
{
  result = sub_10001C88C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _s10PredicatesOMa_3()
{
  result = qword_100950BB0;
  if (!qword_100950BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001E314(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000060C8(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000060C8(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
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

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

void sub_10001E540(void *a1, unint64_t a2, void *a3)
{
  v4 = v3;
  i = a1;
  v8 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(a1, "type")}];
  v9 = [v8 supportsCustomSmartLists];

  v10 = sub_10001EF58(a2);
  if (v9)
  {
    if (v3)
    {
      return;
    }

    v9 = sub_1000271D0(v10, a3);

    sub_10002D468(i, a2, 0);
    v4 = sub_1000303FC(v11, a3);

    if (v9 >> 62)
    {
      goto LABEL_44;
    }

    v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = v4;
    if (v19)
    {
      goto LABEL_24;
    }

LABEL_45:

    v29 = _swiftEmptyArrayStorage;
LABEL_46:
    if (v4 >> 62)
    {
      goto LABEL_63;
    }

    v30 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      while (1)
      {
        v47 = v29;
        v59 = _swiftEmptyArrayStorage;
        v29 = &v59;
        v20 = specialized ContiguousArray.reserveCapacity(_:)();
        if (v30 < 0)
        {
          break;
        }

        v31 = 0;
        v50 = v30;
        v51 = v4 & 0xC000000000000001;
        v48 = v4 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v34 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v51)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= *(v48 + 16))
            {
              goto LABEL_62;
            }

            v35 = *(v4 + 8 * v31 + 32);
          }

          v36 = v35;
          _s19PolymorphicListItemCMa();
          v37 = swift_allocObject();
          v56 = type metadata accessor for REMSmartList_Codable();
          v57 = sub_100030E90(&qword_100948C30, &type metadata accessor for REMSmartList_Codable);
          v58 = sub_100030E90(&qword_100948C38, &type metadata accessor for REMSmartList_Codable);
          v55[0] = v36;
          sub_100030E2C(v55, v54);
          v38 = v36;
          sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
          type metadata accessor for REMList_Codable();
          if (swift_dynamicCast())
          {

            sub_10000607C(v55);
            v32 = v53;
          }

          else
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_76;
            }

            sub_10000607C(v55);
            v32 = v53 | 0x8000000000000000;
          }

          *(v37 + 16) = v32;
          v4 = v52;
          sub_10000607C(v54);
          v29 = &v59;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v33 = v59[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v31;
          if (v34 == v50)
          {

            v39 = v59;
            v29 = v47;
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v30 = _CocoaArrayWrapper.endIndex.getter();
        if (!v30)
        {
          goto LABEL_64;
        }
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_64:

    v39 = _swiftEmptyArrayStorage;
LABEL_65:
    v55[0] = v29;
    sub_1000122B8(v39);
    v40 = v55[0];
    v20 = [i remObjectID];
    if (v20)
    {
      if (!(v40 >> 62))
      {
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
        {
LABEL_74:

          return;
        }

        goto LABEL_68;
      }

LABEL_73:
      v44 = v20;
      v45 = _CocoaArrayWrapper.endIndex.getter();
      v20 = v44;
      if (v45 <= 1)
      {
        goto LABEL_74;
      }

LABEL_68:
      v41 = v20;
      v42 = sub_100012370(v41, a2);
      if (v42)
      {
        _s19PolymorphicListItemCMa();
        v43 = v42;
        REMOrderedIdentifierMap.reorder<A>(objects:)();
      }

      else
      {
      }
    }
  }

  else if (!v3)
  {
    a2 = sub_1000271D0(v10, a3);

    if (a2 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v59 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((i & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_44:
        v19 = _CocoaArrayWrapper.endIndex.getter();
        v52 = v4;
        if (!v19)
        {
          goto LABEL_45;
        }

LABEL_24:
        v59 = _swiftEmptyArrayStorage;
        v20 = specialized ContiguousArray.reserveCapacity(_:)();
        if (v19 < 0)
        {
          __break(1u);
          goto LABEL_72;
        }

        v21 = 0;
        v49 = v19;
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if ((v9 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v25 = *(v9 + 8 * v21 + 32);
          }

          v26 = v25;
          _s19PolymorphicListItemCMa();
          v27 = swift_allocObject();
          v4 = type metadata accessor for REMList_Codable();
          v56 = v4;
          v57 = sub_100030E90(&qword_100948C18, &type metadata accessor for REMList_Codable);
          v58 = sub_100030E90(&qword_100948C20, &type metadata accessor for REMList_Codable);
          v55[0] = v26;
          sub_100030E2C(v55, v54);
          v28 = v26;
          sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
          if (swift_dynamicCast())
          {

            sub_10000607C(v55);
            v22 = v53;
          }

          else
          {
            type metadata accessor for REMSmartList_Codable();
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_76:
              if (qword_100936260 != -1)
              {
                swift_once();
              }

              v46 = type metadata accessor for Logger();
              sub_100006654(v46, qword_100948A78);
              sub_1001F67C8(_swiftEmptyArrayStorage);
              sub_1001F67C8(_swiftEmptyArrayStorage);
              sub_10054573C("unknown or unsupported REM object type for REMAccountsListDataView.ListItem", 75, 2);
              __break(1u);
              return;
            }

            sub_10000607C(v55);
            v22 = v53 | 0x8000000000000000;
          }

          *(v27 + 16) = v22;
          sub_10000607C(v54);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v23 = v59[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v21;
          if (v24 == v49)
          {

            v29 = v59;
            v4 = v52;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v12 = 0;
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if ((a2 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v15 = *(a2 + 8 * v12 + 32);
          }

          v16 = v15;
          _s19PolymorphicListItemCMa();
          v17 = swift_allocObject();
          v9 = type metadata accessor for REMList_Codable();
          v56 = v9;
          v57 = sub_100030E90(&qword_100948C18, &type metadata accessor for REMList_Codable);
          v58 = sub_100030E90(&qword_100948C20, &type metadata accessor for REMList_Codable);
          v55[0] = v16;
          sub_100030E2C(v55, v54);
          v18 = v16;
          sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
          if (swift_dynamicCast())
          {

            sub_10000607C(v55);
            v13 = v53;
          }

          else
          {
            type metadata accessor for REMSmartList_Codable();
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_76;
            }

            sub_10000607C(v55);
            v13 = v53 | 0x8000000000000000;
          }

          *(v17 + 16) = v13;
          sub_10000607C(v54);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v4 = v59[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v12;
          if (v14 == i)
          {
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_42:
  }
}

uint64_t _s10PredicatesOMa_1()
{
  result = qword_10094C470;
  if (!qword_10094C470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Class sub_10001EF58(uint64_t a1)
{
  v3 = v1;
  v49 = a1;
  v4 = _s10PredicatesOMa_1();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54[0] = 0;
  v8 = [v3 remObjectIDWithError:v54];
  v9 = v54[0];
  if (!v8)
  {
    v34.super.isa = v54[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v34.super.isa;
  }

  *v7 = v8;
  swift_storeEnumTagMultiPayload();
  v10 = v9;
  v11 = sub_10001F6F4();
  sub_100025374(v7, _s10PredicatesOMa_1);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007953F0;
  *(v12 + 32) = v3;
  v54[0] = v12;
  v45[1] = v3;
  sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
  sub_1000254F4();
  v13 = Sequence.compactMapToSet<A>(_:)();
  v46 = v2;
  sub_10002595C(v13);

  v14 = sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  v47 = v14;
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v15 setAffectedStores:isa];

  v48 = v11;
  [v15 setPredicate:v11];

  if (qword_100936520 != -1)
  {
LABEL_30:
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v18 = Array._bridgeToObjectiveC()().super.isa;
  [v15 setSortDescriptors:v18];

  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v19 = qword_100975238;
  if (qword_100975238 >> 62)
  {
    v42 = qword_100975238;
    v43 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v42;
    v20 = v43;
  }

  else
  {
    v20 = *((qword_100975238 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = _swiftEmptyArrayStorage;
  if (!v20)
  {
LABEL_20:
    v34.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setRelationshipKeyPathsForPrefetching:v34.super.isa];

    v35 = v46;
    v36 = NSManagedObjectContext.fetch<A>(_:)();
    v22 = v35;
    if (!v35)
    {
      v12 = v15;
      v54[0] = v36;
      sub_1000F5104(&qword_10093F6F0, qword_10079A300);
      sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
      v21 = Sequence.elements<A>(ofType:)();

      if (qword_100936098 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }

    return v34.super.isa;
  }

  v22 = v19;
  v55 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
LABEL_24:
    v37 = type metadata accessor for Logger();
    v38 = sub_100006654(v37, qword_100946390);
    v39 = __chkstk_darwin(v38);
    v54[0] = v21;
    __chkstk_darwin(v39);
    v40 = Sequence.map<A>(skippingError:_:)();
    if (v22)
    {

      return _swiftEmptyArrayStorage;
    }

    else
    {
      v34.super.isa = v40;
    }

    return v34.super.isa;
  }

  v45[0] = v15;
  v23 = 0;
  v24 = v55;
  v25 = v22;
  v51 = v22;
  v52 = v22 & 0xC000000000000001;
  v50 = v22 & 0xFFFFFFFFFFFFFF8;
  v15 = v20;
  while (1)
  {
    v12 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v52)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *(v50 + 16))
      {
        goto LABEL_29;
      }

      v26 = *(v25 + 8 * v23 + 32);
    }

    v27 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v28)
    {
      break;
    }

    v29 = v27;
    v30 = v28;

    v55 = v24;
    v32 = v24[2];
    v31 = v24[3];
    if (v32 >= v31 >> 1)
    {
      sub_100026EF4((v31 > 1), v32 + 1, 1);
      v24 = v55;
    }

    v24[2] = v32 + 1;
    v33 = &v24[2 * v32];
    v33[4] = v29;
    v33[5] = v30;
    ++v23;
    v25 = v51;
    if (v12 == v15)
    {
      v15 = v45[0];
      goto LABEL_20;
    }
  }

  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v44._object = 0x80000001007EC120;
  v44._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v44);
  v53 = v26;
  sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10001F6F4()
{
  v332 = type metadata accessor for REMSearchableListType();
  v334 = *(v332 - 8);
  v1 = *(v334 + 64);
  v2 = __chkstk_darwin(v332);
  v330 = &v289[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v331 = &v289[-v4];
  v337 = type metadata accessor for REMStringMatchingStyle();
  v339 = *(v337 - 8);
  v5 = *(v339 + 64);
  v6 = __chkstk_darwin(v337);
  v333 = &v289[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v335 = &v289[-v8];
  v342 = type metadata accessor for REMSearchCriterion();
  v341 = *(v342 - 8);
  v9 = *(v341 + 64);
  v10 = __chkstk_darwin(v342);
  v340 = &v289[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v338 = &v289[-v13];
  v14 = __chkstk_darwin(v12);
  v336 = &v289[-v15];
  v16 = __chkstk_darwin(v14);
  v343 = &v289[-v17];
  __chkstk_darwin(v16);
  v344 = &v289[-v18];
  v348 = type metadata accessor for UUID();
  v346 = *(v348 - 8);
  v19 = *(v346 + 64);
  __chkstk_darwin(v348);
  v21 = &v289[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v347 = *(v22 - 8);
  v23 = *(v347 + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v289[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v24);
  v29 = &v289[-v28];
  v30 = __chkstk_darwin(v27);
  v32 = &v289[-v31];
  v33 = __chkstk_darwin(v30);
  v35 = &v289[-v34];
  __chkstk_darwin(v33);
  v345 = &v289[-v36];
  v37 = _s10PredicatesOMa_1();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = &v289[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v352 = _swiftEmptyArrayStorage;
  sub_1000230E4(v0, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  LODWORD(v42) = 1;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  LODWORD(v46) = 1;
  LODWORD(v47) = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v102 = *v40;
      KeyPath = swift_getKeyPath();
      v104 = [v102 uuid];
      v105 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v105, 0, 1, v348);
      sub_1000239F0(KeyPath, v105);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v272 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v43 = 0;
      v44 = 0;
      v45 = 0;
      LODWORD(v42) = 0;
      LODWORD(v46) = 0;
      goto LABEL_209;
    case 2:
      v88 = *v40;
      v89 = swift_getKeyPath();
      v90 = [v88 uuid];
      v91 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v91, 0, 1, v348);
      sub_1000239F0(v89, v91);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v249 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v43 = 0;
      v45 = 0;
      LODWORD(v42) = 0;
      LODWORD(v46) = 0;
      v44 = 1;
      goto LABEL_209;
    case 3:
      v32 = *v40;
      v122 = v40[8];
      v123 = swift_getKeyPath();
      v124 = [v32 uuid];
      v125 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v125, 0, 1, v348);
      sub_1000239F0(v123, v125);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v274 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v122)
      {
        goto LABEL_75;
      }

      swift_getKeyPath();
      sub_100024EC8();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] < v352[3] >> 1)
      {
        goto LABEL_74;
      }

      goto LABEL_253;
    case 4:
      v92 = *v40;
      v32 = swift_getKeyPath();
      if (v92 >> 62)
      {
        v93 = _CocoaArrayWrapper.endIndex.getter();
        if (v93)
        {
LABEL_44:
          v344 = v32;
          v349 = _swiftEmptyArrayStorage;
          sub_100253218(0, v93 & ~(v93 >> 63), 0);
          if (v93 < 0)
          {
            __break(1u);
            goto LABEL_251;
          }

          v94 = 0;
          v95 = v349;
          v96 = (v346 + 56);
          do
          {
            if ((v92 & 0xC000000000000001) != 0)
            {
              v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v97 = *(v92 + 8 * v94 + 32);
            }

            v98 = v97;
            v99 = [v97 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v96)(v35, 0, 1, v348);
            v349 = v95;
            v101 = v95[2];
            v100 = v95[3];
            if (v101 >= v100 >> 1)
            {
              sub_100253218(v100 > 1, v101 + 1, 1);
              v95 = v349;
            }

            ++v94;
            v95[2] = v101 + 1;
            sub_100100FB4(v35, v95 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v101);
          }

          while (v93 != v94);

          v32 = v344;
LABEL_205:
          sub_1003EDAA8(v32, v95);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (v352[2] >= v352[3] >> 1)
          {
            v283 = v352[2];
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

LABEL_207:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v43 = 0;
          v44 = 0;
          v45 = 0;
          LODWORD(v42) = 0;
          goto LABEL_208;
        }
      }

      else
      {
        v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v93)
        {
          goto LABEL_44;
        }
      }

      v95 = _swiftEmptyArrayStorage;
      goto LABEL_205;
    case 5:
      v65 = *v40;
      sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_100791300;
      *(v66 + 56) = sub_1000F5104(&qword_100937028, &qword_100791C10);
      *(v66 + 64) = sub_10000CB48(&unk_10094F0D0, &qword_100937028, &qword_100791C10);
      *(v66 + 32) = v65;
      NSPredicate.init(format:_:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v242 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_207;
    case 6:
      v67 = *v40;
      v68 = swift_getKeyPath();
      v69 = [v67 uuid];
      v70 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v70, 0, 1, v348);
      sub_1000239F0(v68, v70);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v243 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v71 = swift_getKeyPath();
      sub_1005509B8(v71, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v244 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      v73 = swift_getKeyPath();
      v74 = sub_1003918A8(v73, 2);

      *(inited + 32) = v74;
      v75 = swift_getKeyPath();
      v76 = sub_1003918A8(v75, 1);

      *(inited + 40) = v76;
      sub_100025060(inited);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v245 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v43 = 0;
      v45 = 0;
      v44 = 1;
      goto LABEL_208;
    case 7:
      v117 = v346;
      v118 = v40;
      v119 = v348;
      (*(v346 + 32))(v21, v118, v348);
      v120 = swift_getKeyPath();
      v121 = v345;
      (*(v117 + 16))(v345, v21, v119);
      (*(v117 + 56))(v121, 0, 1, v119);
      sub_1000239F0(v120, v121);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v273 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v119 = v348;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v117 + 8))(v21, v119);
      goto LABEL_191;
    case 8:
      v228 = *v40;
      v229 = swift_getKeyPath();
      v230 = [v228 uuid];
      v231 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v231, 0, 1, v348);
      sub_1000239F0(v229, v231);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v279 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v43 = 0;
      v44 = 0;
      LODWORD(v42) = 0;
      LODWORD(v46) = 0;
      LODWORD(v47) = 0;
      v45 = 1;
      goto LABEL_209;
    case 9:
      v81 = *v40;
      v82 = *(v40 + 1);
      v83 = swift_getKeyPath();
      v84 = [v81 uuid];
      v85 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v85, 0, 1, v348);
      sub_1000239F0(v83, v85);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v247 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v86 = swift_getKeyPath();
      v87 = sub_100270804(v82);

      sub_1003EDAE0(v86, v87);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v248 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v43 = 0;
      v44 = 0;
      v45 = 0;
      LODWORD(v47) = 0;
      LODWORD(v46) = 1;
      goto LABEL_209;
    case 10:
      v106 = *v40;
      v107 = swift_getKeyPath();
      if (!(v106 >> 62))
      {
        v108 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v108)
        {
          goto LABEL_58;
        }

LABEL_241:

        v110 = _swiftEmptyArrayStorage;
        goto LABEL_242;
      }

      v108 = _CocoaArrayWrapper.endIndex.getter();
      if (!v108)
      {
        goto LABEL_241;
      }

LABEL_58:
      v344 = v107;
      v349 = _swiftEmptyArrayStorage;
      sub_100253218(0, v108 & ~(v108 >> 63), 0);
      if (v108 < 0)
      {
LABEL_251:
        __break(1u);
        goto LABEL_252;
      }

      v109 = 0;
      v110 = v349;
      v111 = (v346 + 56);
      do
      {
        if ((v106 & 0xC000000000000001) != 0)
        {
          v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v112 = *(v106 + 8 * v109 + 32);
        }

        v113 = v112;
        v114 = [v112 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*v111)(v32, 0, 1, v348);
        v349 = v110;
        v116 = v110[2];
        v115 = v110[3];
        if (v116 >= v115 >> 1)
        {
          sub_100253218(v115 > 1, v116 + 1, 1);
          v110 = v349;
        }

        ++v109;
        v110[2] = v116 + 1;
        sub_100100FB4(v32, v110 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v116);
      }

      while (v108 != v109);

      v107 = v344;
LABEL_242:
      sub_1003EDAA8(v107, v110);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v284 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      LODWORD(v47) = 0;
      LODWORD(v42) = 1;
      LODWORD(v46) = 1;
LABEL_209:
      v250 = v45;
      v251 = v44;
      v252 = v43;
      sub_100023B44(0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v264 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
      v253 = swift_initStackObject();
      *(v253 + 16) = xmmword_100791340;
      swift_getKeyPath();
      v254 = sub_100024EC8();

      *(v253 + 32) = v254;
      swift_getKeyPath();
      v255 = sub_100024EF8();

      *(v253 + 40) = v255;
      sub_100025060(v253);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v265 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (!v47)
      {
        if (v46)
        {
          goto LABEL_217;
        }

LABEL_227:
        if (!v42)
        {
          goto LABEL_220;
        }

        goto LABEL_228;
      }

LABEL_214:
      sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
      v256 = swift_initStackObject();
      *(v256 + 16) = xmmword_100791340;
      swift_getKeyPath();
      v257 = sub_100024EF8();

      *(v256 + 32) = v257;
      swift_getKeyPath();
      v258 = sub_100024EF8();

      *(v256 + 40) = v258;
      sub_10000C2B0(v256);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v267 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((v46 & 1) == 0)
      {
        goto LABEL_227;
      }

LABEL_217:
      swift_getKeyPath();
      sub_100024EF8();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v268 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((v42 & 1) == 0)
      {
LABEL_220:
        if (v250)
        {
          goto LABEL_221;
        }

LABEL_231:
        if (!v251)
        {
          goto LABEL_224;
        }

LABEL_232:
        swift_getKeyPath();
        sub_100024EF8();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v352[2] >= v352[3] >> 1)
        {
          v271 = v352[2];
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if ((v252 & 1) == 0)
        {
          return sub_10000C2B0(v352);
        }

        goto LABEL_235;
      }

LABEL_228:
      v259 = swift_getKeyPath();
      v260 = [objc_opt_self() localInternalAccountID];
      v261 = [v260 uuid];

      v262 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v262, 0, 1, v348);
      sub_100033A2C(v259, v262);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v270 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((v250 & 1) == 0)
      {
        goto LABEL_231;
      }

LABEL_221:
      swift_getKeyPath();
      sub_100024EC8();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v269 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v251)
      {
        goto LABEL_232;
      }

LABEL_224:
      if (!v252)
      {
        return sub_10000C2B0(v352);
      }

LABEL_235:
      sub_100033C38();
LABEL_236:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v266 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return sub_10000C2B0(v352);
    case 11:
      v136 = *v40;
      v32 = swift_getKeyPath();
      if (v136 >> 62)
      {
        v137 = _CocoaArrayWrapper.endIndex.getter();
        if (v137)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v137 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v137)
        {
LABEL_89:
          v344 = v32;
          v349 = _swiftEmptyArrayStorage;
          sub_100253218(0, v137 & ~(v137 >> 63), 0);
          if (v137 < 0)
          {
LABEL_252:
            __break(1u);
LABEL_253:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_74:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_75:

            v43 = 0;
            v44 = 0;
            v45 = 0;
LABEL_208:
            LODWORD(v46) = 1;
            LODWORD(v47) = 1;
            goto LABEL_209;
          }

          v138 = 0;
          v139 = v349;
          v140 = (v346 + 56);
          do
          {
            if ((v136 & 0xC000000000000001) != 0)
            {
              v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v141 = *(v136 + 8 * v138 + 32);
            }

            v142 = v141;
            v143 = [v141 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v140)(v29, 0, 1, v348);
            v349 = v139;
            v145 = v139[2];
            v144 = v139[3];
            if (v145 >= v144 >> 1)
            {
              sub_100253218(v144 > 1, v145 + 1, 1);
              v139 = v349;
            }

            ++v138;
            v139[2] = v145 + 1;
            sub_100100FB4(v29, v139 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v145);
          }

          while (v137 != v138);

          v32 = v344;
LABEL_247:
          sub_1003EDAA8(v32, v139);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (v352[2] >= v352[3] >> 1)
          {
            v285 = v352[2];
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v252 = 0;
          v251 = 0;
          v250 = 0;
          LODWORD(v42) = 1;
          LOBYTE(v46) = 1;
          goto LABEL_214;
        }
      }

      v139 = _swiftEmptyArrayStorage;
      goto LABEL_247;
    case 12:
      v56 = *v40;
      v57 = *(v40 + 1);
      v58 = *(v40 + 2);
      if (v58)
      {
        v59 = swift_getKeyPath();
        v60 = v58;
        v61 = [v60 uuid];
        v62 = v345;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v346 + 56))(v62, 0, 1, v348);
        sub_1000239F0(v59, v62);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v352[2] >= v352[3] >> 1)
        {
          v286 = v352[2];
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v63 = swift_getKeyPath();
      sub_1003918BC(v63, v56, v57);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v240 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_198;
    case 13:
      v126 = *v40;
      v127 = swift_getKeyPath();
      v128 = [v126 uuid];
      v129 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v129, 0, 1, v348);
      sub_1000239F0(v127, v129);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v275 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v130 = swift_getKeyPath();
      sub_100033F44(v130, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v276 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v43 = 0;
      v44 = 0;
      v45 = 0;
      LODWORD(v42) = 0;
      LODWORD(v46) = 0;
      LODWORD(v47) = 0;
      goto LABEL_209;
    case 14:
      v51 = *v40;
      v52 = swift_getKeyPath();
      v53 = [v51 uuid];
      v54 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v54, 0, 1, v348);
      sub_1000239F0(v52, v54);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v238 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v55 = swift_getKeyPath();
      sub_1003EDACC(v55);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v239 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return sub_10000C2B0(v352);
    case 15:
      v131 = *v40;
      v132 = swift_getKeyPath();
      v133 = [v131 uuid];
      v134 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v134, 0, 1, v348);
      sub_1000239F0(v132, v134);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v277 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v135 = swift_getKeyPath();
      sub_1003EDACC(v135);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v278 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_191;
    case 16:
      v146 = *v40;
      v42 = v342;
      v47 = v343;
      v328 = *(*v40 + 16);
      if (!v328)
      {
        goto LABEL_197;
      }

      v147 = 0;
      v295 = (v334 + 32);
      v294 = (v334 + 16);
      v293 = (v334 + 88);
      v296 = (v334 + 8);
      v316 = (v339 + 8);
      v315 = (v339 + 32);
      v314 = (v339 + 16);
      *(&v148 + 1) = 4;
      v322 = xmmword_100791340;
      *&v148 = 136315138;
      v319 = v148;
      v313 = (v339 + 88);
      v327 = enum case for REMSearchCriterion.itemTypes(_:);
      v324 = enum case for REMSearchCriterion.objectID(_:);
      v321 = enum case for REMSearchCriterion.accountID(_:);
      v320 = enum case for REMSearchCriterion.listID(_:);
      v317 = enum case for REMSearchCriterion.textualField(_:);
      v312 = enum case for REMSearchCriterion.displayName(_:);
      v310 = enum case for REMSearchCriterion.isCompleted(_:);
      v308 = enum case for REMSearchCriterion.completionDate(_:);
      v306 = enum case for REMSearchCriterion.hasLocation(_:);
      v305 = enum case for REMSearchCriterion.location(_:);
      v304 = enum case for REMSearchCriterion.dueDate(_:);
      v303 = enum case for REMSearchCriterion.hasDueDate(_:);
      v302 = enum case for REMSearchCriterion.modifiedDate(_:);
      v301 = enum case for REMSearchCriterion.creationDate(_:);
      v300 = enum case for REMSearchCriterion.isRecurrent(_:);
      v299 = enum case for REMSearchCriterion.isFlagged(_:);
      v298 = enum case for REMSearchCriterion.spotlightItemIdentifier(_:);
      v297 = enum case for REMSearchCriterion.daCalendarItemUniqueIdentifier(_:);
      v292 = enum case for REMSearchCriterion.listType(_:);
      v291 = enum case for REMSearchableListType.grocery(_:);
      v149 = v344;
      v290 = enum case for REMSearchableListType.none(_:);
      v46 = v341;
      v311 = enum case for REMStringMatchingStyle.exact(_:);
      v309 = enum case for REMStringMatchingStyle.prefix(_:);
      v307 = enum case for REMStringMatchingStyle.word(_:);
      v326 = v341 + 88;
      v323 = (v341 + 96);
      v329 = (v341 + 8);
      v150 = (v346 + 56);
      v334 = v341 + 16;
      v325 = v146;
      while (2)
      {
        if (v147 >= *(v146 + 16))
        {
          __break(1u);
          goto LABEL_200;
        }

        v152 = v146 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        v153 = *(v46 + 72);
        v339 = v147;
        v154 = *(v46 + 16);
        v154(v149, v152 + v153 * v147, v42);
        v154(v47, v149, v42);
        v155 = (*(v46 + 88))(v47, v42);
        if (v155 == v327)
        {
          v151 = *v329;
          (*v329)(v149, v42);
          v151(v47, v42);
          goto LABEL_101;
        }

        if (v155 == v324)
        {
          (*v323)(v47, v42);
          v156 = *v47;
          if (*v47 >> 62)
          {
            if (v156 < 0)
            {
              v209 = *v47;
            }

            v47 = _CocoaArrayWrapper.endIndex.getter();
            if (v47)
            {
LABEL_107:
              v349 = _swiftEmptyArrayStorage;
              sub_100253218(0, v47 & ~(v47 >> 63), 0);
              if ((v47 & 0x8000000000000000) == 0)
              {
                v157 = 0;
                v158 = v349;
                do
                {
                  if ((v156 & 0xC000000000000001) != 0)
                  {
                    v159 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v159 = *(v156 + 8 * v157 + 32);
                  }

                  v160 = v159;
                  v161 = [v159 uuid];
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  (*v150)(v26, 0, 1, v348);
                  v349 = v158;
                  v163 = v158[2];
                  v162 = v158[3];
                  if (v163 >= v162 >> 1)
                  {
                    sub_100253218(v162 > 1, v163 + 1, 1);
                    v158 = v349;
                  }

                  ++v157;
                  v158[2] = v163 + 1;
                  sub_100100FB4(v26, v158 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v163);
                }

                while (v47 != v157);

                v42 = v342;
                goto LABEL_164;
              }

              __break(1u);
LABEL_202:
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_4:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_5:
              v50 = swift_getKeyPath();
              sub_1003EDACC(v50);
LABEL_194:

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (v352[2] < v352[3] >> 1)
              {
LABEL_195:
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_196:
                v43 = 0;
                v45 = 0;
                v44 = 1;
                goto LABEL_209;
              }

LABEL_200:
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              goto LABEL_195;
            }
          }

          else
          {
            v47 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v47)
            {
              goto LABEL_107;
            }
          }

          v158 = _swiftEmptyArrayStorage;
LABEL_164:
          sub_1000F5104(&unk_100938E80, &unk_1007959D0);
          v210 = swift_allocObject();
          *(v210 + 16) = v322;
          *(v210 + 56) = &type metadata for String;
          *(v210 + 32) = 0x696669746E656469;
          *(v210 + 40) = 0xEA00000000007265;
          *(v210 + 88) = sub_1000F5104(&qword_100946088, &unk_1007A7690);
          *(v210 + 64) = v158;
          v211 = String._bridgeToObjectiveC()();
          isa = Array._bridgeToObjectiveC()().super.isa;

          v213 = [objc_opt_self() predicateWithFormat:v211 argumentArray:isa];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v47 = v343;
          if (v352[2] >= v352[3] >> 1)
          {
            v214 = v352[2];
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v149 = v344;
          (*v329)(v344, v42);
LABEL_167:
          v46 = v341;
          goto LABEL_101;
        }

        v164 = v340;
        if (v155 == v321)
        {
          (*v329)(v47, v42);
LABEL_118:
          if (qword_100936518 != -1)
          {
            swift_once();
          }

          v165 = type metadata accessor for Logger();
          sub_100006654(v165, qword_10094C3E8);
          v154(v164, v344, v42);
          v166 = Logger.logObject.getter();
          v167 = static os_log_type_t.fault.getter();
          if (!os_log_type_enabled(v166, v167))
          {

            v188 = *v329;
            (*v329)(v164, v42);
            v189 = v344;
            v188(v344, v42);
            v149 = v189;
            goto LABEL_101;
          }

          v168 = swift_slowAlloc();
          v318 = v168;
          v169 = swift_slowAlloc();
          v349 = v169;
          *v168 = v319;
          v154(v338, v164, v42);
          v170 = String.init<A>(describing:)();
          v172 = v171;
          v173 = *v329;
          (*v329)(v164, v342);
          v174 = sub_10000668C(v170, v172, &v349);
          v42 = v342;

          v175 = v318;
          *(v318 + 4) = v174;
          _os_log_impl(&_mh_execute_header, v166, v167, "Dropping unsupported criterion for searching REMCDList. {criterion: %s}", v175, 0xCu);
          sub_10000607C(v169);
          v47 = v343;

          v149 = v344;
          v173(v344, v42);
          goto LABEL_167;
        }

        if (v155 == v320)
        {
          (*v323)(v47, v42);

          v176 = *(sub_1000F5104(&qword_100946020, &unk_1007A73E8) + 48);
          v177 = type metadata accessor for REMSearchCriterion.Inclusion();
          (*(*(v177 - 8) + 8))(v47 + v176, v177);
        }

        else
        {
          if (v155 == v317)
          {
            (*v323)(v47, v42);
            v191 = *v47;
            v190 = *(v47 + 8);
            v192 = v47 + *(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48);
            v193 = v335;
            v194 = v337;
            (*v315)(v335, v192, v337);
            v195 = v333;
            (*v314)(v333, v193, v194);
            v196 = (*v313)(v195, v194);
            if (v196 != v311)
            {
              v46 = v341;
              if (v196 != v309 && v196 != v307)
              {
                v287 = &v351;
LABEL_257:
                v288 = *(v287 - 32);
                _diagnoseUnexpectedEnumCase<A>(type:)();
                __break(1u);
                JUMPOUT(0x100022D90);
              }

              v205 = swift_getKeyPath();
              sub_1003EDB04(v205, v191, v190, 6);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v47 = v343;
              if (v352[2] >= v352[3] >> 1)
              {
                v216 = v352[2];
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              (*v316)(v335, v337);
              v149 = v344;
              (*v329)(v344, v42);
LABEL_101:
              v147 = v339 + 1;
              v146 = v325;
              if (v339 + 1 == v328)
              {
LABEL_197:

LABEL_198:
                v43 = 0;
                v45 = 0;
                v44 = 1;
                LODWORD(v42) = 1;
                goto LABEL_208;
              }

              continue;
            }

            sub_1000F5104(&unk_100938E80, &unk_1007959D0);
            v197 = swift_allocObject();
            *(v197 + 16) = v322;
            *(v197 + 56) = &type metadata for String;
            *(v197 + 32) = 1701667182;
            *(v197 + 40) = 0xE400000000000000;
            *(v197 + 88) = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
            *(v197 + 64) = v191;
            *(v197 + 72) = v190;
            v198 = String._bridgeToObjectiveC()();
            v199 = Array._bridgeToObjectiveC()().super.isa;

            v200 = [objc_opt_self() predicateWithFormat:v198 argumentArray:v199];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v46 = v341;
            if (v352[2] >= v352[3] >> 1)
            {
              v215 = v352[2];
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (*v316)(v335, v337);
            v149 = v344;
            (*v329)(v344, v42);
LABEL_136:
            v47 = v343;
            goto LABEL_101;
          }

          if (v155 == v312)
          {
            (*v323)(v47, v42);
            v203 = *(v47 + 8);

            v204 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
            (*v316)(v47 + *(v204 + 48), v337);
            goto LABEL_118;
          }

          v178 = v336;
          if (v155 == v310)
          {
            goto LABEL_125;
          }

          if (v155 == v308)
          {
            goto LABEL_147;
          }

          if (v155 == v306)
          {
            goto LABEL_125;
          }

          if (v155 == v305)
          {
            (*v323)(v47, v42);
            v207 = *(v47 + 8);

            v208 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
            (*v316)(v47 + *(v208 + 48), v337);
            goto LABEL_125;
          }

          if (v155 == v304)
          {
            goto LABEL_147;
          }

          if (v155 == v303)
          {
            goto LABEL_125;
          }

          if (v155 == v302 || v155 == v301)
          {
LABEL_147:
            (*v323)(v47, v42);
            v206 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
            sub_1000050A4(v47 + *(v206 + 48), &unk_100938850, qword_100795AE0);
            sub_1000050A4(v47, &unk_100938850, qword_100795AE0);
            goto LABEL_125;
          }

          if (v155 == v300 || v155 == v299)
          {
            goto LABEL_125;
          }

          if (v155 != v298 && v155 != v297)
          {
            if (v155 != v292)
            {
              v287 = &v352;
              goto LABEL_257;
            }

            v217 = v343;
            (*v323)(v343, v342);
            v218 = v331;
            v219 = v217;
            v220 = v332;
            (*v295)(v331, v219, v332);
            v221 = v330;
            (*v294)(v330, v218, v220);
            v222 = (*v293)(v221, v220);
            if (v222 == v291)
            {
              v223 = swift_getKeyPath();
              sub_1003EDACC(v223);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (v352[2] >= v352[3] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            else
            {
              if (v222 != v290)
              {
                v287 = &v350;
                goto LABEL_257;
              }

              if (qword_100936518 != -1)
              {
                swift_once();
              }

              v224 = type metadata accessor for Logger();
              sub_100006654(v224, qword_10094C3E8);
              v225 = Logger.logObject.getter();
              v226 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v225, v226))
              {
                v227 = swift_slowAlloc();
                *v227 = 0;
                _os_log_impl(&_mh_execute_header, v225, v226, "Dropping unsupported .none list type criterion", v227, 2u);
              }
            }

            (*v296)(v331, v332);
            v149 = v344;
            v42 = v342;
            (*v329)(v344, v342);
LABEL_129:
            v46 = v341;
            goto LABEL_136;
          }

          v42 = v342;
          (*v329)(v343, v342);
          v46 = v341;
        }

        break;
      }

      v178 = v336;
LABEL_125:
      if (qword_100936518 != -1)
      {
        swift_once();
      }

      v179 = type metadata accessor for Logger();
      sub_100006654(v179, qword_10094C3E8);
      v154(v178, v344, v42);
      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v180, v181))
      {

        v201 = *v329;
        (*v329)(v178, v42);
        v202 = v344;
        v201(v344, v42);
        v47 = v343;
        v149 = v202;
        goto LABEL_101;
      }

      v182 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v349 = v318;
      *v182 = v319;
      v154(v338, v178, v42);
      v183 = String.init<A>(describing:)();
      v185 = v184;
      v186 = *v329;
      (*v329)(v178, v342);
      v187 = sub_10000668C(v183, v185, &v349);
      v42 = v342;

      *(v182 + 4) = v187;
      _os_log_impl(&_mh_execute_header, v180, v181, "Dropping unsupported criterion for searching REMCDList. {criterion: %s}", v182, 0xCu);
      sub_10000607C(v318);

      v149 = v344;
      v186(v344, v42);
      goto LABEL_129;
    case 17:
    case 30:
      goto LABEL_209;
    case 18:
      v43 = 0;
      v44 = 0;
      v45 = 0;
      LODWORD(v42) = 0;
      goto LABEL_209;
    case 19:
      v45 = 0;
      v43 = 1;
      v44 = 1;
      goto LABEL_209;
    case 20:
    case 21:
    case 29:
    case 32:
    case 35:
      goto LABEL_196;
    case 22:
    case 27:
      goto LABEL_5;
    case 23:
    case 26:
      v48 = swift_getKeyPath();
      sub_1003918A8(v48, 2);
      goto LABEL_194;
    case 24:
    case 33:
      swift_getKeyPath();
      sub_1003F71F0();
      goto LABEL_194;
    case 25:
      v232 = swift_getKeyPath();
      sub_100033F44(v232, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v280 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_getKeyPath();
      sub_1003F71F0();
      goto LABEL_194;
    case 28:
      sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
      v233 = swift_initStackObject();
      *(v233 + 16) = xmmword_100791340;
      v234 = swift_getKeyPath();
      v235 = sub_1003918A8(v234, 0);

      *(v233 + 32) = v235;
      v236 = swift_getKeyPath();
      v237 = sub_1003918A8(v236, 1);

      *(v233 + 40) = v237;
      sub_100025060(v233);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v281 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_getKeyPath();
      sub_1003F71F0();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v282 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_191:
      v43 = 0;
      v45 = 0;
      v44 = 1;
      LODWORD(v46) = 1;
      goto LABEL_209;
    case 31:
      sub_100023B44(0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v241 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v64 = swift_getKeyPath();
      sub_1003EDB18(v64);

      goto LABEL_236;
    case 34:
      v49 = swift_getKeyPath();
      sub_100033F44(v49, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] < v352[3] >> 1)
      {
        goto LABEL_4;
      }

      goto LABEL_202;
    default:
      v77 = *v40;
      v78 = swift_getKeyPath();
      v79 = [v77 uuid];
      v80 = v345;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v346 + 56))(v80, 0, 1, v348);
      sub_1000239F0(v78, v80);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v352[2] >= v352[3] >> 1)
      {
        v246 = v352[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v43 = 0;
      v44 = 0;
      LODWORD(v42) = 0;
      LODWORD(v46) = 0;
      v45 = 1;
      goto LABEL_209;
  }
}

id sub_100022E30@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isGroup];
  *a2 = result;
  return result;
}

id sub_100022FE0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPinnedByCurrentUser];
  *a2 = result;
  return result;
}

uint64_t sub_100023058(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10002345C();
  result = Set.init(minimumCapacity:)();
  v6 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      sub_1000236C4(v5, *(v4 - 1), *v4);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_1000230E4(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesOMa_1();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100023148(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 6u:
    case 8u:
    case 0xDu:
    case 0xEu:
    case 0xFu:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_11;
    case 3u:
      v12 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v13 = v12;
      goto LABEL_11;
    case 4u:
    case 5u:
    case 0xAu:
    case 0xBu:
    case 0x10u:
      *a1 = *a2;

      goto LABEL_11;
    case 7u:
      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      goto LABEL_11;
    case 9u:
      v9 = *a2;
      v10 = *(a2 + 1);
      *a1 = v9;
      *(a1 + 1) = v10;
      v11 = v9;

      goto LABEL_11;
    case 0xCu:
      v6 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v6;
      v7 = *(a2 + 2);
      *(a1 + 2) = v7;

      v8 = v7;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v15 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v15);
      break;
  }

  return result;
}

unint64_t sub_10002345C()
{
  result = qword_10093A9E0;
  if (!qword_10093A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A9E0);
  }

  return result;
}

uint64_t sub_1000234B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100791340;

  v12 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v13)
  {
    v14 = v12;
    v15 = v13;

    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    *(v11 + 88) = sub_1000F5104(a3, a4);
    v16 = sub_1000103CC((v11 + 64));
    sub_100010364(a2, v16, a3, a4);
    v17 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [objc_opt_self() predicateWithFormat:v17 argumentArray:isa];

    sub_1000050A4(a2, a3, a4);
    return v19;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v21._object = 0x80000001007EC120;
    v21._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v21);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000236C4(void *a1, void *a2, Swift::UInt a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(a3);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    while (1)
    {
      v12 = *(v6 + 48) + 16 * v10;
      v13 = *(v12 + 8);
      v14 = *v12;
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) != 0 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v16 = *(v6 + 48) + 16 * v10;
    v18 = *v16;
    v17 = *(v16 + 8);
    *a1 = v18;
    a1[1] = v17;
    v19 = v18;
    return 0;
  }

  else
  {
LABEL_7:
    v21 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v24;
    v23 = a2;
    sub_100023844(v23, a3, v10, isUniquelyReferenced_nonNull_native);
    *v24 = v26;
    *a1 = v23;
    a1[1] = a3;
    return 1;
  }
}

void sub_100023844(uint64_t a1, Swift::UInt a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    sub_100382008(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10019B300();
      goto LABEL_14;
    }

    sub_10038C9E0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(a2);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  a3 = v12 & ~v13;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    while (1)
    {
      v15 = *(v10 + 48) + 16 * a3;
      v16 = *(v15 + 8);
      v17 = *v15;
      v18 = static NSObject.== infix(_:_:)();

      if ((v18 & 1) != 0 && v16 == a2)
      {
        break;
      }

      a3 = (a3 + 1) & v14;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_14:
  v19 = *v24;
  *(*v24 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = a1;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }
}

id sub_100023A14(char a1)
{
  if (a1)
  {
    return 0;
  }

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100791320;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x80000001007A7210;
  *(v2 + 88) = &type metadata for String;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = 0xD000000000000023;
  *(v2 + 72) = 0x80000001007F2430;
  v3 = rem_currentRuntimeVersion();
  *(v2 + 120) = &type metadata for Int;
  *(v2 + 96) = v3;
  v4 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [objc_opt_self() predicateWithFormat:v4 argumentArray:isa];

  return v6;
}

uint64_t sub_100023B4C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v64 = a1;
  v65 = a2;
  v6 = type metadata accessor for DispatchTime();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v4 + qword_1009394D0);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v61 = v20;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_10;
  }

  if (*(v4 + qword_1009394F8) != 1)
  {
LABEL_7:
    v27 = *(v4 + qword_1009394D8);
    v28 = *(v4 + qword_1009394D8 + 8);
    v29 = v64;
    result = v27(v64);
    if (v65)
    {
      return v65(1, v29);
    }

    return result;
  }

  sub_100024350();
  if (*(v4 + qword_100939500))
  {
    result = sub_10043CE78(v64, v65, a3, sub_1003561D4, &unk_1008F1F30, sub_100368310, sub_100442A08);
    v23 = qword_100939518;
    v24 = *(v4 + qword_100939518);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
LABEL_20:
      *(v4 + v23) = v26;
      return result;
    }

    __break(1u);
    goto LABEL_7;
  }

  v59 = qword_100939500;
  v21 = *(v4 + qword_1009394F0);
  v19 = *(v4 + qword_1009394F0 + 8);
  v30 = qword_100935AC8;

  if (v30 != -1)
  {
    goto LABEL_26;
  }

LABEL_10:
  v60 = a3;
  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100939348);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    LODWORD(v58) = v33;
    v35 = v34;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v35 = 136315138;
    v36 = 7104878;
    if (v19)
    {
      v36 = v21;
    }

    v56 = v36;
    if (v19)
    {
      v37 = v19;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v38 = sub_10000668C(v56, v37, aBlock);
    v56 = v21;
    v39 = v38;

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v58, "os_transaction INIT {name: com.apple.remindd.rddebouncer}, label: %s", v35, 0xCu);
    sub_10000607C(v57);

    v40 = v56;
  }

  else
  {

    v40 = v21;
  }

  v41 = os_transaction_create();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = v40;
  v43[4] = v19;
  v43[5] = v41;
  aBlock[4] = sub_100442A38;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F1F98;
  v57 = _Block_copy(aBlock);
  v66 = _swiftEmptyArrayStorage;
  sub_10001BC00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);

  v58 = v41;
  swift_unknownObjectRetain();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = type metadata accessor for DispatchWorkItem();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = DispatchWorkItem.init(flags:block:)();

  v48 = *(v4 + v59);
  *(v4 + v59) = v47;

  static DispatchTime.now()();
  sub_1000255D0();
  + infix(_:_:)();
  v49 = v63;
  v50 = *(v62 + 8);
  v50(v10, v63);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();
  v50(v12, v49);
  if (*(v4 + qword_1009394E0 + 33) == 1)
  {
    sub_10043CE78(v64, v65, v60, sub_1003561D4, &unk_1008F1F30, sub_100368310, sub_100442A08);

    result = swift_unknownObjectRelease();
    v23 = qword_100939518;
    v51 = *(v4 + qword_100939518);
    v25 = __OFADD__(v51, 1);
    v26 = v51 + 1;
    if (v25)
    {
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

  v52 = *(v4 + qword_1009394D8);
  v53 = *(v4 + qword_1009394D8 + 8);
  v54 = v64;
  v52(v64);
  if (v65)
  {
    v65(1, v54);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000242D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024310()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100024350()
{
  v2 = sub_1000F5104(&unk_1009472D0, &unk_1007AA0F0);
  v85 = *(v2 - 8);
  v86 = v2;
  v3 = *(v85 + 64);
  __chkstk_darwin(v2);
  v5 = &v81 - v4;
  v6 = sub_1000F5104(&qword_100939638, &qword_100795F00);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v81 - v11;
  v87 = type metadata accessor for DispatchTime();
  v13 = *(v87 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v87);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v88 = &v81 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&v0[qword_1009394D0];
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v27(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v19 = *&v0[qword_1009394E8];
  if (!v19)
  {
    return;
  }

  v28 = *&v0[qword_1009394E8];

  static DispatchTime.now()();
  v26 = OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_lastFire;
  swift_beginAccess();
  sub_100010364(v19 + v26, v12, &qword_100939638, &qword_100795F00);
  v23 = v87;
  if ((*(v13 + 48))(v12, 1, v87) == 1)
  {
    sub_1000050A4(v12, &qword_100939638, &qword_100795F00);
    if (qword_100935AC8 == -1)
    {
LABEL_5:
      v29 = type metadata accessor for Logger();
      sub_100006654(v29, qword_100939348);
      v30 = v0;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v91[0] = v34;
        *v33 = 136315138;
        v35 = *&v30[qword_1009394F0 + 8];
        if (v35)
        {
          v36 = *&v30[qword_1009394F0];
          v37 = v35;
        }

        else
        {
          v36 = 7104878;
          v37 = 0xE300000000000000;
        }

        v64 = sub_10000668C(v36, v37, v91);

        *(v33 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v31, v32, "RDDebouncer.sampleFire: First fire sampled {label: %s}", v33, 0xCu);
        sub_10000607C(v34);

        v23 = v87;
      }

      else
      {
      }

      (*(v13 + 32))(v10, v88, v23);
      (*(v13 + 56))(v10, 0, 1, v23);
      swift_beginAccess();
      sub_100117A3C(v10, v19 + v26, &qword_100939638, &qword_100795F00);
      swift_endAccess();

      return;
    }

LABEL_43:
    swift_once();
    goto LABEL_5;
  }

  (*(v13 + 32))(v17, v12, v23);
  v38 = *(v19 + 40);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
    goto LABEL_45;
  }

  v12 = v0;
  *(v19 + 40) = v40;
  (*(v13 + 16))(v10, v88, v23);
  (*(v13 + 56))(v10, 0, 1, v23);
  swift_beginAccess();
  sub_100117A3C(v10, v19 + v26, &qword_100939638, &qword_100795F00);
  swift_endAccess();
  v41 = *(v19 + 24);
  v42 = DispatchTime.uptimeNanoseconds.getter();
  v43 = DispatchTime.uptimeNanoseconds.getter();
  if (v42 < v43)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
LABEL_12:
    v44 = type metadata accessor for Logger();
    v45 = sub_100006654(v44, qword_100939348);
    swift_retain_n();
    v46 = v12;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();

    v49 = os_log_type_enabled(v47, v48);
    v84 = v45;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v91[0] = v51;
      *v50 = 136315650;
      v52 = *&v46[qword_1009394F0 + 8];
      v83 = v48;
      v82 = v51;
      if (v52)
      {
        v53 = *&v46[qword_1009394F0];
        v54 = v52;
      }

      else
      {
        v53 = 7104878;
        v54 = 0xE300000000000000;
      }

      v65 = sub_10000668C(v53, v54, v91);

      *(v50 + 4) = v65;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v1;
      *(v50 + 22) = 2048;
      v66 = *(v19 + 40);

      *(v50 + 24) = v66;

      _os_log_impl(&_mh_execute_header, v47, v83, "RDDebouncer.sampleFire: Sampled {label: %s, elapsed: %f, n: %ld}", v50, 0x20u);
      sub_10000607C(v82);

      v23 = v87;
    }

    else
    {
    }

    v67 = *(v19 + 16);
    v68 = *(v19 + 40);
    v69 = v86;
    if (v67 >= v68)
    {
      if (__OFSUB__(v68, 1))
      {
        __break(1u);
        return;
      }

      v76 = v1 / v68 + *(v19 + 32) * (v68 - 1) / v68;
    }

    else
    {
      v70 = OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_measurements;
      swift_beginAccess();
      v71 = v85;
      (*(v85 + 16))(v5, v19 + v70, v69);
      v72 = DoubleStacksQueue.isEmpty.getter();
      (*(v71 + 8))(v5, v69);
      if (v72 & 1) != 0 || (swift_beginAccess(), DoubleStacksQueue.dequeue()(), swift_endAccess(), (v90))
      {
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v73, v74, "No measurements to dequeue from to get the oldest sample value when updating load factor", v75, 2u);
        }

        goto LABEL_40;
      }

      v76 = *(v19 + 32) + (v1 - v89) / v67;
    }

    *(v19 + 32) = v76;
    v89 = v1;
    swift_beginAccess();
    DoubleStacksQueue.enqueue(_:)();
    swift_endAccess();

LABEL_40:
    v80 = *(v13 + 8);
    v80(v17, v23);
    v80(v88, v23);
    return;
  }

  v1 = (v42 - v43) / 1000000000.0;
  if (v1 < v41)
  {
    if (qword_100935AC8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

  if (qword_100935AC8 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100006654(v55, qword_100939348);
  v56 = v0;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v91[0] = v60;
    *v59 = 136315650;
    v61 = *&v56[qword_1009394F0 + 8];
    if (v61)
    {
      v62 = *&v56[qword_1009394F0];
      v63 = v61;
    }

    else
    {
      v62 = 7104878;
      v63 = 0xE300000000000000;
    }

    v77 = sub_10000668C(v62, v63, v91);

    *(v59 + 4) = v77;
    *(v59 + 12) = 2048;
    *(v59 + 14) = v1;
    *(v59 + 22) = 2048;
    *(v59 + 24) = v41;
    _os_log_impl(&_mh_execute_header, v57, v58, "RDDebouncer.sampleFire: Sample exceeds threshold for starting a new window, resetting load measurements {label: %s, elapsed: %f, threshold: %f}", v59, 0x20u);
    sub_10000607C(v60);
  }

  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  swift_beginAccess();
  DoubleStacksQueue.reset()();
  swift_endAccess();

  v78 = *(v13 + 8);
  v79 = v87;
  v78(v17, v87);
  v78(v88, v79);
}

uint64_t sub_100024F24(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {

      sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v8 = [objc_opt_self() orPredicateWithSubpredicates:isa];

      return v8;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v4 = *(v1 + 8 * v2++ + 32);
    if (v4)
    {
      v5 = v4;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v6 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  __break(1u);
  return result;
}

void sub_1000250CC(uint64_t a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 6u:
    case 8u:
    case 0xDu:
    case 0xEu:
    case 0xFu:
      v2 = *a1;
      goto LABEL_3;
    case 4u:
    case 5u:
    case 0xAu:
    case 0xBu:
    case 0x10u:
      v3 = *a1;
      goto LABEL_7;
    case 7u:
      v5 = type metadata accessor for UUID();
      v6 = *(*(v5 - 8) + 8);

      v6(a1, v5);
      return;
    case 9u:

      v7 = *(a1 + 8);
LABEL_7:

      break;
    case 0xCu:
      v4 = *(a1 + 8);

      v2 = *(a1 + 16);
LABEL_3:

      break;
    default:
      return;
  }
}

uint64_t sub_100025254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000252B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000253D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000254F4()
{
  result = qword_10093F488;
  if (!qword_10093F488)
  {
    sub_1000060C8(255, &qword_10093F430, NSPersistentStore_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F488);
  }

  return result;
}

void sub_100025564(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 objectID];
  v4 = [v3 persistentStore];

  *a2 = v4;
}

void sub_1000255D0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + qword_1009394D0);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = (v0 + qword_1009394E0);
    v9 = *(v0 + qword_1009394E0);
    if ((*(v0 + qword_1009394E0 + 32) & 1) == 0)
    {
      v14 = *(v0 + qword_1009394E0);
      return;
    }

    v10 = v8[1];
    if (*(v0 + qword_1009394E8))
    {
      v11 = v8[2];
      v12 = v8[3];
      sub_10014F324(*(v0 + qword_1009394E0), v8[1], v11, v12, 1);

      v9(v13);

      sub_10014F334(v9, v10, v11, v12, 1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  v15 = qword_100935AC8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100939348);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_10054573C("loadFactor wasn't properly initialized even with debouncing interval option set to .loadFunction", 96, 2);
  __break(1u);
}

void sub_100025804(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100025A24(a1);
  }

  else
  {
    if (qword_100936150 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946FF0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received store did change notification but observer is deallocated", v5, 2u);
    }
  }
}

void *sub_10002595C(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100026AA8(&v5, (v3 + 32), v2, v1, &qword_10093F430, NSPersistentStore_ptr, &qword_10093F488);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_100025A24(uint64_t a1)
{
  v123 = a1;
  v2 = sub_1000F5104(&unk_100947230, &qword_1007AA098);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v123 - v4;
  v142 = sub_1000F5104(&unk_10093F290, &qword_10079DBD0);
  v6 = *(v142 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v142);
  v124 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v125 = &v123 - v11;
  v12 = __chkstk_darwin(v10);
  v126 = &v123 - v13;
  v14 = __chkstk_darwin(v12);
  v129 = &v123 - v15;
  __chkstk_darwin(v14);
  v137 = &v123 - v16;
  v17 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v128 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v145 = &v123 - v22;
  v23 = *(v1 + 40);
  os_unfair_lock_lock(v23);
  swift_beginAccess();
  v24 = *(v1 + 48);

  os_unfair_lock_unlock(v23);
  v25 = *(v24 + 16);
  v130 = v6;
  v138 = v25;
  if (!v25)
  {

    v28 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_104;
    }

LABEL_41:
    v79 = v123 + 56;
    v80 = 1 << *(v123 + 32);
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    else
    {
      v81 = -1;
    }

    v82 = v81 & *(v123 + 56);
    v83 = (v80 + 63) >> 6;

    v84 = 0;
    v139 = 0;
    v135 = v83;
    v136 = v79;
LABEL_50:
    if (!v82)
    {
      do
      {
        v86 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_108;
        }

        if (v86 >= v83)
        {

          return;
        }

        v82 = *(v79 + 8 * v86);
        ++v84;
      }

      while (!v82);
      v84 = v86;
    }

    v137 = v82;
    v87 = *(v123 + 48);
    v138 = v84;
    v88 = v87 + ((v84 << 10) | (16 * __clz(__rbit64(v82))));
    v89 = *(v88 + 8);
    v90 = v28[2];
    v149 = *v88;
    if (!v90)
    {
      v94 = v139;
LABEL_61:
      v139 = v94;
      v96 = v28[2];
      v91 = v96;
      goto LABEL_66;
    }

    v91 = 0;
    v144 = (*(v130 + 80) + 32) & ~*(v130 + 80);
    v92 = v28 + v144;
    v93 = *(v130 + 72);
    v94 = v139;
    while (1)
    {
      sub_10002A08C(v92, v149, v89);
      if (v95)
      {
        break;
      }

      ++v91;
      v92 += v93;
      if (v90 == v91)
      {
        goto LABEL_61;
      }
    }

    v134 = v89;
    v96 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      goto LABEL_119;
    }

    v139 = v94;
    v97 = v28[2];
    v140 = v93;
    if (v96 == v97)
    {
      goto LABEL_64;
    }

LABEL_70:
    if (v96 >= v97)
    {
      goto LABEL_109;
    }

    v146 = v28;
    *&v141 = v96 * v93;
    i = v28 + v144;
    v99 = v129;
    sub_100010364(v28 + v144 + v96 * v93, v129, &unk_10093F290, &qword_10079DBD0);
    v100 = v99;
    v101 = v126;
    sub_100010364(v100, v126, &unk_10093F290, &qword_10079DBD0);
    v102 = *(v101 + *(v142 + 48));
    sub_10002A4A8(v101, v128);
    v147 = v102;
    v148 = v96;
    if ((v102 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
      sub_10000CDE4(&qword_10093A8E8, &unk_100947240, NSEntityDescription_ptr);
      Set.Iterator.init(_cocoa:)();
      v102 = v153;
      v103 = v154;
      v105 = v155;
      v104 = v156;
      v106 = v157;
    }

    else
    {
      v107 = -1 << *(v102 + 32);
      v103 = v102 + 56;
      v105 = ~v107;
      v108 = -v107;
      if (v108 < 64)
      {
        v109 = ~(-1 << v108);
      }

      else
      {
        v109 = -1;
      }

      v106 = v109 & *(v102 + 56);

      v104 = 0;
    }

    v145 = v105;
    while (1)
    {
      if (v102 < 0)
      {
        v113 = __CocoaSet.Iterator.next()();
        if (!v113 || (v150 = v113, sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr), swift_dynamicCast(), (v112 = v151) == 0))
        {
LABEL_89:
          sub_10001B860();
          sub_1000292E8(v128);
          sub_1000050A4(v129, &unk_10093F290, &qword_10079DBD0);

          v116 = v148;
          v93 = v140;
          if (v91 == v148)
          {
            v28 = v146;
            goto LABEL_98;
          }

          v28 = v146;
          if (v91 < 0)
          {
            goto LABEL_112;
          }

          v117 = v146[2];
          if (v91 >= v117)
          {
            goto LABEL_113;
          }

          v118 = i;
          sub_100010364(&i[v91 * v140], v125, &unk_10093F290, &qword_10079DBD0);
          if (v116 >= v117)
          {
            goto LABEL_114;
          }

          v119 = v118;
          v120 = v141;
          sub_100010364(&v119[v141], v124, &unk_10093F290, &qword_10079DBD0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_100260BE8(v28);
          }

          v121 = v28 + v144;
          sub_100117A3C(v124, v28 + v144 + v91 * v93, &unk_10093F290, &qword_10079DBD0);
          if (v116 >= v28[2])
          {
            goto LABEL_115;
          }

          sub_100117A3C(v125, &v121[v120], &unk_10093F290, &qword_10079DBD0);
LABEL_98:
          v122 = __OFADD__(v91++, 1);
          if (v122)
          {
            goto LABEL_111;
          }

LABEL_99:
          v122 = __OFADD__(v116, 1);
          v96 = v116 + 1;
          if (v122)
          {
            goto LABEL_110;
          }

          v97 = v28[2];
          if (v96 == v97)
          {
LABEL_64:
            if (v96 < v91)
            {
              goto LABEL_117;
            }

            if ((v91 & 0x8000000000000000) == 0)
            {
LABEL_66:
              if (!__OFADD__(v96, v91 - v96))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v152 = v28;
                if (!isUniquelyReferenced_nonNull_native || v91 > v28[3] >> 1)
                {
                  if (v96 <= v91)
                  {
                    v85 = v91;
                  }

                  else
                  {
                    v85 = v96;
                  }

                  v28 = sub_10002A020(isUniquelyReferenced_nonNull_native, v85, 1, v28);
                  v152 = v28;
                }

                v79 = v136;
                v82 = (v137 - 1) & v137;
                sub_10002A50C(v91, v96, 0);

                v83 = v135;
                v84 = v138;
                goto LABEL_50;
              }

LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
            }

            __break(1u);
LABEL_119:
            __break(1u);
            return;
          }

          goto LABEL_70;
        }
      }

      else
      {
        v110 = v104;
        v111 = v106;
        if (!v106)
        {
          while (1)
          {
            v104 = v110 + 1;
            if (__OFADD__(v110, 1))
            {
              break;
            }

            if (v104 >= ((v105 + 64) >> 6))
            {
              goto LABEL_89;
            }

            v111 = *(v103 + 8 * v104);
            ++v110;
            if (v111)
            {
              goto LABEL_83;
            }
          }

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
          goto LABEL_116;
        }

LABEL_83:
        v106 = (v111 - 1) & v111;
        v112 = *(*(v102 + 48) + ((v104 << 9) | (8 * __clz(__rbit64(v111)))));
        if (!v112)
        {
          goto LABEL_89;
        }
      }

      v114 = [v149 isKindOfEntity:{v112, v123}];

      if (v114)
      {
        sub_10001B860();

        v115 = v128;
        sub_10002A660(v134);
        sub_1000292E8(v115);
        sub_1000050A4(v129, &unk_10093F290, &qword_10079DBD0);
        v28 = v146;
        v116 = v148;
        v93 = v140;
        goto LABEL_99;
      }
    }
  }

  v135 = *(v17 + 20);
  v134 = objc_opt_self();
  v26 = 0;
  v136 = v18;
  v27 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v139 = v24;
  v133 = v24 + v27;
  v132 = (v6 + 56);
  v131 = (v6 + 48);
  v28 = _swiftEmptyArrayStorage;
  v29 = &selRef_accountStatusWithCompletionHandler_;
  *&v30 = 136446466;
  v141 = v30;
  v127 = v5;
  do
  {
    if (v26 >= *(v139 + 16))
    {
      goto LABEL_107;
    }

    v31 = *(v136 + 72);
    v144 = v26;
    v32 = v145;
    sub_100026CD8(v133 + v31 * v26, v145, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    v33 = *(v32 + v135);
    v34 = [v134 managedObjectModel];
    if (v33)
    {
      v146 = v28;
      v153 = _swiftEmptyArrayStorage;
      v35 = (v33 + 56);
      v36 = 1 << v33[32];
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v38 = v37 & *(v33 + 7);
      v39 = ((v36 + 63) >> 6);

      v40 = 0;
      v140 = _swiftEmptyArrayStorage;
      v148 = (v33 + 56);
      v149 = v39;
      for (i = v33; v38; v39 = v149)
      {
        while (1)
        {
          v41 = v40;
LABEL_18:
          v42 = __clz(__rbit64(v38));
          v38 &= v38 - 1;
          v43 = (*(v33 + 6) + ((v41 << 10) | (16 * v42)));
          v44 = *v43;
          v45 = v43[1];

          v46 = [v34 entitiesByName];
          sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
          v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v47 + 16))
          {
            v48 = sub_100005F4C(v44, v45);
            if (v49)
            {
              break;
            }
          }

          if (qword_100936150 != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          sub_100006654(v50, qword_100946FF0);

          v51 = v34;
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v152 = v147;
            *v54 = v141;
            *(v54 + 4) = sub_10000668C(v44, v45, &v152);
            *(v54 + 12) = 2080;
            v55 = [v51 description];
            v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v34;
            v59 = v58;

            v60 = sub_10000668C(v56, v59, &v152);
            v34 = v57;

            *(v54 + 14) = v60;
            _os_log_impl(&_mh_execute_header, v52, v53, "Entity in the given filter option not recognized in managedObjectContext {entityName: %{public}s, managedObjectModel: %s}", v54, 0x16u);
            swift_arrayDestroy();

            v33 = i;
          }

          v40 = v41;
          v35 = v148;
          v39 = v149;
          if (!v38)
          {
            goto LABEL_14;
          }
        }

        v61 = *(*(v47 + 56) + 8 * v48);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v62 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v35 = v148;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v140 = v153;
        v40 = v41;
      }

LABEL_14:
      v29 = &selRef_accountStatusWithCompletionHandler_;
      while (1)
      {
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v41 >= v39)
        {

          v6 = v130;
          v28 = v146;
          v5 = v127;
          v63 = v140;
          goto LABEL_34;
        }

        v38 = *(v35 + 8 * v41);
        ++v40;
        if (v38)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_106;
    }

    v64 = [objc_opt_self() subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
    sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
    v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = v34;
      v68 = v28;
      v153 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v69 = 32;
      do
      {
        v70 = *(v65 + v69);
        v71 = [swift_getObjCClassFromMetadata() v29[395]];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v72 = *(v153 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v69 += 8;
        --v66;
      }

      while (v66);

      v63 = v153;
      v28 = v68;
      v34 = v67;
      v6 = v130;
    }

    else
    {

      v63 = _swiftEmptyArrayStorage;
    }

LABEL_34:
    v73 = sub_100027634(v63);

    v74 = v142;
    v75 = *(v142 + 48);
    v76 = v145;
    sub_100026CD8(v145, v5, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    *&v5[v75] = v73;
    (*v132)(v5, 0, 1, v74);
    sub_1000292E8(v76);
    if ((*v131)(v5, 1, v74) == 1)
    {
      sub_1000050A4(v5, &unk_100947230, &qword_1007AA098);
    }

    else
    {
      sub_100029CA4(v5, v137);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_10002A020(0, v28[2] + 1, 1, v28);
      }

      v78 = v28[2];
      v77 = v28[3];
      if (v78 >= v77 >> 1)
      {
        v28 = sub_10002A020(v77 > 1, v78 + 1, 1, v28);
      }

      v28[2] = v78 + 1;
      sub_100029CA4(v137, v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v78);
    }

    v26 = v144 + 1;
  }

  while (v144 + 1 != v138);

  if (v28[2])
  {
    goto LABEL_41;
  }

LABEL_104:
}

uint64_t sub_100026A70(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_100026AA8(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000060C8(0, a5, a6);
  sub_10000CE28(a7, a5, a6);
  result = Set.Iterator.init(_cocoa:)();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000060C8(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_100026CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_100026D40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100026E4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[7];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;

  v13 = v8;

  return a1;
}

char *sub_100026EF4(char *a1, int64_t a2, char a3)
{
  result = sub_100026D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_100026F58@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 remObjectID];
  if (v6)
  {

    *a3 = v5;
    return v5;
  }

  else
  {
    _StringGuts.grow(_:)(98);
    v8._object = 0x80000001007F8090;
    v8._countAndFlagsBits = 0xD000000000000055;
    String.append(_:)(v8);
    v9 = [a2 remObjectID];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 description];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = objc_opt_self();
    v16._countAndFlagsBits = v12;
    v16._object = v14;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x203A44496F6D202CLL;
    v17._object = 0xE800000000000000;
    String.append(_:)(v17);
    v18 = [v5 objectID];
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 125;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25 = String._bridgeToObjectiveC()();

    [v15 internalErrorWithDebugDescription:v25];

    return swift_willThrow();
  }
}

void *sub_1000271D0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10001184C(v3, a2);
  if (v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = 0;
  while (v4 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v21 = a2;
      v22 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v21;
      v4 = v22;
      goto LABEL_3;
    }

    v10 = [v7 remObjectID];

    ++v6;
    if (v10)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v9;
    }
  }

  v12 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_33:
    v13 = v12;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_19;
    }

LABEL_27:

    return _swiftEmptyArrayStorage;
  }

  v13 = _swiftEmptyArrayStorage;
  v3 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_27;
  }

LABEL_19:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    a2 = v13;
    v15 = v13 & 0xC000000000000001;
    v16 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_30;
      }

      if (v15)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v18 = *(a2 + 8 * v14 + 32);
      }

      v19 = v18;
      dispatch thunk of REMStoreObjectsContainer.storedList(with:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v14;
      a2 = _swiftEmptyArrayStorage;
      if (v17 == v3)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000274B8(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_1000060C8(0, a2, a3);
    sub_10000CE28(a4, a2, a3);
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

void *sub_100027664(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v171 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v172 = &v158 - v13;
  __chkstk_darwin(v12);
  v173 = &v158 - v14;
  *&v177 = 0;
  v15 = [a1 remObjectIDWithError:&v177];
  if (!v15)
  {
    v34 = v177;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v7;
  }

  v16 = v15;
  v17 = v177;
  v18 = [a1 account];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 remObjectID];

    if (v20)
    {
      v170 = v8;
      v159 = v6;
      v21 = [a1 name];
      v167 = v16;
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v23 = 0;
      }

      v35 = [a1 reminderIDsMergeableOrdering];
      v161 = v2;
      v160 = v3;
      v162 = v7;
      if (v35)
      {
        v36 = v35;
        v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;
      }

      else
      {
        v169 = v23;
        if (qword_1009366B8 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100006654(v40, qword_10094EE48);
        v41 = v167;
        v42 = v167;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          *(v45 + 4) = v42;
          *v46 = v41;
          v47 = v42;
          sub_1000050A4(v46, &unk_100938E70, &unk_100797230);
        }

        v37 = 0;
        v39 = 0xC000000000000000;
      }

      v48 = [a1 isGroup];
      v49 = objc_allocWithZone(REMListStorage);
      v50 = v167;
      sub_100029344(v37, v39);
      v51 = v20;
      v52 = String._bridgeToObjectiveC()();

      isa = Data._bridgeToObjectiveC()().super.isa;
      v165 = v37;
      v164 = v39;
      sub_10001BBA0(v37, v39);
      v7 = [v49 initWithObjectID:v50 accountID:v51 name:v52 isGroup:v48 reminderIDsMergeableOrderingData:isa];

      [v7 setReminderIDsMergeableOrdering:0];
      v54 = [a1 externalIdentifier];
      [v7 setExternalIdentifier:v54];

      v55 = [a1 externalModificationTag];
      [v7 setExternalModificationTag:v55];

      v56 = [a1 daSyncToken];
      [v7 setDaSyncToken:v56];

      v57 = [a1 daPushKey];
      [v7 setDaPushKey:v57];

      v58 = [a1 daExternalIdentificationTag];
      [v7 setDaExternalIdentificationTag:v58];

      [v7 setDaDisplayOrder:{objc_msgSend(a1, "daDisplayOrder")}];
      [v7 setDaIsEventOnlyContainer:{objc_msgSend(a1, "daIsEventOnlyContainer")}];
      [v7 setDaIsReadOnly:{objc_msgSend(a1, "daIsReadOnly")}];
      [v7 setDaIsImmutable:{objc_msgSend(a1, "daIsImmutable")}];
      [v7 setDaIsNotificationsCollection:{objc_msgSend(a1, "daIsNotificationsCollection")}];
      [v7 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
      [v7 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];
      v59 = [a1 sharedOwnerName];
      [v7 setSharedOwnerName:v59];

      v60 = [a1 sharedOwnerAddress];
      [v7 setSharedOwnerAddress:v60];

      v158 = [a1 sharingStatus];
      [v7 setSharingStatus:?];
      type metadata accessor for REMShareeCDIngestor();
      inited = swift_initStackObject();
      *(inited + 16) = v51;
      *(inited + 24) = v50;
      v169 = inited;
      type metadata accessor for REMCalDAVNotificationCDIngestor();
      v62 = swift_initStackObject();
      *(v62 + 16) = v51;
      *(v62 + 24) = v50;
      v168 = v62;
      v63 = v50;
      v64 = v51;
      v166 = v63;
      v163 = v64;
      v65 = [a1 sharees];
      if (!v65)
      {
        v74 = v170;
        goto LABEL_32;
      }

      v66 = v65;
      sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
      sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
      v67 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      *&v177 = v67;
      sub_1000F5104(&qword_10094F0E0, &qword_1007B4CD8);
      sub_10000CB48(&qword_10094F0E8, &qword_10094F0E0, &qword_1007B4CD8);
      v68 = Sequence.elements<A>(ofType:)();

      if (qword_1009366B8 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      v70 = sub_100006654(v69, qword_10094EE48);
      *&v177 = v68;
      *(&v158 - 2) = __chkstk_darwin(v70);
      sub_1000F5104(&unk_10094F110, &qword_1007A1FB8);
      sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
      sub_10000CB48(&unk_10094F678, &unk_10094F110, &qword_1007A1FB8);
      v71 = v174;
      v72 = Sequence.map<A>(skippingError:_:)();
      if (v71)
      {

        v73 = _swiftEmptyArrayStorage;
      }

      else
      {
        v73 = v72;
      }

      v74 = v170;
      if (v73 >> 62)
      {
        v77 = _CocoaArrayWrapper.endIndex.getter();
        v174 = 0;
        if (v77)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v174 = 0;
        if (v75)
        {
LABEL_29:
          v76 = Array._bridgeToObjectiveC()().super.isa;

          [v7 setSharees:v76];

          goto LABEL_32;
        }
      }

LABEL_32:
      sub_100029560();
      if (v78)
      {
        v79 = v78;
        v80 = [v78 remObjectID];
      }

      else
      {
        v80 = 0;
      }

      [v7 setSharedOwnerID:v80];

      v81 = [a1 calDAVNotifications];
      if (v81)
      {
        v82 = v81;
        sub_1000060C8(0, &qword_10094F150, off_1008D4178);
        sub_10000CE28(&qword_10094F158, &qword_10094F150, off_1008D4178);
        v83 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        *&v177 = v83;
        sub_1000F5104(&qword_10094F160, &qword_1007B4D60);
        sub_10000CB48(&qword_10094F168, &qword_10094F160, &qword_1007B4D60);
        v84 = Sequence.elements<A>(ofType:)();

        if (qword_1009366B8 != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        v86 = sub_100006654(v85, qword_10094EE48);
        *&v177 = v84;
        *(&v158 - 2) = __chkstk_darwin(v86);
        sub_1000F5104(&qword_10094F188, &qword_1007B4D88);
        sub_1000060C8(0, &qword_10094F170, REMCalDAVNotification_ptr);
        sub_10000CB48(&qword_10094F670, &qword_10094F188, &qword_1007B4D88);
        v87 = v174;
        v88 = Sequence.map<A>(skippingError:_:)();
        if (v87)
        {

          v89 = _swiftEmptyArrayStorage;
        }

        else
        {
          v89 = v88;
        }

        v74 = v170;
        if (v89 >> 62)
        {
          v92 = _CocoaArrayWrapper.endIndex.getter();
          v174 = 0;
          if (v92)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v174 = 0;
          if (v90)
          {
LABEL_43:
            v91 = Array._bridgeToObjectiveC()().super.isa;

            [v7 setCalDAVNotifications:v91];

            goto LABEL_46;
          }
        }
      }

LABEL_46:
      v93 = [a1 color];
      [v7 setColor:v93];

      v94 = [a1 badgeEmblem];
      [v7 setBadgeEmblem:v94];

      v95 = [a1 lastUserAccessDate];
      if (v95)
      {
        v96 = v173;
        v97 = v95;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v98.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v74 + 8))(v96, v162);
      }

      else
      {
        v98.super.isa = 0;
      }

      [v7 setLastUserAccessDate:v98.super.isa];

      [v7 setShowingLargeAttachments:{objc_msgSend(a1, "showingLargeAttachments")}];
      v99 = [a1 parentAccount];
      if (v99)
      {
        v100 = v99;
        v101 = [v99 remObjectID];
      }

      else
      {
        v101 = 0;
      }

      [v7 setParentAccountID:v101];

      v102 = [a1 parentList];
      if (v102)
      {
        v103 = v102;
        v104 = [v102 remObjectID];
      }

      else
      {
        v104 = 0;
      }

      [v7 setParentListID:v104];

      [v7 setShouldCategorizeGroceryItems:{objc_msgSend(a1, "shouldCategorizeGroceryItems")}];
      [v7 setShouldSuggestConversionToGroceryList:{objc_msgSend(a1, "shouldSuggestConversionToGroceryList")}];
      v105 = [a1 groceryLocaleID];
      [v7 setGroceryLocaleID:v105];

      [v7 setShouldAutoCategorizeItems:{objc_msgSend(a1, "shouldAutoCategorizeItems")}];
      v106 = [objc_opt_self() sharedConfiguration];
      v107 = objc_opt_self();
      v108 = [v107 isInternalInstall];
      v109 = &selRef_autoCategorizationInternalInstallMinimumSupportedVersion;
      if (!v108)
      {
        v109 = &selRef_autoCategorizationNonInternalInstallMinimumSupportedVersion;
      }

      v110 = [v106 *v109];
      v111 = [v110 integerValue];
      v112 = kREMSupportedVersionFor2025Seed1;
      [v7 setIsAutoCategorizationSupportedInCurrentAppVersion:v111 < kREMSupportedVersionFor2025Seed1];
      v113 = [v107 isInternalInstall];
      v114 = &selRef_intelligentExtractionsInternalInstallMinimumSupportedVersion;
      if (!v113)
      {
        v114 = &selRef_intelligentExtractionsNonInternalInstallMinimumSupportedVersion;
      }

      v173 = [v106 *v114];
      [v7 setIsSuggestedRemindersSupportedInCurrentAppVersion:{objc_msgSend(v173, "integerValue") < v112}];
      [v7 setResolutionTokenMap:0];
      v115 = [a1 resolutionTokenMapData];
      if (v115)
      {
        v116 = v115;
        v117 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v118;

        v120.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v117, v119);
      }

      else
      {
        v120.super.isa = 0;
      }

      [v7 setResolutionTokenMapData:v120.super.isa];

      v121 = [a1 daBulkRequests];
      if (v121)
      {
        v122 = v121;
        v123 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v124;

        v126 = objc_opt_self();
        v127 = Data._bridgeToObjectiveC()().super.isa;
        v175 = 0;
        v128 = [v126 propertyListWithData:v127 options:0 format:0 error:&v175];

        v129 = v175;
        if (v128)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100005EE0(v176, &v177);
          sub_100005EF0(&v177, v176);
          sub_1000F5104(&qword_10094F668, &unk_1007B5150);
          if (swift_dynamicCast())
          {
            v130 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v7 setDaBulkRequests:v130];
            sub_10001BBA0(v123, v125);

            sub_10000607C(&v177);
          }

          else
          {
            sub_10000607C(&v177);
            sub_10001BBA0(v123, v125);
          }
        }

        else
        {
          v131 = v129;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_10001BBA0(v123, v125);

          v174 = 0;
        }

        v74 = v170;
      }

      [v7 setIsPlaceholder:{objc_msgSend(a1, "isPlaceholder")}];
      v132 = [a1 currentUserShareParticipantID];
      if (v132)
      {
        v133 = v132;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.uppercased()();

        v134 = String._bridgeToObjectiveC()();
      }

      else
      {
        v134 = 0;
      }

      [v7 setCurrentUserShareParticipantID:v134];

      v135 = [a1 sortingStyle];
      if (v135)
      {
        v136 = v135;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v137 = REMSortingStyle.init(stringValue:)();
        if (!v137)
        {
          v137 = REMSortingStyleDefault;
        }

        v138 = v137;
        [v7 setSortingStyle:v137];
      }

      else
      {
        [v7 setSortingStyle:REMSortingStyleDefault];
      }

      if (![a1 isPinnedByCurrentUser])
      {
        goto LABEL_91;
      }

      if (v158 < 2)
      {
        v141 = [a1 pinnedDate];
        if (v141)
        {
          v142 = v172;
          v143 = v141;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v140.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v74 + 8))(v142, v162);
        }

        else
        {
          v140.super.isa = 0;
        }
      }

      else
      {
        if (v158 - 3 < 2)
        {
LABEL_91:
          v150 = [a1 mostRecentTargetTemplateIdentifierByCurrentUser];
          if (v150)
          {
            v151 = v159;
            v152 = v150;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v153.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v160 + 8))(v151, v161);
          }

          else
          {
            v153.super.isa = 0;
          }

          v154 = v164;
          [v7 setMostRecentTargetTemplateIdentifier:v153.super.isa];

          [v7 setShouldUpdateSectionsOrdering:0];
          [v7 setUnsavedSectionIDsOrdering:0];
          [v7 setUnsavedMembershipsOfRemindersInSections:0];
          [v7 setUnsavedReminderIDsForCategorization:0];

          sub_10001BBA0(v165, v154);
          v155 = v169;
          swift_setDeallocating();

          v156 = v168;
          swift_setDeallocating();

          return v7;
        }

        if (v158 != 2)
        {
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v144 = type metadata accessor for Logger();
          sub_100006654(v144, qword_10094EE30);
          v145 = v166;
          v140.super.isa = Logger.logObject.getter();
          v146 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v140.super.isa, v146))
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            *v147 = 138543618;
            *(v147 + 4) = v145;
            *v148 = v167;
            *(v147 + 12) = 2050;
            *(v147 + 14) = v158;
            v149 = v145;
            _os_log_impl(&_mh_execute_header, v140.super.isa, v146, "REMListStorageCDIngestor: storage(from:) Unhandled sharingStatus {objectID: %{public}@, sharingStatus.rawValue: %{public}ld}", v147, 0x16u);
            sub_1000050A4(v148, &unk_100938E70, &unk_100797230);
          }

          goto LABEL_90;
        }

        v139 = v171;
        static Date.distantPast.getter();
        v140.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v74 + 8))(v139, v162);
      }

      [v7 setPinnedDate:v140.super.isa];
LABEL_90:

      goto LABEL_91;
    }
  }

  if (qword_1009366B8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_10094EE48);
  v25 = v16;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v16;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "REMListStorageCDIngestor: cdList.account is nil {cdList.remObjectID: %@}", v28, 0xCu);
    sub_1000050A4(v29, &unk_100938E70, &unk_100797230);
  }

  v31 = objc_opt_self();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = String._bridgeToObjectiveC()();
  [v31 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v33];

  swift_willThrow();
  return v7;
}

void *sub_100028FC4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_100027664(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100028FF4(void *a1, void *a2)
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

      sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
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

    v20 = sub_10037F7A0(v7, result + 1, &qword_100942FD0, &qword_1007A3A50, &unk_100947240, NSEntityDescription_ptr);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10001B868(v21 + 1, &qword_100942FD0, &qword_1007A3A50);
    }

    v19 = v8;
    sub_100382EB4(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
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
    sub_10001B588(v19, v13, isUniquelyReferenced_nonNull_native);
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

uint64_t sub_1000292E8(uint64_t a1)
{
  v2 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029344(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000293BC(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + a2[5]);

  v6 = *(a1 + a2[7] + 8);
}

uint64_t sub_100029460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
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

void sub_100029560()
{
  v1 = v0;
  v72 = type metadata accessor for UUID();
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v72);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v5 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v7 = &v53 - v6;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v71 = &v53 - v14;
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v67 = v1;
  v17 = [v1 sharees];
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v60 = v12;
  v19 = sub_100029EFC();
  sub_100029FD8(&qword_100939840, sub_100029EFC);
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v20 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v20 = v75;
    v62 = v76;
    v21 = v77;
    v22 = v78;
    v23 = v79;
  }

  else
  {
    v22 = 0;
    v24 = -1 << *(v20 + 32);
    v25 = *(v20 + 56);
    v62 = v20 + 56;
    v21 = ~v24;
    v26 = -v24;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v23 = v27 & v25;
  }

  v53 = v21;
  v28 = (v21 + 64) >> 6;
  v70 = (v2 + 56);
  v64 = (v2 + 48);
  v55 = (v2 + 32);
  v58 = (v2 + 8);
  v63 = v19;
  v59 = v16;
  v65 = v20;
  v54 = v28;
  while (v20 < 0)
  {
    v68 = v23;
    v35 = __CocoaSet.Iterator.next()();
    if (!v35)
    {
      goto LABEL_34;
    }

    v73 = v35;
    swift_dynamicCast();
    v34 = v74;
    v32 = v22;
    v33 = v68;
    if (!v74)
    {
      goto LABEL_34;
    }

LABEL_22:
    v36 = [v34 remObjectID];
    v61 = v22;
    if (v36)
    {
      v37 = v36;
      v38 = [v36 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = *v70;
    v41 = 1;
    (*v70)(v16, v39, 1, v72);
    v42 = [v67 sharedOwnerIdentifier];
    v69 = v33;
    if (v42)
    {
      v43 = v42;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = 0;
    }

    v45 = v71;
    v44 = v72;
    v40(v71, v41, 1, v72);
    v46 = *(v66 + 48);
    sub_10018E470(v16, v7);
    sub_10018E470(v45, &v7[v46]);
    v47 = *v64;
    if ((*v64)(v7, 1, v44) == 1)
    {
      sub_1000050A4(v71, &unk_100939D90, "8\n\r");
      sub_1000050A4(v16, &unk_100939D90, "8\n\r");
      v29 = v47(&v7[v46], 1, v72);
      v20 = v65;
      if (v29 == 1)
      {
        sub_1000050A4(v7, &unk_100939D90, "8\n\r");
LABEL_34:
        sub_10001B860();
        return;
      }

      goto LABEL_11;
    }

    v49 = v71;
    v48 = v72;
    v50 = v60;
    sub_10018E470(v7, v60);
    if (v47(&v7[v46], 1, v48) == 1)
    {
      sub_1000050A4(v49, &unk_100939D90, "8\n\r");
      v16 = v59;
      sub_1000050A4(v59, &unk_100939D90, "8\n\r");
      (*v58)(v50, v48);
      v20 = v65;
LABEL_11:
      sub_1000050A4(v7, &unk_10093A3D0, &qword_100795770);
      goto LABEL_12;
    }

    v51 = v57;
    (*v55)(v57, &v7[v46], v48);
    sub_100029FD8(&qword_10093A3E0, &type metadata accessor for UUID);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v52 = *v58;
    (*v58)(v51, v48);
    sub_1000050A4(v49, &unk_100939D90, "8\n\r");
    v16 = v59;
    sub_1000050A4(v59, &unk_100939D90, "8\n\r");
    v52(v50, v48);
    v28 = v54;
    sub_1000050A4(v7, &unk_100939D90, "8\n\r");
    v20 = v65;
    if (v56)
    {
      goto LABEL_34;
    }

LABEL_12:

    v22 = v32;
    v23 = v69;
  }

  v30 = v22;
  v31 = v23;
  v32 = v22;
  if (v23)
  {
LABEL_18:
    v68 = v23;
    v33 = (v31 - 1) & v31;
    v34 = *(*(v20 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
    if (!v34)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v28)
    {
      goto LABEL_34;
    }

    v31 = *(v62 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_100029CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10093F290, &qword_10079DBD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_100029D14(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F5104(a5, a6);
  v16 = *(sub_1000F5104(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1000F5104(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

unint64_t sub_100029EFC()
{
  result = qword_100942E50;
  if (!qword_100942E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100942E50);
  }

  return result;
}

uint64_t sub_100029F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029F90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029FD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10002A08C(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v27 = a3;
  v4 = sub_1000F5104(&unk_10093F290, &qword_10079DBD0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010364(a1, v8, &unk_10093F290, &qword_10079DBD0);
  v13 = *&v8[*(v5 + 56)];
  v30 = v12;
  sub_10002A4A8(v8, v12);
  v29 = v13;
  if ((v13 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
    sub_10000CDE4(&qword_10093A8E8, &unk_100947240, NSEntityDescription_ptr);
    Set.Iterator.init(_cocoa:)();
    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = v36;
    v17 = v37;
  }

  else
  {
    v18 = -1 << *(v13 + 32);
    v14 = v13 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v13 + 56);

    v16 = 0;
  }

  v28 = v15;
  while (v13 < 0)
  {
    v24 = __CocoaSet.Iterator.next()();
    if (!v24 || (v32 = v24, sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr), swift_dynamicCast(), (v23 = v38) == 0))
    {
LABEL_19:
      sub_10001B860();
      sub_1000292E8(v30);

      return;
    }

LABEL_17:
    v25 = [v31 isKindOfEntity:{v23, v27, v28, v29}];

    if (v25)
    {
      sub_10001B860();

      v26 = v30;
      sub_10002A660(v27);
      sub_1000292E8(v26);
      return;
    }
  }

  v21 = v16;
  v22 = v17;
  if (v17)
  {
LABEL_13:
    v17 = (v22 - 1) & v22;
    v23 = *(*(v13 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= ((v15 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v22 = *(v14 + 8 * v16);
    ++v21;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_10002A490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A4A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002A50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1000F5104(&unk_10093F290, &qword_10079DBD0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10002A660(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v21);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v20[1] = *(v2 + *(__chkstk_darwin(v13 - 8) + 32));
  sub_100026CD8(v2, v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v17 = swift_allocObject();
  sub_10002A4A8(v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v17 + ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_10002AB2C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F1DE0;
  v18 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10001BC00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v21);
}

uint64_t sub_10002A9E8()
{
  v1 = (type metadata accessor for RDStoreControllerNotificationCenter.Observer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = *(v5 + v1[9] + 8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

id sub_10002AAF8(uint64_t a1)
{
  result = [*(a1 + 32) _isInICloudAccount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_10002AB2C()
{
  v1 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = v0 + *(v1 + 28) + v3;
  v6 = *(v5 + 8);
  return (*v5)(v4);
}

uint64_t sub_10002ABC8()
{
  v0 = type metadata accessor for Logger();
  sub_100006654(v0, &unk_1009359A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Notifying stores did change", v3, 2u);
  }

  v4 = _REMStoreChangedNotificationName;

  return notify_post(v4);
}

void sub_10002AC8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100951C70);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "RDDataAccess: Received store controller changes!", v5, 2u);
    }

    [v1 remindersDatabaseDidChange];
  }

  else
  {
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_100951C70);
    v1 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v1, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v1, v7, "Received store changes with deallocated RDDataAccess!", v8, 2u);
    }
  }
}

void sub_10002AE64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = a1 + 1;
  if ((a1 + 1) > 0x22)
  {
    goto LABEL_15;
  }

  if (((1 << v4) & 0x40401) != 0)
  {
    if (qword_100935FE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100945260);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDWidgetRefreshEngine: requested widget refresh", v8, 2u);
    }

    v9 = *(v3 + OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_widgetRefresh);

    dispatch thunk of REMWidgetRefresh.refresh()();

    return;
  }

  if (((1 << v4) & 0x404000000) != 0)
  {
    if (qword_100935FE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100945260);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "RDWidgetRefreshEngine: requested high priority widget refresh", v13, 2u);
    }

    v14 = *(v3 + OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_highPriorityWidgetRefresh);

    dispatch thunk of REMWidgetRefresh.refresh()();
  }

  else
  {
LABEL_15:
    if (qword_100935FE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100945260);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349056;
      *(v18 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDWidgetRefreshEngine: Unknown QoS. {qualityOfService: %{public}ld}", v18, 0xCu);
    }
  }
}

id sub_10002B31C(id result, unint64_t a2, uint64_t a3, void (*a4)(id *, id *, uint64_t))
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

void sub_10002B448(void *a1, id *a2, uint64_t *a3)
{
  v4 = *a2;
  v36 = [*a2 account];
  _StringGuts.grow(_:)(33);

  v34 = [v4 remObjectID];
  sub_1000F5104(&unk_10093AF40, &unk_100795790);
  v5 = Optional.descriptionOrNil.getter();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 125;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  Optional.tryUnwrap(_:file:line:)();

  if (!v3)
  {
    v10 = [v37 remObjectID];
    _StringGuts.grow(_:)(46);

    v11 = [v37 objectID];
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 125;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    Optional.tryUnwrap(_:file:line:)();

    v18 = sub_10002B828(v37, *a3);
    if (v18)
    {
      v19 = v18;
      v20 = a1;
    }

    else
    {
      v22 = sub_100019990(v37);
      v19 = v22;
      v23 = *a3;
      if ((*a3 & 0xC000000000000001) != 0)
      {
        if (v23 < 0)
        {
          v24 = *a3;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFFFFFFFF8;
        }

        v25 = v22;
        v26 = v37;
        v27 = __CocoaDictionary.count.getter();
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          return;
        }

        *a3 = sub_10021E4F8(v24, v27 + 1);
      }

      else
      {
        v28 = v22;
        v29 = v37;
      }

      v20 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *a3;
      sub_10002B974(v19, v37, isUniquelyReferenced_nonNull_native);
      *a3 = v35;

      v18 = 0;
    }

    v21 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v31 = *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

void *sub_10002B850(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t *a5)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = a1;
    v8 = __CocoaDictionary.lookup(_:)();

    if (v8)
    {
      sub_1000060C8(0, a4, a5);
      swift_dynamicCast();
      return v15;
    }
  }

  else if (*(a2 + 16))
  {
    v11 = a3();
    if (v12)
    {
      v13 = *(*(a2 + 56) + 8 * v11);
      v14 = v13;
      return v13;
    }
  }

  return 0;
}

unint64_t sub_10002B924(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10002BD60(a1, v4, &qword_1009391E0, REMObjectID_ptr);
}

id sub_10002B974(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10002BD4C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1003731AC();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_10002BAEC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1000F5104(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      result = NSObject._rawHashValue(seed:)(*(v10 + 40));
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

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}