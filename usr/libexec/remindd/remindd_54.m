void *sub_1004FBBA8()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v6 = objc_opt_self();
  v7 = [v6 database];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_1004FC6E8();
  if (!v0)
  {
    v10 = v9;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v12 = NSManagedObjectContext.count<A>(for:)();
    static os_signpost_type_t.end.getter();
    v13 = [v6 database];
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    v8(v5, v1);
    v1 = [objc_allocWithZone(REMFetchResult) initWithCount:v12];
  }

  return v1;
}

id sub_1004FBDD4(uint64_t a1)
{
  v72 = a1;
  v2 = _s10PredicatesOMa(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v11 = objc_opt_self();
  v12 = [v11 database];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v15 = *(v7 + 8);
  v14 = (v7 + 8);
  v13 = v15;
  v15(v10, v6);
  v16 = v73;
  sub_1004FC6E8();
  if (!v16)
  {
    v18 = v17;
    v68 = v2;
    v69 = v5;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v19 = NSManagedObjectContext.fetch<A>(_:)();
    v73 = 0;
    v75 = _swiftEmptyDictionarySingleton;
    v67 = v19;
    if (v19 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v60 = v11;
      v61 = v10;
      v62 = v14;
      v63 = v6;
      v64 = v18;
      v59 = v13;
      if (!i)
      {
        break;
      }

      v6 = i;
      v11 = 0;
      v13 = v67;
      v10 = v68;
      v70 = v67 & 0xC000000000000001;
      v65 = v67 & 0xFFFFFFFFFFFFFF8;
      v66 = xmmword_100791320;
      v22 = &selRef_accountStatusWithCompletionHandler_;
      v18 = v69;
      while (1)
      {
        if (v70)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v65 + 16))
          {
            goto LABEL_35;
          }

          v23 = *(v13 + v11 + 4);
        }

        v24 = v23;
        v25 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v26 = [v23 remObjectID];
        if (v26)
        {
          v14 = v26;
          KeyPath = swift_getKeyPath();
          v71 = v24;
          v28 = sub_100392240(KeyPath, v24);

          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
          inited = swift_initStackObject();
          *(inited + 16) = v66;
          if (qword_100935B68 != -1)
          {
            swift_once();
          }

          v30 = v6;
          v31 = qword_100974C28;
          *(inited + 32) = qword_100974C28;
          v32 = qword_100935B70;
          v33 = v31;
          if (v32 != -1)
          {
            swift_once();
          }

          v34 = qword_100974C30;
          *(inited + 40) = qword_100974C30;
          *(inited + 48) = v28;
          v13 = v28;
          v35 = v34;
          v36 = sub_10000C2B0(inited);
          sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
          v10 = [objc_allocWithZone(NSFetchRequest) init];
          v37 = [swift_getObjCClassFromMetadata() entity];
          [v10 setEntity:v37];

          [v10 setAffectedStores:0];
          [v10 setPredicate:v36];

          v38 = v73;
          v39 = NSManagedObjectContext.count<A>(for:)();
          v73 = v38;
          if (v38)
          {
            v1 = v75;

            return v1;
          }

          v40 = [objc_allocWithZone(NSNumber) initWithInteger:v39];
          if (v40)
          {
            v18 = v40;
            v41 = v75;
            v6 = v30;
            if ((v75 & 0xC000000000000001) != 0)
            {
              if (v75 >= 0)
              {
                v41 = v75 & 0xFFFFFFFFFFFFFF8;
              }

              v42 = __CocoaDictionary.count.getter();
              if (__OFADD__(v42, 1))
              {
                goto LABEL_36;
              }

              v41 = sub_10021E048(v41, v42 + 1);
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v74 = v41;
            sub_1002C9E6C(v18, v14, isUniquelyReferenced_nonNull_native);

            v75 = v74;
            v22 = &selRef_accountStatusWithCompletionHandler_;
            v10 = v68;
            v18 = v69;
            v13 = v67;
          }

          else
          {
            v44 = sub_100369908(v14);

            v10 = v68;
            v18 = v69;
            v13 = v67;
            v6 = v30;
            v22 = &selRef_accountStatusWithCompletionHandler_;
          }
        }

        else
        {
        }

        ++v11;
        if (v25 == v6)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

    v22 = &selRef_accountStatusWithCompletionHandler_;
    v18 = v69;
LABEL_30:

    v45 = enum case for REMRemindersListDataView.ShowCompleted.off(_:);
    v46 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v46 - 8) + 104))(v18, v45, v46);
    swift_storeEnumTagMultiPayload();
    v47 = sub_100043AA8();
    sub_1004258C8(v18, _s10PredicatesOMa);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v48 = [objc_allocWithZone(NSFetchRequest) init];
    v49 = [swift_getObjCClassFromMetadata() entity];
    [v48 setEntity:v49];

    [v48 setAffectedStores:0];
    [v48 setPredicate:v47];

    v50 = v73;
    v51 = NSManagedObjectContext.count<A>(for:)();
    if (v50)
    {
      v1 = v75;
    }

    else
    {
      v52 = v51;
      static os_signpost_type_t.end.getter();
      v53 = [v60 v22[274]];
      v54 = v61;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      v59(v54, v63);
      v55 = objc_allocWithZone(REMListFetchMetadata);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      sub_10018BA8C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v57 = [v55 initWithIncompleteReminderCounts:isa scheduledCount:v52];

      v1 = [objc_allocWithZone(REMFetchResult) initWithMetadata:v57];
    }
  }

  return v1;
}

void sub_1004FC6E8()
{
  v1 = [v0 predicateDescriptor];
  [v0 options];
  if ([v1 type])
  {
    goto LABEL_30;
  }

  if (qword_100936330 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v2 = qword_100974F20;

    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v3 = [objc_allocWithZone(NSFetchRequest) init];
    v4 = [swift_getObjCClassFromMetadata() entity];
    [v3 setEntity:v4];

    [v3 setAffectedStores:0];
    [v3 setPredicate:v2];
    v5 = [v0 sortDescriptors];
    sub_1000060C8(0, &qword_10094AE10, REMListSortDescriptor_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      break;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_5:
    v26 = _swiftEmptyArrayStorage;
    v0 = &v26;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v25 = v3;
    v8 = 0;
    v1 = (v6 & 0xC000000000000001);
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v1)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      if ([v11 type] > 1)
      {
        goto LABEL_30;
      }

      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      swift_getKeyPath();
      [v12 ascending];
      NSSortDescriptor.init<A, B>(keyPath:ascending:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = *(v26 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v0 = &v26;
      specialized ContiguousArray._endMutation()();
      ++v8;
      if (v10 == v7)
      {

        v13 = v26;
        v3 = v25;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_20:

  v13 = _swiftEmptyArrayStorage;
LABEL_21:
  v26 = v13;
  v14 = [objc_opt_self() sortDescriptorSortingByOrderingInAccountAscending:1];
  if ([v14 type] <= 1)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    [v14 ascending];
    NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setSortDescriptors:isa];

    if (qword_100936328 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094ADF8);
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Created list fetchRequest {fetchRequest: %@}", v20, 0xCu);
      sub_100039860(v21);
    }

    return;
  }

LABEL_30:
  if (qword_100936328 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_10094ADF8);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_10054573C("unknown type", 12, 2);
  __break(1u);
}

void sub_1004FCCC8()
{
  sub_1004FC6E8();
  if (!v0)
  {
    v2 = v1;
    v4[3] = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
    v4[0] = v2;
    v3 = v2;
    throwingCast<A>(_:as:failureMessage:)();

    sub_10000607C(v4);
  }
}

uint64_t sub_1004FCD88()
{
  v1 = v0;
  v2 = [v0 topLevelElementIDs];
  v3 = sub_10003980C();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = v4;
  if (v5)
  {
LABEL_3:
    v6 = 0;
    v7 = v25 & 0xC000000000000001;
    v8 = v25 & 0xFFFFFFFFFFFFFF8;
    v27 = v3;
    v28 = v1;
    v26 = v5;
    while (1)
    {
      while (1)
      {
        if (v7)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = __OFADD__(v6++, 1);
          if (v10)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_35;
          }

          v9 = *(v25 + 32 + 8 * v6);
          v10 = __OFADD__(v6++, 1);
          if (v10)
          {
            goto LABEL_34;
          }
        }

        v11 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v30;
        v13 = [v1 secondaryLevelElementIDsByTopLevelElementID];
        sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
        sub_10018BA8C();
        v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v4 + 16))
        {
          v14 = sub_10002B924(v11);
          if (v15)
          {
            break;
          }
        }

        if (v6 == v5)
        {
          goto LABEL_38;
        }
      }

      v29 = v11;
      v1 = *(*(v4 + 56) + 8 * v14);

      if (v1 >> 62)
      {
        break;
      }

      v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_25:

      v3 = v27;
      v1 = v28;
      v8 = v25 & 0xFFFFFFFFFFFFFF8;
      if (v6 == v5)
      {
        goto LABEL_38;
      }
    }

    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
      goto LABEL_25;
    }

LABEL_14:
    v17 = 0;
    v3 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v3)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v17 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v18 = *(v1 + 8 * v17 + 32);
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v5 = _CocoaArrayWrapper.endIndex.getter();
          v25 = v4;
          if (!v5)
          {
            break;
          }

          goto LABEL_3;
        }
      }

      v20 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = &v30;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v12 = v30;

      ++v17;
      if (v19 == v16)
      {
        v7 = v25 & 0xC000000000000001;
        v5 = v26;
        goto LABEL_25;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_38:

  v23 = sub_1001A577C(v12);

  return v23;
}

id sub_1004FD0EC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, char **a5, uint64_t *a6, uint64_t *a7)
{
  v8 = v7;
  v87 = type metadata accessor for UUID();
  v16 = *(v87 - 8);
  v17 = v16[8];
  __chkstk_darwin(v87);
  v86 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v93 = a2;
  v20 = sub_100353598(v19, a2);
  v91 = a3;
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID);
  }

  else
  {
    result = [a3 uncommitedElementsAccountID];
    if (!result)
    {
      return result;
    }

    v22 = result;
    v24 = [v19 uuid];
    v92 = a5;
    v25 = v16;
    v26 = v86;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = type metadata accessor for RDElementManualSortID();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v30 = v25[4];
    v31 = v26;
    v16 = v25;
    v8 = v7;
    a5 = v92;
    v30(v21 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID, v31, v87);
    *(v21 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID) = v22;
  }

  v32 = v22;
  v33 = sub_100353718(v32, a4);

  v88 = v33;
  if (!v33)
  {
  }

  v34 = *(v21 + 24);
  if (v34)
  {
    v89 = *(v21 + 16);
    v35 = v34;
  }

  else
  {
    v36._countAndFlagsBits = UUID.uuidString.getter();
    v94 = 0x7C6C61636F6CLL;
    v95 = 0xE600000000000000;
    String.append(_:)(v36);

    v35 = v95;
    v89 = v94;
  }

  v37 = *a5;

  v84 = v35;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v37;
  v82 = a7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_56:
    v37 = sub_100365788(0, *(v37 + 2) + 1, 1, v37);
    *a5 = v37;
  }

  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  if (v40 >= v39 >> 1)
  {
    v37 = sub_100365788((v39 > 1), v40 + 1, 1, v37);
    *a5 = v37;
  }

  v85 = v21;
  *(v37 + 2) = v40 + 1;
  v41 = &v37[16 * v40];
  v42 = v88;
  v43 = v84;
  *(v41 + 4) = v89;
  *(v41 + 5) = v43;
  if (*(v42 + 24))
  {
    v44 = *(v42 + 16);
    v45 = *(v42 + 24);
  }

  else
  {
    v46._countAndFlagsBits = UUID.uuidString.getter();
    v94 = 0x7C6C61636F6CLL;
    v95 = 0xE600000000000000;
    String.append(_:)(v46);

    v44 = v94;
    v45 = v95;
  }

  v47 = *a6;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *a6;
  *a6 = 0x8000000000000000;
  sub_1002C72CC(v44, v45, v89, v43, v48);

  *a6 = v94;
  v49 = [v91 secondaryLevelElementIDsByTopLevelElementID];
  sub_10003980C();
  sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
  sub_10018BA8C();
  v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v50 + 16) && (v51 = sub_10002B924(v19), (v52 & 1) != 0))
  {
    v19 = *(*(v50 + 56) + 8 * v51);

    v92 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      a6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      a6 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v91;
    v81 = v8;
    v53 = v93 & 0xFFFFFFFFFFFFFF8;
    if (v93 < 0)
    {
      v53 = v93;
    }

    v90 = v53;
    if (a6)
    {
      a5 = 0;
      v8 = v93 & 0xC000000000000001;
      v78 = (v16 + 4);
      v83 = _swiftEmptyArrayStorage;
      do
      {
        v21 = a5;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= *(v92 + 16))
            {
              goto LABEL_55;
            }

            v54 = *(v19 + 8 * v21 + 32);
          }

          v16 = v54;
          a5 = (v21 + 1);
          if (__OFADD__(v21, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          if (v8)
          {
            v55 = __CocoaDictionary.lookup(_:)();
            if (v55)
            {
              v96 = v55;
              type metadata accessor for RDElementManualSortID();
              swift_dynamicCast();
              v56 = v94;
              if (v94)
              {
                goto LABEL_41;
              }
            }
          }

          else if (*(v93 + 16))
          {
            v57 = sub_10002B924(v54);
            v37 = v91;
            if (v58)
            {
              v56 = *(*(v93 + 56) + 8 * v57);

              if (v56)
              {
                goto LABEL_41;
              }
            }
          }

          v59 = [v37 uncommitedElementsAccountID];
          if (v59)
          {
            break;
          }

          ++v21;
          if (a5 == a6)
          {
            goto LABEL_52;
          }
        }

        v60 = v59;
        v61 = [v16 uuid];
        v62 = v86;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v63 = type metadata accessor for RDElementManualSortID();
        v64 = *(v63 + 48);
        v65 = *(v63 + 52);
        v56 = swift_allocObject();
        *(v56 + 16) = 0;
        *(v56 + 24) = 0;
        (*v78)(v56 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID, v62, v87);
        *(v56 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID) = v60;
LABEL_41:
        if (*(v56 + 24))
        {
          v66 = *(v56 + 16);
          v67 = *(v56 + 24);
        }

        else
        {
          v68._countAndFlagsBits = UUID.uuidString.getter();
          v94 = 0x7C6C61636F6CLL;
          v95 = 0xE600000000000000;
          String.append(_:)(v68);

          v66 = v94;
          v67 = v95;
        }

        v69 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v67;
        v80 = v66;
        if ((v69 & 1) == 0)
        {
          v83 = sub_100365788(0, *(v83 + 2) + 1, 1, v83);
        }

        v71 = *(v83 + 2);
        v70 = *(v83 + 3);
        if (v71 >= v70 >> 1)
        {
          v83 = sub_100365788((v70 > 1), v71 + 1, 1, v83);
        }

        v72 = v83;
        *(v83 + 2) = v71 + 1;
        v73 = &v72[16 * v71];
        v74 = v79;
        *(v73 + 4) = v80;
        *(v73 + 5) = v74;
        v37 = v91;
      }

      while (a5 != a6);
    }

    else
    {
      v83 = _swiftEmptyArrayStorage;
    }

LABEL_52:

    v75 = v82;
    v76 = *v82;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v94 = *v75;
    *v75 = 0x8000000000000000;
    sub_1002C7F94(v83, v89, v84, v77);

    *v75 = v94;
  }

  else
  {
  }
}

BOOL sub_1004FD8D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3._countAndFlagsBits = 0x7C6C61636F6CLL;
  v3._object = 0xE600000000000000;
  return String.hasPrefix(_:)(v3);
}

