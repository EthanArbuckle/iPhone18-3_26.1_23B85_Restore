void sub_10014A58C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100938E90);
    swift_errorRetain();

    v5 = a3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v8 = 136315650;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v9 = String.init<A>(describing:)();
      v11 = sub_10000668C(v9, v10, &v33);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v12 = Array.description.getter();
      v14 = sub_10000668C(v12, v13, &v33);

      *(v8 + 14) = v14;
      *(v8 + 22) = 2080;
      v15 = [v5 actionIdentifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v33);

      *(v8 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDAssignmentNotificationEngine: Save error. Failed to save updates from notification response {error: %s , reminderIDs: %s, actionIdentifier: %s}", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_100938E90);

    v21 = a3;
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = [v21 actionIdentifier];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_10000668C(v25, v27, &v33);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v29 = Array.description.getter();
      v31 = sub_10000668C(v29, v30, &v33);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, oslog, v22, "RDAssignmentNotificationEngine: Updated reminder successfully. {actionIdentifier: %s, reminderIDs: %s}", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10014AA28(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6, void (*a7)())
{
  if (a3)
  {
    if (__CocoaDictionary.Index.age.getter() == *(a4 + 36))
    {
      __CocoaDictionary.Index.key.getter();
      sub_1000060C8(0, a5, a6);
      swift_dynamicCast();
      a7();
      v12 = v11;

      if (v12)
      {
        __CocoaDictionary.Index.dictionary.getter();
        __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  _HashTable.occupiedBucket(after:)();
  v13 = *(a4 + 36);
}

void sub_10014ABEC(void *a1, uint64_t a2, int a3, char a4, uint64_t a5, unint64_t *a6, uint64_t *a7, uint64_t (*a8)())
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      __CocoaDictionary.lookup(_:)();
      sub_1000060C8(0, a6, a7);
      swift_dynamicCast();
      sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
      swift_dynamicCast();
      *a1 = v19;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  __CocoaDictionary.Index.key.getter();
  sub_1000060C8(0, a6, a7);
  swift_dynamicCast();
  a2 = a8();
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v16 = *(*(a5 + 48) + 8 * a2);
  v17 = *(*(a5 + 56) + 8 * a2);
  *a1 = v17;
  v16;
  v18 = v17;
}

void *sub_10014ADD8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 8 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_10014AE5C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10014AEEC(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      __CocoaDictionary.lookup(_:)();
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      sub_1000060C8(0, &qword_100939208, REMReplicaManagerSerializedData_ptr);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  __CocoaDictionary.Index.key.getter();
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  swift_dynamicCast();
  a2 = sub_10002B924(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

void sub_10014B0D0(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v19 = a4;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (v13 << 9) | (8 * __clz(__rbit64(v10)));
      v15 = *(*(a1 + 56) + v14);
      v18[0] = *(*(a1 + 48) + v14);
      v18[1] = v15;
      v16 = v18[0];

      sub_100147DA0(v18, a2, a3, v19);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_10014B21C(uint64_t a1, void *a2)
{
  v2 = a1;
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaDictionary.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v3)
    {
      return result;
    }

    v33 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaDictionary.startIndex.getter();
    v30 = result;
    v31 = v5;
    v32 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(v2 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return result;
  }

  v33 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v6 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  v7 = *(v2 + 36);
  v30 = result;
  v31 = v7;
  v32 = 0;
LABEL_7:
  v8 = 0;
  v25 = v3;
  v26 = v2;
  while (v8 < v3)
  {
    if (__OFADD__(v8, 1))
    {
      goto LABEL_20;
    }

    v17 = v30;
    v16 = v31;
    v18 = v32;
    sub_10014ABEC(v29, v30, v31, v32, v2, &qword_1009391E0, REMObjectID_ptr, sub_10002B924);
    v20 = v19;
    v21 = v29[0];
    v22 = [a2 updateReminder:v29[0]];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v23 = v33[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v27)
    {
      v2 = v26;
      if (!v18)
      {
        goto LABEL_21;
      }

      if (__CocoaDictionary.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v3 = v25;
      v15 = v8 + 1;
      sub_1000F5104(&qword_100939200, &unk_100795D08);
      v24 = Dictionary.Index._asCocoa.modify();
      __CocoaDictionary.formIndex(after:isUnique:)();
      result = v24(v29, 0);
    }

    else
    {
      v2 = v26;
      sub_10014AA28(v17, v16, v18, v26, &qword_1009391E0, REMObjectID_ptr, sub_10002B924);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      result = sub_100010E34(v17, v16, v18);
      v30 = v10;
      v31 = v12;
      v32 = v14 & 1;
      v3 = v25;
      v15 = v8 + 1;
    }

    ++v8;
    if (v15 == v3)
    {
      sub_100010E34(v30, v31, v32);
      return v33;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10014B514(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v10 = (v3 + 64) >> 6;
  v24 = v5;
  v25 = v2;
LABEL_8:
  v11 = v9;
  while ((v5 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.nextKey()() || (sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr), swift_dynamicCast(), v14 = v28, v9 = v11, v26 = v4, !v28))
    {
LABEL_36:
      sub_10001B860();
      return;
    }

LABEL_19:
    if (([v14 isOriginatorNullified] & 1) == 0)
    {
      if (a2 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (v15)
        {
LABEL_22:
          v16 = 0;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v17 = *(a2 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
            v20 = [v18 objectID];
            v21 = [v14 originatorID];
            v22 = static NSObject.== infix(_:_:)();

            if (v22)
            {
              break;
            }

            ++v16;
            if (v19 == v15)
            {
              goto LABEL_9;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v23 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v5 = v24;
          v2 = v25;
          v10 = (v3 + 64) >> 6;
          v4 = v26;
          goto LABEL_8;
        }
      }

      else
      {
        v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_9:

    v11 = v9;
    v2 = v25;
    v4 = v26;
    v10 = (v3 + 64) >> 6;
    v5 = v24;
  }

  v12 = v11;
  v13 = v4;
  v9 = v11;
  if (v4)
  {
LABEL_15:
    v26 = (v13 - 1) & v13;
    v14 = *(*(v5 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v10)
    {
      goto LABEL_36;
    }

    v13 = *(v2 + 8 * v9);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_10014B888(void *a1, id a2)
{
  v2 = a2;
  v4 = [a2 list];
  v47 = a1;
  if ([a1 isOriginatorNullified])
  {
LABEL_30:

    return 0;
  }

  v5 = [v4 shareeContext];
  if (!v5)
  {
LABEL_25:
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100938E90);
    v33 = v47;
    v34 = v2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v37 = 138543618;
      v40 = [v34 remObjectID];
      *(v37 + 4) = v40;
      *v38 = v40;
      *(v37 + 12) = 2082;
      v41 = [v33 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_10000668C(v42, v44, &v48);

      *(v37 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v35, v36, "RDAssignmentNotificationEngine: Couldn't match the sharee object of the originator and it is not nullified {reminderID: %{public}@, assignment: %{public}s}", v37, 0x16u);
      sub_1000050A4(v38, &unk_100938E70, &unk_100797230);

      sub_10000607C(v39);
    }

    goto LABEL_30;
  }

  v6 = v5;
  v7 = [v5 sharees];

  sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = v2;
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
LABEL_24:

    v2 = v46;
    goto LABEL_25;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    v14 = [v12 objectID];
    v15 = [v47 originatorID];
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_24;
    }
  }

  v17 = [v12 shortName];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v19;
  }

  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_100938E90);
  v22 = v47;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v26;
    *v25 = 136446210;
    v27 = [v22 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, &v48);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "RDAssignmentNotificationEngine: The originator has absolutely no hint of how to display a formatted name... {assignment: %{public}s}", v25, 0xCu);
    sub_10000607C(v26);
  }

  return 0;
}

void *sub_10014BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
    if (a5 == 1 && a6 == 1)
    {

      v12 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100791300;
      *(v14 + 56) = &type metadata for String;
      v15 = sub_100006600();
      *(v14 + 64) = v15;
      *(v14 + 32) = a7;
      *(v14 + 40) = a8;
      isa = static String.localizedStringWithFormat(_:_:)();

      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100791340;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = v15;
      *(v17 + 32) = a3;
      *(v17 + 40) = a4;
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v15;
      *(v17 + 72) = a1;
      *(v17 + 80) = a2;

LABEL_15:
      static String.localizedStringWithFormat(_:_:)();

      return isa;
    }

    if (a5 >= 2 && a6 == 1)
    {

      v22 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100791340;
      *(v24 + 56) = &type metadata for String;
      v25 = sub_100006600();
      *(v24 + 32) = a7;
      *(v24 + 40) = a8;
      *(v24 + 96) = &type metadata for Int;
      *(v24 + 104) = &protocol witness table for Int;
      *(v24 + 64) = v25;
      *(v24 + 72) = a5;
      v26 = static String.localizedStringWithFormat(_:_:)();

      isa = v26;

      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100791300;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = v25;
      *(v27 + 32) = a1;
      *(v27 + 40) = a2;

      goto LABEL_15;
    }

    if (a5 >= 2 && a6 >= 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (a5 >= 2 && a6 >= 2)
    {
      goto LABEL_14;
    }

    if (a5 == 1)
    {
      v18 = _REMGetLocalizedString();
      isa = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100791340;
      *(v20 + 56) = &type metadata for String;
      v21 = sub_100006600();
      *(v20 + 32) = a3;
      *(v20 + 40) = a4;
      *(v20 + 96) = &type metadata for String;
      *(v20 + 104) = v21;
      *(v20 + 64) = v21;
      *(v20 + 72) = a1;
      *(v20 + 80) = a2;

      goto LABEL_15;
    }

    if (a5 >= 2)
    {
LABEL_14:
      v28 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100791300;
      *(v30 + 56) = &type metadata for Int;
      *(v30 + 64) = &protocol witness table for Int;
      *(v30 + 32) = a5;
      v31 = static String.localizedStringWithFormat(_:_:)();

      isa = v31;

      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100791300;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_100006600();
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;

      goto LABEL_15;
    }
  }

  v34 = a5 | a6;
  v35 = REMErrorDomain;
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  v36 = v34 == 0;
  if (v34)
  {
    v37 = "Posted Assignment Notification";
  }

  else
  {
    v37 = " assignments and orignators.";
  }

  if (v36)
  {
    v38 = 0xD000000000000035;
  }

  else
  {
    v38 = 0xD00000000000003CLL;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v40;
  *(inited + 48) = v38;
  *(inited + 56) = v37 | 0x8000000000000000;
  v41 = v35;
  sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100939260, &unk_100797220);
  v42 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v42 initWithDomain:v41 code:-1 userInfo:isa];

  swift_willThrow();
  return isa;
}

void sub_10014C4B8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = a3;
  v30 = [v8 list];
  v9 = [v8 titleAsString];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = sub_10014B888(v7, v8);
  v16 = v15;
  v17 = [v30 groceryContext];
  v29 = v7;
  if (v17)
  {
    v18 = v17;
    v19 = [v17 shouldCategorizeGroceryItems];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v30 name];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  LOBYTE(v26) = v19;
  sub_10014BDDC(v21, v23, v11, v13, a4, a5, v14, v16);

  v24 = String._bridgeToObjectiveC()();

  [a1 setTitle:{v24, v26}];

  v25 = String._bridgeToObjectiveC()();

  [a1 setBody:v25];
}

uint64_t sub_10014C898(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v109 = a5;
  v110 = a4;
  v106 = a3;
  v111 = a1;
  v8 = type metadata accessor for RDUserNotificationAction();
  v107 = *(v8 - 1);
  v108 = v8;
  v9 = *(v107 + 8);
  v10 = __chkstk_darwin(v8);
  v105 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v103 - v12;
  v14 = type metadata accessor for RDUserNotificationType();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v103 - v21;
  __chkstk_darwin(v20);
  v24 = &v103 - v23;
  v25 = (v15 + 16);
  v26 = *(v15 + 16);
  (v26)(&v103 - v23, a2, v14);
  v27 = (*(v15 + 88))(v24, v14);
  if (v27 == enum case for RDUserNotificationType.reminderAlarm(_:) || v27 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:) || v27 == enum case for RDUserNotificationType.caldavSharedList(_:))
  {
    goto LABEL_9;
  }

  if (v27 != enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    if (v27 != enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:) && v27 != enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
    {
      if (v27 != enum case for RDUserNotificationType.todayNotification(_:) && v27 != enum case for RDUserNotificationType.todayNotificationBadge(_:) && v27 != enum case for RDUserNotificationType.beforeFirstUnlock(_:))
      {
        v55 = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_46;
      }

      goto LABEL_10;
    }

LABEL_9:
    (*(v15 + 8))(v24, v14);
LABEL_10:
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_100938E90);
    (v26)(v22, a2, v14);
    v31 = v111;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      aBlock[0] = v111;
      *v34 = 136315394;
      (v26)(v19, v22, v14);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      (*(v15 + 8))(v22, v14);
      v38 = sub_10000668C(v35, v37, aBlock);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2112;
      *(v34 + 14) = v31;
      v39 = v108;
      *v108 = v31;
      v40 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "RDAssignmentNotificationEngine doesn't expect to receive actions of this type. {type: %s, response: %@}", v34, 0x16u);
      sub_1000050A4(v39, &unk_100938E70, &unk_100797230);

      sub_10000607C(v111);
    }

    else
    {

      (*(v15 + 8))(v22, v14);
    }

    goto LABEL_29;
  }

  v104 = v6;
  (*(v15 + 96))(v24, v14);
  v26 = *v24;
  if (qword_100935AC0 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_100938E90);
    v42 = v111;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    v45 = os_log_type_enabled(v43, v44);
    v25 = v108;
    v111 = v42;
    if (v45)
    {
      v46 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v46 = 136315394;
      v47 = [v42 actionIdentifier];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_10000668C(v48, v50, aBlock);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2080;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v52 = Array.description.getter();
      v54 = sub_10000668C(v52, v53, aBlock);

      *(v46 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "RDAssignmentNotificationEngine: Processing assignment notification response {actionIdentifier:%s, reminderIDs: %s}", v46, 0x16u);
      swift_arrayDestroy();
      v25 = v108;
    }

    v6 = v106;
    v22 = v107;
    v14 = *(v107 + 2);
    (v14)(v13, v106, v25);
    v55 = (*(v22 + 11))(v13, v25);
    v56 = v104;
    if (v55 == enum case for RDUserNotificationAction.defaultDismiss(_:) || v55 == enum case for RDUserNotificationAction.debugDismiss(_:) || v55 == enum case for RDUserNotificationAction.markAsCompleted(_:) || v55 == enum case for RDUserNotificationAction.snoozeForOneHour(_:) || v55 == enum case for RDUserNotificationAction.snoozeForOneDay(_:) || v55 == enum case for RDUserNotificationAction.snoozeToNextThirds(_:) || v55 == enum case for RDUserNotificationAction.snoozeToNextWeekend(_:) || v55 == enum case for RDUserNotificationAction.addToReminders(_:))
    {
      break;
    }

    if (v55 == enum case for RDUserNotificationAction.viewAssignmentInList(_:))
    {

      goto LABEL_29;
    }

LABEL_46:
    if (v55 != enum case for RDUserNotificationAction.declineAssignment(_:))
    {
      if (v55 != enum case for RDUserNotificationAction.viewRemindersInList(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      break;
    }

    v65 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v56 + 104)];
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    aBlock[0] = 0;
    v67 = [v65 fetchRemindersWithObjectIDs:isa error:aBlock];

    v68 = aBlock[0];
    if (!v67)
    {
      v86 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v89 = 136315394;
        v90 = Array.description.getter();
        v92 = v91;

        v93 = sub_10000668C(v90, v92, aBlock);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2080;
        swift_getErrorValue();
        v94 = Error.localizedDescription.getter();
        v96 = sub_10000668C(v94, v95, aBlock);

        *(v89 + 14) = v96;
        _os_log_impl(&_mh_execute_header, v87, v88, "RDAssignmentNotificationEngine: Error trying to retrieve reminder {reminderIDs: %s, error: %s}", v89, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      goto LABEL_29;
    }

    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v68;

    v71 = [objc_allocWithZone(REMSaveRequest) initWithStore:v65];
    v72 = sub_10014B21C(v69, v71);

    v103 = v26;
    v107 = v71;
    v108 = v65;
    if (v72 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
LABEL_69:

        v97 = *(v104 + 72);
        v98 = swift_allocObject();
        v99 = v111;
        v98[2] = v103;
        v98[3] = v99;
        aBlock[4] = sub_10014D6BC;
        aBlock[5] = v98;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100042968;
        aBlock[3] = &unk_1008E6178;
        v100 = _Block_copy(aBlock);
        v101 = v99;

        v102 = v107;
        [v107 saveWithQueue:v97 completion:v100];
        _Block_release(v100);

        goto LABEL_29;
      }
    }

    else
    {
      v13 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_69;
      }
    }

    v73 = 0;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v73 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v74 = *(v72 + 8 * v73 + 32);
      }

      v75 = v74;
      v26 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        break;
      }

      v76 = [v74 assignmentContext];
      [v76 removeAllAssignments];

      ++v73;
      if (v26 == v13)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v77 = v105;
  (v14)(v105, v6, v25);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock[0] = v81;
    *v80 = 136315138;
    v82 = RDUserNotificationAction.rawValue.getter();
    v84 = v83;
    (*(v22 + 1))(v77, v25);
    v85 = sub_10000668C(v82, v84, aBlock);

    *(v80 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v78, v79, "RDAssignmentNotificationEngine: Unexpected action %s for notification type .assignmentNotification", v80, 0xCu);
    sub_10000607C(v81);
  }

  else
  {

    (*(v22 + 1))(v77, v25);
  }

