id sub_100493650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDMergePolicy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004936A8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [a1 conflictingObjects];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = v5 >> 62;
  if (v5 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
LABEL_26:

      if (qword_100936248 == -1)
      {
LABEL_27:
        v23 = type metadata accessor for Logger();
        sub_100006654(v23, qword_100948990);
        v24 = v3;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v35 = v28;
          *v27 = 136446210;
          v29 = v24;
          v30 = [v29 description];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          v34 = sub_10000668C(v31, v33, &v35);

          *(v27 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v25, v26, "RDMergePolicy: Missing managed object context for resolving sharee constraint conflict {conflict: %{public}s}", v27, 0xCu);
          sub_10000607C(v28);
        }

        return 0;
      }

LABEL_34:
      swift_once();
      goto LABEL_27;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_26;
    }
  }

  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
  }

  else if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v5 + 8 * v9 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_34;
  }

  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v11 = v10;
  v12 = [v10 managedObjectContext];

  if (!v12)
  {
    goto LABEL_26;
  }

  [v12 deleteObject:a2];
  if (v6)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v13)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = _CocoaArrayWrapper.endIndex.getter();
    v19 = result;
    if (result)
    {
      goto LABEL_19;
    }

LABEL_38:

    return 1;
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v6 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v5 = sub_1002618D4(v5);
  }

  v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_36;
  }

  v16 = v15 - 1;
  v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v16 + 0x20);
  *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v16;

  v35 = v5;
  sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
  sub_1000F5104(&qword_1009489E8, &qword_1007ACA18);
  sub_100496B04();
  v3 = Sequence.elements<A>(ofType:)();

  if (v3 >> 62)
  {
    goto LABEL_37;
  }

  v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_38;
  }

LABEL_19:
  if (v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v3 + 8 * i + 32);
      }

      v22 = v21;
      [v12 deleteObject:v21];
    }

    goto LABEL_38;
  }

  __break(1u);
  return result;
}

uint64_t sub_100493A8C(void *a1)
{
  v1 = a1;
  v2 = [a1 conflictingObjects];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = _swiftEmptyArrayStorage;
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v83 = v1;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

LABEL_19:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  v83 = v1;
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v1 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v1;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v1 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v6;
      if (v1 == v4)
      {
        goto LABEL_21;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = v85;
  }

  while (v1 != v4);
LABEL_21:

  v10 = v5 >> 62;
  if (v5 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = v83;
  v13 = [v83 conflictingObjects];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 != v15)
  {

    if (qword_100936248 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_90;
  }

  if (v10)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
LABEL_44:

      if (qword_100936248 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_96;
    }
  }

  v30 = __OFSUB__(v16, 1);
  v31 = v16 - 1;
  if (v30)
  {
LABEL_92:
    __break(1u);
  }

  else
  {
    v13 = (v5 & 0xC000000000000001);
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v31 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v32 = *(v5 + 8 * v31 + 32);
        goto LABEL_38;
      }

      __break(1u);
LABEL_96:
      swift_once();
LABEL_45:
      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_100948990);
      v40 = v12;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v85 = v22;
        *v21 = 136446210;
        v41 = v40;
        v42 = [v41 description];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = sub_10000668C(v43, v45, &v85);

        *(v21 + 4) = v46;
        v29 = "RDMergePolicy: Missing managed object context for resolving hashtag constraint conflict {conflict: %{public}s}";
        goto LABEL_47;
      }

      goto LABEL_59;
    }
  }

  v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_38:
  v33 = v32;
  v19 = [v32 managedObjectContext];

  if (!v19)
  {
    goto LABEL_44;
  }

  v34 = [v12 databaseObject];
  if (!v34)
  {

    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100006654(v47, qword_100948990);
    v48 = v12;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v85 = v52;
      *v51 = 136446210;
      v53 = v48;
      v54 = [v53 description];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_10000668C(v55, v57, &v85);

      *(v51 + 4) = v58;
      v59 = "RDMergPolicy: context-level constraint conflict is unexpected and not handled for resolving hashtag constraint conflict {conflict: %{public}s}";
      goto LABEL_57;
    }

LABEL_58:

    goto LABEL_59;
  }

  v85 = v5;
  v35 = [v12 databaseObject];
  if (!v35)
  {

    goto LABEL_54;
  }

  v36 = v35;
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {

LABEL_54:
    if (qword_100936248 != -1)
    {
      goto LABEL_99;
    }

    goto LABEL_55;
  }

  v82 = v36;
  if (v10)
  {
    v69 = v37;
    v38 = _CocoaArrayWrapper.endIndex.getter();
    v37 = v69;
  }

  else
  {
    v38 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v38)
  {
    v81 = v37;
    v10 = RDStoreControllerICCloudContextAuthor;
    do
    {
      v30 = __OFSUB__(v38--, 1);
      if (v30)
      {
        __break(1u);
        goto LABEL_92;
      }

      if (v13)
      {
        v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          swift_once();
LABEL_55:
          v60 = type metadata accessor for Logger();
          sub_100006654(v60, qword_100948990);
          v61 = v12;
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v84 = v52;
            *v51 = 136446210;
            v62 = v61;
            v63 = [v62 description];
            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v66 = v65;

            v67 = sub_10000668C(v64, v66, &v84);

            *(v51 + 4) = v67;
            v59 = "RDMergPolicy: databaseObject is not a REMCDHashtag for resolving hashtag constraint conflict {conflict: %{public}s}";
LABEL_57:
            _os_log_impl(&_mh_execute_header, v49, v50, v59, v51, 0xCu);
            sub_10000607C(v52);
          }

          goto LABEL_58;
        }

        if (v38 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_98;
        }

        v70 = *(v5 + 32 + 8 * v38);
      }

      v12 = v70;
      v71 = [v70 managedObjectContext];
      if (v71)
      {
        v72 = v71;
        v73 = [v71 transactionAuthor];

        if (v73)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      v74._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = String.hasPrefix(_:)(v74);

      if (v75)
      {
        [v19 deleteObject:v81];

        v5 = v85;
        break;
      }
    }

    while (v38);
  }

  if (v5 >> 62)
  {
    v76 = _CocoaArrayWrapper.endIndex.getter();
    if (v76)
    {
LABEL_78:
      v77 = 0;
      v12 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v77 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v78 = *(v5 + 8 * v77 + 32);
        }

        v79 = v78;
        v80 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        [v19 deleteObject:v78];

        ++v77;
        if (v80 == v76)
        {
          goto LABEL_101;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      swift_once();
LABEL_30:
      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100948990);
      v18 = v12;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v85 = v22;
        *v21 = 136446210;
        v23 = v18;
        v24 = [v23 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_10000668C(v25, v27, &v85);

        *(v21 + 4) = v28;
        v29 = "RDMergePolicy: Some conflicting objects are not hashtag for resolving hashtag constraint conflict {conflict: %{public}s}";
LABEL_47:
        _os_log_impl(&_mh_execute_header, v19, v20, v29, v21, 0xCu);
        sub_10000607C(v22);
      }

LABEL_59:

      return 0;
    }
  }

  else
  {
    v76 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v76)
    {
      goto LABEL_78;
    }
  }

LABEL_101:

  return 1;
}

uint64_t sub_1004944C4(void *a1)
{
  v2 = [a1 conflictingObjects];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = &selRef_isEmpty;
  v5 = [a1 constraint];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v6 + 16);

  if (v7 != 1)
  {
    goto LABEL_29;
  }

  v8 = [a1 constraint];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v9[2])
  {
    goto LABEL_34;
  }

  v11 = v9[4];
  v10 = v9[5];

  if (v11 == 0x696669746E656469 && v10 == 0xEA00000000007265)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
LABEL_29:

      return 0;
    }
  }

  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_35;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v14 = [a1 databaseObject];
    if (v14)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        break;
      }
    }

    if (v4)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    v4 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v19 = *(v3 + 8 * v4 + 32);
      }

      v20 = v19;
      v21 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v17 = sub_100493A8C(a1);
        goto LABEL_31;
      }

      ++v4;
      if (v21 == v18)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_29;
    }
  }

  v16 = v15;
  v14 = v14;

  v17 = sub_1004936A8(a1, v16);

LABEL_31:
  return v17 & 1;
}

id sub_1004947A4(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 remObjectID];
  if (!v6)
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100948990);
    v22 = a1;
    v7 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v22;
      *v25 = v22;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v7, v23, "RDMergePolicy: Failed to get the reminder remObjectID from the CDReminder {cdReminder: %@}", v24, 0xCu);
      sub_1000050A4(v25, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_18;
  }

  v7 = v6;
  v8 = [a1 account];
  if (!v8 || (v9 = v8, v10 = [v8 remObjectID], v9, !v10))
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100948990);
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDMergePolicy: Failed to get the account remObjectID from the CDReminder {cdReminder: %@}", v18, 0xCu);
      sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
    }

LABEL_18:
    return 0;
  }

  if (a2 == 0x636F44656C746974 && a3 == 0xED0000746E656D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = [objc_opt_self() titleReplicaIDSourceWithAccountID:v10 reminderID:v7];
LABEL_8:
    v12 = v11;

    return v12;
  }

  if (a2 == 0x636F447365746F6ELL && a3 == 0xED0000746E656D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = [objc_opt_self() notesReplicaIDSourceWithAccountID:v10 reminderID:v7];
    goto LABEL_8;
  }

  if (qword_100936248 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100948990);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_10000668C(a2, a3, &v32);
    _os_log_impl(&_mh_execute_header, v28, v29, "RDMergePolicy: Unexpected reminder property key to get a replicaIDSource for it {key: %s}", v30, 0xCu);
    sub_10000607C(v31);
  }

  return 0;
}

void sub_100494C68(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = [a1 remObjectID];
  if (!v11)
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100948990);

    v19 = a1;
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v61 = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_10000668C(a5, a6, &v61);
      *(v21 + 12) = 2112;
      v24 = [v19 objectID];
      *(v21 + 14) = v24;
      *v22 = v24;
      _os_log_impl(&_mh_execute_header, oslog, v20, "RDMergePolicy: cdReminder has no remObjectID {key: %s, cdReminder.objectID: %@}", v21, 0x16u);
      sub_1000050A4(v22, &unk_100938E70, &unk_100797230);

      sub_10000607C(v23);

      return;
    }

    goto LABEL_23;
  }

  oslog = v11;
  v12 = sub_1004947A4(a1, a5, a6);
  if (!v12)
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100948990);
    v26 = oslog;

    log = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(log, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v61 = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_10000668C(a5, a6, &v61);
      *(v28 + 12) = 2112;
      *(v28 + 14) = v26;
      *v29 = oslog;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, log, v27, "RDMergePolicy: Could not get a replicaIDSource for reminder for key {key: %s, remObjectID: %@}", v28, 0x16u);
      sub_1000050A4(v29, &unk_100938E70, &unk_100797230);

      sub_10000607C(v30);

      return;
    }

    goto LABEL_31;
  }

  log = v12;
  v13 = [a1 account];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v13, "type")}];
    v16 = [v15 supportsCRDTs];

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  if (a3 >> 60 == 15)
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100948990);
    v33 = oslog;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57 = v17;
      v38 = swift_slowAlloc();
      v61 = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_10000668C(a5, a6, &v61);
      *(v36 + 12) = 2112;
      *(v36 + 14) = v33;
      *v37 = oslog;
      v39 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "RDMergePolicy: Store snapshot document data is nil for the mergeable string document key {key: %s, remObjectID: %@}", v36, 0x16u);
      sub_1000050A4(v37, &unk_100938E70, &unk_100797230);

      sub_10000607C(v38);
      v17 = v57;
    }

    v40 = log;
    v41 = v33;
    isa = 0;
  }

  else
  {
    v43 = log;
    v44 = oslog;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v45 = String._bridgeToObjectiveC()();
  v58 = [objc_opt_self() documentFromSerializedData:isa replicaIDSource:log forKey:v45 ofObjectID:oslog];

  v46 = sub_1002AF880(v58, a5, a6, a4, v17);
  if (v48 != 1)
  {
    v50 = v46;
    v51 = v47;
    v52 = v48;
    if (v47 >> 60 == 15)
    {
      v53 = 0;
    }

    else
    {
      sub_100029344(v46, v47);
      v53 = Data._bridgeToObjectiveC()().super.isa;
      sub_100031A14(v50, v51);
    }

    v54 = String._bridgeToObjectiveC()();
    [a1 setValue:v53 forKey:v54];
    swift_unknownObjectRelease();

    if (v52)
    {
      v55 = String._bridgeToObjectiveC()();

      v56 = String._bridgeToObjectiveC()();
      [a1 setValue:v55 forKey:v56];

      sub_100031A14(v50, v51);
      v49 = v58;
      goto LABEL_32;
    }

    sub_100031A14(v50, v51);
LABEL_31:
    v49 = log;
    goto LABEL_32;
  }

LABEL_23:
  v49 = oslog;
LABEL_32:
}

void sub_100495408(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v10 = a1;
  v11 = [a1 account];
  v80 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v11, "type")}];
    v14 = [v13 supportsCRDTs];

    if (a3 >> 60 == 15)
    {
      v15 = v14 ^ 1;
LABEL_6:
      if (qword_100936248 != -1)
      {
        swift_once();
      }

      v74 = v15;
      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100948990);

      v17 = v10;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *&v87[0] = swift_slowAlloc();
        *v20 = 136315394;
        *(v20 + 4) = sub_10000668C(a5, a6, v87);
        *(v20 + 12) = 2080;
        *&v85 = [v17 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v21 = Optional.descriptionOrNil.getter();
        v22 = a6;
        v23 = a3;
        v25 = v24;

        v26 = sub_10000668C(v21, v25, v87);
        a3 = v23;
        a6 = v22;

        *(v20 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v18, v19, "RDMergePolicy: Store snapshot reminderIDs ordering data is nil for key {key: %s, remObjectID: %s}", v20, 0x16u);
        swift_arrayDestroy();
        v27 = v6;
      }

      else
      {
        v27 = v6;
      }

      v77 = 0;
      v10 = v80;
      v28 = v74;
      goto LABEL_24;
    }

    if ((v14 & 1) == 0)
    {
      v27 = v6;
      v77 = 0;
      v28 = 1;
      goto LABEL_24;
    }
  }

  else if (a3 >> 60 == 15)
  {
    v15 = 0;
    goto LABEL_6;
  }

  sub_100029344(a2, a3);
  if (qword_100936248 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_100948990);
  v30 = v10;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v78 = a6;
    v33 = v10;
    v75 = a3;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v87[0] = v35;
    *v34 = 136315138;
    v36 = [v30 remObjectID];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 description];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v7 = v6;
    }

    else
    {
      v41 = 0xE300000000000000;
      v39 = 7104878;
    }

    v42 = sub_10000668C(v39, v41, v87);

    *(v34 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "RDMergePolicy: Deserialized reminderIDsMergeableOrdering from data {remObjectID: %s}", v34, 0xCu);
    sub_10000607C(v35);

    a3 = v75;
    v10 = v33;
    a6 = v78;
  }

  else
  {
  }

  v43 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v87[0] = 0;
  v45 = [v43 reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:isa error:v87];

  v46 = *&v87[0];
  if (!v45)
  {
    v66 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100031A14(a2, a3);
    return;
  }

  v27 = v7;
  sub_100031A14(a2, a3);
  v77 = v45;
  v47 = v45;
  v28 = 0;
LABEL_24:
  sub_1001CB4B8(a2, a3);
  v48 = [v10 createResolutionTokenMapIfNecessary];
  v49 = String._bridgeToObjectiveC()();
  v50 = [v48 mergeWithMap:a4 forKey:v49];

  if (v28)
  {

    if ((v50 & 1) == 0)
    {

      sub_100031A14(a2, a3);
      return;
    }

    v51 = a2;
    sub_1001CB4B8(a2, a3);
    v52 = a3;
    v53 = v77;
  }

  else
  {
    v54 = String._bridgeToObjectiveC()();
    v55 = [v10 valueForKey:v54];

    if (v55)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v87[0] = v85;
    v87[1] = v86;
    v56 = v27;
    v76 = a3;
    if (*(&v86 + 1))
    {
      v57 = swift_dynamicCast();
      if (v57)
      {
        v58 = v83;
      }

      else
      {
        v58 = 0;
      }

      if (v57)
      {
        v59 = v84;
      }

      else
      {
        v59 = 0xF000000000000000;
      }
    }

    else
    {
      sub_1000050A4(v87, &qword_100939ED0, &qword_100791B10);
      v58 = 0;
      v59 = 0xF000000000000000;
    }

    v53 = v77;
    *&v87[0] = 0;
    v60 = [v80 remObjectIDWithError:v87];
    if (!v60)
    {
      v65 = *&v87[0];
      sub_100031A14(v58, v59);
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100031A14(a2, a3);

      return;
    }

    v61 = v60;
    v62 = *&v87[0];
    v63 = sub_1006A4484(v77, v58, v59, a5, a6, v61);
    if (v56)
    {

      sub_100031A14(a2, v76);
      sub_100031A14(v58, v59);

      return;
    }

    v51 = v63;
    v52 = v64;

    sub_100031A14(v58, v59);
    a3 = v76;
    v10 = v80;
  }

  if (v52 >> 60 == 15)
  {

    v67 = a2;
    v68 = a3;
  }

  else
  {
    v69 = Data._bridgeToObjectiveC()().super.isa;
    v70 = String._bridgeToObjectiveC()();
    v71 = v10;
    v72 = a3;
    v73 = v70;
    [v71 setValue:v69 forKey:v70];

    sub_100031A14(v51, v52);
    v67 = a2;
    v68 = v72;
  }

  sub_100031A14(v67, v68);
}

id sub_100495C54(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 remObjectID];
  if (v6)
  {
    v7 = v6;
    if (a2 == 0xD000000000000018 && 0x80000001007E9180 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v8 = [objc_opt_self() listIDsMergeableOrderingReplicaIDSourceWithAccountID:v7];

      return v8;
    }

    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_100948990);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10000668C(a2, a3, &v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "RDMergePolicy: Unexpected account property key to get a replicaIDSource for it {key: %s}", v19, 0xCu);
      sub_10000607C(v20);
    }
  }

  else
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100948990);
    v11 = a1;
    v7 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = v11;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v7, v12, "RDMergePolicy: Failed to get the account remObjectID from the CDAccount {cdAccount: %@}", v13, 0xCu);
      sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
    }
  }

  return 0;
}