uint64_t sub_1004FD910(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000F5104(&qword_10094AE18, &unk_1007AEF30);
  v6 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v51 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v45 - v9);
  v11 = sub_10038DA10(_swiftEmptyArrayStorage);
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v49 = v3 + 32;
  v50 = v3 + 16;
  v53 = v3;
  v54 = a1;
  v46 = (v3 + 8);

  v17 = 0;
  v45 = a1 + 64;
  v47 = v10;
  v48 = v2;
  while (v15)
  {
    v18 = v17;
LABEL_11:
    v19 = __clz(__rbit64(v15)) | (v18 << 6);
    v20 = v53;
    v21 = (*(v54 + 48) + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v24 = v52;
    (*(v53 + 16))(v10 + *(v52 + 48), *(v54 + 56) + *(v53 + 72) * v19, v2);
    *v10 = v23;
    v10[1] = v22;
    v25 = v51;
    sub_1004FE98C(v10, v51);
    v26 = *(v24 + 48);
    v27 = *v25;
    v28 = v25[1];
    (*(v20 + 32))(v55, v25 + v26, v2);

    Date.timeIntervalSinceReferenceDate.getter();
    v30 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v11;
    v33 = sub_100005F4C(v27, v28);
    v34 = v11[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_22;
    }

    v37 = v32;
    if (v11[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100373044();
      }
    }

    else
    {
      sub_100369F58(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_100005F4C(v27, v28);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_24;
      }

      v33 = v38;
    }

    v15 &= v15 - 1;
    v11 = v56;
    if (v37)
    {
      *(v56[7] + 8 * v33) = v30;

      v2 = v48;
      (*v46)(v55, v48);
      v10 = v47;
      sub_1004FE9FC(v47);
    }

    else
    {
      v56[(v33 >> 6) + 8] |= 1 << v33;
      v40 = (v11[6] + 16 * v33);
      *v40 = v27;
      v40[1] = v28;
      *(v11[7] + 8 * v33) = v30;
      v2 = v48;
      (*v46)(v55, v48);
      v10 = v47;
      sub_1004FE9FC(v47);
      v41 = v11[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_23;
      }

      v11[2] = v43;
    }

    v17 = v18;
    v12 = v45;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return v11;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1004FDD00(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v94 = a2;
  v83 = a3;
  v96 = a5;
  v7 = type metadata accessor for Date();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = *(v88 + 64);
  __chkstk_darwin(v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for REMManualOrdering.ElementType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004FCD88();
  v95 = a1;
  REMManualOrdering.elementType.getter();
  v20 = v93;
  v21 = sub_1002184FC(v19);
  v92 = v20;
  v93 = v21;
  if (v20)
  {
    (*(v15 + 8))(v18, v14);

    return;
  }

  v84 = a4;
  v82 = v13;
  v91 = v10;
  (*(v15 + 8))(v18, v14);

  v102 = _swiftEmptyArrayStorage;
  v100 = _swiftEmptyDictionarySingleton;
  v101 = _swiftEmptyDictionarySingleton;
  v22 = v95;
  v23 = [v95 topLevelElementIDs];
  sub_10003980C();
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = v92;

    v95 = v22;

    if (!i)
    {
      break;
    }

    v27 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v28 = *(v24 + 8 * v27 + 32);
      }

      v22 = v28;
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v98 = v28;
      sub_1004FD0EC(&v98, v93, v95, v94, &v102, &v100, &v101);

      ++v27;
      v22 = v96;
      if (v29 == i)
      {
        goto LABEL_15;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v22 = v96;
LABEL_15:

  swift_bridgeObjectRelease_n();

  v30 = v94;

  v31 = sub_10038FF50(_swiftEmptyArrayStorage);
  if ((v30 & 0xC000000000000001) != 0)
  {
    v32 = 0;
    v24 = 0;
    v85 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    v86 = 0;
  }

  else
  {
    v33 = -1 << *(v30 + 32);
    v32 = ~v33;
    v34 = *(v30 + 64);
    v85 = v30;
    v86 = v30 + 64;
    v35 = -v33;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v24 = v36 & v34;
  }

  v37 = v89;

  v38 = 0;
  v79 = v32;
  v39 = (v32 + 64) >> 6;
  v87 = (v88 + 32);
  v80 = v88 + 40;
  v40 = v84;
  v41 = v91;
  v81 = v39;
  while ((v85 & 0x8000000000000000) == 0)
  {
    v42 = v38;
    v43 = v24;
    v44 = v38;
    if (!v24)
    {
      while (1)
      {
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v44 >= v39)
        {
          goto LABEL_49;
        }

        v43 = *(v86 + 8 * v44);
        ++v42;
        if (v43)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

LABEL_29:
    v92 = v26;
    v45 = (v43 - 1) & v43;
    v46 = *(*(v85 + 56) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));

    if (!v46)
    {
      goto LABEL_47;
    }

LABEL_33:
    v49 = v31;
    v50 = *(v46 + 24);
    v90 = v45;
    v93 = v46;
    if (v50)
    {
      v51 = v41;
      v52 = *(v46 + 16);
      v53 = v50;
    }

    else
    {
      v54._countAndFlagsBits = UUID.uuidString.getter();
      v98 = 0x7C6C61636F6CLL;
      v99 = 0xE600000000000000;
      String.append(_:)(v54);
      v51 = v91;

      v52 = v98;
      v53 = v99;
    }

    v55 = v82;

    v56 = [v95 modifiedDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = *v87;
    (*v87)(v51, v55, v37);
    v22 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v49;
    v24 = v52;
    v59 = v52;
    v60 = v53;
    v61 = v22;
    v63 = sub_100005F4C(v59, v53);
    v64 = v22[2];
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      goto LABEL_55;
    }

    v22 = v62;
    if (v61[3] >= v66)
    {
      v41 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100375A1C();
        v41 = v91;
      }

      v37 = v89;
      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_10036ED70(v66, isUniquelyReferenced_nonNull_native);
      v67 = sub_100005F4C(v24, v53);
      if ((v22 & 1) != (v68 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v63 = v67;
      v37 = v89;
      v41 = v91;
      if (v22)
      {
LABEL_22:

        v31 = v98;
        (*(v88 + 40))(*(v98 + 56) + *(v88 + 72) * v63, v41, v37);

        goto LABEL_23;
      }
    }

    v31 = v98;
    *(v98 + 8 * (v63 >> 6) + 64) |= 1 << v63;
    v69 = (v31[6] + 16 * v63);
    *v69 = v24;
    v69[1] = v60;
    v57((v31[7] + *(v88 + 72) * v63), v41, v37);

    v70 = v31[2];
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      goto LABEL_56;
    }

    v31[2] = v72;
LABEL_23:
    v38 = v44;
    v24 = v90;
    v40 = v84;
    v22 = v96;
    v26 = v92;
    v39 = v81;
  }

  if (__CocoaDictionary.Iterator.next()())
  {
    v48 = v47;
    v92 = v26;
    swift_unknownObjectRelease();
    v97 = v48;
    type metadata accessor for RDAccountManualSortID();
    swift_dynamicCast();
    v46 = v98;
    v44 = v38;
    v45 = v24;
    v22 = v96;
    v41 = v91;
    if (!v98)
    {
LABEL_47:
      v40 = v84;
      v26 = v92;
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  v22 = v96;
LABEL_49:
  sub_10001B860();

  v73 = v102;
  v75 = v100;
  v74 = v101;

  v76 = sub_1004FD910(v31);

  v78 = sub_1001A6DC0(v77);
  sub_10015E0CC(v73, v75, v78);
  if (v26)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    *v22 = v73;
    v22[1] = v74;
    v22[2] = v75;
    v22[3] = v76;
    v22[4] = v78;
  }
}

uint64_t sub_1004FE558(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = _swiftEmptyArrayStorage;
    v54 = _swiftEmptyArrayStorage;
    v6 = a2[2];
    if (v6)
    {
      v8 = a2 + 5;
      do
      {
        if (*(a4 + 16))
        {
          v10 = *(v8 - 1);
          v9 = *v8;

          v11 = sub_100005F4C(v10, v9);
          if (v12)
          {
            v13 = (*(a4 + 56) + 16 * v11);
            v14 = *v13 == 0x6C61636F6CLL && v13[1] == 0xE500000000000000;
            if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v15 = v54;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_100365788(0, *(v54 + 2) + 1, 1, v54);
              }

              v17 = *(v15 + 2);
              v16 = *(v15 + 3);
              if (v17 >= v16 >> 1)
              {
                v15 = sub_100365788((v16 > 1), v17 + 1, 1, v15);
              }

              *(v15 + 2) = v17 + 1;
              v18 = &v15[16 * v17];
              *(v18 + 4) = v10;
              *(v18 + 5) = v9;
              v54 = v15;
              if (*(a3 + 16))
              {
                v19 = sub_100005F4C(v10, v9);
                if (v20)
                {
                  v21 = *(*(a3 + 56) + 8 * v19);

                  sub_100271EA8(v22);
                }
              }
            }
          }
        }

        v8 += 2;
        --v6;
      }

      while (v6);
LABEL_42:
      v5 = v54;
    }

    v40 = *(v5 + 2);
    if (v40)
    {
      v41 = 0;
      v42 = v5 + 40;
      do
      {
        v43 = &v42[2 * v41];
        v44 = v41;
        while (1)
        {
          if (v44 >= *(v5 + 2))
          {
            __break(1u);
            goto LABEL_57;
          }

          v46 = *(v43 - 1);
          v45 = *v43;
          v41 = v44 + 1;

          v47._countAndFlagsBits = 0x7C6C61636F6CLL;
          v47._object = 0xE600000000000000;
          if (String.hasPrefix(_:)(v47))
          {
            break;
          }

          v43 += 2;
          ++v44;
          if (v40 == v41)
          {
            goto LABEL_55;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v52 = v42;
        if ((result & 1) == 0)
        {
          result = sub_100026EF4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v49 = _swiftEmptyArrayStorage[2];
        v48 = _swiftEmptyArrayStorage[3];
        if (v49 >= v48 >> 1)
        {
          result = sub_100026EF4((v48 > 1), v49 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v49 + 1;
        v50 = &_swiftEmptyArrayStorage[2 * v49];
        v50[4] = v46;
        v50[5] = v45;
        v42 = v52;
      }

      while (v40 - 1 != v44);
    }

LABEL_55:

    v51 = sub_1001A5660(_swiftEmptyArrayStorage);

    return v51;
  }

  else
  {
    v23 = 1 << *(a3 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a3 + 64);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v28 = _swiftEmptyArrayStorage;
    while (v25)
    {
LABEL_29:
      v30 = (v27 << 9) | (8 * __clz(__rbit64(v25)));
      v31 = *(*(a3 + 56) + v30);
      v32 = *(v31 + 16);
      v33 = *(v28 + 2);
      v34 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        goto LABEL_58;
      }

      v35 = *(*(a3 + 56) + v30);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v34 > *(v28 + 3) >> 1)
      {
        if (v33 <= v34)
        {
          v36 = v33 + v32;
        }

        else
        {
          v36 = v33;
        }

        result = sub_100365788(result, v36, 1, v28);
        v28 = result;
      }

      v25 &= v25 - 1;
      if (*(v31 + 16))
      {
        if ((*(v28 + 3) >> 1) - *(v28 + 2) < v32)
        {
          goto LABEL_60;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v37 = *(v28 + 2);
          v38 = __OFADD__(v37, v32);
          v39 = v37 + v32;
          if (v38)
          {
            goto LABEL_61;
          }

          *(v28 + 2) = v39;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_59;
        }
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v54 = a2;

        result = sub_100271EA8(v28);
        goto LABEL_42;
      }

      v25 = *(a3 + 64 + 8 * v29);
      ++v27;
      if (v25)
      {
        v27 = v29;
        goto LABEL_29;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004FE98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094AE18, &unk_1007AEF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FE9FC(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094AE18, &unk_1007AEF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004FEA64()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094AE20);
  v1 = sub_100006654(v0, qword_10094AE20);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004FEB2C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = *(v1 + 24);
    v36[0] = 0xD00000000000002ELL;
    v36[1] = 0x80000001007FB4E0;
    v36[3] = 0;
    v37[0] = 0;
    v36[2] = 0;
    *(v37 + 6) = 0;
    v10 = sub_100403B0C(v36, sub_1004FF128, 0);
    v19 = *(v1 + 72);
    if (v10)
    {
      if (v19 != 2 && (v19 & 1) != 0)
      {
        if (qword_100936338 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100006654(v20, qword_10094AE20);
        v12 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v12, v21))
        {
          goto LABEL_5;
        }

        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = "ENABLE significantTimeChageNotification XPC event. Skipping because values match";
        goto LABEL_30;
      }

      *(v1 + 72) = 1;
      if (qword_100936338 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006654(v28, qword_10094AE20);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "ENABLE significantTimeChageNotification XPC event", v31, 2u);
      }

      v32 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v32, "Notification", "SignificantTimeChangeNotification");
      xpc_set_event();
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19 != 2 && (v19 & 1) == 0)
      {
        if (qword_100936338 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100006654(v33, qword_10094AE20);
        v12 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v12, v21))
        {
          goto LABEL_5;
        }

        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = "DISABLE significantTimeChageNotification XPC event. Skipping because values match";
LABEL_30:
        _os_log_impl(&_mh_execute_header, v12, v21, v23, v22, 2u);

        goto LABEL_5;
      }

      *(v1 + 72) = 0;
      if (qword_100936338 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_10094AE20);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "DISABLE significantTimeChageNotification XPC event", v27, 2u);
      }

      xpc_set_event();
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10094AE20);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34[1] = v6;
      v35 = v15;
      *v14 = 136446210;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000668C(v16, v17, &v35);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error updating significantTimeChageNotification {error: %{public}s}", v14, 0xCu);
      sub_10000607C(v15);

LABEL_5:

      return;
    }
  }
}

void sub_1004FF128(BOOL *a1@<X8>)
{
  v3 = _s10PredicatesOMa(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v7 = sub_100043AA8();
  sub_1000513B4(v6);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  [v8 setPredicate:v7];
  [v8 setResultType:1];

  [v8 setFetchLimit:1];
  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v10 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    if (v10 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a1 = v11 != 0;
  }
}

uint64_t sub_1004FF300()
{
  sub_10000607C((v0 + 32));

  return swift_deallocClassInstance();
}

id sub_1004FF37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 24))();
  if (!v4)
  {
    v6 = v5;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100791300;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = 0x696669746E656469;
    *(v7 + 40) = 0xEA00000000007265;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setPropertiesToFetch:isa];

    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    v9 = NSManagedObjectContext.fetch<A>(_:)();
    v22[3] = sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
    v22[0] = v9;
    sub_1000F5104(&qword_10094AEF0, &qword_1007B3C30);
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v22);
    v11 = v23;
    v22[0] = _swiftEmptyArrayStorage;
    v21 = v6;
    v12 = v23 & 0xFFFFFFFFFFFFFF8;
    if (v23 >> 62)
    {
LABEL_21:
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    while (v13 != v14)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v14 >= *(v12 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(v11 + 8 * v14 + 32);
        swift_unknownObjectRetain();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      v17 = [v15 remObjectID];
      swift_unknownObjectRelease();
      ++v14;
      if (v17)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = v16;
      }
    }

    v19 = objc_allocWithZone(REMFetchResult);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v20 = Array._bridgeToObjectiveC()().super.isa;

    v3 = [v19 initWithRequestedObjectIDs:v20];
  }

  return v3;
}

NSString sub_1004FF6DC(void *a1)
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

        v15 = sub_1005003E4(a1, v6, v10, v13, v4);
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
        if (qword_100936348 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100006654(v31, qword_10094AF10);
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
          _os_log_impl(&_mh_execute_header, v33, v34, "%s: cdSmartListSection.displayName is nil {cdSmartListSection.remObjectID: %@}", v35, 0x16u);
          sub_1000050A4(v36, &unk_100938E70, &unk_100797230);

          sub_10000607C(v50);
        }

        v41 = objc_opt_self();
        type metadata accessor for REMCDSmartListSection();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v4 = String._bridgeToObjectiveC()();
        [v41 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v4];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100936348 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_10094AF10);
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
        _os_log_impl(&_mh_execute_header, v18, v19, "%s: cdSmartListSection.account is nil {cdSmartListSection.remObjectID: %@}", v20, 0x16u);
        sub_1000050A4(v21, &unk_100938E70, &unk_100797230);

        sub_10000607C(v22);
      }

      v27 = objc_opt_self();
      type metadata accessor for REMCDSmartListSection();
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

unint64_t sub_1004FFD94@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100500824(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1004FFDD4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100500824(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004FFDFC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1B98, *a1);

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

uint64_t sub_1004FFE6C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1B98, v3);

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

unint64_t sub_1004FFED0()
{
  result = sub_1004FFEF0();
  qword_100974F28 = result;
  return result;
}