LABEL_29:
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100006654(v57, qword_100938E90);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "RDAssignmentNotificationEngine: Completing action handler by calling completionHandler now.", v60, 2u);
  }

  return v110();
}

uint64_t sub_10014D6C4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1(1);
  }

  return result;
}

uint64_t sub_10014D704()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    return v1(1);
  }

  return result;
}

uint64_t sub_10014D740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014D8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10014D938(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = a4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000668C(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v7, v8, "os_transaction INIT {name: %s}", v10, 0xCu);
    sub_10000607C(v11);

    a4 = v9;
  }

  String.utf8CString.getter();
  v12 = os_transaction_create();

  sub_100431DE0(v12, a4);
  swift_unknownObjectRelease();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10000668C(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v13, v14, "os_transaction RELEASE {name: %s}", v15, 0xCu);
    sub_10000607C(v16);
  }
}

uint64_t sub_10014DB78()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100939348);
  v1 = sub_100006654(v0, qword_100939348);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10014DC40(uint64_t a1, double a2)
{
  v5 = sub_1000F5104(&qword_100939638, &qword_100795F00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000F5104(&unk_1009472D0, &unk_1007AA0F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_lastFire;
  v15 = type metadata accessor for DispatchTime();
  v16 = *(*(v15 - 8) + 56);
  v16(v2 + v14, 1, 1, v15);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  DoubleStacksQueue.init()();
  (*(v10 + 32))(v2 + OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_measurements, v13, v9);
  v16(v8, 1, 1, v15);
  v17 = OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_lastFire;
  swift_beginAccess();
  sub_10014F54C(v8, v2 + v17);
  swift_endAccess();
  return v2;
}

uint64_t sub_10014DE3C()
{
  v1 = OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_measurements;
  v2 = sub_1000F5104(&unk_1009472D0, &unk_1007AA0F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000050A4(v0 + OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_lastFire, &qword_100939638, &qword_100795F00);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDDebouncing.LoadFactor()
{
  result = qword_1009393B0;
  if (!qword_1009393B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014DFD4()
{
  sub_10014E0B4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10014E104();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10014E0B4()
{
  if (!qword_1009393C0)
  {
    v0 = type metadata accessor for DoubleStacksQueue();
    if (!v1)
    {
      atomic_store(v0, &qword_1009393C0);
    }
  }
}

void sub_10014E104()
{
  if (!qword_1009393C8)
  {
    type metadata accessor for DispatchTime();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1009393C8);
    }
  }
}

void sub_10014E1FC(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_10014F6EC();
}

uint64_t sub_10014E23C()
{
  v1 = *(v0 + qword_1009394D8 + 8);

  sub_10014F334(*(v0 + qword_1009394E0), *(v0 + qword_1009394E0 + 8), *(v0 + qword_1009394E0 + 16), *(v0 + qword_1009394E0 + 24), *(v0 + qword_1009394E0 + 32));
  v2 = *(v0 + qword_1009394E8);

  v3 = *(v0 + qword_1009394F0 + 8);

  v4 = *(v0 + qword_100939500);

  v5 = *(v0 + qword_100939508);

  v6 = *(v0 + qword_100939510);
}

uint64_t sub_10014E2F0(uint64_t a1)
{
  v2 = *(a1 + qword_1009394D8 + 8);

  sub_10014F334(*(a1 + qword_1009394E0), *(a1 + qword_1009394E0 + 8), *(a1 + qword_1009394E0 + 16), *(a1 + qword_1009394E0 + 24), *(a1 + qword_1009394E0 + 32));
  v3 = *(a1 + qword_1009394E8);

  v4 = *(a1 + qword_1009394F0 + 8);

  v5 = *(a1 + qword_100939500);

  v6 = *(a1 + qword_100939508);

  v7 = *(a1 + qword_100939510);
}

void sub_10014E558(uint64_t a1, uint64_t a2)
{
  sub_10014F63C();
  sub_10014F688(&qword_100944230, 255, sub_10014F63C);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_10014E704(char a1, uint64_t a2, uint64_t a3)
{
  sub_10014F63C();
  sub_10014F688(&qword_100944230, 255, sub_10014F63C);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, a1 & 1, isa);
}

uint64_t sub_10014E960(uint64_t a1)
{
  sub_10014F5CC(a1, v6);
  if (!v7)
  {
    sub_1000050A4(v6, &qword_100939ED0, &qword_100791B10);
    goto LABEL_11;
  }

  type metadata accessor for RDDebounceableCKDatabaseNotification();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_databaseScope) != *&v5[OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_databaseScope])
  {

    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName) == *&v5[OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName] && *(v1 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName + 8) == *&v5[OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

uint64_t sub_10014EBB8()
{
  v1 = v0;
  _StringGuts.grow(_:)(55);
  v2._object = 0x80000001007ECDC0;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_databaseScope);
  v4 = CKDatabaseScopeString();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD000000000000023;
  v9._object = 0x80000001007ECDE0;
  String.append(_:)(v9);
  v10 = v1 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName;
  v11 = *(v1 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName);
  v12 = *(v10 + 8);

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  return 0;
}

uint64_t sub_10014EDF4(void *a1, double a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + *a1);
  v11 = *(v10 + qword_1009394D0);
  *v9 = v11;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    v14 = v10 + qword_1009394E0;
    v15 = *(v10 + qword_1009394E0 + 33);
    v16 = *(v10 + qword_1009394E0);
    v17 = *(v10 + qword_1009394E0 + 8);
    v18 = *(v10 + qword_1009394E0 + 16);
    v19 = *(v10 + qword_1009394E0 + 24);
    v20 = *(v10 + qword_1009394E0 + 32);
    *v14 = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 8) = 0;
    *(v14 + 32) = 0;
    *(v14 + 33) = v15;
    return sub_10014F334(v16, v17, v18, v19, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10014F034(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RDDebounceableCKDatabaseNotification();
  sub_10014F688(&unk_100943CF0, v3, type metadata accessor for RDDebounceableCKDatabaseNotification);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_10014F1D0(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RDDebounceableCKDatabaseNotification();
  sub_10014F688(&unk_100943CF0, v5, type metadata accessor for RDDebounceableCKDatabaseNotification);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, a1 & 1, isa);
}

id sub_10014F2B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10014F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_10014F334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t initializeWithCopy for RDDebouncing.Policy(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_10014F324(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t assignWithCopy for RDDebouncing.Policy(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_10014F324(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  sub_10014F334(v9, v10, v11, v12, v13);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

__n128 initializeWithTake for RDDebouncing.Policy(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDDebouncing.Policy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v4;
  sub_10014F334(v5, v6, v7, v8, v9);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDDebouncing.Policy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDebouncing.Policy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10014F54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100939638, &qword_100795F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100939ED0, &qword_100791B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10014F63C()
{
  result = qword_100938DE0;
  if (!qword_100938DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100938DE0);
  }

  return result;
}

uint64_t sub_10014F688(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t initializeWithCopy for RDDebouncing.Policy.Interval(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_10014F324(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for RDDebouncing.Policy.Interval(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_10014F324(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  sub_10014F334(v8, v9, v10, v11, v12);
  return a1;
}

__n128 initializeWithTake for RDDebouncing.Policy.Interval(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDDebouncing.Policy.Interval(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  sub_10014F334(v4, v6, v5, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDDebouncing.Policy.Interval(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDebouncing.Policy.Interval(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10014F954()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100939640);
  v1 = sub_100006654(v0, qword_100939640);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10014FA1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a3;
  v19 = a5;
  v9 = sub_1000F5104(&qword_100939778, &qword_100796298);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1001537D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = a2;
  v20 = 0;
  sub_1000F5104(&qword_100939718, &qword_100796278);
  sub_100153B84();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v15 = v19;
    v21 = v18;
    v20 = 1;
    sub_1000F5104(&qword_100939730, &qword_100796280);
    sub_100153C5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = a4;
    v20 = 2;
    sub_1000F5104(&qword_100939748, &qword_100796288);
    sub_100153D34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v15;
    v20 = 3;
    sub_1000F5104(&qword_100939760, &qword_100796290);
    sub_100153E0C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_10014FC84(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x73736572646461;
    v7 = 0x656475746974616CLL;
    v8 = 0x6E6F697461636F6CLL;
    if (a1 != 3)
    {
      v8 = 0x64757469676E6F6CLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x4C746361746E6F63;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x676E6974756F72;
    if (a1 != 9)
    {
      v2 = 0x656C746974;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x614874694B70616DLL;
    v4 = 0x74696D69786F7270;
    if (a1 != 6)
    {
      v4 = 0x737569646172;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10014FE00(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_1009396F8, &qword_100796268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29[-v8 - 8];
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_100153728();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v30) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v30) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    LOBYTE(v30) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v30) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v3[7];
    LOBYTE(v30) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v3 + 4);
    v31 = v30;
    v29[23] = 5;
    sub_1001516A8(&v31, v29);
    sub_10015377C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031A14(v30, *(&v30 + 1));
    v19 = v3[10];
    LOBYTE(v30) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[11];
    LOBYTE(v30) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[12];
    v22 = v3[13];
    LOBYTE(v30) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v3[14];
    v24 = v3[15];
    LOBYTE(v30) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v3[16];
    v26 = v3[17];
    LOBYTE(v30) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1001500F4()
{
  v1 = 0x6769725465746164;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x54656C6369686576;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_100150190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100151EB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001501C4(uint64_t a1)
{
  v2 = sub_1001537D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150200(uint64_t a1)
{
  v2 = sub_1001537D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015023C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100152030(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10015028C(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1003B0A38(*a1, *a2) & 1) == 0 || (sub_1003AE6C8(v2, v5) & 1) == 0 || (sub_1003B0A38(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1003AE66C(v3, v6);
}

uint64_t sub_100150344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001007ED0A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1001503D8(uint64_t a1)
{
  v2 = sub_1001536D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150414(uint64_t a1)
{
  v2 = sub_1001536D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001504E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100152378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100150514(uint64_t a1)
{
  v2 = sub_100153728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150550(uint64_t a1)
{
  v2 = sub_100153728();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10015058C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100152708(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_100150600(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return sub_100151354(v11, v12) & 1;
}

uint64_t sub_1001506A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746E49656D6974 && a2 == 0xEC0000006C617672)
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

uint64_t sub_100150730(uint64_t a1)
{
  v2 = sub_100153680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015076C(uint64_t a1)
{
  v2 = sub_100153680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001507EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, void *a5@<X8>)
{
  v17 = a5;
  v8 = sub_1000F5104(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = a1[4];
  sub_10000F61C(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    return sub_10000607C(a1);
  }

  v13 = v17;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  (*(v18 + 8))(v11, v8);
  result = sub_10000607C(a1);
  *v13 = v15;
  return result;
}

uint64_t sub_1001509A4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = sub_1000F5104(a4, a5);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = *v6;
  v15 = a1[4];
  sub_10000F61C(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100150AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
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

uint64_t sub_100150B80(uint64_t a1)
{
  v2 = sub_10015362C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150BBC(uint64_t a1)
{
  v2 = sub_10015362C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100150BF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_100939698, &qword_100796230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10015362C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_10000607C(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_100150D58(void *a1)
{
  v3 = sub_1000F5104(&qword_1009396A8, &qword_100796238);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10015362C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

void sub_100150E90(id *a1, char **a2, char **a3, char **a4, char **a5)
{
  v10 = *a1;
  v11 = [*a1 trigger];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = v11;
    v15 = sub_100151718(v13);

    if (v5)
    {
    }

    else
    {
      v30 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1003660D0(0, *(v30 + 2) + 1, 1, v30);
        *a2 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        *a2 = sub_1003660D0((v32 > 1), v33 + 1, 1, v30);
      }

      v34 = *a2;
      *(v34 + 2) = v33 + 1;
      *&v34[8 * v33 + 32] = v15;
    }
  }

  else
  {

    v16 = [v10 trigger];
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v16;
      sub_100151B30(v18, v58);
      v20 = *a3;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v20;
      if ((v21 & 1) == 0)
      {
        v20 = sub_100365FA8(0, *(v20 + 2) + 1, 1, v20);
        *a3 = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        *a3 = sub_100365FA8((v22 > 1), v23 + 1, 1, v20);
      }

      v24 = *a3;
      *(v24 + 2) = v23 + 1;
      v25 = &v24[144 * v23];
      v26 = v58[7];
      *(v25 + 8) = v58[6];
      *(v25 + 9) = v26;
      *(v25 + 10) = v58[8];
      v27 = v58[3];
      *(v25 + 4) = v58[2];
      *(v25 + 5) = v27;
      v28 = v58[5];
      *(v25 + 6) = v58[4];
      *(v25 + 7) = v28;
      v29 = v58[1];
      *(v25 + 2) = v58[0];
      *(v25 + 3) = v29;
    }

    else
    {

      v35 = [v10 trigger];
      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      if (v36)
      {
        [v36 timeInterval];
        v38 = v37;
        v39 = *a4;
        v40 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v39;
        if ((v40 & 1) == 0)
        {
          v39 = sub_100365F94(0, *(v39 + 2) + 1, 1, v39);
          *a4 = v39;
        }

        v42 = *(v39 + 2);
        v41 = *(v39 + 3);
        if (v42 >= v41 >> 1)
        {
          *a4 = sub_100365F94((v41 > 1), v42 + 1, 1, v39);
        }

        v43 = *a4;
        *(v43 + 2) = v42 + 1;
        *&v43[8 * v42 + 32] = v38;
      }

      else
      {

        v44 = [v10 trigger];
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();
        if (v45)
        {
          v46 = [v45 event];
          v47 = *a5;
          v48 = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v47;
          if ((v48 & 1) == 0)
          {
            v47 = sub_100365E90(0, *(v47 + 2) + 1, 1, v47);
            *a5 = v47;
          }

          v50 = *(v47 + 2);
          v49 = *(v47 + 3);
          if (v50 >= v49 >> 1)
          {
            *a5 = sub_100365E90((v49 > 1), v50 + 1, 1, v47);
          }

          v51 = *a5;
          *(v51 + 2) = v50 + 1;
          *&v51[8 * v50 + 32] = v46;
        }

        else
        {

          _StringGuts.grow(_:)(74);
          v52._object = 0x80000001007ED010;
          v52._countAndFlagsBits = 0xD000000000000047;
          String.append(_:)(v52);
          v53 = [v10 trigger];
          swift_getObjectType();

          v54._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v54);

          v55._countAndFlagsBits = 125;
          v55._object = 0xE100000000000000;
          String.append(_:)(v55);
          v56 = objc_opt_self();
          v57 = String._bridgeToObjectiveC()();

          [v56 internalErrorWithDebugDescription:v57];

          swift_willThrow();
        }
      }
    }
  }
}

uint64_t sub_100151354(double *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a1 + 3);
  v11 = *(a2 + 24);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (*(a1 + 2) != *(a2 + 16) || v10 != v11)
    {
      v12 = a1;
      v13 = *(a1 + 2);
      v14 = a2;
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v17 = *(a1 + 6);
  v18 = *(a2 + 48);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (*(a1 + 5) != *(a2 + 40) || v17 != v18)
    {
      v19 = a1;
      v20 = *(a1 + 5);
      v21 = a2;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (a1[7] != *(a2 + 56))
  {
    return 0;
  }

  v24 = *(a1 + 4);
  v44 = *(a2 + 64);
  v45 = v24;
  v25 = v24;
  v26 = v44;
  if (*(&v24 + 1) >> 60 != 15)
  {
    if (*(&v44 + 1) >> 60 != 15)
    {
      v27 = a1;
      v28 = a2;
      sub_1001516A8(&v45, v43);
      sub_1001516A8(&v44, v43);
      v29 = sub_1001CA5EC(v25, *(&v25 + 1), v26, *(&v26 + 1));
      sub_100031A14(v26, *(&v26 + 1));
      sub_100031A14(v25, *(&v25 + 1));
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_32;
    }

LABEL_30:
    sub_1001516A8(&v45, v43);
    sub_1001516A8(&v44, v43);
    sub_100031A14(v25, *(&v25 + 1));
    sub_100031A14(v26, *(&v26 + 1));
    return 0;
  }

  if (*(&v44 + 1) >> 60 != 15)
  {
    goto LABEL_30;
  }

  v27 = a1;
  v28 = a2;
  sub_1001516A8(&v45, v43);
  sub_1001516A8(&v44, v43);
  sub_100031A14(v25, *(&v25 + 1));
LABEL_32:
  if (*(v27 + 10) != *(v28 + 80))
  {
    return 0;
  }

  v30 = v27;
  v31 = v28;
  if (v27[11] != *(v28 + 88))
  {
    return 0;
  }

  v32 = *(v27 + 13);
  v33 = *(v28 + 104);
  if (v32)
  {
    if (!v33)
    {
      return 0;
    }

    if (*(v27 + 12) != *(v28 + 96) || v32 != v33)
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v31 = v28;
      v30 = v27;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v35 = *(v30 + 15);
  v36 = v31[15];
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    if (*(v30 + 14) != v31[14] || v35 != v36)
    {
      v37 = v30;
      v38 = v31;
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v31 = v38;
      v30 = v37;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v36)
  {
    return 0;
  }

  v40 = *(v30 + 17);
  v41 = v31[17];
  if (v40)
  {
    if (v41 && (*(v30 + 16) == v31[16] && v40 == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v41)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001516A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100938C10, &unk_100795F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100151718(void *a1)
{
  v43 = type metadata accessor for TimeZone();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v40 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v38 - v16;
  v18 = objc_opt_self();
  v38[0] = a1;
  v19 = [a1 dateComponents];
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v21 = *(v8 + 8);
  v38[1] = (v8 + 8);
  v39 = v7;
  v21(v11, v7);
  v22 = v21;
  static TimeZone.current.getter();
  v23 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v43);
  v24 = [v18 rem_dateWithDateComponents:isa timeZone:v23];

  if (v24)
  {
    v25 = v40;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = v41;
    v27 = v25;
    v28 = v42;
    (*(v41 + 32))(v17, v27, v42);
    Date.timeIntervalSinceReferenceDate.getter();
    v1 = v29;
    (*(v26 + 8))(v17, v28);
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v30._object = 0x80000001007ED060;
    v30._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v30);
    v31 = [v38[0] dateComponents];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100152E68();
    v32 = v39;
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v22(v11, v32);
    v34._countAndFlagsBits = 125;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35 = objc_opt_self();
    v36 = String._bridgeToObjectiveC()();

    [v35 internalErrorWithDebugDescription:v36];

    swift_willThrow();
  }

  return v1;
}

void sub_100151B30(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 structuredLocation];
  v5 = [v4 address];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v7;
    v54 = v6;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v8 = [a1 structuredLocation];
  v9 = [v8 contactLabel];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v11;
    v52 = v10;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v12 = [a1 structuredLocation];
  [v12 latitude];
  v14 = v13;

  v15 = [a1 structuredLocation];
  v16 = [v15 locationUID];

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v18;
    v50 = v17;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v19 = [a1 structuredLocation];
  [v19 longitude];
  v21 = v20;

  v22 = [a1 structuredLocation];
  v23 = [v22 mapKitHandle];

  if (v23)
  {
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v25;
    v47 = v24;
  }

  else
  {
    v45 = 0xF000000000000000;
    v47 = 0;
  }

  v26 = [a1 proximity];
  v27 = [a1 structuredLocation];
  [v27 radius];
  v29 = v28;

  v30 = [a1 structuredLocation];
  v31 = [v30 referenceFrameString];

  if (v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [a1 structuredLocation];
  v36 = [v35 routing];

  if (v36)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = [a1 structuredLocation];
  v41 = [v40 title];

  if (v41)
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {

    v42 = 0;
    v44 = 0;
  }

  *a2 = v54;
  a2[1] = v53;
  a2[2] = v52;
  a2[3] = v51;
  a2[4] = v14;
  a2[5] = v50;
  a2[6] = v49;
  a2[7] = v21;
  a2[8] = v48;
  a2[9] = v46;
  a2[10] = v26;
  a2[11] = v29;
  a2[12] = v32;
  a2[13] = v34;
  a2[14] = v37;
  a2[15] = v39;
  a2[16] = v42;
  a2[17] = v44;
}

uint64_t sub_100151EB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6769725465746164 && a2 == 0xEC00000073726567;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001007ED0E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001007ED100 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54656C6369686576 && a2 == 0xEF73726567676972)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100152030(uint64_t *a1)
{
  v3 = sub_1000F5104(&qword_100939708, &qword_100796270);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_10000F61C(a1, v8);
  sub_1001537D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000F5104(&qword_100939718, &qword_100796278);
    v11 = 0;
    sub_100153824();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v12;
    sub_1000F5104(&qword_100939730, &qword_100796280);
    v11 = 1;
    sub_1001538FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000F5104(&qword_100939748, &qword_100796288);
    v11 = 2;
    sub_1001539D4();
    v10 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000F5104(&qword_100939760, &qword_100796290);
    v11 = 3;
    sub_100153AAC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

uint64_t sub_100152378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEB00000000444955 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614874694B70616DLL && a2 == 0xEC000000656C646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001007ED0C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E6974756F72 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100152708@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = sub_1000F5104(&qword_1009396E0, &qword_100796260);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v50);
  v8 = &v38 - v7;
  v9 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_100153728();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v10 = v5;
  v49 = a2;
  LOBYTE(v60) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = v12;
  LOBYTE(v60) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v14;
  v44 = v13;
  LOBYTE(v60) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  LOBYTE(v60) = 3;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = v17;
  LOBYTE(v60) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  LOBYTE(v51) = 5;
  sub_1000318F4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v61;
  v46 = v60;
  LOBYTE(v60) = 6;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v60) = 7;
  KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v22;
  LOBYTE(v60) = 8;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = 0;
  v24 = v23;
  LOBYTE(v60) = 9;
  *&v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v39 + 1) = v25;
  v42 = 0;
  v77 = 10;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v27;
  v42 = 0;
  v28 = v26;
  (*(v10 + 8))(v8, v50);
  v29 = v47;
  *&v51 = v11;
  *(&v51 + 1) = v48;
  *&v52 = v44;
  *(&v52 + 1) = v47;
  *&v53 = v16;
  v30 = v45;
  *(&v53 + 1) = v43;
  *&v54 = v45;
  *(&v54 + 1) = v19;
  *&v55 = v46;
  *(&v55 + 1) = v20;
  *&v56 = v21;
  v31 = v40;
  *(&v56 + 1) = v40;
  *&v57 = v41;
  *(&v57 + 1) = v24;
  v58 = v39;
  *&v59 = v28;
  *(&v59 + 1) = v38;
  sub_1000FE280(&v51, &v60);
  sub_10000607C(a1);
  v60 = v11;
  v61 = v48;
  v62 = v44;
  v63 = v29;
  v64 = v16;
  v65 = v43;
  v66 = v30;
  v67 = v19;
  v68 = v46;
  v69 = v20;
  v70 = v21;
  v71 = v31;
  v72 = v41;
  v73 = v24;
  v74 = v39;
  v75 = v28;
  v76 = v38;
  result = sub_1000FE2DC(&v60);
  v33 = v58;
  v34 = v49;
  v49[6] = v57;
  v34[7] = v33;
  v34[8] = v59;
  v35 = v54;
  v34[2] = v53;
  v34[3] = v35;
  v36 = v56;
  v34[4] = v55;
  v34[5] = v36;
  v37 = v52;
  *v34 = v51;
  v34[1] = v37;
  return result;
}

char *sub_100152CF4(unint64_t a1)
{
  v12 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = v5;
      sub_100150E90(&v9, &v13, &v12, &v11, &v10);
      if (v1)
      {

        return i;
      }

      ++v4;
      if (v7 == i)
      {
        i = v13;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  i = _swiftEmptyArrayStorage;
LABEL_17:

  return i;
}

unint64_t sub_100152E68()
{
  result = qword_100939690;
  if (!qword_100939690)
  {
    type metadata accessor for DateComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939690);
  }

  return result;
}

uint64_t destroy for RDSavedAlarmLocationTrigger(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[6];

  v5 = a1[9];
  if (v5 >> 60 != 15)
  {
    sub_10001BBA0(a1[8], v5);
  }

  v6 = a1[13];

  v7 = a1[15];

  v8 = a1[17];
}

uint64_t initializeWithCopy for RDSavedAlarmLocationTrigger(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 72);

  if (v7 >> 60 == 15)
  {
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v8 = *(a2 + 64);
    sub_100029344(v8, v7);
    *(a1 + 64) = v8;
    *(a1 + 72) = v7;
  }

  *(a1 + 80) = *(a2 + 80);
  v9 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  v10 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v10;
  v11 = *(a2 + 128);
  v12 = *(a2 + 136);
  *(a1 + 128) = v11;
  *(a1 + 136) = v12;

  return a1;
}

void *assignWithCopy for RDSavedAlarmLocationTrigger(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];
  v6 = a1[6];
  a1[6] = a2[6];

  a1[7] = a2[7];
  v7 = a2[9];
  if (a1[9] >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      v9 = a2[8];
      sub_100029344(v9, a2[9]);
      v10 = a1[8];
      v11 = a1[9];
      a1[8] = v9;
      a1[9] = v7;
      sub_10001BBA0(v10, v11);
      goto LABEL_8;
    }

    sub_1001531B8((a1 + 8));
    goto LABEL_6;
  }

  if (v7 >> 60 == 15)
  {
LABEL_6:
    *(a1 + 4) = *(a2 + 4);
    goto LABEL_8;
  }

  v8 = a2[8];
  sub_100029344(v8, a2[9]);
  a1[8] = v8;
  a1[9] = v7;
LABEL_8:
  a1[10] = a2[10];
  a1[11] = a2[11];
  a1[12] = a2[12];
  v12 = a1[13];
  a1[13] = a2[13];

  a1[14] = a2[14];
  v13 = a1[15];
  a1[15] = a2[15];

  a1[16] = a2[16];
  v14 = a2[17];
  v15 = a1[17];
  a1[17] = v14;

  return a1;
}

__n128 initializeWithTake for RDSavedAlarmLocationTrigger(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

void *assignWithTake for RDSavedAlarmLocationTrigger(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  a1[4] = a2[4];
  v8 = a2[6];
  v9 = a1[6];
  a1[5] = a2[5];
  a1[6] = v8;

  a1[7] = a2[7];
  v10 = a1[9];
  if (v10 >> 60 != 15)
  {
    v11 = a2[9];
    if (v11 >> 60 != 15)
    {
      v12 = a1[8];
      a1[8] = a2[8];
      a1[9] = v11;
      sub_10001BBA0(v12, v10);
      goto LABEL_6;
    }

    sub_1001531B8((a1 + 8));
  }

  *(a1 + 4) = *(a2 + 4);
LABEL_6:
  a1[10] = a2[10];
  a1[11] = a2[11];
  v13 = a2[13];
  v14 = a1[13];
  a1[12] = a2[12];
  a1[13] = v13;

  v15 = a2[15];
  v16 = a1[15];
  a1[14] = a2[14];
  a1[15] = v15;

  v17 = a2[17];
  v18 = a1[17];
  a1[16] = a2[16];
  a1[17] = v17;

  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedAlarmLocationTrigger(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedAlarmLocationTrigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t destroy for RDSavedAlarmTriggers(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];
}

void *initializeWithCopy for RDSavedAlarmTriggers(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for RDSavedAlarmTriggers(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a1[2];
  a1[2] = a2[2];

  v7 = a2[3];
  v8 = a1[3];
  a1[3] = v7;

  return a1;
}

void *assignWithTake for RDSavedAlarmTriggers(void *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedAlarmTriggers(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for RDSavedAlarmTriggers(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10015362C()
{
  result = qword_1009396A0;
  if (!qword_1009396A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009396A0);
  }

  return result;
}

unint64_t sub_100153680()
{
  result = qword_1009396B8;
  if (!qword_1009396B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009396B8);
  }

  return result;
}

unint64_t sub_1001536D4()
{
  result = qword_1009396D0;
  if (!qword_1009396D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009396D0);
  }

  return result;
}

unint64_t sub_100153728()
{
  result = qword_1009396E8;
  if (!qword_1009396E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009396E8);
  }

  return result;
}

unint64_t sub_10015377C()
{
  result = qword_100939700;
  if (!qword_100939700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939700);
  }

  return result;
}

unint64_t sub_1001537D0()
{
  result = qword_100939710;
  if (!qword_100939710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939710);
  }

  return result;
}

unint64_t sub_100153824()
{
  result = qword_100939720;
  if (!qword_100939720)
  {
    sub_1000F514C(&qword_100939718, &qword_100796278);
    sub_1001538A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939720);
  }

  return result;
}

unint64_t sub_1001538A8()
{
  result = qword_100939728;
  if (!qword_100939728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939728);
  }

  return result;
}

unint64_t sub_1001538FC()
{
  result = qword_100939738;
  if (!qword_100939738)
  {
    sub_1000F514C(&qword_100939730, &qword_100796280);
    sub_100153980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939738);
  }

  return result;
}

unint64_t sub_100153980()
{
  result = qword_100939740;
  if (!qword_100939740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939740);
  }

  return result;
}

unint64_t sub_1001539D4()
{
  result = qword_100939750;
  if (!qword_100939750)
  {
    sub_1000F514C(&qword_100939748, &qword_100796288);
    sub_100153A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939750);
  }

  return result;
}

unint64_t sub_100153A58()
{
  result = qword_100939758;
  if (!qword_100939758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939758);
  }

  return result;
}

unint64_t sub_100153AAC()
{
  result = qword_100939768;
  if (!qword_100939768)
  {
    sub_1000F514C(&qword_100939760, &qword_100796290);
    sub_100153B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939768);
  }

  return result;
}

unint64_t sub_100153B30()
{
  result = qword_100939770;
  if (!qword_100939770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939770);
  }

  return result;
}

unint64_t sub_100153B84()
{
  result = qword_100939780;
  if (!qword_100939780)
  {
    sub_1000F514C(&qword_100939718, &qword_100796278);
    sub_100153C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939780);
  }

  return result;
}

unint64_t sub_100153C08()
{
  result = qword_100939788;
  if (!qword_100939788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939788);
  }

  return result;
}

unint64_t sub_100153C5C()
{
  result = qword_100939790;
  if (!qword_100939790)
  {
    sub_1000F514C(&qword_100939730, &qword_100796280);
    sub_100153CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939790);
  }

  return result;
}

unint64_t sub_100153CE0()
{
  result = qword_100939798;
  if (!qword_100939798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939798);
  }

  return result;
}

unint64_t sub_100153D34()
{
  result = qword_1009397A0;
  if (!qword_1009397A0)
  {
    sub_1000F514C(&qword_100939748, &qword_100796288);
    sub_100153DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397A0);
  }

  return result;
}

unint64_t sub_100153DB8()
{
  result = qword_1009397A8;
  if (!qword_1009397A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397A8);
  }

  return result;
}

unint64_t sub_100153E0C()
{
  result = qword_1009397B0;
  if (!qword_1009397B0)
  {
    sub_1000F514C(&qword_100939760, &qword_100796290);
    sub_100153E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397B0);
  }

  return result;
}

unint64_t sub_100153E90()
{
  result = qword_1009397B8;
  if (!qword_1009397B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDSavedAlarmLocationTrigger.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedAlarmLocationTrigger.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100154078()
{
  result = qword_1009397C0;
  if (!qword_1009397C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397C0);
  }

  return result;
}

unint64_t sub_1001540D0()
{
  result = qword_1009397C8;
  if (!qword_1009397C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397C8);
  }

  return result;
}

unint64_t sub_100154128()
{
  result = qword_1009397D0;
  if (!qword_1009397D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397D0);
  }

  return result;
}

unint64_t sub_100154180()
{
  result = qword_1009397D8;
  if (!qword_1009397D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397D8);
  }

  return result;
}

unint64_t sub_1001541D8()
{
  result = qword_1009397E0;
  if (!qword_1009397E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397E0);
  }

  return result;
}

unint64_t sub_100154230()
{
  result = qword_1009397E8;
  if (!qword_1009397E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397E8);
  }

  return result;
}

unint64_t sub_100154288()
{
  result = qword_1009397F0;
  if (!qword_1009397F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397F0);
  }

  return result;
}

unint64_t sub_1001542E0()
{
  result = qword_1009397F8;
  if (!qword_1009397F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397F8);
  }

  return result;
}

unint64_t sub_100154338()
{
  result = qword_100939800;
  if (!qword_100939800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939800);
  }

  return result;
}

unint64_t sub_100154390()
{
  result = qword_100939808;
  if (!qword_100939808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939808);
  }

  return result;
}

unint64_t sub_1001543E8()
{
  result = qword_100939810;
  if (!qword_100939810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939810);
  }

  return result;
}

unint64_t sub_100154440()
{
  result = qword_100939818;
  if (!qword_100939818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939818);
  }

  return result;
}

