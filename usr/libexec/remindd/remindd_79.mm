uint64_t sub_1007151E8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_100944F78, qword_1007AABF0);
    sub_10000F85C(a2, &type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100715284()
{
  result = qword_100950A70;
  if (!qword_100950A70)
  {
    sub_1000F514C(&qword_10093F480, qword_10079DF40);
    sub_10000F85C(&qword_100942170, &type metadata accessor for REMObjectID_Codable);
    sub_10000F85C(&qword_100948C20, &type metadata accessor for REMList_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950A70);
  }

  return result;
}

uint64_t sub_100715370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1007153DC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  sub_100010364(a1, &v16 - v10, &unk_100939D90, "8\n\r");
  v12 = *a2;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_100715518()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950B28);
  v1 = sub_100006654(v0, qword_100950B28);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1007155E0(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPinnedDate:isa];
}

uint64_t sub_10071571C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100799D70;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 48) = result;
  qword_1009752D8 = v0;
  return result;
}

uint64_t sub_1007157A0()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_1009752E0 = v0;
  return result;
}

void sub_100715828(NSObject *a1, id *a2)
{
  v66 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v63 - v14;
  v16 = *a2;
  v17 = [*a2 smartListType];
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  v65 = v5;
  v67 = v2;
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v21)
  {
LABEL_10:

    return;
  }

  if (v19 == v22 && v21 == v23)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      return;
    }
  }

  v26 = [v16 remObjectID];
  if (v26)
  {
    v27 = v26;
    v28 = [v16 parentList];
    if (!v28)
    {
LABEL_38:

      return;
    }

    v29 = v28;
    if ([v28 isDeleted])
    {
      if (qword_100936768 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006654(v30, qword_100950B28);
      v31 = v16;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v66 = v32;
        v34 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v69 = v63;
        v64 = v34;
        *v34 = 136446210;
        v35 = [v31 identifier];
        if (v35)
        {
          v36 = v35;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v37 = v65;
          (*(v65 + 56))(v13, 0, 1, v4);
        }

        else
        {
          v37 = v65;
          (*(v65 + 56))(v13, 1, 1, v4);
        }

        LODWORD(v65) = v33;
        sub_100100FB4(v13, v15);
        if ((*(v37 + 48))(v15, 1, v4))
        {
          sub_1000050A4(v15, &unk_100939D90, "8\n\r");
          v54 = 0xE300000000000000;
          v55 = 7104878;
        }

        else
        {
          (*(v37 + 16))(v8, v15, v4);
          sub_1000050A4(v15, &unk_100939D90, "8\n\r");
          v56 = UUID.uuidString.getter();
          v54 = v57;
          (*(v37 + 8))(v8, v4);
          v55 = v56;
        }

        v58 = sub_10000668C(v55, v54, &v69);

        v59 = v64;
        *(v64 + 1) = v58;
        v32 = v66;
        _os_log_impl(&_mh_execute_header, v66, v65, "REMSmartCDList's parentList is unexpectedly deleted {identifier: %{public}s}", v59, 0xCu);
        sub_10000607C(v63);
      }

      goto LABEL_38;
    }

    v38 = v67;
    v39 = sub_100027664(v29);
    if (!v38)
    {
      v48 = v66;
      isa = v66->isa;
      if ((v66->isa & 0xC000000000000001) != 0)
      {
        if (isa < 0)
        {
          v50 = v66->isa;
        }

        else
        {
          v50 = isa & 0xFFFFFFFFFFFFFF8;
        }

        v51 = v39;
        v52 = v39;
        v53 = __CocoaDictionary.count.getter();
        if (__OFADD__(v53, 1))
        {
          __break(1u);
          return;
        }

        v48->isa = sub_10021E744(v50, v53 + 1);
      }

      else
      {
        v51 = v39;
        v60 = v66->isa;
        v61 = v39;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v48->isa;
      sub_1002CA950(v51, v27, isUniquelyReferenced_nonNull_native);

      v48->isa = v69;
      return;
    }

    if (qword_100936768 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_100950B28);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v69 = v44;
      *v43 = 136315138;
      v68 = v38;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v45 = String.init<A>(describing:)();
      v47 = sub_10000668C(v45, v46, &v69);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "Error ingesting cdSmartList.parentList into list storage {error: %s}", v43, 0xCu);
      sub_10000607C(v44);
    }

    else
    {
    }
  }
}

void *sub_100715EFC(void *a1, void *a2)
{
  v4 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = sub_1000F5104(&qword_10093E088, &qword_10079BC18);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = a1;
  REMSmartList.NonCustom.init(smartListType:)();
  v14 = type metadata accessor for REMSmartList.NonCustom();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_1000050A4(v12, &qword_10093E088, &qword_10079BC18);
    return 0;
  }

  else
  {
    v17 = REMSmartList.NonCustom.remObjectID.getter();
    (*(v15 + 8))(v12, v14);
    v18 = type metadata accessor for RDPredefinedObjectKey();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = a2;
    *&v19[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v17;
    v29.receiver = v19;
    v29.super_class = v18;
    v20 = v17;
    v21 = a2;
    v22 = objc_msgSendSuper2(&v29, "init");
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    (*(v5 + 104))(v8, enum case for REMCache.ExecutionMode.synchronously<A, B>(_:), v4);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v22;

    v25 = v22;
    dispatch thunk of REMCache.performReadOnly(_:operations:)();

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    v16 = *(v23 + 16);
    v26 = v16;
  }

  return v16;
}

void *sub_10071620C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v98 = a2;
  v7 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v86 - v10;
  v12 = _s10PredicatesOMa_3();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((REMSmartListType.hasPredefinedObjectID.getter() & 1) == 0)
  {
    goto LABEL_13;
  }

  v94 = v15;
  v95 = a3;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

    goto LABEL_13;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_13:
    if (qword_100936768 != -1)
    {
LABEL_56:
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_100950B28);
    v32 = a1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v102[0] = v36;
      *v35 = 136446210;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = sub_10000668C(v37, v38, v102);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Unexpected smart list type to fetch by predefined objectIDs {smartListType: %{public}s}", v35, 0xCu);
      sub_10000607C(v36);
    }

    v40 = objc_opt_self();
    v41 = String._bridgeToObjectiveC()();
    [v40 internalErrorWithDebugDescription:v41];

    swift_willThrow();
    return v8;
  }

  v22 = sub_10003A1B8();
  if (!v22)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = v22;
  v92 = v11;
  v24 = sub_100715EFC(a1, v22);
  if (v24)
  {
    v25 = v24;
    v102[0] = 0;
    v26 = [v98 existingObjectWithID:v24 error:v102];
    if (v26)
    {
      v27 = v26;
      v97 = v102[0];
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1007953F0;
        *(v8 + 32) = v29;
        v30 = v97;

        return v8;
      }

      v44 = v97;
    }

    else
    {
      v43 = v102[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v4 = 0;
    }
  }

  v45 = v94;
  *v94 = a1;
  v45[1] = v23;
  swift_storeEnumTagMultiPayload();
  v46 = a1;
  v89 = v23;
  v47 = [v98 persistentStoreOfAccountWithAccountID:?];
  if (v47)
  {
    v48 = v47;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1007953F0;
    *(v49 + 32) = v48;
  }

  else
  {
    v49 = 0;
  }

  v50 = sub_10002DDAC();
  v51 = sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v52 = [objc_allocWithZone(NSFetchRequest) init];
  v90 = v51;
  v53 = [swift_getObjCClassFromMetadata() entity];
  [v52 setEntity:v53];

  if (v49)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v54.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v54.super.isa = 0;
  }

  [v52 setAffectedStores:v54.super.isa];

  [v52 setPredicate:v50];

  if (qword_100936770 != -1)
  {
LABEL_58:
    swift_once();
  }

  v55 = qword_1009752D8;
  v91 = v52;
  if (qword_1009752D8 >> 62)
  {
    v83 = qword_1009752D8;
    v84 = _CocoaArrayWrapper.endIndex.getter();
    v55 = v83;
    v52 = v84;
  }

  else
  {
    v52 = *((qword_1009752D8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = _swiftEmptyArrayStorage;
  v86 = v8;
  v87 = v7;
  if (!v52)
  {
LABEL_43:
    isa = Array._bridgeToObjectiveC()().super.isa;

    v56 = v91;
    [v91 setRelationshipKeyPathsForPrefetching:isa];

    if (qword_100936778 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v67 = Array._bridgeToObjectiveC()().super.isa;
    [v56 setSortDescriptors:v67];

    v68 = NSManagedObjectContext.fetch<A>(_:)();
    v7 = v92;
    if (v4)
    {
      sub_10003AF64(v94);

      return v8;
    }

    v8 = v68;
    if (!(v68 >> 62))
    {
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_49:
        if ((v8 & 0xC000000000000001) != 0)
        {
          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v69 = *(v8 + 32);
        }

        v70 = v69;
        v71 = [v69 remObjectID];
        if (v71)
        {
          v72 = v71;
          v73 = [v70 objectID];
          v74 = type metadata accessor for RDPredefinedObjectKey();
          v75 = objc_allocWithZone(v74);
          v76 = v89;
          *&v75[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v89;
          *&v75[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v72;
          v99.receiver = v75;
          v99.super_class = v74;
          v97 = v76;
          v98 = v72;
          v77 = objc_msgSendSuper2(&v99, "init");
          v78 = v86;
          v79 = v7;
          (*(v86 + 104))(v7, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v87);
          v80 = swift_allocObject();
          *(v80 + 16) = v73;
          *(v80 + 24) = v77;
          v81 = v73;
          v82 = v77;
          dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

          (*(v78 + 8))(v79, v87);
          sub_10003AF64(v94);
          return v8;
        }

        sub_10003AF64(v94);

LABEL_65:
        return v8;
      }

LABEL_64:
      sub_10003AF64(v94);

      goto LABEL_65;
    }

LABEL_61:
    if (_CocoaArrayWrapper.endIndex.getter() == 1)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        sub_10003AF64(v94);

        return v8;
      }

      goto LABEL_49;
    }

    goto LABEL_64;
  }

  v57 = v55;
  v88 = v4;
  v101 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, v52 & ~(v52 >> 63), 0);
  if (v52 < 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v8 = 0;
  v58 = v101;
  v59 = v57;
  v96 = v57;
  v97 = (v57 & 0xC000000000000001);
  v93 = v57 & 0xFFFFFFFFFFFFFF8;
  v4 = v52;
  while (1)
  {
    a1 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v97)
    {
      v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v93 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      v60 = *(v59 + 8 * v8 + 32);
    }

    v61 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v62)
    {
      break;
    }

    v52 = v61;
    v7 = v62;

    v101 = v58;
    v64 = v58[2];
    v63 = v58[3];
    if (v64 >= v63 >> 1)
    {
      sub_100026EF4((v63 > 1), v64 + 1, 1);
      v58 = v101;
    }

    v58[2] = v64 + 1;
    v65 = &v58[2 * v64];
    v65[4] = v52;
    v65[5] = v7;
    ++v8;
    v59 = v96;
    if (a1 == v4)
    {
      v4 = v88;
      goto LABEL_43;
    }
  }

  v102[0] = 0;
  v102[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v85._object = 0x80000001007EC120;
  v85._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v85);
  v100 = v60;
  sub_1000F5104(&qword_100946530, &qword_10079B260);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100716D1C(void *a1, void *a2)
{
  v5 = _s10PredicatesOMa_3();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (REMSmartListType.hasPredefinedObjectID.getter())
  {
    if (qword_100936768 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100950B28);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v51 = v14;
      *v13 = 136446210;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = sub_10000668C(v15, v16, &v51);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Smart list type with predefined objectIDs should not be fetched by cdSmartListsHavingCustomObjectID() {smartListType: %{public}s}", v13, 0xCu);
      sub_10000607C(v14);
    }

    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    [v18 internalErrorWithDebugDescription:v19];

    swift_willThrow();
  }

  else
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v24 = v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23;
    v50 = v2;
    if (v24)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        if (qword_100936768 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100006654(v26, qword_100950B28);
        v27 = a1;
        v28 = a2;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v51 = v49;
          *v31 = 136446466;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v30;
          v34 = sub_10000668C(v32, v33, &v51);
          v46 = v29;
          v35 = v34;

          *(v31 + 4) = v35;
          *(v31 + 12) = 2114;
          *(v31 + 14) = v28;
          v36 = v48;
          *v48 = v28;
          v37 = v28;
          v38 = v46;
          _os_log_impl(&_mh_execute_header, v46, v47, "BOGUS! Practically cdSmartListsHavingCustomObjectID(...) is meant to be used for fetching CSLs only {smartListType: %{public}s, objectID: %{public}@}", v31, 0x16u);
          sub_1000050A4(v36, &unk_100938E70, &unk_100797230);

          sub_10000607C(v49);
        }

        else
        {
        }
      }
    }

    *v8 = a1;
    v8[1] = a2;
    swift_storeEnumTagMultiPayload();
    v39 = a1;
    v40 = a2;
    v41 = sub_10002DDAC();
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v42 = [objc_allocWithZone(NSFetchRequest) init];
    v43 = [swift_getObjCClassFromMetadata() entity];
    [v42 setEntity:v43];

    [v42 setAffectedStores:0];
    [v42 setPredicate:v41];

    v19 = NSManagedObjectContext.fetch<A>(_:)();
    sub_10003AF64(v8);
  }

  return v19;
}

NSString sub_100717244(NSString a1, void *a2, void *a3, uint64_t a4)
{
  if (REMSmartListType.hasPredefinedObjectID.getter())
  {
    v9 = sub_10071620C(a1, a3, a4);
    if (!v4)
    {
      v10 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    if (!a2)
    {
      if (qword_100936768 == -1)
      {
LABEL_19:
        v31 = type metadata accessor for Logger();
        sub_100006654(v31, qword_100950B28);
        v32 = a1;
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v44 = v36;
          *v35 = 136446210;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = sub_10000668C(v37, v38, &v44);

          *(v35 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v33, v34, "Unexpected usage of cdSmartList(smartListType:objectID:in:...) - you must either fetch smart list of a type which hasPredefinedObjectID, or specify an objectID to match {smartListType: %{public}s}", v35, 0xCu);
          sub_10000607C(v36);
        }

        v40 = objc_opt_self();
        a1 = String._bridgeToObjectiveC()();
        [v40 invalidParameterErrorWithDescription:a1];

LABEL_22:
        swift_willThrow();
        return a1;
      }

LABEL_32:
      swift_once();
      goto LABEL_19;
    }

    v11 = a2;
    v10 = sub_100716D1C(a1, v11);

    if (!v4)
    {
LABEL_6:
      if (v10 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          if (_CocoaArrayWrapper.endIndex.getter() >= 2)
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          if (v12 >= 2)
          {
LABEL_9:
            if (qword_100936768 != -1)
            {
              swift_once();
            }

            v13 = type metadata accessor for Logger();
            v14 = sub_100006654(v13, qword_100950B28);
            v15 = a2;
            v16 = a1;

            a1 = v14;
            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              v43 = swift_slowAlloc();
              v44 = v43;
              *v19 = 136315650;
              type metadata accessor for REMSmartListType(0);
              v20 = v16;
              v21 = String.init<A>(describing:)();
              v23 = sub_10000668C(v21, v22, &v44);

              *(v19 + 4) = v23;
              *(v19 + 12) = 2080;
              sub_1000F5104(&unk_10093AF40, &unk_100795790);
              v24 = Optional.descriptionOrNil.getter();
              v26 = sub_10000668C(v24, v25, &v44);

              *(v19 + 14) = v26;
              *(v19 + 22) = 2080;
              sub_10013A058();
              v27 = BinaryInteger.description.getter();
              v29 = sub_10000668C(v27, v28, &v44);

              *(v19 + 24) = v29;
              _os_log_impl(&_mh_execute_header, v17, v18, "fetching smart list returned more than one result {type: %s objectID: %s, count: %s}", v19, 0x20u);
              a1 = v43;
              swift_arrayDestroy();
            }
          }

LABEL_14:
          if ((v10 & 0xC000000000000001) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_17;
          }

          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v30 = *(v10 + 32);
LABEL_17:
            a1 = v30;

            return a1;
          }

          __break(1u);
          goto LABEL_32;
        }
      }

      if (a2)
      {
        v41 = objc_opt_self();
        a1 = a2;
        [v41 noSuchObjectErrorWithObjectID:a1];
        swift_willThrow();

        return a1;
      }

      [objc_opt_self() noSuchSmartListErrorWithSmartListType:a1];
      goto LABEL_22;
    }
  }

  return a1;
}

Class sub_100717764(unint64_t a1)
{
  v10.isa = &_swiftEmptyDictionarySingleton;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyDictionarySingleton;
  }

LABEL_14:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v9 = v5;
    sub_100715828(&v10, &v9);
    if (v1)
    {
      break;
    }

    if (v7 == v3)
    {
      return v10.isa;
    }
  }

  __break(1u);
  return result;
}