void sub_100495F54(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = [a1 remObjectID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100495C54(a1, a5, a6);
    if (v14)
    {
      v15 = v14;
      v86 = a4;
      v87 = a5;
      v16 = a3 >> 60;
      v89 = v14;
      v90 = a2;
      if (a3 >> 60 == 15)
      {
        if (qword_100936248 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100006654(v17, qword_100948990);

        v18 = v13;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v83 = a3;
          v22 = v13;
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *&v97[0] = v24;
          *v21 = 136315394;
          *(v21 + 4) = sub_10000668C(v87, a6, v97);
          *(v21 + 12) = 2112;
          *(v21 + 14) = v18;
          *v23 = v22;
          v25 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "RDMergePolicy: Store snapshot listIDs ordering data is nil for key {key: %s, remObjectID: %@}", v21, 0x16u);
          sub_1000050A4(v23, &unk_100938E70, &unk_100797230);
          v13 = v22;
          a3 = v83;

          sub_10000607C(v24);
          a5 = v87;

          a2 = v90;
        }

        v15 = v89;
      }

      v26 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(a1, "type", v83)}];
      v27 = [v26 supportsCRDTs];

      oslog = 0;
      if (v16 <= 0xE && v27)
      {
        sub_100029344(a2, a3);
        if (qword_100936248 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_100006654(v28, qword_100948990);
        v29 = a1;
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v30, v31))
        {
          osloga = v13;
          v32 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&v97[0] = v84;
          *v32 = 136315138;
          v33 = [v29 remObjectID];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 description];

            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;
          }

          else
          {
            v38 = 0xE300000000000000;
            v36 = 7104878;
          }

          v54 = sub_10000668C(v36, v38, v97);

          *(v32 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v30, v31, "RDMergePolicy: Deserialized listIDsMergeableOrdering ordering from data {remObjectID: %s}", v32, 0xCu);
          sub_10000607C(v84);

          a2 = v90;
          v13 = osloga;
          v15 = v89;
        }

        else
        {
        }

        sub_100029344(a2, a3);
        a5 = v87;
        oslog = sub_1002FF534(a2, a3, v15, v87, a6, v13);
        sub_100031A14(a2, a3);
        sub_100031A14(a2, a3);
        v55 = oslog;
      }

      sub_1001CB4B8(a2, a3);
      v56 = [a1 createResolutionTokenMapIfNecessary];
      v57 = String._bridgeToObjectiveC()();
      v58 = [v56 mergeWithMap:v86 forKey:v57];

      if (v27)
      {
        v59 = [a1 remObjectID];
        if (v59)
        {
          v60 = v59;
          v61 = String._bridgeToObjectiveC()();
          v62 = [a1 valueForKey:v61];

          if (v62)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v95 = 0u;
            v96 = 0u;
          }

          v97[0] = v95;
          v97[1] = v96;
          if (*(&v96 + 1))
          {
            v74 = swift_dynamicCast();
            if (v74)
            {
              v63 = v93;
            }

            else
            {
              v63 = 0;
            }

            if (v74)
            {
              v64 = v94;
            }

            else
            {
              v64 = 0xF000000000000000;
            }

            v75 = oslog;
            if (oslog)
            {
              goto LABEL_49;
            }
          }

          else
          {
            sub_1000050A4(v97, &qword_100939ED0, &qword_100791B10);
            v63 = 0;
            v64 = 0xF000000000000000;
            v75 = oslog;
            if (oslog)
            {
LABEL_49:
              v76 = v75;
              v85 = a3;
              v77 = v13;
              v78 = sub_1002F8750(v63, v64, v89, a5, a6, v60);
              v80 = v79;

              sub_100031A14(v63, v64);
              v63 = v78;
              v13 = v77;
              a3 = v85;
              v64 = v80;
              goto LABEL_52;
            }
          }

          goto LABEL_52;
        }

        if (qword_100935E80 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_100006654(v65, qword_100941670);

        v66 = a1;
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v88 = v56;
          v70 = swift_slowAlloc();
          v71 = v67;
          v72 = swift_slowAlloc();
          *&v97[0] = v72;
          *v69 = 138412546;
          v73 = [v66 objectID];
          *(v69 + 4) = v73;
          *v70 = v73;
          *(v69 + 12) = 2080;
          *(v69 + 14) = sub_10000668C(a5, a6, v97);
          _os_log_impl(&_mh_execute_header, v71, v68, "Can't merge list ordering for account because remObjectID is nil {account.objectID: %@, key: %s}", v69, 0x16u);
          sub_1000050A4(v70, &unk_100938E70, &unk_100797230);

          sub_10000607C(v72);

          goto LABEL_54;
        }
      }

      else
      {

        if (v58)
        {
          v63 = v90;
          sub_1001CB4B8(v90, a3);
          v64 = a3;
LABEL_52:
          if (v64 >> 60 != 15)
          {
            isa = Data._bridgeToObjectiveC()().super.isa;
            v82 = String._bridgeToObjectiveC()();
            [a1 setValue:isa forKey:v82];

            sub_100031A14(v63, v64);
            goto LABEL_56;
          }

LABEL_54:
LABEL_56:
          sub_100031A14(v90, a3);

          goto LABEL_57;
        }
      }

      sub_100031A14(v90, a3);
    }

    else
    {
      if (qword_100936248 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100006654(v46, qword_100948990);

      v47 = v13;
      oslog = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v48))
      {
        v49 = swift_slowAlloc();
        v50 = v13;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v97[0] = v52;
        *v49 = 136315394;
        *(v49 + 4) = sub_10000668C(a5, a6, v97);
        *(v49 + 12) = 2112;
        *(v49 + 14) = v47;
        *v51 = v50;
        v53 = v47;
        _os_log_impl(&_mh_execute_header, oslog, v48, "RDMergePolicy: Could not get a replicaIDSource for account for key {key: %s, remObjectID: %@}", v49, 0x16u);
        sub_1000050A4(v51, &unk_100938E70, &unk_100797230);

        sub_10000607C(v52);

        return;
      }
    }

LABEL_60:

    goto LABEL_57;
  }

  if (qword_100936248 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100006654(v39, qword_100948990);

  v40 = a1;
  oslog = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(oslog, v41))
  {
    goto LABEL_60;
  }

  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  *&v97[0] = v44;
  *v42 = 136315394;
  *(v42 + 4) = sub_10000668C(a5, a6, v97);
  *(v42 + 12) = 2112;
  v45 = [v40 objectID];
  *(v42 + 14) = v45;
  *v43 = v45;
  _os_log_impl(&_mh_execute_header, oslog, v41, "RDMergePolicy: cdAccount has no remObjectID {key: %s, cdAccount.objectID: %@}", v42, 0x16u);
  sub_1000050A4(v43, &unk_100938E70, &unk_100797230);

  sub_10000607C(v44);

LABEL_57:
}

unint64_t sub_100496B04()
{
  result = qword_1009489F0;
  if (!qword_1009489F0)
  {
    sub_1000F514C(&qword_1009489E8, &qword_1007ACA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009489F0);
  }

  return result;
}

uint64_t sub_100496B68()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009489F8);
  v1 = sub_100006654(v0, qword_1009489F8);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100496C30()
{
  result = [objc_opt_self() alarmEngine];
  qword_100948A10 = result;
  return result;
}

uint64_t sub_100496D04()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_1009489F8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction INIT {name: com.apple.remindd.RDDueDateDeltaAlarmProducer.reload}", v10, 2u);
  }

  v17[1] = os_transaction_create();
  static os_signpost_type_t.begin.getter();
  if (qword_100936258 != -1)
  {
    swift_once();
  }

  v11 = qword_100948A10;
  static OSSignpostID.exclusive.getter();
  v17[0] = v11;
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v13 = *sub_10000F61C((v1 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_dataSource), *(v1 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_dataSource + 24));
  static os_signpost_type_t.begin.getter();
  if (qword_1009360B0 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);

  v15 = sub_100412904(v14);

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);
  sub_100497084(v15);
  sub_1004975CC(v15);

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);
  sub_10049A0CC();
  return swift_unknownObjectRelease();
}

void sub_100497084(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  isa = v4[-1].isa;
  v6 = *(isa + 8);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_started) == 1)
  {
    v34 = v4;
    static os_signpost_type_t.begin.getter();
    if (qword_100936258 != -1)
    {
      swift_once();
    }

    v33 = isa;
    v14 = qword_100948A10;
    static OSSignpostID.exclusive.getter();
    v32 = v14;
    os_signpost(_:dso:log:name:signpostID:)();
    v31 = *(v10 + 8);
    v31(v13, v9);
    if (qword_100936250 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_1009489F8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDDueDateDeltaAlarmProducer is firing expired dueDateDelta alarms", v18, 2u);
    }

    v19 = Date.init(timeIntervalSinceNow:)();
    __chkstk_darwin(v19);
    *(&v30 - 2) = v8;
    v20 = sub_1003DFE04(sub_10049A218, (&v30 - 4), a1);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v20[2];
      _os_log_impl(&_mh_execute_header, v21, v22, "RDDueDateDeltaAlarmProducer is firing expired dueDateDelta alarms, count = %ld", v23, 0xCu);
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    __chkstk_darwin(Strong);
    *(&v30 - 2) = v8;
    v25 = sub_10024D7DC(sub_10049A234, (&v30 - 4), v20);

    sub_100292BB4(v2, v25, Strong);

    swift_unknownObjectRelease();
    (*(v33 + 1))(v8, v34);
    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v31(v13, v9);
  }

  else
  {
    if (qword_100936250 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_1009489F8);
    v34 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v34, v27, "RDDueDateDeltaAlarmProducer.start() must be called before fireExpiredAlarms", v28, 2u);
    }

    v29 = v34;
  }
}

void sub_1004975CC(void *a1)
{
  v152 = a1;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v133 - v4;
  v6 = sub_1000F5104(&qword_100945E58, &unk_1007ACAD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v148 = (&v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v149 = (&v133 - v10);
  v156 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  isa = v156[-1].isa;
  v12 = *(isa + 8);
  __chkstk_darwin(v156);
  v143 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v147 = (&v133 - v15);
  __chkstk_darwin(v16);
  v18 = &v133 - v17;
  __chkstk_darwin(v19);
  v21 = &v133 - v20;
  __chkstk_darwin(v22);
  v24 = &v133 - v23;
  v154 = type metadata accessor for Date();
  v150 = *(v154 - 8);
  v25 = *(v150 + 64);
  __chkstk_darwin(v154);
  v141 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v142 = &v133 - v28;
  __chkstk_darwin(v29);
  v151 = &v133 - v30;
  __chkstk_darwin(v31);
  v146 = &v133 - v32;
  __chkstk_darwin(v33);
  v155 = &v133 - v34;
  v35 = type metadata accessor for OSSignpostID();
  v36 = *(v35 - 8);
  v37 = v36[8];
  __chkstk_darwin(v35);
  v39 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v1;
  v40 = &qword_100936000;
  if (*(v1 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_started) == 1)
  {
    v144 = v24;
    v135 = v5;
    static os_signpost_type_t.begin.getter();
    if (qword_100936258 != -1)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v41 = qword_100948A10;
      static OSSignpostID.exclusive.getter();
      v137 = v41;
      os_signpost(_:dso:log:name:signpostID:)();
      v43 = v36[1];
      v42 = (v36 + 1);
      v145 = v39;
      v139 = v35;
      v138 = v43;
      v43(v39, v35);
      v44 = v154;
      if (v40[74] != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      v136 = sub_100006654(v45, qword_1009489F8);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "RDDueDateDeltaAlarmProducer is setting up the timers", v48, 2u);
        v44 = v154;
      }

      v49 = v155;
      v50 = Date.init()();
      __chkstk_darwin(v50);
      *(&v133 - 2) = v49;
      v51 = sub_1003DFE04(sub_10049A1B4, (&v133 - 4), v152);
      v35 = v51;
      v40 = v51[2];
      v140 = v42;
      if (!v40)
      {
        break;
      }

      v52 = v153;
      v39 = v51 + ((*(isa + 80) + 32) & ~*(isa + 80));
      sub_1003E4398(v39, v21);
      if (v40 == 1)
      {
LABEL_9:

        v53 = v148;
        sub_100031B58(v21, v148, &unk_1009464C0, &qword_10079D360);
        v54 = 0;
        v55 = v52;
        v44 = v154;
        goto LABEL_18;
      }

      v112 = 1;
      v36 = &unk_1009464C0;
      while (v112 < *(v35 + 16))
      {
        sub_1003E4398(&v39[*(isa + 9) * v112], v18);
        isa_low = SLODWORD(v156[6].isa);
        if (static Date.< infix(_:_:)())
        {
          sub_1000050A4(v21, &unk_1009464C0, &qword_10079D360);
          sub_100031B58(v18, v21, &unk_1009464C0, &qword_10079D360);
        }

        else
        {
          sub_1000050A4(v18, &unk_1009464C0, &qword_10079D360);
        }

        if (v40 == ++v112)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_49:
      swift_once();
    }

    v54 = 1;
    v55 = v153;
    v53 = v148;
LABEL_18:
    v60 = v156;
    (*(isa + 7))(v53, v54, 1, v156);
    v61 = v149;
    sub_100031B58(v53, v149, &qword_100945E58, &unk_1007ACAD0);
    v62 = (*(isa + 6))(v61, 1, v60);
    v63 = v144;
    v64 = v145;
    v65 = v151;
    if (v62 == 1)
    {
      sub_1000050A4(v61, &qword_100945E58, &unk_1007ACAD0);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      v68 = os_log_type_enabled(v66, v67);
      v69 = v150;
      if (v68)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "No dueDateDelta alarm with future fireDate -- Done", v70, 2u);
      }

      v71 = v139;
      if (*(v55 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_beforeFirstUnlockNotificationEngine))
      {
        v72 = v135;
        (*(v69 + 56))(v135, 1, 1, v44);
        sub_10030418C(v72);
        sub_1000050A4(v72, &unk_100938850, qword_100795AE0);
      }

      (*(v69 + 8))(v155, v44);
      static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v138(v64, v71);
    }

    else
    {
      sub_100031B58(v61, v144, &unk_1009464C0, &qword_10079D360);
      v73 = v146;
      Date.init()();
      v74 = v150;
      v75 = v155;
      v149 = *(v150 + 8);
      (v149)(v155, v44);
      v76 = *(v74 + 32);
      v76(v75, v73, v44);
      v77 = v147;
      sub_1003E4398(v63, v147);

      v76(v65, v77 + SLODWORD(v60[6].isa), v44);
      if (static Date.> infix(_:_:)())
      {
        sub_1003E4398(v63, v77);
        v78 = *v77;

        (v149)(v77 + SLODWORD(v156[6].isa), v44);
        v79 = (v74 + 16);
        v80 = *(v74 + 16);
        v81 = v142;
        v146 = v79;
        v141 = v80;
        (v80)(v142, v65, v44);
        v82 = v143;
        sub_1003E4398(v63, v143);
        v83 = v78;
        v84 = Logger.logObject.getter();
        LODWORD(v78) = static os_log_type_t.default.getter();
        v152 = v83;

        LODWORD(v136) = v78;
        v148 = v84;
        if (os_log_type_enabled(v84, v78))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v158[0] = v134;
          *v85 = 136447234;
          sub_10049A1D0(&qword_100937010, 255, &type metadata accessor for Date);
          v87 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v82;
          v90 = v89;
          v91 = v81;
          v92 = v149;
          (v149)(v91, v44);
          v93 = sub_10000668C(v87, v90, v158);

          *(v85 + 4) = v93;
          *(v85 + 12) = 2080;
          sub_1003E4398(v88, v77);
          v94 = SLODWORD(v156[6].isa);
          v157 = *v77;
          v95 = String.init<A>(describing:)();
          v97 = v96;
          sub_1000050A4(v88, &unk_1009464C0, &qword_10079D360);
          v92(v77 + v94, v44);
          v98 = sub_10000668C(v95, v97, v158);

          *(v85 + 14) = v98;
          *(v85 + 22) = 2114;
          v99 = v152;
          v100 = [v152 objectID];
          *(v85 + 24) = v100;
          v101 = v86;
          *v86 = v100;
          *(v85 + 32) = 2082;
          if ([v99 isRecurrent])
          {
            v102 = 89;
          }

          else
          {
            v102 = 78;
          }

          v103 = sub_10000668C(v102, 0xE100000000000000, v158);

          *(v85 + 34) = v103;
          *(v85 + 42) = 2082;
          v63 = v144;
          v104 = v153;
          if ([v99 isOverdue])
          {
            v105 = 89;
          }

          else
          {
            v105 = 78;
          }

          v106 = v154;
          v107 = v145;
          v108 = sub_10000668C(v105, 0xE100000000000000, v158);

          *(v85 + 44) = v108;
          v109 = v148;
          _os_log_impl(&_mh_execute_header, v148, v136, "Scheduling next dueDateDelta alarm {fireDate: %{public}s, nextAlarm: %s, reminderID: %{public}@, recurrent: %{public}s, overdue: %{public}s}", v85, 0x34u);
          sub_1000050A4(v101, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          v65 = v151;

          v110 = v135;
          v111 = v92;
        }

        else
        {

          sub_1000050A4(v82, &unk_1009464C0, &qword_10079D360);
          v106 = v44;
          v111 = v149;
          (v149)(v81, v44);
          v110 = v135;
          v104 = v153;
          v107 = v145;
        }

        v129 = v104;
        v130 = *(v104 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_beforeFirstUnlockNotificationEngine);
        v128 = v139;
        if (v130)
        {
          (v141)(v110, v65, v106);
          (*(v150 + 56))(v110, 0, 1, v106);
          sub_10030418C(v110);
          sub_1000050A4(v110, &unk_100938850, qword_100795AE0);
        }

        v131 = *(v129 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_timeEventStream);
        sub_1003B80B8(v65);

        v111(v65, v106);
        sub_1000050A4(v63, &unk_1009464C0, &qword_10079D360);
        v111(v155, v106);
        static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();
        v132 = v107;
      }

      else
      {
        v114 = v149;
        v115 = v74;
        v116 = v44;
        v117 = v141;
        (*(v115 + 16))(v141, v65, v44);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = v117;
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *&v157 = v122;
          *v121 = 136446210;
          v123 = Date.description.getter();
          v125 = v124;
          v114(v120, v116);
          v126 = sub_10000668C(v123, v125, &v157);
          v65 = v151;

          *(v121 + 4) = v126;
          _os_log_impl(&_mh_execute_header, v118, v119, "Next dueDateDelta alarm is in the past -- Not adding event {fireDate: %{public}s}", v121, 0xCu);
          sub_10000607C(v122);
          v127 = v145;

          v128 = v139;
        }

        else
        {

          v114(v117, v44);
          v128 = v139;
          v127 = v145;
        }

        sub_100497084(v152);
        v114(v65, v116);
        sub_1000050A4(v144, &unk_1009464C0, &qword_10079D360);
        v114(v155, v116);
        static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();
        v132 = v127;
      }

      v138(v132, v128);
    }
  }

  else
  {
    if (qword_100936250 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100006654(v56, qword_1009489F8);
    v156 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v156, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v156, v57, "RDDueDateDeltaAlarmProducer.start() must be called before setupTimers", v58, 2u);
    }

    v59 = v156;
  }
}

uint64_t sub_1004986C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v62 = a3;
  v65 = a2;
  v4 = type metadata accessor for Date();
  v58 = *(v4 - 8);
  v5 = v58;
  v6 = *(v58 + 64);
  __chkstk_darwin(v4);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v57 - v9;
  __chkstk_darwin(v11);
  v64 = &v57 - v12;
  v13 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  sub_1003E4398(a1, &v57 - v16);
  v19 = *v17;
  v18 = *(v17 + 1);
  v20 = *(v5 + 8);
  v20(&v17[*(v14 + 56)], v4);
  sub_1003E4398(a1, v17);
  v21 = *v17;
  v22 = v19;
  v23 = v18;
  v24 = v64;
  v60 = v23;

  v25 = *(v14 + 56);
  v26 = v58;
  (*(v58 + 32))(v24, &v17[v25], v4);
  sub_1003E448C();
  static NSDateInterval.remNotificationFireDateGracePeriod.getter();
  Date.addingTimeInterval(_:)();
  v63 = static Date.> infix(_:_:)();
  v61 = v20;
  v65 = v5 + 8;
  v20(v10, v4);
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_1009489F8);
  v28 = v59;
  (*(v26 + 16))(v59, v24, v4);
  v29 = v22;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v57 = v33;
    v58 = swift_slowAlloc();
    v66 = v58;
    *v32 = 138544130;
    v34 = [v29 objectID];
    *(v32 + 4) = v34;
    *v33 = v34;
    *(v32 + 12) = 2082;
    v35 = Date.description.getter();
    v37 = v36;
    v38 = v28;
    v39 = v61;
    v61(v38, v4);
    v40 = sub_10000668C(v35, v37, &v66);

    *(v32 + 14) = v40;
    *(v32 + 22) = 2082;
    if (v63)
    {
      v41 = 0x657669746361;
    }

    else
    {
      v41 = 0x65766973736170;
    }

    if (v63)
    {
      v42 = 0xE600000000000000;
    }

    else
    {
      v42 = 0xE700000000000000;
    }

    v43 = sub_10000668C(v41, v42, &v66);

    *(v32 + 24) = v43;
    *(v32 + 32) = 2082;
    v24 = v64;
    if ([v29 isRecurrent])
    {
      v44 = 89;
    }

    else
    {
      v44 = 78;
    }

    v45 = sub_10000668C(v44, 0xE100000000000000, &v66);

    *(v32 + 34) = v45;
    _os_log_impl(&_mh_execute_header, v30, v31, "RDDueDateDeltaAlarmProducer expired dueDateDelta Alarm {reminderID: %{public}@, fireDate: %{public}s alarmType: %{public}s, recurrent: %{public}s}", v32, 0x2Au);
    sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {

    v46 = v28;
    v39 = v61;
    v61(v46, v4);
  }

  v47 = v60;
  v48 = sub_1007467B8(v60);
  v50 = v49;
  v52 = v51;
  v54 = v53;

  result = v39(v24, v4);
  v56 = v62;
  *v62 = v29;
  v56[1] = v48;
  v56[2] = v50;
  v56[3] = v52;
  *(v56 + 32) = v54;
  *(v56 + 33) = (v63 & 1) == 0;
  *(v56 + 34) = 1;
  return result;
}

void sub_100498C9C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v0[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_started])
  {
    if (qword_100936250 == -1)
    {
LABEL_4:
      v9 = type metadata accessor for Logger();
      sub_100006654(v9, qword_1009489F8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "RDDueDateDeltaAlarmProducer.start() must be called exactly once", v12, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v0[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_started] = 1;
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_1009489F8);
  v14 = v0;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315138;
    v29 = 60;
    v30 = 0xE100000000000000;
    v31 = v18;
    v19._countAndFlagsBits = sub_100597C80(v14);
    String.append(_:)(v19);

    v20._countAndFlagsBits = 62;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = sub_10000668C(v29, v30, &v31);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting due date delta alarm producer {producer: %s}", v17, 0xCu);
    sub_10000607C(v18);
  }

  v22 = *&v14[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_timeEventStream];
  v23 = *&v14[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_timeEventStream + 8];
  ObjectType = swift_getObjectType();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = *(v23 + 8);
  v27 = *(v26 + 16);

  v27(sub_10049A254, v25, ObjectType, v26);

  sub_100496D04();
}

void sub_100499064()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100936250 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_1009489F8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received RDTimeEventHandler event on RDDueDateDeltaAlarmProducer, reloading alarms.", v5, 2u);
    }

    sub_100496D04();
  }

  else
  {
    if (qword_100936250 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_1009489F8);
    v1 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v1, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v1, v7, "Received RDTimeEventHandler event on deallocated RDDueDateDeltaAlarmProducer", v8, 2u);
    }
  }
}