unint64_t sub_100154498()
{
  result = qword_100939820;
  if (!qword_100939820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939820);
  }

  return result;
}

unint64_t sub_1001544F0()
{
  result = qword_100939828;
  if (!qword_100939828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939828);
  }

  return result;
}

unint64_t sub_100154548()
{
  result = qword_100939830;
  if (!qword_100939830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939830);
  }

  return result;
}

uint64_t sub_1001545D0()
{
  v1 = v0;
  v2 = _s10PredicatesOMa_1();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v6];

  if (qword_100936520 != -1)
  {
    goto LABEL_127;
  }

  while (2)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v7 setSortDescriptors:isa];

    v10 = NSManagedObjectContext.fetch<A>(_:)();
    if (v1)
    {
      sub_1001555B4(v5);

      return v1;
    }

    v110 = 0;
    v143 = v10;
    v1 = v10;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_100155610();
    v11 = Sequence.elements<A>(ofType:)();

    v143 = _swiftEmptyArrayStorage;
    if (v11 >> 62)
    {
LABEL_130:
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v111 = v5;
    if (!v12)
    {
      v115 = _swiftEmptyArrayStorage;
LABEL_121:

      v105 = objc_allocWithZone(REMFamilyChecklistSharedGroceryListInvocationResult);
      sub_1000060C8(0, &qword_100939838, REMFamilyChecklistSharedGroceryList_ptr);
      v106 = Array._bridgeToObjectiveC()().super.isa;

      v1 = [v105 initWithSharedGroceryLists:v106];

      sub_1001555B4(v111);
      return v1;
    }

    v13 = 0;
    v7 = (v11 & 0xC000000000000001);
    v117 = v11 & 0xFFFFFFFFFFFFFF8;
    v116 = v11 + 32;
    v115 = _swiftEmptyArrayStorage;
    v119 = v11;
    v118 = v12;
    v120 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v117 + 16))
        {
          goto LABEL_126;
        }

        v14 = *(v116 + 8 * v13);
      }

      v15 = v14;
      v16 = __OFADD__(v13++, 1);
      if (v16)
      {
        goto LABEL_124;
      }

      v17 = [v14 remObjectID];
      if (!v17)
      {
        goto LABEL_9;
      }

      v18 = v17;
      v19 = [v15 sharees];
      if (v19)
      {
        break;
      }