void *sub_100717888(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&qword_100943D68, &qword_1007A4530);
  result = static _DictionaryStorage.copy(original:)();
  v4 = result;
  v5 = 0;
  v25 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v24 = (result + 8);
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(*(v25 + 48) + 8 * v16);
      v18 = *(*(v25 + 56) + 8 * v16);
      v19 = objc_allocWithZone(REMAccount);
      v20 = v17;
      result = [v19 initWithStore:a2 storage:v18];
      *&v24[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
      *(v4[6] + 8 * v16) = v20;
      *(v4[7] + 8 * v16) = result;
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v4[2] = v23;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return v4;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_100717A18(uint64_t a1, uint64_t a2)
{
  if (__CocoaDictionary.count.getter())
  {
    sub_1000F5104(&qword_100943D68, &qword_1007A4530);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v21 = v3;
  __CocoaDictionary.makeIterator()();
  swift_unknownObjectRetain();
  v4 = __CocoaDictionary.Iterator.next()();
  if (v4)
  {
    v5 = v4;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v6 = v5;
    do
    {
      v19 = v6;
      swift_dynamicCast();
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      swift_dynamicCast();
      v13 = [objc_allocWithZone(REMAccount) initWithStore:a2 storage:v19];

      v14 = v3[2];
      if (v3[3] <= v14)
      {
        sub_10036A1FC(v14 + 1, 1);
      }

      v3 = v21;
      result = NSObject._rawHashValue(seed:)(v21[5]);
      v8 = (v21 + 8);
      v9 = -1 << *(v21 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~v21[(v10 >> 6) + 8]) != 0)
      {
        v12 = __clz(__rbit64((-1 << v10) & ~v21[(v10 >> 6) + 8])) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v9) >> 6;
        do
        {
          if (++v11 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v17 = v11 == v16;
          if (v11 == v16)
          {
            v11 = 0;
          }

          v15 |= v17;
          v18 = *&v8[8 * v11];
        }

        while (v18 == -1);
        v12 = __clz(__rbit64(~v18)) + (v11 << 6);
      }

      *&v8[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v21[6] + 8 * v12) = v20;
      *(v21[7] + 8 * v12) = v13;
      ++v21[2];
      v6 = __CocoaDictionary.Iterator.next()();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_100717C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10002DDAC();
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  if (a3)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  [v8 setAffectedStores:v10.super.isa];

  [v8 setPredicate:v7];
  if (qword_100936770 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v11 = qword_1009752D8;
    if (qword_1009752D8 >> 62)
    {
      v29 = qword_1009752D8;
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v11 = v29;
      v12 = v30;
    }

    else
    {
      v12 = *((qword_1009752D8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v12)
    {
LABEL_21:
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 setRelationshipKeyPathsForPrefetching:isa];

      if (qword_100936778 != -1)
      {
        swift_once();
      }

      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v26 = Array._bridgeToObjectiveC()().super.isa;
      [v8 setSortDescriptors:v26];

      v27 = a2;
      NSManagedObjectContext.fetch<A>(_:)();
      if (!v4)
      {
        sub_1000F5104(&qword_1009405B0, &unk_1007B4EC0);
        sub_100718124();
        v27 = Sequence.elements<A>(ofType:)();
      }

      return v27;
    }

    v13 = v11;
    sub_100026EF4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      break;
    }

    v32 = a2;
    v33 = v4;
    v34 = v8;
    v14 = 0;
    v15 = v13;
    v36 = v13;
    v37 = v13 & 0xC000000000000001;
    v35 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v8 = v12;
      v16 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v37)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v35 + 16))
        {
          goto LABEL_27;
        }

        v17 = *(v15 + 8 * v14 + 32);
      }

      v18 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v19)
      {
        goto LABEL_31;
      }

      a2 = v18;
      v20 = v19;

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      v4 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_100026EF4((v21 > 1), v22 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4;
      v23 = &_swiftEmptyArrayStorage[2 * v22];
      v23[4] = a2;
      v23[5] = v20;
      ++v14;
      v24 = v16 == v8;
      v12 = v8;
      v15 = v36;
      if (v24)
      {
        v8 = v34;
        a2 = v32;
        v4 = v33;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  __break(1u);
LABEL_31:
  _StringGuts.grow(_:)(46);
  v31._object = 0x80000001007EC120;
  v31._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v31);
  sub_1000F5104(&qword_100946530, &qword_10079B260);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100718124()
{
  result = qword_1009405B8;
  if (!qword_1009405B8)
  {
    sub_1000F514C(&qword_1009405B0, &unk_1007B4EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009405B8);
  }

  return result;
}

char *sub_100718188(char *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = &v12[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v17 = type metadata accessor for UUID();
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_20;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v15 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v16 = v15;
      goto LABEL_18;
    }

LABEL_14:
    v13 = *a2;
    *a1 = *a2;
    v14 = v13;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = *a2;
    v9 = *(a2 + 1);
    *a1 = v8;
    *(a1 + 1) = v9;
    v10 = v8;
    v11 = v9;
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_20:
  v19 = *(v6 + 64);

  return memcpy(a1, a2, v19);
}

_BYTE *sub_1007183B8(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10003AF64(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v15 = type metadata accessor for UUID();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_19;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v13 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v14 = v13;
      goto LABEL_17;
    }

LABEL_13:
    v11 = *a2;
    *a1 = *a2;
    v12 = v11;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;

      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = *(a2 + 1);
    *(a1 + 1) = v8;
    v9 = v7;
    v10 = v8;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_19:
  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

void *sub_1007185C8(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_100718698(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10003AF64(a1);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_100718778()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_100718834()
{
  v2 = [v0 secondaryGroceryLocalesInfoAsData];
  if (!v2)
  {
LABEL_9:

    goto LABEL_10;
  }

  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  type metadata accessor for RDSecondaryGroceryLocalesInfo();
  sub_10072509C(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v1)
  {
    sub_10001BBA0(v4, v6);
    if (qword_100935B98 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_10093C470);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v10 = 136446466;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      sub_1000F5104(&qword_100946A28, &qword_1007A9338);
      v11 = String.init<A>(describing:)();
      v13 = sub_10000668C(v11, v12, &v19);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      swift_getErrorValue();
      v14 = Error.rem_errorDescription.getter();
      v16 = sub_10000668C(v14, v15, &v19);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s#mergeSecondaryGroceryLocalesInfo(_:): Failed to deserialize 'secondaryGroceryLocalesInfoAsData' due to unexpected error. It will be overwritten. { error: %{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_9;
  }

  sub_10001BBA0(v4, v6);

  static Date.> infix(_:_:)();

LABEL_10:

  sub_100566694(v17);
}

void sub_100718B64()
{
  v1 = [v0 smartLists];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 count];

    if (v3 >= 1)
    {
      v4 = sub_10071B498();
      if (v4)
      {
        v10 = v4;
        v5 = [v0 lists];
        v6 = sub_100722B48(v10);
        v7 = v6;
        if (v5)
        {
          if (v6)
          {
            v8 = sub_100724C50();
            sub_100723984(v5, v8, v10);
          }

          v9 = v10;
        }

        else
        {

          v9 = v7;
        }
      }
    }
  }
}

void sub_100718C70(void *a1, void *a2, void *a3, void *a4)
{
  v53 = a4;
  v59 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v60 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = &v49 - v15;
  v16 = type metadata accessor for NSFastEnumerationIterator();
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v62 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 count];
  v21 = [a2 count];
  v22 = [objc_allocWithZone(NSMutableOrderedSet) initWithOrderedSet:a1];
  isa = [a2 array];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v22 addObjectsFromArray:isa];

  if (v20 && v21)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = _swiftEmptyDictionarySingleton;
    v25 = (v24 + 16);
    v68 = sub_1002FF4BC;
    v69 = v24;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v66 = sub_1002FFDC4;
    v67 = &unk_1008FD290;
    v26 = _Block_copy(&aBlock);

    [v59 enumerateObjectsUsingBlock:v26];
    _Block_release(v26);
    swift_beginAccess();
    v27 = *v25;

    sub_1000FEA70(v22, v27, 0);
  }

  v28 = v62;
  v50 = v22;
  NSOrderedSet.makeIterator()();
  sub_10072509C(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v67)
  {
    v29 = (v7 + 56);
    v30 = v7;
    v31 = (v7 + 48);
    v56 = (v30 + 16);
    v32 = _swiftEmptyArrayStorage;
    v55 = (v30 + 8);
    v59 = v6;
    v58 = v13;
    v57 = v16;
    do
    {
      sub_100005EE0(&aBlock, v64);
      sub_100005EF0(v64, v63);
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
      if (swift_dynamicCast())
      {
        v33 = v70;
        v34 = [v70 identifier];
        if (v34)
        {
          v35 = v34;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v36 = 0;
        }

        else
        {
          v36 = 1;
        }

        (*v29)(v13, v36, 1, v6);
        v37 = v61;
        sub_100100FB4(v13, v61);
        if ((*v31)(v37, 1, v6))
        {
          sub_10000607C(v64);

          sub_1000050A4(v37, &unk_100939D90, "8\n\r");
        }

        else
        {
          v38 = v37;
          v39 = v60;
          (*v56)(v60, v38, v6);
          sub_1000050A4(v38, &unk_100939D90, "8\n\r");
          v40 = UUID.uuidString.getter();
          v42 = v41;

          (*v55)(v39, v6);
          sub_10000607C(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_100365788(0, *(v32 + 2) + 1, 1, v32);
          }

          v44 = *(v32 + 2);
          v43 = *(v32 + 3);
          if (v44 >= v43 >> 1)
          {
            v32 = sub_100365788((v43 > 1), v44 + 1, 1, v32);
          }

          *(v32 + 2) = v44 + 1;
          v45 = &v32[16 * v44];
          *(v45 + 4) = v40;
          *(v45 + 5) = v42;
          v6 = v59;
          v13 = v58;
          v16 = v57;
        }

        v28 = v62;
      }

      else
      {
        sub_10000607C(v64);
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v67);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  (*(v51 + 8))(v28, v16);
  v46 = v54;
  v47 = sub_10047717C(v32, v52, v53);
  if (v46)
  {
  }

  else
  {
    v48 = v47;
  }
}

void sub_100719350()
{
  v1 = [v0 lists];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 count];

    if (v3 >= 1)
    {
      v4 = sub_10071B498();
      if (v4)
      {
        v10 = v4;
        v5 = sub_100721ECC(v4);
        v6 = v5;
        v7 = [v0 smartLists];
        if (v5)
        {
          if (v7)
          {
            v8 = v7;
            v9 = sub_100724C50();
            sub_100723984(v6, v9, v10);
          }
        }

        else
        {
          v6 = v7;
        }
      }
    }
  }
}