uint64_t sub_100499224()
{
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009489F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Alarm trigger did change for RDDueDateDeltaAlarmProducer", v3, 2u);
  }

  return sub_100496D04();
}

uint64_t sub_100499374@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v58 = type metadata accessor for DateComponents();
  v3 = *(v58 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v58);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v57 - v8;
  __chkstk_darwin(v10);
  v12 = v57 - v11;
  __chkstk_darwin(v13);
  v15 = v57 - v14;
  v16 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v57 - v21;
  v23 = type metadata accessor for Date();
  v60 = *(v23 - 8);
  v61 = v23;
  v24 = *(v60 + 64);
  __chkstk_darwin(v23);
  v26 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v57[0] = v57 - v29;
  v30 = [a1 allDay];
  v59 = a1;
  v31 = [a1 dueDateComponents];
  v32 = v31;
  if (v30)
  {
    if (v31)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = v58;
      (*(v3 + 32))(v15, v12, v58);
      sub_1004F20E4(v19);
      (*(v3 + 8))(v15, v33);
      v35 = v60;
      v34 = v61;
      v36 = *(v60 + 48);
      if (v36(v19, 1, v61) != 1)
      {
        (*(v35 + 32))(v26, v19, v34);
        sub_1004F2BFC(v26, v22);
        (*(v35 + 8))(v26, v34);
        goto LABEL_7;
      }
    }

    else
    {
      v35 = v60;
      v34 = v61;
      (*(v60 + 56))(v19, 1, 1, v61);
    }

    sub_1000050A4(v19, &unk_100938850, qword_100795AE0);
LABEL_12:
    (*(v35 + 56))(v22, 1, 1, v34);
    goto LABEL_13;
  }

  if (!v31)
  {
    v35 = v60;
    v34 = v61;
    goto LABEL_12;
  }

  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v58;
  (*(v3 + 32))(v9, v6, v58);
  sub_1004F20E4(v22);
  (*(v3 + 8))(v9, v37);
  v35 = v60;
  v34 = v61;
  v36 = *(v60 + 48);
LABEL_7:
  if (v36(v22, 1, v34) != 1)
  {
    v38 = v57[0];
    (*(v35 + 32))(v57[0], v22, v34);
    v39 = [v57[1] dueDateDelta];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v41 = [v39 addedTo:isa];

    v42 = v62;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v35 + 8))(v38, v34);
    v43 = v42;
    v44 = 0;
    return (*(v35 + 56))(v43, v44, 1, v34);
  }

LABEL_13:
  sub_1000050A4(v22, &unk_100938850, qword_100795AE0);
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100006654(v45, qword_1009489F8);
  v46 = v59;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v63 = v50;
    *v49 = 136315138;
    v51 = [v46 description];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = sub_10000668C(v52, v54, &v63);

    *(v49 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v47, v48, "Tried to fire dueDateDelta alarm with nil dueDate {reminder: %s}", v49, 0xCu);
    sub_10000607C(v50);
  }

  v44 = 1;
  v43 = v62;
  return (*(v35 + 56))(v43, v44, 1, v34);
}

uint64_t sub_1004999D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v54 = a2;
  v55 = a3;
  v6 = type metadata accessor for DateComponents();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v57 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v48 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v51 = &v48 - v31;
  if (![a1 allDay])
  {
    v38 = [a1 displayDate];
    if (!v38)
    {
      (*(v23 + 56))(v21, 1, 1, v22);
      goto LABEL_12;
    }

    v39 = v38;
    v40 = [v38 date];

    v37 = v57;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = *(v23 + 32);
    v36(v21, v37, v22);
    (*(v23 + 56))(v21, 0, 1, v22);
    v35 = *(v23 + 48);
    goto LABEL_7;
  }

  v49 = a1;
  v50 = a4;
  v32 = [a1 dueDateComponents];
  if (!v32)
  {
    (*(v23 + 56))(v18, 1, 1, v22);
    goto LABEL_10;
  }

  v33 = v32;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v56;
  (*(v56 + 32))(v12, v9, v6);
  sub_1004F20E4(v18);
  (*(v34 + 8))(v12, v6);
  v35 = *(v23 + 48);
  if (v35(v18, 1, v22) == 1)
  {
LABEL_10:
    sub_1000050A4(v18, &unk_100938850, qword_100795AE0);
    (*(v23 + 56))(v21, 1, 1, v22);
    a4 = v50;
    goto LABEL_12;
  }

  v36 = *(v23 + 32);
  v36(v28, v18, v22);
  sub_1004F2BFC(v28, v21);
  (*(v23 + 8))(v28, v22);
  a1 = v49;
  a4 = v50;
  v37 = v57;
LABEL_7:
  if (v35(v21, 1, v22) != 1)
  {
    v41 = v51;
    v36(v51, v21, v22);
    v42 = [v52 dueDateDelta];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v44 = [v42 addedTo:isa];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v53;
    (*(v23 + 16))(v53, v37, v22);
    (*(v23 + 56))(v45, 0, 1, v22);
    v55(a1, v54, v45);
    sub_1000050A4(v45, &unk_100938850, qword_100795AE0);
    v46 = *(v23 + 8);
    v46(v37, v22);
    return (v46)(v41, v22);
  }

LABEL_12:
  sub_1000050A4(v21, &unk_100938850, qword_100795AE0);
  return (*(v23 + 56))(a4, 1, 1, v22);
}

uint64_t sub_10049A074(uint64_t a1, uint64_t a2)
{
  result = sub_10049A1D0(&qword_100948A70, a2, type metadata accessor for RDDueDateDeltaAlarmProducer);
  *(a1 + 8) = result;
  return result;
}

void sub_10049A0CC()
{
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009489F8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.RDDueDateDeltaAlarmProducer.reload}", v2, 2u);
  }
}