unint64_t sub_1004FFEF0()
{
  v1 = 0;
  v2 = 0x80000001007E8C60;
  v3 = 0x4E79616C70736964;
  v4 = 0xD000000000000017;
  do
  {
    while (1)
    {
      v7 = &off_1008E2150 + v1++;
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
  v3 = 0xE700000000000000;
  v4 = 0x746E756F636361;
  v0 = 0x49746E756F636361;
  isUniquelyReferenced_nonNull_native = 0xE900000000000044;
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
        v0 = result;

        v32 = (_swiftEmptyDictionarySingleton[7] + 16 * v0);
        v33 = v32[1];
        *v32 = v4;
        v32[1] = v3;

        goto LABEL_40;
      }

LABEL_38:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      v35 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
      *v35 = v0;
      v35[1] = isUniquelyReferenced_nonNull_native;
      v36 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
      *v36 = v4;
      v36[1] = v3;
      v37 = _swiftEmptyDictionarySingleton[2];
      v20 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v20)
      {
        goto LABEL_52;
      }

      _swiftEmptyDictionarySingleton[2] = v38;
LABEL_40:
      v13 = 0x4449746E65726170;
      v2 = v14 + 48;
      v1 = 0x73694C7472616D73;
      v14 = 0xE800000000000000;
      LOBYTE(isUniquelyReferenced_nonNull_native) = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
      v40 = _swiftEmptyDictionarySingleton[2];
      v41 = (v39 & 1) == 0;
      v20 = __OFADD__(v40, v41);
      v42 = v40 + v41;
      if (!v20)
      {
        LOBYTE(v0) = v39;
        if (_swiftEmptyDictionarySingleton[3] >= v42)
        {
          goto LABEL_44;
        }

        sub_10036A8F0(v42, isUniquelyReferenced_nonNull_native);
        result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
        if ((v0 & 1) != (v43 & 1))
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
    v34 = result;
    sub_100373664();
    result = v34;
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
  v47 = result;
  sub_100373664();
  result = v47;
  if (v0)
  {
LABEL_46:
    v44 = result;

    v45 = (_swiftEmptyDictionarySingleton[7] + 16 * v44);
    v46 = v45[1];
    *v45 = v1;
    v45[1] = v2;

    return _swiftEmptyDictionarySingleton;
  }

LABEL_49:
  _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
  v48 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
  *v48 = v13;
  v48[1] = v14;
  v49 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
  *v49 = v1;
  v49[1] = v2;
  v50 = _swiftEmptyDictionarySingleton[2];
  v20 = __OFADD__(v50, 1);
  v51 = v50 + 1;
  if (!v20)
  {
    _swiftEmptyDictionarySingleton[2] = v51;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_52:
  __break(1u);
  return result;
}

void *sub_1005003E4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v16 = [a1 smartList];
  if (v16 && (v17 = v16, v6 = [v16 remObjectID], v17, v6))
  {
    v18 = objc_allocWithZone(REMSmartListSectionStorage);
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
    if (qword_100936348 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10094AF10);
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
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: cdSmartListSection.smartList is nil {cdSmartListSection.remObjectID: %@}", v29, 0x16u);
      sub_1000050A4(v6, &unk_100938E70, &unk_100797230);

      sub_10000607C(v30);
    }

    v35 = objc_opt_self();
    type metadata accessor for REMCDSmartListSection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = String._bridgeToObjectiveC()();
    [v35 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v37];

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100500824(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E11C8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_100500870(void *a1, void *a2, uint64_t a3)
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
    v19 = sub_100696170(v17, a3);
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
          sub_1006944C8(2u);
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
          sub_1006944C8(3u);
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
          sub_1006944C8(1u);
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

  if (qword_100936340 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100006654(v38, qword_10094AEF8);
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
    _os_log_impl(&_mh_execute_header, v40, v41, "%s: merge(storage:into cdSection:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v42, 0x20u);
    sub_1000050A4(v76, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  v68 = objc_opt_self();
  sub_10050192C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v70 = String._bridgeToObjectiveC()();
  [v68 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v70];

  swift_willThrow();
LABEL_49:
}

void sub_100501084(id a1, id a2, char a3, uint64_t a4)
{
  v6 = v4;
  if ((a3 & 1) == 0)
  {
    v11 = [a1 accountID];
    sub_10068C1CC(0, v11, a4);
    if (!v5)
    {
      v22 = qword_100936340;
      v23 = v21;
      if (v22 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_10094AEF8);
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
        _os_log_impl(&_mh_execute_header, v27, v69, "Updating cdSmartListSection.account {cdSmartListSection: %{public}s, account: %{public}s}", v29, 0x16u);
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
    if (qword_100936340 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_10094AEF8);
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
      _os_log_impl(&_mh_execute_header, v41, v42, "%s: establishRelationship(onStorage:into cdSmartListSection:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v43, 0x20u);
      sub_1000050A4(v44, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v49 = objc_opt_self();
    sub_10050192C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = String._bridgeToObjectiveC()();
    [v49 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v51];

    swift_willThrow();
    goto LABEL_18;
  }

  v13 = v12;
  sub_1000F5104(&qword_100943458, &qword_1007AF070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 1;
  v15 = sub_1006967D0(v13, inited);
  swift_setDeallocating();
  v16 = [a1 smartListID];
  sub_1006934A4(1);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v11 mergeWithMap:v15 forKey:v17];

  if (v18)
  {
    if (v16)
    {
      v19 = v16;
      sub_10068C1FC(1, v19, a4);
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

    if (qword_100936340 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_10094AEF8);
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
        v65 = 0xEE003E7473696C74;
        v63 = 0x72616D73206F6E3CLL;
      }

      v66 = sub_10000668C(v63, v65, &v75);

      *(v58 + 14) = v66;
      _os_log_impl(&_mh_execute_header, log, v67, "Updating cdSmartListSection.smartList {cdSmartListSection: %{public}s, smartList: %{public}s}", v58, 0x16u);
      swift_arrayDestroy();

      v55 = v70;
      v54 = v71;
    }

    else
    {
    }

    [v55 setSmartList:v54];
  }
}

unint64_t sub_10050192C()
{
  result = qword_1009405A0;
  if (!qword_1009405A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009405A0);
  }

  return result;
}

unint64_t sub_1005019CC()
{
  result = qword_10094B0D8;
  if (!qword_10094B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B0D8);
  }

  return result;
}

unint64_t sub_100501A54()
{
  result = qword_10094B0F0;
  if (!qword_10094B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B0F0);
  }

  return result;
}

uint64_t sub_100501AA8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B0F8);
  v1 = sub_100006654(v0, qword_10094B0F8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100501B70(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v139 = a3;
  v130 = a2;
  v141 = a1;
  v121 = a5;
  v6 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v131 = &v110 - v8;
  v9 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v115 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for REMRemindersListDataView.TemplateModel();
  v119 = *(v120 - 8);
  v12 = *(v119 + 64);
  __chkstk_darwin(v120);
  v117 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v128 = &v110 - v15;
  v118 = type metadata accessor for REMRemindersListDataView.Diff();
  v127 = *(v118 - 8);
  v16 = v127[8];
  __chkstk_darwin(v118);
  v116 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = &v110 - v19;
  __chkstk_darwin(v20);
  v126 = &v110 - v21;
  __chkstk_darwin(v22);
  v132 = &v110 - v23;
  v24 = type metadata accessor for UUID();
  v124 = *(v24 - 8);
  v125 = v24;
  v25 = *(v124 + 64);
  __chkstk_darwin(v24);
  v123 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v114 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v110 - v31;
  v33 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v134 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = _s9UtilitiesO12SortingStyleOMa();
  v36 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v38 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v135 = (&v110 - v40);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v136 = *(Subtasks - 8);
  v42 = v136[8];
  __chkstk_darwin(Subtasks);
  v44 = &v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration();
  v46 = *(Configuration - 8);
  v137 = Configuration;
  v138 = v46;
  v47 = *(v46 + 8);
  __chkstk_darwin(Configuration);
  v49 = &v110 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v110 - v51;
  v53 = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.templateObjectID.getter();
  v54 = v140;
  sub_100262C94(v53, v141, v139);
  if (v54)
  {
  }

  else
  {
    v113 = Subtasks;
    v140 = v55;
    v112 = v32;
    v139 = 0;
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.fetchSubtasks.getter();
    v57 = (v138 + 8);
    v56 = *(v138 + 1);
    v58 = v52;
    v59 = v137;
    v56(v58, v137);
    v110 = a4;
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
    v60 = v134;
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.sortingStyle.getter();
    v138 = v57;
    v111 = v56;
    v56(v49, v59);
    v61 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
    v62 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v62 - 8) + 104))(v38, v61, v62);
    swift_storeEnumTagMultiPayload();
    v63 = v135;
    sub_1005368D8(v60, v38, v135);
    v64 = v141;
    v65 = v139;
    v66 = sub_100268564(v53, v141, v44, v63);
    v67 = v53;
    if (v65)
    {

      sub_1001EB4C4(v63);
      (v136[1])(v44, v113);
    }

    else
    {
      v68 = v63;
      v69 = v66;
      sub_1001EB4C4(v68);
      (v136[1])(v44, v113);
      v70 = [v140 accountID];
      REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
      ManualOrdering = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.shouldFetchManualOrderingID.getter();
      v111(v49, v137);
      v136 = v70;
      if (ManualOrdering)
      {
        v72 = v53;
        v73 = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.templateObjectID.getter();
        v74 = [v73 uuid];

        v75 = v123;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v76 = UUID.uuidString.getter();
        v78 = v77;
        (*(v124 + 8))(v75, v125);
        sub_10053F868(6, v76, v78, v70, v64);
        v80 = v132;
        v81 = v112;
        if (!v79)
        {
          v79 = [objc_opt_self() newObjectID];
        }

        v82 = v79;
        REMObjectID.codable.getter();
        REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)();

        v83 = 0;
        v67 = v72;
      }

      else
      {
        v83 = 1;
        v80 = v132;
        v81 = v112;
      }

      v84 = type metadata accessor for REMManualOrdering.ManualOrderingID();
      (*(*(v84 - 8) + 56))(v81, v83, 1, v84);
      type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation();
      v85 = [v129 fetchResultTokenToDiffAgainst];
      sub_100262FE8(v85, v80);
      v86 = v131;
      v141 = v67;
      v139 = 0;

      v87 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
      (*(*(v87 - 8) + 56))(v86, 1, 1, v87);
      v88 = v140;

      REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
      sub_100502988(v81, v114);
      v140 = v88;
      REMRemindersListDataView.TemplateModel.init(listRepresentationOfTemplate:model:manualOrderingID:)();
      if (qword_100936358 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      sub_100006654(v89, qword_10094B0F8);
      v91 = v126;
      v90 = v127;
      v92 = v127[2];
      v93 = v118;
      v92(v126, v80, v118);
      v94 = v122;
      v138 = v92;
      v92(v122, v80, v93);

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 134218496;
        v98 = *(v69 + 16);

        *(v97 + 4) = v98;

        *(v97 + 12) = 2048;
        v99 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
        if ((v99 & 0xC000000000000001) != 0)
        {
          v100 = __CocoaSet.count.getter();
        }

        else
        {
          v100 = *(v99 + 16);
        }

        v104 = v127[1];
        v137 = (v127 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v104(v126, v93);
        *(v97 + 14) = v100;
        *(v97 + 22) = 2048;
        v105 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
        if ((v105 & 0xC000000000000001) != 0)
        {
          v106 = __CocoaSet.count.getter();
          v94 = v122;
        }

        else
        {
          v106 = *(v105 + 16);
        }

        v104(v94, v93);
        *(v97 + 24) = v106;
        _os_log_impl(&_mh_execute_header, v95, v96, "REMRemindersListDataView.TemplateInvocation: reminders %ld updated %ld inserted %ld", v97, 0x20u);

        v103 = v120;
        v102 = v93;
        v135 = v104;
      }

      else
      {
        v101 = v90[1];
        v137 = (v90 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v101(v94, v93);
        v135 = v101;
        v101(v91, v93);

        swift_bridgeObjectRelease_n();
        v102 = v93;
        v103 = v120;
      }

      v107 = v119;
      v108 = v128;
      (*(v119 + 16))(v117, v128, v103);
      v109 = v132;
      v138(v116, v132, v102);
      sub_1005029F8(&qword_10094B138, &type metadata accessor for REMRemindersListDataView.TemplateModel);
      sub_1005029F8(&qword_10094B140, &type metadata accessor for REMRemindersListDataView.TemplateModel);
      REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

      (*(v107 + 8))(v108, v103);
      v135(v109, v102);
      sub_100502920(v112);
    }
  }
}

uint64_t sub_1005028C8(uint64_t a1)
{
  result = sub_1005029F8(&qword_10094B130, &type metadata accessor for REMRemindersListDataView.TemplateInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100502920(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100502988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005029F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100502A40()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B148);
  v1 = sub_100006654(v0, qword_10094B148);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100502B08(void *a1)
{
  v53 = type metadata accessor for UUID();
  v56 = *(v53 - 8);
  v3 = *(v56 + 64);
  __chkstk_darwin(v53);
  v52 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v47 - v11;
  __chkstk_darwin(v13);
  v15 = (v47 - v14);
  Date.init()();
  v16 = objc_autoreleasePoolPush();
  sub_100506974();
  if (v1)
  {
    objc_autoreleasePoolPop(v16);
    return (*(v6 + 8))(v15, v5);
  }

  else
  {
    v19 = v17;
    v48 = v9;
    v50 = a1;
    v51 = v12;
    objc_autoreleasePoolPop(v16);
    if (qword_100936360 != -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_10094B148);
      v21 = v51;
      v22 = v5;
      (*(v6 + 16))(v51, v15, v5);
      swift_bridgeObjectRetain_n();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v54 = v15;
      v55 = v19;
      v26 = v52;
      v49 = v6;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v47[1] = v28;
        *v27 = 136315906;
        v57 = &_s48MigrateRemindersFromZREMCDOBJECTToZREMCDREMINDERON;
        v58 = v28;
        sub_1000F5104(&unk_10094B200, &unk_1007AF310);
        v29 = String.init<A>(describing:)();
        v47[0] = v23;
        v31 = sub_10000668C(v29, v30, &v58);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_10000668C(0xD000000000000023, 0x80000001007FB800, &v58);
        *(v27 + 22) = 2050;
        v32 = *(v55 + 16);

        *(v27 + 24) = v32;

        *(v27 + 32) = 2048;
        v33 = v6;
        v34 = v24;
        v35 = v48;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v37 = v36;
        v38 = *(v33 + 8);
        v38(v35, v22);
        v48 = v38;
        v38(v21, v22);
        *(v27 + 34) = v37;
        v39 = v47[0];
        _os_log_impl(&_mh_execute_header, v47[0], v34, "[%s|%s] Did fetch identifier of all REMCDList {listIdentifiers.count: %{public}ld, cumulative elapsedSeconds: %f}", v27, 0x2Au);
        swift_arrayDestroy();

        v19 = v55;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v48 = *(v6 + 8);
        v48(v21, v22);
      }

      v15 = v50;
      v51 = v22;
      v58 = 0;
      v40 = *(v19 + 16);
      v6 = v53;
      if (!v40)
      {
        break;
      }

      v41 = 0;
      v5 = (v56 + 8);
      while (v41 < *(v19 + 16))
      {
        (*(v56 + 16))(v26, v19 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v41, v6);
        v42 = objc_autoreleasePoolPush();
        sub_100503134(v26, v15, v54, &v58, &v57);
        ++v41;
        (*v5)(v26, v6);
        objc_autoreleasePoolPop(v42);
        v19 = v55;
        if (v40 == v41)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_17:
      swift_once();
    }

LABEL_11:

    v43 = [v15 hasChanges];
    v44 = v51;
    if (v43)
    {
      v57 = 0;
      if ([v15 save:&v57])
      {
        v45 = v57;
        [v15 refreshAllObjects];
      }

      else
      {
        v46 = v57;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    return (v48)(v54, v44);
  }
}

void sub_100503134(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v303 = a5;
  v316 = a4;
  v324 = a3;
  v296 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v296 - 1) + 64);
  __chkstk_darwin(v296);
  *&v295 = &v274 - v8;
  v9 = sub_1000F5104(&qword_100947E50, &unk_1007AF320);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v322 = &v274 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v305 = &v274 - v13;
  v300 = type metadata accessor for Date();
  v299 = *(v300 - 8);
  v14 = v299[8];
  __chkstk_darwin(v300);
  v289 = &v274 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v293 = &v274 - v17;
  __chkstk_darwin(v18);
  v323 = &v274 - v19;
  v321 = type metadata accessor for UUID();
  v312 = *(v321 - 8);
  v20 = *(v312 + 64);
  __chkstk_darwin(v321);
  v297 = &v274 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v304 = &v274 - v23;
  __chkstk_darwin(v24);
  v309 = &v274 - v25;
  __chkstk_darwin(v26);
  v28 = (&v274 - v27);
  __chkstk_darwin(v29);
  v31 = &v274 - v30;
  __chkstk_darwin(v32);
  v34 = &v274 - v33;
  __chkstk_darwin(v35);
  v37 = &v274 - v36;
  __chkstk_darwin(v38);
  v40 = &v274 - v39;
  __chkstk_darwin(v41);
  v43 = &v274 - v42;
  __chkstk_darwin(v44);
  v46 = &v274 - v45;
  v47 = v326;
  v48 = sub_100507158(a1, a2);
  if (v47)
  {
    *v303 = v47;
    return;
  }

  v318 = v46;
  v306 = v28;
  v310 = v48;
  v302 = v43;
  v287 = v34;
  v288 = v31;
  v325 = v37;
  v326 = a2;
  v319 = v40;
  v308 = a1;
  v317 = 0;
  v328 = _swiftEmptyDictionarySingleton;
  v329 = _swiftEmptyDictionarySingleton;
  if (qword_100936360 != -1)
  {
    goto LABEL_136;
  }

LABEL_4:
  v49 = type metadata accessor for Logger();
  v50 = sub_100006654(v49, qword_10094B148);
  v51 = v312;
  v52 = *(v312 + 16);
  v53 = v318;
  v54 = v321;
  v314 = v312 + 16;
  v313 = v52;
  v52(v318, v308, v321);
  v55 = v299;
  v56 = v299[2];
  v57 = v323;
  v58 = v300;
  v284 = v299 + 2;
  v283 = v56;
  v56(v323, v324, v300);
  v59 = v310;
  swift_bridgeObjectRetain_n();
  v294 = v50;
  v60 = v55;
  v61 = Logger.logObject.getter();
  LODWORD(v315) = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v61, v315);
  v63 = v319;
  v320 = (v59 >> 62);
  if (v62)
  {
    v301 = v61;
    v64 = v54;
    v65 = swift_slowAlloc();
    v66 = v51;
    v67 = v64;
    v311 = swift_slowAlloc();
    v332 = v311;
    *v65 = 136316162;
    v330 = &_s48MigrateRemindersFromZREMCDOBJECTToZREMCDREMINDERON;
    sub_1000F5104(&unk_10094B200, &unk_1007AF310);
    v68 = String.init<A>(describing:)();
    v70 = sub_10000668C(v68, v69, &v332);

    *(v65 + 4) = v70;
    *(v65 + 12) = 2080;
    *(v65 + 14) = sub_10000668C(0xD000000000000023, 0x80000001007FB800, &v332);
    *(v65 + 22) = 2082;
    sub_100507504(&qword_10093F2A0, &type metadata accessor for UUID);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v307 = *(v66 + 8);
    v307(v53, v67);
    v74 = sub_10000668C(v71, v73, &v332);

    *(v65 + 24) = v74;
    *(v65 + 32) = 2050;
    v75 = &v333;
    if (v59 >> 62)
    {
      goto LABEL_139;
    }

    v76 = v310;
    v77 = *((v310 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v78 = v301;

    *(v65 + 34) = v77;

    *(v65 + 42) = 2048;
    v79 = v293;
    Date.init()();
    v80 = v323;
    Date.timeIntervalSince(_:)();
    v82 = v81;
    v83 = v299[1];
    v84 = v79;
    v85 = v300;
    v83(v84, v300);
    v282 = v83;
    v83(v80, v85);
    *(v65 + 44) = v82;
    _os_log_impl(&_mh_execute_header, v78, v315, "[%s|%s] Did fetch NSManagedObjectID of reminders in ZREMCDOBJECT SQL table {list.identifier: %{public}s, reminders.count: %{public}ld, cumulative elapsedSeconds: %f}", v65, 0x34u);
    swift_arrayDestroy();

    v54 = v321;
    v51 = v312;
    v87 = v76;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v282 = v60[1];
    v282(v57, v58);
    v307 = *(v51 + 8);
    v307(v53, v54);
    v87 = v59;
  }

  v88 = v324;
  v89 = v325;
  v90 = v326;
  v91 = v322;
  if (v320)
  {
    v92 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v92 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v92)
  {
    v301 = 0;
    v292 = 0;
    v286 = 0x80000001007FB800;
    goto LABEL_60;
  }

  v93 = v51;
  v94 = 0;
  v292 = 0;
  v301 = 0;
  v320 = (v87 & 0xC000000000000001);
  v318 = v87 & 0xFFFFFFFFFFFFFF8;
  v291 = (v93 + 8);
  v286 = 0x80000001007FB800;
  v281 = (v93 + 56);
  *&v86 = 136315906;
  v280 = v86;
  v290 = xmmword_1007953F0;
  v315 = v92;
  do
  {
    if (v320)
    {
      v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v94 >= *(v318 + 16))
      {
        goto LABEL_130;
      }

      v96 = *(v87 + 8 * v94 + 32);
    }

    v97 = v96;
    v65 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      goto LABEL_129;
    }

    v98 = objc_autoreleasePoolPush();
    v332 = 0;
    v99 = [v90 existingObjectWithID:v97 error:&v332];
    v100 = v332;
    if (!v99)
    {
      v169 = v332;
      v170 = _convertNSErrorToError(_:)();

      swift_willThrow();

      goto LABEL_122;
    }

    v101 = v99;
    v323 = v97;
    type metadata accessor for REMCDReminderInZREMCDOBJECT();
    v63 = swift_dynamicCastClass();
    v102 = v100;
    if (!v63 || ([v63 markedForDeletion] & 1) != 0)
    {
      v90 = v326;
      v95 = v323;
      goto LABEL_14;
    }

    type metadata accessor for REMCDReminderInZREMCDREMINDER();
    v103 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v104 = [v103 initWithContext:v326];
    sub_1005055F0(v63);
    v105 = [v63 ckCloudState];
    if (v105)
    {
      v106 = v105;
      [v105 setObject:0];
      [v106 setSavedAttachment:0];
      [v106 setSavedReminder:0];
      [v106 setTemplate:0];
      [v106 setReminderInZREMCDREMINDER:v104];
    }

    v311 = v104;
    v107 = [v63 parentReminder];
    v108 = v308;
    if (!v107)
    {
      v122 = [v63 identifier];
      if (v122)
      {
        v123 = v122;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v124 = v302;
        v125 = v321;
        v313(v302, v309, v321);
        sub_10031E2B4([v311 ic_permanentObjectID], v124);
        v307(v309, v125);
      }

      v75 = (v292 + 1);
      if (__OFADD__(v292, 1))
      {
        __break(1u);
LABEL_139:
        v76 = *(v75 - 32);
        v77 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_7;
      }

      ++v292;
      v88 = v324;
      v87 = v310;
      goto LABEL_54;
    }

    v298 = v107;
    v109 = [v107 identifier];
    if (v109)
    {
      v110 = v109;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v111 = v329;
      if (v329[2])
      {
        v112 = sub_100363F20(v306);
        if (v113)
        {
          v114 = *(v111[7] + 8 * v112);
          v332 = 0;
          *&v285 = v114;
          v115 = [v326 existingObjectWithID:? error:?];
          v116 = v332;
          if (!v115)
          {
            v273 = v332;
            v170 = _convertNSErrorToError(_:)();

            swift_willThrow();
            v307(v306, v321);

LABEL_121:
            v97 = v323;
LABEL_122:

            objc_autoreleasePoolPop(v98);

            *v303 = v170;
            return;
          }

          v117 = v115;
          v118 = swift_dynamicCastClass();
          v119 = v116;
          if (v118)
          {
            v120 = v117;
            [v311 setParentReminder:v118];

            v121 = v306;
LABEL_47:
            v307(v121, v321);
LABEL_51:
            v87 = v310;
            goto LABEL_52;
          }
        }
      }

      v142 = [v311 ic_permanentObjectID];
      v143 = v328;
      v144 = v306;
      if (v328[2])
      {
        sub_100363F20(v306);
        if (v145)
        {
          v146 = v144;
          v147 = v297;
          v313(v297, v146, v321);
          v148 = sub_100261BCC(&v332);
          if (*v149)
          {
            v150 = v149;
            *&v285 = v148;
            v151 = v142;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (v285)(&v332, 0);

            v152 = v321;
            v153 = v307;
            v307(v297, v321);
            v153(v306, v152);
          }

          else
          {
            (v148)(&v332, 0);

            v165 = v147;
            v166 = v321;
            v167 = v307;
            v307(v165, v321);
            v167(v306, v166);
          }

          goto LABEL_51;
        }
      }

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v154 = swift_allocObject();
      v155 = v142;
      v156 = v144;
      v157 = v154;
      *(v154 + 16) = v290;
      *(v154 + 32) = v155;
      *&v285 = v155;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v332 = v143;
      sub_1002CA1B0(v157, v156, isUniquelyReferenced_nonNull_native);

      v328 = v332;
      v121 = v156;
      goto LABEL_47;
    }

    v313(v304, v108, v321);
    v126 = v311;
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    *&v285 = v126;

    v129 = os_log_type_enabled(v127, v128);
    v87 = v310;
    if (v129)
    {
      v277 = v128;
      v279 = v127;
      v130 = swift_slowAlloc();
      v276 = swift_slowAlloc();
      v332 = v276;
      *v130 = v280;
      v330 = &_s48MigrateRemindersFromZREMCDOBJECTToZREMCDREMINDERON;
      sub_1000F5104(&unk_10094B200, &unk_1007AF310);
      v131 = String.init<A>(describing:)();
      v133 = sub_10000668C(v131, v132, &v332);

      *(v130 + 4) = v133;
      *(v130 + 12) = 2080;
      *(v130 + 14) = sub_10000668C(0xD000000000000023, v286, &v332);
      *(v130 + 22) = 2082;
      sub_100507504(&qword_10093F2A0, &type metadata accessor for UUID);
      v134 = v304;
      v135 = v321;
      v278 = dispatch thunk of CustomStringConvertible.description.getter();
      v275 = v136;
      v307(v134, v135);
      v137 = sub_10000668C(v278, v275, &v332);

      *(v130 + 24) = v137;
      v278 = v130;
      *(v130 + 32) = 2082;
      v138 = [v285 identifier];
      if (v138)
      {
        v139 = v295;
        v140 = v138;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v141 = 0;
      }

      else
      {
        v141 = 1;
        v139 = v295;
      }

      (*v281)(v139, v141, 1, v321);
      v159 = Optional.descriptionOrNil.getter();
      v161 = v160;
      sub_1000050A4(v139, &unk_100939D90, "8\n\r");
      v162 = sub_10000668C(v159, v161, &v332);

      v163 = v278;
      *(v278 + 34) = v162;
      v164 = v279;
      _os_log_impl(&_mh_execute_header, v279, v277, "[%s|%s] Failed to set parentReminder because parentReminder.identifier is nil {list.identifier: %{public}s, reminder.identifier: %{public}s}", v163, 0x2Au);
      swift_arrayDestroy();

      goto LABEL_51;
    }

    v307(v304, v321);
LABEL_52:
    v88 = v324;
    if (__OFADD__(v301, 1))
    {
      goto LABEL_135;
    }

    v301 = (v301 + 1);
LABEL_54:
    v90 = v326;
    [v326 refreshObject:v63 mergeChanges:0];
    v168 = v317;
    sub_100507400(v316, v90);
    v317 = v168;
    if (v168)
    {

      v170 = v317;
      goto LABEL_121;
    }

    v95 = v323;
    v101 = v311;
LABEL_14:

    objc_autoreleasePoolPop(v98);
    ++v94;
    v63 = v319;
    v89 = v325;
    v91 = v322;
  }

  while (v65 != v315);
  v54 = v321;
  v51 = v312;
LABEL_60:

  v171 = 0;
  v173 = v328 + 8;
  v172 = v328[8];
  v298 = v328;
  v174 = 1 << *(v328 + 32);
  v175 = -1;
  if (v174 < 64)
  {
    v175 = ~(-1 << v174);
  }

  v176 = v175 & v172;
  v177 = (v174 + 63) >> 6;
  v306 = (v51 + 32);
  v296 = "REMCDReminderInZREMCDOBJECT";
  v297 = (v51 + 8);
  *(&v178 + 1) = 4;
  v295 = xmmword_100791340;
  *&v178 = 136315906;
  v285 = v178;
  v291 = v328 + 8;
  *&v290 = v177;
  while (2)
  {
    v180 = v302;
    if (v176)
    {
      v181 = v171;
      goto LABEL_75;
    }

    if (v177 <= v171 + 1)
    {
      v182 = v171 + 1;
    }

    else
    {
      v182 = v177;
    }

    v183 = v182 - 1;
    do
    {
      v181 = v171 + 1;
      if (__OFADD__(v171, 1))
      {
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
        goto LABEL_134;
      }

      if (v181 >= v177)
      {
        v249 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
        (*(*(v249 - 8) + 56))(v91, 1, 1, v249);
        v304 = 0;
        v171 = v183;
        goto LABEL_76;
      }

      v176 = v173[v181];
      ++v171;
    }

    while (!v176);
    v171 = v181;
LABEL_75:
    v304 = ((v176 - 1) & v176);
    v184 = __clz(__rbit64(v176)) | (v181 << 6);
    v185 = v298;
    v313(v302, (*(v298 + 6) + *(v51 + 72) * v184), v54);
    v186 = *(v185[7] + 8 * v184);
    v187 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    v188 = *(v187 + 48);
    v91 = v322;
    (*(v51 + 32))(v322, v180, v54);
    *(v91 + v188) = v186;
    (*(*(v187 - 8) + 56))(v91, 0, 1, v187);

    v88 = v324;
    v89 = v325;
    v63 = v319;
LABEL_76:
    v189 = v305;
    sub_100471B18(v91, v305);
    v190 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    if ((*(*(v190 - 8) + 48))(v189, 1, v190) != 1)
    {
      v315 = *(v189 + *(v190 + 48));
      v54 = v321;
      (*v306)(v89, v189, v321);
      v191 = objc_autoreleasePoolPush();
      v192 = objc_allocWithZone(NSFetchRequest);
      v193 = String._bridgeToObjectiveC()();
      v194 = [v192 initWithEntityName:v193];

      [v194 setResultType:0];
      sub_1000F5104(&unk_100938E80, &unk_1007959D0);
      v195 = swift_allocObject();
      *(v195 + 16) = v295;
      *(v195 + 56) = &type metadata for String;
      *(v195 + 32) = 0x696669746E656469;
      *(v195 + 40) = 0xEA00000000007265;
      *(v195 + 88) = v54;
      v196 = sub_1000103CC((v195 + 64));
      v313(v196, v89, v54);
      v197 = String._bridgeToObjectiveC()();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v199 = [objc_opt_self() predicateWithFormat:v197 argumentArray:isa];

      [v194 setPredicate:v199];
      [v194 setFetchLimit:1];
      v318 = type metadata accessor for REMCDReminderInZREMCDREMINDER();
      v200 = v326;
      v201 = v317;
      v202 = NSManagedObjectContext.fetch<A>(_:)();
      v317 = v201;
      if (v201)
      {

        objc_autoreleasePoolPop(v191);

        v307(v89, v54);
        *v303 = v317;
        return;
      }

      if (v202 >> 62)
      {
        v250 = v202;
        v203 = _CocoaArrayWrapper.endIndex.getter();
        v202 = v250;
      }

      else
      {
        v203 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v51 = v312;
      if (!v203)
      {

        objc_autoreleasePoolPop(v191);
LABEL_108:

        v228 = v287;
        v229 = v313;
        v313(v287, v308, v54);
        v230 = v288;
        v229(v288, v89, v54);
        v231 = Logger.logObject.getter();
        v232 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v231, v232))
        {
          v233 = swift_slowAlloc();
          v323 = swift_slowAlloc();
          v331 = v323;
          *v233 = v285;
          v327 = &_s48MigrateRemindersFromZREMCDOBJECTToZREMCDREMINDERON;
          sub_1000F5104(&unk_10094B200, &unk_1007AF310);
          v234 = String.init<A>(describing:)();
          v320 = v231;
          v236 = sub_10000668C(v234, v235, &v331);
          LODWORD(v318) = v232;
          v237 = v236;

          *(v233 + 4) = v237;
          *(v233 + 12) = 2080;
          *(v233 + 14) = sub_10000668C(0xD000000000000023, v286, &v331);
          *(v233 + 22) = 2082;
          sub_100507504(&qword_10093F2A0, &type metadata accessor for UUID);
          v238 = dispatch thunk of CustomStringConvertible.description.getter();
          v240 = v239;
          v241 = v228;
          v242 = v307;
          v307(v241, v321);
          v243 = sub_10000668C(v238, v240, &v331);

          *(v233 + 24) = v243;
          *(v233 + 32) = 2082;
          v244 = dispatch thunk of CustomStringConvertible.description.getter();
          v246 = v245;
          v242(v230, v321);
          v247 = sub_10000668C(v244, v246, &v331);

          *(v233 + 34) = v247;
          v248 = v320;
          _os_log_impl(&_mh_execute_header, v320, v318, "[%s|%s] Failed to fetch moID of parentReminder {list.identifier: %{public}s, parentReminderIdentifier: %{public}s}", v233, 0x2Au);
          swift_arrayDestroy();

          v51 = v312;
          v54 = v321;

          v242(v89, v54);
        }

        else
        {

          v179 = v307;
          v307(v230, v54);
          v179(v228, v54);
          v179(v89, v54);
        }

        v88 = v324;
        v63 = v319;
        v91 = v322;
        v173 = v291;
        v177 = v290;
        v176 = v304;
        continue;
      }

      if ((v202 & 0xC000000000000001) == 0)
      {
        if (*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v204 = *(v202 + 32);
          goto LABEL_84;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        swift_once();
        goto LABEL_4;
      }

      v204 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_84:
      v205 = v204;

      v206 = [v205 ic_permanentObjectID];
      objc_autoreleasePoolPop(v191);
      v309 = v206;
      if (!v206)
      {
        goto LABEL_108;
      }

      v207 = v315;
      if (v315 >> 62)
      {
        v208 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v208 = *((v315 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v88 = v324;
      swift_beginAccess();
      swift_beginAccess();
      if (!v208)
      {
LABEL_110:
        v54 = v321;
        v307(v89, v321);

        v63 = v319;
        v51 = v312;
        v173 = v291;
        v177 = v290;
        v176 = v304;
        v91 = v322;
        continue;
      }

      v209 = 0;
      v311 = (v207 & 0xC000000000000001);
      v310 = v207 & 0xFFFFFFFFFFFFFF8;
      while (2)
      {
        if (v311)
        {
          v211 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v209 >= *(v310 + 16))
          {
            goto LABEL_132;
          }

          v211 = *(v207 + 8 * v209 + 32);
        }

        v212 = v211;
        v213 = v209 + 1;
        if (__OFADD__(v209, 1))
        {
          goto LABEL_131;
        }

        v320 = objc_autoreleasePoolPush();
        v331 = 0;
        v323 = v212;
        v214 = [v200 existingObjectWithID:v212 error:&v331];
        v215 = v331;
        if (!v214)
        {
          v251 = v331;

          v252 = _convertNSErrorToError(_:)();

          swift_willThrow();
          goto LABEL_126;
        }

        v216 = v214;
        v217 = swift_dynamicCastClass();
        if (v217)
        {
          v218 = v217;
          v331 = 0;
          v219 = v215;
          v220 = [v200 existingObjectWithID:v309 error:&v331];
          v221 = v331;
          if (!v220)
          {
            v253 = v331;

            v252 = _convertNSErrorToError(_:)();

            swift_willThrow();
            goto LABEL_125;
          }

          v222 = v220;
          v223 = swift_dynamicCastClass();
          v224 = v221;
          if (!v223)
          {

            v88 = v324;
            v200 = v326;
            v207 = v315;
            goto LABEL_90;
          }

          [v218 setParentReminder:v223];
          v225 = *v316 + 1;
          v207 = v315;
          if (__OFADD__(*v316, 1))
          {
            goto LABEL_133;
          }

          *v316 = v225;
          if (v225 < 500)
          {

            v88 = v324;
            v200 = v326;
            goto LABEL_90;
          }

          v331 = 0;
          v200 = v326;
          if (([v326 save:&v331] & 1) == 0)
          {
            v272 = v331;

            v252 = _convertNSErrorToError(_:)();

            swift_willThrow();
LABEL_125:

LABEL_126:
            objc_autoreleasePoolPop(v320);

            v307(v325, v321);
            *v303 = v252;
            return;
          }

          v227 = v331;
          [v200 refreshAllObjects];

          *v316 = 0;
        }

        else
        {
          v226 = v215;
        }

        v88 = v324;
LABEL_90:
        objc_autoreleasePoolPop(v320);

        ++v209;
        v210 = v213 == v208;
        v89 = v325;
        if (v210)
        {
          goto LABEL_110;
        }

        continue;
      }
    }

    break;
  }

  v254 = v321;
  v313(v63, v308, v321);
  v255 = v289;
  v256 = v300;
  v283(v289, v88, v300);
  v257 = Logger.logObject.getter();
  v258 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v257, v258))
  {
    v259 = v63;
    v260 = swift_slowAlloc();
    v326 = swift_slowAlloc();
    v331 = v326;
    *v260 = 136316418;
    v327 = &_s48MigrateRemindersFromZREMCDOBJECTToZREMCDREMINDERON;
    sub_1000F5104(&unk_10094B200, &unk_1007AF310);
    v261 = String.init<A>(describing:)();
    v263 = sub_10000668C(v261, v262, &v331);

    *(v260 + 4) = v263;
    *(v260 + 12) = 2080;
    *(v260 + 14) = sub_10000668C(0xD000000000000023, v286, &v331);
    *(v260 + 22) = 2082;
    sub_100507504(&qword_10093F2A0, &type metadata accessor for UUID);
    v264 = dispatch thunk of CustomStringConvertible.description.getter();
    v266 = v265;
    v307(v259, v254);
    v267 = sub_10000668C(v264, v266, &v331);

    *(v260 + 24) = v267;
    *(v260 + 32) = 2050;
    *(v260 + 34) = v292;
    *(v260 + 42) = 2050;
    *(v260 + 44) = v301;
    *(v260 + 52) = 2048;
    v268 = v293;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v270 = v269;
    v271 = v282;
    v282(v268, v256);
    v271(v255, v256);
    *(v260 + 54) = v270;
    _os_log_impl(&_mh_execute_header, v257, v258, "[%s|%s] Did copy reminders from ZREMCDOBJECT SQL table to ZREMCDREMINDER SQL table {list.identifier: %{public}s, topLevelReminders.count: %{public}ld, subtasks.count: %{public}ld, cumulative elapsedSeconds: %f}", v260, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    v282(v255, v256);
    v307(v63, v254);
  }
}

void sub_1005055F0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v151 = *(v4 - 8);
  v152 = v4;
  v5 = *(v151 + 64);
  __chkstk_darwin(v4);
  v150 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v148 = *(v7 - 8);
  v149 = v7;
  v8 = *(v148 + 64);
  __chkstk_darwin(v7);
  v147 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v155 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v154 = &v144 - v15;
  __chkstk_darwin(v16);
  v153 = &v144 - v17;
  __chkstk_darwin(v18);
  v146 = &v144 - v19;
  __chkstk_darwin(v20);
  v145 = &v144 - v21;
  __chkstk_darwin(v22);
  v24 = &v144 - v23;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v144 - v27;
  [v2 setAllDay:{objc_msgSend(a1, "allDay", v26)}];
  [v2 setCkDirtyFlags:{objc_msgSend(a1, "ckDirtyFlags")}];
  v29 = [a1 ckIdentifier];
  [v2 setCkIdentifier:v29];

  [v2 setCkNeedsInitialFetchFromCloud:{objc_msgSend(a1, "ckNeedsInitialFetchFromCloud")}];
  [v2 setCkNeedsToBeFetchedFromCloud:{objc_msgSend(a1, "ckNeedsToBeFetchedFromCloud")}];
  v30 = [a1 ckParentReminderIdentifier];
  [v2 setCkParentReminderIdentifier:v30];

  v31 = [a1 ckServerRecordData];
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

  [v2 setCkServerRecordData:v36.super.isa];

  v37 = [a1 ckServerShareData];
  if (v37)
  {
    v38 = v37;
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v10;
    v42 = v41;

    v43.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v44 = v42;
    v10 = v40;
    sub_10001BBA0(v39, v44);
  }

  else
  {
    v43.super.isa = 0;
  }

  [v2 setCkServerShareData:v43.super.isa];

  v45 = [a1 ckZoneOwnerName];
  [v2 setCkZoneOwnerName:v45];

  [v2 setCompleted:{objc_msgSend(a1, "completed")}];
  v46 = [a1 completionDate];
  if (v46)
  {
    v47 = v46;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v48.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v28, v10);
  }

  else
  {
    v48.super.isa = 0;
  }

  [v2 setCompletionDate:v48.super.isa];

  v49 = [a1 contactHandles];
  if (v49)
  {
    v50 = v49;
    v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v51, v53);
  }

  else
  {
    v54.super.isa = 0;
  }

  [v2 setContactHandles:v54.super.isa];

  v55 = [a1 creationDate];
  if (v55)
  {
    v56 = v55;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v57.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v24, v10);
  }

  else
  {
    v57.super.isa = 0;
  }

  [v2 setCreationDate:v57.super.isa];

  v58 = [a1 daCalendarItemUniqueIdentifier];
  [v2 setDaCalendarItemUniqueIdentifier:v58];

  v59 = [a1 daPushKey];
  [v2 setDaPushKey:v59];

  v60 = [a1 daSyncToken];
  [v2 setDaSyncToken:v60];

  v61 = [a1 displayDateDate];
  if (v61)
  {
    v62 = v145;
    v63 = v61;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v64.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v62, v10);
  }

  else
  {
    v64.super.isa = 0;
  }

  [v2 setDisplayDateDate:v64.super.isa];

  [v2 setDisplayDateIsAllDay:{objc_msgSend(a1, "displayDateIsAllDay")}];
  v65 = [a1 displayDateTimeZone];
  [v2 setDisplayDateTimeZone:v65];

  [v2 setDisplayDateUpdatedForSecondsFromGMT:{objc_msgSend(a1, "displayDateUpdatedForSecondsFromGMT")}];
  v66 = [a1 dueDate];
  if (v66)
  {
    v67 = v146;
    v68 = v66;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v69.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v67, v10);
  }

  else
  {
    v69.super.isa = 0;
  }

  [v2 setDueDate:v69.super.isa];

  [v2 setEffectiveMinimumSupportedAppVersion:{objc_msgSend(a1, "effectiveMinimumSupportedAppVersion")}];
  v70 = [a1 externalIdentifier];
  [v2 setExternalIdentifier:v70];

  v71 = [a1 externalModificationTag];
  [v2 setExternalModificationTag:v71];

  [v2 setFlagged:{objc_msgSend(a1, "flagged")}];
  [v2 setIcsDisplayOrder:{objc_msgSend(a1, "icsDisplayOrder")}];
  v72 = [a1 icsUrl];
  if (v72)
  {
    v73 = v147;
    v74 = v72;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v75);
    v77 = v76;
    (*(v148 + 8))(v73, v149);
  }

  else
  {
    v77 = 0;
  }

  [v2 setIcsUrl:v77];

  v78 = [a1 identifier];
  if (v78)
  {
    v79 = v150;
    v80 = v78;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v81.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v151 + 8))(v79, v152);
  }

  else
  {
    v81.super.isa = 0;
  }

  [v2 setIdentifier:v81.super.isa];

  v82 = [a1 importedICSData];
  if (v82)
  {
    v83 = v82;
    v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v84, v86);
  }

  else
  {
    v87.super.isa = 0;
  }

  [v2 setImportedICSData:v87.super.isa];

  v88 = [a1 lastBannerPresentationDate];
  if (v88)
  {
    v89 = v153;
    v90 = v88;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v91.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v89, v10);
  }

  else
  {
    v91.super.isa = 0;
  }

  [v2 setLastBannerPresentationDate:v91.super.isa];

  v92 = [a1 lastModifiedDate];
  if (v92)
  {
    v93 = v154;
    v94 = v92;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v95.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v93, v10);
  }

  else
  {
    v95.super.isa = 0;
  }

  [v2 setLastModifiedDate:v95.super.isa];

  [v2 setMarkedForDeletion:{objc_msgSend(a1, "markedForDeletion")}];
  [v2 setMinimumSupportedAppVersion:{objc_msgSend(a1, "minimumSupportedAppVersion")}];
  v96 = [a1 notes];
  [v2 setNotes:v96];

  v97 = [a1 notesDocument];
  if (v97)
  {
    v98 = v97;
    v99 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    v102.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v99, v101);
  }

  else
  {
    v102.super.isa = 0;
  }

  [v2 setNotesDocument:v102.super.isa];

  [v2 setPriority:{objc_msgSend(a1, "priority")}];
  v103 = [a1 resolutionTokenMap];
  [v2 setResolutionTokenMap:v103];

  v104 = [a1 resolutionTokenMap_v2_JSON];
  [v2 setResolutionTokenMap_v2_JSON:v104];

  v105 = [a1 resolutionTokenMap_v3_JSONData];
  if (v105)
  {
    v106 = v105;
    v107 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    v110.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v107, v109);
  }

  else
  {
    v110.super.isa = 0;
  }

  [v2 setResolutionTokenMap_v3_JSONData:v110.super.isa];

  v111 = [a1 siriFoundInAppsData];
  if (v111)
  {
    v112 = v111;
    v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    v116.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v113, v115);
  }

  else
  {
    v116.super.isa = 0;
  }

  [v2 setSiriFoundInAppsData:v116.super.isa];

  [v2 setSpotlightIndexCount:{objc_msgSend(a1, "spotlightIndexCount")}];
  v117 = [a1 startDate];
  if (v117)
  {
    v118 = v155;
    v119 = v117;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v120.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v118, v10);
  }

  else
  {
    v120.super.isa = 0;
  }

  [v2 setStartDate:v120.super.isa];

  v121 = [a1 timeZone];
  [v2 setTimeZone:v121];

  v122 = [a1 title];
  [v2 setTitle:v122];

  v123 = [a1 titleDocument];
  if (v123)
  {
    v124 = v123;
    v125 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v126;

    v128.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v125, v127);
  }

  else
  {
    v128.super.isa = 0;
  }

  [v2 setTitleDocument:v128.super.isa];

  v129 = [a1 userActivity];
  if (v129)
  {
    v130 = v129;
    v131 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v132;

    v134.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v131, v133);
  }

  else
  {
    v134.super.isa = 0;
  }

  [v2 setUserActivity:v134.super.isa];

  v135 = [a1 account];
  [v2 setAccount:v135];

  v136 = [a1 alarmStorage];
  [v2 setAlarmStorage:v136];

  isa = [a1 assignments];
  if (isa)
  {
    sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
    sub_1003DB488();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Set._bridgeToObjectiveC()().super.isa;
  }

  [v2 setAssignments:isa];

  v138 = [a1 attachments];
  [v2 setAttachments:v138];

  v139 = [a1 hashtags];
  if (v139)
  {
    sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
    sub_1003DB488();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v139 = Set._bridgeToObjectiveC()().super.isa;
  }

  [v2 setHashtags:v139];

  v140 = [a1 list];
  [v2 setList:v140];

  v141 = [a1 parentAccount];
  [v2 setParentAccount:v141];

  v142 = [a1 recurrenceRules];
  [v2 setRecurrenceRules:v142];

  v143 = [a1 sharedToMeReminderPlaceholder];
  [v2 setSharedToMeReminderPlaceholder:v143];
}