LABEL_9:
LABEL_10:
      if (v13 == v12)
      {
        goto LABEL_121;
      }
    }

    v20 = v19;
    v122 = v18;
    v129 = v15;
    v21 = sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
    v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = v22;
    v123 = v13;
    v130 = v21;
    if ((v22 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v23 = v138;
      v24 = v139;
      v25 = v140;
      v26 = v141;
      v27 = v142;
    }

    else
    {
      v26 = 0;
      v28 = -1 << *(v22 + 32);
      v24 = v22 + 56;
      v25 = ~v28;
      v29 = -v28;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v27 = v30 & *(v22 + 56);
    }

    v127 = v27;
    v121 = v25;
    v31 = (v25 + 64) >> 6;
    v5 = _swiftEmptySetSingleton;
    v32 = _swiftEmptySetSingleton;
    v132 = v24;
    v133 = v23;
LABEL_25:
    v1 = v26;
    v33 = v127;
LABEL_28:
    if (v23 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38 || (v136 = v38, swift_dynamicCast(), v37 = v137, v26 = v1, v36 = v33, !v137))
      {
LABEL_111:
        sub_10001B860();
        v12 = v118;
        v13 = v123;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v101 = __CocoaSet.count.getter();
          v1 = v129;
          if (!v101)
          {
            goto LABEL_117;
          }
        }

        else
        {
          v1 = v129;
          if (!*(v5 + 16))
          {
LABEL_117:

            goto LABEL_10;
          }
        }

        v102 = objc_allocWithZone(REMFamilyChecklistSharedGroceryList);
        sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
        sub_10000CE28(&qword_100939848, &unk_10093C970, REMContactRepresentation_ptr);
        v1 = v122;
        v103 = Set._bridgeToObjectiveC()().super.isa;

        [v102 initWithListID:v1 participants:v103];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v104 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v115 = v143;
        v7 = v120;
        goto LABEL_10;
      }
    }

    else
    {
      v34 = v1;
      v35 = v33;
      v26 = v1;
      if (!v33)
      {
        while (1)
        {
          v26 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v26 >= v31)
          {
            goto LABEL_111;
          }

          v35 = *(v24 + 8 * v26);
          ++v34;
          if (v35)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        swift_once();
        continue;
      }

LABEL_33:
      v36 = (v35 - 1) & v35;
      v37 = *(*(v23 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v35)))));
      if (!v37)
      {
        goto LABEL_111;
      }
    }

    break;
  }

  v135 = v37;
  v39 = [(Swift::Int *)v37 address];
  if (!v39 || (v40 = v39, static String._unconditionallyBridgeFromObjectiveC(_:)(), v40, v41 = sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr), (v42 = REMContactRepresentation.init(address:)()) == 0))
  {
LABEL_27:

    v1 = v26;
    v33 = v36;
    v24 = v132;
    v23 = v133;
    goto LABEL_28;
  }

  v131 = v42;
  v43 = [v128 commonSharees];
  v134 = v41;
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v44 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1 = v5;
  v46 = v131;
  if (!v45)
  {

    goto LABEL_27;
  }

  if (v45 >= 1)
  {
    v5 = 0;
    v126 = v44 & 0xC000000000000001;
    v113 = v44 + 32;
    v127 = v36;
    v11 = v32;
    v124 = v45;
    v125 = v44;
    while (1)
    {
      if (v126)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = *(v113 + 8 * v5);
      }

      v48 = v47;
      if ([v47 matchesContactRepresentation:v46])
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          if ((v1 & 0x8000000000000000) != 0)
          {
            v49 = v1;
          }

          else
          {
            v49 = v1 & 0xFFFFFFFFFFFFFF8;
          }

          v50 = v48;

          v51 = __CocoaSet.member(for:)();

          if (v51)
          {

            v136 = v51;
            swift_dynamicCast();

            v46 = v131;
          }

          else
          {
            v78 = __CocoaSet.count.getter();
            if (__OFADD__(v78, 1))
            {
              goto LABEL_129;
            }

            v11 = sub_10037FBC0(v49, v78 + 1);
            v137 = v11;
            v79 = *(v11 + 16);
            if (*(v11 + 24) <= v79)
            {
              sub_100380E50(v79 + 1);
              v11 = v137;
            }

            v80 = *(v11 + 40);
            v81 = v50;
            v82 = NSObject._rawHashValue(seed:)(v80);
            v83 = v11 + 56;
            v84 = -1 << *(v11 + 32);
            v85 = v82 & ~v84;
            v86 = v85 >> 6;
            if (((-1 << v85) & ~*(v11 + 56 + 8 * (v85 >> 6))) == 0)
            {
              v88 = 0;
              v89 = (63 - v84) >> 6;
              while (++v86 != v89 || (v88 & 1) == 0)
              {
                v90 = v86 == v89;
                if (v86 == v89)
                {
                  v86 = 0;
                }

                v88 |= v90;
                v91 = *(v83 + 8 * v86);
                if (v91 != -1)
                {
                  v87 = __clz(__rbit64(~v91)) + (v86 << 6);
                  goto LABEL_96;
                }
              }

              goto LABEL_125;
            }

            v87 = __clz(__rbit64((-1 << v85) & ~*(v11 + 56 + 8 * (v85 >> 6)))) | v85 & 0x7FFFFFFFFFFFFFC0;
LABEL_96:
            *(v83 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
            *(*(v11 + 48) + 8 * v87) = v81;
            ++*(v11 + 16);

            v1 = v11;
            v46 = v131;
          }
        }

        else
        {
          v114 = v5;
          v112 = v11;
          v52 = NSObject._rawHashValue(seed:)(*(v1 + 40));
          v53 = v1 + 56;
          v54 = v1;
          v55 = -1 << *(v1 + 32);
          v1 = v52 & ~v55;
          if ((*(v53 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1))
          {
            v56 = ~v55;
            while (1)
            {
              v57 = *(*(v54 + 48) + 8 * v1);
              v58 = static NSObject.== infix(_:_:)();

              if (v58)
              {
                break;
              }

              v1 = (v1 + 1) & v56;
              if (((*(v53 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            v7 = v120;
            v1 = v54;
            v11 = v112;
            v46 = v131;
            v5 = v114;
          }

          else
          {
LABEL_62:
            v11 = v112;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v137 = v11;
            v60 = *(v11 + 16);
            if (*(v11 + 24) <= v60)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                sub_100380E50(v60 + 1);
              }

              else
              {
                sub_10038B97C(v60 + 1);
              }

              v5 = v114;
              v92 = v137;
              v93 = NSObject._rawHashValue(seed:)(v137[5]);
              v94 = v92 + 7;
              v11 = v92;
              v95 = -1 << *(v92 + 32);
              v1 = v93 & ~v95;
              if ((*(v94 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1))
              {
                v96 = ~v95;
                while (1)
                {
                  v97 = *(*(v11 + 48) + 8 * v1);
                  v98 = static NSObject.== infix(_:_:)();

                  if (v98)
                  {
                    goto LABEL_133;
                  }

                  v1 = (v1 + 1) & v96;
                  if (((*(v94 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
                  {
                    v7 = v120;
                    v46 = v131;
                    goto LABEL_103;
                  }
                }
              }

              v7 = v120;
              v46 = v131;
            }

            else
            {
              v7 = v120;
              v46 = v131;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1000F5104(&qword_100943FD0, &qword_100796890);
                v61 = static _SetStorage.copy(original:)();
                if (*(v11 + 16))
                {
                  v62 = v61;
                  v63 = (v61 + 56);
                  v64 = ((1 << *(v62 + 32)) + 63) >> 6;
                  v65 = v62;
                  if (v62 != v11 || v63 >= v11 + 56 + 8 * v64)
                  {
                    memmove(v63, (v11 + 56), 8 * v64);
                  }

                  v109 = v11 + 56;
                  v66 = 0;
                  *(v65 + 16) = *(v11 + 16);
                  v67 = 1 << *(v11 + 32);
                  v68 = *(v11 + 56);
                  if (v67 < 64)
                  {
                    v69 = ~(-1 << v67);
                  }

                  else
                  {
                    v69 = -1;
                  }

                  v70 = v69 & v68;
                  v71 = (v67 + 63) >> 6;
                  if ((v69 & v68) != 0)
                  {
                    do
                    {
                      v72 = __clz(__rbit64(v70));
                      v70 &= v70 - 1;
LABEL_78:
                      v75 = v72 | (v66 << 6);
                      v76 = *(*(v11 + 48) + 8 * v75);
                      *(*(v65 + 48) + 8 * v75) = v76;
                      v77 = v76;
                    }

                    while (v70);
                  }

                  v73 = v66;
                  while (1)
                  {
                    v66 = v73 + 1;
                    if (__OFADD__(v73, 1))
                    {
                      goto LABEL_132;
                    }

                    if (v66 >= v71)
                    {
                      v7 = v120;
                      goto LABEL_109;
                    }

                    v74 = *(v109 + 8 * v66);
                    ++v73;
                    if (v74)
                    {
                      v72 = __clz(__rbit64(v74));
                      v70 = (v74 - 1) & v74;
                      goto LABEL_78;
                    }
                  }
                }

                v65 = v61;
LABEL_109:
                v46 = v131;

                v11 = v65;
              }

LABEL_103:
              v5 = v114;
            }

            *(v11 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v1;
            *(*(v11 + 48) + 8 * v1) = v48;
            v99 = *(v11 + 16);
            v16 = __OFADD__(v99, 1);
            v100 = v99 + 1;
            if (v16)
            {
              __break(1u);
LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

            v1 = v11;
            *(v11 + 16) = v100;
          }
        }
      }

      else
      {
      }

      if (++v5 == v124)
      {
        v32 = v11;
        v5 = v1;

        v24 = v132;
        v23 = v133;
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1001553C8(uint64_t a1)
{
  v4 = objc_opt_self();
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v4 unsafeUntilSystemReady_primaryCloudKitAccountInContext:a1 appleAccountUtilities:v5];

  if (v6 && [v6 didChooseToMigrate])
  {
    v7 = [v6 didFinishMigration] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v1 localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for REMGroceryDummyModel();
  v9 = static REMGroceryDummyModel.isSupported(localeIdentifier:)();
  if (v2)
  {

    return;
  }

  v10 = v9;

  if ((v10 & 1) == 0)
  {
    if (v6)
    {
      v11 = 272;
    }

    else
    {
      v11 = 20;
    }

    if ((v7 & 1) == 0)
    {
      v12 = 0;
      v11 = 16;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v6)
  {
    v11 = 256;
  }

  else
  {
    v11 = 4;
  }

  if (v7)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_19;
  }

  v11 = 0;
  v12 = 1;
LABEL_19:
  v13 = [objc_allocWithZone(REMFamilyChecklistFamilyGroceryListEligibility) initWithIsEligible:v12 ineligibilityReasons:v11];
  [objc_allocWithZone(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult) initWithFamilyGroceryListEligibility:v13];
}

uint64_t sub_1001555B4(uint64_t a1)
{
  v2 = _s10PredicatesOMa_1();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100155610()
{
  result = qword_100945210;
  if (!qword_100945210)
  {
    sub_1000F514C(&qword_10093F6F0, qword_10079A300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945210);
  }

  return result;
}

void sub_100155674(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 completed];
      v12 = v9;
      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      else
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_100155828(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v12, a2, v8);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v9 + 8))(v12, v8);
LABEL_10:
    v15 = _swiftEmptySetSingleton;
    goto LABEL_11;
  }

  if (v13 != enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    if (v13 != enum case for REMRemindersListDataView.ShowCompleted.off(_:) && v13 != enum case for REMRemindersListDataView.ShowCompleted.on(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  (*(v9 + 96))(v12, v8);
  sub_100393DD8(*v12);
  v15 = v14;

LABEL_11:
  v39 = a3;
  v46 = _swiftEmptyArrayStorage;
  if (a4 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v37 = a1;
    v38 = a4;
    a1 = 0;
    v44 = a4 & 0xFFFFFFFFFFFFFF8;
    v45 = a4 & 0xC000000000000001;
    v18 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 < 0)
    {
      v18 = v15;
    }

    v40 = v18;
    v41 = v15 & 0xC000000000000001;
    v42 = v15 + 56;
    v43 = a4 + 32;
    while (1)
    {
      if (v45)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(v44 + 16))
        {
          goto LABEL_38;
        }

        v19 = *(v43 + 8 * a1);
      }

      v20 = v19;
      if (__OFADD__(a1++, 1))
      {
        break;
      }

      v22 = [v19 remObjectID];
      if (!v22)
      {
        goto LABEL_16;
      }

      v23 = v22;
      if (([v20 completed] & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v41)
      {
        v24 = v23;
        v25 = __CocoaSet.contains(_:)();

        if (v25)
        {
          goto LABEL_34;
        }

LABEL_16:

        goto LABEL_17;
      }

      if (*(v15 + 16))
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v26 = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v27 = -1 << *(v15 + 32);
        v28 = v26 & ~v27;
        if ((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          while (1)
          {
            a4 = *(*(v15 + 48) + 8 * v28);
            v30 = static NSObject.== infix(_:_:)();

            if (v30)
            {
              break;
            }

            v28 = (v28 + 1) & v29;
            if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

LABEL_33:

LABEL_34:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v31 = v46[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_17;
        }
      }

LABEL_32:

LABEL_17:
      if (a1 == i)
      {
        v32 = v46;
        a1 = v37;
        a4 = v38;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_41:

  v33 = sub_1001A574C(v32);

  v34 = sub_1002143F0(v33);

  v35 = sub_1002672EC(a1, v34, a4);

  return v35;
}

void (**sub_100155C54(uint64_t a1, void *a2, void (**a3)(char *, uint64_t)))(char *, uint64_t)
{
  v55 = a2;
  v46 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v46);
  v45 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v40 = *(v8 - 8);
  v9 = v40[8];
  v10 = __chkstk_darwin(v8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v42 = v39 - v14;
  __chkstk_darwin(v13);
  v54 = v39 - v15;
  v47 = a1;
  if (*(a1 + 16))
  {
    v58 = _swiftEmptyArrayStorage;
    if (a3 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = 0;
      v50 = a3 & 0xFFFFFFFFFFFFFF8;
      v51 = a3 & 0xC000000000000001;
      v39[1] = a3;
      v48 = a3 + 4;
      v49 = i;
      v41 = (v40 + 4);
      v52 = v40 + 2;
      v53 = v55 + 7;
      a3 = (v40 + 1);
      v44 = (v5 + 8);
      while (1)
      {
        if (v51)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(v50 + 16))
          {
            goto LABEL_26;
          }

          v19 = v48[v17];
        }

        v20 = v19;
        if (__OFADD__(v17++, 1))
        {
          break;
        }

        if (v55[2])
        {
          v22 = [v19 identifier];
          if (v22)
          {
            v43 = v20;
            v23 = v42;
            v24 = v22;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v41)(v54, v23, v8);
            if (v55[2])
            {
              v25 = v55;
              v26 = v55[5];
              sub_100157B5C(&qword_10093B410, &type metadata accessor for UUID);
              v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
              v28 = -1 << *(v25 + 32);
              v29 = v27 & ~v28;
              if ((*(v53 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
              {
                v30 = ~v28;
                v31 = v40[9];
                v32 = v40[2];
                while (1)
                {
                  v32(v12, v55[6] + v31 * v29, v8);
                  sub_100157B5C(&qword_10093A3E0, &type metadata accessor for UUID);
                  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v34 = *a3;
                  (*a3)(v12, v8);
                  if (v33)
                  {
                    break;
                  }

                  v29 = (v29 + 1) & v30;
                  if (((*(v53 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
                  {
                    goto LABEL_19;
                  }
                }

                v34(v54, v8);
                goto LABEL_6;
              }
            }

LABEL_19:
            (*a3)(v54, v8);
            v20 = v43;
          }
        }

        v56 = v47;
        v57 = v47;
        v35 = v20;
        sub_1000F5104(&qword_100949370, &unk_100797770);
        sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770);
        Predicate = Sequence<>.postFetchPredicateTypes.getter();
        v37 = v45;
        sub_10059062C(v35, Predicate, v45);
        v5 = Sequence<>.evaluate(with:)();
        (*v44)(v37, v46);
        if ((v5 & 1) == 0)
        {

          goto LABEL_7;
        }

LABEL_6:
        v5 = &v58;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v18 = v58[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_7:
        if (v17 == v49)
        {
          return v58;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
  }

  return a3;
}

void *sub_1001561A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a2, v5);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    sub_100155674(a3, &v15, &v16);
    v11 = sub_1001566AC();

    v12 = sub_1001566AC();

    v16 = v11;
    sub_100271930(v12);
    return v16;
  }

  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v6 + 8))(v9, v5);
    return sub_1001566AC();
  }

  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    return sub_1001566AC();
  }

  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    goto LABEL_3;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_1001563A0(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v36 = &v29 - v8;
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = *(v3 + 16);
  v12 = v3 + 16;
  v13 = v14;
  v33 = (*(v12 + 64) + 32) & ~*(v12 + 64);
  v15 = (a1 + v33);
  v16 = *(v12 + 56);
  v31 = (v12 + 16);
  v32 = v16;
  v30 = (v12 - 8);
  v17 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  v34 = v14;
  v35 = v12;
  v14(v10, v15, v2);
  while (1)
  {
    REMSortableElement.element.getter();
    v23 = v38;
    v24 = [v38 completed];

    if (v24)
    {
      v13(v36, v10, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100365A00(0, v18[2] + 1, 1, v18);
      }

      v26 = v18[2];
      v25 = v18[3];
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v20 = sub_100365A00(v25 > 1, v26 + 1, 1, v18);
        v21 = v36;
        v18 = v20;
      }

      else
      {
        v20 = v18;
        v21 = v36;
      }
    }

    else
    {
      v13(v37, v10, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100365A00(0, v17[2] + 1, 1, v17);
      }

      v26 = v17[2];
      v28 = v17[3];
      v27 = v26 + 1;
      if (v26 >= v28 >> 1)
      {
        v20 = sub_100365A00(v28 > 1, v26 + 1, 1, v17);
        v21 = v37;
        v17 = v20;
      }

      else
      {
        v20 = v17;
        v21 = v37;
      }
    }

    *(v20 + 16) = v27;
    v22 = v32;
    (*v31)(v20 + v33 + v26 * v32, v21, v2);
    (*v30)(v10, v2);
    v15 += v22;
    --v11;
    v13 = v34;
    if (!v11)
    {
      break;
    }

    v34(v10, v15, v2);
  }

  return v17;
}

void *sub_1001566AC()
{
  v0 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v0);
  sub_100157B5C(&qword_100939858, &type metadata accessor for REMRemindersListDataView.SortingDirection);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v1 + 8))(v4, v0);
  if (v9 == v8[2])
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  v9 = sub_10043630C(v6);
  sub_100156BC4(&v9, v5);
  return v9;
}

BOOL sub_100156848(id *a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = [*a1 title];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = [v4 title];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10013BCF4();
  v9 = StringProtocol.localizedStandardCompare<A>(_:)();

  return v9 == a3;
}

uint64_t sub_100156950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a2, v5);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    sub_1001563A0(a3);
    v12 = v11;
    sub_1000F5104(&qword_100939860, &unk_10079D480);
    sub_10000CB48(&qword_100939868, &qword_100939860, &unk_10079D480);
    v13 = Array<A>.sorted(by:)();

    v16 = v13;
    sub_100271948(v12);
    return v16;
  }

  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v6 + 8))(v9, v5);
LABEL_7:
    sub_1000F5104(&qword_100939860, &unk_10079D480);
    sub_10000CB48(&qword_100939868, &qword_100939860, &unk_10079D480);
    return Array<A>.sorted(by:)();
  }

  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    goto LABEL_7;
  }

  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    goto LABEL_3;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100156BC4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10043653C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_100156C48(v8, a2);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100156C48(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_100156F08(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_100156D68(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_100156D68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    v7 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
LABEL_5:
    v23 = a3;
    v8 = *(v25 + 8 * a3);
    v21 = v6;
    v22 = v5;
    while (1)
    {
      v9 = *v5;
      v10 = v8;
      v11 = v9;
      v12 = [v10 v7[250]];
      if (v12)
      {
        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v14 = v7;
      v15 = [v11 v7[250]];
      if (v15)
      {
        v16 = v15;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_10013BCF4();
      v17 = StringProtocol.localizedStandardCompare<A>(_:)();

      v7 = v14;
      if (v17 != a5)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v22 + 8;
        v6 = v21 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v25)
      {
        break;
      }

      v18 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v18;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100156F08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_4:
    v6 = v11;
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_6;
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v16 = v10;
    if (v10 + 1 >= v9)
    {
      v27 = v10 + 1;
    }

    else
    {
      v124 = v9;
      v17 = *v8;
      v129 = *(*v8 + 8 * (v10 + 1));
      v127 = *(v17 + 8 * v10);
      v18 = v127;
      v19 = v129;
      v20 = v18;
      v122 = sub_100156848(&v129, &v127, a5);
      if (v7)
      {

        return;
      }

      v21 = v16;
      v22 = v16 + 2;
      v114 = v21;
      v8 = (8 * v21);
      v7 = (v17 + 8 * v21 + 16);
      v120 = v11;
      while (1)
      {
        v27 = v124;
        if (v124 == v22)
        {
          break;
        }

        v28 = *(v7 - 1);
        v29 = *v7;
        v30 = v28;
        v31 = [v29 title];
        if (v31)
        {
          v32 = v31;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;
        }

        else
        {
          v33 = 0;
          v35 = 0xE000000000000000;
        }

        v129 = v33;
        v130 = v35;
        v36 = [v30 title];
        if (v36)
        {
          v23 = v36;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v6 = v25;
        }

        else
        {
          v24 = 0;
          v6 = 0xE000000000000000;
        }

        v127 = v24;
        v128 = v6;
        sub_10013BCF4();
        v26 = StringProtocol.localizedStandardCompare<A>(_:)();

        ++v22;
        ++v7;
        v11 = v120;
        if (((v122 ^ (v26 != a5)) & 1) == 0)
        {
          v27 = v22 - 1;
          break;
        }
      }

      v16 = v114;
      if (!v122)
      {
        goto LABEL_37;
      }

      if (v27 < v114)
      {
        goto LABEL_139;
      }

      if (v114 < v27)
      {
        v37 = 8 * v27 - 8;
        v38 = v27;
        v39 = v114;
        do
        {
          if (v39 != --v38)
          {
            v40 = *a3;
            if (!*a3)
            {
              goto LABEL_143;
            }

            v41 = *(v8 + v40);
            *(v8 + v40) = *(v40 + v37);
            *(v40 + v37) = v41;
          }

          ++v39;
          v37 -= 8;
          ++v8;
        }

        while (v39 < v38);
        v7 = 0;
        v8 = a3;
      }

      else
      {
LABEL_37:
        v7 = 0;
        v8 = a3;
      }
    }

    v42 = v8[1];
    if (v27 >= v42)
    {
      goto LABEL_50;
    }

    if (__OFSUB__(v27, v16))
    {
      goto LABEL_136;
    }

    v43 = v27;
    if (v27 - v16 >= a4)
    {
LABEL_50:
      if (v27 < v16)
      {
        goto LABEL_135;
      }

      goto LABEL_51;
    }

    if (__OFADD__(v16, a4))
    {
      goto LABEL_137;
    }

    if (v16 + a4 >= v42)
    {
      v44 = v8[1];
    }

    else
    {
      v44 = v16 + a4;
    }

    if (v44 < v16)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      v6 = sub_1004361F4(v6);
LABEL_6:
      v131 = v6;
      v12 = *(v6 + 16);
      if (v12 >= 2)
      {
        while (*v8)
        {
          v13 = *(v6 + 16 * v12);
          v14 = *(v6 + 16 * (v12 - 1) + 40);
          sub_100157718((*v8 + 8 * v13), (*v8 + 8 * *(v6 + 16 * (v12 - 1) + 32)), (*v8 + 8 * v14), v11, a5);
          if (v7)
          {
            goto LABEL_117;
          }

          if (v14 < v13)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1004361F4(v6);
          }

          if (v12 - 2 >= *(v6 + 16))
          {
            goto LABEL_134;
          }

          v15 = (v6 + 16 * v12);
          *v15 = v13;
          v15[1] = v14;
          v131 = v6;
          sub_100436168(v12 - 1);
          v6 = v131;
          v12 = *(v131 + 16);
          if (v12 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_144;
      }

LABEL_117:

      return;
    }

    v45 = v43;
    if (v43 != v44)
    {
      break;
    }

    v27 = v43;
    if (v43 < v16)
    {
      goto LABEL_135;
    }

LABEL_51:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1003658B8(0, *(v11 + 2) + 1, 1, v11);
    }

    v47 = *(v11 + 2);
    v46 = *(v11 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v111 = sub_1003658B8((v46 > 1), v47 + 1, 1, v11);
      v10 = v27;
      v11 = v111;
    }

    else
    {
      v10 = v27;
    }

    *(v11 + 2) = v48;
    v49 = &v11[16 * v47];
    *(v49 + 4) = v16;
    *(v49 + 5) = v10;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v47)
    {
      while (1)
      {
        v6 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v11 + 4);
          v52 = *(v11 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_70:
          if (v54)
          {
            goto LABEL_124;
          }

          v67 = &v11[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_127;
          }

          v73 = &v11[16 * v6 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_131;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v6 = v48 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v77 = &v11[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_84:
        if (v72)
        {
          goto LABEL_126;
        }

        v80 = &v11[16 * v6];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v83 < v71)
        {
          v10 = v27;
          goto LABEL_15;
        }

LABEL_91:
        v88 = v6 - 1;
        if (v6 - 1 >= v48)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v8)
        {
          goto LABEL_142;
        }

        v89 = *&v11[16 * v88 + 32];
        v90 = *&v11[16 * v6 + 40];
        sub_100157718((*v8 + 8 * v89), (*v8 + 8 * *&v11[16 * v6 + 32]), (*v8 + 8 * v90), v50, a5);
        if (v7)
        {
          goto LABEL_117;
        }

        if (v90 < v89)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1004361F4(v11);
        }

        if (v88 >= *(v11 + 2))
        {
          goto LABEL_121;
        }

        v91 = &v11[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v131 = v11;
        sub_100436168(v6);
        v11 = v131;
        v48 = *(v131 + 16);
        v10 = v27;
        if (v48 <= 1)
        {
          goto LABEL_15;
        }
      }

      v55 = &v11[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_122;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_123;
      }

      v62 = &v11[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_125;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_128;
      }

      if (v66 >= v58)
      {
        v84 = &v11[16 * v6 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_132;
        }

        if (v53 < v87)
        {
          v6 = v48 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_15:
    v9 = v8[1];
    if (v10 >= v9)
    {
      goto LABEL_4;
    }
  }

  v121 = v11;
  v113 = v7;
  v115 = v16;
  v92 = *v8;
  v93 = v16 - v43;
  v94 = v92 + 8 * v43 - 8;
  v118 = v44;
LABEL_102:
  v123 = v94;
  v125 = v45;
  v95 = *(v92 + 8 * v45);
  v119 = v93;
  while (1)
  {
    v96 = *v94;
    v6 = v95;
    v97 = v96;
    v98 = [v6 title];
    if (v98)
    {
      v99 = v98;
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;
    }

    else
    {
      v100 = 0;
      v102 = 0xE000000000000000;
    }

    v129 = v100;
    v130 = v102;
    v103 = [v97 title];
    if (v103)
    {
      v104 = v103;
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;
    }

    else
    {
      v105 = 0;
      v107 = 0xE000000000000000;
    }

    v127 = v105;
    v128 = v107;
    sub_10013BCF4();
    v108 = StringProtocol.localizedStandardCompare<A>(_:)();

    if (v108 != a5)
    {
LABEL_101:
      v45 = v125 + 1;
      v94 = v123 + 8;
      v27 = v118;
      v93 = v119 - 1;
      if (v125 + 1 != v118)
      {
        goto LABEL_102;
      }

      v7 = v113;
      v16 = v115;
      v8 = a3;
      v11 = v121;
      if (v118 < v115)
      {
        goto LABEL_135;
      }

      goto LABEL_51;
    }

    if (!v92)
    {
      break;
    }

    v109 = *v94;
    v95 = *(v94 + 8);
    *v94 = v95;
    *(v94 + 8) = v109;
    v94 -= 8;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_101;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_100157718(void **__src, id *a2, id *a3, void **a4, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    v16 = a4;
    if (a4 != a2 || &a2[v13] <= a4)
    {
      memmove(a4, a2, 8 * v13);
      v6 = a2;
    }

    v47 = &v16[v13];
    if (v11 < 8 || v6 <= v7)
    {
      v26 = v6;
    }

    else
    {
      v40 = v7;
      v46 = v16;
      do
      {
        __dsta = v6;
        v28 = v6 - 1;
        --v5;
        v29 = v47;
        v41 = v28;
        while (1)
        {
          v30 = *--v29;
          v31 = *v28;
          v32 = v30;
          v33 = v31;
          v34 = [v32 title];
          if (v34)
          {
            v35 = v34;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          v36 = [v33 title];
          if (v36)
          {
            v37 = v36;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          sub_10013BCF4();
          v38 = StringProtocol.localizedStandardCompare<A>(_:)();

          if (v38 == a5)
          {
            break;
          }

          if (v5 + 1 != v47)
          {
            *v5 = *v29;
          }

          --v5;
          v47 = v29;
          v28 = v41;
          if (v29 <= v46)
          {
            v47 = v29;
            v16 = v46;
            v26 = __dsta;
            goto LABEL_45;
          }
        }

        v26 = v41;
        if (v5 + 1 != __dsta)
        {
          *v5 = *v41;
        }

        v16 = v46;
        if (v47 <= v46)
        {
          break;
        }

        v6 = v41;
      }

      while (v41 > v40);
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      v14 = a4;
      memmove(a4, __src, 8 * v10);
      v6 = a2;
      a4 = v14;
    }

    v47 = &a4[v10];
    v16 = a4;
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        __dst = v6;
        v45 = v16;
        v17 = *v16;
        v18 = *v6;
        v19 = v17;
        v20 = [v18 title];
        if (v20)
        {
          v21 = v20;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v22 = [v19 title];
        if (v22)
        {
          v23 = v22;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_10013BCF4();
        v24 = StringProtocol.localizedStandardCompare<A>(_:)();

        if (v24 != a5)
        {
          break;
        }

        v25 = __dst;
        v6 = __dst + 1;
        if (v7 != __dst)
        {
          goto LABEL_19;
        }

LABEL_20:
        ++v7;
        if (v16 >= v47 || v6 >= v5)
        {
          goto LABEL_22;
        }
      }

      v25 = v16++;
      v6 = __dst;
      if (v7 == v45)
      {
        goto LABEL_20;
      }

LABEL_19:
      *v7 = *v25;
      goto LABEL_20;
    }

LABEL_22:
    v26 = v7;
  }

LABEL_45:
  if (v26 != v16 || v26 >= (v16 + ((v47 - v16 + (v47 - v16 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v26, v16, 8 * ((v47 - v16) / 8));
  }

  return 1;
}

uint64_t sub_100157B5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100157BA4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100939870);
  v1 = sub_100006654(v0, qword_100939870);
  if (qword_100936470 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100157C6C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v98 = a4;
  v105 = a2;
  v106 = a3;
  v104 = a1;
  v100 = *v4;
  v89 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v88 = *(v89 - 8);
  v5 = *(v88 + 64);
  __chkstk_darwin(v89);
  v87 = v75 - v6;
  v7 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = *(v92 + 64);
  __chkstk_darwin(v7);
  v90 = v75 - v9;
  v10 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  __chkstk_darwin(v10);
  v91 = v75 - v12;
  v13 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v86 = v75 - v15;
  v82 = sub_1000F5104(&qword_100939988, &qword_1007969D0);
  v81 = *(v82 - 1);
  v16 = v81[8];
  __chkstk_darwin(v82);
  v80 = v75 - v17;
  v85 = sub_1000F5104(&qword_100939990, &unk_1007969D8);
  v84 = *(v85 - 8);
  v18 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = v75 - v19;
  v20 = type metadata accessor for NSNotificationCenter.Publisher();
  v102 = *(v20 - 8);
  v103 = v20;
  v21 = *(v102 + 64);
  v22 = __chkstk_darwin(v20);
  v79 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v101 = v75 - v24;
  v99 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v97 = *(v99 - 8);
  v25 = v97[8];
  __chkstk_darwin(v99);
  v27 = v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OS_dispatch_queue.Attributes();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v30 = type metadata accessor for DispatchQoS();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v4[2] = 0xD000000000000033;
  v4[3] = 0x80000001007ED260;
  swift_unknownObjectWeakInit();
  v4[6] = 0;
  swift_unknownObjectWeakInit();
  v4[7] = 0;
  v32 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v96 = "tSetPersonID.author";
  static DispatchQoS.utility.getter();
  v107 = _swiftEmptyArrayStorage;
  sub_10000D338(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v97[13])(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v99);
  v99 = v32;
  v33 = v98;
  v4[11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_unknownObjectWeakAssign();
  v4[6] = v106;
  v106 = v4;
  swift_unknownObjectWeakAssign();
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = [objc_opt_self() sharedInstance];
  }

  v35 = v106;
  v106[9] = _swiftEmptyArrayStorage;
  v36 = v35 + 9;
  v36[3] = v34;
  *(v36 - 8) = 1;
  v36[1] = _swiftEmptyArrayStorage;
  v37 = qword_100935AD8;
  v38 = v33;
  v40 = v102;
  v39 = v103;
  v41 = v101;
  if (v37 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100006654(v42, qword_100939870);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "os_transaction INIT {name: com.apple.remindd.ExchACS.launch.pendingSystemAvailable}", v45, 2u);
  }

  v46 = os_transaction_create();
  if (v46)
  {
    v98 = v46;
    sub_1000060C8(0, &qword_100939998, DADSystemAvailabilityChecker_ptr);
    v47 = v106[11];
    v48 = sub_1005B3DA0(v47);

    sub_1000060C8(0, &qword_1009399A0, DADBuddyStateObserver_ptr);
    v49 = sub_1005B3E28();
    v51 = v50;
    v52 = [objc_opt_self() defaultCenter];
    if (qword_1009361C0 != -1)
    {
      swift_once();
    }

    v96 = (v36 + 1);
    v97 = v38;
    NSNotificationCenter.publisher(for:object:)();

    v107 = v48;
    v108 = v49;
    (*(v40 + 16))(v79, v41, v39);

    v78 = v48;
    sub_1000F5104(&qword_1009399A8, &qword_1007969E8);
    v77 = v49;
    sub_10000CB48(&unk_1009399B0, &qword_1009399A8, &qword_1007969E8);
    sub_10000D338(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher);
    v53 = v80;
    Publishers.Zip3.init(_:_:_:)();
    if (qword_100935D30 != -1)
    {
      swift_once();
    }

    v54 = qword_100974CC8;
    v107 = qword_100974CC8;
    v55 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v56 = *(v55 - 8);
    v76 = *(v56 + 56);
    v79 = (v56 + 56);
    v57 = v86;
    v76(v86, 1, 1, v55);
    sub_10000CB48(&unk_1009399C0, &qword_100939988, &qword_1007969D0);
    v75[1] = sub_100006CA4();
    v75[0] = v54;
    v58 = v83;
    v59 = v82;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v57, &qword_100939980, &unk_10079ADA0);
    (v81[1])(v53, v59);
    v60 = swift_allocObject();
    v61 = v98;
    *(v60 + 16) = v51;
    *(v60 + 24) = v61;
    v81 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_10000CB48(&unk_1009399D0, &qword_100939990, &unk_1007969D8);
    v82 = v51;
    swift_unknownObjectRetain();
    v62 = v85;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

    (*(v84 + 8))(v58, v62);
    swift_beginAccess();
    v85 = sub_1000F5104(&unk_10093D1B0, &unk_10079ADC0);
    sub_10000CB48(&qword_100936FA0, &unk_10093D1B0, &unk_10079ADC0);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();

    v107 = sub_100441A9C(0x53434168637845, 0xE700000000000000, 0);
    v63 = swift_allocObject();
    *(v63 + 16) = sub_100158F14;
    *(v63 + 24) = 0;
    sub_1000F5104(&unk_10093D140, qword_1007969F0);
    sub_1000F5104(&unk_100936F70, &unk_100791B60);
    sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
    v64 = v87;
    Publisher.map<A>(_:)();

    sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40);
    v65 = v90;
    v66 = v89;
    Publisher.filter(_:)();

    (*(v88 + 8))(v64, v66);
    v67 = v75[0];
    v107 = v75[0];
    v76(v57, 1, 1, v55);
    sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0);
    v68 = v91;
    v69 = v93;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v57, &qword_100939980, &unk_10079ADA0);

    (*(v92 + 8))(v65, v69);
    sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50);
    v70 = v95;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v94 + 8))(v68, v70);
    swift_beginAccess();
    AnyCancellable.store<A>(in:)();
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v102 + 8))(v101, v103);
  }

  else
  {
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "ExchACS: Couldn't create os_transaction_t for waiting pendingSystemAvailable", v73, 2u);
    }

    swift_unknownObjectRelease();
  }

  return v106;
}

void sub_100158CD4()
{
  sub_100158DC4();
  if (qword_100935AD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100939870);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.ExchACS.launch.pendingSystemAvailable}", v2, 2u);
  }
}