void sub_100719450(unint64_t a1, int a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  v78 = sub_10071B280();
  if (v78)
  {
    v84 = _swiftEmptyArrayStorage;
    v83 = _swiftEmptySetSingleton;
    v71 = a2;
    if (a1 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v2;
    if (v17)
    {
      if (v17 >= 1)
      {
        v18 = 0;
        v80 = (v6 + 56);
        v81 = (a1 & 0xC000000000000001);
        v79 = (v6 + 48);
        v75 = (v6 + 8);
        v76 = (v6 + 16);
        v72 = _swiftEmptyArrayStorage;
        *&v16 = 138412290;
        v73 = v16;
        v74 = v15;
        while (1)
        {
          v19 = v81 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 8 * v18 + 32);
          v20 = v19;
          v21 = [v19 identifier];
          if (v21)
          {
            v22 = v21;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v23 = 0;
          }

          else
          {
            v23 = 1;
          }

          (*v80)(v12, v23, 1, v5);
          sub_100100FB4(v12, v15);
          if (!(*v79)(v15, 1, v5))
          {
            break;
          }

          sub_1000050A4(v15, &unk_100939D90, "8\n\r");
          if (qword_100936780 != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          sub_100006654(v24, qword_100950BF0);
          v25 = v20;
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = v12;
            v30 = v5;
            v31 = v17;
            v32 = a1;
            v33 = swift_slowAlloc();
            *v28 = v73;
            *(v28 + 4) = v25;
            *v33 = v25;
            v20 = v25;
            _os_log_impl(&_mh_execute_header, v26, v27, "Tried to update listIDsMergableOrdering for missing list but list has no identifier {list: %@}", v28, 0xCu);
            sub_1000050A4(v33, &unk_100938E70, &unk_100797230);
            a1 = v32;
            v17 = v31;
            v5 = v30;
            v12 = v29;
            v15 = v74;

LABEL_26:
            goto LABEL_8;
          }

LABEL_8:
          if (v17 == ++v18)
          {
            goto LABEL_34;
          }
        }

        v34 = v77;
        (*v76)(v77, v15, v5);
        sub_1000050A4(v15, &unk_100939D90, "8\n\r");
        UUID.uuidString.getter();
        (*v75)(v34, v5);
        v35 = String._bridgeToObjectiveC()();

        v36 = [v78 indexOfEqualObject:v35];
        v37 = NSNotFound.getter();
        if ((v37 & 0x8000000000000000) == 0 && v36 == v37)
        {
          v38 = v35;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v72 = v84;
          goto LABEL_8;
        }

        sub_10037D9FC(&v82, v36);

        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_58;
    }

    v72 = _swiftEmptyArrayStorage;
LABEL_34:
    v82 = _swiftEmptyArrayStorage;
    if (v71)
    {
      v43 = [v78 count];
      if (v43)
      {
        v44 = v43;
        v45 = 0;
        v46 = v83;
        v47 = v83 + 7;
        v48 = _swiftEmptyArrayStorage;
        do
        {
          if (v46[2] && (v49 = v46[5], v50 = static Hasher._hash(seed:_:)(), v51 = -1 << *(v46 + 32), v52 = v50 & ~v51, ((*(v47 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0))
          {
            v53 = ~v51;
            while (*(v46[6] + 8 * v52) != v45)
            {
              v52 = (v52 + 1) & v53;
              if (((*(v47 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
LABEL_44:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_100367DB8(0, *(v48 + 2) + 1, 1, v48);
            }

            v55 = *(v48 + 2);
            v54 = *(v48 + 3);
            if (v55 >= v54 >> 1)
            {
              v48 = sub_100367DB8((v54 > 1), v55 + 1, 1, v48);
            }

            *(v48 + 2) = v55 + 1;
            *&v48[8 * v55 + 32] = v45;
            v82 = v48;
          }

          ++v45;
        }

        while (v45 != v44);
      }

      sub_10071F124();
    }

    if (v72 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_51;
      }
    }

    else if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_51:

      goto LABEL_55;
    }

    v56 = *(v82 + 2);

    if (!v56)
    {

      return;
    }

LABEL_55:
    v57 = v78;
    v58 = [v78 mutableOrderedSet];
    v59 = [objc_allocWithZone(_REMDefaultReplicaManagerProvider) initWithStore:0];
    [v58 setReplicaManagerProvider:v59];

    sub_10071F1DC(v58, &v82, &v84);
    v60 = [v58 immutableOrderedSet];

    v61 = [v60 serializedData];
    v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v62, v64);
    v66 = v70;
    [v70 setListIDsMergeableOrdering:isa];

    v67 = [v66 createResolutionTokenMapIfNecessary];
    v68 = String._bridgeToObjectiveC()();
    [v67 updateForKey:v68];

    [v66 updateChangeCount];

    return;
  }

  if (qword_100936780 != -1)
  {
LABEL_58:
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100006654(v39, qword_100950BF0);
  v81 = Logger.logObject.getter();
  v40 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v81, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v81, v40, "Failed to create a new listIDsMergeableOrdering when trying to update listIDsMergableOrdering for missing list(s)", v41, 2u);
  }

  v42 = v81;
}

uint64_t sub_100719D48(uint64_t a1)
{
  v4 = [v1 recentlyDeletedInfoAsData];
  if (!v4)
  {
LABEL_9:

    goto LABEL_10;
  }

  v5 = v4;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  type metadata accessor for RDRecentlyDeletedInfo();
  sub_10072509C(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v2)
  {
    sub_10001BBA0(v6, v8);
    if (qword_100936180 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100947700);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v12 = 136446466;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      sub_1000F5104(&qword_100946A28, &qword_1007A9338);
      v13 = String.init<A>(describing:)();
      v15 = sub_10000668C(v13, v14, &v21);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2082;
      swift_getErrorValue();
      v16 = Error.rem_errorDescription.getter();
      v18 = sub_10000668C(v16, v17, &v21);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s#mergeRecentlyDeletedInfo(_:): Failed to deserialize 'recentlyDeletedInfoAsData' due to unexpected error. It will be overwritten. { error: %{public}s}", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_9;
  }

  sub_10001BBA0(v6, v8);

  sub_10059B844(a1);

LABEL_10:

  sub_100566968(v19, 1);
}

unint64_t sub_10071A064(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0xD000000000000019;
    v4 = 0xD00000000000001BLL;
    if (a1 == 8)
    {
      v4 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000023;
    if (a1 == 5)
    {
      v5 = 0xD000000000000021;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0x44496E6F73726570;
    if (a1 == 3)
    {
      v1 = 0xD00000000000001DLL;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10071A1C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100436518(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1007241B8(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10071A2F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950BF0);
  v1 = sub_100006654(v0, qword_100950BF0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10071A3C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10071A064(*a1);
  v5 = v4;
  if (v3 == sub_10071A064(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10071A44C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10071A064(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10071A4B0()
{
  sub_10071A064(*v0);
  String.hash(into:)();
}

Swift::Int sub_10071A504()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10071A064(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10071A564@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100724F20(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10071A594@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10071A064(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String __swiftcall REMCDAccount.recordName()()
{
  v1 = [v0 ckUserRecordName];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = [v0 recordType];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = 47;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = v3;
    v11._object = v5;
    String.append(_:)(v11);

    v12 = v7;
    v13 = v9;
  }

  else
  {
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100950BF0);
    v15 = v0;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136446210;
      v20 = [v15 remObjectID];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 description];

        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = sub_10000668C(v23, v25, &v28);

      *(v18 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "REMCDAccount.recordName() cannot be determined because it is called before .ckUserRecordName is initialized {account: %{public}s}", v18, 0xCu);
      sub_10000607C(v19);
    }

    v12 = 0;
    v13 = 0xE000000000000000;
  }

  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall REMCDAccount.recordType()()
{
  v0 = 0x746E756F636341;
  v1 = 0xE700000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t static REMCDAccount.existingCloudObject(for:accountID:managedObjectContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7._countAndFlagsBits = 0x2F746E756F636341;
  v7._object = 0xE800000000000000;
  LOBYTE(v6) = String.hasPrefix(_:)(v7);

  if ((v6 & 1) == 0)
  {
    v8 = [a1 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9._countAndFlagsBits = 95;
    v9._object = 0xE100000000000000;
    LOBYTE(v8) = String.hasPrefix(_:)(v9);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 cloudKitAccountWithCKIdentifier:v11 context:a4];

  if (!v12)
  {
    return 0;
  }

  v13 = [a1 recordName];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  v14 = [v12 ckIdentifierFromRecordName:v13];

  v15 = v14;
  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = [v12 ckUserRecordName];
  if (v19)
  {
    v20 = v19;

    v15 = v20;
  }

  else
  {
    [v12 setCkUserRecordName:v15];
  }

  v21 = [v12 ckUserRecordName];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == v16 && v25 == v18)
    {

      goto LABEL_17;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
LABEL_17:
      result = swift_dynamicCastUnknownClass();
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
  }

  return 0;
}

char *static REMCDAccount.allCloudObjects(in:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata predicateForCloudKitAccountsWithKeyPathPrefix:0];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [ObjCClassFromMetadata ic_objectsMatchingPredicate:v3 sortDescriptors:0 propertiesToFetch:0 relationshipKeyPathsForPrefetching:isa context:a1];

  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_100271440(v6);

  return v7;
}

uint64_t static REMCDAccount.allCloudObjectIDs(in:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata predicateForCloudKitAccountsWithKeyPathPrefix:0];
  v4 = [ObjCClassFromMetadata ic_objectIDsMatchingPredicate:v3 context:a1];
  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

void static REMCDAccount.newCloudObject(for:accountID:managedObjectContext:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100950BF0);

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_10000668C(a2, a3, &v24);
    *(v12 + 12) = 2082;
    v13 = [v9 ic_loggingDescription];

    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10000668C(v14, v16, &v24);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "We aren't supposed to call REMCDAccount.newCloudObject(for:accountID:context:) on sync down, as CloudKit accounts creation is always managed internally by RDAccountUtils {accountID: %{public}s, recordID: %{public}s}", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = [v9 recordID];
  v19 = [v18 recordName];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v19 context:a4 account:0];

  if (v20)
  {
    v21 = v20;
    v22 = [v21 ckIdentifier];
    if (v22)
    {
      v23 = v22;
      [v21 mergeDataFromRecord:v9 accountID:v22];

      [v21 setCkServerRecord:v9];
      [v21 setInCloud:1];
    }

    else
    {
    }
  }
}

id sub_10071B280()
{
  result = sub_10071B498();
  if (!result)
  {
    v2 = sub_1004D6FC8();
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(NSOrderedSet) init];
      v5 = [objc_allocWithZone(REMCRMergeableOrderedSet) initWithReplicaIDSource:v3 orderedSet:v4];

      return v5;
    }

    else
    {
      if (qword_100936780 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100006654(v6, qword_100950BF0);
      v7 = v0;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v10 = 136446466;
        *(v10 + 4) = sub_10000668C(0xD000000000000018, 0x80000001007E9180, &v14);
        *(v10 + 12) = 2112;
        *(v10 + 14) = v7;
        *v11 = v7;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, v9, "Unable to create new listIDsMergeableOrdering because replicaIDSource isn't available {key: %{public}s, cdObject: %@}", v10, 0x16u);
        sub_1000050A4(v11, &unk_100938E70, &unk_100797230);

        sub_10000607C(v12);
      }

      return 0;
    }
  }

  return result;
}

id sub_10071B498()
{
  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100950BF0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = [v2 remObjectID];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 description];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_10000668C(v10, v12, &v21);

    *(v5 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deserializing listIDsMergeableOrdering from cdAccount listIDsMergeableOrdering data {recordID: %s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  v14 = [v2 listIDsMergeableOrdering];
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v19 = sub_1003A4078(v16, v18, 0xD000000000000018, 0x80000001007E9180);
  sub_100031A14(v16, v18);
  return v19;
}

Swift::Void __swiftcall REMCDAccount.sortChildrenObjects()()
{
  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100950BF0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    v6 = [v2 remObjectID];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 description];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = sub_10000668C(v9, v11, &v14);

    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v3, "REMCDAccount.sortChildrenObjects() Not expected to be called practically {account: %{public}s}", v4, 0xCu);
    sub_10000607C(v5);
  }
}

Swift::Bool __swiftcall REMCDAccount.mergeMigrationState(fromRecord:)(CKRecord fromRecord)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v177 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v157 - v13;
  __chkstk_darwin(v15);
  v17 = &v157 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v157 - v20;
  v22 = &selRef_hack_willSaveHandled;
  v23 = [v2 identifier];
  if (v23)
  {
    v24 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(v5 + 56);
    v26 = v17;
    v27 = 0;
  }

  else
  {
    v25 = *(v5 + 56);
    v26 = v17;
    v27 = 1;
  }

  v176 = v25;
  v25(v26, v27, 1, v4);
  sub_100100FB4(v17, v21);
  v174 = *(v5 + 48);
  v175 = (v5 + 48);
  if (v174(v21, 1, v4))
  {
    v173 = 7104878;
    sub_1000050A4(v21, &unk_100939D90, "8\n\r");
    v28 = 0xE300000000000000;
  }

  else
  {
    (*(v5 + 16))(v8, v21, v4);
    sub_1000050A4(v21, &unk_100939D90, "8\n\r");
    v173 = UUID.uuidString.getter();
    v28 = v29;
    (*(v5 + 8))(v8, v4);
  }

  if (CKRecord.recordType.getter() == 0x746E756F636341 && v30 == 0xE700000000000000)
  {

    v178 = 1;
  }

  else
  {
    v178 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v31 = CKRecord.subscript.getter();
  if (v31)
  {
    aBlock[0] = v31;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    if (swift_dynamicCast())
    {
      v32 = v179;
      if (v32 != [v2 didChooseToMigrate])
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  if (v178)
  {
LABEL_16:
    v33 = 0;
    goto LABEL_19;
  }

  v32 = 0;
  v33 = 0;
  if ([v2 didChooseToMigrate])
  {
LABEL_18:
    [v2 setDidChooseToMigrate:v32];
    v33 = 1;
  }

LABEL_19:
  v34 = CKRecord.subscript.getter();
  if (v34)
  {
    aBlock[0] = v34;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    if (swift_dynamicCast())
    {
      v35 = v179;
      if (v35 != [v2 didFinishMigration])
      {
        if (v35)
        {

          v36 = 1;
          goto LABEL_58;
        }

LABEL_28:
        v171 = v14;
        v172 = v33;
        if (v33 && ([v2 didChooseToMigrate] & 1) == 0)
        {
          if (qword_100936780 != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for Logger();
          sub_100006654(v70, qword_100950BF0);

          v71 = v2;
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.default.getter();

          LODWORD(v169) = v73;
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            aBlock[0] = v168;
            *v74 = 67109890;
            *(v74 + 4) = v178 & 1;
            *(v74 + 8) = 2082;
            v75 = v71;
            v76 = v8;
            v77 = sub_10000668C(v173, v28, aBlock);

            *(v74 + 10) = v77;
            v8 = v76;
            *(v74 + 18) = 1024;
            v170 = 1;
            *(v74 + 20) = 1;
            *(v74 + 24) = 1024;
            *(v74 + 26) = [v75 didChooseToMigrate];

            _os_log_impl(&_mh_execute_header, v72, v169, "mergeMigrationState(fromRecord:) - Toggling didFinishMigration->FALSE {isAccountRecord: %{BOOL}d, accountID: %{public}s, didChooseToMigrateChanged: %{BOOL}d, didChooseToMigrate: %{BOOL}d}", v74, 0x1Eu);
            sub_10000607C(v168);
          }

          else
          {

            v170 = 1;
          }
        }

        else
        {
          if (qword_100936780 != -1)
          {
            swift_once();
          }

          v38 = type metadata accessor for Logger();
          sub_100006654(v38, qword_100950BF0);

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v165 = v8;
            v42 = v41;
            v43 = swift_slowAlloc();
            aBlock[0] = v43;
            *v42 = 67109378;
            *(v42 + 4) = v178 & 1;
            *(v42 + 8) = 2082;
            v44 = sub_10000668C(v173, v28, aBlock);

            *(v42 + 10) = v44;
            _os_log_impl(&_mh_execute_header, v39, v40, "ERROR mergeMigrationState(fromRecord:) - Trying to merge account record that toggles didFinishMigration->FALSE after finishing migration {isAccountRecord: %{BOOL}d, accountID: %{public}s}", v42, 0x12u);
            sub_10000607C(v43);

            v8 = v165;
          }

          else
          {
          }

          v170 = 0;
        }

        v45 = [v2 getResolutionTokenMapFromRecord:fromRecord.super.isa];
        v169 = v45;
        if (v45)
        {
          v46 = v45;
          v47 = String._bridgeToObjectiveC()();
          v48 = [v46 getTokenForKey:v47];

          v49 = v46;
          v50 = String._bridgeToObjectiveC()();
          v173 = [v49 getTokenForKey:v50];
        }

        else
        {
          v173 = 0;
          v48 = 0;
        }

        v166 = v5;
        v167 = v48;
        v51 = [v2 createResolutionTokenMapIfNecessary];
        v52 = String._bridgeToObjectiveC()();
        v53 = [v51 getTokenForKey:v52];

        v54 = String._bridgeToObjectiveC()();
        v168 = v51;
        v55 = [v51 getTokenForKey:v54];

        if (qword_100936780 != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        sub_100006654(v56, qword_100950BF0);
        v57 = v173;
        v164 = v55;
        v58 = v55;
        v59 = v167;
        v60 = v167;
        v162 = v53;
        v61 = v53;
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();

        v163 = v63;
        v64 = os_log_type_enabled(v62, v63);
        v14 = v171;
        if (v64)
        {
          v158 = v58;
          v159 = v61;
          v161 = v57;
          v165 = v8;
          v65 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          aBlock[0] = v157;
          *v65 = 136315906;
          v160 = v60;
          if (v59)
          {
            v66 = [v60 debugDescription];
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v68;
          }

          else
          {
            v69 = 0xE300000000000000;
            v67 = 7104878;
          }

          v78 = sub_10000668C(v67, v69, aBlock);

          *(v65 + 4) = v78;
          *(v65 + 12) = 2080;
          v179 = v162;
          sub_1000F5104(&unk_100950C10, &unk_1007AAB68);
          v79 = Optional.debugDescription.getter();
          v81 = sub_10000668C(v79, v80, aBlock);

          *(v65 + 14) = v81;
          *(v65 + 22) = 2080;
          v82 = v62;
          if (v173)
          {
            v83 = [v161 debugDescription];
            v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v86 = v85;

            v22 = &selRef_hack_willSaveHandled;
          }

          else
          {
            v86 = 0xE300000000000000;
            v22 = &selRef_hack_willSaveHandled;
            v84 = 7104878;
          }

          v5 = v166;
          v87 = sub_10000668C(v84, v86, aBlock);

          *(v65 + 24) = v87;
          *(v65 + 32) = 2080;
          v179 = v164;
          v88 = Optional.debugDescription.getter();
          v90 = sub_10000668C(v88, v89, aBlock);

          *(v65 + 34) = v90;
          _os_log_impl(&_mh_execute_header, v82, v163, "mergeMigrationState(fromRecord:) - Printing resolution tokens for debugging upon toggling didFinishMigration->FALSE - {didChooseToMigrate: (record=%s, CD=%s), didFinishMigration: (record=%s, CD=%s)}", v65, 0x2Au);
          swift_arrayDestroy();

          v8 = v165;
          v14 = v171;
        }

        else
        {

          v22 = &selRef_hack_willSaveHandled;
          v5 = v166;
        }

        v33 = v172;
        if (!v170)
        {
          goto LABEL_60;
        }

        v36 = 0;
LABEL_58:
        [v2 setDidFinishMigration:{v36, v157}];
        if (!(v178 & 1 | ((v36 & 1) == 0)))
        {
          [v2 setCkNeedsInitialFetchFromCloud:1];
        }

LABEL_60:
        LODWORD(v37) = [v2 didFinishMigration];
        goto LABEL_61;
      }

      goto LABEL_34;
    }
  }

  if ((v178 & 1) == 0)
  {
    if ([v2 didFinishMigration])
    {
      goto LABEL_28;
    }

LABEL_34:

    LODWORD(v37) = 0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_61;
  }

  LODWORD(v37) = 0;
  if (!v33)
  {
    goto LABEL_100;
  }

LABEL_61:
  v91 = [v2 v22[64]];
  if (v91)
  {
    v92 = v177;
    v93 = v91;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v94 = 0;
  }

  else
  {
    v94 = 1;
    v92 = v177;
  }

  v176(v92, v94, 1, v4);
  sub_100100FB4(v92, v14);
  if (!v174(v14, 1, v4))
  {
    v178 = v37;
    v172 = v33;
    (*(v5 + 16))(v8, v14, v4);
    sub_1000050A4(v14, &unk_100939D90, "8\n\r");
    v95 = UUID.uuidString.getter();
    v97 = v96;
    (*(v5 + 8))(v8, v4);
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_100006654(v98, qword_100950BF0);
    v99 = v2;

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      aBlock[0] = v103;
      *v102 = 136446722;
      *(v102 + 4) = sub_10000668C(v95, v97, aBlock);
      *(v102 + 12) = 1024;
      *(v102 + 14) = [v99 didChooseToMigrate];
      *(v102 + 18) = 1024;
      *(v102 + 20) = [v99 didFinishMigration];

      _os_log_impl(&_mh_execute_header, v100, v101, "Migration state did change {accountID: %{public}s, didChooseMigration: %{BOOL}d, didFinishMigration: %{BOOL}d}", v102, 0x18u);
      sub_10000607C(v103);
    }

    else
    {
    }

    v104 = [v99 storeControllerManagedObjectContext];
    if (v104 && (v105 = v104, v106 = [v104 storeController], v105, v106))
    {
      v107 = [v106 cloudContext];
      if (v107)
      {
        v108 = v107;
        [v107 migrationStateDidChange:objc_msgSend(v99 didFinishMigration:{"didChooseToMigrate"), objc_msgSend(v99, "didFinishMigration")}];
        v109 = [v106 accountUtils];
        if (v109)
        {
          v177 = v109;
          LODWORD(v173) = [v99 didChooseToMigrate];
          v110 = [v99 didFinishMigration];
          if (qword_100935D30 != -1)
          {
            swift_once();
          }

          v111 = qword_100974CC8;
          if (qword_1009366E8 != -1)
          {
            swift_once();
          }

          v176 = v108;
          sub_100006654(v98, qword_10094FB70);
          v37 = Logger.logObject.getter();
          v112 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v112))
          {
            v113 = swift_slowAlloc();
            *v113 = 0;
            _os_log_impl(&_mh_execute_header, v37, v112, "RDAccountUtils: Process migration state change", v113, 2u);
          }

          v114 = swift_allocObject();
          v114[2] = v111;
          v114[3] = sub_10071D088;
          v175 = v114;
          v114[4] = 0;
          v115 = objc_opt_self();
          v116 = v111;
          v117 = v115;
          v118 = [v115 sharedInstance];
          v119 = [v118 accountStore];

          v120 = String._bridgeToObjectiveC()();
          v174 = v119;
          v121 = [v119 accountWithIdentifier:v120];

          LOBYTE(v37) = v178;
          if (!v121)
          {
            goto LABEL_107;
          }

          v122 = [v121 accountType];
          if (!v122)
          {
            __break(1u);
            return v122;
          }

          v123 = v122;
          v124 = [v122 identifier];

          if (v124)
          {
            LODWORD(v171) = v110;
            v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v127 = v126;

            v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (v127)
            {
              if (v125 == v128 && v127 == v129)
              {

                LOBYTE(v37) = v178;
                goto LABEL_111;
              }

              v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

              LOBYTE(v37) = v178;
              if (v148)
              {
LABEL_111:
                if (v173)
                {
                  if (([v121 rem_didChooseToMigrate] & 1) == 0)
                  {
                    v149 = sub_1006BFC1C(v121);
                    if (v150)
                    {
                      sub_1006BC500(v149, v150);
                    }
                  }
                }

                v151 = [v117 sharedInstance];
                v152 = swift_allocObject();
                *(v152 + 16) = v121;
                *(v152 + 24) = v172;
                *(v152 + 32) = v177;
                *(v152 + 40) = sub_10031D6A0;
                *(v152 + 48) = v175;
                aBlock[4] = sub_10031D6AC;
                aBlock[5] = v152;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_100007688;
                aBlock[3] = &unk_1008FD240;
                v153 = _Block_copy(aBlock);
                v154 = v121;

                v155 = v174;
                [v151 saveDidChooseToMigrate:v173 didFinishMigration:v171 toACAccount:v154 inStore:v174 completionHandler:v153];
                _Block_release(v153);

                goto LABEL_100;
              }

              goto LABEL_106;
            }

            LOBYTE(v37) = v178;
          }

          else
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

LABEL_106:

LABEL_107:

          v144 = Logger.logObject.getter();
          v145 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v144, v145))
          {
            v146 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            aBlock[0] = v147;
            *v146 = 136446210;
            *(v146 + 4) = sub_10000668C(v95, v97, aBlock);
            _os_log_impl(&_mh_execute_header, v144, v145, "RDAccountUtils: No ACAccount is found for updating migration state {acAccountID: %{public}s}", v146, 0xCu);
            sub_10000607C(v147);
          }

          goto LABEL_100;
        }

        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          aBlock[0] = v142;
          *v141 = 136446210;
          v143 = sub_10000668C(v95, v97, aBlock);

          *(v141 + 4) = v143;
          _os_log_impl(&_mh_execute_header, v139, v140, "Missing account utils for processing migration state change {accountID: %{public}s}", v141, 0xCu);
          sub_10000607C(v142);
        }

        else
        {
        }

LABEL_99:
        LOBYTE(v37) = v178;
        goto LABEL_100;
      }

      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        aBlock[0] = v137;
        *v136 = 136446210;
        v138 = sub_10000668C(v95, v97, aBlock);

        *(v136 + 4) = v138;
        _os_log_impl(&_mh_execute_header, v134, v135, "Missing cloud context for processing migration state change {accountID: %{public}s}", v136, 0xCu);
        sub_10000607C(v137);
      }

      else
      {
      }
    }

    else
    {

      v106 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v106, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        aBlock[0] = v132;
        *v131 = 136446210;
        v133 = sub_10000668C(v95, v97, aBlock);

        *(v131 + 4) = v133;
        _os_log_impl(&_mh_execute_header, v106, v130, "Missing store controller for processing migration state change {accountID: %{public}s}", v131, 0xCu);
        sub_10000607C(v132);
      }

      else
      {
      }
    }

    goto LABEL_99;
  }

  sub_1000050A4(v14, &unk_100939D90, "8\n\r");
LABEL_100:
  LOBYTE(v122) = v37;
  return v122;
}