id sub_100506898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8.receiver = a1;
  v8.super_class = a5(0);
  return objc_msgSendSuper2(&v8, "initWithEntity:insertIntoManagedObjectContext:", a3, a4);
}

id sub_100506910(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100506974()
{
  v1 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithEntityName:v11];

  [v12 setResultType:2];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100791300;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0x696669746E656469;
  *(v13 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setPropertiesToFetch:isa];

  v15 = v12;
  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v16 = NSManagedObjectContext.fetch<A>(_:)();
  if (v0)
  {

    return;
  }

  v17 = v6;
  v36 = v9;
  if (v16 >> 62)
  {
    goto LABEL_27;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = 0;
  if (v18)
  {
LABEL_5:
    v19 = 0;
    v39 = v16 & 0xFFFFFFFFFFFFFF8;
    v40 = v16 & 0xC000000000000001;
    v20 = (v17 + 56);
    v33 = v17;
    v34 = (v17 + 32);
    v35 = (v17 + 48);
    v44 = _swiftEmptyArrayStorage;
    v37 = v18;
    v38 = v15;
    while (1)
    {
      if (v40)
      {
        v21 = v16;
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v39 + 16))
        {
          goto LABEL_26;
        }

        v21 = v16;
        v16 = *(v16 + 8 * v19 + 32);
      }

      v17 = v16;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v30 = v16;
        v18 = _CocoaArrayWrapper.endIndex.getter();
        v16 = v30;
        v32 = 0;
        if (!v18)
        {
          break;
        }

        goto LABEL_5;
      }

      *&v41 = 0x696669746E656469;
      *(&v41 + 1) = 0xEA00000000007265;
      v23 = [v16 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v41 = 0u;
        v42 = 0u;
      }

      v43[0] = v41;
      v43[1] = v42;
      if (*(&v42 + 1))
      {
        v24 = swift_dynamicCast();
        (*v20)(v4, v24 ^ 1u, 1, v5);
        if ((*v35)(v4, 1, v5) != 1)
        {
          v25 = *v34;
          (*v34)(v36, v4, v5);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v26 = v44;
          }

          else
          {
            v26 = sub_100366328(0, v44[2] + 1, 1, v44);
          }

          v28 = v26[2];
          v27 = v26[3];
          v17 = (v28 + 1);
          if (v28 >= v27 >> 1)
          {
            v26 = sub_100366328(v27 > 1, v28 + 1, 1, v26);
          }

          v26[2] = v17;
          v29 = (v33[80] + 32) & ~v33[80];
          v44 = v26;
          v25(v26 + v29 + *(v33 + 9) * v28);
          goto LABEL_8;
        }
      }

      else
      {
        sub_1000050A4(v43, &qword_100939ED0, &qword_100791B10);
        (*v20)(v4, 1, 1, v5);
      }

      sub_1000050A4(v4, &unk_100939D90, "8\n\r");