uint64_t sub_100158DC4()
{
  v1 = v0;
  *(v0 + 64) = 0;
  if (qword_100935AD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100939870);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ExchACS: Done waiting for system to become available upon daemon launch, now trying to observe for primary CK account PersonIDSalt changes", v5, 2u);
  }

  sub_1001591E4();
  swift_beginAccess();
  v6 = *(v1 + 72);
  *(v1 + 72) = _swiftEmptyArrayStorage;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100158F58()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 64) & 1) == 0)
  {
    v8 = result;
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100939870);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136446210;
      v14 = *(v0 + 56);
      if (v14)
      {
        (*(v3 + 16))(v7, v14 + OBJC_IVAR___RDAccountPersonIDSaltObserver_uuid, v8);
        v15 = UUID.uuidString.getter();
        v17 = v16;
        (*(v3 + 8))(v7, v8);
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = sub_10000668C(v15, v17, &v24);

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "ExchACS: Received 'ExchangeAccountDidChange', gonna reset the personIDSaltObserver {observer: %{public}s}", v12, 0xCu);
      sub_10000607C(v13);
    }

    v19 = *(v1 + 56);
    if (v19)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        [Strong unobservePrimaryCloudKitAccountPersonIDSaltChanges:v19];
      }

      v22 = *(v1 + 56);
      *(v1 + 56) = 0;
    }

    return sub_100159F90();
  }

  return result;
}