void sub_10071D088(uint64_t a1)
{
  if (a1)
  {
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_100950BF0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_10000668C(v5, v6, &v12);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to process migration state change after merging CK user record {error: %s}", v3, 0xCu);
      sub_10000607C(v4);

      return;
    }
  }

  else
  {
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100950BF0);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Succesfully processed migration state change after merging CK user record", v10, 2u);
    }
  }
}

Swift::Void __swiftcall REMCDAccount.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  swift_getObjectType();
  v5 = String._bridgeToObjectiveC()();
  v11.receiver = v3;
  v11.super_class = REMCDAccount;
  objc_msgSendSuper2(&v11, "mergeDataFromRecord:accountID:", from.super.isa, v5);

  v6 = [(objc_class *)from.super.isa recordID];
  v7 = [v6 recordName];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [v3 ckIdentifierFromRecordName:v7];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  [v3 setCkUserRecordName:v8];

  v9 = v3;
  v10 = from.super.isa;
  sub_1004D6E98(v10, 0, 0, v9, v9, v10);
  if (([v9 mergeMigrationStateFromRecord:v10] & 1) != 0 || objc_msgSend(v9, "ckNeedsInitialFetchFromCloud"))
  {
    sub_10071EE80(0);
  }
}

void sub_10071D4BC(unsigned __int8 *a1, void *a2, id a3)
{
  v5 = *a1;
  if (v5 <= 4)
  {
    if (*a1 > 2u)
    {
      if (v5 != 3)
      {
        v19 = [a3 encryptedValues];
        swift_getObjectType();
        CKRecordKeyValueSetting.subscript.getter();
        swift_unknownObjectRelease();
        if (*(&v154[0] + 1) >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100031A14(*&v154[0], *(&v154[0] + 1));
        }

        [a2 setPersonIDSalt:isa];

        v51 = [a2 personIDSalt];
        if (v51)
        {
          v52 = v51;
          v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          v153 = &type metadata for Data;
          *&v152 = v53;
          *(&v152 + 1) = v55;
          sub_100005EE0(&v152, v154);
        }

        else
        {
          memset(v154, 0, sizeof(v154));
        }

        v67 = @"personIDSalt_v1";
        sub_1000F5104(&qword_100939ED0, &qword_100791B10);
        v68 = [a2 postAccountPropertyChangeNotificationWithKey:v67 changedValue:Optional._bridgeToObjectiveC()()];

        swift_unknownObjectRelease();
        if (v68)
        {
          if (qword_100936780 != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          sub_100006654(v69, qword_100950BF0);
          v70 = a2;
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            *&v152 = v74;
            *v73 = 136446210;
            v75 = [v70 remObjectID];
            if (v75)
            {
              v76 = v75;
              v77 = [v75 description];

              v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v80 = v79;
            }

            else
            {
              v78 = 7104878;
              v80 = 0xE300000000000000;
            }

            v128 = sub_10000668C(v78, v80, &v152);

            *(v73 + 4) = v128;
            _os_log_impl(&_mh_execute_header, v71, v72, "REMCDAccount.mergeData(from): Synced and merged account .personIDSalt change from CloudKit record {accountID: %{public}s}", v73, 0xCu);
            sub_10000607C(v74);
          }

          sub_1000050A4(v154, &qword_100939ED0, &qword_100791B10);
        }

        else
        {
          if (qword_100936780 != -1)
          {
            swift_once();
          }

          v81 = type metadata accessor for Logger();
          sub_100006654(v81, qword_100950BF0);
          sub_10014F5CC(v154, &v152);
          v82 = a2;
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            *v85 = 136446466;
            v86 = [v82 remObjectID];
            if (v86)
            {
              v87 = v86;
              v88 = [v86 description];

              v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v91 = v90;
            }

            else
            {
              v89 = 7104878;
              v91 = 0xE300000000000000;
            }

            v129 = sub_10000668C(v89, v91, &v151);

            *(v85 + 4) = v129;
            *(v85 + 12) = 2080;
            sub_10014F5CC(&v152, v150);
            v130 = String.init<A>(describing:)();
            v132 = v131;
            sub_1000050A4(&v152, &qword_100939ED0, &qword_100791B10);
            v133 = sub_10000668C(v130, v132, &v151);

            *(v85 + 14) = v133;
            _os_log_impl(&_mh_execute_header, v83, v84, "REMCDAccount.mergeData(from): Could not post RDStoreControllerREMAccountPropertiesDidUpdate due to unexpected values {accountID: %{public}s, changedValue: %s}", v85, 0x16u);
            swift_arrayDestroy();

            sub_1000050A4(v154, &qword_100939ED0, &qword_100791B10);
          }

          else
          {

            sub_1000050A4(&v152, &qword_100939ED0, &qword_100791B10);
            sub_1000050A4(v154, &qword_100939ED0, &qword_100791B10);
          }
        }
      }
    }

    else if (v5 >= 2)
    {
      sub_1004DD52C(a3, 0xD00000000000001DLL, 0, v154);
      v6 = *(&v154[0] + 1);
      v7 = *&v154[0];
      if ([a2 didChooseToMigrate] && objc_msgSend(a2, "didFinishMigration") && (objc_msgSend(a2, "ckNeedsInitialFetchFromCloud") & 1) == 0 && (v8 = objc_msgSend(a2, "listIDsMergeableOrdering")) != 0)
      {
        v9 = v8;
        v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xF000000000000000;
      }

      v149 = v12;
      if (qword_100936780 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006654(v27, qword_100950BF0);
      v28 = a3;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *&v154[0] = v145;
        *v31 = 136315138;
        v32 = [v28 recordID];
        v33 = [v32 ckShortDescription];

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = a2;
        v36 = v10;
        v37 = v7;
        v38 = v6;
        v40 = v39;

        v41 = sub_10000668C(v34, v40, v154);
        v6 = v38;
        v7 = v37;
        v10 = v36;
        a2 = v35;

        *(v31 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v29, v30, "Deserializing listIDsMergeableOrdering from account record listIDsMergeableOrdering data {recordID: %s}", v31, 0xCu);
        sub_10000607C(v145);
      }

      v42 = sub_1004DD4B8(v154, v10, v149, v7, v6, 0xD000000000000018, 0x80000001007E9180, a2);
      v44 = v42;
      v45 = v43;
      v46 = *&v154[0];
      if (!*&v154[0])
      {
        v46 = sub_1003A4078(v42, v43, 0xD000000000000018, 0x80000001007E9180);
      }

      if (v45 >> 60 == 15)
      {
        v47 = 0;
      }

      else
      {
        sub_100029344(v44, v45);
        v47 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v44, v45);
      }

      [a2 setListIDsMergeableOrdering:v47];

      if (v46)
      {
        v48 = sub_100721ECC(v46);
        v146 = v48;
        v49 = sub_100722B48(v46);
        if (v48)
        {
          if (v49)
          {
            v142 = v49;
            v50 = sub_100724C50();
            sub_100723984(v146, v50, v46);
            sub_100031A14(v10, v149);
            sub_100031A14(v7, v6);

            sub_100031A14(v44, v45);
          }

          else
          {
            sub_100031A14(v10, v149);
            sub_100031A14(v7, v6);

            sub_100031A14(v44, v45);
          }

          v92 = v146;
        }

        else
        {
          v143 = v49;
          sub_100031A14(v10, v149);
          sub_100031A14(v7, v6);

          sub_100031A14(v44, v45);
          v92 = v143;
        }
      }

      else
      {
        sub_100031A14(v44, v45);
        sub_100031A14(v10, v149);

        sub_100031A14(v7, v6);
      }
    }

    return;
  }

  if (*a1 <= 6u)
  {
    if (v5 == 5)
    {
      return;
    }

    v21 = [a3 encryptedValues];
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 objectForKeyedSubscript:v22];
    swift_unknownObjectRelease();

    if (v23)
    {
      *&v152 = v23;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      v24 = swift_dynamicCast();
      if (v24)
      {
        v25 = *&v154[0];
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v26 = *(&v154[0] + 1);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v61 = [a2 secondaryGroceryLocalesInfoChecksum];
    v62 = &selRef_isEmpty;
    if (v61)
    {
      v63 = v61;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      if (v26)
      {
        if (v64 == v25 && v26 == v66)
        {

          v62 = &selRef_isEmpty;
          goto LABEL_126;
        }

        v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v62 = &selRef_isEmpty;
        if (v105)
        {

          goto LABEL_126;
        }
      }

      else
      {
      }
    }

    else if (!v26)
    {
      goto LABEL_126;
    }

    v106 = [a2 secondaryGroceryLocalesInfoChecksum];
    v107 = [a2 secondaryGroceryLocalesInfoAsData];
    if (v107)
    {
      v108 = v107;
      v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v148 = v110;
    }

    else
    {
      v109 = 0;
      v148 = 0xF000000000000000;
    }

    v111 = [a2 secondaryGroceryLocalesInfoAsData];
    if (v111)
    {
      v144 = v109;
      v112 = v111;
      v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      type metadata accessor for RDSecondaryGroceryLocalesInfo();
      sub_10072509C(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo);
      static REMJSONRepresentable.fromJSONData(_:)();
      sub_10001BBA0(v113, v115);
      v118 = *&v154[0];
      v109 = v144;
    }

    else
    {
      v118 = 0;
    }

    if (v26)
    {
      v119 = String._bridgeToObjectiveC()();
    }

    else
    {
      v119 = 0;
    }

    [a2 setSecondaryGroceryLocalesInfoChecksum:v119];

    v126 = [a3 encryptedValues];
    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.getter();
    swift_unknownObjectRelease();
    if (*(&v154[0] + 1) >> 60 == 15)
    {
      v127 = 0;
    }

    else
    {
      v127 = Data._bridgeToObjectiveC()().super.isa;
      sub_100031A14(*&v154[0], *(&v154[0] + 1));
    }

    [a2 setSecondaryGroceryLocalesInfoAsData:v127];

    if (v118)
    {

      sub_100718834();

      sub_100031A14(v109, v148);
    }

    else
    {

      sub_100031A14(v109, v148);
    }

    v62 = &selRef_isEmpty;
LABEL_126:
    v134 = [a2 v62[383]];
    if (v134)
    {
      v135 = v134;
      v136 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = v137;

      sub_10001BBA0(v136, v138);
      if (([a2 markedForDeletion] & 1) == 0)
      {
        v139 = [a2 storeControllerManagedObjectContext];
        if (v139)
        {
          v140 = v139;
          sub_1000F5104(&unk_100939E10, &qword_1007970D0);
          v141 = sub_100015620(0, 0, 128, a2, v140);
        }
      }
    }

    return;
  }

  if (v5 - 7 < 2)
  {
    return;
  }

  v13 = [a3 encryptedValues];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 objectForKeyedSubscript:v14];
  swift_unknownObjectRelease();

  if (v15)
  {
    *&v152 = v15;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = *&v154[0];
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = *(&v154[0] + 1);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v56 = [a2 recentlyDeletedInfoChecksum];
  if (v56)
  {
    v57 = v56;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    if (v18)
    {
      if (v58 == v17 && v18 == v60)
      {

        return;
      }

      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v93)
      {

        return;
      }
    }

    else
    {
    }
  }

  else if (!v18)
  {
    return;
  }

  v147 = [a2 recentlyDeletedInfoChecksum];
  v94 = [a2 recentlyDeletedInfoAsData];
  if (v94)
  {
    v95 = v94;
    v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;
  }

  else
  {
    v96 = 0;
    v98 = 0xF000000000000000;
  }

  v99 = [a2 recentlyDeletedInfoAsData];
  if (v99)
  {
    v100 = v96;
    v101 = v99;
    v102 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v103;

    type metadata accessor for RDRecentlyDeletedInfo();
    sub_10072509C(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo);
    static REMJSONRepresentable.fromJSONData(_:)();
    sub_10001BBA0(v102, v104);
    v116 = *&v154[0];
    v96 = v100;
  }

  else
  {
    v116 = 0;
  }

  if (v18)
  {
    v117 = String._bridgeToObjectiveC()();
  }

  else
  {
    v117 = 0;
  }

  [a2 setRecentlyDeletedInfoChecksum:v117];

  v120 = sub_1004E183C();
  if (v121 >> 60 == 15)
  {
    v122 = 0;
  }

  else
  {
    v123 = v120;
    v124 = v121;
    v122 = Data._bridgeToObjectiveC()().super.isa;
    sub_100031A14(v123, v124);
  }

  [a2 setRecentlyDeletedInfoAsData:v122];

  if (v116)
  {

    sub_100719D48(v125);

    sub_100031A14(v96, v98);
  }

  else
  {

    sub_100031A14(v96, v98);
  }
}

void sub_10071EE80(int a1)
{
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 lists];
  if (v9)
  {
    v10 = v9;
    v15 = a1;
    v16 = v1;
    v11 = _swiftEmptyArrayStorage;
    v21 = _swiftEmptyArrayStorage;
    NSOrderedSet.makeIterator()();
    NSFastEnumerationIterator.next()();
    while (v20)
    {
      sub_100005EE0(&v19, &v18);
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      if (swift_dynamicCast())
      {
        v12 = v17;
        if ([v17 markedForDeletion])
        {
        }

        else
        {
          v13 = v12;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v14[1] = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v11 = v21;
        }
      }

      NSFastEnumerationIterator.next()();
    }

    (*(v4 + 8))(v8, v3);
    sub_100719450(v11, v15 & 1);
  }
}

void sub_10071F124()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = *v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_16:
      v1 = sub_100260BD4(v1);
    }

    v5 = 0;
    v6 = v2 + 3;
    do
    {
      if (v5 != v6 - 4)
      {
        v8 = *(v1 + 2);
        if (v5 >= v8)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        if (v6 - 4 >= v8)
        {
          goto LABEL_15;
        }

        v9 = &v1[8 * v5];
        v10 = *(v9 + 4);
        *(v9 + 4) = *&v1[8 * v6];
        *&v1[8 * v6] = v10;
      }

      ++v5;
      v7 = v6 - 5;
      --v6;
    }

    while (v5 < v7);
    *v0 = v1;
  }
}

uint64_t sub_10071F1DC(uint64_t result, uint64_t *a2, unint64_t *a3)
{
  v4 = result;
  v5 = *a2;
  v6 = *(*a2 + 16);
  if (v6)
  {
    v7 = *a2;

    v8 = 32;
    do
    {

      v8 += 8;
      --v6;
    }

    while (v6);
  }

  v9 = *a3;
  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {

    v11 = 0;
    do
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
      ++v11;
      v14 = [v4 addObject:v12];
    }

    while (v10 != v11);
  }

  return result;
}