LABEL_8:
      ++v19;
      v15 = v38;
      v16 = v21;
      if (v22 == v37)
      {
        goto LABEL_29;
      }
    }
  }

  v44 = _swiftEmptyArrayStorage;
LABEL_29:
}

unint64_t sub_100506EC4(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithEntityName:v5];

  [v6 setResultType:0];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 32) = 0x696669746E656469;
  *(v7 + 40) = 0xEA00000000007265;
  v8 = type metadata accessor for UUID();
  *(v7 + 88) = v8;
  v9 = sub_1000103CC((v7 + 64));
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  v10 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [objc_opt_self() predicateWithFormat:v10 argumentArray:isa];

  [v6 setPredicate:v12];
  [v6 setFetchLimit:1];
  type metadata accessor for REMCDListInModelVersionV5();
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v15 = result;
  v16 = _CocoaArrayWrapper.endIndex.getter();
  result = v15;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(result + 32);
LABEL_8:
    v2 = v14;

    return v2;
  }

  __break(1u);
  return result;
}

void *sub_100507158(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for NSFastEnumerationIterator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100506EC4(a1);
  if (!v2)
  {
    a2 = _swiftEmptyArrayStorage;
    if (v10)
    {
      v19 = v10;
      v20 = 0;
      v11 = [v10 reminders];
      if (v11)
      {
        v17 = v11;
        v18 = v6;
        v26 = _swiftEmptyArrayStorage;
        NSOrderedSet.makeIterator()();
        sub_100507504(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator);
        dispatch thunk of IteratorProtocol.next()();
        while (v25)
        {
          sub_100005EE0(&v24, v23);
          sub_100005EF0(v23, v22);
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          if (swift_dynamicCast())
          {
            v12 = v21;
            v13 = [v21 objectID];

            sub_10000607C(v23);
            if (v13)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v14 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              a2 = v26;
            }
          }

          else
          {
            sub_10000607C(v23);
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        (*(v18 + 8))(v9, v5);
      }
    }
  }

  return a2;
}

uint64_t sub_100507400(uint64_t *a1, void *a2)
{
  result = swift_beginAccess();
  v5 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  *a1 = v5;
  if (v5 >= 500)
  {
    v8[0] = 0;
    if ([a2 save:v8])
    {
      v6 = v8[0];
      [a2 refreshAllObjects];
      result = swift_beginAccess();
      *a1 = 0;
    }

    else
    {
      v7 = v8[0];
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100507504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10050755C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B210);
  v1 = sub_100006654(v0, qword_10094B210);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_100507624()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v8)
  {
    v10 = sub_1005091FC();
    v11 = [v10 bundlePath];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = objc_allocWithZone(CLLocationManager);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v12 initWithEffectiveBundlePath:v13 delegate:v0 onQueue:v7];

    v15 = *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager);
    *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager) = v14;

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1005097D4(result);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005077FC(void *a1)
{
  v17 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC7remindd17RDLocationManager_queue];
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3[13];
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = v3[1];
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *v6 = v10;
  v9(v6, v8, v2);
  v13 = _dispatchPreconditionTest(_:)();
  v12(v6, v2);
  if ((v13 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = *&v1[OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager];
  if (v14)
  {
    v15 = v14;
    sub_1005079A0(v15, v1, v17);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1005079A0(void *a1, void *a2, void *a3)
{
  v5.super.super.isa = sub_100508670(a3).super.super.isa;
  [(objc_class *)v5.super.super.isa setOnBehalfOfBundleId:REMUniversalAppBundleIdentifier];
  if (qword_100936368 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094B210);
  v18 = v5.super.super.isa;
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_10050992C(v18);
    v14 = sub_10000668C(v12, v13, &v19);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    [v8 authorizationStatus];
    v15 = CLAuthorizationStatus.description.getter();
    v17 = sub_10000668C(v15, v16, &v19);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "startMonitoring: %s, authStatus: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  [v8 startMonitoringForRegion:v18];
}

void sub_100507BB0(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v4[1];
  v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *v7 = v11;
  v10(v7, v9, v3);
  v14 = _dispatchPreconditionTest(_:)();
  v13(v7, v3);
  if ((v14 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(v2 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager);
  if (v15)
  {
    v16 = v15;
    sub_100507D54(v16, v17, v18, v2);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100507D54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 monitoredRegions];
  sub_1000060C8(0, &qword_100946540, CLRegion_ptr);
  sub_10050AE3C();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = a4;
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v7 = v34;
    v8 = v35;
    v9 = v36;
    v10 = v37;
    v11 = v38;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v13 = ~v12;
    v14 = -v12;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v6 + 56);

    v9 = v13;
    v10 = 0;
    v7 = v6;
  }

  v16 = (v9 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v7 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v21)
    {
      while (1)
      {
        v22 = v7;
        v23 = v21;
        v24 = [v21 identifier];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        if (v25 == a2 && v27 == a3)
        {
          break;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v29)
        {
          goto LABEL_25;
        }

        v10 = v19;
        v11 = v20;
        v7 = v22;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v21 = v33;
          v19 = v10;
          v20 = v11;
          if (v33)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_10001B860();

      sub_100508000(v23);
    }

    else
    {
LABEL_23:
      sub_10001B860();
    }
  }

  else
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_23;
      }

      v18 = *(v8 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100508000(void *a1)
{
  v26 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC7remindd17RDLocationManager_queue];
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3[13];
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = v3[1];
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  *v6 = v10;
  v9(v6, v8, v2);
  v13 = _dispatchPreconditionTest(_:)();
  v12(v6, v2);
  if ((v13 & 1) == 0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v14 = *&v1[OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = qword_100936368;
  v2 = v14;
  if (v15 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10094B210);
  v17 = v26;
  v18 = v1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    v23 = sub_10050992C(v17);
    v25 = sub_10000668C(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "stopMonitoring: %s", v21, 0xCu);
    sub_10000607C(v22);
  }

  [v2 stopMonitoringForRegion:v17];
}

uint64_t sub_1005082D8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = v2[13];
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v6;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = v2[1];
  result = v11(v5, v1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *v5 = v9;
  v8(v5, v7, v1);
  v13 = _dispatchPreconditionTest(_:)();
  result = v11(v5, v1);
  if ((v13 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager);
  if (v14)
  {
    v15 = v14;
    v16 = [v15 monitoredRegions];
    sub_1000060C8(0, &qword_100946540, CLRegion_ptr);
    sub_10050AE3C();
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    return v17;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1005084D4(uint64_t a1, SEL *a2)
{
  v18 = a2;
  v19 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC7remindd17RDLocationManager_queue];
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = v4[13];
  (v11)(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v12 = v9;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = v4[1];
  result = v14(v8, v3);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *v8 = v12;
  v11(v8, v10, v3);
  v16 = _dispatchPreconditionTest(_:)();
  result = v14(v8, v3);
  if ((v16 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = *&v2[OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager];
  if (v17)
  {
    return [v2 *v18];
  }

LABEL_7:
  __break(1u);
  return result;
}

CLCircularRegion sub_100508670(void *a1)
{
  [objc_opt_self() minimumRegionMonitoringDistance];
  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    [v5 radius];
    if (v7 < v3)
    {
      if (qword_100936368 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006654(v8, qword_10094B210);
      v9 = v6;
      v10 = v1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v13 = 136315394;
        v14 = Double.description.getter();
        v16 = sub_10000668C(v14, v15, &v22);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v17 = sub_10050992C(v5);
        v19 = sub_10000668C(v17, v18, &v22);

        *(v13 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v11, v12, "Radius less than minimum:%s for regionToMonitor:%s", v13, 0x16u);
        swift_arrayDestroy();
      }

      sub_1000060C8(0, &unk_10094B2D0, CLCircularRegion_ptr);
      return CLCircularRegion.init(circularRegion:radius:)(v5, v3);
    }
  }

  return a1;
}

id sub_10050890C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDLocationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100508A60(uint64_t a1, void *a2, const char *a3, uint64_t a4, unint64_t a5, void (*a6)(id, uint64_t))
{
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    if (qword_100936368 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_10094B210);
  v21 = a2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, a3, v24, 0xCu);
    sub_100039860(v25);
  }

  if (qword_100935FC8 != -1)
  {
    swift_once();
  }

  v28 = xmmword_1007AF370;
  v30 = 0;
  v31[0] = 0;
  v29 = 0;
  *(v31 + 6) = 0;
  sub_1000081D8(&v28, a4, a5);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a6(v21, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100508F48(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if (v10)
  {
    if (qword_100936368 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10094B210);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136446210;
    [v13 authorizationStatus];
    v18 = CLAuthorizationStatus.description.getter();
    v20 = sub_10000668C(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "didChangeAuthorization: {status: %{public}s}", v16, 0xCu);
    sub_10000607C(v17);
  }
}

uint64_t *sub_1005091FC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v52 - v7;
  __chkstk_darwin(v6);
  v10 = &v52 - v9;
  v11 = [objc_opt_self() locationBundleURL];
  if (v11)
  {
    v12 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
    v14 = objc_allocWithZone(NSBundle);
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v18 = [v14 initWithURL:v16];

    if (v18)
    {
      if (qword_100936368 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006654(v19, qword_10094B210);
      (*(v1 + 16))(v8, v10, v0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v54 = v18;
        v55 = v23;
        v24 = v0;
        v25 = v23;
        *v22 = 136315138;
        v26 = URL.path.getter();
        v28 = v27;
        v53 = *(v1 + 8);
        v29 = v8;
        v30 = v24;
        v18 = v54;
        v53(v29, v30);
        v31 = sub_10000668C(v26, v28, &v55);

        *(v22 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v20, v21, "daemonLocationBundle() successfully obtained from from %s", v22, 0xCu);
        sub_10000607C(v25);

        v53(v10, v30);
      }

      else
      {

        v48 = *(v1 + 8);
        v48(v8, v0);
        v48(v10, v0);
      }

      return v18;
    }

    else
    {
      if (qword_100936368 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100006654(v38, qword_10094B210);
      (*(v1 + 16))(v5, v10, v0);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v54;
        *v41 = 136315138;
        v53 = URL.path.getter();
        v42 = v0;
        v44 = v43;
        v45 = *(v1 + 8);
        v45(v5, v42);
        v46 = v45;
        v47 = sub_10000668C(v53, v44, &v55);
        v0 = v42;
        v13 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;

        *(v41 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v39, v40, "daemonLocationBundle() cannot locate bundle at %s, using Bundle.main instead. Location services will not work. This is expected for simulator.", v41, 0xCu);
        sub_10000607C(v54);
      }

      else
      {

        v49 = *(v1 + 8);
        v49(v5, v0);
        v46 = v49;
      }

      v50 = v13[450];
      v51 = [objc_opt_self() mainBundle];
      v46(v10, v0);
      return v51;
    }
  }

  else
  {
    if (qword_100936368 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_10094B210);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "daemonLocationBundle() does not have a URL for location bundle, using Bundle.main instead. Location services will not work. This is expected for simulator.", v35, 2u);
    }

    v36 = [objc_opt_self() mainBundle];

    return v36;
  }
}

uint64_t sub_1005097D4(char *a1)
{
  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094D320);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "locationManagerDidStart, reconciling all geofences", v5, 2u);
  }

  v6 = *&a1[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  sub_10059AB5C(v6, 0xD000000000000017, 0x80000001007FB930, sub_10050AEA4, v7);
}

uint64_t sub_100509B0C(void *a1, char *a2)
{
  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094D320);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "RDLocationAlarmProducer didEnterRegion: %@", v8, 0xCu);
    sub_100039860(v9);
  }

  v11 = *&a2[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v5;
  v13 = v5;
  v14 = a2;
  sub_10059AB5C(v11, 0x7265746E45646964, 0xEE006E6F69676552, sub_10050AE34, v12);
}

uint64_t sub_100509CC8(void *a1, char *a2)
{
  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094D320);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "RDLocationAlarmProducer didExitRegion: %@", v8, 0xCu);
    sub_100039860(v9);
  }

  v11 = *&a2[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v5;
  v13 = v5;
  v14 = a2;
  sub_10059AB5C(v11, 0x5274697845646964, 0xED00006E6F696765, sub_10050AE2C, v12);
}