uint64_t sub_10049A1D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_10049A25C(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_100411B0C(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 name];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_100026EF4((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_1000F5104(&qword_100948BD0, &qword_1007ACC18);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_100010E34(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_100010E34(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_100010E34(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_10049A5C4(unint64_t a1, void *a2, void *a3, void **a4)
{
  v5 = a1;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
    {
      goto LABEL_4;
    }

LABEL_13:

    return v5;
  }

  v13 = a4;
  v14 = a2;
  v15 = a3;
  v16 = _CocoaArrayWrapper.endIndex.getter();
  a3 = v15;
  a2 = v14;
  a4 = v13;
  if (v16 <= 1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v6 = *a4;
  if (!*a4)
  {
    v10 = a4;
    v11 = a3;
    v8 = a2;
    v12 = sub_100012370(v8, v11);
    if (v4)
    {
    }

    else if (v12)
    {
      *v10 = v12;
      v6 = v12;
      _s19PolymorphicListItemCMa();
      goto LABEL_6;
    }

    return v5;
  }

  v7 = a2;
  _s19PolymorphicListItemCMa();
  v8 = v7;
LABEL_6:
  v9 = v6;
  v5 = REMOrderedIdentifierMap.reorder<A>(objects:)();

  return v5;
}

uint64_t sub_10049A710()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948A78);
  v1 = sub_100006654(v0, qword_100948A78);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10049A7D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, objc_class *a4@<X3>, uint64_t a5@<X8>)
{
  v485 = a2;
  v528 = type metadata accessor for REMAccountsListDataView.ReminderCounts.ComputedCountContainer();
  v518 = *(v528 - 8);
  v10 = *(v518 + 64);
  v11 = __chkstk_darwin(v528);
  v474 = &v467 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v473 = &v467 - v14;
  v15 = __chkstk_darwin(v13);
  v472 = &v467 - v16;
  v17 = __chkstk_darwin(v15);
  v471 = &v467 - v18;
  v19 = __chkstk_darwin(v17);
  v514 = &v467 - v20;
  v21 = __chkstk_darwin(v19);
  v500 = &v467 - v22;
  v23 = __chkstk_darwin(v21);
  v519 = &v467 - v24;
  __chkstk_darwin(v23);
  v505 = &v467 - v25;
  v26 = sub_1000F5104(&qword_100948BE0, &qword_1007ACC20);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v502 = &v467 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v501 = &v467 - v31;
  v32 = __chkstk_darwin(v30);
  v507 = &v467 - v33;
  __chkstk_darwin(v32);
  v506 = &v467 - v34;
  v484 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v483 = *(v484 - 8);
  v35 = *(v483 + 64);
  __chkstk_darwin(v484);
  v482 = &v467 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v481 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v479 = *(v481 - 8);
  v37 = *(v479 + 64);
  __chkstk_darwin(v481);
  v480 = &v467 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v478 = &v467 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = _s9UtilitiesO12SortingStyleOMa();
  v42 = *(*(v476 - 8) + 64);
  __chkstk_darwin(v476);
  v477 = &v467 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v486 = *(v487 - 8);
  v44 = *(v486 + 64);
  __chkstk_darwin(v487);
  v504 = &v467 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v552 = sub_1000F5104(&qword_100948BE8, &qword_1007ACC28);
  v46 = *(*(v552 - 8) + 64);
  __chkstk_darwin(v552);
  v562 = &v467 - v47;
  v521 = type metadata accessor for TimeZone();
  *&v511 = *(v521 - 8);
  v48 = *(v511 + 64);
  __chkstk_darwin(v521);
  v512 = &v467 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v527 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v50 = *(*(v527 - 8) + 64);
  v51 = __chkstk_darwin(v527);
  v526 = &v467 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v546 = &v467 - v53;
  v510 = type metadata accessor for Calendar.SearchDirection();
  v508 = *(v510 - 8);
  v54 = *(v508 + 64);
  __chkstk_darwin(v510);
  v498 = &v467 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v533 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v497 = *(v533 - 8);
  v56 = *(v497 + 64);
  __chkstk_darwin(v533);
  v496 = &v467 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v522 = type metadata accessor for Calendar.MatchingPolicy();
  v495 = *(v522 - 8);
  v58 = v495[8];
  __chkstk_darwin(v522);
  v494 = &v467 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8);
  v490 = &v467 - v62;
  v63 = sub_1000F5104(&qword_100946078, &qword_1007ACC30);
  v64 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63 - 8);
  v489 = &v467 - v65;
  v493 = type metadata accessor for DateComponents();
  v492 = *(v493 - 1);
  v66 = *(v492 + 64);
  __chkstk_darwin(v493);
  v516 = &v467 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v517 = type metadata accessor for Calendar();
  v515 = *(v517 - 8);
  v68 = *(v515 + 8);
  __chkstk_darwin(v517);
  v548 = &v467 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v71 = *(*(v70 - 8) + 64);
  v72 = __chkstk_darwin(v70 - 8);
  v525 = &v467 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v491 = &v467 - v74;
  v542 = type metadata accessor for Date();
  v532 = *(v542 - 8);
  v75 = v532[8];
  v76 = __chkstk_darwin(v542);
  v499 = &v467 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __chkstk_darwin(v76);
  v524 = &v467 - v79;
  v80 = __chkstk_darwin(v78);
  v523 = &v467 - v81;
  __chkstk_darwin(v80);
  v531 = &v467 - v82;
  v83 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder();
  v565 = *(v83 - 8);
  v566 = v83;
  v84 = v565[8];
  v85 = __chkstk_darwin(v83);
  v561 = (&v467 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __chkstk_darwin(v85);
  v568 = &v467 - v88;
  v89 = __chkstk_darwin(v87);
  v555 = (&v467 - v90);
  __chkstk_darwin(v89);
  v554 = &v467 - v91;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v556 = *(PredicateType - 1);
  v92 = *(v556 + 64);
  __chkstk_darwin(PredicateType);
  v541 = &v467 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v564 = type metadata accessor for UUID();
  v558 = *(v564 - 8);
  v94 = v558[8];
  v95 = __chkstk_darwin(v564);
  v513 = &v467 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __chkstk_darwin(v95);
  v509 = &v467 - v98;
  v99 = __chkstk_darwin(v97);
  v557 = &v467 - v100;
  v101 = __chkstk_darwin(v99);
  v544 = &v467 - v102;
  __chkstk_darwin(v101);
  v534 = &v467 - v103;
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate();
  v547 = *(Predicate - 1);
  v104 = *(v547 + 64);
  __chkstk_darwin(Predicate);
  v536 = (&v467 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = _s10PredicatesOMa(0);
  v107 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v540 = &v467 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v559 = a1;
  v543 = a4;
  sub_10002D468(0, a1, a4);
  v475 = a5;
  v488 = a3;
  if (v5)
  {
    if (qword_100936260 != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_100006654(v110, qword_100948A78);
    swift_errorRetain();
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();

    v113 = os_log_type_enabled(v111, v112);
    v563 = 0;
    if (v113)
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v571 = v115;
      *v114 = 136315138;
      swift_getErrorValue();
      v116 = Error.rem_errorDescription.getter();
      v118 = sub_10000668C(v116, v117, &v571);

      *(v114 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v111, v112, "REMAccountsListDataView.Invocation fetchCounts() failed to fetch custom smart lists {error: %s}", v114, 0xCu);
      sub_10000607C(v115);
    }

    v222 = _swiftEmptyArrayStorage;
  }

  else
  {
    v222 = sub_1000303FC(v109, a3);
    v563 = 0;
  }

  swift_storeEnumTagMultiPayload();
  v119 = sub_1000F5104(&qword_100948BF0, &unk_1007ACC38);
  v120 = *(v556 + 72);
  v121 = (*(v556 + 80) + 32) & ~*(v556 + 80);
  v550 = *(v556 + 80);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_100791320;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.date.getter();
  v551 = v120;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.flagged.getter();
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.hashtags.getter();
  v123 = sub_1001A5B40(v122);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v575 = v123;
  v560 = v222;
  if (v222 >> 62)
  {
    goto LABEL_77;
  }

  for (i = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v567 = i;
    v539 = v121;
    v538 = v119;
    if (i)
    {
      v125 = swift_allocObject();
      *(v125 + 16) = xmmword_100791300;
      static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.account.getter();
      sub_100391CDC(v125);
      swift_setDeallocating();
      (*(v556 + 8))(v125 + v121, PredicateType);
      swift_deallocClassInstance();
      v574 = v575;
      v123 = v560;
      v569 = (v560 & 0xC000000000000001);
      v119 = v560 & 0xFFFFFFFFFFFFFF8;
      v520 = v575;

      v121 = 0;
      while (1)
      {
        if (v569)
        {
          v126 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v121 >= *(v119 + 16))
          {
            goto LABEL_74;
          }

          v126 = *(v123 + 8 * v121 + 32);
        }

        v127 = v126;
        v128 = (v121 + 1);
        if (__OFADD__(v121, 1))
        {
          break;
        }

        v129 = [v126 customContext];
        if (v129)
        {
          v130 = v129;
          v131 = REMSmartListCustomContext.filter.getter();

          if (v131)
          {
            static Set<>.typesSupportedByCustomSmartList.getter();
            v572 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
            v573 = sub_10012DEEC();
            v571 = v559;
            v132 = v559;
            v133 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

            sub_10000607C(&v571);
            v571 = v133;
            sub_1000F5104(&qword_100949370, &unk_100797770);
            sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770);
            v134 = Sequence<>.postFetchPredicateTypes.getter();
            v123 = v560;

            sub_100355A34(v134);
          }
        }

        ++v121;
        if (v128 == v567)
        {
          v135 = v574;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v569 = (v560 & 0xC000000000000001);
    v135 = v123;
    v119 = v560 & 0xFFFFFFFFFFFFFF8;

    v520 = v123;
LABEL_23:
    v571 = sub_100235F88(v135);
    sub_1000F5104(&qword_100948BF8, &unk_1007ACC48);
    v121 = sub_10000CB48(&qword_100948C00, &qword_100948BF8, &unk_1007ACC48);
    v136 = &protocol witness table for String;
    v137 = v563;
    v138 = Sequence.mapToSet<A>(_:)();
    v139 = v137;

    v530 = v138;
    v574 = v138;
    v571 = sub_100235FA0(v135);
    v140 = Sequence.mapToSet<A>(_:)();
    v537 = v137;

    v529 = v140;
    v570[1] = v140;
    v563 = sub_10038DE1C(_swiftEmptyArrayStorage);
    v545 = (v558 + 1);
    v535 = v135;
    v141 = v567;
    if (!v567)
    {
      break;
    }

    v142 = 0;
    LODWORD(v503) = enum case for REMCustomSmartListFilterDescriptor.PostFetchPredicate.account(_:);
    v470 = v547 + 104;
    v469 = v547 + 16;
    v468 = (v547 + 8);
    v467 = xmmword_100791300;
    v123 = v560;
    while (1)
    {
      if (v569)
      {
        v143 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v142 >= *(v119 + 16))
        {
          goto LABEL_76;
        }

        v143 = *(v123 + 8 * v142 + 32);
      }

      v136 = v143;
      v139 = v142 + 1;
      if (__OFADD__(v142, 1))
      {
        break;
      }

      v144 = [v143 customContext];
      if (v144 && (v145 = v144, v121 = REMSmartListCustomContext.filter.getter(), v145, v121))
      {
        v146 = [v136 accountID];
        v147 = [v146 uuid];

        v148 = v536;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v149 = v547;
        (*(v547 + 104))(v148, v503, Predicate);
        static Set<>.typesSupportedByCustomSmartList.getter();
        v572 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
        v573 = sub_10012DEEC();
        v571 = v559;
        v150 = v559;
        v151 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

        sub_10000607C(&v571);
        sub_1000F5104(&qword_100943DE8, &qword_1007A4580);
        v152 = *(v149 + 72);
        v153 = (*(v149 + 80) + 32) & ~*(v149 + 80);
        v154 = swift_allocObject();
        *(v154 + 16) = v467;
        (*(v149 + 16))(v154 + v153, v148, Predicate);
        v571 = v151;
        sub_100271FF8(v154);
        v155 = v571;
        v156 = [v136 objectID];
        v157 = [v156 uuid];

        v158 = v534;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v123 = v560;
        v159 = v563;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v571 = v159;
        sub_1002C707C(v155, v158, isUniquelyReferenced_nonNull_native);
        v161 = v158;
        v135 = v535;
        (*v545)(v161, v564);

        v563 = v571;
        v162 = *(v149 + 8);
        v141 = v567;
        v162(v536, Predicate);
        v142 = v139;
        if (v139 == v141)
        {
          goto LABEL_35;
        }
      }

      else
      {

        ++v142;
        if (v139 == v141)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    ;
  }

LABEL_35:

  v163 = v541;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.location.getter();
  v164 = sub_100240F04(v163, v135);
  v165 = *(v556 + 8);
  v166 = PredicateType;
  v165(v163, PredicateType);
  v167 = v539;
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_100791300;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.lists.getter();

  v556 = sub_1007274FC(v168, v135);
  swift_setDeallocating();
  v165(v167 + v168, v166);
  swift_deallocClassInstance();
  if ((v164 & 1) == 0)
  {
    sub_100378434(&v571, 0x6564692E7473696CLL, 0xEF7265696669746ELL);

    if (v563[2])
    {
      sub_100378434(&v571, 0xD000000000000012, 0x80000001007F1FC0);
    }

    v196 = sub_100043AA8();
    v170 = sub_1005362CC(v543, v196);

    [v170 setReturnsDistinctResults:0];

    v197 = sub_100530204(v530);
    sub_10003450C(v197);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v170 setPropertiesToFetch:isa];

    sub_100530204(v199);
    v200 = Array._bridgeToObjectiveC()().super.isa;

    [v170 setRelationshipKeyPathsForPrefetching:v200];

    if (qword_100936260 != -1)
    {
      swift_once();
    }

    v201 = type metadata accessor for Logger();
    sub_100006654(v201, qword_100948A78);

    v202 = Logger.logObject.getter();
    v203 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v571 = v205;
      *v204 = 136315138;
      sub_100030E90(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
      v206 = Set.description.getter();
      v208 = sub_10000668C(v206, v207, &v571);

      *(v204 + 4) = v208;
      _os_log_impl(&_mh_execute_header, v202, v203, "Computing reminders count in every list by fetching reminders as dictionaries {postFetchPredicateTypes: %s}", v204, 0xCu);
      sub_10000607C(v205);
    }

    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v209 = v537;
    v210 = NSManagedObjectContext.fetch<A>(_:)();
    if (!v209)
    {
      v185 = v210;
      v503 = 0;
      if (v210 >> 62)
      {
        v212 = _CocoaArrayWrapper.endIndex.getter();
        if (!v212)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v212 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v212)
        {
          goto LABEL_81;
        }
      }

      v567 = v170;
      v571 = _swiftEmptyArrayStorage;
      sub_100253360(0, v212 & ~(v212 >> 63), 0);
      if (v212 < 0)
      {
        goto LABEL_298;
      }

      v213 = 0;
      v569 = v571;
      do
      {
        if ((v185 & 0xC000000000000001) != 0)
        {
          v214 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v214 = *(v185 + 8 * v213 + 32);
        }

        v215 = v214;
        v216 = v556;

        v217 = v554;
        REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(dictionary:forEvaluatingAgainst:)(v215, v216, v554);
        v218 = v569;
        v571 = v569;
        v220 = v569[2];
        v219 = v569[3];
        if (v220 >= v219 >> 1)
        {
          sub_100253360(v219 > 1, v220 + 1, 1);
          v218 = v571;
        }

        ++v213;
        *(v218 + 16) = v220 + 1;
        v221 = (*(v565 + 80) + 32) & ~*(v565 + 80);
        v569 = v218;
        (v565[4])(v218 + v221 + v565[9] * v220, v217, v566);
      }

      while (v212 != v213);
LABEL_72:

      goto LABEL_82;
    }

LABEL_61:

    return sub_100025434(v540, _s10PredicatesOMa);
  }

  sub_100378434(&v571, 1953720684, 0xE400000000000000);

  if (v563[2])
  {
    sub_100378434(&v571, 0x746E756F636361, 0xE700000000000000);
  }

  v169 = sub_100043AA8();
  v170 = sub_100050654(0, 0, v543, v169);

  [v170 setReturnsDistinctResults:0];

  v172 = sub_100530204(v171);
  sub_10003450C(v172);

  v173 = Array._bridgeToObjectiveC()().super.isa;

  [v170 setPropertiesToFetch:v173];

  sub_100530204(v529);
  v174 = Array._bridgeToObjectiveC()().super.isa;

  [v170 setRelationshipKeyPathsForPrefetching:v174];

  if (qword_100936260 != -1)
  {
    swift_once();
  }

  v175 = type metadata accessor for Logger();
  sub_100006654(v175, qword_100948A78);

  v176 = Logger.logObject.getter();
  v177 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v571 = v179;
    *v178 = 136315138;
    sub_100030E90(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
    v180 = Set.description.getter();
    v182 = sub_10000668C(v180, v181, &v571);

    *(v178 + 4) = v182;
    _os_log_impl(&_mh_execute_header, v176, v177, "Computing reminders count in every list by fetching reminders as an array of REMCDReminder {postFetchPredicateTypes: %s}", v178, 0xCu);
    sub_10000607C(v179);
  }

  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v183 = v537;
  v184 = NSManagedObjectContext.fetch<A>(_:)();
  if (v183)
  {
    goto LABEL_61;
  }

  v185 = v184;
  v503 = 0;
  if (v184 >> 62)
  {
    v186 = _CocoaArrayWrapper.endIndex.getter();
    if (!v186)
    {
      goto LABEL_81;
    }

LABEL_45:
    v567 = v170;
    v571 = _swiftEmptyArrayStorage;
    sub_100253360(0, v186 & ~(v186 >> 63), 0);
    if (v186 < 0)
    {
      goto LABEL_297;
    }

    v187 = 0;
    v569 = v571;
    do
    {
      if ((v185 & 0xC000000000000001) != 0)
      {
        v188 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v188 = *(v185 + 8 * v187 + 32);
      }

      v189 = v188;
      v190 = v556;

      v191 = v555;
      sub_10059062C(v189, v190, v555);
      v192 = v569;
      v571 = v569;
      v194 = v569[2];
      v193 = v569[3];
      if (v194 >= v193 >> 1)
      {
        sub_100253360(v193 > 1, v194 + 1, 1);
        v192 = v571;
      }

      ++v187;
      *(v192 + 16) = v194 + 1;
      v195 = (*(v565 + 80) + 32) & ~*(v565 + 80);
      v569 = v192;
      (v565[4])(v192 + v195 + v565[9] * v194, v191, v566);
    }

    while (v186 != v187);
    goto LABEL_72;
  }

  v186 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v186)
  {
    goto LABEL_45;
  }

LABEL_81:

  v569 = _swiftEmptyArrayStorage;
LABEL_82:
  Date.init()();
  v223 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v515 + 7))(v489, 1, 1, v517);
  (*(v511 + 56))(v490, 1, 1, v521);
  v466 = 0;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v224 = v495;
  v225 = v494;
  v495[13](v494, enum case for Calendar.MatchingPolicy.nextTime(_:), v522);
  v226 = v497;
  v227 = v496;
  (*(v497 + 104))(v496, enum case for Calendar.RepeatedTimePolicy.first(_:), v533);
  v228 = v508;
  v229 = v498;
  v230 = v510;
  (*(v508 + 104))(v498, enum case for Calendar.SearchDirection.forward(_:), v510);
  v231 = v491;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  v232 = v231;
  (*(v228 + 8))(v229, v230);
  (*(v226 + 8))(v227, v533);
  (v224[1])(v225, v522);
  (*(v492 + 8))(v516, v493);
  (*(v515 + 1))(v548, v517);
  v233 = v532;
  v235 = v532 + 6;
  v234 = v532[6];
  v236 = v542;
  v237 = v234(v232, 1, v542);
  v515 = v234;
  if (v237 == 1)
  {
    (v233[2])(v523, v531, v236);
    if (v234(v232, 1, v236) != 1)
    {
      sub_1000050A4(v232, &unk_100938850, qword_100795AE0);
    }
  }

  else
  {
    (v233[4])(v523, v232, v236);
  }

  v489 = objc_opt_self();
  v238 = [v489 siriFoundInAppsListID];
  v239 = [v238 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v240 = objc_opt_self();
  v241 = [v240 daemonUserDefaults];
  v242 = [v241 treatRemindersAsNotOverdue];

  v243 = [v240 daemonUserDefaults];
  LODWORD(v496) = [v243 showRemindersAsOverdue];

  v245 = v569;
  v246 = v569[2];
  v136 = v566;
  if (v246)
  {
    v510 = v235;
    v555 = 0;
    v522 = 0;
    v538 = 0;
    v470 = 0;
    v498 = 0;
    v516 = 0;
    v537 = 0;
    v469 = 0;
    v468 = 0;
    v497 = 0;
    v517 = 0;
    v490 = 0;
    v491 = 0;
    v508 = 0;
    v551 = 0;
    v139 = 0;
    LODWORD(v492) = v242 ^ 1;
    v550 = v569 + ((*(v565 + 80) + 32) & ~*(v565 + 80));
    v560 = (v565 + 2);
    Predicate = (v558 + 6);
    v536 = (v558 + 4);
    v495 = (v233 + 4);
    v494 = (v233 + 1);
    v247 = (v511 + 8);
    v567 = (v558 + 2);
    v554 = (v563 + 8);
    v185 = (v565 + 1);
    *&v244 = 136446210;
    v511 = v244;
    PredicateType = &_swiftEmptyDictionarySingleton;
    v539 = &_swiftEmptyDictionarySingleton;
    v543 = &_swiftEmptyDictionarySingleton;
    v541 = &_swiftEmptyDictionarySingleton;
    v248 = v564;
    v249 = v546;
    v250 = v561;
    v533 = v246;
    v493 = v247;
    v548 = (v565 + 1);
    while (1)
    {
      if (v139 >= v245[2])
      {
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
        goto LABEL_272;
      }

      v251 = v565[2];
      v251(v568, &v550[v565[9] * v139], v136);
      REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.listIdentifier.getter();
      if ((*Predicate)(v249, 1, v248) == 1)
      {
        sub_1000050A4(v249, &unk_100939D90, "8\n\r");
        if (qword_100936260 != -1)
        {
          swift_once();
        }

        v252 = type metadata accessor for Logger();
        sub_100006654(v252, qword_100948A78);
        v251(v250, v568, v136);
        v253 = Logger.logObject.getter();
        v254 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v253, v254))
        {
          v255 = swift_slowAlloc();
          v256 = swift_slowAlloc();
          v571 = v256;
          *v255 = v511;
          REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.identifier.getter();
          v257 = v561;
          v258 = String.init<A>(describing:)();
          v547 = v139;
          v259 = v136;
          v261 = v260;
          v262 = v548;
          (*v548)(v257, v259);
          v263 = sub_10000668C(v258, v261, &v571);
          v136 = v259;
          v139 = v547;

          *(v255 + 4) = v263;
          _os_log_impl(&_mh_execute_header, v253, v254, "Reminder missing list identifier. Skipping {reminder.identifier: %{public}s}", v255, 0xCu);
          sub_10000607C(v256);
          v246 = v533;

          v248 = v564;

          v185 = v262;
          v250 = v257;
        }

        else
        {

          v185 = v548;
          (*v548)(v250, v136);
        }

        v249 = v546;
        goto LABEL_90;
      }

      v185 = v557;
      (*v536)(v557, v249, v248);
      sub_100030E90(&qword_10093A3E0, &type metadata accessor for UUID);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      (*v545)(v185, v248);
      if (__OFADD__(v538, 1))
      {
        goto LABEL_278;
      }

      ++v538;
LABEL_184:
      v185 = v548;
LABEL_90:
      ++v139;
      (*v185)(v568, v136);
      v245 = v569;
      if (v139 == v246)
      {

        v233 = v532;
        v139 = v541;
        goto LABEL_187;
      }
    }

    v537 = (v551 + 1);
    if (__OFADD__(v551, 1))
    {
      goto LABEL_277;
    }

    v264 = v525;
    REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.displayDateDate.getter();
    v185 = v542;
    v265 = v515(v264, 1, v542);
    v547 = v139;
    if (v265 == 1)
    {
      sub_1000050A4(v264, &unk_100938850, qword_100795AE0);
      LODWORD(v551) = 0;
      v266 = v541;
LABEL_119:
      v281 = REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.flagged.getter();
      if (v281 != 2 && (v281 & 1) != 0)
      {
        if (__OFADD__(v490, 1))
        {
          goto LABEL_289;
        }

        v468 = v490 + 1;
        if (v551)
        {
          v280 = __OFADD__(v469++, 1);
          if (v280)
          {
            goto LABEL_296;
          }
        }

        ++v490;
      }

      sub_10003E114(v555);
      v282 = swift_isUniquelyReferenced_nonNull_native();
      v571 = v266;
      v185 = sub_100363F20(v557);
      v284 = *(v266 + 16);
      v285 = (v283 & 1) == 0;
      v286 = v284 + v285;
      if (__OFADD__(v284, v285))
      {
        goto LABEL_279;
      }

      v287 = v283;
      if (*(v266 + 24) >= v286)
      {
        v291 = v562;
        if ((v282 & 1) == 0)
        {
          sub_1003733B8();
          v291 = v562;
        }

        v288 = v557;
        v292 = v571;
        if (v287)
        {
          goto LABEL_134;
        }
      }

      else
      {
        sub_10036A508(v286, v282);
        v288 = v557;
        v289 = sub_100363F20(v557);
        if ((v287 & 1) != (v290 & 1))
        {
          goto LABEL_301;
        }

        v185 = v289;
        v291 = v562;
        v292 = v571;
        if (v287)
        {
LABEL_134:
          v294 = *(v292 + 7);
          v295 = *(v294 + 8 * v185);
          v280 = __OFADD__(v295, 1);
          v296 = v295 + 1;
          if (v280)
          {
            goto LABEL_280;
          }

          *(v294 + 8 * v185) = v296;
          v541 = v292;
          if (v551)
          {
            sub_10003E114(v522);
            v297 = v539;
            v298 = swift_isUniquelyReferenced_nonNull_native();
            v299 = v288;
            v300 = v298;
            v571 = v297;
            v185 = sub_100363F20(v299);
            v302 = v297[2];
            v303 = (v301 & 1) == 0;
            v304 = v302 + v303;
            if (__OFADD__(v302, v303))
            {
              goto LABEL_283;
            }

            v305 = v301;
            if (v297[3] >= v304)
            {
              v291 = v562;
              if ((v300 & 1) == 0)
              {
                sub_1003733B8();
                v291 = v562;
              }

              v288 = v557;
            }

            else
            {
              sub_10036A508(v304, v300);
              v288 = v557;
              v306 = sub_100363F20(v557);
              if ((v305 & 1) != (v307 & 1))
              {
                goto LABEL_301;
              }

              v185 = v306;
              v291 = v562;
            }

            v309 = v571;
            v539 = v571;
            if ((v305 & 1) == 0)
            {
              v310 = v534;
              (*v567)(v534, v288, v564);
              v291 = v562;
              sub_1002CB194(v185, v310, 0, v539);
              v309 = v539;
            }

            v311 = v309[7];
            v312 = *(v311 + 8 * v185);
            v280 = __OFADD__(v312, 1);
            v313 = v312 + 1;
            if (v280)
            {
              goto LABEL_284;
            }

            *(v311 + 8 * v185) = v313;
            if (__OFADD__(v516, 1))
            {
              goto LABEL_285;
            }

            v308 = v136;
            ++v516;
            v522 = sub_1004A5B14;
          }

          else
          {
            v308 = v136;
          }

          v314 = 1 << *(v563 + 32);
          if (v314 < 64)
          {
            v315 = ~(-1 << v314);
          }

          else
          {
            v315 = -1;
          }

          v139 = v315 & v563[8];
          v288 = ((v314 + 63) >> 6);

          v136 = 0;
          v248 = v564;
LABEL_155:
          if (v139)
          {
            goto LABEL_160;
          }

          while (1)
          {
            v317 = v136 + 1;
            if (__OFADD__(v136, 1))
            {
              __break(1u);
              goto LABEL_194;
            }

            if (v317 >= v288)
            {
              break;
            }

            v139 = *&v554[8 * v317];
            ++v136;
            if (v139)
            {
              v136 = v317;
LABEL_160:
              v318 = __clz(__rbit64(v139)) | (v136 << 6);
              v319 = v563;
              v320 = v558[9];
              v321 = v563[6] + v320 * v318;
              v555 = v558[2];
              (v555)(v291, v321, v248);
              v322 = *(v319[7] + 8 * v318);
              *(v291 + *(v552 + 48)) = v322;
              v571 = v322;

              v185 = sub_1000F5104(&qword_100949370, &unk_100797770);
              sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770);
              if ((Sequence<>.evaluate(with:)() & 1) == 0)
              {
                v250 = v561;
                goto LABEL_154;
              }

              v323 = PredicateType;
              v324 = swift_isUniquelyReferenced_nonNull_native();
              v571 = v323;
              v325 = sub_100363F20(v291);
              v327 = *(v323 + 16);
              v328 = (v326 & 1) == 0;
              v280 = __OFADD__(v327, v328);
              v329 = v327 + v328;
              if (v280)
              {
                goto LABEL_270;
              }

              v185 = v326;
              if (*(v323 + 24) >= v329)
              {
                v250 = v561;
                if ((v324 & 1) == 0)
                {
                  v352 = v325;
                  sub_1003733B8();
                  v325 = v352;
                }
              }

              else
              {
                sub_10036A508(v329, v324);
                v325 = sub_100363F20(v562);
                v250 = v561;
                if ((v185 & 1) != (v330 & 1))
                {
                  goto LABEL_301;
                }
              }

              v248 = v564;
              v291 = v562;
              v331 = v571;
              if ((v185 & 1) == 0)
              {
                v332 = v571;
                *(v571 + 8 * (v325 >> 6) + 64) |= 1 << v325;
                v185 = v325;
                (v555)(*(v331 + 48) + v325 * v320, v291, v248);
                *(*(v332 + 56) + 8 * v185) = 0;
                v333 = *(v332 + 16);
                v280 = __OFADD__(v333, 1);
                v334 = v333 + 1;
                if (v280)
                {
                  goto LABEL_274;
                }

                v331 = v332;
                v325 = v185;
                *(v332 + 16) = v334;
              }

              PredicateType = v331;
              v335 = *(v331 + 56);
              v336 = *(v335 + 8 * v325);
              v280 = __OFADD__(v336, 1);
              v337 = v336 + 1;
              if (v280)
              {
                goto LABEL_271;
              }

              *(v335 + 8 * v325) = v337;
              if (v551)
              {
                v338 = v543;
                v339 = swift_isUniquelyReferenced_nonNull_native();
                v571 = v338;
                v340 = sub_100363F20(v291);
                v342 = *(v338 + 2);
                v343 = (v341 & 1) == 0;
                v280 = __OFADD__(v342, v343);
                v344 = v342 + v343;
                if (v280)
                {
                  goto LABEL_275;
                }

                v185 = v341;
                if (*(v338 + 3) >= v344)
                {
                  if ((v339 & 1) == 0)
                  {
                    v353 = v340;
                    sub_1003733B8();
                    v340 = v353;
                  }
                }

                else
                {
                  sub_10036A508(v344, v339);
                  v340 = sub_100363F20(v562);
                  if ((v185 & 1) != (v345 & 1))
                  {
LABEL_301:
                    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                    __break(1u);
LABEL_302:
                    type metadata accessor for REMObjectID_Codable();
                    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                    __break(1u);
LABEL_303:
                    v465 = *(v378 - 32);

                    __break(1u);
                    return result;
                  }
                }

                v248 = v564;
                v291 = v562;
                v346 = v571;
                if ((v185 & 1) == 0)
                {
                  *(v571 + 8 * (v340 >> 6) + 64) |= 1 << v340;
                  v185 = v340;
                  (v555)(*(v346 + 6) + v340 * v320, v291, v248);
                  *(*(v346 + 7) + 8 * v185) = 0;
                  v347 = *(v346 + 2);
                  v280 = __OFADD__(v347, 1);
                  v348 = v347 + 1;
                  if (v280)
                  {
                    goto LABEL_281;
                  }

                  v340 = v185;
                  *(v346 + 2) = v348;
                }

                v543 = v346;
                v349 = *(v346 + 7);
                v350 = *(v349 + 8 * v340);
                v280 = __OFADD__(v350, 1);
                v351 = v350 + 1;
                if (v280)
                {
                  goto LABEL_276;
                }

                *(v349 + 8 * v340) = v351;
              }

LABEL_154:
              v139 &= v139 - 1;
              v316 = sub_1000050A4(v291, &qword_100948BE8, &qword_1007ACC28);
              v308 = v566;
              goto LABEL_155;
            }
          }

          (*v545)(v557, v248);
          v555 = sub_1004A5B14;
          v551 = v537;
          v249 = v546;
          v136 = v308;
          v246 = v533;
          v139 = v547;
          goto LABEL_184;
        }
      }

      v293 = v534;
      (*v567)(v534, v288, v564);
      v291 = v562;
      sub_1002CB194(v185, v293, 0, v292);
      goto LABEL_134;
    }

    (*v495)(v524, v264, v185);
    v517 = v508 + 1;
    if (__OFADD__(v508, 1))
    {
      goto LABEL_282;
    }

    LODWORD(v551) = static Date.< infix(_:_:)();
    v267.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v268.super.isa = Date._bridgeToObjectiveC()().super.isa;
    LODWORD(v508) = REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.displayDateIsAllDay.getter();
    v269 = REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.displayDateSecondsFromGMT.getter();
    if (v270)
    {
      v271 = v512;
      static TimeZone.current.getter();
      v272 = v499;
      Date.init()();
      v273 = TimeZone.secondsFromGMT(for:)();
      v185 = v494;
      v274 = v542;
      (*v494)(v272, v542);
      v275 = v493;
      v276 = v521;
      (*v493)(v271, v521);
    }

    else
    {
      v273 = v269;
      v274 = v542;
      v276 = v521;
      v271 = v512;
      v185 = v494;
      v275 = v493;
    }

    static TimeZone.current.getter();
    v139 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*v275)(v271, v276);
    v277 = objc_opt_self();
    LOBYTE(v466) = v492;
    v278 = [v277 isDate:v267.super.isa overdueAtReferenceDate:v268.super.isa allDay:v508 & 1 floatingDateSecondsFromGMT:v273 floatingDateTargetTimeZone:v139 showAllDayRemindersAsOverdue:v492 & v496 showTimedRemindersAsOverdue:v466];

    (*v185)(v524, v274);
    if (v551)
    {
      v279 = v491 + 1;
      v136 = v566;
      v250 = v561;
      v266 = v541;
      if (__OFADD__(v491, 1))
      {
        goto LABEL_288;
      }

      if (v278)
      {
        v280 = __OFADD__(v470++, 1);
        if (v280)
        {
          goto LABEL_295;
        }

        ++v491;
        goto LABEL_114;
      }

      LODWORD(v551) = 0;
      v498 = ++v491;
    }

    else
    {
      v136 = v566;
      v250 = v561;
      v266 = v541;
      if (v278)
      {
        v279 = v498;
LABEL_114:
        if (__OFADD__(v497, 1))
        {
          goto LABEL_290;
        }

        ++v497;
        v498 = v279;
        LODWORD(v551) = 1;
        goto LABEL_118;
      }

      LODWORD(v551) = 0;
    }

LABEL_118:
    v508 = v517;
    goto LABEL_119;
  }

  v555 = 0;
  v522 = 0;
  v538 = 0;
  v470 = 0;
  v498 = 0;
  v516 = 0;
  v537 = 0;
  v469 = 0;
  v468 = 0;
  v497 = 0;
  v517 = 0;
  v139 = &_swiftEmptyDictionarySingleton;
  v543 = &_swiftEmptyDictionarySingleton;
  PredicateType = &_swiftEmptyDictionarySingleton;
  v539 = &_swiftEmptyDictionarySingleton;
  v248 = v564;