void sub_10071F338(void *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  *&v5 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 ckSharedObjectOwnerNames];
  if (!v8)
  {
    v17 = [a1 encryptedValues];
    v106 = String._bridgeToObjectiveC()();
    [v17 setObject:0 forKeyedSubscript:?];
    swift_unknownObjectRelease();
    v18 = v106;

    return;
  }

  v9 = v8;
  v10 = sub_1000060C8(0, &qword_100950C38, off_1008D4200);
  sub_10000CDE4(&unk_100950C40, &qword_100950C38, off_1008D4200);
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = a1;
  v98 = v7;
  if ((v11 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v11 = v108[5];
    v13 = v108[6];
    v14 = v108[7];
    v15 = v108[8];
    v16 = v108[9];
  }

  else
  {
    v15 = 0;
    v19 = -1 << *(v11 + 32);
    v13 = (v11 + 56);
    v14 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v16 = (v21 & *(v11 + 56));
  }

  v100 = v14;
  v22 = (v14 + 64) >> 6;
  v101 = _swiftEmptyDictionarySingleton;
  v23 = &qword_100936000;
  *&v12 = 136315394;
  v102 = v12;
  v104 = v11;
  v105 = v13;
  v103 = v10;
LABEL_12:
  v24 = v15;
  if ((v11 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v28 = v24;
      v29 = v16;
      v15 = v24;
      if (!v16)
      {
        while (1)
        {
          v15 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v15 >= v22)
          {
            goto LABEL_49;
          }

          v29 = v13[v15];
          ++v28;
          if (v29)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_22:
      v27 = (v29 - 1) & v29;
      v26 = *(*(v11 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v29)))));
      if (!v26)
      {
        goto LABEL_49;
      }

LABEL_23:
      v106 = v27;
      v30 = [v26 objectIdentifier];
      if (v30)
      {
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = [v26 ownerName];
        if (v35)
        {
          v53 = v35;
          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v54;

          v55 = v101;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108[0] = v55;
          v58 = sub_100005F4C(v32, v34);
          v59 = v55[2];
          v60 = (v57 & 1) == 0;
          v61 = v59 + v60;
          if (__OFADD__(v59, v60))
          {
            __break(1u);
LABEL_61:
            __break(1u);
          }

          if (v55[3] >= v61)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v57 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v67 = v57;
              sub_100373664();
              if ((v67 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

LABEL_44:

            v101 = v108[0];
            v64 = (*(v108[0] + 7) + 16 * v58);
            v65 = v64[1];
            v66 = v97;
            *v64 = v96;
            v64[1] = v66;

            goto LABEL_48;
          }

          LODWORD(v101) = v57;
          sub_10036A8F0(v61, isUniquelyReferenced_nonNull_native);
          v62 = sub_100005F4C(v32, v34);
          if ((v101 & 1) != (v63 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v58 = v62;
          if (v101)
          {
            goto LABEL_44;
          }

LABEL_46:
          v68 = v108[0];
          *(v108[0] + (v58 >> 6) + 8) |= 1 << v58;
          v69 = (v68[6] + 16 * v58);
          *v69 = v32;
          v69[1] = v34;
          v70 = (v68[7] + 16 * v58);
          v71 = v97;
          *v70 = v96;
          v70[1] = v71;

          v72 = v68[2];
          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (v73)
          {
            goto LABEL_61;
          }

          v101 = v68;
          v68[2] = v74;
LABEL_48:
          v11 = v104;
          v13 = v105;
          v16 = v106;
          goto LABEL_12;
        }

        v13 = v105;
      }

      if (v23[240] != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100006654(v36, qword_100950BF0);
      v37 = v26;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v108[0] = swift_slowAlloc();
        *v40 = v102;
        v41 = [v37 objectIdentifier];
        if (v41)
        {
          v42 = v41;
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
        }

        else
        {
          v45 = 0xE300000000000000;
          v43 = 7104878;
        }

        v46 = sub_10000668C(v43, v45, v108);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2080;
        v47 = [v37 ownerName];
        if (v47)
        {
          v48 = v47;
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;
        }

        else
        {
          v51 = 0xE300000000000000;
          v49 = 7104878;
        }

        v52 = sub_10000668C(v49, v51, v108);

        *(v40 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v38, v39, "Invalid ckSharedObjectOwnerName entry {objectIdentifier: %s, ownerName: %s}", v40, 0x16u);
        swift_arrayDestroy();

        v24 = v15;
        v13 = v105;
        v16 = v106;
        v11 = v104;
        v23 = &qword_100936000;
        if (v104 < 0)
        {
          break;
        }
      }

      else
      {

        v24 = v15;
        v16 = v106;
        if (v11 < 0)
        {
          break;
        }
      }
    }
  }

  v25 = __CocoaSet.Iterator.next()();
  if (v25)
  {
    v107 = v25;
    swift_dynamicCast();
    v26 = v108[0];
    v15 = v24;
    v27 = v16;
    if (v108[0])
    {
      goto LABEL_23;
    }
  }

LABEL_49:
  sub_10001B860();
  v75 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v108[0] = 0;
  v77 = [v75 dataWithJSONObject:isa options:0 error:v108];

  v78 = v108[0];
  if (v77)
  {
    v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = [v99 encryptedValues];
    static String.Encoding.utf8.getter();
    v83 = String.init(data:encoding:)();
    if (v84)
    {
      v85 = &protocol witness table for String;
      v86 = &type metadata for String;
    }

    else
    {
      v83 = 0;
      v86 = 0;
      v85 = 0;
      v108[2] = 0;
    }

    v108[0] = v83;
    v108[1] = v84;
    v108[3] = v86;
    v108[4] = v85;
    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    sub_10001BBA0(v79, v81);
  }

  else
  {
    v87 = v78;
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (v23[240] != -1)
    {
LABEL_59:
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100006654(v88, qword_100950BF0);
    swift_errorRetain();
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v108[0] = v92;
      *v91 = 136315138;
      v107 = v15;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v93 = String.init<A>(describing:)();
      v95 = sub_10000668C(v93, v94, v108);

      *(v91 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v89, v90, "Failed to encode ckSharedObjectOwnerNames in JSON {error: %s}", v91, 0xCu);
      sub_10000607C(v92);
    }

    else
    {
    }
  }
}

CKRecord_optional __swiftcall REMCDAccount.newlyCreatedRecord()()
{
  v1 = v0;
  v48.super_class = REMCDAccount;
  v3 = objc_msgSendSuper2(&v48, "newlyCreatedRecord");
  if (v3)
  {
    v4 = [v0 listIDsMergeableOrdering];
    if (!v4)
    {
      v6 = 0;
      v8 = 0xF000000000000000;
      goto LABEL_8;
    }

    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (v8 >> 60 == 15)
    {
LABEL_8:
      CKRecord.subscript.setter();
      sub_1001CB4B8(v6, v8);
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.setter();
LABEL_9:
      sub_100031A14(v6, v8);
      v12 = [v3 encryptedValues];
      v13 = [v1 personIDSalt];
      if (v13)
      {
        v14 = v13;
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
      v18 = [v1 recentlyDeletedInfoAsData];
      if (v18)
      {
        v19 = v18;
        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = objc_opt_self();
        sub_100029344(v20, v22);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v25 = [v23 assetForData:isa];

        CKRecord.subscript.setter();
        sub_10001BBA0(v20, v22);
        sub_10001BBA0(v20, v22);
      }

      else
      {
        CKRecord.subscript.setter();
      }

      v26 = [v3 encryptedValues];
      v27 = [v1 recentlyDeletedInfoChecksum];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
      v32 = [v3 encryptedValues];
      v33 = [v1 secondaryGroceryLocalesInfoAsData];
      if (v33)
      {
        v34 = v33;
        v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
      v38 = [v3 encryptedValues];
      v39 = [v1 secondaryGroceryLocalesInfoChecksum];
      if (v39)
      {
        v40 = v39;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
      sub_10071F338(v3);
      goto LABEL_24;
    }

    v10 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        goto LABEL_31;
      }

      v42 = *(v6 + 16);
      v41 = *(v6 + 24);
      v11 = v41 - v42;
      if (!__OFSUB__(v41, v42))
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    else
    {
      if (!v10)
      {
        v11 = BYTE6(v8);
LABEL_31:
        v43 = [objc_opt_self() sharedConfiguration];
        v44 = [v43 maxInlineAssetSizeBytes];

        if (v11 >= 1 && v44 < v11)
        {
          v45 = objc_opt_self();
          v46 = Data._bridgeToObjectiveC()().super.isa;
          v47 = [v45 assetForData:v46];

          CKRecord.subscript.setter();
          CKRecord.subscript.setter();
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (!__OFSUB__(HIDWORD(v6), v6))
      {
        v11 = HIDWORD(v6) - v6;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_24:
  v9 = v3;
LABEL_37:
  result.value.super.isa = v9;
  result.is_nil = v2;
  return result;
}

Swift::Bool __swiftcall REMCDAccount.needsToBePushedToCloud()()
{
  v1 = [v0 ckUserRecordName];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      LODWORD(v1) = [v0 didChooseToMigrate];
      if (v1)
      {
        LODWORD(v1) = [v0 didFinishMigration];
        if (v1)
        {
          v8.receiver = v0;
          v8.super_class = REMCDAccount;
          LOBYTE(v1) = objc_msgSendSuper2(&v8, "needsToBePushedToCloud");
        }
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1;
}

Swift::Void __swiftcall REMCDAccount.cleanUpAfterLocalObjectMerge()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v185 = *(v2 - 8);
  v3 = *(v185 + 8);
  __chkstk_darwin(v2);
  v5 = v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v165 - v11;
  __chkstk_darwin(v13);
  v179 = v165 - v14;
  __chkstk_darwin(v15);
  v178 = v165 - v16;
  __chkstk_darwin(v17);
  v19 = v165 - v18;
  __chkstk_darwin(v20);
  v22 = v165 - v21;
  __chkstk_darwin(v23);
  v25 = v165 - v24;
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = v165 - v28;
  v30 = [v1 remObjectID];
  if (!v30)
  {
    if (qword_100936780 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_144;
  }

  v31 = v30;
  v32 = [v1 lists];
  if (v32)
  {
    v181 = v19;
    v175 = v5;
    v176 = v31;
    v188[0] = v32;
    v33 = v32;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v177 = v1;
    v34 = sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    v35 = sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
    v36 = Sequence.elements<A>(ofType:)();

    v37 = [v177 listIDsMergeableOrdering];
    if (!v37)
    {

      v78 = v176;
      if (qword_100936780 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_100006654(v79, qword_100950BF0);
      v80 = v78;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v85 = v78;
        v86 = v84;
        *v83 = 138543362;
        *(v83 + 4) = v80;
        *v84 = v85;
        v87 = v80;
        _os_log_impl(&_mh_execute_header, v81, v82, "MERGE.LOCAL: cleanUpAfterLocalObjectMerge: This REMCDAccount has no listIDsMergeableOrdering (accountID: %{public}@).", v83, 0xCu);
        sub_1000050A4(v86, &unk_100938E70, &unk_100797230);

        return;
      }

      goto LABEL_135;
    }

    v180 = v9;
    v186 = v36;
    v38 = v37;
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v171 = v35;
    v40 = v39;
    v172 = v34;
    v42 = v41;

    v43 = objc_opt_self();
    v44 = v176;
    v45 = [v43 listIDsMergeableOrderingReplicaIDSourceWithAccountID:v176];
    sub_100029344(v40, v42);
    v165[1] = "didFinishMigration";
    v166 = v45;
    v46 = sub_1002FF534(v40, v42, v45, 0xD000000000000018, 0x80000001007E9180, v44);
    v167 = v42;
    sub_10001BBA0(v40, v42);
    v47 = [v46 orderedSet];
    v188[0] = v47;
    v165[2] = sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    v48 = Sequence.elements<A>(ofType:)();

    v49 = sub_1001A6BB0(v48);

    v188[3] = v49;
    v188[0] = _swiftEmptyArrayStorage;
    v50 = v186;
    v168 = v40;
    v169 = v46;
    v183 = v186 & 0xFFFFFFFFFFFFFF8;
    if (v186 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v51 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v182 = v12;
    v184 = (v50 & 0xC000000000000001);
    v1 = (v185 + 56);
    v52 = (v185 + 48);
    v174 = (v185 + 16);
    v173 = (v185 + 8);
    v185 = v51;
    if (v51)
    {
      v53 = 0;
      countAndFlagsBits = _swiftEmptyArrayStorage;
      do
      {
        v54 = v53;
        while (1)
        {
          if (v184)
          {
            v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v54 >= *(v183 + 16))
            {
              goto LABEL_137;
            }

            v55 = *(v50 + 8 * v54 + 32);
          }

          v56 = v55;
          v53 = (v54 + 1);
          if (__OFADD__(v54, 1))
          {
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          v57 = [v55 identifier];
          if (v57)
          {
            v58 = v57;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v59 = 0;
          }

          else
          {
            v59 = 1;
          }

          v51 = v185;
          (*v1)(v25, v59, 1, v2);
          sub_100100FB4(v25, v29);
          if (!(*v52)(v29, 1, v2))
          {
            break;
          }

          sub_1000050A4(v29, &unk_100939D90, "8\n\r");
          ++v54;
          v50 = v186;
          if (v53 == v51)
          {
            goto LABEL_42;
          }
        }

        v60 = v175;
        (*v174)(v175, v29, v2);
        sub_1000050A4(v29, &unk_100939D90, "8\n\r");
        countAndFlagsBits = UUID.uuidString.getter();
        (*v173)(v60, v2);
        countAndFlagsBits = String.uppercased()()._countAndFlagsBits;

        String._bridgeToObjectiveC()();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v61 = *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        countAndFlagsBits = v188[0];
        v51 = v185;
        v50 = v186;
      }

      while (v53 != v185);
    }

    else
    {
      countAndFlagsBits = _swiftEmptyArrayStorage;
    }

LABEL_42:
    sub_100721D7C(countAndFlagsBits);

    v188[0] = _swiftEmptyArrayStorage;
    if (v51)
    {
      v88 = 0;
      countAndFlagsBits = _swiftEmptyArrayStorage;
LABEL_44:
      v89 = v88;
      while (1)
      {
        if (v184)
        {
          v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v89 >= *(v183 + 16))
          {
            goto LABEL_139;
          }

          v90 = *(v50 + 8 * v89 + 32);
        }

        v91 = v90;
        v88 = (v89 + 1);
        if (__OFADD__(v89, 1))
        {
          break;
        }

        v92 = [v90 identifier];
        if (v92)
        {
          v93 = v92;
          v94 = v181;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v95 = 0;
        }

        else
        {
          v95 = 1;
          v94 = v181;
        }

        (*v1)(v94, v95, 1, v2);
        sub_100100FB4(v94, v22);
        if (!(*v52)(v22, 1, v2))
        {
          v96 = v175;
          (*v174)(v175, v22, v2);
          sub_1000050A4(v22, &unk_100939D90, "8\n\r");
          UUID.uuidString.getter();
          (*v173)(v96, v2);
          String.lowercased()();

          String._bridgeToObjectiveC()();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v50 = v186;
          if (*((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v97 = *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          countAndFlagsBits = v188[0];
          if (v88 != v185)
          {
            goto LABEL_44;
          }

          goto LABEL_61;
        }

        sub_1000050A4(v22, &unk_100939D90, "8\n\r");
        ++v89;
        v50 = v186;
        if (v88 == v185)
        {
          goto LABEL_61;
        }
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    countAndFlagsBits = _swiftEmptyArrayStorage;
LABEL_61:

    sub_100721D7C(countAndFlagsBits);

    v98 = [v177 smartLists];
    if (v98)
    {
      v188[0] = v98;
      v99 = v98;
      sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
      v100 = Sequence.elements<A>(ofType:)();

      v188[0] = _swiftEmptyArrayStorage;
      v185 = (v100 & 0xFFFFFFFFFFFFFF8);
      if (v100 >> 62)
      {
        v101 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v102 = v182;
      v104 = v178;
      v103 = v179;
      v186 = v100 & 0xC000000000000001;
      if (v101)
      {
        v105 = 0;
        v184 = _swiftEmptyArrayStorage;
LABEL_66:
        v106 = v105;
        while (1)
        {
          if (v186)
          {
            v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v106 >= *(v185 + 2))
            {
              goto LABEL_141;
            }

            v107 = *(v100 + 8 * v106 + 32);
          }

          v108 = v107;
          v105 = v106 + 1;
          if (__OFADD__(v106, 1))
          {
            break;
          }

          v109 = [v107 identifier];
          if (v109)
          {
            v110 = v109;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v104 = v178;
            v103 = v179;
            v111 = 0;
          }

          else
          {
            v111 = 1;
          }

          (*v1)(v103, v111, 1, v2);
          sub_100100FB4(v103, v104);
          if (!(*v52)(v104, 1, v2))
          {
            v112 = v175;
            (*v174)(v175, v104, v2);
            sub_1000050A4(v104, &unk_100939D90, "8\n\r");
            UUID.uuidString.getter();
            (*v173)(v112, v2);
            String.uppercased()();

            String._bridgeToObjectiveC()();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v113 = *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v184 = v188[0];
            v102 = v182;
            v104 = v178;
            v103 = v179;
            if (v105 != v101)
            {
              goto LABEL_66;
            }

            goto LABEL_89;
          }

          sub_1000050A4(v104, &unk_100939D90, "8\n\r");
          ++v106;
          v102 = v182;
          if (v105 == v101)
          {
            goto LABEL_89;
          }
        }

LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v184 = _swiftEmptyArrayStorage;
LABEL_89:
      sub_100721D7C(v184);

      v188[0] = _swiftEmptyArrayStorage;
      if (v101)
      {
        v120 = 0;
        v184 = _swiftEmptyArrayStorage;
LABEL_91:
        v121 = v120;
        while (1)
        {
          if (v186)
          {
            v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v121 >= *(v185 + 2))
            {
              goto LABEL_143;
            }

            v122 = *(v100 + 8 * v121 + 32);
          }

          v123 = v122;
          v120 = v121 + 1;
          if (__OFADD__(v121, 1))
          {
            break;
          }

          v124 = [v122 identifier];
          if (v124)
          {
            v125 = v180;
            v126 = v124;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v102 = v182;
            v127 = 0;
          }

          else
          {
            v127 = 1;
            v125 = v180;
          }

          (*v1)(v125, v127, 1, v2);
          sub_100100FB4(v125, v102);
          if (!(*v52)(v102, 1, v2))
          {
            v128 = v175;
            (*v174)(v175, v102, v2);
            sub_1000050A4(v102, &unk_100939D90, "8\n\r");
            UUID.uuidString.getter();
            (*v173)(v128, v2);
            String.lowercased()();

            String._bridgeToObjectiveC()();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v129 = *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v184 = v188[0];
            v102 = v182;
            if (v120 != v101)
            {
              goto LABEL_91;
            }

            goto LABEL_108;
          }

          sub_1000050A4(v102, &unk_100939D90, "8\n\r");
          ++v121;
          if (v120 == v101)
          {
            goto LABEL_108;
          }
        }

LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        swift_once();
LABEL_25:
        v62 = type metadata accessor for Logger();
        sub_100006654(v62, qword_100950BF0);
        v63 = v1;
        v186 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v186, v64))
        {
          v65 = 7104878;
          v66 = swift_slowAlloc();
          v188[0] = swift_slowAlloc();
          *v66 = 136446466;
          v67 = [v63 ckIdentifier];
          if (v67)
          {
            v68 = v67;
            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v71 = v70;
          }

          else
          {
            v71 = 0xE300000000000000;
            v69 = 7104878;
          }

          v114 = sub_10000668C(v69, v71, v188);

          *(v66 + 4) = v114;
          *(v66 + 12) = 2082;
          v115 = [v63 externalIdentifier];
          if (v115)
          {
            v116 = v115;
            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v118 = v117;
          }

          else
          {
            v118 = 0xE300000000000000;
          }

          v119 = sub_10000668C(v65, v118, v188);

          *(v66 + 14) = v119;
          _os_log_impl(&_mh_execute_header, v186, v64, "MERGE.LOCAL: cleanUpAfterLocalObjectMerge: This REMCDAccount has no remObjectID (ckIdentifier: %{public}s, externalIdentifier: %{public}s).", v66, 0x16u);
          swift_arrayDestroy();

          return;
        }

        goto LABEL_37;
      }

      v184 = _swiftEmptyArrayStorage;
LABEL_108:

      sub_100721D7C(v184);
    }

    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    sub_100006654(v130, qword_100950BF0);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v188[0] = v134;
      *v133 = 136315138;
      swift_beginAccess();
      sub_10000CDE4(&unk_10093AA40, &unk_10093F610, NSString_ptr);

      v135 = Set.description.getter();
      v137 = v136;

      v138 = sub_10000668C(v135, v137, v188);

      *(v133 + 4) = v138;
      _os_log_impl(&_mh_execute_header, v131, v132, "MERGE.LOCAL: Clean up account.listIDsOrdering {listIDs.to.remove: %s}", v133, 0xCu);
      sub_10000607C(v134);
    }

    swift_beginAccess();
    v81 = v169;

    sub_1007248F8(v139, v81);
    v141 = v140;

    v187 = v141;

    sub_10071A1C0(&v187);

    v142 = v187;
    if (*(v187 + 2))
    {
      v143 = [v81 mutableOrderedSet];
      v144 = v143;
      isa = v142[2].isa;
      if (isa)
      {
        while (isa <= v142[2].isa)
        {
          v146 = v142[isa + 3].isa;
          v143 = NSNotFound.getter();
          if (v143 < 0 || v146 != v143)
          {
          }

          isa = (isa - 1);
          if (!isa)
          {
            goto LABEL_125;
          }
        }

        __break(1u);
        goto LABEL_129;
      }

LABEL_125:

      v151 = [v144 immutableOrderedSet];
      v152 = [v151 serializedData];
      v153 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v155 = v154;

      v156 = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v153, v155);
      v157 = v177;
      [v177 setListIDsMergeableOrdering:v156];

      v158 = [v157 createResolutionTokenMapIfNecessary];
      v159 = String._bridgeToObjectiveC()();
      v160 = [v158 getTokenForKey:v159];

      [v160 update];
      v142 = v151;
      v161 = sub_100721ECC(v142);
      v162 = v161;
      v163 = sub_100722B48(v142);
      v147 = v163;
      if (!v161)
      {

        goto LABEL_133;
      }

      if (!v163)
      {

        v147 = v142;
        goto LABEL_133;
      }

      v164 = sub_100724C50();
      v150 = v177;
      sub_100723984(v162, v164, v142);

      v147 = v142;
    }

    else
    {

      v142 = sub_100721ECC(v81);
      v147 = v142;
      v143 = sub_100722B48(v81);
      if (!v142)
      {
LABEL_129:
        v147 = v143;
LABEL_133:
        v150 = v177;
        goto LABEL_134;
      }

      if (!v143)
      {

        v142 = 0;
        goto LABEL_133;
      }

      v148 = v143;
      v149 = sub_100724C50();
      v150 = v177;
      sub_100723984(v147, v149, v81);

      v142 = 0;
    }

LABEL_134:

    [v150 updateChangeCount];
    sub_10001BBA0(v168, v167);

LABEL_135:
    return;
  }

  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_100006654(v72, qword_100950BF0);
  v73 = v31;
  v186 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v186, v74))
  {

LABEL_37:
    v77 = v186;
    goto LABEL_38;
  }

  v75 = swift_slowAlloc();
  v76 = swift_slowAlloc();
  *v75 = 138543362;
  *(v75 + 4) = v73;
  *v76 = v31;
  v185 = v73;
  _os_log_impl(&_mh_execute_header, v186, v74, "MERGE.LOCAL: cleanUpAfterLocalObjectMerge: This REMCDAccount has nil lists (accountID: %{public}@).", v75, 0xCu);
  sub_1000050A4(v76, &unk_100938E70, &unk_100797230);

  v77 = v185;
LABEL_38:
}

void sub_100721D7C(unint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = sub_10019F4E4(v7);

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

id sub_100721ECC(unint64_t isa)
{
  v110 = type metadata accessor for UUID();
  v3 = *(v110 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v110);
  v105 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v109 = (&v90 - v11);
  __chkstk_darwin(v12);
  v14 = (&v90 - v13);
  __chkstk_darwin(v15);
  v17 = &v90 - v16;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v1 mutableOrderedSetValueForKey:v18];

  if (v19)
  {
    if (qword_100936780 != -1)
    {
      goto LABEL_60;
    }

    while (1)
    {
      v20 = type metadata accessor for Logger();
      v21 = sub_100006654(v20, qword_100950BF0);
      v22 = v19;
      v23 = isa;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      v26 = os_log_type_enabled(v24, v25);
      v104 = v19;
      if (v26)
      {
        v96 = v25;
        v98 = v24;
        v99 = v23;
        v101 = v21;
        v27 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v112 = v22;
        aBlock[0] = v95;
        v97 = v27;
        *v27 = 136315394;
        v100 = v22;
        isa = sub_1000060C8(0, &unk_100938880, off_1008D41A8);
        sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
        sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr);
        v28 = Sequence.elements<A>(ofType:)();
        v29 = v28;
        v107 = v28 & 0xFFFFFFFFFFFFFF8;
        if (v28 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v108 = v9;
        v102 = v3;
        if (v30)
        {
          v19 = 0;
          v106 = v29 & 0xC000000000000001;
          v9 = (v3 + 56);
          v31 = v3;
          v3 += 48;
          v93 = (v31 + 16);
          v32 = _swiftEmptyArrayStorage;
          v92 = (v31 + 8);
          do
          {
            v103 = v32;
            v33 = v19;
            while (1)
            {
              if (v106)
              {
                v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v33 >= *(v107 + 16))
                {
                  goto LABEL_57;
                }

                v34 = *(v29 + 8 * v33 + 32);
              }

              v35 = v34;
              v19 = (v33 + 1);
              if (__OFADD__(v33, 1))
              {
                __break(1u);
LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

              v36 = [v34 identifier];
              if (v36)
              {
                v37 = v36;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v38 = 0;
              }

              else
              {
                v38 = 1;
              }

              isa = v110;
              (*v9)(v14, v38, 1, v110);
              sub_100100FB4(v14, v17);
              if (!(*v3)(v17, 1, isa))
              {
                break;
              }

              sub_1000050A4(v17, &unk_100939D90, "8\n\r");
              ++v33;
              if (v19 == v30)
              {
                goto LABEL_32;
              }
            }

            v39 = v105;
            v40 = v110;
            (*v93)(v105, v17, v110);
            sub_1000050A4(v17, &unk_100939D90, "8\n\r");
            v91 = UUID.uuidString.getter();
            v90 = v41;

            (*v92)(v39, v40);
            v32 = v103;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_100365788(0, v32[2].isa + 1, 1, v32);
            }

            isa = v32[2].isa;
            v42 = v32[3].isa;
            if (isa >= v42 >> 1)
            {
              v32 = sub_100365788((v42 > 1), isa + 1, 1, v32);
            }

            v32[2].isa = (isa + 1);
            v43 = &v32[2 * isa];
            v44 = v90;
            v43[4].isa = v91;
            v43[5].isa = v44;
          }

          while (v19 != v30);
        }

LABEL_32:

        v49 = Array.description.getter();
        v51 = v50;

        v52 = sub_10000668C(v49, v51, aBlock);

        v53 = v97;
        *(v97 + 1) = v52;
        *(v53 + 6) = 2112;
        v23 = v99;
        *(v53 + 14) = v99;
        v54 = v94;
        *v94 = v23;
        v55 = v23;
        v56 = v98;
        _os_log_impl(&_mh_execute_header, v98, v96, "Sort ordered set account.lists - before - {lists: %s, ordering: %@}", v53, 0x16u);
        sub_1000050A4(v54, &unk_100938E70, &unk_100797230);

        sub_10000607C(v95);

        v19 = v104;
        v9 = v108;
        v3 = v102;
        v22 = v100;
      }

      else
      {
      }

      v57 = swift_allocObject();
      *(v57 + 16) = _swiftEmptyDictionarySingleton;
      v17 = v57 + 16;
      aBlock[4] = sub_1002FFDC8;
      aBlock[5] = v57;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002FFDC4;
      aBlock[3] = &unk_1008FD2E0;
      v58 = _Block_copy(aBlock);

      [v23 enumerateObjectsUsingBlock:v58];
      _Block_release(v58);
      swift_beginAccess();
      v59 = *v17;

      sub_1000FEA70(v22, v59, 0);

      v60 = v22;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v61, v62))
      {

        return v19;
      }

      LODWORD(v101) = v62;
      v103 = v61;
      v63 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v111 = v60;
      v112 = v99;
      v100 = v63;
      *v63 = 136315138;
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
      sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr);
      v64 = Sequence.elements<A>(ofType:)();
      v65 = v64;
      if (v64 >> 62)
      {
        v107 = v64 & 0xFFFFFFFFFFFFFF8;
        v66 = _CocoaArrayWrapper.endIndex.getter();
        if (!v66)
        {
LABEL_63:

          v83 = Array.description.getter();
          v85 = v84;

          v86 = sub_10000668C(v83, v85, &v112);

          v87 = v100;
          *(v100 + 1) = v86;
          v88 = v103;
          _os_log_impl(&_mh_execute_header, v103, v101, "Sort ordered set account.lists - after - {lists: %s}", v87, 0xCu);
          sub_10000607C(v99);

          return v104;
        }
      }

      else
      {
        v107 = v64 & 0xFFFFFFFFFFFFFF8;
        v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v66)
        {
          goto LABEL_63;
        }
      }

      v108 = v9;
      v19 = 0;
      v67 = v3;
      v3 = v65 & 0xC000000000000001;
      isa = &v67[7];
      v14 = &v67[6];
      v98 = v67 + 2;
      v68 = _swiftEmptyArrayStorage;
      v102 = v67 + 1;
LABEL_37:
      v106 = v68;
      v69 = v19;
      while (1)
      {
        if (v3)
        {
          v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v69 >= *(v107 + 16))
          {
            goto LABEL_59;
          }

          v70 = *(v65 + 8 * v69 + 32);
        }

        v71 = v70;
        v19 = (v69 + 1);
        if (__OFADD__(v69, 1))
        {
          break;
        }

        v72 = [v70 identifier];
        if (v72)
        {
          v73 = v72;
          v74 = v108;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v75 = 0;
        }

        else
        {
          v75 = 1;
          v74 = v108;
        }

        v17 = v110;
        (*isa)(v74, v75, 1, v110);
        v76 = v74;
        v9 = v109;
        sub_100100FB4(v76, v109);
        if (!(*v14)(v9, 1, v17))
        {
          v77 = v105;
          v78 = v110;
          (v98->isa)(v105, v9, v110);
          sub_1000050A4(v9, &unk_100939D90, "8\n\r");
          v9 = UUID.uuidString.getter();
          v97 = v79;

          (v102->isa)(v77, v78);
          v68 = v106;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = sub_100365788(0, *(v68 + 2) + 1, 1, v68);
          }

          v17 = *(v68 + 2);
          v80 = *(v68 + 3);
          if (v17 >= v80 >> 1)
          {
            v68 = sub_100365788((v80 > 1), v17 + 1, 1, v68);
          }

          *(v68 + 2) = v17 + 1;
          v81 = &v68[16 * v17];
          v82 = v97;
          *(v81 + 4) = v9;
          *(v81 + 5) = v82;
          if (v19 != v66)
          {
            goto LABEL_37;
          }

          goto LABEL_63;
        }

        sub_1000050A4(v9, &unk_100939D90, "8\n\r");
        ++v69;
        if (v19 == v66)
        {
          goto LABEL_63;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      swift_once();
    }
  }

  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100006654(v45, qword_100950BF0);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Not sorting child lists because REMCDAccount.mutableOrderedSetValue(forKey: lists) is nil", v48, 2u);
  }

  return 0;
}

id sub_100722B48(uint64_t a1)
{
  v2 = v1;
  v137 = type metadata accessor for UUID();
  v4 = *(v137 - 8);
  v5 = v4[8];
  __chkstk_darwin(v137);
  v131 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v115 - v12;
  __chkstk_darwin(v14);
  v16 = &v115 - v15;
  __chkstk_darwin(v17);
  v19 = &v115 - v18;
  v20 = String._bridgeToObjectiveC()();
  v21 = [v2 mutableOrderedSetValueForKey:v20];

  if (v21)
  {
    v132 = v4;
    v135 = v13;
    if (qword_100936780 != -1)
    {
LABEL_33:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = sub_100006654(v22, qword_100950BF0);
    v24 = v21;
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    v130 = v25;

    v126 = v27;
    v28 = os_log_type_enabled(v26, v27);
    v136 = v10;
    v128 = v2;
    v129 = v21;
    v127 = v23;
    if (!v28)
    {

      v50 = v130;
      v51 = v132;
      goto LABEL_36;
    }

    v123 = v26;
    v29 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v139 = v24;
    aBlock[0] = v121;
    v122 = v29;
    LODWORD(v29->isa) = 136315394;
    v124 = v24;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v10 = NSMutableOrderedSet_ptr;
    sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
    sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr);
    v30 = Sequence.elements<A>(ofType:)();
    v31 = v30;
    a1 = v132;
    if (v30 >> 62)
    {
      v134 = v30 & 0xFFFFFFFFFFFFFF8;
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (v21)
      {
LABEL_6:
        v2 = 0;
        v133 = v31 & 0xC000000000000001;
        v32 = (a1 + 56);
        v33 = (a1 + 48);
        v119 = (a1 + 16);
        v34 = _swiftEmptyArrayStorage;
        v118 = (a1 + 8);
        do
        {
          v125 = v34;
          v35 = v2;
          while (1)
          {
            if (v133)
            {
              v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v35 >= *(v134 + 16))
              {
                goto LABEL_32;
              }

              v36 = *(v31 + 8 * v35 + 32);
            }

            v10 = v36;
            v2 = (v35 + 1);
            if (__OFADD__(v35, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v37 = [v36 identifier];
            if (v37)
            {
              v38 = v37;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v39 = 0;
            }

            else
            {
              v39 = 1;
            }

            a1 = v137;
            (*v32)(v16, v39, 1, v137);
            sub_100100FB4(v16, v19);
            if (!(*v33)(v19, 1, a1))
            {
              break;
            }

            sub_1000050A4(v19, &unk_100939D90, "8\n\r");
            ++v35;
            if (v2 == v21)
            {
              goto LABEL_35;
            }
          }

          v40 = v131;
          v41 = v137;
          (*v119)(v131, v19, v137);
          sub_1000050A4(v19, &unk_100939D90, "8\n\r");
          v117 = UUID.uuidString.getter();
          v116 = v42;

          (*v118)(v40, v41);
          v34 = v125;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_100365788(0, *(v34 + 2) + 1, 1, v34);
          }

          a1 = *(v34 + 2);
          v43 = *(v34 + 3);
          v10 = (a1 + 1);
          if (a1 >= v43 >> 1)
          {
            v34 = sub_100365788((v43 > 1), a1 + 1, 1, v34);
          }

          *(v34 + 2) = v10;
          v44 = &v34[16 * a1];
          v45 = v116;
          *(v44 + 4) = v117;
          *(v44 + 5) = v45;
        }

        while (v2 != v21);
      }
    }

    else
    {
      v134 = v30 & 0xFFFFFFFFFFFFFF8;
      v21 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_6;
      }
    }

LABEL_35:

    v52 = Array.description.getter();
    v54 = v53;

    v55 = sub_10000668C(v52, v54, aBlock);

    v56 = v122;
    *(&v122->isa + 4) = v55;
    WORD2(v56[1].isa) = 2112;
    v50 = v130;
    *(&v56[1].isa + 6) = v130;
    v57 = v120;
    *v120 = v50;
    v58 = v50;
    v59 = v123;
    _os_log_impl(&_mh_execute_header, v123, v126, "REMCDAccount+CloudKit: Sort ordered set account.smartLists - before - {smartLists: %s, ordering: %@}", v56, 0x16u);
    sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

    sub_10000607C(v121);

    v2 = v128;
    v21 = v129;
    v51 = v132;
    v24 = v124;
LABEL_36:
    v60 = swift_allocObject();
    *(v60 + 16) = _swiftEmptyDictionarySingleton;
    v61 = (v60 + 16);
    aBlock[4] = sub_1002FFDC8;
    aBlock[5] = v60;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002FFDC4;
    aBlock[3] = &unk_1008FD2B8;
    v62 = _Block_copy(aBlock);

    [v50 enumerateObjectsUsingBlock:v62];
    _Block_release(v62);
    swift_beginAccess();
    v63 = *v61;

    sub_1000FEA70(v24, v63, 0);

    v64 = v24;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v65, v66))
    {

      goto LABEL_63;
    }

    v126 = v66;
    v130 = v65;
    v67 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v138 = v64;
    v139 = v124;
    v125 = v67;
    *v67 = 136315138;
    v132 = v64;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
    sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr);
    v68 = Sequence.elements<A>(ofType:)();
    v69 = v68;
    if (v68 >> 62)
    {
LABEL_61:
      v134 = v69 & 0xFFFFFFFFFFFFFF8;
      v70 = _CocoaArrayWrapper.endIndex.getter();
      if (v70)
      {
LABEL_39:
        v71 = 0;
        v72 = v51;
        v51 = v69 & 0xC000000000000001;
        v73 = v72 + 7;
        v74 = v72 + 6;
        v123 = v72 + 2;
        v75 = _swiftEmptyArrayStorage;
        v122 = v72 + 1;
        do
        {
          v133 = v75;
          v76 = v71;
          while (1)
          {
            if (v51)
            {
              v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v76 >= *(v134 + 16))
              {
                goto LABEL_60;
              }

              v77 = *(v69 + 8 * v76 + 32);
            }

            v78 = v77;
            v71 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              __break(1u);
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v79 = [v77 identifier];
            if (v79)
            {
              v80 = v79;
              v81 = v136;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v82 = 0;
            }

            else
            {
              v82 = 1;
              v81 = v136;
            }

            v83 = v137;
            (v73->isa)(v81, v82, 1, v137);
            v84 = v81;
            v85 = v135;
            sub_100100FB4(v84, v135);
            if (!(v74->isa)(v85, 1, v83))
            {
              break;
            }

            sub_1000050A4(v85, &unk_100939D90, "8\n\r");
            ++v76;
            if (v71 == v70)
            {
              goto LABEL_62;
            }
          }

          v86 = v131;
          v87 = v137;
          (v123->isa)(v131, v85, v137);
          sub_1000050A4(v85, &unk_100939D90, "8\n\r");
          v88 = UUID.uuidString.getter();
          v121 = v89;

          (v122->isa)(v86, v87);
          v75 = v133;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_100365788(0, *(v75 + 2) + 1, 1, v75);
          }

          v91 = *(v75 + 2);
          v90 = *(v75 + 3);
          if (v91 >= v90 >> 1)
          {
            v75 = sub_100365788((v90 > 1), v91 + 1, 1, v75);
          }

          *(v75 + 2) = v91 + 1;
          v92 = &v75[16 * v91];
          v93 = v121;
          *(v92 + 4) = v88;
          *(v92 + 5) = v93;
        }

        while (v71 != v70);
      }
    }

    else
    {
      v134 = v68 & 0xFFFFFFFFFFFFFF8;
      v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
        goto LABEL_39;
      }
    }