uint64_t sub_100509E84(uint64_t a1, void *a2, uint64_t a3, void *a4, const char *a5, uint64_t a6, unint64_t a7, void (*a8)(id, uint64_t))
{
  if (qword_100936368 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10094B210);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = a5;
    v19 = a6;
    v20 = a7;
    v21 = a8;
    v22 = swift_slowAlloc();
    v42 = v22;
    *v18 = 136446210;
    *(v18 + 4) = sub_10000668C(a1, a2, &v42);
    _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: com.apple.remindd.RDLocationManagerDelegate.%{public}s}", v18, 0xCu);
    sub_10000607C(v22);
    a8 = v21;
    a7 = v20;
    a6 = v19;
    a5 = v40;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v42 = 0xD00000000000002CLL;
  v43 = 0x80000001007FB900;
  v23._countAndFlagsBits = a1;
  v23._object = a2;
  String.append(_:)(v23);
  String.utf8CString.getter();

  v24 = os_transaction_create();

  if (v24)
  {
    sub_100508A60(a3, a4, a5, a6, a7, a8);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_10000668C(a1, a2, &v42);
      _os_log_impl(&_mh_execute_header, v25, v26, "os_transaction RELEASE {name: com.apple.remindd.RDLocationManagerDelegate.%{public}s}", v27, 0xCu);
      sub_10000607C(v28);

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = a1;
      v35 = a5;
      v36 = a6;
      v37 = a7;
      v38 = a8;
      v39 = v33;
      v42 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_10000668C(v34, a2, &v42);
      _os_log_impl(&_mh_execute_header, v30, v31, "RDLocationManagerDelegate: Couldn't create os_transaction_t for %{public}s", v32, 0xCu);
      sub_10000607C(v39);
      a8 = v38;
      a7 = v37;
      a6 = v36;
      a5 = v35;
    }

    return sub_100508A60(a3, a4, a5, a6, a7, a8);
  }
}

void sub_10050A2C0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (qword_100936368 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094B210);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000668C(a1, a2, &v23);
    _os_log_impl(&_mh_execute_header, v9, v10, "os_transaction INIT {name: com.apple.remindd.RDLocationManagerDelegate.%{public}s}", v11, 0xCu);
    sub_10000607C(v12);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v23 = 0xD00000000000002CLL;
  v24 = 0x80000001007FB900;
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);
  String.utf8CString.getter();

  v14 = os_transaction_create();

  if (v14)
  {
    sub_100508F48(a3, a4);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10000668C(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v15, v16, "os_transaction RELEASE {name: com.apple.remindd.RDLocationManagerDelegate.%{public}s}", v17, 0xCu);
      sub_10000607C(v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_10000668C(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v19, v20, "RDLocationManagerDelegate: Couldn't create os_transaction_t for %{public}s", v21, 0xCu);
      sub_10000607C(v22);
    }

    sub_100508F48(a3, a4);
  }
}

void sub_10050A684(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v5);
  if (v11)
  {
    if (qword_100936368 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10094B210);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = a1;
    v25 = v19;
    *v17 = 136315394;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = sub_10000668C(v20, v21, &v25);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v14;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "didDetermineState: {state=%s, region=%@}", v17, 0x16u);
    sub_100039860(v18);

    sub_10000607C(v19);
  }
}

void sub_10050A90C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    if (qword_100936368 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10094B210);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_10000668C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "didFailWithError: %s", v12, 0xCu);
    sub_10000607C(v13);
  }
}

void sub_10050AB54(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if (v9)
  {
    if (qword_100936368 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10094B210);
  v12 = a1;
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v15 = 136315394;
    if (a1)
    {
      v16 = [v12 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = sub_10000668C(v17, v19, &v25);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = sub_10000668C(v21, v22, &v25);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "monitoringDidFailFor: {region=%s, error=%s}", v15, 0x16u);
    swift_arrayDestroy();
  }
}

unint64_t sub_10050AE3C()
{
  result = qword_10094B2E0;
  if (!qword_10094B2E0)
  {
    sub_1000060C8(255, &qword_100946540, CLRegion_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B2E0);
  }

  return result;
}

uint64_t sub_10050AEAC(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_10094B300, &qword_1007AF488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10050B734();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v17[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[3];
  v16 = v3[4];
  v17[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10050B04C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_10050B09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10050B400(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10050B0C4(uint64_t a1)
{
  v2 = sub_10050B734();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050B100(uint64_t a1)
{
  v2 = sub_10050B734();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10050B13C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10050B520(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10050B19C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t initializeWithCopy for RDSavedHashtag(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void *assignWithCopy for RDSavedHashtag(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a1[2];
  a1[2] = a2[2];

  a1[3] = a2[3];
  v5 = a2[4];
  v6 = a1[4];
  a1[4] = v5;

  return a1;
}

uint64_t assignWithTake for RDSavedHashtag(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedHashtag(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedHashtag(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10050B400(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001007FB970 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10050B520@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10094B2F0, &qword_1007AF480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10050B734();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v25 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v22 = v12;
  v23 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000607C(a1);
  v20 = v22;
  *a2 = v11;
  a2[1] = v20;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v18;
  return result;
}

unint64_t sub_10050B734()
{
  result = qword_10094B2F8;
  if (!qword_10094B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B2F8);
  }

  return result;
}

unint64_t sub_10050B79C()
{
  result = qword_10094B308;
  if (!qword_10094B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B308);
  }

  return result;
}

unint64_t sub_10050B7F4()
{
  result = qword_10094B310;
  if (!qword_10094B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B310);
  }

  return result;
}

unint64_t sub_10050B84C()
{
  result = qword_10094B318;
  if (!qword_10094B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B318);
  }

  return result;
}

id sub_10050B8A0@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedBabysitter];
  v3 = result;
  if (result)
  {
    result = sub_10050C7B8();
    v4 = &off_1008F54F0;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v4;
  return result;
}

uint64_t sub_10050B90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8))(&v24, a3, a4);
  if (!v25)
  {
    return sub_1000050A4(&v24, &unk_10093D8F0, &unk_10079B600);
  }

  sub_100054B6C(&v24, v26);
  v7 = v27;
  v8 = v28;
  sub_10000F61C(v26, v27);
  (*(v8 + 16))(v4, v7, v8);
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10094B320);

  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v11, v12))
  {

    goto LABEL_9;
  }

  v13 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  *v13 = 136446466;
  v14 = [v10 waiterID];

  if (v14)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10000668C(v16, v18, &v23);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    *&v24 = a1;
    *(&v24 + 1) = a2;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v20 = Optional.descriptionOrNil.getter();
    v22 = sub_10000668C(v20, v21, &v23);

    *(v13 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reset babysitter for {waiterID: %{public}s, event: %{public}s}", v13, 0x16u);
    swift_arrayDestroy();

LABEL_9:

    return sub_10000607C(v26);
  }

  __break(1u);
  return result;
}

void sub_10050BBA8(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = a1[3];
  v9 = a1[4];
  sub_10000F61C(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = sub_10050BF80(v10, v11, a2, a3);
  if (v4)
  {

    return;
  }

  v33 = v12;

  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10094B320);
  sub_100030E2C(a1, v34);
  v14 = v3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v15, v16))
  {

    sub_10000607C(v34);
    goto LABEL_9;
  }

  v31 = v16;
  v17 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  *v17 = 136446466;
  v18 = [v14 waiterID];
  v32 = v14;

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10000668C(v19, v21, &v37);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    v23 = v35;
    v24 = v36;
    sub_10000F61C(v34, v35);
    v25 = (*(v24 + 8))(v23, v24);
    v27 = v26;
    sub_10000607C(v34);
    v28 = sub_10000668C(v25, v27, &v37);

    *(v17 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v15, v31, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v17, 0x16u);
    swift_arrayDestroy();

    v14 = v32;
LABEL_9:
    v29 = a1[3];
    v30 = a1[5];
    sub_10000F61C(a1, v29);
    (*(v30 + 8))(v29, v30);
    sub_10050C58C(v14, a1);

    return;
  }

  __break(1u);
}

uint64_t sub_10050BEB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B320);
  v1 = sub_100006654(v0, qword_10094B320);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10050BF80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  (*(a4 + 8))(v12, a3, a4);
  v8 = v13;
  if (!v13)
  {
    sub_1000050A4(v12, &unk_10093D8F0, &unk_10079B600);
LABEL_5:
    v10 = v5;
    sub_10050C12C(a1, a2);
    swift_willThrow();
    return v10;
  }

  v9 = v14;
  sub_10000F61C(v12, v13);
  v10 = (*(v9 + 8))(v4, a1, a2, v8, v9);
  sub_10000607C(v12);
  if (!v10)
  {
    goto LABEL_5;
  }

  return v10;
}

id sub_10050C098()
{
  result = [v0 waiterID];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4._countAndFlagsBits = 0x646568736172632ELL;
    v4._object = 0xE800000000000000;
    String.append(_:)(v4);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10050C12C(uint64_t a1, unint64_t a2)
{
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 babySatErrorWithOperationName:v6];

  sub_1000F5104(&unk_10093D030, &unk_10079C950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = String._bridgeToObjectiveC()();
  v9 = sub_10038D9FC(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
  type metadata accessor for Analytics();
  sub_10050C098();
  sub_1004646CC(v9);

  v10 = v7;
  static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();

  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10094B320);

  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();

  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_7;
  }

  v15 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  *v15 = 136446466;
  *(v15 + 4) = sub_10000668C(a1, a2, &v21);
  *(v15 + 12) = 2082;
  v16 = [v12 waiterID];

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10000668C(v17, v19, &v21);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Babysitting operation because it failed too many times {operation: %{public}s, waiterID: %{public}s}", v15, 0x16u);
    swift_arrayDestroy();

LABEL_7:

    return;
  }

  __break(1u);
}

id sub_10050C458(uint64_t a1)
{
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 tokenByRegisteringAccount:a1 forOperationWithName:v4];

  return v5;
}

void sub_10050C4C0(void *a1)
{
  v2 = *v1;
  v3 = [a1 waiterID];
  [v2 giveAccountWithIDAnotherChance:v3];
}

uint64_t sub_10050C528()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_10050C58C(void *a1, uint64_t a2)
{
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094B320);
  sub_100030E2C(a2, v21);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = [v5 waiterID];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_10000668C(v10, v12, &v20);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2082;
      v14 = v22;
      v15 = v23;
      sub_10000F61C(v21, v22);
      v16 = (*(v15 + 8))(v14, v15);
      v18 = v17;
      sub_10000607C(v21);
      v19 = sub_10000668C(v16, v18, &v20);

      *(v8 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Released babysitter token for {waiterID: %{public}s, executable: %{public}s}", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_10000607C(v21);
  }
}

unint64_t sub_10050C7B8()
{
  result = qword_100936FB0;
  if (!qword_100936FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100936FB0);
  }

  return result;
}