void sub_1001591E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v87 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = v87 - v10;
  __chkstk_darwin(v9);
  v13 = v87 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_100939870);
    v97 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v97, v21, "ExchACS: StoreController is nil when observePrimaryCloudKitAccountPersonIDSaltChanges() is invoked", v22, 2u);
    }

    goto LABEL_30;
  }

  v15 = *(v0 + 64);
  v97 = Strong;
  if (v15)
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_100939870);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "ExchACS: Trying to call observePrimaryCloudKitAccountPersonIDSaltChanges() while still pending system to be available", v19, 2u);
    }

    goto LABEL_30;
  }

  if (*(v0 + 56))
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100939870);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136446210;
      v28 = *(v0 + 56);
      if (v28)
      {
        (*(v2 + 16))(v11, v28 + OBJC_IVAR___RDAccountPersonIDSaltObserver_uuid, v1);
        v29 = UUID.uuidString.getter();
        v31 = v30;
        (*(v2 + 8))(v11, v1);
      }

      else
      {
        v29 = 7104878;
        v31 = 0xE300000000000000;
      }

      v67 = sub_10000668C(v29, v31, &aBlock);

      *(v26 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v24, v25, "ExchACS is already observing personIDSalt changes with RDAccountPersonIDSaltObserver {observer: %{public}s}", v26, 0xCu);
      sub_10000607C(v27);