LABEL_62:

    v94 = Array.description.getter();
    v96 = v95;

    v97 = sub_10000668C(v94, v96, &v139);

    v98 = v125;
    *(v125 + 4) = v97;
    v99 = v130;
    _os_log_impl(&_mh_execute_header, v130, v126, "REMCDAccount+CloudKit: Sort ordered set account.smartLists - after - {smartLists: %s}", v98, 0xCu);
    sub_10000607C(v124);

    v2 = v128;
    v21 = v129;
    v64 = v132;
LABEL_63:
    v100 = v64;
    v101 = v2;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v139 = v105;
      *v104 = 136446466;
      v106 = [v101 remObjectID];
      if (v106)
      {
        v107 = v106;
        v108 = [v106 description];

        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v110;
      }

      else
      {
        v111 = 0xE300000000000000;
        v109 = 7104878;
      }

      v112 = sub_10000668C(v109, v111, &v139);

      *(v104 + 4) = v112;
      *(v104 + 12) = 2048;
      v113 = [v100 count];

      *(v104 + 14) = v113;
      _os_log_impl(&_mh_execute_header, v102, v103, "REMCDAccount+CloudKit: Sorted CSLs into account.smartLists {account: %{public}s, #csls: %ld}", v104, 0x16u);
      sub_10000607C(v105);
    }

    else
    {
    }

    return v21;
  }

  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100006654(v46, qword_100950BF0);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "REMCDAccount+CloudKit: Not sorting child smartLists because REMCDAccount.mutableOrderedSetValue(forKey: smartLists) is nil", v49, 2u);
  }

  return 0;
}