uint64_t sub_10050C858(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_10050C8F8(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v10 = a2 + v6 + 8;
    v11 = *(v5 + 16);

    v11((v3 + v6 + 8) & ~v6, v10 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t sub_10050CA04(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + 8) & ~*(v5 + 80);

  return v6(v7);
}

void *sub_10050CA78(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(*(v4 - 8) + 80);
  v7 = a2 + v6 + 8;

  v5((a1 + v6 + 8) & ~v6, v7 & ~v6, v4);
  return a1;
}

uint64_t *sub_10050CB08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((a1 + *(v7 + 80) + 8) & ~*(v7 + 80), (a2 + *(v7 + 80) + 8) & ~*(v7 + 80));
  return a1;
}

void *sub_10050CB98(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

uint64_t *sub_10050CC08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((a1 + *(v7 + 80) + 8) & ~*(v7 + 80), (a2 + *(v7 + 80) + 8) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_10050CC90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_10050CE14(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_10050D07C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_10050D114(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_10050D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_10050D2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_10050D334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_10050D3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_10050D434(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_10050D538(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_10050D6D8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B568);
  v1 = sub_100006654(v0, qword_10094B568);
  if (qword_1009364F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975218);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10050D7A0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v4 = 0;
    goto LABEL_16;
  }

  v2 = sub_100005F4C(0xD000000000000013, 0x80000001007FB9D0);
  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_10;
    }

LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  sub_100005EF0(*(a1 + 56) + 32 * v2, v35);
  if (swift_dynamicCast())
  {
    v4 = v34;
  }

  else
  {
    v4 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_10:
  v5 = sub_100005F4C(0x7274537865486164, 0xEB00000000676E69);
  if (v6)
  {
    sub_100005EF0(*(a1 + 56) + 32 * v5, v35);
    if (swift_dynamicCast())
    {
      v7 = v34;
    }

    else
    {
      v7 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  v20 = sub_100005F4C(0xD000000000000013, 0x80000001007FB9F0);
  if (v21)
  {
    sub_100005EF0(*(a1 + 56) + 32 * v20, v35);
    if (swift_dynamicCast())
    {
      v8 = v34;
    }

    else
    {
      v8 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_40;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_40;
  }

LABEL_18:
  v9 = sub_100005F4C(6579570, 0xE300000000000000);
  if (v10)
  {
    sub_100005EF0(*(a1 + 56) + 32 * v9, v35);
    if (swift_dynamicCast())
    {
      if (*(a1 + 16))
      {
        v11 = sub_100005F4C(0x6E65657267, 0xE500000000000000);
        if (v12)
        {
          sub_100005EF0(*(a1 + 56) + 32 * v11, v35);
          if (swift_dynamicCast())
          {
            if (*(a1 + 16))
            {
              v13 = sub_100005F4C(1702194274, 0xE400000000000000);
              if (v14)
              {
                sub_100005EF0(*(a1 + 56) + 32 * v13, v35);
                if (swift_dynamicCast())
                {
                  if (*(a1 + 16))
                  {
                    v15 = sub_100005F4C(0x6168706C61, 0xE500000000000000);
                    if (v16)
                    {
                      sub_100005EF0(*(a1 + 56) + 32 * v15, v35);
                      if (swift_dynamicCast())
                      {
                        if (*(a1 + 16))
                        {
                          v17 = sub_100005F4C(0x424752726F6C6F63, 0xED00006563617053);
                          if (v18)
                          {
                            sub_100005EF0(*(a1 + 56) + 32 * v17, v35);
                            if (swift_dynamicCast())
                            {
                              if (v4)
                              {
                                v19 = String._bridgeToObjectiveC()();
                              }

                              else
                              {
                                v19 = 0;
                              }

                              if (v7)
                              {
                                v31 = String._bridgeToObjectiveC()();
                              }

                              else
                              {
                                v31 = 0;
                              }

                              if (v8)
                              {
                                v32 = String._bridgeToObjectiveC()();
                              }

                              else
                              {
                                v32 = 0;
                              }

                              v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:*&v33 green:v19 blue:v31 alpha:v32 colorSpace:v33 daSymbolicColorName:v33 daHexString:v33 ckSymbolicColorName:v33];

                              return v25;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_40:

  if (v4)
  {
    v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v23 = String._bridgeToObjectiveC()();

    if (!v7)
    {
      v24 = 0;
LABEL_46:
      v25 = [v22 initWithDASymbolicColorName:v23 daHexString:v24];

      return v25;
    }

LABEL_45:
    v24 = String._bridgeToObjectiveC()();

    goto LABEL_46;
  }

  if (v7)
  {
    v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v23 = 0;
    goto LABEL_45;
  }

  if (qword_100936378 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_10094B568);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Can't construct REMColor from invalid JSON", v30, 2u);
  }

  return 0;
}

id sub_10050DD50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_10050D7A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10050DD78(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v221 = a8;
  v237 = type metadata accessor for UUID();
  v220 = *(v237 - 8);
  v16 = *(v220 + 64);
  __chkstk_darwin(v237);
  v254 = &v219 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for TimeZone();
  v230 = *(v251 - 8);
  v18 = *(v230 + 64);
  __chkstk_darwin(v251);
  v250 = &v219 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for Calendar.Identifier();
  v223 = *(v249 - 1);
  v20 = v223[8];
  __chkstk_darwin(v249);
  v248 = &v219 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for Calendar();
  v222 = *(v247 - 1);
  v22 = *(v222 + 64);
  __chkstk_darwin(v247);
  v246 = &v219 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for DateComponents();
  v241 = *(v252 - 8);
  v24 = *(v241 + 64);
  __chkstk_darwin(v252);
  v245 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for Date();
  v232 = *(v255 - 8);
  v26 = *(v232 + 64);
  __chkstk_darwin(v255);
  v253 = &v219 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v244 = &v219 - v29;
  v30 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v225 = &v219 - v32;
  v33 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v224 = &v219 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v229 = &v219 - v37;
  __chkstk_darwin(v38);
  v228 = &v219 - v39;
  v40 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v236 = &v219 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v219 - v44;
  __chkstk_darwin(v46);
  v226 = &v219 - v47;
  v48 = [objc_allocWithZone(REMReminderStorage) initWithObjectID:a2 listID:a3 accountID:a4];
  v49 = a5;
  v50 = v48;
  [v48 setParentReminderID:v49];
  [v50 setMinimumSupportedVersion:a6];
  [v50 setEffectiveMinimumSupportedVersion:a7];
  v51 = type metadata accessor for RDSavedReminder();
  v239 = a4;
  v240 = v51;
  v52 = *(a1 + *(v51 + 36));
  v238 = a2;
  v227 = v45;
  if (v52)
  {
    v261 = sub_10038E004(_swiftEmptyArrayStorage);
    v262[0] = _swiftEmptySetSingleton;
    v53 = *(v52 + 16);
    v257 = a2;
    v256 = a4;
    if (v53)
    {
      v231 = v50;
      v233 = a1;
      v54 = (v52 + 64);
      do
      {
        v259 = v53;
        v60 = *(v54 - 2);
        v258 = *(v54 - 1);
        v61 = *v54;
        v63 = *(v54 - 4);
        v62 = *(v54 - 3);
        v64 = objc_opt_self();

        v65 = [v64 newObjectID];
        v66 = objc_allocWithZone(REMHashtag);
        v260 = v60;
        v67 = String._bridgeToObjectiveC()();
        v68 = [v66 initWithObjectID:v65 accountID:v256 reminderID:v257 type:v63 name:v67];

        v69 = v68;
        sub_10037C094(&v263, v69);

        v70 = v261;
        if (v261)
        {

          v55 = [v69 objectIdentifier];
          v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v58 = v57;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v263 = v70;
          sub_1002C72CC(v56, v58, v258, v61, isUniquelyReferenced_nonNull_native);

          swift_bridgeObjectRelease_n();
          v261 = v263;
        }

        else
        {

          v261 = 0;
        }

        v54 += 5;
        v53 = v259 - 1;
      }

      while (v259 != 1);
      a1 = v233;
      v50 = v231;
    }

    sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
    sub_10000CE28(&qword_10093AA28, &unk_10093F600, REMHashtag_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v50 setHashtags:isa];
  }

  else
  {
    v261 = 0;
  }

  v72 = [v50 titleReplicaIDSource];
  v73 = (a1 + v240[15]);
  v74 = *v73;
  v75 = v73[1];
  v76 = objc_allocWithZone(REMCRMergeableStringDocument);
  sub_100029344(v74, v75);
  v77 = v242;
  v78 = sub_1002F937C(v72);
  sub_10001BBA0(v74, v75);
  v260 = v77;
  if (v77)
  {

    goto LABEL_122;
  }

  if (v261)
  {
    v79 = REMCRMergeableStringDocument.replacingInlineHashtagIDs(newHashtagID_byOriginalHashtagID:)();

    v80 = v79;
    v81 = v240;
  }

  else
  {
    v81 = v240;
    v80 = v78;
  }

  v82 = v232;
  [v50 setTitleDocument:v80];
  v83 = a1 + v81[10];
  v84 = *(v83 + 8);
  v85 = v255;
  if (v84 >> 60 == 15)
  {
    v86 = v227;
  }

  else
  {
    v87 = *v83;
    sub_100029344(*v83, *(v83 + 8));
    v88 = [v50 notesReplicaIDSource];
    v89 = objc_allocWithZone(REMCRMergeableStringDocument);
    sub_100029344(v87, v84);
    v90 = v260;
    v91 = sub_1002F937C(v88);
    sub_100031A14(v87, v84);

    v260 = v90;
    if (v90)
    {
      sub_100031A14(v87, v84);
      goto LABEL_105;
    }

    if (v261)
    {
      v92 = REMCRMergeableStringDocument.replacingInlineHashtagIDs(newHashtagID_byOriginalHashtagID:)();

      v91 = v92;
    }

    v82 = v232;
    v86 = v227;
    [v50 setNotesDocument:v91];
    sub_100031A14(v87, v84);
  }

  v93 = v240;
  [v50 setPriority:*(a1 + v240[11])];
  [v50 setFlagged:*(a1 + v93[8])];
  v233 = a1;
  v94 = v226;
  sub_100010364(a1, v226, &unk_100938850, qword_100795AE0);
  v234 = *(v82 + 48);
  v235 = v82 + 48;
  if (v234(v94, 1, v85) == 1)
  {
    v95 = 0;
  }

  else
  {
    v95 = Date._bridgeToObjectiveC()().super.isa;
    (*(v82 + 8))(v94, v85);
  }

  [v50 setCreationDate:v95];

  sub_100010364(v233, v86, &unk_100938850, qword_100795AE0);
  if (v234(v86, 1, v85) == 1)
  {
    v96 = 0;
  }

  else
  {
    v96 = Date._bridgeToObjectiveC()().super.isa;
    (*(v82 + 8))(v86, v85);
  }

  [v50 setLastModifiedDate:v96];

  v97 = v228;
  sub_100010364(v233 + v93[13], v228, &qword_10093B790, &qword_100798D88);
  v98 = v241;
  v99 = *(v241 + 48);
  v100 = v252;
  if (v99(v97, 1, v252) == 1)
  {
    v101 = 0;
  }

  else
  {
    v102 = v97;
    v101 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v98 + 8))(v102, v100);
  }

  [v50 setStartDateComponents:v101];

  v103 = v93[7];
  v104 = v233;
  v105 = v229;
  sub_100010364(v233 + v103, v229, &qword_10093B790, &qword_100798D88);
  if (v99(v105, 1, v100) == 1)
  {
    v106 = 0;
  }

  else
  {
    v106 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v241 + 8))(v105, v100);
  }

  [v50 setDueDateComponents:v106];

  v107 = sub_1001C7758();
  [v50 setDisplayDate:v107];

  v108 = sub_1001C7758();
  v109 = &selRef_persistentStoreForIdentifier_;
  if (v108)
  {
    v110 = v108;
    v111 = [v108 isAllDay];

    [v50 setAllDay:v111];
    if (v111)
    {
      v112 = 0;
      v113 = v240;
      v114 = v230;
      goto LABEL_41;
    }
  }

  else
  {
    [v50 setAllDay:0];
  }

  v115 = v224;
  sub_100010364(v104 + v103, v224, &qword_10093B790, &qword_100798D88);
  v116 = v252;
  if (v99(v115, 1, v252) != 1)
  {
    v109 = v225;
    DateComponents.timeZone.getter();
    v117 = v241;
    (*(v241 + 8))(v115, v116);
    v114 = v230;
    v118 = v251;
    if ((*(v230 + 48))(v109, 1, v251) == 1)
    {
      v112 = 0;
      v113 = v240;
    }

    else
    {
      v119 = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(v114 + 8))(v109, v118);
      v112 = [(objc_class *)v119 name];

      v113 = v240;
      if (!v112)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = String._bridgeToObjectiveC()();
        v113 = v240;
      }
    }

    goto LABEL_46;
  }

  sub_1000050A4(v115, &qword_10093B790, &qword_100798D88);
  v114 = v230;
  (*(v230 + 56))(v225, 1, 1, v251);
  v112 = 0;
  v113 = v240;
LABEL_41:
  v117 = v241;
LABEL_46:
  [v50 setTimeZone:v112];

  v120 = (v104 + v113[5]);
  v121 = *v120;
  v231 = v50;
  if (v121)
  {
    v122 = v120[3];
    v229 = v120[2];
    v230 = v122;
    v123 = v120[1];
    v109 = _swiftEmptyArrayStorage;
    v263 = _swiftEmptyArrayStorage;
    v124 = *(v121 + 16);
    if (v124)
    {
      v228 = v123;
      v125 = (v121 + 32);
      LODWORD(v259) = enum case for Calendar.Identifier.gregorian(_:);
      v257 = (v223 + 1);
      v258 = v223 + 13;
      v256 = (v114 + 8);
      v241 = v117 + 8;
      v242 = (v222 + 8);
      v126 = (v232 + 8);
      v127 = v244;
      do
      {
        v128 = *v125;
        Date.init(timeIntervalSinceReferenceDate:)();
        v130 = v248;
        v129 = v249;
        (*v258)(v248, v259, v249);
        v131 = v246;
        Calendar.init(identifier:)();
        (*v257)(v130, v129);
        v132 = v250;
        static TimeZone.current.getter();
        v133 = v245;
        Calendar.dateComponents(in:from:)();
        (*v256)(v132, v251);
        (*v242)(v131, v247);
        v134 = objc_allocWithZone(REMAlarmDateTrigger);
        v135 = DateComponents._bridgeToObjectiveC()().super.isa;
        v136 = [v134 initWithDateComponents:v135];

        (*v241)(v133, v252);
        (*v126)(v127, v255);
        v137 = v136;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v227 = *((v263 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v125;
        --v124;
      }

      while (v124);
      v109 = v263;
      v104 = v233;
      v123 = v228;
    }

    v138 = *(v123 + 16);
    v50 = v231;
    if (v138)
    {
      v139 = (v123 + 32);
      sub_1000060C8(0, &qword_10094B768, REMAlarmLocationTrigger_ptr);
      while (1)
      {
        v266[0] = *v139;
        v140 = v139[1];
        v141 = v139[2];
        v142 = v139[4];
        v266[3] = v139[3];
        v266[4] = v142;
        v266[1] = v140;
        v266[2] = v141;
        v143 = v139[5];
        v144 = v139[6];
        v145 = v139[8];
        v266[7] = v139[7];
        v266[8] = v145;
        v266[5] = v143;
        v266[6] = v144;
        sub_1000FE280(v266, v262);
        sub_1000FE280(v266, v262);
        v146 = v260;
        v147 = sub_1000FE330(v266);
        v260 = v146;
        if (v146)
        {
          break;
        }

        v148 = v147;
        sub_1000FE2DC(v266);
        v149 = v148;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v150 = *((v263 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v109 = v263;
        sub_1000FE2DC(v266);
        v139 += 9;
        if (!--v138)
        {
          goto LABEL_59;
        }
      }

      sub_1000FE2DC(v266);
      sub_1000FE2DC(v266);
LABEL_104:

LABEL_105:

      goto LABEL_122;
    }

LABEL_59:
    v151 = *(v229 + 16);
    if (v151)
    {
      v152 = (v229 + 32);
      do
      {
        v153 = [objc_allocWithZone(REMAlarmTimeIntervalTrigger) initWithTimeInterval:*v152];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v154 = *((v263 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v50 = v231;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v152;
        --v151;
      }

      while (v151);
      v109 = v263;
    }

    v155 = *(v230 + 16);
    if (v155)
    {
      v156 = (v230 + 32);
      do
      {
        v157 = *v156++;
        v158 = [objc_allocWithZone(REMAlarmVehicleTrigger) initWithEvent:v157];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v159 = *((v263 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v50 = v231;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        --v155;
      }

      while (v155);
      v109 = v263;
    }

    if (v109 >> 62)
    {
LABEL_107:
      v160 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v160 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v160)
    {
      v262[0] = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v160 < 0)
      {
        __break(1u);
        return result;
      }

      v162 = 0;
      do
      {
        if ((v109 & 0xC000000000000001) != 0)
        {
          v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v163 = *(v109 + 8 * v162 + 32);
        }

        v164 = v163;
        ++v162;
        [objc_allocWithZone(REMAlarm) initWithTrigger:v163];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v165 = *(v262[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v160 != v162);
      v104 = v233;
      v50 = v231;
    }

    sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
    v166 = Array._bridgeToObjectiveC()().super.isa;

    [v50 setAlarms:v166];

    v113 = v240;
  }

  v167 = *(v104 + v113[6]);
  v168 = _swiftEmptyArrayStorage;
  if (!v167)
  {
    goto LABEL_110;
  }

  v169 = *(v167 + 16);
  if (!v169)
  {
    goto LABEL_110;
  }

  v170 = 0;
  v262[0] = _swiftEmptyArrayStorage;
  v248 = (v232 + 8);
  v249 = (v232 + 56);
  v246 = _swiftEmptyArrayStorage;
  v247 = (v220 + 8);
  v171 = (v167 + 48);
  v244 = v169 - 1;
  v245 = (v167 + 48);
  v250 = v169;
  v251 = v167;
  v104 = v255;
  do
  {
    v172 = &v171[24 * v170];
    v50 = v170;
    while (1)
    {
      if (v50 >= *(v167 + 16))
      {
        __break(1u);
        goto LABEL_107;
      }

      v180 = *(v172 - 1);
      v109 = *v172;
      v181 = *(v243 + 16);
      v182 = *(v172 - 2);
      if (([v181 includeConcealed] & 1) != 0 || rem_currentRuntimeVersion() >= v109)
      {
        break;
      }

LABEL_88:
      ++v50;
      v172 += 3;
      if (v169 == v50)
      {
        goto LABEL_98;
      }
    }

    v259 = v109;
    v183 = [objc_opt_self() newObjectID];
    v184 = [v183 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v185 = v182;
    Date.init(timeIntervalSinceReferenceDate:)();
    v186 = v236;
    (*v249)(v236, 1, 1, v104);
    v258 = UUID._bridgeToObjectiveC()().super.isa;
    v257 = Date._bridgeToObjectiveC()().super.isa;
    v187 = v234(v186, 1, v104);
    v252 = v50;
    if (v187 == 1)
    {
      v256 = 0;
      v174 = v248;
    }

    else
    {
      v256 = Date._bridgeToObjectiveC()().super.isa;
      v173 = v186;
      v174 = v248;
      (*v248)(v173, v104);
    }

    v175 = v259;
    v176 = objc_allocWithZone(REMDueDateDeltaAlert);
    v177 = v257;
    v178 = v258;
    v179 = v256;
    v109 = [v176 initWithIdentifier:v258 reminderID:v238 accountID:v239 dueDateDelta:v185 creationDate:v257 acknowledgedDate:v256 minimumSupportedAppVersion:v175];

    (*v174)(v253, v104);
    (*v247)(v254, v237);
    v169 = v250;
    v167 = v251;
    v50 = v252;
    if (!v109)
    {
      goto LABEL_88;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v262[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v262[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v188 = *((v262[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v170 = v50 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v246 = v262[0];
    v171 = v245;
  }

  while (v244 != v50);
LABEL_98:
  v168 = v246;
  if (v246 >> 62)
  {
    v200 = _CocoaArrayWrapper.endIndex.getter();
    v104 = v233;
    v50 = v231;
    v113 = v240;
    if (!v200)
    {
      goto LABEL_109;
    }

LABEL_100:
    v189 = objc_autoreleasePoolPush();
    v190 = v168;
    v191 = v189;
    v192 = v260;
    v193 = sub_10012E8E4(v190);
    if (v192)
    {
      v260 = v192;
      objc_autoreleasePoolPop(v191);
      goto LABEL_104;
    }

    v194 = v193;
    v262[0] = v193;
    type metadata accessor for RDDueDateDeltaAlerts();
    sub_10051459C(&qword_10093B7B8, type metadata accessor for RDDueDateDeltaAlerts);
    v195 = REMJSONRepresentable.toJSONData()();
    v260 = 0;
    v196 = v195;
    v198 = v197;

    objc_autoreleasePoolPop(v191);
    v199 = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v196, v198);
    [v50 setDueDateDeltaAlertsData:v199];

    v168 = v246;
  }

  else
  {
    v104 = v233;
    v50 = v231;
    v113 = v240;
    if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_100;
    }

LABEL_109:
    [v50 setDueDateDeltaAlertsData:0];
  }

LABEL_110:
  if ([*(v243 + 16) includeDueDateDeltaAlerts])
  {
    sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
    v201 = Array._bridgeToObjectiveC()().super.isa;
    [v50 setFetchedDueDateDeltaAlerts:v201];
  }

  v246 = v168;
  v202 = *(v104 + v113[12]);
  if (v202)
  {
    v203 = *(v202 + 16);
    if (v203)
    {
      v263 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v259 = sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
      v258 = objc_opt_self();
      v204 = v202 + 32;
      v205 = v238;
      v206 = v239;
      do
      {
        v207 = *(v204 + 16);
        v264[0] = *v204;
        v264[1] = v207;
        v208 = *(v204 + 32);
        v209 = *(v204 + 48);
        v210 = *(v204 + 64);
        v265 = *(v204 + 80);
        v264[3] = v209;
        v264[4] = v210;
        v264[2] = v208;
        sub_1004B12D8(v264, v262);
        sub_10031174C(v264, [v258 newObjectID], v206, v205);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v211 = *(v263 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v204 += 88;
        --v203;
      }

      while (v203);
      v212 = Array._bridgeToObjectiveC()().super.isa;

      v50 = v231;
      [v231 setRecurrenceRules:v212];

      v104 = v233;
    }
  }

  v213 = v104 + v240[16];
  v214 = *(v213 + 8);
  if (v214 >> 60 != 15)
  {
    v215 = *v213;
    sub_1001CB4B8(*v213, *(v213 + 8));
    sub_100029344(v215, v214);
    v216 = Data._bridgeToObjectiveC()().super.isa;
    v217 = [objc_opt_self() representationFromData:v216];

    sub_100031A14(v215, v214);
    [v50 setContactHandles:v217];

    sub_100031A14(v215, v214);
  }

  [v50 setResolutionTokenMap:0];
  v218 = 0;
  if (a9 >> 60 != 15)
  {
    v218 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v50 setResolutionTokenMapData:v218];

LABEL_122:

  return v50;
}

id sub_10050F83C(void *a1)
{
  v3 = v2;
  v5 = *v1;
  v6 = type metadata accessor for RDSavedReminder();
  v7 = *(*(v6 - 8) + 64);
  *&v8 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = 0;
  v11 = [a1 remObjectIDWithError:{&v75, v8}];
  if (!v11)
  {
    v23 = v75;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v3;
  }

  v12 = v11;
  v13 = v75;
  v14 = [a1 account];
  if (v14)
  {
    v15 = v14;
    v75 = 0;
    v16 = [v14 remObjectIDWithError:&v75];
    if (!v16)
    {
      v37 = v75;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return v3;
    }

    v74 = v16;
    v17 = v75;
    v18 = [a1 template];
    if (v18)
    {
      v75 = 0;
      v19 = v18;
      v20 = [v18 remObjectIDWithError:&v75];
      if (v20)
      {
        v72 = v19;
        v73 = v20;
        v21 = v75;
        sub_1002A767C();
        if (v2)
        {

          v22 = v73;
LABEL_22:

          return v3;
        }

        v71 = REMCDSavedReminder.parentSavedReminderObjectID.getter();
        v69 = [a1 minimumSupportedVersion];
        v52 = [a1 effectiveMinimumSupportedVersion];
        v53 = [a1 resolutionTokenMapData];
        if (v53)
        {
          v54 = v53;
          v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v70 = v56;
        }

        else
        {
          v55 = 0;
          v70 = 0xF000000000000000;
        }

        v3 = sub_10050DD78(v10, v12, v73, v74, v71, v69, v52, v55, v70);
        sub_100031A14(v55, v70);

        v57 = [a1 storeControllerManagedObjectContext];
        if (v57)
        {
          v58 = v57;
          v59 = [v57 storeController];
          if (!v59)
          {
            sub_1001CB574(v10);

            return v3;
          }

          v60 = v59;
          v61 = [a1 attachments];
          if (v61)
          {
            v62 = v61;
            v70 = v58;
            v71 = v60;
            type metadata accessor for REMCDSavedAttachment();
            sub_10051459C(&unk_10093F780, type metadata accessor for REMCDSavedAttachment);
            v63 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            if (qword_100936388 != -1)
            {
              swift_once();
            }

            v64 = type metadata accessor for Logger();
            v65 = sub_100006654(v64, qword_10094B598);
            v69 = v68;
            __chkstk_darwin(v65);
            v68[3] = &v68[-4];
            v68[4] = v68;
            v75 = v63;
            __chkstk_darwin(v66);
            v68[1] = v63;
            v68[2] = sub_1000F5104(&qword_10094B758, &qword_1007AF818);
            sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
            sub_10000CB48(&qword_10094B760, &qword_10094B758, &qword_1007AF818);
            Sequence.map<A>(skippingError:_:)();

            isa = Array._bridgeToObjectiveC()().super.isa;

            [v3 setAttachments:isa];

            sub_1001CB574(v10);
            return v3;
          }

          sub_1001CB574(v10);
        }

        else
        {
          sub_1001CB574(v10);
        }

        return v3;
      }

      v50 = v75;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      if (qword_100936388 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100006654(v38, qword_10094B598);
      v3 = v12;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v75 = v5;
        v76 = v73;
        *v41 = 136446466;
        swift_getMetatypeMetadata();
        v43 = String.init<A>(describing:)();
        v45 = sub_10000668C(v43, v44, &v76);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2112;
        *(v41 + 14) = v3;
        *v42 = v12;
        v46 = v3;
        _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s: cdSavedReminder.template is nil {cdSavedReminder.remObjectID: %@}", v41, 0x16u);
        sub_1000050A4(v42, &unk_100938E70, &unk_100797230);

        sub_10000607C(v73);
      }

      v47 = objc_opt_self();
      type metadata accessor for REMCDSavedReminder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v49 = String._bridgeToObjectiveC()();
      [v47 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v49];

      swift_willThrow();
    }

    v22 = v74;
    goto LABEL_22;
  }

  if (qword_100936388 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_10094B598);
  v25 = v12;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v75 = v5;
    v76 = v30;
    *v28 = 136446466;
    swift_getMetatypeMetadata();
    v31 = String.init<A>(describing:)();
    v3 = sub_10000668C(v31, v32, &v76);

    *(v28 + 4) = v3;
    *(v28 + 12) = 2112;
    *(v28 + 14) = v25;
    *v29 = v12;
    v33 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s: cdSavedReminder.account is nil {cdSavedReminder.remObjectID: %@}", v28, 0x16u);
    sub_1000050A4(v29, &unk_100938E70, &unk_100797230);

    sub_10000607C(v30);
  }

  v34 = objc_opt_self();
  type metadata accessor for REMCDSavedReminder();
  v35 = swift_getObjCClassFromMetadata();
  v36 = String._bridgeToObjectiveC()();
  [v34 unexpectedNilPropertyWithClass:v35 property:v36];

  swift_willThrow();
  return v3;
}

uint64_t sub_1005102C0(char a1)
{
  result = 0x44497463656A626FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      v3 = 0x44656C746974;
      goto LABEL_7;
    case 5:
      result = 0x797469726F697270;
      break;
    case 6:
      result = 0x64656767616C66;
      break;
    case 7:
      result = 0x6E6F697461657263;
      break;
    case 8:
      result = 0x6E65727275636572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x656E6F5A656D6974;
      break;
    case 12:
      result = 0x7961446C6C61;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      v3 = 0x447365746F6ELL;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
      break;
    case 15:
      result = 0x656D686361747461;
      break;
    case 16:
      result = 0x736D72616C61;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0xD000000000000024;
      break;
    case 20:
      result = 0x7367617468736168;
      break;
    case 21:
      result = 0x48746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100510538(id a1, NSObject *a2, uint64_t a3, int a4, unint64_t a5)
{
  v7 = v6;
  v194 = a5;
  v184 = a4;
  v11 = *v5;
  v12 = type metadata accessor for Date();
  isa = v12[-1].isa;
  v13 = *(isa + 8);
  __chkstk_darwin(v12);
  v179 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v182 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v180 = (&v166 - v19);
  v181 = type metadata accessor for RDSavedReminder();
  v20 = *(*(v181 - 1) + 64);
  __chkstk_darwin(v181);
  v187 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for UUID();
  v22 = *(v197 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v197);
  v186 = (&v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v193 = (&v166 - v27);
  v198 = a2;
  v28 = [a2 createResolutionTokenMapIfNecessary];
  v29 = [a1 resolutionTokenMap];
  if (!v29)
  {
    if (qword_100936380 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100006654(v78, qword_10094B580);
    v79 = a1;

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v202 = v200;
      *v82 = 138543618;
      v84 = [v79 objectID];
      *(v82 + 4) = v84;
      v199 = v83;
      *v83 = v84;
      *(v82 + 12) = 2082;
      v85 = *(a3 + 16);
      if (v85)
      {
        LODWORD(v197) = v81;
        v198 = v80;
        v188 = v28;
        v201 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v85, 0);
        v86 = (a3 + 32);
        v87 = v201;
        v88 = 0x80000001007EA630;
        v89 = 0x80000001007EA610;
        v90 = 0x80000001007E8FD0;
        v91 = 0x80000001007EA5E0;
        v92 = 0x80000001007EA5C0;
        v93 = 0x80000001007EA5A0;
        v94 = 0x80000001007EA570;
        v95 = 0x80000001007E8C60;
        v96 = 0x80000001007EA4D0;
        do
        {
          v97 = *v86++;
          v98 = 0xE800000000000000;
          v99 = 0x44497463656A626FLL;
          switch(v97)
          {
            case 1:
              v99 = 0xD000000000000010;
              v98 = v96;
              break;
            case 2:
              v99 = 0xD000000000000017;
              v98 = v95;
              break;
            case 3:
              v99 = 0xD000000000000011;
              v98 = v94;
              break;
            case 4:
              v99 = 0x636F44656C746974;
              v98 = 0xED0000746E656D75;
              break;
            case 5:
              v99 = 0x797469726F697270;
              break;
            case 6:
              v98 = 0xE700000000000000;
              v99 = 0x64656767616C66;
              break;
            case 7:
              v99 = 0x6E6F697461657263;
              v98 = 0xEC00000065746144;
              break;
            case 8:
              v99 = 0x6E65727275636572;
              v98 = 0xEF73656C75526563;
              break;
            case 9:
              v99 = 0xD000000000000013;
              v98 = v93;
              break;
            case 10:
              v99 = 0xD000000000000011;
              v98 = v92;
              break;
            case 11:
              v99 = 0x656E6F5A656D6974;
              break;
            case 12:
              v98 = 0xE600000000000000;
              v99 = 0x7961446C6C61;
              break;
            case 13:
              v99 = 0xD000000000000011;
              v98 = v91;
              break;
            case 14:
              v99 = 0x636F447365746F6ELL;
              v98 = 0xED0000746E656D75;
              break;
            case 15:
              v99 = 0x656D686361747461;
              v98 = 0xEB0000000073746ELL;
              break;
            case 16:
              v98 = 0xE600000000000000;
              v99 = 0x736D72616C61;
              break;
            case 17:
              v99 = 0xD000000000000016;
              v98 = v90;
              break;
            case 18:
              v99 = 0xD00000000000001ALL;
              v98 = v89;
              break;
            case 19:
              v99 = 0xD000000000000024;
              v98 = v88;
              break;
            case 20:
              v99 = 0x7367617468736168;
              break;
            case 21:
              v99 = 0x48746361746E6F63;
              v98 = 0xEE0073656C646E61;
              break;
            default:
              break;
          }

          v201 = v87;
          v101 = v87[2];
          v100 = v87[3];
          if (v101 >= v100 >> 1)
          {
            v189 = v95;
            v190 = v94;
            v187 = v96;
            v195 = v89;
            v196 = v88;
            v193 = v91;
            v194 = v90;
            v191 = v93;
            v192 = v92;
            sub_100026EF4((v100 > 1), v101 + 1, 1);
            v96 = v187;
            v95 = v189;
            v94 = v190;
            v93 = v191;
            v92 = v192;
            v91 = v193;
            v90 = v194;
            v89 = v195;
            v88 = v196;
            v87 = v201;
          }

          v87[2] = v101 + 1;
          v102 = &v87[2 * v101];
          v102[4] = v99;
          v102[5] = v98;
          --v85;
        }

        while (v85);
        v28 = v188;
        v80 = v198;
        LOBYTE(v81) = v197;
      }

      v103 = Array.description.getter();
      v105 = v104;

      v106 = sub_10000668C(v103, v105, &v202);

      *(v82 + 14) = v106;
      _os_log_impl(&_mh_execute_header, v80, v81, "REMReminderStorageCDIngestor: merge(storage:into cdReminder:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v82, 0x16u);
      sub_1000050A4(v199, &unk_100938E70, &unk_100797230);

      sub_10000607C(v200);
    }

    v107 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v109 = String._bridgeToObjectiveC()();
    [v107 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v109];

    swift_willThrow();
    return;
  }

  v30 = v29;
  v169 = v12;
  v171 = v11;
  v199 = sub_100681D58(v29, a3);
  v32 = *(a3 + 16);
  if (!v32)
  {
    v34 = v198;
    goto LABEL_110;
  }

  v172 = v30;
  v173 = v6;
  v7 = 0;
  v178 = 0;
  LODWORD(v192) = 0;
  v174 = 0;
  v175 = 0;
  LODWORD(v200) = 0;
  v176 = 0;
  v177 = 0;
  LODWORD(v196) = 0;
  v33 = (a3 + 32);
  v189 = 0x80000001007EA4D0;
  v190 = 0x80000001007E8C60;
  v185 = (v22 + 8);
  v30 = (1 - v32);
  *&v31 = 136315138;
  v170 = v31;
  *&v31 = 136446466;
  v168 = v31;
  v195 = a1;
  v34 = v198;
  v188 = v28;
  while (2)
  {
    v35 = *v33++;
    switch(v35)
    {
      case 1:
        if (qword_100936390 != -1)
        {
          swift_once();
        }

        v45 = qword_100974F30;
        if (*(qword_100974F30 + 16))
        {
          v12 = v189;
          v46 = sub_100005F4C(0xD000000000000010, v189);
          v48 = v47;

          if (v48)
          {
            v49 = (*(v45 + 56) + 16 * v46);
            v51 = *v49;
            v50 = v49[1];

LABEL_55:
            a1 = v195;
            v22 = String._bridgeToObjectiveC()();

            v11 = [v28 mergeWithMap:v199 forKey:v22];

            if ((v11 & 1) == 0)
            {
              goto LABEL_58;
            }

            v76 = [a1 parentReminderID];
            if (v76)
            {
              v77 = v76;
              v12 = [v76 uuid];

              v22 = v186;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v11 = UUID._bridgeToObjectiveC()().super.isa;
              (v185->isa)(v22, v197);
            }

            else
            {
              v11 = 0;
            }

            [v34 setParentSavedReminderIdentifier:v11];
            goto LABEL_62;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        sub_100006654(v70, qword_100946C50);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v202 = v74;
          *v73 = v170;
          v75 = sub_10000668C(0xD000000000000010, v189, &v202);

          *(v73 + 4) = v75;
          v12 = v198;
          _os_log_impl(&_mh_execute_header, v71, v72, "Unknown ingestable key {key: %s}", v73, 0xCu);
          sub_10000607C(v74);
          v28 = v188;

          v34 = v12;
        }

        else
        {
        }

        goto LABEL_55;
      case 2:
        if (qword_100936390 != -1)
        {
          swift_once();
        }

        v36 = qword_100974F30;
        if (*(qword_100974F30 + 16))
        {
          v12 = v190;
          v37 = sub_100005F4C(0xD000000000000017, v190);
          v39 = v38;

          if (v39)
          {
            v40 = (*(v36 + 56) + 16 * v37);
            v41 = *v40;
            v42 = v40[1];

            goto LABEL_51;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_100006654(v63, qword_100946C50);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v202 = v12;
          *v66 = v170;
          v167 = v64;
          v67 = sub_10000668C(0xD000000000000017, v190, &v202);

          *(v66 + 4) = v67;
          v34 = v198;
          v68 = v65;
          v69 = v167;
          _os_log_impl(&_mh_execute_header, v167, v68, "Unknown ingestable key {key: %s}", v66, 0xCu);
          sub_10000607C(v12);

          v28 = v188;
        }

        else
        {
        }

LABEL_51:
        v11 = String._bridgeToObjectiveC()();

        v22 = [v28 mergeWithMap:v199 forKey:v11];

        a1 = v195;
        if (v22)
        {
          -[NSObject setMinimumSupportedVersion:](v34, "setMinimumSupportedVersion:", [v195 minimumSupportedVersion]);
          if (!v30)
          {
LABEL_101:
            if ((v7 & 1) == 0)
            {
              v7 = v173;
              v30 = v172;
              goto LABEL_108;
            }

            LODWORD(v196) = 1;
            goto LABEL_103;
          }

LABEL_63:
          LODWORD(v196) = 1;
          goto LABEL_6;
        }

LABEL_58:
        if (v30)
        {
LABEL_6:
          if (++v30 == 1)
          {
            __break(1u);
            goto LABEL_135;
          }

          continue;
        }

        if ((v7 & 1) == 0)
        {
LABEL_107:
          v7 = v173;
          v30 = v172;
          if (v196)
          {
            goto LABEL_108;
          }

          goto LABEL_110;
        }

LABEL_103:
        v110 = String._bridgeToObjectiveC()();
        v111 = [v28 mergeWithMap:v199 forKey:v110];

        if (!v111)
        {
          goto LABEL_107;
        }

        if (v178)
        {
          v112 = objc_autoreleasePoolPush();
          v113 = v173;
          sub_100513458(a1);
          v7 = v113;
          v30 = v172;
          v114 = v187;
          if (v113)
          {
            objc_autoreleasePoolPop(v112);
            goto LABEL_120;
          }

          objc_autoreleasePoolPop(v112);
        }

        else
        {
          v7 = v173;
          v30 = v172;
          v114 = v187;
        }

        v137 = a1;
        sub_1001C8F20(v137, v184 & 1, v114);
        if (v7)
        {
LABEL_120:

          goto LABEL_121;
        }

        v138 = type metadata accessor for JSONEncoder();
        v139 = *(v138 + 48);
        v140 = *(v138 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        sub_10051459C(&qword_10094ADA8, type metadata accessor for RDSavedReminder);
        v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v28 = v141;

        v142 = Data._bridgeToObjectiveC()().super.isa;
        [v34 setMetadata:v142];

        if (v192)
        {
          v143 = (v114 + v181[14]);
          v144 = *v143;
          v145 = v143[1];
          v146 = String._bridgeToObjectiveC()();
          [v34 setTitle:v146];
        }

        v147 = isa;
        if (v174)
        {
          if (*(v187 + v181[11]) >= 0x7FFFuLL)
          {
            v148 = 0x7FFFLL;
          }

          else
          {
            v148 = *(v187 + v181[11]);
          }

          v149 = [objc_allocWithZone(NSNumber) initWithShort:v148];
          [v34 setPriority:v149];
        }

        if (v175)
        {
          v22 = v180;
          sub_100010364(v187, v180, &unk_100938850, qword_100795AE0);
          v150 = *(v147 + 48);
          v11 = v147;
          v33 = v169;
          if (v150(v22, 1, v169) == 1)
          {
            v151 = 0;
            goto LABEL_136;
          }

LABEL_135:
          v198 = v12;
          v152 = v28;
          v153 = v22;
          v151 = Date._bridgeToObjectiveC()().super.isa;
          v154 = v153;
          v28 = v152;
          v12 = v198;
          (*(v11 + 8))(v154, v33);
LABEL_136:
          [v34 setCreationDate:v151];

          v147 = isa;
        }

        if (v200)
        {
          v155 = sub_1001C7758();
          if (v155)
          {
            v156 = v155;
            v157 = [v155 date];
            v158 = v179;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v159 = Date._bridgeToObjectiveC()().super.isa;
            (*(v147 + 8))(v158, v169);
            [v34 setDisplayDateDate:v159];

            -[NSObject setDisplayDateIsAllDay:](v34, "setDisplayDateIsAllDay:", [v156 isAllDay]);
            a1 = v195;
          }

          else
          {
            [v34 setDisplayDateDate:0];
            [v34 setDisplayDateIsAllDay:0];
          }
        }

        v160 = v187;
        v161 = v181;
        if (v176)
        {
          v162 = *(v187 + v181[9]);
          if (v162)
          {
            v163 = *(v162 + 16) != 0;
          }

          else
          {
            v163 = 0;
          }

          [v34 setHasHashtags:v163];
        }

        if (v177)
        {
          v164 = (v160 + v161[5]);
          if (*v164)
          {
            if (*(v164[1] + 16))
            {
              v165 = 1;
            }

            else
            {
              v165 = *(v164[3] + 16) != 0;
            }
          }

          else
          {
            v165 = 0;
          }

          [v34 setHasLocationTriggersOrVehicleEventTriggers:v165];
        }

        sub_10001BBA0(v12, v28);
        sub_1001CB574(v160);
        v28 = v188;
LABEL_108:
        v115 = [v34 template];
        if (v115)
        {
          v116 = v115;
          v117 = v182;
          static Date.now.getter();
          (*(isa + 7))(v117, 0, 1, v169);
          KeyPath = swift_getKeyPath();
          sub_10013206C(KeyPath, v117);

          sub_1000050A4(v117, &unk_100938850, qword_100795AE0);
        }

LABEL_110:
        v119 = [v34 metadata];
        if (v119)
        {
          v120 = v119;
          v121 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v123 = v122;

          sub_10001BBA0(v121, v123);
          goto LABEL_120;
        }

        if (qword_100936380 != -1)
        {
          swift_once();
        }

        v124 = type metadata accessor for Logger();
        sub_100006654(v124, qword_10094B580);
        v125 = a1;
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v126, v127))
        {

          goto LABEL_120;
        }

        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v173 = v7;
        v130 = v129;
        v131 = v28;
        v132 = swift_slowAlloc();
        v201 = v132;
        *v128 = 136446466;
        v202 = v171;
        swift_getMetatypeMetadata();
        v133 = String.init<A>(describing:)();
        v172 = v30;
        v135 = sub_10000668C(v133, v134, &v201);

        *(v128 + 4) = v135;
        *(v128 + 12) = 2114;
        v136 = [v125 objectID];
        *(v128 + 14) = v136;
        *v130 = v136;
        _os_log_impl(&_mh_execute_header, v126, v127, "%{public}s: '\\REMCDSavedReminder.metadata' should not be nil at the end of 'merge(storage:into:changedValueKeys:optionalCoordinator:)' {objectID: %{public}@}", v128, 0x16u);
        sub_1000050A4(v130, &unk_100938E70, &unk_100797230);

        sub_10000607C(v132);

LABEL_121:
        return;
      case 3:
      case 4:
        LODWORD(v192) = 1;
        goto LABEL_5;
      case 5:
        v174 = 1;
        goto LABEL_5;
      case 6:
      case 13:
      case 14:
      case 17:
      case 21:
        if (!v30)
        {
          goto LABEL_103;
        }

        v7 = 1;
        goto LABEL_6;
      case 7:
        v175 = 1;
        goto LABEL_5;
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
        goto LABEL_8;
      case 15:
        v11 = v194;
        if (v194)
        {

          v22 = v191;
          sub_100512B10(a1, v34);
        }

        else
        {
          if (qword_100936380 != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          sub_100006654(v56, qword_10094B580);
          v11 = a1;
          v22 = Logger.logObject.getter();
          v57 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v22, v57))
          {
            v58 = swift_slowAlloc();
            v166 = swift_slowAlloc();
            v167 = swift_slowAlloc();
            v201 = v167;
            *v58 = v168;
            v202 = v171;
            swift_getMetatypeMetadata();
            v59 = String.init<A>(describing:)();
            v12 = sub_10000668C(v59, v60, &v201);
            a1 = v195;

            *(v58 + 4) = v12;
            *(v58 + 12) = 2114;
            v61 = [v11 objectID];
            *(v58 + 14) = v61;
            v62 = v166;
            *v166 = v61;
            _os_log_impl(&_mh_execute_header, v22, v57, "%{public}s: Failed to merge attachments because 'optionalCoordinator' is nil {objectID: %{public}@}", v58, 0x16u);
            sub_1000050A4(v62, &unk_100938E70, &unk_100797230);

            v11 = v167;
            sub_10000607C(v167);

            v34 = v198;
          }

          v28 = v188;
        }

        goto LABEL_58;
      case 16:
        v177 = 1;
LABEL_8:
        LODWORD(v200) = 1;
        goto LABEL_5;
      case 18:
        v54 = [a1 dueDateDeltaAlertsToUpsert];
        if (!v54)
        {
          goto LABEL_58;
        }

        v55 = v54;
        sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v22 >> 62)
        {
          v11 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v11 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        goto LABEL_33;
      case 19:
        v52 = [a1 dueDateDeltaAlertIdentifiersToDelete];
        if (!v52)
        {
          goto LABEL_58;
        }

        v53 = v52;
        sub_10051459C(&qword_10093B410, &type metadata accessor for UUID);
        v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v11 = *(v22 + 16);
LABEL_33:

        if (!v11)
        {
          goto LABEL_58;
        }

        v178 = 1;
LABEL_5:
        v7 = 1;
        if (v30)
        {
          goto LABEL_6;
        }

        goto LABEL_103;
      case 20:
        v176 = 1;
        goto LABEL_5;
      default:
        v43 = [a1 objectID];
        v44 = [v43 uuid];

        v12 = v193;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = v12;
        v11 = UUID._bridgeToObjectiveC()().super.isa;
        (v185->isa)(v12, v197);
        [v34 setIdentifier:v11];
LABEL_62:

        if (v30)
        {
          goto LABEL_63;
        }

        goto LABEL_101;
    }
  }
}