LABEL_187:

  v354 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AssignedInvocation());
  v563 = [v354 initWithFetchResultTokenToDiffAgainst:v485];
  v355 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v356 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v357 = v477;
  (*(*(v356 - 8) + 104))(v477, v355, v356);
  swift_storeEnumTagMultiPayload();
  sub_100539164(v478);
  sub_100025434(v357, _s9UtilitiesO12SortingStyleOMa);
  (*(v479 + 104))(v480, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v481);
  (*(v483 + 104))(v482, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v484);
  v358 = v504;
  REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)();
  v359 = v503;
  v360 = sub_100753DE0(v559);
  if (v359)
  {
    v362 = v555;

    (*(v486 + 8))(v358, v487);
    (*v545)(v544, v248);
    v363 = v233[1];
    v364 = v542;
    v363(v523, v542);
    v363(v531, v364);

    sub_100025434(v540, _s10PredicatesOMa);

    sub_10003E114(v362);
    return sub_10003E114(v522);
  }

  else
  {
    sub_100754818(v360);
    v185 = v361;
    v136 = 0;

    if (qword_100936848 != -1)
    {
      goto LABEL_299;
    }

    while (1)
    {
      v365 = type metadata accessor for Logger();
      v366 = sub_100006654(v365, qword_100951B08);
      v571 = v185;
      __chkstk_darwin(v366);
      sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280);
      v316 = Sequence.map<A>(skippingError:_:)();
      v248 = v136;
      if (v136)
      {

        v248 = 0;
        v367 = _swiftEmptyArrayStorage;
      }

      else
      {
LABEL_194:
        v367 = v316;
      }

      v571 = v367;
      sub_1000F5104(&qword_10093CB80, &qword_1007A7680);
      sub_10000CB48(&qword_10093CB88, &qword_10093CB80, &qword_1007A7680);
      sub_1001EB528();
      v368 = Sequence<>.unique()();
      (*(v486 + 8))(v504, v487);

      v369 = *(v368 + 16);

      __chkstk_darwin(v370);
      sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
      NSManagedObjectContext.rem_performAndWait<A>(_:)();
      v503 = v248;
      if (v248)
      {
        break;
      }

      v185 = v571;
      v136 = v532;
      v556 = v369;
      if (v571 >> 62)
      {
        v373 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v373 = *((v571 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v288 = v509;
      if (v373)
      {
        v374 = 0;
        v571 = &_swiftEmptyDictionarySingleton;
        while (1)
        {
          if ((v185 & 0xC000000000000001) != 0)
          {
            v375 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v374 >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_292;
            }

            v375 = *(v185 + 8 * v374 + 32);
          }

          v288 = v375;
          v376 = v374 + 1;
          if (__OFADD__(v374, 1))
          {
            break;
          }

          v570[0] = v375;
          v377 = v503;
          sub_10049F2D8(&v571, v570, v488);
          v378 = &v533;
          v503 = v377;
          if (v377)
          {
            goto LABEL_303;
          }

          ++v374;
          v288 = v509;
          if (v376 == v373)
          {

            v554 = v571;
            v136 = v532;
            goto LABEL_210;
          }
        }
      }

      else
      {

        v554 = &_swiftEmptyDictionarySingleton;
LABEL_210:
        v379 = 0;
        v380 = *(v139 + 64);
        v561 = (v139 + 64);
        v381 = 1 << *(v139 + 32);
        v382 = -1;
        if (v381 < 64)
        {
          v382 = ~(-1 << v381);
        }

        v185 = v382 & v380;
        v560 = (v381 + 63) >> 6;
        v565 = v558 + 2;
        v569 = (v558 + 4);
        v568 = (v518 + 32);
        v383 = &_swiftEmptyDictionarySingleton;
        v562 = v518 + 40;
        v541 = v139;
        while (v185)
        {
          v566 = v383;
          v384 = v379;
LABEL_224:
          v386 = __clz(__rbit64(v185));
          v185 &= v185 - 1;
          v387 = v386 | (v384 << 6);
          v388 = v558;
          v389 = *(v139 + 48) + v558[9] * v387;
          v390 = v534;
          v391 = v139;
          v392 = v564;
          (v558[2])(v534, v389, v564);
          v393 = *(*(v391 + 56) + 8 * v387);
          v394 = sub_1000F5104(&qword_100948C08, &qword_1007ACC58);
          v395 = *(v394 + 48);
          v396 = v388[4];
          v397 = v507;
          v396(v507, v390, v392);
          *&v397[v395] = v393;
          (*(*(v394 - 8) + 56))(v397, 0, 1, v394);
          v567 = v384;
          v398 = v397;
          v136 = v532;
          v288 = v509;
          v383 = v566;
LABEL_225:
          v399 = v506;
          sub_100031B58(v398, v506, &qword_100948BE0, &qword_1007ACC20);
          v400 = sub_1000F5104(&qword_100948C08, &qword_1007ACC58);
          v401 = *(v400 - 8);
          v139 = *(v401 + 48);
          if ((v139)(v399, 1, v400) == 1)
          {

            v424 = PredicateType[8];
            v559 = PredicateType + 8;
            v425 = 1 << *(PredicateType + 32);
            v426 = -1;
            if (v425 < 64)
            {
              v426 = ~(-1 << v425);
            }

            v185 = v426 & v424;
            v557 = ((v425 + 63) >> 6);
            v561 = (v401 + 56);

            v427 = 0;
            v428 = v513;
            v560 = v400;
            v566 = v139;
            while (v185)
            {
              v429 = v427;
LABEL_252:
              v431 = __clz(__rbit64(v185));
              v185 &= v185 - 1;
              v432 = v431 | (v429 << 6);
              v433 = PredicateType;
              v434 = v558;
              v435 = v534;
              v436 = v564;
              (v558[2])(v534, PredicateType[6] + v558[9] * v432, v564);
              v437 = *(v433[7] + 8 * v432);
              v438 = *(v560 + 48);
              v439 = v434[4];
              v440 = v502;
              v441 = v435;
              v400 = v560;
              v439(v502, v441, v436);
              v442 = 0;
              *(v440 + v438) = v437;
              v567 = v429;
              v443 = v532;
              v428 = v513;
              v139 = v566;
LABEL_253:
              (*v561)(v440, v442, 1, v400);
              v444 = v501;
              sub_100031B58(v440, v501, &qword_100948BE0, &qword_1007ACC20);
              if ((v139)(v444, 1, v400) == 1)
              {

                REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
                REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
                REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
                REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
                REMAccountsListDataView.ReminderCounts.init(scheduled:flagged:all:today:siriFoundInAppsRemindersCount:assignedToMeRemindersCount:recentlyDeletedRemindersCountByAccountObjectID:byObjectID:)();

                (*v545)(v544, v564);
                v463 = *(v443 + 1);
                v464 = v542;
                v463(v523, v542);
                v463(v531, v464);
                sub_100025434(v540, _s10PredicatesOMa);

                goto LABEL_268;
              }

              v136 = *(v444 + *(v400 + 48));
              (*v569)(v428, v444, v564);
              v445 = objc_opt_self();
              v446 = UUID._bridgeToObjectiveC()().super.isa;
              v447 = [v445 objectIDWithUUID:v446];

              v288 = REMObjectID.codable.getter();
              v448 = v543;
              if (*(v543 + 2))
              {
                v449 = sub_100363F20(v428);
                if (v450)
                {
                  v451 = *(*(v448 + 7) + 8 * v449);
                }
              }

              v452 = v500;
              REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
              v453 = *v568;
              (*v568)(v514, v452, v528);
              v139 = swift_isUniquelyReferenced_nonNull_native();
              v571 = v383;
              v454 = sub_100364044(v288);
              v456 = *(v383 + 2);
              v457 = (v455 & 1) == 0;
              v280 = __OFADD__(v456, v457);
              v458 = v456 + v457;
              if (v280)
              {
                goto LABEL_287;
              }

              v136 = v455;
              if (*(v383 + 3) >= v458)
              {
                if ((v139 & 1) == 0)
                {
                  v462 = v454;
                  sub_100373390();
                  v454 = v462;
                }
              }

              else
              {
                sub_10036A4E0(v458, v139);
                v454 = sub_100364044(v288);
                if ((v136 & 1) != (v459 & 1))
                {
                  goto LABEL_302;
                }
              }

              v139 = v566;
              v383 = v571;
              if (v136)
              {
                (*(v518 + 40))(*(v571 + 56) + *(v518 + 72) * v454, v514, v528);

                v428 = v513;
                (*v545)(v513, v564);
              }

              else
              {
                *(v571 + 8 * (v454 >> 6) + 64) |= 1 << v454;
                *(*(v383 + 6) + 8 * v454) = v288;
                v453(*(v383 + 7) + *(v518 + 72) * v454, v514, v528);
                v428 = v513;
                (*v545)(v513, v564);
                v460 = *(v383 + 2);
                v280 = __OFADD__(v460, 1);
                v461 = v460 + 1;
                if (v280)
                {
                  goto LABEL_294;
                }

                *(v383 + 2) = v461;
              }

              v427 = v567;
              v136 = v532;
            }

            if (v557 <= (v427 + 1))
            {
              v430 = v427 + 1;
            }

            else
            {
              v430 = v557;
            }

            while (1)
            {
              v429 = v427 + 1;
              if (__OFADD__(v427, 1))
              {
                goto LABEL_273;
              }

              if (v429 >= v557)
              {
                v567 = (v430 - 1);
                v443 = v136;
                v185 = 0;
                v442 = 1;
                v440 = v502;
                goto LABEL_253;
              }

              v185 = v559[v429];
              v427 = (v427 + 1);
              if (v185)
              {
                goto LABEL_252;
              }
            }
          }

          v136 = *(v399 + *(v400 + 48));
          (*v569)(v288, v399, v564);
          v402 = UUID._bridgeToObjectiveC()().super.isa;
          v403 = [v489 objectIDWithUUID:v402];

          v404 = REMObjectID.codable.getter();
          v405 = v539;
          v139 = v541;
          if (v539[2])
          {
            v406 = sub_100363F20(v288);
            if (v407)
            {
              v408 = *(v405[7] + 8 * v406);
            }
          }

          v409 = v505;
          REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
          v410 = *v568;
          (*v568)(v519, v409, v528);
          v411 = swift_isUniquelyReferenced_nonNull_native();
          v571 = v383;
          v412 = sub_100364044(v404);
          v414 = *(v383 + 2);
          v415 = (v413 & 1) == 0;
          v280 = __OFADD__(v414, v415);
          v416 = v414 + v415;
          if (v280)
          {
            goto LABEL_286;
          }

          v136 = v413;
          if (*(v383 + 3) >= v416)
          {
            if ((v411 & 1) == 0)
            {
              v423 = v412;
              sub_100373390();
              v412 = v423;
            }
          }

          else
          {
            sub_10036A4E0(v416, v411);
            v412 = sub_100364044(v404);
            if ((v136 & 1) != (v417 & 1))
            {
              goto LABEL_302;
            }
          }

          v418 = v564;
          v383 = v571;
          if (v136)
          {
            (*(v518 + 40))(*(v571 + 56) + *(v518 + 72) * v412, v519, v528);

            (*v545)(v288, v418);
          }

          else
          {
            *(v571 + 8 * (v412 >> 6) + 64) |= 1 << v412;
            *(*(v383 + 6) + 8 * v412) = v404;
            v410(*(v383 + 7) + *(v518 + 72) * v412, v519, v528);
            (*v545)(v288, v418);
            v419 = *(v383 + 2);
            v280 = __OFADD__(v419, 1);
            v420 = v419 + 1;
            if (v280)
            {
              goto LABEL_293;
            }

            *(v383 + 2) = v420;
          }

          v379 = v567;
          v136 = v532;
        }

        if (v560 <= v379 + 1)
        {
          v385 = v379 + 1;
        }

        else
        {
          v385 = v560;
        }

        while (1)
        {
          v384 = v379 + 1;
          if (__OFADD__(v379, 1))
          {
            break;
          }

          if (v384 >= v560)
          {
            v567 = (v385 - 1);
            v421 = sub_1000F5104(&qword_100948C08, &qword_1007ACC58);
            v422 = v507;
            (*(*(v421 - 8) + 56))(v507, 1, 1, v421);
            v398 = v422;
            v185 = 0;
            goto LABEL_225;
          }

          v185 = v561[v384];
          v379 = (v379 + 1);
          if (v185)
          {
            v566 = v383;
            goto LABEL_224;
          }
        }

LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
      }

      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      swift_once();
    }

    (*v545)(v544, v564);
    v371 = v532[1];
    v372 = v542;
    v371(v523, v542);
    v371(v531, v372);

    sub_100025434(v540, _s10PredicatesOMa);

LABEL_268:

    sub_10003E114(v555);
    return sub_10003E114(v522);
  }
}

uint64_t sub_10049F1E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v6._object = 0x80000001007EC120;
    v6._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v6);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10049F2D8(uint64_t *a1, void **a2, char *a3)
{
  v61 = a3;
  v54 = a1;
  v4 = type metadata accessor for UUID();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  __chkstk_darwin(v4);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v60 = &v51 - v9;
  v10 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F5104(&qword_100948C10, &qword_1007ACC68);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  v24 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v58 = *(v24 - 8);
  v59 = v24;
  v25 = *(v58 + 64);
  __chkstk_darwin(v24);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a2;
  (*(v15 + 104))(v18, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v14);
  v29 = v62;
  static REMRemindersListDataView.fetchRecentlyDeleted(store:accountID:deletedDaysFromNow:countCompleted:remindersPrefetch:diffingAgainst:)();
  v62 = v29;
  if (v29)
  {
    (*(v15 + 8))(v18, v14);
    if (qword_100936260 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_100948A78);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v63 = v34;
      *v33 = 136315138;
      swift_getErrorValue();
      v35 = Error.rem_errorDescription.getter();
      v37 = sub_10000668C(v35, v36, &v63);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to fetch recently deleted reminders count {error: %s}", v33, 0xCu);
      sub_10000607C(v34);
    }

    else
    {
    }
  }

  else
  {
    v61 = v27;
    (*(v15 + 8))(v18, v14);
    REMRemindersListDataView.Result.model.getter();
    (*(v20 + 8))(v23, v19);
    v38 = v60;
    REMRemindersListDataView.FlatModel.remindersCount.getter();
    (*(v56 + 8))(v13, v57);
    v40 = v58;
    v39 = v59;
    if ((*(v58 + 48))(v38, 1, v59) == 1)
    {
      sub_1000050A4(v38, &qword_100938A70, &qword_1007ACC60);
    }

    else
    {
      v41 = v61;
      (*(v40 + 32))(v61, v38, v39);
      v42 = [v28 uuid];
      v43 = v55;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = REMRemindersListDataView.CountByCompleted.completed.getter();
      v45 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        __break(1u);
      }

      else
      {
        v48 = v54;
        v49 = *v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *v48;
        sub_1002C7FC0(v47, v43, isUniquelyReferenced_nonNull_native);
        (*(v52 + 8))(v43, v53);
        (*(v40 + 8))(v41, v39);
        *v48 = v63;
      }
    }
  }
}

id sub_10049F918(unint64_t a1)
{
  result = [v1 updatedProperties];
  if (result)
  {
    v4 = result;
    sub_1000060C8(0, &qword_100939678, NSPropertyDescription_ptr);
    sub_1004A54EC();
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10049A25C(v5);
    v7 = v6;

    if (a1 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_17:
        v19 = sub_1001A5660(_swiftEmptyArrayStorage);

        v20 = sub_1004A4820(v7, v19);

        v21 = *(v20 + 16);

        return (v21 != 0);
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v9 = 0;
      v25 = a1 & 0xC000000000000001;
      v23 = v7;
      v24 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v25)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v24 + 16))
          {
            goto LABEL_20;
          }

          v10 = *(a1 + 8 * v9 + 32);
        }

        v11 = a1;
        v12 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v13)
        {
          goto LABEL_23;
        }

        v14 = v12;
        v15 = v13;

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_100026EF4((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = v14;
        v18[5] = v15;
        ++v9;
        a1 = v11;
        if (v7 == i)
        {
          v7 = v23;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    __break(1u);
LABEL_23:
    _StringGuts.grow(_:)(46);
    v22._object = 0x80000001007EC120;
    v22._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v22);
    sub_1000F5104(&qword_10093F530, &qword_10079B220);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10049FBEC()
{
  v0 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v35 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = (&v26 - v6);
  __chkstk_darwin(v5);
  v36 = &v26 - v8;
  v9 = REMAccountsListDataView.Model.Group.lists.getter();
  v34 = *(v9 + 16);
  if (!v34)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_17:

    return v11;
  }

  v10 = 0;
  v31 = v1 + 88;
  v32 = v1 + 16;
  v30 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
  v27 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
  v26 = (v1 + 8);
  v28 = (v1 + 32);
  v29 = (v1 + 96);
  v11 = _swiftEmptyArrayStorage;
  v33 = v9;
  while (v10 < *(v9 + 16))
  {
    v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v13 = *(v1 + 72);
    v14 = *(v1 + 16);
    v15 = v36;
    v14(v36, v9 + v12 + v13 * v10, v0);
    v14(v7, v15, v0);
    v16 = (*(v1 + 88))(v7, v0);
    if (v16 == v30)
    {
      (*v29)(v7, v0);
      v17 = *v7;
      v18 = [*v7 isPinned];

      if (v18)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v16 != v27)
      {
        goto LABEL_19;
      }

      (*v29)(v7, v0);
      v19 = *v7;
      v20 = [*v7 isPinned];

      if (v20)
      {
LABEL_11:
        v21 = *v28;
        (*v28)(v35, v36, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253C88(0, v11[2] + 1, 1);
          v11 = v37;
        }

        v24 = v11[2];
        v23 = v11[3];
        if (v24 >= v23 >> 1)
        {
          sub_100253C88(v23 > 1, v24 + 1, 1);
          v11 = v37;
        }

        v11[2] = v24 + 1;
        v21(v11 + v12 + v24 * v13, v35, v0);
        goto LABEL_4;
      }
    }

    (*v26)(v36, v0);
LABEL_4:
    ++v10;
    v9 = v33;
    if (v34 == v10)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10049FF50(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_1004A01F0(v8);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
    v18 = 1;
  }

  else
  {
    v24 = v2;
    v23 = *(v10 + 32);
    v23(v16, v8, v9);
    v19 = v26;
    sub_1004A01F0(v26);
    if (v17(v19, 1, v9) == 1)
    {
      (*(v10 + 8))(v16, v9);
      sub_1000050A4(v19, &unk_100938850, qword_100795AE0);
      v18 = 0;
    }

    else
    {
      v23(v14, v19, v9);
      v18 = static Date.< infix(_:_:)();
      v20 = *(v10 + 8);
      v20(v14, v9);
      v20(v16, v9);
    }
  }

  return v18 & 1;
}

uint64_t sub_1004A01F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v15, v2, v11);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:))
  {
    (*(v12 + 8))(v15, v11);
    v17 = type metadata accessor for Date();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  if (v16 == enum case for REMAccountsListDataView.Model.PinnedList.list(_:))
  {
    (*(v12 + 96))(v15, v11);
    v19 = *v15;
    v20 = [*v15 pinnedDate];
    if (v20)
    {
      v21 = v20;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v27 = type metadata accessor for Date();
    (*(*(v27 - 8) + 56))(v10, v22, 1, v27);
    v28 = v10;
  }

  else
  {
    if (v16 != enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v12 + 96))(v15, v11);
    v23 = *v15;
    v24 = [*v15 pinnedDate];
    if (v24)
    {
      v25 = v24;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v29 = type metadata accessor for Date();
    (*(*(v29 - 8) + 56))(v8, v26, 1, v29);
    v28 = v8;
  }

  return sub_100031B58(v28, a1, &unk_100938850, qword_100795AE0);
}

void sub_1004A05A0(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    [v7 internalErrorWithDebugDescription:v8];

    swift_willThrow();
  }

  else
  {
    v4 = v3;
    if ([v4 isGroup])
    {

      REMAccountsListDataView.Model.Group.init(list:lists:)();
      v5 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
      v6 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
      (*(*(v6 - 8) + 104))(a1, v5, v6);
    }

    else
    {
      v9 = objc_opt_self();
      v10 = String._bridgeToObjectiveC()();
      [v9 internalErrorWithDebugDescription:v10];

      swift_willThrow();
    }
  }
}