void sub_100723984(void *a1, void *a2, NSObject *a3)
{
  v4 = v3;
  v73 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v72 - v18;
  v20 = [v4 storeControllerManagedObjectContext];
  if (v20 && (v21 = v20, v22 = [v20 storeController], v21, (v72 = v22) != 0))
  {
    v23 = [v4 identifier];
    if (v23)
    {
      v24 = v23;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v8 + 56))(v15, 0, 1, v7);
    }

    else
    {
      (*(v8 + 56))(v15, 1, 1, v7);
    }

    sub_100100FB4(v15, v19);
    if ((*(v8 + 48))(v19, 1, v7))
    {
      sub_1000050A4(v19, &unk_100939D90, "8\n\r");
      v37 = v72;
LABEL_16:
      if (qword_100936780 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100006654(v38, qword_100950BF0);
      v39 = v4;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v74 = v43;
        *v42 = 136446210;
        v44 = [v39 remObjectID];
        if (v44)
        {
          v45 = v44;
          v46 = [v44 description];

          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;
        }

        else
        {
          v47 = 7104878;
          v49 = 0xE300000000000000;
        }

        v68 = sub_10000668C(v47, v49, &v74);

        *(v42 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v40, v41, "REMCDAccount+CloudKit: Could not proceed to upsertOrderedIdentifiersForAccountListView() because there is problem finding the persistent store for the account {account: %{public}s}", v42, 0xCu);
        sub_10000607C(v43);
      }

      return;
    }

    (*(v8 + 16))(v11, v19, v7);
    sub_1000050A4(v19, &unk_100939D90, "8\n\r");
    UUID.uuidString.getter();
    (*(v8 + 8))(v11, v7);
    v50 = String._bridgeToObjectiveC()();

    v37 = v72;
    v51 = [v72 storeForAccountIdentifier:v50];

    if (!v51)
    {
      goto LABEL_16;
    }

    sub_100718C70(a1, a2, v73, v51);
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_100950BF0);
    v53 = a2;
    v54 = a1;
    v55 = v53;
    v56 = v54;
    v57 = v4;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = v73;
      *v60 = 136446722;
      v61 = [v57 remObjectID];
      if (v61)
      {
        v62 = v61;
        v63 = [v61 description];

        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;
      }

      else
      {
        v64 = 7104878;
        v66 = 0xE300000000000000;
      }

      v69 = sub_10000668C(v64, v66, &v74);

      *(v60 + 4) = v69;
      *(v60 + 12) = 2048;
      v70 = [v55 count];

      *(v60 + 14) = v70;
      *(v60 + 22) = 2048;
      v71 = [v56 count];

      *(v60 + 24) = v71;
      _os_log_impl(&_mh_execute_header, v58, v59, "REMCDAccount+CloudKit: Sorted intermixed ordered IDs for CSLs and Lists in REMCDAccountListData {account: %{public}s, #csls: %ld, #lists: %ld}", v60, 0x20u);
      sub_10000607C(v73);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100950BF0);
    v26 = v4;
    v73 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v73, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v74 = v29;
      *v28 = 136446210;
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
        v33 = 7104878;
        v35 = 0xE300000000000000;
      }

      v67 = sub_10000668C(v33, v35, &v74);

      *(v28 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v73, v27, "REMCDAccount+CloudKit: Could not proceed to upsertOrderedIdentifiersForAccountListView() because storeController isn't available {account: %{public}s}", v28, 0xCu);
      sub_10000607C(v29);
    }

    else
    {
      v36 = v73;
    }
  }
}