LABEL_35:
      return;
    }

LABEL_30:
    v66 = v97;

    return;
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_30;
  }

  v33 = v32;
  v96 = v2;
  v34 = *(v0 + 16);
  v35 = *(v0 + 24);
  v36 = String._bridgeToObjectiveC()();
  v37 = [v33 newBackgroundContextWithAuthor:v36];

  if (!v37)
  {
    goto LABEL_30;
  }

  v104 = 0;
  v38 = swift_allocObject();
  v38[2] = &v104;
  v38[3] = v0;
  v38[4] = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_10015CBCC;
  *(v39 + 24) = v38;
  v94 = v38;
  v102 = sub_1000529DC;
  v103 = v39;
  aBlock = _NSConcreteStackBlock;
  v99 = 1107296256;
  v100 = sub_10000F160;
  v101 = &unk_1008E6AF0;
  v40 = _Block_copy(&aBlock);
  v95 = v103;

  v41 = v37;

  [v41 performBlockAndWait:v40];
  _Block_release(v40);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_23;
  }

  v39 = v96;
  if (v104 != 1)
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100006654(v68, qword_100939870);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "ExchACS is not observing primary CK account personIDSalt changes this time as we have no exchange account right now", v71, 2u);
    }

    goto LABEL_35;
  }

  v87[0] = v41;
  UUID.init()();
  if (qword_100935D30 != -1)
  {
    goto LABEL_51;
  }

LABEL_23:
  v91 = qword_100974CC8;
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = *(v39 + 16);
  v95 = v39 + 16;
  v93 = v43;
  v43(v11, v13, v1);
  v89 = *(v39 + 80);
  v92 = ((v89 + 24) & ~v89);
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  v88 = *(v39 + 32);
  v88(&v92[v44], v11, v1);
  v102 = sub_10015CBD8;
  v103 = v44;
  aBlock = _NSConcreteStackBlock;
  v99 = 1107296256;
  v87[1] = &v100;
  v100 = sub_10075A404;
  v101 = &unk_1008E6B68;
  v90 = _Block_copy(&aBlock);

  v45 = swift_allocObject();
  swift_weakInit();
  v93(v11, v13, v1);
  v46 = v92;
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  v88(v46 + v47, v11, v1);
  v102 = sub_10015CD20;
  v103 = v47;
  aBlock = _NSConcreteStackBlock;
  v99 = 1107296256;
  v100 = sub_10056A480;
  v101 = &unk_1008E6BB8;
  v48 = _Block_copy(&aBlock);

  v49 = v90;
  v50 = [v97 observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:v91 successHandler:v90 errorHandler:v48];
  _Block_release(v48);
  _Block_release(v49);
  v51 = *(v0 + 56);
  *(v0 + 56) = v50;

  if (*(v0 + 56))
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_100939870);
    v93(v5, v13, v1);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      LODWORD(v91) = v54;
      v92 = v53;
      v55 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      aBlock = v90;
      *v55 = 136446466;
      v56 = v0;
      v57 = UUID.uuidString.getter();
      v59 = v58;
      v60 = *(v96 + 8);
      v60(v5, v1);
      v61 = sub_10000668C(v57, v59, &aBlock);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2082;
      v62 = *(v56 + 56);
      if (v62)
      {
        v93(v11, (v62 + OBJC_IVAR___RDAccountPersonIDSaltObserver_uuid), v1);
        v63 = UUID.uuidString.getter();
        v65 = v64;
        v60(v11, v1);
      }

      else
      {
        v63 = 7104878;
        v65 = 0xE300000000000000;
      }

      v85 = sub_10000668C(v63, v65, &aBlock);

      *(v55 + 14) = v85;
      v86 = v92;
      _os_log_impl(&_mh_execute_header, v92, v91, "ExchACS is now observing primary CK account personIDSalt changes {debugTrackingUUID: %{public}s, observer: %{public}s}", v55, 0x16u);
      swift_arrayDestroy();

      v60(v13, v1);
    }

    else
    {

      v83 = *(v96 + 8);
      v83(v5, v1);
      v83(v13, v1);
    }
  }

  else
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100006654(v72, qword_100939870);
    v93(v8, v13, v1);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v96;
    if (v75)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      aBlock = v78;
      *v77 = 136446210;
      v95 = UUID.uuidString.getter();
      v80 = v79;
      v81 = *(v76 + 8);
      v81(v8, v1);
      v82 = sub_10000668C(v95, v80, &aBlock);

      *(v77 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v73, v74, "ExchACS failed to start observing primary CK account personIDSalt changes {debugTrackingUUID: %{public}s}", v77, 0xCu);
      sub_10000607C(v78);

      v81(v13, v1);
    }

    else
    {

      v84 = *(v76 + 8);
      v84(v8, v1);
      v84(v13, v1);
    }
  }
}

uint64_t sub_100159F90()
{
  v22 = *v0;
  v1 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v20 = *(v10 - 8);
  v21 = v10;
  v11 = *(v20 + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = [objc_opt_self() defaultCenter];
  if (qword_1009361C0 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v15 = qword_100974CC8;
  v23 = qword_100974CC8;
  v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000D338(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_100006CA4();
  v17 = v15;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v4, &qword_100939980, &unk_10079ADA0);

  (*(v6 + 8))(v9, v5);
  sub_10000CB48(&qword_100936F10, &unk_100936ED0, &unk_100791AF0);
  v18 = v21;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v20 + 8))(v13, v18);
  swift_beginAccess();
  sub_1000F5104(&unk_10093D1B0, &unk_10079ADC0);
  sub_10000CB48(&qword_100936FA0, &unk_10093D1B0, &unk_10079ADC0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

void sub_10015A3E8()
{
  if (qword_100935AD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100939870);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "ExchACS: Received DidCompleteInitializeAllAccountsNotification", v3, 2u);
  }

  sub_1001591E4();
}

uint64_t sub_10015A4CC(BOOL *a1)
{
  v2 = sub_10015CFA4();
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = v3 != 0;
  return result;
}

void sub_10015A540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100939870);
    (*(v8 + 16))(v11, a4, v7);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v23[0] = a1;
      v16 = v15;
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446210;
      v18 = UUID.uuidString.getter();
      v23[1] = a2;
      v20 = v19;
      (*(v8 + 8))(v11, v7);
      v21 = sub_10000668C(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "ExchACS received a primary CK account personIDSalt change or initial value {debugTrackingUUID: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10015A7D8(isa);
  }
}

void sub_10015A7D8(void *a1)
{
  v2 = v1;
  v4 = NSData.startIndex.getter();
  if (v4 != NSData.endIndex.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = *(v2 + 16);
      v8 = *(v2 + 24);
      v9 = String._bridgeToObjectiveC()();
      v10 = [v6 newBackgroundContextWithAuthor:v9];

      if (v10)
      {
        v11 = swift_allocObject();
        v11[2] = v2;
        v11[3] = v10;
        v11[4] = a1;
        v12 = swift_allocObject();
        *(v12 + 16) = sub_10015D340;
        *(v12 + 24) = v11;
        v16[4] = sub_1000FDA90;
        v16[5] = v12;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 1107296256;
        v16[2] = sub_10000F160;
        v16[3] = &unk_1008E6CA8;
        v13 = _Block_copy(v16);

        v14 = v10;
        v15 = a1;

        [v14 performBlockAndWait:v13];

        _Block_release(v13);
        LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

        if (v14)
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_10015A9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    v9 = _convertErrorToNSError(_:)();
    if (qword_1009365C0 != -1)
    {
      swift_once();
    }

    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
    }

    else
    {
      if (qword_100935AD8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100939870);
      (*(v5 + 16))(v8, a3, v4);
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v14 = 136446466;
        v15 = UUID.uuidString.getter();
        v17 = v16;
        (*(v5 + 8))(v8, v4);
        v18 = sub_10000668C(v15, v17, &v25);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2082;
        swift_getErrorValue();
        v19 = Error.rem_errorDescription.getter();
        v21 = sub_10000668C(v19, v20, &v25);

        *(v14 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v12, v13, "ExchACS received a primary CK account personIDSalt error {debugTrackingUUID: %{public}s, saltError: %{public}s}", v14, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }

      v22 = _convertErrorToNSError(_:)();
      sub_10015AD04(v22);
    }
  }
}