uint64_t sub_1004A0730(uint64_t a1)
{
  result = sub_100030E90(&qword_100948AB0, &type metadata accessor for REMAccountsListDataView.Invocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004A0788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265646E696D6572 && a2 == 0xEE0073746E756F43;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_1004A0868(uint64_t a1)
{
  v2 = sub_1000318A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004A08A4(uint64_t a1)
{
  v2 = sub_1000318A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004A08E0(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_100948CF0, &qword_1007ACCD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1000318A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20[0]) = 0;
  type metadata accessor for REMAccountsListDataView.ReminderCounts();
  sub_100030E90(&qword_100948CF8, &type metadata accessor for REMAccountsListDataView.ReminderCounts);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + *(_s5CacheVMa() + 20));
  v20[0] = 0;
  v13 = [v12 dataRepresentationWithError:v20];
  v14 = v20[0];
  if (!v13)
  {
    v18 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v20[0] = v15;
  v20[1] = v17;
  v19[7] = 1;
  sub_10015377C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  return sub_10001BBA0(v15, v17);
}

void sub_1004A0B78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    [v2 setAccountsListCategorizedCountsCache:0];
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100031A14(a1, a2);
    [v2 setAccountsListCategorizedCountsCache:isa];
  }
}

uint64_t *_s19PolymorphicListItemC5ModelOwca(uint64_t *a1, uint64_t *a2)
{
  v3 = (*a2 & 0x7FFFFFFFFFFFFFFFLL);
  v4 = *a1;
  *a1 = *a2;
  v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
  v6 = v3;

  return a1;
}

uint64_t *_s19PolymorphicListItemC5ModelOwta(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t _s19PolymorphicListItemC5ModelOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s19PolymorphicListItemC5ModelOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1004A0D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v106 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v98 - v13;
  v15 = __chkstk_darwin(v12);
  v112 = &v98 - v16;
  v17 = __chkstk_darwin(v15);
  v107 = &v98 - v18;
  v19 = __chkstk_darwin(v17);
  v111 = &v98 - v20;
  __chkstk_darwin(v19);
  v125 = &v98 - v21;
  v126 = type metadata accessor for Date();
  v22 = *(v126 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v126);
  v109 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v124 = &v98 - v26;
  v27 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v120 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v116 = (&v98 - v32);
  v33 = __chkstk_darwin(v31);
  v137 = (&v98 - v34);
  v35 = __chkstk_darwin(v33);
  v113 = &v98 - v36;
  result = __chkstk_darwin(v35);
  v40 = &v98 - v39;
  v100 = a2;
  if (a3 != a2)
  {
    v41 = *a4;
    v43 = *(v38 + 16);
    v42 = v38 + 16;
    v44 = *(v42 + 56);
    v131 = (v42 + 72);
    v132 = v43;
    v130 = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
    v115 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
    v108 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
    v114 = (v42 + 80);
    v134 = (v42 - 8);
    v128 = (v22 + 48);
    v129 = (v22 + 56);
    v122 = (v22 + 32);
    v110 = (v22 + 8);
    v133 = v42;
    v117 = (v42 + 16);
    v45 = v41 + v44 * (a3 - 1);
    v118 = -v44;
    v119 = v41;
    v46 = a1 - a3;
    v99 = v44;
    v47 = v41 + v44 * a3;
    v105 = v14;
    v123 = v40;
LABEL_6:
    v104 = a3;
    v101 = v47;
    v102 = v46;
    v103 = v45;
    v49 = v45;
    v50 = v116;
    v51 = v113;
    while (1)
    {
      v135 = v46;
      v136 = v47;
      v52 = v132;
      v132(v40, v47, v27);
      v52(v51, v49, v27);
      v53 = v137;
      v52(v137, v40, v27);
      v54 = *v131;
      v55 = (*v131)(v53, v27);
      if (v55 == v130)
      {
        v56 = v51;
        (*v134)(v137, v27);
        v57 = v125;
        v58 = v126;
        v127 = *v129;
        v127(v125, 1, 1, v126);
      }

      else
      {
        v59 = v111;
        if (v55 == v115)
        {
          v60 = v137;
          (*v114)(v137, v27);
          v61 = *v60;
          v62 = [v61 pinnedDate];
          v56 = v51;
          if (v62)
          {
            v63 = v62;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v64 = 0;
          }

          else
          {
            v64 = 1;
          }

          v71 = v64;
          v58 = v126;
          v127 = *v129;
          v127(v59, v71, 1, v126);
          v57 = v125;
          sub_100031B58(v59, v125, &unk_100938850, qword_100795AE0);
        }

        else
        {
          v65 = v107;
          if (v55 != v108)
          {
            goto LABEL_40;
          }

          v66 = v137;
          (*v114)(v137, v27);
          v67 = *v66;
          v68 = [v67 pinnedDate];
          v56 = v51;
          if (v68)
          {
            v69 = v68;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v70 = 0;
          }

          else
          {
            v70 = 1;
          }

          v72 = v70;
          v58 = v126;
          v127 = *v129;
          v127(v65, v72, 1, v126);
          v57 = v125;
          sub_100031B58(v65, v125, &unk_100938850, qword_100795AE0);
          v50 = v116;
        }
      }

      v73 = *v128;
      if ((*v128)(v57, 1, v58) == 1)
      {
        sub_1000050A4(v57, &unk_100938850, qword_100795AE0);
        v74 = *v134;
        v51 = v56;
        (*v134)(v56, v27);
        v40 = v123;
        v74(v123, v27);
        v75 = v136;
      }

      else
      {
        v121 = *v122;
        v121(v124, v57, v58);
        v132(v50, v56, v27);
        v76 = v54(v50, v27);
        if (v76 == v130)
        {
          (*v134)(v50, v27);
          v77 = v112;
          v127(v112, 1, 1, v58);
        }

        else
        {
          if (v76 == v115)
          {
            (*v114)(v50, v27);
            v78 = *v50;
            v79 = [v78 pinnedDate];
            if (v79)
            {
              v80 = v105;
              v81 = v79;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v82 = 0;
            }

            else
            {
              v82 = 1;
              v80 = v105;
            }

            v88 = v82;
            v58 = v126;
            v127(v80, v88, 1, v126);
            v89 = v80;
          }

          else
          {
            if (v76 != v108)
            {
              goto LABEL_40;
            }

            (*v114)(v50, v27);
            v83 = *v50;
            v84 = [*v50 pinnedDate];
            v85 = v106;
            if (v84)
            {
              v86 = v84;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v87 = 0;
            }

            else
            {
              v87 = 1;
            }

            v58 = v126;
            v127(v85, v87, 1, v126);
            v89 = v85;
          }

          v77 = v112;
          sub_100031B58(v89, v112, &unk_100938850, qword_100795AE0);
        }

        if (v73(v77, 1, v58) == 1)
        {
          (*v110)(v124, v58);
          sub_1000050A4(v77, &unk_100938850, qword_100795AE0);
          v48 = *v134;
          (*v134)(v56, v27);
          v40 = v123;
          result = (v48)(v123, v27);
LABEL_5:
          a3 = v104 + 1;
          v45 = v103 + v99;
          v46 = v102 - 1;
          v47 = v101 + v99;
          if (v104 + 1 == v100)
          {
            return result;
          }

          goto LABEL_6;
        }

        v90 = v109;
        v121(v109, v77, v58);
        v91 = v124;
        v92 = static Date.< infix(_:_:)();
        v93 = *v110;
        v51 = v113;
        (*v110)(v90, v58);
        v94 = v91;
        v50 = v116;
        v93(v94, v58);
        v95 = *v134;
        (*v134)(v51, v27);
        v40 = v123;
        result = (v95)(v123, v27);
        v75 = v136;
        if ((v92 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v119)
      {
        break;
      }

      v96 = *v117;
      v97 = v120;
      (*v117)(v120, v75, v27);
      swift_arrayInitWithTakeFrontToBack();
      result = (v96)(v49, v97, v27);
      v49 += v118;
      v47 = v75 + v118;
      v46 = v135 + 1;
      if (v135 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_40:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A18B0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v254 = a1;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v270 = &v246 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v246 - v13;
  v15 = __chkstk_darwin(v12);
  v281 = &v246 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v246 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v246 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v246 - v24;
  v26 = __chkstk_darwin(v23);
  v252 = &v246 - v27;
  v28 = __chkstk_darwin(v26);
  v251 = &v246 - v29;
  v30 = __chkstk_darwin(v28);
  v260 = &v246 - v31;
  v32 = __chkstk_darwin(v30);
  v257 = &v246 - v33;
  v34 = __chkstk_darwin(v32);
  v256 = &v246 - v35;
  __chkstk_darwin(v34);
  v271 = &v246 - v36;
  v294 = type metadata accessor for Date();
  v37 = *(v294 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v294);
  v280 = &v246 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v290 = &v246 - v42;
  v43 = __chkstk_darwin(v41);
  v255 = &v246 - v44;
  __chkstk_darwin(v43);
  v268 = &v246 - v45;
  v46 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46);
  v261 = &v246 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v288 = &v246 - v51;
  v52 = __chkstk_darwin(v50);
  v283 = (&v246 - v53);
  v54 = __chkstk_darwin(v52);
  v291 = (&v246 - v55);
  v56 = __chkstk_darwin(v54);
  v304 = &v246 - v57;
  v58 = __chkstk_darwin(v56);
  v303 = &v246 - v59;
  v60 = __chkstk_darwin(v58);
  v61 = __chkstk_darwin(v60);
  v263 = (&v246 - v62);
  v63 = __chkstk_darwin(v61);
  v278 = &v246 - v64;
  v65 = __chkstk_darwin(v63);
  v274 = &v246 - v66;
  v67 = __chkstk_darwin(v65);
  v248 = &v246 - v68;
  __chkstk_darwin(v67);
  v247 = &v246 - v71;
  v72 = a3[1];
  v273 = v69;
  if (v72 < 1)
  {
    v75 = _swiftEmptyArrayStorage;
LABEL_156:
    v37 = *v254;
    if (!*v254)
    {
      goto LABEL_196;
    }

    a4 = v75;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v239 = a4;
    }

    else
    {
LABEL_190:
      v239 = sub_1004361F4(a4);
    }

    v305 = v239;
    a4 = *(v239 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v240 = *&v239[16 * a4];
        v241 = v239;
        v242 = *&v239[16 * a4 + 24];
        sub_1004A3308(*a3 + *(v273 + 72) * v240, *a3 + *(v273 + 72) * *&v239[16 * a4 + 16], *a3 + *(v273 + 72) * v242, v37);
        if (v5)
        {
        }

        if (v242 < v240)
        {
          goto LABEL_183;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v241 = sub_1004361F4(v241);
        }

        if (a4 - 2 >= *(v241 + 2))
        {
          goto LABEL_184;
        }

        v243 = &v241[16 * a4];
        *v243 = v240;
        *(v243 + 1) = v242;
        v305 = v241;
        sub_100436168(a4 - 1);
        v239 = v305;
        a4 = *(v305 + 2);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_194;
    }
  }

  v73 = v72;
  v264 = v70;
  v302 = (v69 + 8);
  v299 = (v69 + 88);
  v300 = v69 + 16;
  v298 = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
  v285 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
  v279 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
  v284 = (v69 + 96);
  v296 = (v37 + 56);
  v297 = (v37 + 48);
  v293 = (v37 + 32);
  v74 = 0;
  v282 = (v37 + 8);
  v75 = _swiftEmptyArrayStorage;
  v292 = (v69 + 32);
  v258 = a3;
  v253 = a4;
  v269 = v14;
  v276 = v19;
  v275 = v22;
  v289 = v25;
  while (1)
  {
    v76 = v74;
    v262 = v75;
    if (v74 + 1 >= v73)
    {
      v130 = v74 + 1;
      goto LABEL_54;
    }

    v277 = v73;
    v77 = *a3;
    v78 = *(v273 + 72);
    v79 = *a3 + v78 * (v74 + 1);
    v80 = *(v273 + 16);
    v81 = v74;
    v82 = v247;
    v80(v247, v79, v46);
    v287 = v77;
    v83 = v77 + v78 * v81;
    v84 = v248;
    v295 = v80;
    v80(v248, v83, v46);
    LODWORD(v272) = sub_10049FF50(v82, v84);
    if (v5)
    {
      v245 = *v302;
      (*v302)(v84, v46);
      (v245)(v82, v46);
    }

    v250 = 0;
    v85 = *v302;
    (*v302)(v84, v46);
    v301 = v85;
    (v85)(v82, v46);
    v249 = v81;
    v86 = v81 + 2;
    v37 = v287 + v78 * (v81 + 2);
    v87 = v271;
    v88 = v263;
    v286 = v78;
    while (1)
    {
      v130 = v277;
      if (v277 == v86)
      {
        break;
      }

      v91 = v274;
      v92 = v295;
      v295(v274, v37, v46);
      v92(v278, v79, v46);
      v92(v88, v91, v46);
      v93 = *v299;
      v94 = (*v299)(v88, v46);
      if (v94 != v298)
      {
        if (v94 == v285)
        {
          (*v284)(v88, v46);
          v287 = *v88;
          v96 = [v287 pinnedDate];
          v97 = v294;
          if (v96)
          {
            v98 = v256;
            goto LABEL_18;
          }

          v100 = 1;
          v98 = v256;
        }

        else
        {
          v98 = v257;
          v97 = v294;
          if (v94 != v279)
          {
            goto LABEL_197;
          }

          (*v284)(v88, v46);
          v287 = *v88;
          v96 = [v287 pinnedDate];
          if (v96)
          {
LABEL_18:
            v99 = v96;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v100 = 0;
          }

          else
          {
            v100 = 1;
          }
        }

        v287 = *v296;
        v287(v98, v100, 1, v97);
        v95 = v97;
        v87 = v271;
        sub_100031B58(v98, v271, &unk_100938850, qword_100795AE0);
        goto LABEL_22;
      }

      (v301)(v88, v46);
      v95 = v294;
      v287 = *v296;
      v287(v87, 1, 1, v294);
LABEL_22:
      v101 = *v297;
      if ((*v297)(v87, 1, v95) == 1)
      {
        sub_1000050A4(v87, &unk_100938850, qword_100795AE0);
        v89 = 1;
      }

      else
      {
        v266 = *v293;
        v266(v268, v87, v95);
        v102 = v264;
        v295(v264, v278, v46);
        v103 = v93(v102, v46);
        v104 = v95;
        if (v103 == v298)
        {
          (v301)(v102, v46);
          v105 = v260;
          v287(v260, 1, 1, v104);
        }

        else if (v103 == v285)
        {
          v267 = v79;
          v106 = v95;
          v107 = v264;
          (*v284)(v264, v46);
          v108 = *v107;
          v109 = [*v107 pinnedDate];
          v110 = v251;
          if (v109)
          {
            v111 = v109;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v112 = 0;
          }

          else
          {
            v112 = 1;
          }

          v119 = v287;

          v120 = v112;
          v104 = v106;
          v119(v110, v120, 1, v106);
          v121 = v110;
          v105 = v260;
          sub_100031B58(v121, v260, &unk_100938850, qword_100795AE0);
          v79 = v267;
        }

        else
        {
          v113 = v252;
          if (v103 != v279)
          {
            goto LABEL_197;
          }

          v114 = v264;
          (*v284)();
          v115 = *v114;
          v116 = [v115 pinnedDate];
          if (v116)
          {
            v117 = v116;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v118 = 0;
          }

          else
          {
            v118 = 1;
          }

          v122 = v287;

          v123 = v118;
          v104 = v294;
          v122(v113, v123, 1, v294);
          v124 = v113;
          v105 = v260;
          sub_100031B58(v124, v260, &unk_100938850, qword_100795AE0);
        }

        if (v101(v105, 1, v104) == 1)
        {
          (*v282)(v268, v104);
          sub_1000050A4(v105, &unk_100938850, qword_100795AE0);
          v89 = 0;
        }

        else
        {
          v267 = v79;
          v125 = v104;
          v126 = v255;
          v266(v255, v105, v125);
          v127 = v268;
          v89 = static Date.< infix(_:_:)();
          v128 = *v282;
          (*v282)(v126, v125);
          v129 = v125;
          v79 = v267;
          v128(v127, v129);
        }

        v87 = v271;
        v88 = v263;
      }

      v90 = v301;
      (v301)(v278, v46);
      v90(v274, v46);
      ++v86;
      v78 = v286;
      v37 += v286;
      v79 += v286;
      if ((v272 & 1) != (v89 & 1))
      {
        v130 = v86 - 1;
        break;
      }
    }

    v5 = v250;
    a3 = v258;
    a4 = v253;
    v131 = v262;
    v76 = v249;
    if ((v272 & 1) == 0)
    {
      goto LABEL_54;
    }

    if (v130 < v249)
    {
      goto LABEL_189;
    }

    if (v249 < v130)
    {
      v132 = v78 * (v130 - 1);
      v133 = v130;
      v134 = v130 * v78;
      v277 = v130;
      v135 = v249;
      v136 = v249 * v78;
      do
      {
        if (v135 != --v133)
        {
          v137 = *v258;
          if (!*v258)
          {
            goto LABEL_193;
          }

          v37 = v137 + v136;
          v138 = *v292;
          (*v292)(v261, v137 + v136, v46, v131);
          if (v136 < v132 || v37 >= v137 + v134)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v136 != v132)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v138((v137 + v132), v261, v46);
          v131 = v262;
          v78 = v286;
        }

        ++v135;
        v132 -= v78;
        v134 -= v78;
        v136 += v78;
      }

      while (v135 < v133);
      v5 = v250;
      a3 = v258;
      a4 = v253;
      v130 = v277;
      v76 = v249;
    }

LABEL_54:
    v139 = a3[1];
    if (v130 >= v139)
    {
      goto LABEL_63;
    }

    if (__OFSUB__(v130, v76))
    {
      goto LABEL_186;
    }

    if (v130 - v76 >= a4)
    {
LABEL_63:
      v37 = v130;
      if (v130 < v76)
      {
        goto LABEL_185;
      }

      goto LABEL_64;
    }

    if (__OFADD__(v76, a4))
    {
      goto LABEL_187;
    }

    if ((v76 + a4) >= v139)
    {
      v37 = a3[1];
    }

    else
    {
      v37 = v76 + a4;
    }

    if (v37 < v76)
    {
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    if (v130 == v37)
    {
      goto LABEL_63;
    }

    v250 = v5;
    v186 = *a3;
    v187 = *(v273 + 72);
    v295 = *(v273 + 16);
    v188 = v186 + v187 * (v130 - 1);
    v286 = -v187;
    v249 = v76;
    v189 = (v76 - v130);
    v287 = v186;
    v259 = v187;
    a4 = v186 + v130 * v187;
    v190 = v291;
    v191 = v289;
    v265 = v37;
LABEL_117:
    v277 = v130;
    v266 = a4;
    v267 = v189;
    v272 = v188;
    v193 = v188;
LABEL_118:
    v301 = v189;
    v194 = v303;
    v195 = v295;
    v295(v303, a4, v46);
    v195(v304, v193, v46);
    v195(v190, v194, v46);
    v196 = *v299;
    v197 = (*v299)(v190, v46);
    if (v197 == v298)
    {
      (*v302)(v190, v46);
      v198 = *v296;
      v199 = v294;
      (*v296)(v191, 1, 1, v294);
    }

    else
    {
      if (v197 == v285)
      {
        (*v284)(v190, v46);
        v200 = *v190;
        v201 = [*v190 pinnedDate];
        v202 = v275;
        if (v201)
        {
          v203 = v201;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v204 = 0;
        }

        else
        {
          v204 = 1;
        }

        v198 = *v296;
        v210 = v202;
        v211 = v204;
      }

      else
      {
        v205 = v276;
        if (v197 != v279)
        {
          goto LABEL_197;
        }

        (*v284)(v190, v46);
        v206 = *v190;
        v207 = [*v190 pinnedDate];
        v202 = v205;
        if (v207)
        {
          v208 = v207;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v209 = 0;
        }

        else
        {
          v209 = 1;
        }

        v198 = *v296;
        v210 = v202;
        v211 = v209;
      }

      v199 = v294;
      v198(v210, v211, 1, v294);
      v212 = v202;
      v191 = v289;
      sub_100031B58(v212, v289, &unk_100938850, qword_100795AE0);
    }

    v213 = *v297;
    if ((*v297)(v191, 1, v199) == 1)
    {
      sub_1000050A4(v191, &unk_100938850, qword_100795AE0);
      v214 = *v302;
      (*v302)(v304, v46);
      (v214)(v303, v46);
      goto LABEL_148;
    }

    v215 = v191;
    v216 = *v293;
    (*v293)(v290, v215, v199);
    v217 = v283;
    v295(v283, v304, v46);
    v218 = v196(v217, v46);
    if (v218 == v298)
    {
      (*v302)(v217, v46);
      v219 = v281;
      v198(v281, 1, 1, v199);
      goto LABEL_146;
    }

    if (v218 == v285)
    {
      v220 = v283;
      (*v284)(v283, v46);
      v221 = *v220;
      v222 = [*v220 pinnedDate];
      if (v222)
      {
        v223 = &v301;
        goto LABEL_141;
      }

      v227 = 1;
      v228 = &v301;
LABEL_144:
      v225 = *(v228 - 32);
    }

    else
    {
      v224 = v283;
      if (v218 != v279)
      {
        goto LABEL_197;
      }

      (*v284)(v283, v46);
      v221 = *v224;
      v222 = [*v224 pinnedDate];
      if (!v222)
      {
        v227 = 1;
        v228 = &v302;
        goto LABEL_144;
      }

      v223 = &v302;
LABEL_141:
      v225 = *(v223 - 32);
      v226 = v222;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v227 = 0;
    }

    v199 = v294;
    v198(v225, v227, 1, v294);
    v229 = v225;
    v219 = v281;
    sub_100031B58(v229, v281, &unk_100938850, qword_100795AE0);
LABEL_146:
    if (v213(v219, 1, v199) != 1)
    {
      break;
    }

    (*v282)(v290, v199);
    sub_1000050A4(v219, &unk_100938850, qword_100795AE0);
    v192 = *v302;
    (*v302)(v304, v46);
    (v192)(v303, v46);
    v191 = v289;
LABEL_115:
    v190 = v291;
LABEL_116:
    v130 = v277 + 1;
    v188 = &v272[v259];
    v189 = (v267 - 1);
    a4 = v266 + v259;
    v37 = v265;
    if (v277 + 1 != v265)
    {
      goto LABEL_117;
    }

    v5 = v250;
    a3 = v258;
    v76 = v249;
    if (v265 < v249)
    {
      goto LABEL_185;
    }

LABEL_64:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v265 = v37;
    if (isUniquelyReferenced_nonNull_native)
    {
      v75 = v262;
    }

    else
    {
      v75 = sub_1003658B8(0, *(v262 + 2) + 1, 1, v262);
    }

    v37 = *(v75 + 2);
    v141 = *(v75 + 3);
    a4 = v37 + 1;
    if (v37 >= v141 >> 1)
    {
      v75 = sub_1003658B8((v141 > 1), v37 + 1, 1, v75);
    }

    *(v75 + 2) = a4;
    v142 = &v75[16 * v37];
    v143 = v265;
    *(v142 + 4) = v76;
    *(v142 + 5) = v143;
    v144 = *v254;
    if (!*v254)
    {
      goto LABEL_195;
    }

    if (v37)
    {
      while (2)
      {
        v37 = a4 - 1;
        if (a4 >= 4)
        {
          v149 = &v75[16 * a4 + 32];
          v150 = *(v149 - 64);
          v151 = *(v149 - 56);
          v155 = __OFSUB__(v151, v150);
          v152 = v151 - v150;
          if (v155)
          {
            goto LABEL_172;
          }

          v154 = *(v149 - 48);
          v153 = *(v149 - 40);
          v155 = __OFSUB__(v153, v154);
          v147 = v153 - v154;
          v148 = v155;
          if (v155)
          {
            goto LABEL_173;
          }

          v156 = &v75[16 * a4];
          v158 = *v156;
          v157 = *(v156 + 1);
          v155 = __OFSUB__(v157, v158);
          v159 = v157 - v158;
          if (v155)
          {
            goto LABEL_175;
          }

          v155 = __OFADD__(v147, v159);
          v160 = v147 + v159;
          if (v155)
          {
            goto LABEL_178;
          }

          if (v160 >= v152)
          {
            v178 = &v75[16 * v37 + 32];
            v180 = *v178;
            v179 = *(v178 + 1);
            v155 = __OFSUB__(v179, v180);
            v181 = v179 - v180;
            if (v155)
            {
              goto LABEL_182;
            }

            if (v147 < v181)
            {
              v37 = a4 - 2;
            }
          }

          else
          {
LABEL_83:
            if (v148)
            {
              goto LABEL_174;
            }

            v161 = &v75[16 * a4];
            v163 = *v161;
            v162 = *(v161 + 1);
            v164 = __OFSUB__(v162, v163);
            v165 = v162 - v163;
            v166 = v164;
            if (v164)
            {
              goto LABEL_177;
            }

            v167 = &v75[16 * v37 + 32];
            v169 = *v167;
            v168 = *(v167 + 1);
            v155 = __OFSUB__(v168, v169);
            v170 = v168 - v169;
            if (v155)
            {
              goto LABEL_180;
            }

            if (__OFADD__(v165, v170))
            {
              goto LABEL_181;
            }

            if (v165 + v170 < v147)
            {
              goto LABEL_97;
            }

            if (v147 < v170)
            {
              v37 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v145 = *(v75 + 4);
            v146 = *(v75 + 5);
            v155 = __OFSUB__(v146, v145);
            v147 = v146 - v145;
            v148 = v155;
            goto LABEL_83;
          }

          v171 = &v75[16 * a4];
          v173 = *v171;
          v172 = *(v171 + 1);
          v155 = __OFSUB__(v172, v173);
          v165 = v172 - v173;
          v166 = v155;
LABEL_97:
          if (v166)
          {
            goto LABEL_176;
          }

          v174 = &v75[16 * v37];
          v176 = *(v174 + 4);
          v175 = *(v174 + 5);
          v155 = __OFSUB__(v175, v176);
          v177 = v175 - v176;
          if (v155)
          {
            goto LABEL_179;
          }

          if (v177 < v165)
          {
            break;
          }
        }

        v182 = v37 - 1;
        if (v37 - 1 >= a4)
        {
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
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
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
          goto LABEL_188;
        }

        if (!*a3)
        {
          goto LABEL_192;
        }

        v183 = v75;
        a4 = *&v75[16 * v182 + 32];
        v184 = *&v75[16 * v37 + 40];
        sub_1004A3308(*a3 + *(v273 + 72) * a4, *a3 + *(v273 + 72) * *&v75[16 * v37 + 32], *a3 + *(v273 + 72) * v184, v144);
        if (v5)
        {
        }

        if (v184 < a4)
        {
          goto LABEL_170;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v183 = sub_1004361F4(v183);
        }

        if (v182 >= *(v183 + 2))
        {
          goto LABEL_171;
        }

        v185 = &v183[16 * v182];
        *(v185 + 4) = a4;
        *(v185 + 5) = v184;
        v305 = v183;
        sub_100436168(v37);
        v75 = v305;
        a4 = *(v305 + 2);
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v73 = a3[1];
    v74 = v265;
    a4 = v253;
    if (v265 >= v73)
    {
      goto LABEL_156;
    }
  }

  v230 = v280;
  v216(v280, v219, v199);
  v231 = v290;
  v232 = static Date.< infix(_:_:)();
  v233 = *v282;
  (*v282)(v230, v199);
  v233(v231, v199);
  v234 = *v302;
  (*v302)(v304, v46);
  (v234)(v303, v46);
  v191 = v289;
  if ((v232 & 1) == 0)
  {
    goto LABEL_115;
  }

LABEL_148:
  v190 = v291;
  v235 = v301;
  if (v287)
  {
    v236 = *v292;
    v237 = v288;
    (*v292)(v288, a4, v46);
    swift_arrayInitWithTakeFrontToBack();
    v236(v193, v237, v46);
    v193 += v286;
    a4 += v286;
    v238 = __CFADD__(v235, 1);
    v189 = v235 + 1;
    if (v238)
    {
      goto LABEL_116;
    }

    goto LABEL_118;
  }

  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1004A3308(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v190 = a1;
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v157 - v13;
  v15 = __chkstk_darwin(v12);
  v166 = (v157 - v16);
  v17 = __chkstk_darwin(v15);
  v160 = v157 - v18;
  v19 = __chkstk_darwin(v17);
  v159 = v157 - v20;
  v21 = __chkstk_darwin(v19);
  v173 = v157 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = (v157 - v24);
  v26 = __chkstk_darwin(v23);
  v157[0] = v157 - v27;
  v28 = __chkstk_darwin(v26);
  v168 = (v157 - v29);
  v30 = __chkstk_darwin(v28);
  v164 = v157 - v31;
  v32 = __chkstk_darwin(v30);
  v163 = v157 - v33;
  __chkstk_darwin(v32);
  v184 = v157 - v34;
  v189 = type metadata accessor for Date();
  v35 = *(v189 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v189);
  v158 = v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v171 = v157 - v40;
  v41 = __chkstk_darwin(v39);
  v162 = v157 - v42;
  __chkstk_darwin(v41);
  v175 = v157 - v43;
  v44 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v44);
  v161 = (v157 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __chkstk_darwin(v47);
  v170 = (v157 - v50);
  v51 = __chkstk_darwin(v49);
  v185 = (v157 - v52);
  v53 = __chkstk_darwin(v51);
  v183 = (v157 - v54);
  v55 = __chkstk_darwin(v53);
  v167 = (v157 - v56);
  v57 = __chkstk_darwin(v55);
  v174 = (v157 - v58);
  v59 = __chkstk_darwin(v57);
  v188 = v157 - v60;
  __chkstk_darwin(v59);
  v186 = v157 - v61;
  v177 = *(v62 + 72);
  if (!v177)
  {
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v63 = a2 - v190;
  if (a2 - v190 == 0x8000000000000000 && v177 == -1)
  {
    goto LABEL_119;
  }

  v64 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v177 == -1)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v194 = v190;
  v192 = a4;
  if (v63 / v177 >= v64 / v177)
  {
    v163 = v14;
    v67 = v64 / v177 * v177;
    if (a4 < a2 || a2 + v67 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v114 = a4 + v67;
    if (v67 < 1)
    {
      v119 = a4 + v67;
      goto LABEL_116;
    }

    v162 = v11;
    v115 = -v177;
    v180 = (v45 + 88);
    v181 = (v45 + 16);
    LODWORD(v179) = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
    LODWORD(v169) = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
    v168 = (v45 + 96);
    v178 = (v35 + 56);
    v182 = (v45 + 8);
    v177 = v35 + 48;
    LODWORD(v164) = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
    v167 = (v35 + 32);
    v165 = (v35 + 8);
    v116 = (a4 + v67);
    v117 = v189;
    v118 = v161;
    v119 = v114;
    v176 = a4;
    v186 = v115;
    while (1)
    {
      v157[0] = v119;
      v120 = a2;
      a2 += v115;
      v187 = a2;
      v175 = v120;
      while (1)
      {
        if (v120 <= v190)
        {
          v194 = v120;
          v191 = v157[0];
          goto LABEL_117;
        }

        v184 = a3;
        v174 = v119;
        v122 = *v181;
        v123 = v183;
        v188 = &v116[v115];
        v122(v183);
        (v122)(v185, a2, v44);
        v124 = v170;
        (v122)(v170, v123, v44);
        v125 = *v180;
        v126 = (*v180)(v124, v44);
        if (v126 == v179)
        {
          (*v182)(v124, v44);
          v127 = *v178;
          v128 = v173;
          (*v178)(v173, 1, 1, v117);
          goto LABEL_83;
        }

        if (v126 == v169)
        {
          (*v168)(v124, v44);
          v129 = *v124;
          v130 = [v129 pinnedDate];
          if (!v130)
          {
            v133 = 1;
            v131 = v159;
            goto LABEL_82;
          }

          v131 = v159;
        }

        else
        {
          v131 = v160;
          if (v126 != v164)
          {
            goto LABEL_121;
          }

          (*v168)(v124, v44);
          v129 = *v124;
          v130 = [v129 pinnedDate];
          if (!v130)
          {
            v133 = 1;
            goto LABEL_82;
          }
        }

        v132 = v130;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v133 = 0;
LABEL_82:

        v127 = *v178;
        v134 = v133;
        v117 = v189;
        (*v178)(v131, v134, 1, v189);
        v128 = v173;
        sub_100031B58(v131, v173, &unk_100938850, qword_100795AE0);
LABEL_83:
        v135 = *v177;
        if ((*v177)(v128, 1, v117) == 1)
        {
          sub_1000050A4(v128, &unk_100938850, qword_100795AE0);
          v136 = 1;
          a2 = v187;
          goto LABEL_101;
        }

        v172 = *v167;
        v172(v171, v128, v117);
        (v122)(v118, v185, v44);
        v137 = v125(v118, v44);
        if (v137 == v179)
        {
          (*v182)(v118, v44);
          v138 = v166;
          v127(v166, 1, 1, v117);
          goto LABEL_98;
        }

        if (v137 == v169)
        {
          (*v168)(v118, v44);
          v139 = *v118;
          v140 = [*v118 pinnedDate];
          if (!v140)
          {
            v144 = 1;
            v145 = &v194;
LABEL_96:
            v142 = *(v145 - 32);
            goto LABEL_97;
          }

          v141 = &v194;
        }

        else
        {
          if (v137 != v164)
          {
            goto LABEL_121;
          }

          (*v168)(v118, v44);
          v139 = *v118;
          v140 = [*v118 pinnedDate];
          if (!v140)
          {
            v144 = 1;
            v145 = &v193;
            goto LABEL_96;
          }

          v141 = &v193;
        }

        v142 = *(v141 - 32);
        v143 = v140;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v144 = 0;
LABEL_97:

        v146 = v144;
        v117 = v189;
        v127(v142, v146, 1, v189);
        v138 = v166;
        sub_100031B58(v142, v166, &unk_100938850, qword_100795AE0);
LABEL_98:
        v147 = v135(v138, 1, v117);
        a2 = v187;
        if (v147 == 1)
        {
          (*v165)(v171, v117);
          sub_1000050A4(v138, &unk_100938850, qword_100795AE0);
          v136 = 0;
        }

        else
        {
          v148 = v158;
          v172(v158, v138, v117);
          v149 = v171;
          v136 = static Date.< infix(_:_:)();
          v150 = v117;
          v172 = v116;
          v151 = *v165;
          (*v165)(v148, v150);
          v152 = v149;
          v118 = v161;
          v151(v152, v150);
          v116 = v172;
        }

LABEL_101:
        v153 = v184;
        a3 = &v186[v184];
        v154 = *v182;
        (*v182)(v185, v44);
        v154(v183, v44);
        if (v136)
        {
          break;
        }

        v119 = v188;
        if (v153 < v116 || a3 >= v116)
        {
          swift_arrayInitWithTakeFrontToBack();
          v121 = v176;
          v117 = v189;
        }

        else
        {
          v121 = v176;
          v117 = v189;
          if (v153 != v116)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v116 = v119;
        v115 = v186;
        v120 = v175;
        if (v188 <= v121)
        {
          a2 = v175;
          goto LABEL_116;
        }
      }

      if (v153 < v175 || a3 >= v175)
      {
        swift_arrayInitWithTakeFrontToBack();
        v155 = v176;
        v117 = v189;
        v119 = v174;
      }

      else
      {
        v155 = v176;
        v117 = v189;
        v119 = v174;
        if (v153 != v175)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v115 = v186;
      if (v116 <= v155)
      {
LABEL_116:
        v194 = a2;
        v191 = v119;
        goto LABEL_117;
      }
    }
  }

  v65 = v63 / v177 * v177;
  v161 = v25;
  if (a4 < v190 || v190 + v65 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v66 = v189;
  }

  else
  {
    v66 = v189;
    if (a4 != v190)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v173 = a4 + v65;
  v191 = a4 + v65;
  v68 = v65 < 1 || a2 >= a3;
  v69 = v184;
  if (!v68)
  {
    v71 = *(v45 + 16);
    v70 = v45 + 16;
    v182 = (v70 + 72);
    v183 = v71;
    LODWORD(v181) = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
    LODWORD(v171) = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
    v169 = (v70 + 80);
    v178 = (v35 + 56);
    v179 = v70;
    v185 = (v70 - 8);
    LODWORD(v165) = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
    v180 = (v35 + 48);
    v170 = (v35 + 32);
    v166 = (v35 + 8);
    v172 = a3;
    while (1)
    {
      v72 = v186;
      v73 = v183;
      (v183)(v186, a2, v44);
      (v73)(v188, a4, v44);
      v74 = v174;
      (v73)(v174, v72, v44);
      v75 = *v182;
      v76 = (*v182)(v74, v44);
      if (v76 == v181)
      {
        (*v185)(v74, v44);
        v77 = *v178;
        (*v178)(v69, 1, 1, v66);
      }

      else if (v76 == v171)
      {
        (*v169)(v74, v44);
        v78 = *v74;
        v79 = [v78 pinnedDate];
        if (v79)
        {
          v80 = v163;
          v81 = v79;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v82 = 0;
        }

        else
        {
          v82 = 1;
          v80 = v163;
        }

        v77 = *v178;
        v89 = v82;
        v66 = v189;
        (*v178)(v80, v89, 1, v189);
        v90 = v80;
        v69 = v184;
        sub_100031B58(v90, v184, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v187 = a2;
        v83 = a4;
        v84 = v164;
        if (v76 != v165)
        {
          goto LABEL_121;
        }

        (*v169)(v74, v44);
        v85 = *v74;
        v86 = [v85 pinnedDate];
        if (v86)
        {
          v87 = v86;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v88 = 0;
        }

        else
        {
          v88 = 1;
        }

        v77 = *v178;
        v91 = v88;
        v66 = v189;
        (*v178)(v84, v91, 1, v189);
        v69 = v184;
        sub_100031B58(v84, v184, &unk_100938850, qword_100795AE0);
        a4 = v83;
        a2 = v187;
      }

      v92 = *v180;
      if ((*v180)(v69, 1, v66) == 1)
      {
        sub_1000050A4(v69, &unk_100938850, qword_100795AE0);
        v93 = *v185;
        (*v185)(v188, v44);
        v93(v186, v44);
        v94 = v172;
        v95 = v177;
        goto LABEL_35;
      }

      v187 = a2;
      v96 = *v170;
      (*v170)(v175, v69, v66);
      v97 = v167;
      (v183)(v167, v188, v44);
      v98 = v75(v97, v44);
      if (v98 != v181)
      {
        break;
      }

      (*v185)(v97, v44);
      v99 = v168;
      v77(v168, 1, 1, v66);
LABEL_53:
      if ((v92)(v99, 1, v66) == 1)
      {
        (*v166)(v175, v66);
        sub_1000050A4(v99, &unk_100938850, qword_100795AE0);
        v107 = *v185;
        (*v185)(v188, v44);
        v107(v186, v44);
        a2 = v187;
        v94 = v172;
        v95 = v177;
LABEL_56:
        if (v190 < a4 || v190 >= a4 + v95)
        {
          swift_arrayInitWithTakeFrontToBack();
          v66 = v189;
        }

        else
        {
          v66 = v189;
          if (v190 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v192 = a4 + v95;
        a4 += v95;
        goto LABEL_62;
      }

      v108 = v162;
      v96(v162, v99, v66);
      v109 = v175;
      v110 = v66;
      v111 = static Date.< infix(_:_:)();
      v112 = *v166;
      (*v166)(v108, v110);
      v112(v109, v110);
      v113 = *v185;
      (*v185)(v188, v44);
      v113(v186, v44);
      a2 = v187;
      v94 = v172;
      v95 = v177;
      if ((v111 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_35:
      if (v190 < a2 || v190 >= a2 + v95)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 += v95;
        v66 = v189;
      }

      else
      {
        v66 = v189;
        if (v190 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v95;
      }

LABEL_62:
      v190 += v95;
      v194 = v190;
      v69 = v184;
      if (a4 >= v173 || a2 >= v94)
      {
        goto LABEL_117;
      }
    }

    v176 = a4;
    if (v98 == v171)
    {
      (*v169)(v97, v44);
      v100 = *v97;
      v101 = [v100 pinnedDate];
      v102 = v157[0];
      if (!v101)
      {
        v103 = 1;
LABEL_52:

        v105 = v103;
        v66 = v189;
        v77(v102, v105, 1, v189);
        v106 = v102;
        v99 = v168;
        sub_100031B58(v106, v168, &unk_100938850, qword_100795AE0);
        a4 = v176;
        goto LABEL_53;
      }
    }

    else
    {
      if (v98 != v165)
      {
        goto LABEL_121;
      }

      (*v169)(v97, v44);
      v100 = *v97;
      v101 = [v100 pinnedDate];
      if (!v101)
      {
        v103 = 1;
        v102 = v161;
        goto LABEL_52;
      }

      v102 = v161;
    }

    v104 = v101;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v103 = 0;
    goto LABEL_52;
  }

LABEL_117:
  sub_1005589E0(&v194, &v192, &v191);
  return 1;
}

uint64_t sub_1004A4820(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1004A4B60(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1004A5554(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_1004A49C0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_1004A4D40(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1004A5588(v15, v7, v18);
    v11 = v18[0];
  }

  return v11;
}

uint64_t sub_1004A4B60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v14 = Hasher._finalize()();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_1001A0BCC(v26, a2, v25, a4);
}

void sub_1004A4D40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for REMObjectID_Codable();
    sub_100030E90(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
    Set.Iterator.init(_cocoa:)();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v32 = 0;
  v12 = (v6 + 64) >> 6;
  v36 = a4 + 56;
  v34 = v5;
  v35 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_28;
    }

    type metadata accessor for REMObjectID_Codable();
    swift_dynamicCast();
    v18 = v43;
    v7 = v13;
    v17 = v14;
    if (!v43)
    {
      goto LABEL_28;
    }

LABEL_19:
    v19 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    type metadata accessor for REMObjectID_Codable();
    v24 = *(*(a4 + 48) + 8 * v21);
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {
LABEL_24:

      v29 = a1[v22];
      a1[v22] = v29 | v23;
      v13 = v7;
      v4 = v35;
      v8 = v17;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
      if ((v29 & v23) == 0)
      {
        if (!__OFADD__(v32++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_28:
        sub_10001B860();

        sub_1001A0DF0(a1, a2, v32, a4);
        return;
      }
    }

    else
    {
      v26 = ~v20;
      while (1)
      {
        v21 = (v21 + 1) & v26;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v27 = *(*(a4 + 48) + 8 * v21);
        v28 = static NSObject.== infix(_:_:)();

        if (v28)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v4 = v35;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1004A507C(void *a1, void *a2, uint64_t a3)
{
  v6 = _s5CacheVMa();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v10 - 8) + 16))(v9, a3, v10);
  *&v9[*(v6 + 20)] = a1;
  v11 = type metadata accessor for PropertyListEncoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = a1;
  PropertyListEncoder.init()();
  sub_100030E90(&qword_100948BD8, _s5CacheVMa);
  v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v17 = v16;
  if (qword_100936260 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100948A78);
  sub_100029344(v15, v17);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v19, v20))
  {
    sub_10001BBA0(v15, v17);
LABEL_16:

    sub_100029344(v15, v17);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v15, v17);
    [a2 setAccountsListCategorizedCountsCache:isa];

    sub_10001BBA0(v15, v17);
    return sub_100025434(v9, _s5CacheVMa);
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v22 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v22 != 2)
    {
      v23 = 0;
      goto LABEL_15;
    }

    v25 = *(v15 + 16);
    v24 = *(v15 + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (!v26)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v22)
  {
    v23 = BYTE6(v17);
LABEL_15:
    *(result + 4) = v23;
    v27 = result;
    sub_10001BBA0(v15, v17);
    _os_log_impl(&_mh_execute_header, v19, v20, "REMAccountsListDataView.ReminderCounts Saving cache data size %ld", v27, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v23) = HIDWORD(v15) - v15;
  if (!__OFSUB__(HIDWORD(v15), v15))
  {
    v23 = v23;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_1004A54EC()
{
  result = qword_100948BC8;
  if (!qword_100948BC8)
  {
    sub_1000060C8(255, &qword_100939678, NSPropertyDescription_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948BC8);
  }

  return result;
}

uint64_t sub_1004A5580()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100139474();
}

uint64_t sub_1004A55B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t *sub_1004A55F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = v9;
  }

  return a1;
}

void sub_1004A56BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));
}

uint64_t sub_1004A5730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = v8;
  return a1;
}

uint64_t sub_1004A57B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  return a1;
}

uint64_t sub_1004A5838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1004A58B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1004A594C()
{
  result = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1004A59F8()
{
  result = qword_100948D00;
  if (!qword_100948D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948D00);
  }

  return result;
}

unint64_t sub_1004A5A50()
{
  result = qword_100948D08;
  if (!qword_100948D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948D08);
  }

  return result;
}

unint64_t sub_1004A5AA8()
{
  result = qword_100948D10;
  if (!qword_100948D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948D10);
  }

  return result;
}

NSString sub_1004A5B2C(void *a1)
{
  v4 = *v1;
  v51 = 0;
  v5 = [a1 remObjectIDWithError:&v51];
  if (v5)
  {
    v6 = v5;
    v7 = v51;
    v8 = [a1 account];
    if (v8 && (v9 = v8, v10 = [v8 remObjectID], v9, v10))
    {
      v11 = [a1 displayName];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v14;

        v15 = sub_1004A6BD4(a1, v6, v10, v13, v4);
        if (v2)
        {
        }

        else
        {
          v43 = v15;

          v4 = v43;
          [v4 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
          [v4 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];
          [v4 setResolutionTokenMap:0];
          v44 = [a1 resolutionTokenMapData];
          if (v44)
          {
            v45 = v44;
            v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = v47;

            v49.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v46, v48);
          }

          else
          {
            v49.super.isa = 0;
          }

          [v4 setResolutionTokenMapData:v49.super.isa];
        }
      }

      else
      {
        if (qword_100936270 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100006654(v31, qword_100948D30);
        v32 = v6;
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v51 = v4;
          v52 = v50;
          *v35 = 136315394;
          swift_getMetatypeMetadata();
          v37 = String.init<A>(describing:)();
          v39 = sub_10000668C(v37, v38, &v52);

          *(v35 + 4) = v39;
          *(v35 + 12) = 2112;
          *(v35 + 14) = v32;
          *v36 = v6;
          v40 = v32;
          _os_log_impl(&_mh_execute_header, v33, v34, "%s: cdTemplateSection.displayName is nil {cdTemplateSection.remObjectID: %@}", v35, 0x16u);
          sub_1000050A4(v36, &unk_100938E70, &unk_100797230);

          sub_10000607C(v50);
        }

        v41 = objc_opt_self();
        type metadata accessor for REMCDTemplateSection();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v4 = String._bridgeToObjectiveC()();
        [v41 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v4];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100936270 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100948D30);
      v17 = v6;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v51 = v4;
        v52 = v22;
        *v20 = 136315394;
        swift_getMetatypeMetadata();
        v23 = String.init<A>(describing:)();
        v25 = sub_10000668C(v23, v24, &v52);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        *v21 = v6;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v18, v19, "%s: cdTemplateSection.account is nil {cdTemplateSection.remObjectID: %@}", v20, 0x16u);
        sub_1000050A4(v21, &unk_100938E70, &unk_100797230);

        sub_10000607C(v22);
      }

      v27 = objc_opt_self();
      type metadata accessor for REMCDTemplateSection();
      v28 = swift_getObjCClassFromMetadata();
      v4 = String._bridgeToObjectiveC()();
      [v27 unexpectedNilPropertyWithClass:v28 property:v4];

      swift_willThrow();
    }
  }

  else
  {
    v29 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

Swift::Int sub_1004A61F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004A62C8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1004A638C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004A6460@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004A7010(*a1);
  *a2 = result;
  return result;
}

void sub_1004A6490(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x44497463656A626FLL;
  v4 = 0xEC00000065746144;
  v5 = 0x6E6F697461657263;
  if (*v1 != 2)
  {
    v5 = 0x4E79616C70736964;
    v4 = 0xEB00000000656D61;
  }

  if (*v1)
  {
    v3 = 0xD000000000000017;
    v2 = 0x80000001007E8C60;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1004A6534@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004A7010(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1004A655C()
{
  v1 = 0x44497463656A626FLL;
  v2 = 0x6E6F697461657263;
  if (*v0 != 2)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_1004A65EC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1B48, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1004A665C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1B48, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_1004A66C0()
{
  result = sub_1004A66E0();
  qword_100974EA8 = result;
  return result;
}

unint64_t sub_1004A66E0()
{
  v1 = 0;
  v2 = 0x80000001007E8C60;
  v3 = 0x4E79616C70736964;
  v4 = 0xD000000000000017;
  do
  {
    while (1)
    {
      v7 = &off_1008E20A8 + v1++;
      v8 = v7[32];
      v9 = 0x6E6F697461657263;
      if (v8 != 2)
      {
        v9 = 0x4E79616C70736964;
      }

      v10 = 0xEC00000065746144;
      if (v8 != 2)
      {
        v10 = 0xEB00000000656D61;
      }

      v11 = 0x44497463656A626FLL;
      if (v8)
      {
        v11 = 0xD000000000000017;
      }

      v12 = 0xE800000000000000;
      if (v8)
      {
        v12 = 0x80000001007E8C60;
      }

      if (v8 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v8 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(v13, v14);
      v18 = _swiftEmptyDictionarySingleton[2];
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v0 = v17;
      if (_swiftEmptyDictionarySingleton[3] >= v21)
      {
        break;
      }

      sub_10036A8F0(v21, isUniquelyReferenced_nonNull_native);
      result = sub_100005F4C(v13, v14);
      if ((v0 & 1) != (v22 & 1))
      {
        goto LABEL_43;
      }

LABEL_22:
      if ((v0 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_2:
      v0 = result;

      v5 = (_swiftEmptyDictionarySingleton[7] + 16 * v0);
      v6 = v5[1];
      *v5 = v13;
      v5[1] = v14;

      if (v1 == 4)
      {
        goto LABEL_28;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = result;
    sub_100373664();
    result = isUniquelyReferenced_nonNull_native;
    if (v0)
    {
      goto LABEL_2;
    }

LABEL_23:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    v23 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
    *v23 = v13;
    v23[1] = v14;
    v24 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
    *v24 = v13;
    v24[1] = v14;
    v25 = _swiftEmptyDictionarySingleton[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_36;
    }

    _swiftEmptyDictionarySingleton[2] = v26;
  }

  while (v1 != 4);
LABEL_28:
  v14 = 0xE900000000000044;
  v13 = 0x49746E756F636361;
  v4 = 0xE700000000000000;
  v3 = 0x746E756F636361;
  isUniquelyReferenced_nonNull_native = 0x49746E756F636361;
  v0 = 0xE900000000000044;
  v1 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
  v28 = _swiftEmptyDictionarySingleton[2];
  v29 = (v27 & 1) == 0;
  v20 = __OFADD__(v28, v29);
  v30 = v28 + v29;
  if (v20)
  {
    goto LABEL_47;
  }

  v2 = v27;
  if (_swiftEmptyDictionarySingleton[3] >= v30)
  {
    if (v1)
    {
LABEL_33:
      if (v2)
      {
LABEL_34:
        v32 = result;

        v33 = (_swiftEmptyDictionarySingleton[7] + 16 * v32);
        v34 = v33[1];
        *v33 = v3;
        v33[1] = v4;

        goto LABEL_40;
      }

LABEL_38:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      v36 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
      *v36 = isUniquelyReferenced_nonNull_native;
      v36[1] = v0;
      v37 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
      *v37 = v3;
      v37[1] = v4;
      v38 = _swiftEmptyDictionarySingleton[2];
      v20 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v20)
      {
        goto LABEL_52;
      }

      _swiftEmptyDictionarySingleton[2] = v39;
LABEL_40:
      v2 = 0x6574616C706D6574;
      v14 = 0xE800000000000000;
      v13 = 0x4449746E65726170;
      v1 = 0xE800000000000000;
      LOBYTE(isUniquelyReferenced_nonNull_native) = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
      v41 = _swiftEmptyDictionarySingleton[2];
      v42 = (v40 & 1) == 0;
      v20 = __OFADD__(v41, v42);
      v43 = v41 + v42;
      if (!v20)
      {
        LOBYTE(v0) = v40;
        if (_swiftEmptyDictionarySingleton[3] >= v43)
        {
          goto LABEL_44;
        }

        sub_10036A8F0(v43, isUniquelyReferenced_nonNull_native);
        result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
        if ((v0 & 1) != (v44 & 1))
        {
          goto LABEL_43;
        }

LABEL_45:
        if ((v0 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_37:
    v35 = result;
    sub_100373664();
    result = v35;
    if (v2)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  sub_10036A8F0(v30, v1);
  result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
  if ((v2 & 1) == (v31 & 1))
  {
    goto LABEL_33;
  }

LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_44:
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_45;
  }

LABEL_48:
  v48 = result;
  sub_100373664();
  result = v48;
  if (v0)
  {
LABEL_46:
    v45 = result;

    v46 = (_swiftEmptyDictionarySingleton[7] + 16 * v45);
    v47 = v46[1];
    *v46 = v2;
    v46[1] = v1;

    return _swiftEmptyDictionarySingleton;
  }

LABEL_49:
  _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
  v49 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
  *v49 = v13;
  v49[1] = v14;
  v50 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
  *v50 = v2;
  v50[1] = v1;
  v51 = _swiftEmptyDictionarySingleton[2];
  v20 = __OFADD__(v51, 1);
  v52 = v51 + 1;
  if (!v20)
  {
    _swiftEmptyDictionarySingleton[2] = v52;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_52:
  __break(1u);
  return result;
}

void *sub_1004A6BD4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v40 = a5;
  v41 = a3;
  v10 = *v7;
  v11 = type metadata accessor for Date();
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 template];
  if (v16 && (v17 = v16, v6 = [v16 remObjectID], v17, v6))
  {
    v18 = objc_allocWithZone(REMTemplateSectionStorage);
    v19 = v6;
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 initWithObjectID:a2 accountID:v41 parentID:v19 displayName:v20];

    v6 = v21;
    v22 = [a1 creationDate];
    if (v22)
    {
      v23 = v22;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v24.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v39 + 8))(v15, v11);
    }

    else
    {
      v24.super.isa = 0;
    }

    [v6 setCreationDate:{v24.super.isa, v39, v40}];
  }

  else
  {
    if (qword_100936270 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100948D30);
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42[0] = v30;
      *v29 = 136315394;
      v42[2] = v10;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = sub_10000668C(v31, v32, v42);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v26;
      *v6 = v26;
      v34 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: cdTemplateSection.template is nil {cdTemplateSection.remObjectID: %@}", v29, 0x16u);
      sub_1000050A4(v6, &unk_100938E70, &unk_100797230);

      sub_10000607C(v30);
    }

    v35 = objc_opt_self();
    type metadata accessor for REMCDTemplateSection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = String._bridgeToObjectiveC()();
    [v35 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v37];

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1004A7010(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1148, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_1004A705C(void *a1, void *a2, uint64_t a3)
{
  v8 = *v3;
  v75 = type metadata accessor for Date();
  v9 = *(v75 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v75);
  v74 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for UUID();
  v12 = *(v76 - 1);
  v13 = *(v12 + 64);
  *&v14 = __chkstk_darwin(v76).n128_u64[0];
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = [a2 createResolutionTokenMapIfNecessary];
  v17 = [a1 resolutionTokenMap];
  if (v17)
  {
    v18 = v17;
    v19 = sub_10069614C(v17, a3);
    v20 = a3;
    v21 = *(a3 + 16);
    if (!v21)
    {

      goto LABEL_49;
    }

    v71 = v18;
    v72 = v4;
    v22 = (v20 + 32);
    v73 = (v9 + 8);
    v23 = (v12 + 8);
    while (1)
    {
      v28 = *v22++;
      v27 = v28;
      if (v28 > 1)
      {
        if (v27 == 2)
        {
          sub_1006944A4(2u);
          v31 = String._bridgeToObjectiveC()();

          v32 = [v77 mergeWithMap:v19 forKey:v31];

          if (!v32)
          {
            goto LABEL_6;
          }

          v33 = [a1 creationDate];
          if (v33)
          {
            v34 = v74;
            v35 = v33;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v26.super.isa = Date._bridgeToObjectiveC()().super.isa;
            (*v73)(v34, v75);
          }

          else
          {
            v26.super.isa = 0;
          }

          [a2 setCreationDate:{v26.super.isa, v71}];
        }

        else
        {
          sub_1006944A4(3u);
          v36 = String._bridgeToObjectiveC()();

          v37 = [v77 mergeWithMap:v19 forKey:{v36, v71}];

          if (!v37)
          {
            goto LABEL_6;
          }

          v26.super.isa = [a1 displayName];
          if (!v26.super.isa)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26.super.isa = String._bridgeToObjectiveC()();
          }

          [a2 setDisplayName:{v26.super.isa, v71}];
        }
      }

      else
      {
        if (v27)
        {
          sub_1006944A4(1u);
          v29 = String._bridgeToObjectiveC()();

          v30 = [v77 mergeWithMap:v19 forKey:v29];

          if (v30)
          {
            [a2 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
          }

          goto LABEL_6;
        }

        v24 = [a1 objectID];
        v25 = [v24 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v26.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v23)(v16, v76);
        [a2 setIdentifier:{v26.super.isa, v71}];
      }

LABEL_6:
      if (!--v21)
      {

        goto LABEL_49;
      }
    }
  }

  if (qword_100936268 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100006654(v38, qword_100948D18);
  v39 = a1;

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v78 = v44;
    *v42 = 136315650;
    v79 = v8;
    swift_getMetatypeMetadata();
    v45 = String.init<A>(describing:)();
    v47 = sub_10000668C(v45, v46, &v78);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2114;
    v48 = [v39 objectID];
    *(v42 + 14) = v48;
    v76 = v43;
    *v43 = v48;
    *(v42 + 22) = 2082;
    v49 = *(a3 + 16);
    if (v49)
    {
      v72 = v44;
      LODWORD(v73) = v41;
      v74 = v42;
      v75 = v40;
      v79 = _swiftEmptyArrayStorage;
      sub_100026EF4(0, v49, 0);
      v50 = v79;
      v51 = (a3 + 32);
      do
      {
        v53 = *v51++;
        v52 = v53;
        v54 = v53 == 2;
        if (v53 == 2)
        {
          v55 = 0x6E6F697461657263;
        }

        else
        {
          v55 = 0x4E79616C70736964;
        }

        if (v54)
        {
          v56 = 0xEC00000065746144;
        }

        else
        {
          v56 = 0xEB00000000656D61;
        }

        v57 = 0xD000000000000017;
        if (v52)
        {
          v58 = 0x80000001007E8C60;
        }

        else
        {
          v57 = 0x44497463656A626FLL;
          v58 = 0xE800000000000000;
        }

        if (v52 <= 1)
        {
          v59 = v57;
        }

        else
        {
          v59 = v55;
        }

        if (v52 <= 1)
        {
          v60 = v58;
        }

        else
        {
          v60 = v56;
        }

        v79 = v50;
        v62 = v50[2];
        v61 = v50[3];
        if (v62 >= v61 >> 1)
        {
          sub_100026EF4((v61 > 1), v62 + 1, 1);
          v50 = v79;
        }

        v50[2] = v62 + 1;
        v63 = &v50[2 * v62];
        v63[4] = v59;
        v63[5] = v60;
        --v49;
      }

      while (v49);
      v42 = v74;
      v40 = v75;
      LOBYTE(v41) = v73;
    }

    v64 = Array.description.getter();
    v66 = v65;

    v67 = sub_10000668C(v64, v66, &v78);

    *(v42 + 24) = v67;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s: merge(storage:into cdTemplate:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v42, 0x20u);
    sub_1000050A4(v76, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  v68 = objc_opt_self();
  sub_1004A8118();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v70 = String._bridgeToObjectiveC()();
  [v68 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v70];

  swift_willThrow();
LABEL_49:
}

void sub_1004A7870(id a1, id a2, char a3, uint64_t a4)
{
  v6 = v4;
  if ((a3 & 1) == 0)
  {
    v11 = [a1 accountID];
    sub_10068BA5C(0, v11, a4);
    if (!v5)
    {
      v22 = qword_100936268;
      v23 = v21;
      if (v22 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_100948D18);
      v25 = v23;
      v26 = a2;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v29 = 136446466;
        v30 = [v26 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v69 = v28;
        v31 = Optional.descriptionOrNil.getter();
        v72 = v26;
        v33 = v32;

        v34 = sub_10000668C(v31, v33, &v75);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2082;
        v74 = [v25 remObjectID];
        v35 = Optional.descriptionOrNil.getter();
        v37 = v36;

        v26 = v72;
        v38 = sub_10000668C(v35, v37, &v75);

        *(v29 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v27, v69, "Updating cdTemplateSection.account {cdTemplateSection: %{public}s, account: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();
      }

      [v26 setAccount:v25];
      return;
    }

LABEL_18:

    return;
  }

  v10 = *v6;
  v11 = [a2 createResolutionTokenMapIfNecessary];
  v12 = [a1 resolutionTokenMap];
  if (!v12)
  {
    if (qword_100936268 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_100948D18);
    v40 = a1;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v43 = 136315650;
      v75 = v10;
      swift_getMetatypeMetadata();
      v45 = String.init<A>(describing:)();
      v47 = sub_10000668C(v45, v46, &v74);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2114;
      v48 = [v40 objectID];
      *(v43 + 14) = v48;
      *v44 = v48;
      *(v43 + 22) = 2082;
      *(v43 + 24) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v74);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s: establishRelationship(onStorage:into cdTemplateSection:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v43, 0x20u);
      sub_1000050A4(v44, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v49 = objc_opt_self();
    sub_1004A8118();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = String._bridgeToObjectiveC()();
    [v49 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v51];

    swift_willThrow();
    goto LABEL_18;
  }

  v13 = v12;
  sub_1000F5104(&qword_100943408, &qword_1007ACE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 1;
  v15 = sub_1006967AC(v13, inited);
  swift_setDeallocating();
  v16 = [a1 parentTemplateID];
  sub_100693144(1);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v11 mergeWithMap:v15 forKey:v17];

  if (v18)
  {
    if (v16)
    {
      v19 = v16;
      sub_10068BA8C(1, v19, a4);
      if (v5)
      {

        return;
      }

      v52 = v20;
    }

    else
    {
      v52 = 0;
    }

    if (qword_100936268 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_100948D18);
    v73 = v52;
    v54 = v52;
    v55 = a2;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v67 = v57;
      log = v56;
      v71 = v54;
      v58 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v58 = 136446466;
      v70 = v55;
      v74 = [v55 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v59 = Optional.descriptionOrNil.getter();
      v61 = v60;

      v62 = sub_10000668C(v59, v61, &v75);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2082;
      if (v73)
      {
        v74 = [v54 remObjectID];
        v63 = Optional.descriptionOrNil.getter();
        v65 = v64;
      }

      else
      {
        v65 = 0xED00003E6574616CLL;
        v63 = 0x706D6574206F6E3CLL;
      }

      v66 = sub_10000668C(v63, v65, &v75);

      *(v58 + 14) = v66;
      _os_log_impl(&_mh_execute_header, log, v67, "Updating cdTemplateSection.template {cdTemplateSection: %{public}s, template: %{public}s}", v58, 0x16u);
      swift_arrayDestroy();

      v55 = v70;
      v54 = v71;
    }

    else
    {
    }

    [v55 setTemplate:v54];
  }
}