uint64_t sub_1007241B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1004361F4(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_100724704((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003658B8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1003658B8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_100724704((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
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
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_100724704(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1007248F8(uint64_t a1, void *a2)
{
  v2 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_100253D70(0, v3 & ~(v3 >> 63), 0);
    v35 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v6 = -1 << *(v2 + 32);
      v4 = _HashTable.startBucket.getter();
      v5 = *(v2 + 36);
    }

    v37 = v4;
    v38 = v5;
    v39 = v34 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v31 = v2 + 56;
      v30 = v2 + 64;
      v32 = v3;
      while (v7 < v3)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_35;
        }

        v10 = v37;
        v11 = v38;
        v12 = v39;
        v13 = v2;
        sub_100411E3C(v37, v38, v39, v2);
        v15 = v14;
        v16 = [a2 indexOfEqualObject:v14];

        v17 = v35;
        v40 = v35;
        v19 = v35[2];
        v18 = v35[3];
        if (v19 >= v18 >> 1)
        {
          sub_100253D70((v18 > 1), v19 + 1, 1);
          v17 = v40;
        }

        v17[2] = v19 + 1;
        v17[v19 + 4] = v16;
        v35 = v17;
        if (v34)
        {
          if (!v12)
          {
            goto LABEL_40;
          }

          v2 = v13;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v3 = v32;
          sub_1000F5104(&qword_100950C30, &qword_1007B6CB0);
          v8 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v8(v36, 0);
          if (v7 == v32)
          {
LABEL_32:
            sub_100010E34(v37, v38, v39);
            return;
          }
        }

        else
        {
          if (v12)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v2 = v13;
          v20 = 1 << *(v13 + 32);
          if (v10 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v10 >> 6;
          v22 = *(v31 + 8 * (v10 >> 6));
          if (((v22 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v13 + 36) != v11)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v10 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_100010E34(v10, v11, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_100010E34(v10, v11, 0);
          }

LABEL_31:
          v29 = *(v13 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
          v3 = v32;
          if (v7 == v32)
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

id sub_100724C50()
{
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
  sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
  v0 = Sequence.elements<A>(ofType:)();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 smartListType];
      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_5:

        goto LABEL_6;
      }

      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!v11)
      {
        goto LABEL_5;
      }

      if (v9 == v12 && v11 == v13)
      {

LABEL_21:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v16 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_7;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_21;
      }

LABEL_6:

LABEL_7:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  sub_100271018(_swiftEmptyArrayStorage);

  v17 = objc_allocWithZone(NSOrderedSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v17 initWithArray:isa];

  return v19;
}

unint64_t sub_100724F20(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DE928, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100724F6C()
{
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  CKRecord.subscript.setter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  CKRecord.subscript.setter();
  return CKRecord.subscript.setter();
}

uint64_t sub_10072509C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1007250F4(uint64_t a1)
{
  result = sub_10072511C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10072511C()
{
  result = qword_100950C70;
  if (!qword_100950C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950C70);
  }

  return result;
}

unint64_t sub_100725170(uint64_t a1)
{
  result = sub_100725198();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100725198()
{
  result = qword_100950C78;
  if (!qword_100950C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950C78);
  }

  return result;
}

unint64_t sub_1007251F0()
{
  result = qword_100950C80;
  if (!qword_100950C80)
  {
    sub_1000F514C(&qword_100950C88, &qword_1007B6CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950C80);
  }

  return result;
}

unint64_t sub_100725258()
{
  result = qword_100950C90;
  if (!qword_100950C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950C90);
  }

  return result;
}

void sub_1007252C4(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
    sub_1003DB488();
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_10001B860();
      return;
    }

    while (1)
    {
      sub_10037BB94(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1007254AC(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_1000236C4(v11, *(*(a1 + 48) + ((v9 << 10) | (16 * v10))), *(v9 + 8));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1007255AC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100378434(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1007256B0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100378434(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1007257B4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950CA0);
  v1 = sub_100006654(v0, qword_100950CA0);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10072587C()
{
  result = [objc_opt_self() intelligentGrocery];
  qword_100950CB8 = result;
  return result;
}

uint64_t sub_1007258B8(uint64_t a1)
{
  v3 = *v1;
  v2[11] = a1;
  v2[12] = v3;
  v4 = type metadata accessor for Locale();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v10 = type metadata accessor for OSSignpostID();
  v2[19] = v10;
  v11 = *(v10 - 8);
  v2[20] = v11;
  v12 = *(v11 + 64) + 15;
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100725A54, 0, 0);
}

uint64_t sub_100725A54()
{
  v67 = v0;
  static os_signpost_type_t.begin.getter();
  if (qword_100936790 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v1, v3);
  if (qword_100936788 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100950CA0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v66[0] = v9;
    *v8 = 136446210;
    v0[9] = v7;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_10000668C(v10, v11, v66);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: Start execution", v8, 0xCu);
    sub_10000607C(v9);
  }

  v13 = v0[18];
  Date.init()();
  v14 = type metadata accessor for REMTrialClient();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  REMTrialClient.init()();
  v17 = v0[11];
  sub_100726524();
  v65 = v18;
  v19 = sub_1007276DC(v0[11]);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[15];
    v23 = v0[12];
    v63 = v0[14];
    v64 = v0[13];
    v24 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v24 = 136446722;
    v0[8] = v23;
    swift_getMetatypeMetadata();
    v25 = String.init<A>(describing:)();
    v27 = sub_10000668C(v25, v26, v66);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v28 = Set.description.getter();
    v30 = sub_10000668C(v28, v29, v66);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2080;
    static Locale.current.getter();
    v31 = Locale.identifier.getter();
    v33 = v32;
    (*(v63 + 8))(v22, v64);
    v34 = sub_10000668C(v31, v33, v66);

    *(v24 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s: {distinctGroceryLocaleIDsOfExistingGroceryLists: %{public}s}, {current locale: %s}", v24, 0x20u);
    swift_arrayDestroy();
  }

  v36 = v0[14];
  v35 = v0[15];
  v37 = v0[13];
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  static Locale.current.getter();
  v39 = Locale.identifier.getter();
  v41 = v40;
  (*(v36 + 8))(v35, v37);
  *(inited + 32) = v39;
  *(inited + 40) = v41;
  v42 = sub_10072765C(inited, v19);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v0[10] = sub_1007255AC(v65, v42);
  sub_1000F5104(&unk_100945240, &qword_1007A0A70);
  sub_100727AE0();
  Sequence<>.filterToSet(_:)();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v47 = v0[12];
    v48 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v48 = 136446466;
    v49 = sub_1001424F8();
    v51 = sub_10000668C(v49, v50, v66);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2082;
    v52 = Set.description.getter();
    v54 = sub_10000668C(v52, v53, v66);

    *(v48 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s: Requesting grocery model assets from Trial {localeIDsOfGroceryModelAssetsToRequest: %{public}s}", v48, 0x16u);
    swift_arrayDestroy();
  }

  v55 = v0[12];
  *(swift_allocObject() + 16) = v55;
  dispatch thunk of REMTrialClient.requestGroceryModelAssetsForLocales(withLocaleIdentifiers:completion:)();
  v56 = v0[21];
  v58 = v0[17];
  v57 = v0[18];
  v60 = v0[15];
  v59 = v0[16];
  v61 = v0[12];

  sub_1007261BC(v57, v61);
  (*(v58 + 8))(v57, v59);

  v62 = v0[1];

  return v62();
}

uint64_t sub_1007261BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936788 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100950CA0);
  (*(v10 + 16))(v13, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = v5;
    v20 = v19;
    v29[0] = v19;
    v29[1] = a2;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v21 = String.init<A>(describing:)();
    v23 = sub_10000668C(v21, v22, v29);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2048;
    Date.rem_elapsedInMilliseconds.getter();
    v25 = v24;
    (*(v10 + 8))(v13, v9);
    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: Finished execution {elapsedSeconds: %f}", v18, 0x16u);
    sub_10000607C(v20);
    v5 = v27;

    v4 = v28;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  static os_signpost_type_t.end.getter();
  if (qword_100936790 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v5 + 8))(v8, v4);
}

void sub_100726524()
{
  v1 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v20[-v3];
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v10 = sub_100013674(qword_1009752E8);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v10 secondaryGroceryLocalesInfoAsData];
  if (!v12)
  {

LABEL_8:
    (*(v6 + 56))(v4, 1, 1, v5);
LABEL_9:
    sub_1000050A4(v4, &unk_10093F420, &unk_100797AE0);
    sub_1001A5660(_swiftEmptyArrayStorage);
    return;
  }

  v13 = v12;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  type metadata accessor for RDSecondaryGroceryLocalesInfo();
  sub_100728EC8(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v0)
  {
    sub_10001BBA0(v14, v16);

    return;
  }

  sub_10001BBA0(v14, v16);
  v17 = *(v21 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);

  sub_100448FEC(v17, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    goto LABEL_9;
  }

  (*(v6 + 32))(v9, v4, v5);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = Locale.identifier.getter();
  *(inited + 40) = v19;
  sub_1001A5660(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_100726874(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for REMGroceryDummyModel();
  return static REMGroceryDummyModel.isSupported(localeIdentifier:)() & 1;
}

uint64_t sub_1007268C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  return _swift_task_switch(sub_1007268E8, 0, 0);
}

uint64_t sub_1007268E8()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = [objc_opt_self() sharedManager];
  v0[25] = v4;
  v5 = String._bridgeToObjectiveC()();
  v0[26] = v5;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007953F0;
  *(v6 + 32) = v2;
  sub_1000060C8(0, &qword_100950D70, UAFAssetSetSubscription_ptr);
  v7 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[27] = isa;

  type metadata accessor for RDIDispatchQueue();
  v9 = static RDIDispatchQueue.utilityQueue.getter();
  v0[28] = v9;
  v0[2] = v0;
  v0[3] = sub_100726AE0;
  v10 = swift_continuation_init();
  v0[17] = sub_1000F5104(&qword_100946248, &unk_1007B6E90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003F8964;
  v0[13] = &unk_1008FD4F8;
  v0[14] = v10;
  [v4 subscribe:v5 subscriptions:isa queue:v9 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100726AE0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_100726C68;
  }

  else
  {
    v3 = sub_100726BF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100726BF0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100726C68()
{
  v25 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  swift_willThrow();

  if (qword_100936788 != -1)
  {
    swift_once();
  }

  v6 = v0[29];
  v7 = v0[23];
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100950CA0);

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[29];
  if (v11)
  {
    v14 = v0[22];
    v13 = v0[23];
    v15 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_10000668C(v14, v13, v24);
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[20];
    v19 = Error.rem_errorDescription.getter();
    v21 = sub_10000668C(v19, v20, v24);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "requestNLAndSiriBertAssets: Failed to UAFAssetSetManager.subscribe %{public}s with error: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100726E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  return _swift_task_switch(sub_100726EB0, 0, 0);
}

uint64_t sub_100726EB0()
{
  v18 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = [objc_opt_self() sharedManager];
  v0[25] = v4;
  v5 = String._bridgeToObjectiveC()();
  v6 = v5;
  v0[26] = v5;
  v7 = *(v1 + 16);
  if (v7)
  {
    v16 = v5;
    v8 = v0[24];
    v9 = sub_1003689CC(v7, 0);
    v10 = sub_1002791DC(&v17, v9 + 4, v7, v8);

    v11 = sub_10001B860();
    if (v10 != v7)
    {
      __break(1u);
      return _swift_continuation_await(v11);
    }

    v6 = v16;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[27] = isa;

  type metadata accessor for RDIDispatchQueue();
  v13 = static RDIDispatchQueue.utilityQueue.getter();
  v0[28] = v13;
  v0[2] = v0;
  v0[3] = sub_1007270DC;
  v14 = swift_continuation_init();
  v0[17] = sub_1000F5104(&qword_100946248, &unk_1007B6E90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003F8964;
  v0[13] = &unk_1008FD4D0;
  v0[14] = v14;
  [v4 unsubscribe:v6 subscriptionNames:isa queue:v13 completion:v0 + 10];
  v11 = (v0 + 2);

  return _swift_continuation_await(v11);
}

uint64_t sub_1007270DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1007271EC;
  }

  else
  {
    v3 = sub_100728F18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007271EC()
{
  v27 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  swift_willThrow();

  if (qword_100936788 != -1)
  {
    swift_once();
  }

  v6 = v0[29];
  v7 = v0[24];
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100950CA0);

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[29];
  if (v11)
  {
    v13 = v0[24];
    v14 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v14 = 136446466;
    v15 = Set.description.getter();
    v17 = sub_10000668C(v15, v16, v26);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[20];
    v21 = Error.rem_errorDescription.getter();
    v23 = sub_10000668C(v21, v22, v26);

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "unsubscribeUAFAsset: Failed to UAFAssetSetManager.unsubscribe %{public}s with error: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_100727464(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000FCBFC;

  return sub_1007258B8(a1);
}

uint64_t sub_1007274FC(uint64_t a1, uint64_t a2)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v5 = *(PredicateType - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(PredicateType);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v9, v16, PredicateType);
      sub_100379BD8(v11, v9);
      (*(v13 - 8))(v11, PredicateType);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

uint64_t sub_10072765C(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_100378434(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

void *sub_1007276DC(void *a1)
{
  v2 = v1;
  v4 = _s10PredicatesOMa_1();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v8 = [objc_opt_self() cdEntityName];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v8];

  [v9 setResultType:2];
  [v9 setReturnsDistinctResults:1];
  v10 = sub_10001F6F4();
  [v9 setPredicate:v10];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100791300;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = 0x4C797265636F7267;
  *(v11 + 40) = 0xEF4449656C61636FLL;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v13 = a1;
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    sub_1001555B4(v7);
  }

  else
  {
    v15 = v14;
    v31 = _swiftEmptySetSingleton;
    if (v14 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v23[1] = v2;
      v24 = v9;
      v25 = v7;
      v17 = 0;
      v7 = (v15 & 0xC000000000000001);
      v9 = (v15 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v7)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        *&v28 = 0x4C797265636F7267;
        *(&v28 + 1) = 0xEF4449656C61636FLL;
        v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v21 = [v19 __swift_objectForKeyedSubscript:v2];
        swift_unknownObjectRelease();
        if (v21)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
        }

        v30[0] = v28;
        v30[1] = v29;
        if (*(&v29 + 1))
        {
          if (swift_dynamicCast())
          {
            sub_100378434(v30, v26, v27);
          }

          else
          {
          }
        }

        else
        {

          sub_1000050A4(v30, &qword_100939ED0, &qword_100791B10);
        }

        ++v17;
        if (v20 == i)
        {
          v13 = v31;
          v9 = v24;
          v7 = v25;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v13 = _swiftEmptySetSingleton;
LABEL_27:

    sub_1001555B4(v7);
  }

  return v13;
}

unint64_t sub_100727AE0()
{
  result = qword_100941118;
  if (!qword_100941118)
  {
    sub_1000F514C(&unk_100945240, &qword_1007A0A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941118);
  }

  return result;
}

void sub_100727B48(void *a1)
{
  v150 = a1;
  v1 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v142 = v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v139 - v5;
  __chkstk_darwin(v7);
  v149 = v139 - v8;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v151 = v139 - v11;
  v12 = [objc_opt_self() sharedManager];
  v147 = 0x80000001007FF7B0;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 subscriptionsForSubscriber:v13];

  if (v14)
  {
    sub_1000060C8(0, &qword_100950D70, UAFAssetSetSubscription_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v15 >> 62))
    {
      goto LABEL_3;
    }

LABEL_14:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v148 = v6;
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_15:

    v18 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v15 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_14;
  }

LABEL_3:
  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v148 = v6;
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_4:
  v166[0] = _swiftEmptyArrayStorage;
  sub_100026EF4(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
LABEL_101:
    __break(1u);
    return;
  }

  v17 = 0;
  v18 = v166[0];
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    v21 = [v19 name];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v166[0] = v18;
    v26 = v18[2];
    v25 = v18[3];
    if (v26 >= v25 >> 1)
    {
      sub_100026EF4((v25 > 1), v26 + 1, 1);
      v18 = v166[0];
    }

    ++v17;
    v18[2] = v26 + 1;
    v27 = &v18[2 * v26];
    v27[4] = v22;
    v27[5] = v24;
  }

  while (v16 != v17);

LABEL_16:
  v28 = sub_1001A5660(v18);

  if (v150[2])
  {
    v144 = v28;
    v164 = _swiftEmptySetSingleton;
    v165 = _swiftEmptySetSingleton;
    v29 = v150 + 7;
    v30 = 1 << *(v150 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v150[7];
    v33 = (v30 + 63) >> 6;

    v35 = 0;
    *&v36 = 136446210;
    v140 = v36;
    *&v36 = 136446466;
    v141 = v36;
    v145 = v29;
    v146 = v33;
    if (v32)
    {
      goto LABEL_20;
    }

LABEL_21:
    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v37 >= v33)
      {

        v62 = v164;
        v63 = v144;
        v64 = v144[2];
        v65 = v164[2];
        v139[1] = 0;
        *&v141 = v164;
        if (v64 <= v65 >> 3)
        {
          v163[0] = v164;

          sub_10019BAF4(v63);
          v66 = v163[0];
        }

        else
        {

          v66 = sub_10019C4D4(v63, v62);
        }

        v70 = 0;
        v150 = v66;
        v73 = v66[7];
        v71 = v66 + 7;
        v72 = v73;
        v74 = 1 << *(v71 - 24);
        v75 = -1;
        if (v74 < 64)
        {
          v75 = ~(-1 << v74);
        }

        v76 = v75 & v72;
        v143 = (v74 + 63) >> 6;
        v145 = v71;
        v146 = 0x80000001007FF7D0;
        while (v76)
        {
LABEL_59:
          v78 = (v150[6] + ((v70 << 10) | (16 * __clz(__rbit64(v76)))));
          v80 = *v78;
          v79 = v78[1];
          v160 = 0xD00000000000001CLL;
          v161 = v146;
          v156 = 0x75676E616C2E6C6ELL;
          v157 = 0xEB00000000656761;
          v158 = v80;
          v159 = v79;
          sub_1000F5104(&qword_100942F08, &qword_1007A3998);
          v81 = static _DictionaryStorage.allocate(capacity:)();
          swift_bridgeObjectRetain_n();

          v82 = v156;
          v83 = v157;
          v84 = v158;
          v85 = v159;

          v86 = sub_100005F4C(v82, v83);
          if (v87)
          {
            goto LABEL_97;
          }

          v81[(v86 >> 6) + 8] |= 1 << v86;
          v88 = (v81[6] + 16 * v86);
          *v88 = v82;
          v88[1] = v83;
          v89 = (v81[7] + 16 * v86);
          *v89 = v84;
          v89[1] = v85;
          v90 = v81[2];
          v91 = __OFADD__(v90, 1);
          v92 = v90 + 1;
          if (v91)
          {
            goto LABEL_98;
          }

          v81[2] = v92;

          sub_1000050A4(&v156, &qword_10093DB20, &qword_10079B880);
          v162 = v81;
          sub_1000F5104(&qword_100950D60, &qword_1007B6E48);
          v93 = static _DictionaryStorage.allocate(capacity:)();

          v94 = v160;
          v95 = v161;
          v96 = v162;

          v97 = sub_100005F4C(v94, v95);
          if (v98)
          {
            goto LABEL_99;
          }

          v93[(v97 >> 6) + 8] |= 1 << v97;
          v99 = (v93[6] + 16 * v97);
          *v99 = v94;
          v99[1] = v95;
          *(v93[7] + 8 * v97) = v96;
          v100 = v93[2];
          v91 = __OFADD__(v100, 1);
          v101 = v100 + 1;
          if (v91)
          {
            goto LABEL_100;
          }

          v93[2] = v101;

          sub_1000050A4(&v160, &qword_100950D68, &unk_1007B6E50);
          v102 = type metadata accessor for Date();
          v103 = *(v102 - 8);
          v104 = v151;
          (*(v103 + 56))(v151, 1, 1, v102);
          v105 = String._bridgeToObjectiveC()();

          sub_1000F5104(&unk_100945230, &qword_1007A2590);
          v106.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v107 = (*(v103 + 48))(v104, 1, v102);
          isa = 0;
          if (v107 != 1)
          {
            v109 = v151;
            isa = Date._bridgeToObjectiveC()().super.isa;
            (*(v103 + 8))(v109, v102);
          }

          v76 &= v76 - 1;
          v110 = [objc_allocWithZone(UAFAssetSetSubscription) initWithName:v105 assetSets:v106.super.isa usageAliases:0 expires:isa];

          v111 = v148;
          if (v110)
          {
            v112 = type metadata accessor for TaskPriority();
            v113 = *(v112 - 8);
            v114 = v149;
            (*(v113 + 56))(v149, 1, 1, v112);
            v115 = swift_allocObject();
            v115[2] = 0;
            v115[3] = 0;
            v115[4] = 0xD00000000000001BLL;
            v115[5] = v147;
            v115[6] = v110;
            sub_100728D48(v114, v111);
            v116 = (*(v113 + 48))(v111, 1, v112);

            if (v116 == 1)
            {
              sub_1000050A4(v111, &qword_100936FA8, &qword_100791B70);
            }

            else
            {
              TaskPriority.rawValue.getter();
              (*(v113 + 8))(v111, v112);
            }

            v118 = v115[2];
            v117 = v115[3];
            swift_unknownObjectRetain();

            if (v118)
            {
              swift_getObjectType();
              v119 = dispatch thunk of Actor.unownedExecutor.getter();
              v121 = v120;
              swift_unknownObjectRelease();
            }

            else
            {
              v119 = 0;
              v121 = 0;
            }

            sub_1000050A4(v149, &qword_100936FA8, &qword_100791B70);
            v122 = swift_allocObject();
            *(v122 + 16) = &unk_1007B6E68;
            *(v122 + 24) = v115;
            if (v121 | v119)
            {
              v152 = 0;
              v153 = 0;
              v154 = v119;
              v155 = v121;
            }

            swift_task_create();
          }
        }

        while (1)
        {
          v77 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            goto LABEL_95;
          }

          if (v77 >= v143)
          {
            break;
          }

          v76 = v145[v77];
          ++v70;
          if (v76)
          {
            v70 = v77;
            goto LABEL_59;
          }
        }

        if (*(v141 + 16) <= v144[2] >> 3)
        {
          v163[0] = v144;
          sub_10019BAF4(v141);

          v123 = v163[0];
          if (!*(v163[0] + 16))
          {
            goto LABEL_79;
          }

LABEL_77:
          v124 = type metadata accessor for TaskPriority();
          v125 = v142;
          (*(*(v124 - 8) + 56))(v142, 1, 1, v124);
          v126 = swift_allocObject();
          v126[2] = 0;
          v126[3] = 0;
          v126[4] = 0xD00000000000001BLL;
          v126[5] = v147;
          v126[6] = v123;
          sub_1001955C4(0, 0, v125, &unk_1007B6E80, v126);
        }

        else
        {
          v123 = sub_10019C4D4(v141, v144);

          if (v123[2])
          {
            goto LABEL_77;
          }

LABEL_79:
        }

        v127 = 0;
        v128 = v165;
        v129 = v165 + 7;
        v130 = 1 << *(v165 + 32);
        v131 = -1;
        if (v130 < 64)
        {
          v131 = ~(-1 << v130);
        }

        v132 = v131 & v165[7];
        v133 = (v130 + 63) >> 6;
        while (v132)
        {
          v134 = v127;
LABEL_88:
          v135 = __clz(__rbit64(v132));
          v132 &= v132 - 1;
          v136 = (v128[6] + ((v134 << 10) | (16 * v135)));
          v137 = *v136;
          v138 = v136[1];

          _s7remindd20REMGroceryClassifierC26requestNLAssetsIfNecessary11modelLocaleySS_tFZ_0();
        }

        while (1)
        {
          v134 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            goto LABEL_96;
          }

          if (v134 >= v133)
          {
            goto LABEL_90;
          }

          v132 = v129[v134];
          ++v127;
          if (v132)
          {
            v127 = v134;
            goto LABEL_88;
          }
        }
      }

      v32 = v29[v37];
      ++v35;
      if (v32)
      {
        while (1)
        {
          v38 = __clz(__rbit64(v32));
          v32 &= v32 - 1;
          v39 = (*(v34 + 48) + ((v37 << 10) | (16 * v38)));
          v40 = *v39;
          v41 = v39[1];

          sub_10025B910(v40, v41, v166);
          v42 = 0;
          v43 = v167;
          v44 = *(v167 + 16);
          v45 = (v167 + 32);
          do
          {
            if (v44 == v42)
            {

              sub_100378434(v163, v40, v41);

              v44 = *(v43 + 16);
              goto LABEL_29;
            }
          }

          while (v45[v42++]);
          do
          {
LABEL_29:
            if (!v44)
            {
              sub_10025C33C(v166);
              if (qword_100936788 != -1)
              {
                swift_once();
              }

              v50 = type metadata accessor for Logger();
              sub_100006654(v50, qword_100950CA0);

              v51 = Logger.logObject.getter();
              v52 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = swift_slowAlloc();
                v54 = swift_slowAlloc();
                v163[0] = v54;
                *v53 = v140;
                v55 = sub_10000668C(v40, v41, v163);

                *(v53 + 4) = v55;
                v56 = v52;
                v57 = v51;
                v58 = "requestNLAndSiriBertAssets: skip download for siriEmeddngLocale: %{public}s";
                goto LABEL_41;
              }

              goto LABEL_42;
            }

            v47 = *v45++;
            --v44;
          }

          while (v47 != 4);
          v48 = v169;
          if (!v169)
          {
            sub_10025C33C(v166);
            if (qword_100936788 != -1)
            {
              swift_once();
            }

            v59 = type metadata accessor for Logger();
            sub_100006654(v59, qword_100950CA0);

            v51 = Logger.logObject.getter();
            v60 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v51, v60))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v163[0] = v54;
              *v53 = v140;
              v61 = sub_10000668C(v40, v41, v163);

              *(v53 + 4) = v61;
              v56 = v60;
              v57 = v51;
              v58 = "requestNLAndSiriBertAssets: siriEmeddngLocale is nil: %{public}s";
LABEL_41:
              _os_log_impl(&_mh_execute_header, v57, v56, v58, v53, 0xCu);
              sub_10000607C(v54);

              v33 = v146;

LABEL_43:

              goto LABEL_44;
            }

LABEL_42:

            goto LABEL_43;
          }

          v49 = v168;

          sub_10025C33C(v166);
          sub_100378434(v163, v49, v48);

LABEL_44:
          v35 = v37;
          v34 = v150;
          v29 = v145;
          if (!v32)
          {
            goto LABEL_21;
          }

LABEL_20:
          v37 = v35;
        }
      }
    }

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
    goto LABEL_101;
  }

  if (v28[2])
  {
    v67 = type metadata accessor for TaskPriority();
    v68 = v142;
    (*(*(v67 - 8) + 56))(v142, 1, 1, v67);
    v69 = swift_allocObject();
    v69[2] = 0;
    v69[3] = 0;
    v69[4] = 0xD00000000000001BLL;
    v69[5] = v147;
    v69[6] = v28;
    sub_1001955C4(0, 0, v68, &unk_1007B6E88, v69);
LABEL_90:
  }

  else
  {
  }
}