void sub_10015AD04(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v4 newBackgroundContextWithAuthor:v7];

    if (v8)
    {
      v9 = swift_allocObject();
      v9[2] = v1;
      v9[3] = v8;
      v9[4] = a1;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_10015CD94;
      *(v10 + 24) = v9;
      v15[4] = sub_1000FDA90;
      v15[5] = v10;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_10000F160;
      v15[3] = &unk_1008E6C30;
      v11 = _Block_copy(v15);

      v12 = v8;
      v13 = a1;

      [v12 performBlockAndWait:v11];

      _Block_release(v11);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

void sub_10015AEB8(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_10015CFA4();
  v52 = _swiftEmptyArrayStorage;

  v7 = a3;
  sub_10015CDA0(v6, a1, v7, &v52);

  v53[0] = 0;
  if ([a2 save:v53])
  {
    v8 = v52;
    v9 = v52[2];
    v10 = v53[0];
    v47 = v8;

    v46 = v9;
    if (!v9)
    {
LABEL_19:
      swift_bridgeObjectRelease_n();
      return;
    }

    v11 = 0;
    v12 = v8 + 6;
    while (v11 < v47[2])
    {
      v14 = *(v12 - 2);
      v13 = *(v12 - 1);
      v15 = *v12;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v50 = v13;
        v16 = a1;
        v17 = *(a1 + 48);
        ObjectType = swift_getObjectType();
        v19 = *(v17 + 24);
        v49 = v14;

        v20 = v17;
        a1 = v16;
        v19(v14, v50, v15, v7, ObjectType, v20);

        swift_unknownObjectRelease();
      }

      ++v11;
      v12 += 3;
      if (v46 == v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = v53[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100935AD8 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100939870);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v25 = 136446466;
    swift_beginAccess();
    v26 = v52;
    v27 = v52[2];
    if (v27)
    {
      v48 = v24;
      v51 = v23;

      sub_100026EF4(0, v27, 0);
      v28 = v26 + 6;
      do
      {
        v29 = *(v28 - 2);
        if (v29)
        {
          v30 = *v28;

          v31 = v29;
          v32 = [v31 description];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;
        }

        else
        {
          v35 = 0xE300000000000000;
          v33 = 7104878;
        }

        v37 = _swiftEmptyArrayStorage[2];
        v36 = _swiftEmptyArrayStorage[3];
        if (v37 >= v36 >> 1)
        {
          sub_100026EF4((v36 > 1), v37 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v37 + 1;
        v38 = &_swiftEmptyArrayStorage[2 * v37];
        v38[4] = v33;
        v38[5] = v35;
        v28 += 3;
        --v27;
      }

      while (v27);

      v23 = v51;
      v24 = v48;
    }

    v39 = Array.description.getter();
    v41 = v40;

    v42 = sub_10000668C(v39, v41, &v54);

    *(v25 + 4) = v42;
    *(v25 + 12) = 2080;
    swift_getErrorValue();
    v43 = Error.rem_errorDescription.getter();
    v45 = sub_10000668C(v43, v44, &v54);

    *(v25 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v23, v24, "ExchACS failed to saved account personID {accountIDs: %{public}s, saveError: %s}", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10015B394(id *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *a1;
  v7 = [*a1 personID];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = sub_10015B92C(v6, a3);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v16 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      if (v11 && (v9 == v12 && v11 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {
        v29 = String._bridgeToObjectiveC()();
        [v6 setPersonID:v29];

        v30 = [v6 remObjectID];
        v31 = *a4;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v31;
        v54 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = sub_1003661E0(0, v31[2] + 1, 1, v31);
          *a4 = v31;
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          v31 = sub_1003661E0((v33 > 1), v34 + 1, 1, v31);
          *a4 = v31;
        }

        v31[2] = v34 + 1;
        v35 = &v31[3 * v34];
        v35[4] = v30;
        v35[5] = v14;
        v35[6] = v15;
        if (qword_100935AD8 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100006654(v36, qword_100939870);

        v37 = v6;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v40 = 136446722;
          v41 = [v37 remObjectID];
          if (v41)
          {
            v42 = v41;
            v43 = v39;
            v44 = [v41 description];

            v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v39 = v43;
          }

          else
          {
            v45 = 7104878;
            v47 = 0xE300000000000000;
          }

          v49 = sub_10000668C(v45, v47, &v55);

          *(v40 + 4) = v49;
          *(v40 + 12) = 2080;
          v50 = sub_10000668C(v14, v15, &v55);

          *(v40 + 14) = v50;
          *(v40 + 22) = 2080;
          if (v11)
          {
            v51 = v54;
          }

          else
          {
            v51 = 7104878;
          }

          if (v11)
          {
            v52 = v11;
          }

          else
          {
            v52 = 0xE300000000000000;
          }

          v53 = sub_10000668C(v51, v52, &v55);

          *(v40 + 24) = v53;
          _os_log_impl(&_mh_execute_header, v38, v39, "ExchACS will save update to account personID {accountIDs: %{public}s, newPersonID: %s, oldPersonID: %s}", v40, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      return;
    }
  }

  if (qword_100935AD8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100939870);
  v18 = v6;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v55 = v22;
    *v21 = 136446210;
    v23 = [v18 remObjectID];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 description];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {
      v26 = 7104878;
      v28 = 0xE300000000000000;
    }

    v48 = sub_10000668C(v26, v28, &v55);

    *(v21 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v19, v20, "ExchACS failed to generate a hashed personID from the salt {accountID: %{public}s}", v21, 0xCu);
    sub_10000607C(v22);
  }
}

id sub_10015B92C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v75 - v16;
  v18 = [a1 remObjectID];
  if (v18)
  {
    v19 = v18;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v3 + 48);
      ObjectType = swift_getObjectType();
      v22 = (*(v20 + 40))(v19, ObjectType, v20);
      v24 = v23;
      swift_unknownObjectRelease();

LABEL_4:
      if (qword_100935AD8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006654(v25, qword_100939870);
      v26 = a1;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v75 = a2;
        v29 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v29 = 136315394;
        v30 = [v26 remObjectID];
        if (v30)
        {
          v31 = v30;
          v32 = [v30 description];

          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;
        }

        else
        {
          v35 = 0xE300000000000000;
          v33 = 7104878;
        }

        v50 = sub_10000668C(v33, v35, &v76);

        *(v29 + 4) = v50;
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_10000668C(v22, v24, &v76);
        _os_log_impl(&_mh_execute_header, v27, v28, "ExchACS: hashedAccountPersonID: account: %s, nonNilUsername = %s", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v51 = [objc_opt_self() daemonUserDefaults];
      v52 = [v51 enableHashingUserIdentifiablesWithPersonIDSalt];

      if (v52)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v54 = *(v3 + 48);
          v55 = Strong;
          v56 = swift_getObjectType();
          v76 = v55;
          v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;
          v22 = (*(*(v54 + 8) + 8))(v22, v24, v57, v58, v56);

          sub_10001BBA0(v57, v59);
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;
          v22 = String.base64EncodedHMACString(using:)();
          sub_10001BBA0(v60, v62);
        }
      }

      return v22;
    }
  }

  v36 = [a1 identifier];
  if (v36)
  {
    v37 = v36;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 56))(v15, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6);
  }

  sub_100100FB4(v15, v17);
  if ((*(v7 + 48))(v17, 1, v6))
  {
    sub_1000050A4(v17, &unk_100939D90, "8\n\r");
    return 0;
  }

  (*(v7 + 16))(v10, v17, v6);
  sub_1000050A4(v17, &unk_100939D90, "8\n\r");
  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v6);
  v38 = [*(v3 + 96) accountStore];
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 accountWithIdentifier:v39];

  if (!v40)
  {

    return 0;
  }

  v41 = &selRef_setPublicLinkLastModifiedDate_;
  result = [v40 accountType];
  if (!result)
  {
    __break(1u);
    goto LABEL_52;
  }

  v43 = result;
  v44 = [result identifier];

  if (!v44)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_33:

    goto LABEL_34;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v47)
  {
    v41 = &selRef_setPublicLinkLastModifiedDate_;
    goto LABEL_33;
  }

  if (v45 == v48 && v47 == v49)
  {

LABEL_39:
    a2 = v75;

LABEL_44:

    goto LABEL_45;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v41 = &selRef_setPublicLinkLastModifiedDate_;
  if (v70)
  {
    a2 = v75;
    goto LABEL_44;
  }

LABEL_34:
  result = [v40 v41[81]];
  if (result)
  {
    v63 = result;

    v64 = [v63 identifier];

    if (v64)
    {
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v67)
      {
        if (v65 == v68 && v67 == v69)
        {
          goto LABEL_39;
        }

        v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a2 = v75;
        if (v74)
        {
LABEL_45:
          v71 = [v40 username];
          if (v71)
          {
            v72 = v71;
            v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v73;

            goto LABEL_4;
          }
        }

LABEL_48:

        return 0;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    goto LABEL_48;
  }

LABEL_52:
  __break(1u);
  return result;
}

void sub_10015C12C(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_10015CFA4();
  v60 = _swiftEmptyArrayStorage;
  v7 = a3;
  sub_10015CEA4(v6, &v60, v7);

  v52 = v7;

  v61[0] = 0;
  if ([a2 save:v61])
  {
    v8 = v60;
    v9 = v60[2];
    v10 = v61[0];
    v56 = v8;

    v54 = v9;
    if (!v9)
    {
LABEL_19:
      swift_bridgeObjectRelease_n();
      return;
    }

    v11 = 0;
    v12 = v8 + 6;
    v51 = a1;
    while (v11 < v56[2])
    {
      v14 = *(v12 - 2);
      v13 = *(v12 - 1);
      v15 = *v12;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(a1 + 48);
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 32);
        v58 = v14;

        v18(v14, v13, v15, v52, ObjectType, v16);
        a1 = v51;

        swift_unknownObjectRelease();
      }

      ++v11;
      v12 += 3;
      if (v54 == v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = v61[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100935AD8 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100939870);
  v21 = v52;
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v59 = v21;
    v24 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v24 = 136446722;
    swift_beginAccess();
    v25 = v60;
    v26 = v60[2];
    if (v26)
    {
      v53 = v24;
      v55 = v23;
      v57 = v22;

      sub_100026EF4(0, v26, 0);
      v27 = v25 + 6;
      do
      {
        v28 = *(v27 - 2);
        if (v28)
        {
          v29 = *v27;

          v30 = v28;
          v31 = [v30 description];
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
        }

        else
        {
          v34 = 0xE300000000000000;
          v32 = 7104878;
        }

        v36 = _swiftEmptyArrayStorage[2];
        v35 = _swiftEmptyArrayStorage[3];
        if (v36 >= v35 >> 1)
        {
          sub_100026EF4((v35 > 1), v36 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v36 + 1;
        v37 = &_swiftEmptyArrayStorage[2 * v36];
        v37[4] = v32;
        v37[5] = v34;
        v27 += 3;
        --v26;
      }

      while (v26);

      v22 = v57;
      v23 = v55;
      v24 = v53;
    }

    v38 = Array.description.getter();
    v40 = v39;

    v41 = sub_10000668C(v38, v40, &v62);

    *(v24 + 4) = v41;
    *(v24 + 12) = 2082;
    v42 = v59;
    v43 = [v42 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_10000668C(v44, v46, &v62);

    *(v24 + 14) = v47;
    *(v24 + 22) = 2080;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v48 = String.init<A>(describing:)();
    v50 = sub_10000668C(v48, v49, &v62);

    *(v24 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v22, v23, "ExchACS failed to reset account personID to nil {accountIDs: %{public}s, saltError: %{public}s, saveError: %s}", v24, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10015C678(id *a1, void **a2, void *a3)
{
  v5 = *a1;
  v6 = [*a1 personID];
  if (v6)
  {
    v7 = v6;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    [v5 setPersonID:0];
    v10 = [v5 remObjectID];
    v11 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1003661E0(0, v11[2] + 1, 1, v11);
      *a2 = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1003661E0((v13 > 1), v14 + 1, 1, v11);
      *a2 = v11;
    }

    v11[2] = v14 + 1;
    v15 = &v11[3 * v14];
    v15[4] = v10;
    v15[5] = v37;
    v15[6] = v9;
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_100939870);

    v17 = v5;
    v18 = a3;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v21 = 136446722;
      v22 = [v17 remObjectID];
      v23 = &selRef_accountStatusWithCompletionHandler_;
      if (v22)
      {
        v24 = v22;
        v25 = [v22 description];

        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v23 = &selRef_accountStatusWithCompletionHandler_;
      }

      else
      {
        v28 = 0xE300000000000000;
        v26 = 7104878;
      }

      v29 = sub_10000668C(v26, v28, &v38);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2080;
      v30 = sub_10000668C(v37, v9, &v38);

      *(v21 + 14) = v30;
      *(v21 + 22) = 2082;
      v31 = v18;
      v32 = [v31 v23[332]];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_10000668C(v33, v35, &v38);

      *(v21 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v19, v20, "ExchACS will reset account personID to nil {accountID: %{public}s, origPersonID: %s, saltError: %{public}s}", v21, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_10015C9FC()
{
  v1 = *(v0 + 24);

  swift_unknownObjectWeakDestroy();
  sub_1000536E0(v0 + 40);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return v0;
}

uint64_t sub_10015CA54()
{
  sub_10015C9FC();

  return swift_deallocClassInstance();
}

void sub_10015CAAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100158CD4();
}

unint64_t *sub_10015CAB4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
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

    sub_10015D34C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_10015CB58@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(id)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;

  v7 = sub_10015D4BC(v6, a2);

  *a3 = v7;
  return result;
}

uint64_t sub_10015CBCC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_10015A4CC(*(v0 + 16));
}

void sub_10015CBD8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_10015A540(a1, a2, v6, v7);
}

uint64_t sub_10015CC5C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10015CD20(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_10015A9A4(a1, v4, v5);
}

void sub_10015CDA0(unint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_10015B394(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_10015CEA4(unint64_t a1, void **a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_10015C678(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10015CFA4()
{
  v0 = sub_10000F8A4(1uLL, 0, 7u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v0];

  sub_100010864(v4);

  sub_1002137C0(&_swiftEmptySetSingleton);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  v7 = NSManagedObjectContext.fetch<A>(_:)();

  return v7;
}

uint64_t sub_10015D2F8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10015D34C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  v21 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 48) + 24 * v13;
    v15 = *(v14 + 16);
    v16 = *(v14 + 8);
    v17 = v15;
    LOBYTE(v15) = a4(v16);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1001A0644(a1, a2, v21, a3);
        return;
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
      goto LABEL_15;
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
}

uint64_t sub_10015D4BC(int64_t a1, uint64_t (*a2)(id))
{
  v3 = v2;
  v28 = a2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v25 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v25;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24[0] = v24;
    v24[1] = v3;
    __chkstk_darwin(v8);
    v26 = v24 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v7);
    v27 = 0;
    v7 = 0;
    v29 = v4;
    v3 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v4 = (v9 + 63) >> 6;
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v15 = v12 | (v7 << 6);
      v16 = *(v29 + 48) + 24 * v15;
      v17 = *(v16 + 16);
      v18 = *(v16 + 8);
      v19 = v17;
      LOBYTE(v17) = v28(v18);

      if (v17)
      {
        *&v26[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = sub_1001A0644(v26, v25, v27, v29);

          return v21;
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v4)
      {
        goto LABEL_16;
      }

      v14 = *(v3 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v11 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();

  v21 = sub_10015CAB4(v23, v25, v4, v28);

  return v21;
}

Swift::Int sub_10015D784()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1u);
  return Hasher._finalize()();
}

Swift::Int sub_10015D7F0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1u);
  return Hasher._finalize()();
}

uint64_t sub_10015D850()
{
  v1 = v0;
  v59 = *v0;
  v2 = v59;
  sub_100010364(&v59, v60, &unk_10093B300, &unk_100797780);
  v3 = sub_10038EB78(_swiftEmptyArrayStorage);
  v56 = v3;
  v4 = *(v2 + 16);
  if (!v4)
  {
    v43 = v3;
    goto LABEL_29;
  }

  v5 = (v2 + 40);
  v55 = v0;
  do
  {
    v6 = v1[2];
    if (!*(v6 + 16))
    {
      goto LABEL_4;
    }

    v8 = *(v5 - 1);
    v7 = *v5;

    v9 = sub_100005F4C(v8, v7);
    if ((v10 & 1) == 0)
    {

      goto LABEL_4;
    }

    v11 = (*(v6 + 56) + 16 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v56[2];

    if (v14)
    {
      sub_100005F4C(v13, v12);
      if (v15)
      {
        v16 = sub_100261A6C(v60, v13, v12);
        v18 = *v17;
        if (*v17)
        {
          v19 = v17;
          v54 = v16;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v19 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = sub_100365788(0, *(v18 + 2) + 1, 1, v18);
            *v19 = v18;
          }

          v22 = *(v18 + 2);
          v21 = *(v18 + 3);
          if (v22 >= v21 >> 1)
          {
            v18 = sub_100365788((v21 > 1), v22 + 1, 1, v18);
            *v19 = v18;
          }

          *(v18 + 2) = v22 + 1;
          v23 = &v18[16 * v22];
          *(v23 + 4) = v8;
          *(v23 + 5) = v7;
          (v54)(v60, 0);
        }

        else
        {
          (v16)(v60, 0);
        }

        v1 = v55;
        goto LABEL_4;
      }
    }

    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100791300;
    *(v24 + 32) = v8;
    *(v24 + 40) = v7;

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v56;
    v26 = sub_100005F4C(v13, v12);
    v28 = v56[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
LABEL_34:
      __break(1u);
    }

    v32 = v27;
    if (v56[3] >= v31)
    {
      if ((v25 & 1) == 0)
      {
        v38 = v26;
        sub_10037443C();
        v26 = v38;
        if (v32)
        {
LABEL_21:
          v34 = v26;

          v35 = v60[0];
          v36 = v60[0][7];
          v37 = *(v36 + 8 * v34);
          *(v36 + 8 * v34) = v24;

          v56 = v35;
          v1 = v55;
          goto LABEL_4;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_10036C5F8(v31, v25);
      v26 = sub_100005F4C(v13, v12);
      if ((v32 & 1) != (v33 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    if (v32)
    {
      goto LABEL_21;
    }

LABEL_25:
    v39 = v60[0];
    v60[0][(v26 >> 6) + 8] |= 1 << v26;
    v40 = (v39[6] + 16 * v26);
    *v40 = v13;
    v40[1] = v12;
    *(v39[7] + 8 * v26) = v24;

    v41 = v39[2];
    v30 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v30)
    {
      goto LABEL_34;
    }

    v39[2] = v42;
    v56 = v39;
    v1 = v55;
LABEL_4:
    v5 += 2;
    --v4;
  }

  while (v4);
  v43 = v56;
LABEL_29:
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100792CE0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001007ED350;
  v45 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  *(inited + 48) = v59;
  *(inited + 72) = v45;
  *(inited + 80) = 0xD00000000000002BLL;
  *(inited + 88) = 0x80000001007ED370;
  v58 = v1[1];
  v46 = sub_1000F5104(&qword_100939A08, &unk_100796A80);
  *(inited + 96) = v58;
  *(inited + 120) = v46;
  *(inited + 128) = 0xD00000000000001FLL;
  *(inited + 136) = 0x80000001007ED3A0;
  *(inited + 144) = v43;
  *(inited + 168) = v46;
  *(inited + 176) = 0xD000000000000019;
  *(inited + 184) = 0x80000001007ED3C0;
  v57 = v1[3];
  v47 = v57;
  *(inited + 216) = sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  *(inited + 192) = v47;
  sub_100010364(&v58, v60, &qword_100939A08, &unk_100796A80);
  sub_100010364(&v57, v60, &qword_10093E9C0, qword_100794F90);
  sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  v48 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v60[0] = 0;
  v50 = [v48 dataWithJSONObject:isa options:0 error:v60];

  v51 = v60[0];
  if (v50)
  {
    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v52 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v52;
}

uint64_t sub_10015DE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a4;
  v28 = a2;
  v29 = a1;
  v26 = a5;
  v31 = sub_10038E004(_swiftEmptyArrayStorage);
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a3 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(a3 + 56) + 8 * v14);
      v9 &= v9 - 1;
      v30[0] = *v15;
      v30[1] = v16;
      __chkstk_darwin(result);
      v25[2] = &v31;
      v25[3] = v30;

      sub_1002A11E8(sub_10015E944, v25, v17);

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(a3 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v18 = v31;
  v19 = v27;

  v21 = sub_1001A6DC0(v20);
  v22 = v29;
  result = sub_10015E0CC(v29, v18, v21);
  if (v5)
  {
  }

  else
  {
    v23 = v26;
    v24 = v28;
    *v26 = v22;
    v23[1] = v24;
    v23[2] = v18;
    v23[3] = v19;
    v23[4] = v21;
  }

  return result;
}

uint64_t sub_10015E030(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a3;
  v7 = a3[1];

  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a2;
  *a2 = 0x8000000000000000;
  sub_1002C72CC(v6, v7, v4, v5, isUniquelyReferenced_nonNull_native);

  *a2 = v11;
  return result;
}

uint64_t sub_10015E0CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v27 = *(result + 16);
  if (v27)
  {
    v4 = a2;
    v5 = 0;
    v6 = result + 32;
    v7 = a3 + 56;
    while (1)
    {
      v8 = (v6 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(v4 + 16);

      if (!v11)
      {
        break;
      }

      v12 = sub_100005F4C(v10, v9);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = (*(v4 + 56) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];
      if (!*(a3 + 16))
      {

LABEL_15:
        sub_1000F5104(&qword_100939A10, &unk_100796A90);
        sub_10015E960();
        swift_allocError();
        *v24 = v16;
        *(v24 + 8) = v15;
        *(v24 + 16) = 1;
        swift_willThrow();
      }

      v17 = *(a3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(a3 + 32);
      v20 = v18 & ~v19;
      if (((*(v7 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_15;
      }

      ++v5;
      v21 = ~v19;
      while (1)
      {
        v22 = (*(a3 + 48) + 16 * v20);
        v23 = *v22 == v16 && v22[1] == v15;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v7 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v4 = a2;
      if (v5 == v27)
      {
        return result;
      }
    }

    sub_1000F5104(&qword_100939A10, &unk_100796A90);
    sub_10015E960();
    swift_allocError();
    *v25 = v10;
    *(v25 + 8) = v9;
    *(v25 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}