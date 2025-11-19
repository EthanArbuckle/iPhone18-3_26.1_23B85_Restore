uint64_t sub_1005B5A88(void *a1)
{
  if (qword_100936640 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10094DB88);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "UpdateDisplayDates BEGIN {store: %@}", v7, 0xCu);
    sub_100039860(v8);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "os_transaction INIT {name: com.apple.remindd.RDDisplayDateUpdater.updateDisplayDates}", v12, 2u);
  }

  os_transaction_create();
  sub_1005B5D84(v4, v1);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "os_transaction RELEASE {name: com.apple.remindd.RDDisplayDateUpdater.updateDisplayDates}", v15, 2u);
  }

  v16 = v4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "UpdateDisplayDates END {store: %@}", v19, 0xCu);
    sub_100039860(v20);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1005B5D84(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v5 = [a1 persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:v5];

  [v4 setTransactionAuthor:RDStoreControllerDisplayDateUpdaterAuthor];
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a1;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1005B6224;
  *(v7 + 24) = v6;
  v12[4] = sub_1000529DC;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000F160;
  v12[3] = &unk_1008F9370;
  v8 = _Block_copy(v12);
  v9 = a1;
  v10 = v4;

  [v10 performBlockAndWait:v8];

  _Block_release(v8);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_1005B6230(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TimeZone.current.getter();
  Date.init()();
  v14 = TimeZone.secondsFromGMT(for:)();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  sub_1000F5104(&qword_10093B980, qword_10079A3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  swift_getKeyPath();
  v16 = sub_1003F71EC();

  *(inited + 32) = v16;
  KeyPath = swift_getKeyPath();
  v18 = sub_1003EFA90(KeyPath, v14);

  *(inited + 40) = v18;
  v19 = sub_10000C2B0(inited);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v20 = [objc_allocWithZone(NSFetchRequest) init];
  v21 = [swift_getObjCClassFromMetadata() entity];
  [v20 setEntity:v21];

  [v20 setAffectedStores:0];
  [v20 setPredicate:v19];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007953F0;
  *(v22 + 32) = a1;
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v23 = a1;
  v24 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setAffectedStores:isa];

  [v20 setFetchBatchSize:64];
  v76 = v20;
  v26 = v75;
  v27 = NSManagedObjectContext.fetch<A>(_:)();
  v29 = v26;
  if (v26)
  {
    goto LABEL_2;
  }

  v30 = v27;
  v68 = v27 >> 62;
  if (v27 >> 62)
  {
LABEL_51:
    v31 = _CocoaArrayWrapper.endIndex.getter();
    if (v31)
    {
LABEL_6:
      v67 = v19;
      v19 = 0;
      v32 = v30 & 0xC000000000000001;
      v33 = v30 & 0xFFFFFFFFFFFFFF8;
      *&v28 = 134218240;
      v71 = v28;
      v69 = v24;
      v70 = v29;
      v74 = v30;
      v75 = v30 & 0xFFFFFFFFFFFFFF8;
      v72 = v31;
      v73 = v30 & 0xC000000000000001;
      do
      {
        if (v32)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v33 + 16))
          {
            goto LABEL_50;
          }

          v34 = *(v30 + 8 * v19 + 32);
        }

        v35 = v34;
        v36 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        [v34 updateDisplayDate];
        if (v36 & 0x3F) == 0 && ([v24 hasChanges])
        {
          if (qword_100936640 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_100006654(v37, qword_10094DB88);
          v38 = v24;
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = v71;
            v42 = [v38 updatedObjects];
            sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
            sub_1003DB488();
            v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            if ((v43 & 0xC000000000000001) != 0)
            {
              v44 = __CocoaSet.count.getter();
            }

            else
            {
              v44 = *(v43 + 16);
            }

            *(v41 + 4) = v44;

            *(v41 + 12) = 2048;
            *(v41 + 14) = v36;
            _os_log_impl(&_mh_execute_header, v39, v40, "UpdateDisplayDates: Saving batch {updatedObjectsCount: %ld, totalUpdatedCount: %ld}", v41, 0x16u);

            v24 = v69;
            v29 = v70;
          }

          else
          {

            v39 = v38;
          }

          v77 = 0;
          v45 = [v38 save:&v77];
          v32 = v73;
          if (!v45)
          {
            v63 = v77;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            v19 = v76;
            v76 = v35;
            goto LABEL_2;
          }

          v46 = v77;
          v30 = v74;
          v33 = v75;
          v31 = v72;
        }

        ++v19;
      }

      while (v36 != v31);
      if (![v24 hasChanges])
      {
        if (qword_100936640 != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        sub_100006654(v56, qword_10094DB88);

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.info.getter();
        v59 = os_log_type_enabled(v57, v58);
        v60 = v67;
        if (!v59)
        {

          swift_bridgeObjectRelease_n();
          return;
        }

        v61 = swift_slowAlloc();
        *v61 = 134217984;
        if (v68)
        {
          v62 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v62 = *(v33 + 16);
        }

        *(v61 + 4) = v62;

        _os_log_impl(&_mh_execute_header, v57, v58, "Not saving since there are no changes {totalUpdatedCount: %ld}", v61, 0xCu);

        goto LABEL_3;
      }

      if (qword_100936640 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100006654(v47, qword_10094DB88);
      v48 = v24;

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v19 = v67;
      if (v51)
      {
        v52 = swift_slowAlloc();
        *v52 = v71;
        v53 = [v48 updatedObjects];
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        sub_1003DB488();
        v54 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v54 & 0xC000000000000001) != 0)
        {
          v55 = __CocoaSet.count.getter();
        }

        else
        {
          v55 = *(v54 + 16);
        }

        *(v52 + 4) = v55;

        *(v52 + 12) = 2048;
        if (v68)
        {
          v64 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v64 = *(v75 + 16);
        }

        *(v52 + 14) = v64;

        _os_log_impl(&_mh_execute_header, v49, v50, "UpdateDisplayDates: Saving last objects {updatedObjectsCount: %ld, totalUpdatedCount: %ld}", v52, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v77 = 0;
      if ([v48 save:{&v77, v67}])
      {
        v65 = v77;
      }

      else
      {
        v66 = v77;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

LABEL_2:

LABEL_3:
      return;
    }
  }

  else
  {
    v31 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_6;
    }
  }
}

void sub_1005B6BC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1005B587C();
}

void *sub_1005B6BD0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a4;
  *&v82 = a5;
  v94 = a3;
  v83 = a2;
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v79 = *(v7 - 8);
  v80 = v7;
  v8 = *(v79 + 64);
  __chkstk_darwin(v7);
  v78 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v76 = type metadata accessor for UUID();
  v75 = *(v76 - 8);
  v10 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = _s9UtilitiesO12SortingStyleOMa();
  v17 = *(*(v85 - 8) + 64);
  v18 = __chkstk_darwin(v85);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v84 = (&v72 - v22);
  __chkstk_darwin(v21);
  v86 = &v72 - v23;
  v24 = _s10PredicatesOMa(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = [a1 customContext];
  if (!v29)
  {
    return _swiftEmptyArrayStorage;
  }

  v30 = v29;
  v77 = v5;
  v31 = REMSmartListCustomContext.filter.getter();

  if (!v31)
  {
    return _swiftEmptyArrayStorage;
  }

  v32 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
  *v27 = v31;
  v73 = v31;
  v33 = v28;
  *(v27 + 1) = [v28 accountID];
  v34 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  (*(*(v34 - 8) + 16))(&v27[v32], v94, v34);
  swift_storeEnumTagMultiPayload();
  v35 = sub_100043AA8();
  sub_1001A4F3C(v27, _s10PredicatesOMa);
  (*(v13 + 16))(v16, v82, v12);
  v36 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v37 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v38 = v84;
  (*(*(v37 - 8) + 104))(v84, v36, v37);
  swift_storeEnumTagMultiPayload();
  v39 = v86;
  sub_1005368D8(v16, v38, v86);
  sub_1001A4ED8(v39, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1001A4F3C(v20, _s9UtilitiesO12SortingStyleOMa);
  v41 = v83;
  if (EnumCaseMultiPayload == 5)
  {
    v42 = [v33 objectID];
    v43 = [v42 uuid];

    v44 = v74;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = UUID.uuidString.getter();
    v46 = v33;
    v48 = v47;
    (*(v75 + 8))(v44, v76);
    v49 = [v46 accountID];
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v50 = swift_allocObject();
    *(v50 + 16) = 2;
    *(v50 + 24) = v45;
    *(v50 + 32) = v48;
    *(v50 + 40) = v49;
    *(v50 + 48) = v41;
    *(v50 + 56) = &v91;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_10026A4B4;
    *(v51 + 24) = v50;
    v89 = sub_1000529DC;
    v90 = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F160;
    v88 = &unk_1008F9448;
    v52 = _Block_copy(aBlock);
    v53 = v49;
    v54 = v41;

    [v54 performBlockAndWait:v52];

    _Block_release(v52);
    LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

    if (v53)
    {
      __break(1u);
      goto LABEL_19;
    }

    v55 = v93;
    v82 = v91;
    v76 = v92;

    v56 = [v46 accountID];
    v39 = v86;
    sub_1001A4F3C(v86, _s9UtilitiesO12SortingStyleOMa);
    v57 = v84;
    v58 = v76;
    *v84 = v82;
    *(v57 + 16) = v58;
    *(v57 + 32) = v55;
    *(v57 + 40) = v56;
    swift_storeEnumTagMultiPayload();
    sub_1001B1DA0(v57, v39);
    v33 = v46;
  }

  v59 = [v33 accountID];
  v60 = [v41 persistentStoreOfAccountWithAccountID:v59];

  if (v60)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1007953F0;
    *(v61 + 32) = v60;
  }

  else
  {
    v61 = 0;
  }

  v63 = v73;
  v64 = v78;
  REMCustomSmartListFilterDescriptor.operation.getter();
  v65 = (*(v79 + 88))(v64, v80);
  if (v65 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
  {
    v66 = static Set<>.typesSupportedByCustomSmartList.getter();
    v67 = static Set<>.typesIndescribableByNSPredicate.getter();
    sub_1001A2030(v67, v66);

    goto LABEL_15;
  }

  if (v65 != enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
  {
LABEL_19:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  static Set<>.typesSupportedByCustomSmartList.getter();
LABEL_15:
  v88 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
  v89 = sub_10012DEEC();
  aBlock[0] = v41;
  v68 = v41;
  v69 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

  sub_10000607C(aBlock);
  v70 = v77;
  v71 = sub_100536D54(v68, v35, v39, v94, v81, v69, v61);
  sub_1001A4F3C(v39, _s9UtilitiesO12SortingStyleOMa);

  if (!v70)
  {
    return v71;
  }

  return result;
}

uint64_t sub_1005B74B8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v159 = a4;
  v155 = a5;
  v156 = a3;
  v152 = a2;
  v143 = a1;
  v132 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v135 = *(v132 - 8);
  v5 = *(v135 + 64);
  __chkstk_darwin(v132);
  v131 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v146 = *(Subtasks - 8);
  v147 = Subtasks;
  v8 = *(v146 + 64);
  __chkstk_darwin(Subtasks);
  v145 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = _s10PredicatesOMa(0);
  v10 = *(*(v138 - 8) + 64);
  v11 = __chkstk_darwin(v138);
  v130 = (&v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v136 = (&v130 - v13);
  v144 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v148 = *(v144 - 8);
  v14 = *(v148 + 64);
  v15 = __chkstk_darwin(v144);
  v134 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v142 = &v130 - v17;
  v18 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v157 = *(v18 - 8);
  v158 = v18;
  v19 = *(v157 + 64);
  v20 = __chkstk_darwin(v18);
  v133 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v153 = &v130 - v22;
  v165 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v23 = *(v165 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v165);
  v137 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v151 = &v130 - v28;
  __chkstk_darwin(v27);
  v161 = &v130 - v29;
  v30 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v141 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v130 - v35;
  __chkstk_darwin(v34);
  v38 = &v130 - v37;
  v39 = sub_1000F5104(&qword_10093AE38, &unk_100798450);
  v40 = v39 - 8;
  v41 = *(*(v39 - 8) + 64);
  v42 = __chkstk_darwin(v39);
  v44 = &v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = &v130 - v45;
  sub_100010364(v156, &v130 - v45, &qword_100938A70, &qword_1007ACC60);
  v47 = &v46[*(v40 + 56)];
  v149 = *(v23 + 16);
  v150 = v23 + 16;
  v149(v47, v159, v165);
  *&v46[*(v40 + 72)] = v155;
  sub_100010364(v46, v44, &qword_10093AE38, &unk_100798450);
  v48 = *(v40 + 56);
  v154 = *&v44[*(v40 + 72)];
  sub_100031B58(v44, v38, &qword_100938A70, &qword_1007ACC60);
  v159 = v23;
  v49 = v161;
  (*(v23 + 32))();
  v156 = v38;
  sub_100010364(v38, v36, &qword_100938A70, &qword_1007ACC60);
  v50 = v157;
  v51 = v158;
  v140 = *(v157 + 48);
  v139 = v157 + 48;
  v52 = v140(v36, 1);

  if (v52 != 1)
  {

    v54 = v50;
    v55 = *(v50 + 32);
    v56 = v153;
    v57 = v51;
    v55(v153, v36, v51);
    v58 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    v59 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v54 + 8))(v56, v57);
    (*(v159 + 8))(v49, v165);
    sub_1000050A4(v156, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v46, &qword_10093AE38, &unk_100798450);
    v60 = v58 + v59;
    if (!__OFADD__(v58, v59))
    {
LABEL_5:
      v61 = v60 <= 0;
      goto LABEL_6;
    }

    goto LABEL_52;
  }

  sub_1000050A4(v36, &qword_100938A70, &qword_1007ACC60);
  if (*(v154 + 16))
  {

    (*(v159 + 8))(v161, v165);
    sub_1000050A4(v156, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v46, &qword_10093AE38, &unk_100798450);
    v53 = 1;
    return v53 & 1;
  }

  v63 = v151;
  v64 = v161;
  v65 = v165;
  v149(v151, v161, v165);
  v66 = v159;
  v67 = (*(v159 + 88))(v63, v65);
  if (v67 == enum case for REMRemindersListDataView.ShowCompleted.after(_:) || v67 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {

    (*(v66 + 8))(v63, v65);
LABEL_13:
    v68 = [v152 customContext];
    if (!v68 || (v69 = v68, v70 = REMSmartListCustomContext.filter.getter(), v69, !v70))
    {
      (*(v66 + 8))(v64, v65);
      sub_1000050A4(v156, &qword_100938A70, &qword_1007ACC60);
      v78 = &qword_10093AE38;
      v79 = &unk_100798450;
      v80 = v46;
LABEL_18:
      sub_1000050A4(v80, v78, v79);
      v53 = 0;
      return v53 & 1;
    }

    v71 = v142;
    REMCustomSmartListFilterDescriptor.operation.getter();
    v72 = v148 + 88;
    v73 = *(v148 + 88);
    v74 = v73(v71, v144);
    v155 = v70;
    v148 = v72;
    LODWORD(v154) = enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:);
    if (v74 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
    {
      v75 = static Set<>.typesSupportedByCustomSmartList.getter();
      v76 = static Set<>.typesIndescribableByNSPredicate.getter();
      sub_1001A2030(v76, v75);

      v77 = v145;
    }

    else
    {
      v77 = v145;
      if (v74 != enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
      {
        goto LABEL_53;
      }

      static Set<>.typesSupportedByCustomSmartList.getter();
    }

    v163 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
    v81 = sub_10012DEEC();
    v164 = v81;
    v162 = v143;
    v82 = v143;
    v83 = v155;
    v84 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

    sub_10000607C(&v162);
    v85 = *(v84 + 16);

    if (!v85)
    {
      v98 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
      v99 = v136;
      *v136 = v83;
      v100 = v83;
      *(v99 + 8) = [v152 accountID];
      v101 = v159;
      v102 = v165;
      (*(v159 + 104))(v99 + v98, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v165);
      swift_storeEnumTagMultiPayload();
      v103 = sub_100043AA8();
      sub_1001A4F3C(v99, _s10PredicatesOMa);
      sub_100345DB0();
      v104 = [objc_allocWithZone(NSFetchRequest) init];
      v105 = [swift_getObjCClassFromMetadata() entity];
      [v104 setEntity:v105];

      [v104 setAffectedStores:0];
      [v104 setPredicate:v103];
      [v104 setFetchLimit:1];
      [v104 setAffectedStores:0];
      v106 = v160;
      v107 = NSManagedObjectContext.count<A>(for:)();
      v160 = v106;
      if (v106)
      {

        (*(v101 + 8))(v161, v102);
LABEL_40:
        sub_1000050A4(v156, &qword_100938A70, &qword_1007ACC60);
        sub_1000050A4(v46, &qword_10093AE38, &unk_100798450);
        return v53 & 1;
      }

      v111 = v107;

      (*(v101 + 8))(v161, v102);
      sub_1000050A4(v156, &qword_100938A70, &qword_1007ACC60);
      sub_1000050A4(v46, &qword_10093AE38, &unk_100798450);
      v61 = v111 <= 0;
LABEL_6:
      v53 = !v61;
      return v53 & 1;
    }

    v86 = v82;
    (*(v146 + 104))(v77, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), v147);
    v87 = [v152 customContext];
    if (!v87)
    {
      v108 = 1;
      v109 = v165;
      v110 = v158;
      v90 = v141;
LABEL_47:
      (*(v146 + 8))(v77, v147);
      v126 = v157;
      (*(v157 + 56))(v90, v108, 1, v110);
      if ((v140)(v90, 1, v110) == 1)
      {

        (*(v159 + 8))(v161, v109);
        sub_1000050A4(v156, &qword_100938A70, &qword_1007ACC60);
        sub_1000050A4(v46, &qword_10093AE38, &unk_100798450);
        v80 = v90;
        v78 = &qword_100938A70;
        v79 = &qword_1007ACC60;
        goto LABEL_18;
      }

      v127 = v133;
      (*(v126 + 32))(v133, v90, v110);
      v128 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
      v129 = REMRemindersListDataView.CountByCompleted.completed.getter();

      (*(v126 + 8))(v127, v110);
      (*(v159 + 8))(v161, v109);
      sub_1000050A4(v156, &qword_100938A70, &qword_1007ACC60);
      sub_1000050A4(v46, &qword_10093AE38, &unk_100798450);
      v60 = v128 + v129;
      if (!__OFADD__(v128, v129))
      {
        goto LABEL_5;
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v88 = v87;
    v89 = REMSmartListCustomContext.filter.getter();

    v90 = v141;
    if (!v89)
    {
      v108 = 1;
      v109 = v165;
LABEL_46:
      v110 = v158;
      goto LABEL_47;
    }

    v91 = v134;
    REMCustomSmartListFilterDescriptor.operation.getter();
    v92 = v73(v91, v144);
    if (v92 == v154)
    {
      v93 = static Set<>.typesSupportedByCustomSmartList.getter();
      v94 = static Set<>.typesIndescribableByNSPredicate.getter();
      sub_1001A2030(v94, v93);

      v95 = v159;
      v96 = v135;
      v97 = v137;
LABEL_37:
      v163 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
      v164 = v81;
      v162 = v86;
      v112 = v86;
      v113 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

      sub_10000607C(&v162);
      v114 = *(v113 + 16);

      if (v114)
      {
        v115 = v165;
        (*(v95 + 104))(v97, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v165);
        v116 = v97;
        v117 = v131;
        v118 = v132;
        (*(v96 + 104))(v131, enum case for REMRemindersListDataView.SortingStyle.default(_:), v132);
        v119 = v112;
        v77 = v145;
        v120 = v160;
        sub_1005B6BD0(v152, v119, v116, v145, v117);
        v160 = v120;
        if (v120)
        {

          (*(v96 + 8))(v117, v118);
          v121 = *(v95 + 8);
          v121(v137, v115);
          (*(v146 + 8))(v77, v147);
          v121(v161, v115);
          goto LABEL_40;
        }

        (*(v96 + 8))(v117, v118);
        (*(v95 + 8))(v137, v115);
        v90 = v141;
        REMRemindersListDataView.CountByCompleted.init(reminders:)();
        v109 = v115;
      }

      else
      {
        v122 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
        v123 = v130;
        *v130 = v89;
        v124 = v89;
        *(v123 + 8) = [v152 accountID];
        v109 = v165;
        (*(v95 + 104))(v123 + v122, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v165);
        swift_storeEnumTagMultiPayload();
        v89 = sub_100043AA8();
        sub_1001A4F3C(v123, _s10PredicatesOMa);
        v90 = v141;
        v125 = v160;
        sub_10053464C(v112, v89);
        v160 = v125;
        if (v125)
        {

          (*(v146 + 8))(v145, v147);
          (*(v95 + 8))(v161, v109);
          goto LABEL_40;
        }

        v77 = v145;
      }

      v108 = 0;
      goto LABEL_46;
    }

    v95 = v159;
    v97 = v137;
    if (v92 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
    {
      static Set<>.typesSupportedByCustomSmartList.getter();
      v96 = v135;
      goto LABEL_37;
    }

LABEL_53:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_54;
  }

  if (v67 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {

    goto LABEL_13;
  }

  if (v67 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {

    (*(v66 + 8))(v64, v65);
    sub_1000050A4(v156, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v46, &qword_10093AE38, &unk_100798450);
    v53 = 0;
    return v53 & 1;
  }

LABEL_54:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1005B86C8(void (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v224 = a2;
  v208 = a5;
  v200 = type metadata accessor for UUID();
  v199 = *(v200 - 8);
  v9 = *(v199 + 64);
  __chkstk_darwin(v200);
  v198 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v207 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v215 = &v183 - v15;
  v206 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v205 = *(v206 - 8);
  v16 = *(v205 + 64);
  __chkstk_darwin(v206);
  v204 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v214 = &v183 - v19;
  v20 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v195 = &v183 - v22;
  v218 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v217 = *(v218 - 8);
  v23 = *(v217 + 64);
  __chkstk_darwin(v218);
  v219 = &v183 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v221 = &v183 - v26;
  v220 = type metadata accessor for REMRemindersListDataView.Diff();
  v216 = *(v220 - 8);
  v27 = *(v216 + 64);
  __chkstk_darwin(v220);
  v203 = &v183 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v213 = &v183 - v30;
  __chkstk_darwin(v31);
  v212 = &v183 - v32;
  __chkstk_darwin(v33);
  v226 = &v183 - v34;
  v196 = _s10PredicatesOMa(0);
  v35 = *(*(v196 - 8) + 64);
  __chkstk_darwin(v196);
  v197 = (&v183 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v210 = *(v211 - 8);
  v37 = *(v210 + 64);
  __chkstk_darwin(v211);
  v209 = &v183 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v202 = &v183 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v222 = &v183 - v43;
  __chkstk_darwin(v44);
  v225 = &v183 - v45;
  v46 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v232 = *(v46 - 1);
  v233 = v46;
  v47 = *(v232 + 64);
  __chkstk_darwin(v46);
  v201 = &v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v230 = (&v183 - v50);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v238 = *(Subtasks - 8);
  v51 = *(v238 + 8);
  __chkstk_darwin(Subtasks);
  v227 = &v183 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v229 = (&v183 - v54);
  v55 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v234 = *(v55 - 8);
  v56 = *(v234 + 64);
  __chkstk_darwin(v55);
  v58 = &v183 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = &v183 - v60;
  __chkstk_darwin(v62);
  v64 = &v183 - v63;
  __chkstk_darwin(v65);
  v67 = &v183 - v66;
  __chkstk_darwin(v68);
  v228 = &v183 - v69;
  v231 = a4;
  v70 = REMRemindersListDataView.CustomSmartListInvocation.Parameters.smartList.getter();
  v236 = a1;
  sub_1005BA098(a1, a3, v70);
  if (v5)
  {

    return;
  }

  v72 = v71;
  v191 = v67;
  v192 = v64;
  v188 = v61;
  v189 = v58;
  v193 = v55;
  v190 = a3;

  v73 = v72;
  v74 = v228;
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.showCompleted.getter();
  v75 = v229;
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.fetchSubtasks.getter();
  v76 = v230;
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.sortingStyle.getter();
  v77 = sub_1005B6BD0(v73, v236, v74, v75, v76);
  v194 = 0;
  v186 = v77;
  v187 = v73;
  v184 = *(v232 + 8);
  v184(v76, v233);
  v78 = *(v238 + 1);
  v238 += 8;
  v230 = v78;
  v78(v75, Subtasks);
  v79 = v234;
  v80 = v234 + 8;
  v81 = *(v234 + 8);
  v82 = v193;
  v81(v74, v193);
  v83 = REMRemindersListDataView.CustomSmartListInvocation.Parameters.countCompleted.getter();
  v229 = v81;
  v185 = v80;
  if (v83 & 1) != 0 && (v84 = v191, REMRemindersListDataView.CustomSmartListInvocation.Parameters.showCompleted.getter(), v85 = v192, (*(v79 + 104))(v192, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v82), v86 = static REMRemindersListDataView.ShowCompleted.== infix(_:_:)(), v81(v85, v82), v81(v84, v82), (v86))
  {

    v87 = v225;
    REMRemindersListDataView.CountByCompleted.init(reminders:)();
    v88 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    v89 = v226;
  }

  else
  {
    v90 = REMRemindersListDataView.CustomSmartListInvocation.Parameters.countCompleted.getter();
    REMRemindersListDataView.CustomSmartListInvocation.Parameters.fetchSubtasks.getter();
    if (v90)
    {
      v91 = [v187 customContext];
      v87 = v225;
      if (v91 && (v92 = v91, v93 = REMSmartListCustomContext.filter.getter(), v92, v93))
      {
        v94 = v209;
        REMCustomSmartListFilterDescriptor.operation.getter();
        v95 = (*(v210 + 88))(v94, v211);
        if (v95 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
        {
          v96 = static Set<>.typesSupportedByCustomSmartList.getter();
          v97 = static Set<>.typesIndescribableByNSPredicate.getter();
          sub_1001A2030(v97, v96);
        }

        else
        {
          if (v95 != enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            goto LABEL_56;
          }

          static Set<>.typesSupportedByCustomSmartList.getter();
        }

        v120 = Subtasks;
        v237[3] = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
        v237[4] = sub_10012DEEC();
        v237[0] = v236;
        v121 = v236;
        v122 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

        sub_10000607C(v237);
        v123 = *(v122 + 16);

        if (v123)
        {
          v124 = v188;
          v125 = v193;
          (*(v234 + 104))(v188, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v193);
          v126 = v233;
          v127 = v201;
          (*(v232 + 104))(v201, enum case for REMRemindersListDataView.SortingStyle.default(_:), v233);
          v128 = v187;
          v129 = v121;
          v130 = v227;
          v131 = v194;
          sub_1005B6BD0(v187, v129, v124, v227, v127);
          v194 = v131;
          if (v131)
          {

            v184(v127, v126);
            v229(v124, v125);
            v230(v130, Subtasks);
            return;
          }

          v184(v127, v126);
          v229(v124, v125);
          REMRemindersListDataView.CountByCompleted.init(reminders:)();
        }

        else
        {
          v132 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
          v133 = v197;
          *v197 = v93;
          v233 = v93;
          v134 = v187;
          *(v133 + 8) = [v187 accountID];
          (*(v234 + 104))(v133 + v132, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v193);
          swift_storeEnumTagMultiPayload();
          v93 = sub_100043AA8();
          sub_1001A4F3C(v133, _s10PredicatesOMa);
          v135 = v194;
          sub_10053464C(v121, v93);
          if (v135)
          {

            v230(v227, v120);
            return;
          }

          v194 = 0;
        }

        v98 = 0;
      }

      else
      {
        v98 = 1;
      }

      v89 = v226;
    }

    else
    {
      v98 = 1;
      v87 = v225;
      v89 = v226;
    }

    v230(v227, Subtasks);
    v99 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v100 = v222;
    (*(*(v99 - 8) + 56))(v222, v98, 1, v99);
    sub_100031B58(v100, v87, &qword_100938A70, &qword_1007ACC60);
  }

  v101 = [v223 fetchResultTokenToDiffAgainst];
  v102 = v194;
  sub_100534D44(v101, v89);
  if (v102)
  {
    v103 = v187;

    sub_1000050A4(v87, &qword_100938A70, &qword_1007ACC60);
    return;
  }

  v104 = v221;
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.remindersPrefetch.getter();
  v105 = v217;
  v106 = v219;
  v107 = v218;
  (*(v217 + 16))(v219, v104, v218);
  v108 = (*(v105 + 88))(v106, v107);
  v194 = 0;
  if (v108 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v111 = v236;
    v112 = v190;
    if (v108 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      v113 = v219;
      (*(v105 + 96))(v219, v107);
      sub_10053E698(*v113, v226, v111, v112, 0);
      v110 = v186;
      goto LABEL_32;
    }

    if (v108 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
    {
      v114 = v219;
      (*(v105 + 96))(v219, v107);
      v115 = *v114;
      v116 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
      v117 = v195;
      sub_100031B58(v114 + *(v116 + 48), v195, &qword_10094B8E0, &unk_1007AABD0);
      v118 = v115;
      v110 = v186;
      sub_10053DB98(v118, v186, v111, v112, 0);
      sub_10053EBE4(v117, v110, v111, v112, 0);
      v119 = v117;
      v107 = v218;
      sub_1000050A4(v119, &qword_10094B8E0, &unk_1007AABD0);
      goto LABEL_32;
    }

    if (v108 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
    {
      v111 = v236;
      v110 = v186;
      v105 = v217;
      goto LABEL_32;
    }

LABEL_56:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  (*(v105 + 96))(v106, v107);
  v109 = *v106;
  v110 = v186;
  v111 = v236;
  sub_10053DB98(v109, v186, v236, v190, 0);
LABEL_32:
  (*(v105 + 8))(v221, v107);
  v136 = v189;
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.showCompleted.getter();
  v137 = v111;
  v138 = v187;
  v139 = v194;
  sub_1005B74B8(v137, v187, v87, v136, v110);
  v194 = v139;
  if (v139)
  {

    v229(v136, v193);
    (*(v216 + 8))(v226, v220);
    v140 = v87;
  }

  else
  {
    v229(v136, v193);
    sub_100010364(v87, v202, &qword_100938A70, &qword_1007ACC60);

    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v141 = [v138 objectID];

    v142 = [v138 accountID];
    ManualOrdering = REMRemindersListDataView.CustomSmartListInvocation.Parameters.shouldFetchManualOrderingID.getter();
    v144 = v216;
    if (ManualOrdering)
    {
      v145 = [v141 uuid];
      v146 = v198;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v147 = UUID.uuidString.getter();
      v149 = v148;
      (*(v199 + 8))(v146, v200);
      sub_10053F868(2, v147, v149, v142, v236);
      v151 = v215;
      v152 = v213;
      if (!v150)
      {
        v150 = [objc_opt_self() newObjectID];
      }

      v153 = v150;
      REMObjectID.codable.getter();
      REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)();

      v154 = 0;
    }

    else
    {
      v154 = 1;
      v151 = v215;
      v152 = v213;
    }

    v155 = type metadata accessor for REMManualOrdering.ManualOrderingID();
    (*(*(v155 - 8) + 56))(v151, v154, 1, v155);
    if (qword_100936648 != -1)
    {
      swift_once();
    }

    v156 = type metadata accessor for Logger();
    sub_100006654(v156, qword_10094DBD8);
    v157 = *(v144 + 16);
    v158 = v212;
    v159 = v226;
    v160 = v220;
    v157(v212, v226, v220);
    v236 = v157;
    v157(v152, v159, v160);
    v161 = v152;
    v162 = v186;

    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 134218496;
      v166 = *(v162 + 16);

      *(v165 + 4) = v166;

      *(v165 + 12) = 2048;
      v167 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
      if ((v167 & 0xC000000000000001) != 0)
      {
        v168 = __CocoaSet.count.getter();
        v158 = v212;
      }

      else
      {
        v168 = *(v167 + 16);
      }

      v171 = v203;

      v172 = *(v144 + 8);
      Subtasks = (v144 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v238 = v172;
      (v172)(v158, v220);
      *(v165 + 14) = v168;
      *(v165 + 22) = 2048;
      v173 = v213;
      v174 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
      if ((v174 & 0xC000000000000001) != 0)
      {
        v175 = __CocoaSet.count.getter();
        v173 = v213;
      }

      else
      {
        v175 = *(v174 + 16);
      }

      v176 = v220;
      (v238)(v173, v220);
      *(v165 + 24) = v175;
      v170 = v176;
      _os_log_impl(&_mh_execute_header, v163, v164, "reminders %ld updated %ld inserted %ld", v165, 0x20u);
    }

    else
    {
      v169 = *(v144 + 8);
      Subtasks = (v144 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v169(v161, v160);
      v238 = v169;
      v169(v158, v160);

      swift_bridgeObjectRelease_n();
      v170 = v160;
      v171 = v203;
    }

    v177 = v207;
    v178 = v205;
    v179 = v214;
    v180 = v206;
    (*(v205 + 16))(v204, v214, v206);
    v181 = v226;
    v236(v171, v226, v170);
    v182 = v215;
    sub_100010364(v215, v177, &qword_100938A68, &unk_10079DDF0);
    REMRemindersListDataView.CustomSmartListInvocation.Result.init(model:diff:smartList:manualOrderingID:)();
    sub_1000050A4(v182, &qword_100938A68, &unk_10079DDF0);
    (*(v178 + 8))(v179, v180);
    (v238)(v181, v170);
    v140 = v225;
  }

  sub_1000050A4(v140, &qword_100938A70, &qword_1007ACC60);
}

uint64_t sub_1005B9F38()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DBD8);
  v1 = sub_100006654(v0, qword_10094DBD8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1005BA018(uint64_t a1)
{
  result = sub_1005BA040();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005BA040()
{
  result = qword_10094DC10;
  if (!qword_10094DC10)
  {
    type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094DC10);
  }

  return result;
}

void sub_1005BA098(void *a1, void *a2, id a3)
{
  v7 = REMSmartListTypeCustom;
  v8 = [a3 objectID];
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v9 = sub_100717244(v7, v8, a1, qword_1009752F0);

  if (v3)
  {
    return;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = v9;
  v11 = v9;
  v12 = sub_1000303FC(v10, a2);

  if (v12 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_11:

    v14 = a3;
    return;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_9:

    return;
  }

  __break(1u);
}

uint64_t sub_1005BA25C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DC18);
  v1 = sub_100006654(v0, qword_10094DC18);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005BA324()
{
  v0 = sub_10038D894(&off_1008DED10);
  result = swift_arrayDestroy();
  qword_10094DC30 = v0;
  return result;
}

uint64_t sub_1005BA370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v132 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v134 = &v127 - v11;
  __chkstk_darwin(v12);
  v14 = &v127 - v13;
  v143 = sub_10038E004(_swiftEmptyArrayStorage);
  v149 = a1;
  v150 = a2;
  v154 = 10;
  v155 = 0xE100000000000000;
  v15 = sub_10013BCF4();
  v16 = StringProtocol.components<A>(separatedBy:)();
  v137 = *(v16 + 16);
  if (!v137)
  {
    goto LABEL_125;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v135 = v16 + 32;
  v148 = (v7 + 8);
  v136 = &v152 + 1;
  v133 = a3 + 32;
  v129 = 0x80000001007FD7A0;
  v140 = a3;
  v21 = &type metadata for String;
  *&v17 = 136380675;
  v128 = v17;
  *&v17 = 136446210;
  v127 = v17;
  v141 = v6;
  v147 = v15;
  v131 = v16;
  while (1)
  {
    if (v20 >= *(v16 + 16))
    {
      goto LABEL_127;
    }

    v22 = (v135 + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {
      goto LABEL_5;
    }

    v154 = v24;
    v155 = v23;
    v152 = 0x88E2BFA3EF8F88E2;
    v153 = 0xA90000000000008FLL;

    v26 = StringProtocol.components<A>(separatedBy:)();
    if (*(v26 + 2) < 2uLL)
    {
      v138 = v26;

      v154 = v24;
      v155 = v23;
      v27 = v134;
      static CharacterSet.punctuationCharacters.getter();
      v28 = v132;
      static CharacterSet.whitespacesAndNewlines.getter();
      CharacterSet.union(_:)();
      v29 = *v148;
      (*v148)(v28, v6);
      v29(v27, v6);
      v18 = StringProtocol.trimmingCharacters(in:)();
      v19 = v30;
      v29(v14, v6);

      v154 = 0;
      v155 = 0xE000000000000000;

      _StringGuts.grow(_:)(45);

      v154 = 0xD00000000000002BLL;
      v155 = v129;
      v31._countAndFlagsBits = v18;
      v31._object = v19;
      String.append(_:)(v31);

      v33 = v154;
      v32 = v155;
      v34 = [objc_opt_self() daemonUserDefaults];
      LODWORD(v29) = [v34 isAutoCategorizationLoggingEnabled];

      if (v29)
      {
        if (qword_100936158 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_100006654(v35, qword_100947448);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v154 = v39;
          *v38 = v128;
          *(v38 + 4) = sub_10000668C(v33, v32, &v154);
          _os_log_impl(&_mh_execute_header, v36, v37, "%{private}s", v38, 0xCu);
          sub_10000607C(v39);
        }
      }

      else
      {
      }

      v6 = v141;
      v16 = v131;
      v21 = &type metadata for String;
      goto LABEL_5;
    }

    v40 = *(v26 + 4);
    v41 = *(v26 + 5);
    v42 = v26;

    v43 = *(v42 + 2);
    if (!v43)
    {
      goto LABEL_134;
    }

    v145 = v18;
    v44 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v42;
    v130 = v20;
    if (isUniquelyReferenced_nonNull_native && (v43 - 1) <= *(v42 + 3) >> 1)
    {
      v47 = v19;
    }

    else
    {
      v47 = v19;
      v46 = sub_100365788(isUniquelyReferenced_nonNull_native, v43, 1, v42);
    }

    v48 = v46;
    sub_100034610((v46 + 32));
    v49 = *(v48 + 2);
    memmove(v48 + 32, v48 + 48, 16 * v49 - 16);
    v138 = v48;
    *(v48 + 2) = v49 - 1;
    v152 = v40;
    v153 = v41;
    v50 = v134;
    static CharacterSet.punctuationCharacters.getter();
    v51 = v132;
    static CharacterSet.whitespacesAndNewlines.getter();
    CharacterSet.union(_:)();
    v52 = *v148;
    v53 = v51;
    v54 = v141;
    (*v148)(v53, v141);
    v52(v50, v54);
    v55 = StringProtocol.trimmingCharacters(in:)();
    v57 = v56;
    v146 = v52;
    v52(v14, v54);

    v154 = v55;
    v155 = v57;
    v58 = HIBYTE(v57) & 0xF;
    v139 = v55;
    v142 = v57;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v58 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v58)
    {
      goto LABEL_27;
    }

    if (v47)
    {
      swift_beginAccess();
      v154 = v145;
      v155 = v47;
      v142 = v47;
      v139 = v145;
LABEL_27:
      v6 = v141;

      goto LABEL_28;
    }

    v6 = v141;
LABEL_28:
    v21 = v44;
    if (qword_100936658 != -1)
    {
      swift_once();
    }

    v59 = qword_10094DC30;
    v60 = v142;

    LOBYTE(v59) = sub_100240BDC(v139, v60, v59);

    if (v59)
    {
      if (qword_100936650 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_100006654(v61, qword_10094DC18);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v152 = v65;
        *v64 = v127;
        v66 = v142;

        v67 = sub_10000668C(v139, v66, &v152);

        *(v64 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v62, v63, "RDAutoCategorizer exclude category: %{public}s", v64, 0xCu);
        sub_10000607C(v65);
      }

      goto LABEL_122;
    }

    if (!*(v138 + 2))
    {
      goto LABEL_135;
    }

    v68 = *(v138 + 5);
    v152 = *(v138 + 4);
    v153 = v68;

    static CharacterSet.decimalDigits.getter();
    v69 = v134;
    CharacterSet.inverted.getter();
    v70 = v146;
    v146(v14, v6);
    v71 = StringProtocol.components(separatedBy:)();
    v70(v69, v6);
    v72 = v71;

    v145 = *(v71 + 16);
    if (v145)
    {
      break;
    }

LABEL_120:

LABEL_122:
    v18 = 0;
    v19 = 0;
    v16 = v131;
    v20 = v130;
LABEL_5:
    if (++v20 == v137)
    {

LABEL_125:

      return v143;
    }
  }

  v73 = 0;
  v144 = v71 + 32;
  while (v73 < *(v72 + 16))
  {
    v74 = *(v144 + 16 * v73 + 8);
    v152 = *(v144 + 16 * v73);
    v153 = v74;

    static CharacterSet.whitespaces.getter();
    v75 = StringProtocol.trimmingCharacters(in:)();
    v77 = v76;
    v146(v14, v6);

    v78 = HIBYTE(v77) & 0xF;
    v79 = v75 & 0xFFFFFFFFFFFFLL;
    if ((v77 & 0x2000000000000000) != 0)
    {
      v80 = HIBYTE(v77) & 0xF;
    }

    else
    {
      v80 = v75 & 0xFFFFFFFFFFFFLL;
    }

    if (!v80)
    {

      goto LABEL_38;
    }

    if ((v77 & 0x1000000000000000) != 0)
    {
      v151 = 0;
      v83 = sub_1002F62B8(v75, v77, 10);
      v101 = v125;
      goto LABEL_102;
    }

    if ((v77 & 0x2000000000000000) != 0)
    {
      v152 = v75;
      v153 = v77 & 0xFFFFFFFFFFFFFFLL;
      if (v75 == 43)
      {
        if (!v78)
        {
          goto LABEL_129;
        }

        if (--v78)
        {
          v83 = 0;
          v93 = v136;
          while (1)
          {
            v94 = *v93 - 48;
            if (v94 > 9)
            {
              break;
            }

            v95 = 10 * v83;
            if ((v83 * 10) >> 64 != (10 * v83) >> 63)
            {
              break;
            }

            v83 = v95 + v94;
            if (__OFADD__(v95, v94))
            {
              break;
            }

            ++v93;
            if (!--v78)
            {
              goto LABEL_101;
            }
          }
        }
      }

      else if (v75 == 45)
      {
        if (!v78)
        {
          goto LABEL_131;
        }

        if (--v78)
        {
          v83 = 0;
          v87 = v136;
          while (1)
          {
            v88 = *v87 - 48;
            if (v88 > 9)
            {
              break;
            }

            v89 = 10 * v83;
            if ((v83 * 10) >> 64 != (10 * v83) >> 63)
            {
              break;
            }

            v83 = v89 - v88;
            if (__OFSUB__(v89, v88))
            {
              break;
            }

            ++v87;
            if (!--v78)
            {
              goto LABEL_101;
            }
          }
        }
      }

      else if (v78)
      {
        v83 = 0;
        v98 = &v152;
        while (1)
        {
          v99 = *v98 - 48;
          if (v99 > 9)
          {
            break;
          }

          v100 = 10 * v83;
          if ((v83 * 10) >> 64 != (10 * v83) >> 63)
          {
            break;
          }

          v83 = v100 + v99;
          if (__OFADD__(v100, v99))
          {
            break;
          }

          v98 = (v98 + 1);
          if (!--v78)
          {
            goto LABEL_101;
          }
        }
      }

      goto LABEL_100;
    }

    if ((v75 & 0x1000000000000000) != 0)
    {
      v81 = ((v77 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v81 = _StringObject.sharedUTF8.getter();
    }

    v82 = *v81;
    if (v82 == 43)
    {
      if (v79 < 1)
      {
        goto LABEL_130;
      }

      v78 = v79 - 1;
      if (v79 == 1)
      {
        goto LABEL_100;
      }

      v83 = 0;
      if (v81)
      {
        v90 = v81 + 1;
        while (1)
        {
          v91 = *v90 - 48;
          if (v91 > 9)
          {
            goto LABEL_100;
          }

          v92 = 10 * v83;
          if ((v83 * 10) >> 64 != (10 * v83) >> 63)
          {
            goto LABEL_100;
          }

          v83 = v92 + v91;
          if (__OFADD__(v92, v91))
          {
            goto LABEL_100;
          }

          ++v90;
          if (!--v78)
          {
            goto LABEL_101;
          }
        }
      }
    }

    else if (v82 == 45)
    {
      if (v79 < 1)
      {
        goto LABEL_132;
      }

      v78 = v79 - 1;
      if (v79 == 1)
      {
        goto LABEL_100;
      }

      v83 = 0;
      if (v81)
      {
        v84 = v81 + 1;
        while (1)
        {
          v85 = *v84 - 48;
          if (v85 > 9)
          {
            break;
          }

          v86 = 10 * v83;
          if ((v83 * 10) >> 64 != (10 * v83) >> 63)
          {
            break;
          }

          v83 = v86 - v85;
          if (__OFSUB__(v86, v85))
          {
            break;
          }

          ++v84;
          if (!--v78)
          {
            goto LABEL_101;
          }
        }

LABEL_100:
        v83 = 0;
        LOBYTE(v78) = 1;
        goto LABEL_101;
      }
    }

    else
    {
      if (!v79)
      {
        goto LABEL_100;
      }

      v83 = 0;
      if (v81)
      {
        do
        {
          v96 = *v81 - 48;
          if (v96 > 9)
          {
            goto LABEL_100;
          }

          v97 = 10 * v83;
          if ((v83 * 10) >> 64 != (10 * v83) >> 63)
          {
            goto LABEL_100;
          }

          v83 = v97 + v96;
          if (__OFADD__(v97, v96))
          {
            goto LABEL_100;
          }

          ++v81;
        }

        while (--v79);
      }
    }

    LOBYTE(v78) = 0;
LABEL_101:
    v151 = v78;
    v101 = v78;
LABEL_102:

    if ((v101 & 1) != 0 || v83 < 0 || v83 >= *(v140 + 16))
    {
      goto LABEL_38;
    }

    v102 = (v133 + 16 * v83);
    v104 = *v102;
    v103 = v102[1];

    v105 = v143;
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v105;
    v108 = sub_100005F4C(v104, v103);
    v109 = *(v105 + 16);
    v110 = (v107 & 1) == 0;
    v111 = v109 + v110;
    if (__OFADD__(v109, v110))
    {
      goto LABEL_128;
    }

    v112 = v107;
    if (*(v143 + 24) >= v111)
    {
      if (v106)
      {
        if ((v107 & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        sub_100373664();
        if ((v112 & 1) == 0)
        {
          goto LABEL_109;
        }
      }
    }

    else
    {
      sub_10036A8F0(v111, v106);
      v113 = sub_100005F4C(v104, v103);
      if ((v112 & 1) != (v114 & 1))
      {
        goto LABEL_136;
      }

      v108 = v113;
      if ((v112 & 1) == 0)
      {
LABEL_109:
        v115 = v152;
        v152[(v108 >> 6) + 8] |= 1 << v108;
        v116 = (v115[6] + 16 * v108);
        *v116 = v104;
        v116[1] = v103;
        v117 = (v115[7] + 16 * v108);
        v118 = v142;
        *v117 = v139;
        v117[1] = v118;
        v143 = v115;
        v119 = v115[2];
        v120 = __OFADD__(v119, 1);
        v121 = v119 + 1;
        if (v120)
        {
          goto LABEL_133;
        }

        *(v143 + 16) = v121;
        goto LABEL_114;
      }
    }

    v143 = v152;
    v122 = (v152[7] + 16 * v108);
    v123 = v122[1];
    v124 = v142;
    *v122 = v139;
    v122[1] = v124;

LABEL_114:
    v6 = v141;
    v21 = &type metadata for String;
LABEL_38:
    if (++v73 == v145)
    {
      goto LABEL_120;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005BB184()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DC40);
  v1 = sub_100006654(v0, qword_10094DC40);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDSavedAttachment.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDSavedAttachment.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v10)
  {
    v11 = [a2 ckIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = v10;
      [v16 setAccount:a2];
      v17._countAndFlagsBits = v13;
      v17._object = v15;
      REMCDSavedAttachment.mergeData(from:accountID:)(a1, v17);

      [v16 setCkServerRecord:a1];
      [v16 setInCloud:1];

      [v16 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100936660 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006654(v18, qword_10094DC40);
      v19 = a2;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v4;
        *v22 = 136446466;
        swift_getMetatypeMetadata();
        v23 = String.init<A>(describing:)();
        v25 = sub_10000668C(v23, v24, &v34);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2082;
        v26 = [v19 remObjectID];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 description];

          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;
        }

        else
        {
          v31 = 0xE300000000000000;
          v29 = 7104878;
        }

        v32 = sub_10000668C(v29, v31, &v34);

        *(v22 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v20, v21, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v22, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v10;
}

Swift::Void __swiftcall REMCDSavedAttachment.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v46 - v15;
  v17 = String._bridgeToObjectiveC()();
  v54.receiver = v2;
  v54.super_class = ObjectType;
  objc_msgSendSuper2(&v54, "mergeDataFromRecord:accountID:", from.super.isa, v17);

  v18 = [(objc_class *)from.super.isa recordID];
  v19 = [v18 recordName];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v48 = v12;
  v49 = v7;
  v50 = v6;
  v20 = [v3 ckIdentifierFromRecordName:v19];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [v3 setCkIdentifier:v20];

  v21 = 0;
  v51 = "LinkUpdateRequestDate";
  v22 = &type metadata for String;
  do
  {
    v23 = *(&off_1008E4030 + v21 + 32);
    if (v23 > 4)
    {
      if (v23 == 5)
      {
        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v29 = swift_dynamicCastObjCClass();
          if (!v29)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = sub_100128EF4(v29);

        if (v30)
        {
          type metadata accessor for REMCDSavedReminder();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
          }
        }

        else
        {
          v31 = 0;
        }

        [v3 setReminder:v31];
      }

      else
      {
        if (v23 == 6)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          if (*(&v53 + 1))
          {
            v28 = String._bridgeToObjectiveC()();
          }

          else
          {
            v28 = 0;
          }

          [v3 setAttachmentTypeRawValue:v28];
        }

        else
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          if (*(&v53 + 1))
          {
            v28 = String._bridgeToObjectiveC()();
          }

          else
          {
            v28 = 0;
          }

          [v3 setUti:v28];
        }
      }
    }

    else if (v23 >= 2 && v23 - 3 >= 2)
    {
      v24 = v22;
      sub_10018E134();
      v25 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v26 = *(v25 - 8);
      isa = 0;
      if ((*(v26 + 48))(v16, 1, v25) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v26 + 8))(v16, v25);
      }

      [v3 setLastModifiedDate:isa];

      v22 = v24;
    }

    ++v21;
  }

  while (v21 != 8);
  sub_1004DD52C(from.super.isa, 0x617461646174654DLL, 1, &v53);
  v32 = *(&v53 + 1);
  if (*(&v53 + 1) >> 60 == 15)
  {
    v33 = 0;
  }

  else
  {
    v34 = v53;
    v33 = Data._bridgeToObjectiveC()().super.isa;
    sub_100031A14(v34, v32);
  }

  v35 = v50;
  [v3 setMetadata:v33];

  v36 = [(objc_class *)from.super.isa encryptedValues];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 objectForKeyedSubscript:v37];
  swift_unknownObjectRelease();

  if (v38)
  {
    v52 = v38;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    if (swift_dynamicCast())
    {
      v39 = v53;
      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (!v40)
        {
LABEL_44:

          swift_unknownObjectRelease();
          return;
        }

        v41 = [v40 fileURL];
        if (v41)
        {
          v42 = v47;
          v43 = v41;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v45 = v48;
          v44 = v49;
          (*(v49 + 32))(v48, v42, v35);
          sub_1006D8A50(v45, v39, *(&v39 + 1), 0);
          (*(v44 + 8))(v45, v35);
          goto LABEL_44;
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::String __swiftcall REMCDSavedAttachment.recordType()()
{
  v0 = 0x7474416465766153;
  v1 = 0xEF746E656D686361;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CKRecord_optional __swiftcall REMCDSavedAttachment.newlyCreatedRecord()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v114 - v8;
  v10 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v114 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  *&v17 = __chkstk_darwin(v14).n128_u64[0];
  v119 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132.receiver = v1;
  v132.super_class = ObjectType;
  v128 = objc_msgSendSuper2(&v132, "newlyCreatedRecord", v17);
  if (!v128)
  {
    v128 = 0;
    goto LABEL_80;
  }

  v21 = 0;
  v127 = 0;
  v125 = "LinkUpdateRequestDate";
  v121 = (v15 + 48);
  v122 = v14;
  v117 = (v15 + 32);
  v116 = (v15 + 8);
  *&v20 = 136446466;
  v118 = v20;
  *&v20 = 136446210;
  v120 = v20;
  v123 = v9;
  v124 = v6;
  v126 = v13;
  do
  {
    v23 = *(&off_1008E4030 + v21 + 32);
    if (v23 <= 2)
    {
      if (*(&off_1008E4030 + v21 + 32))
      {
        if (v23 != 1)
        {
          v60 = [v1 lastModifiedDate];
          if (v60)
          {
            v61 = v60;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v62 = 0;
          }

          else
          {
            v62 = 1;
          }

          v68 = type metadata accessor for Date();
          v69 = *(v68 - 8);
          (*(v69 + 56))(v6, v62, 1, v68);
          sub_10012F7FC(v6, v9);
          if ((*(v69 + 48))(v9, 1, v68) == 1)
          {
            sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
            v129 = 0u;
            v130 = 0u;
            v131 = 0;
          }

          else
          {
            *(&v130 + 1) = v68;
            v131 = &protocol witness table for Date;
            v22 = sub_1000103CC(&v129);
            (*(v69 + 32))(v22, v9, v68);
          }

          goto LABEL_4;
        }

        v37 = [v128 encryptedValues];
        v38 = [v1 fileName];
        if (v38)
        {
          v39 = v38;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          *(&v130 + 1) = &type metadata for String;
          v131 = &protocol witness table for String;
          *&v129 = v40;
          *(&v129 + 1) = v42;
          v13 = v126;
        }

        else
        {
          v131 = 0;
          v129 = 0u;
          v130 = 0u;
        }

        swift_getObjectType();
        CKRecordKeyValueSetting.subscript.setter();
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = v127;
        sub_1006D923C(v13);
        if (v48)
        {
          if (qword_100936660 != -1)
          {
            swift_once();
          }

          v127 = 0;
          v49 = type metadata accessor for Logger();
          sub_100006654(v49, qword_10094DC40);
          v50 = v1;
          swift_errorRetain();
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *&v129 = swift_slowAlloc();
            *v53 = v118;
            v54 = [v50 remObjectID];
            if (v54)
            {
              v55 = v54;
              v56 = [v54 description];

              v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v59 = v58;
            }

            else
            {
              v59 = 0xE300000000000000;
              v57 = 7104878;
            }

            v87 = sub_10000668C(v57, v59, &v129);

            *(v53 + 4) = v87;
            *(v53 + 12) = 2082;
            swift_getErrorValue();
            v88 = Error.rem_errorDescription.getter();
            v90 = sub_10000668C(v88, v89, &v129);

            *(v53 + 14) = v90;
            _os_log_impl(&_mh_execute_header, v51, v52, "REMCDSavedAttachment+CloudKit: newlyCreatedRecord() Failed to compute file URL {savedAttachment: %{public}s, error: %{public}s}", v53, 0x16u);
            swift_arrayDestroy();

            v9 = v123;
            v6 = v124;
            v13 = v126;
          }

          else
          {

            v9 = v123;
            v6 = v124;
          }
        }

        else
        {
          v67 = v122;
          if ((*v121)(v13, 1, v122) == 1)
          {
            sub_1000050A4(v13, &unk_1009441F0, &qword_100795760);
          }

          else
          {
            v82 = v119;
            (*v117)(v119, v13, v67);
            v83 = objc_allocWithZone(CKAsset);
            URL._bridgeToObjectiveC()(v84);
            v86 = v85;
            [v83 initWithFileURL:v85];

            CKRecord.subscript.setter();
            (*v116)(v82, v67);
          }

          v127 = 0;
        }
      }
    }

    else
    {
      if (*(&off_1008E4030 + v21 + 32) > 5u)
      {
        if (v23 == 6)
        {
          v43 = [v1 attachmentTypeRawValue];
          if (v43)
          {
            goto LABEL_21;
          }

          v131 = 0;
          v129 = 0u;
          v130 = 0u;
        }

        else
        {
          v43 = [v1 uti];
          if (v43)
          {
LABEL_21:
            v44 = v43;
            v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            *(&v130 + 1) = &type metadata for String;
            v131 = &protocol witness table for String;
            *&v129 = v45;
            *(&v129 + 1) = v47;
          }

          else
          {
            v131 = 0;
            v129 = 0u;
            v130 = 0u;
          }
        }

LABEL_4:
        sub_10018E134();
        CKRecordKeyValueSetting.subscript.setter();
        goto LABEL_5;
      }

      if (v23 - 3 >= 2)
      {
        if ([v1 markedForDeletion])
        {
          if (qword_100936660 != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          sub_100006654(v24, qword_10094DC40);
          v25 = v1;
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *&v129 = v29;
            *v28 = v120;
            v30 = [v25 remObjectID];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 description];
              v115 = v1;
              v33 = v32;

              v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v36 = v35;

              v1 = v115;
            }

            else
            {
              v36 = 0xE300000000000000;
              v34 = 7104878;
            }

            v91 = sub_10000668C(v34, v36, &v129);

            *(v28 + 4) = v91;
            _os_log_impl(&_mh_execute_header, v26, v27, "REMCDSavedAttachment+CloudKit: newlyCreatedRecord() (key=.savedReminder) unsetting savedReminder CK reference as the saved attachment is markedForDeletion {savedAttachment: %{public}s}", v28, 0xCu);
            sub_10000607C(v29);

            v9 = v123;
            v6 = v124;
            v13 = v126;
          }

          else
          {
          }

          CKRecord.subscript.setter();
        }

        else
        {
          v63 = [v1 reminder];
          if (v63)
          {
            v64 = v63;
            v65 = [v63 recordID];
            v66 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v65];

            CKRecord.subscript.setter();
          }

          else
          {
            if (qword_100936660 != -1)
            {
              swift_once();
            }

            v70 = type metadata accessor for Logger();
            sub_100006654(v70, qword_10094DC40);
            v71 = v1;
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              *&v129 = v75;
              *v74 = v120;
              v76 = [v71 remObjectID];
              if (v76)
              {
                v77 = v76;
                v78 = [v76 description];

                v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v81 = v80;
              }

              else
              {
                v81 = 0xE300000000000000;
                v79 = 7104878;
              }

              v92 = sub_10000668C(v79, v81, &v129);

              *(v74 + 4) = v92;
              _os_log_impl(&_mh_execute_header, v72, v73, "REMCDSavedAttachment+CloudKit: Unexpectedly got cdSavedAttachment.reminder == nil in newlyCreatedRecord() (key=.savedReminder) {savedAttachment: %{public}s}", v74, 0xCu);
              sub_10000607C(v75);

              v9 = v123;
              v6 = v124;
              v13 = v126;
            }

            else
            {
            }
          }
        }
      }
    }

LABEL_5:
    ++v21;
  }

  while (v21 != 8);
  v93 = [v1 metadata];
  if (!v93)
  {
    v95 = 0;
    v97 = 0xF000000000000000;
    goto LABEL_76;
  }

  v94 = v93;
  v95 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v96;

  v99 = v97 >> 62;
  if ((v97 >> 62) > 1)
  {
    if (v99 != 2)
    {
      v100 = 0;
      goto LABEL_73;
    }

    v102 = *(v95 + 16);
    v101 = *(v95 + 24);
    v100 = v101 - v102;
    if (!__OFSUB__(v101, v102))
    {
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v99)
  {
LABEL_70:
    if (!__OFSUB__(HIDWORD(v95), v95))
    {
      v100 = HIDWORD(v95) - v95;
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_82;
  }

  v100 = BYTE6(v97);
LABEL_73:
  v103 = [objc_opt_self() sharedConfiguration];
  v104 = [v103 maxInlineAssetSizeBytes];

  if (v100 >= 1 && v104 < v100)
  {
    v105 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v107 = [v105 assetForData:isa];

    CKRecord.subscript.setter();
    CKRecord.subscript.setter();
    sub_10001BBA0(v95, v97);
    goto LABEL_80;
  }

LABEL_76:
  v108 = v128;
  CKRecord.subscript.setter();
  v109 = [v108 encryptedValues];
  if (v97 >> 60 == 15)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    *&v130 = 0;
  }

  else
  {
    v113 = &protocol witness table for Data;
    v112 = &type metadata for Data;
    v110 = v95;
    v111 = v97;
  }

  *&v129 = v110;
  *(&v129 + 1) = v111;
  *(&v130 + 1) = v112;
  v131 = v113;
  swift_getObjectType();
  sub_1001CB4B8(v95, v97);
  CKRecordKeyValueSetting.subscript.setter();
  sub_100031A14(v95, v97);
  swift_unknownObjectRelease();
LABEL_80:
  v98 = v128;
LABEL_82:
  result.value.super.isa = v98;
  result.is_nil = v19;
  return result;
}

Swift::Void __swiftcall REMCDSavedAttachment.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100936660 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094DC40);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A48, &qword_1007A9358);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

Swift::Void __swiftcall REMCDSavedAttachment.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100936660 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_10094DC40);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v45 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v47);

  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v16 = [v4 reminder];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 remObjectID];
  if (!v18)
  {

LABEL_12:
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

LABEL_13:
  v23 = sub_10000668C(v7, v22, &v47);

  *(v8 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for saved attachment {savedAttachmentID: %{public}s, savedReminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v24 = [v4 reminder];
  if (v24)
  {
    v46 = v24;
    if ([v24 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v25 = v4;
      v26 = v46;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v29 = 136446466;
        v30 = &selRef_persistentStoreForIdentifier_;
        v31 = [v25 remObjectID];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 description];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v30 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v36 = 0xE300000000000000;
          v34 = 7104878;
        }

        v37 = sub_10000668C(v34, v36, &v47);

        *(v29 + 4) = v37;
        *(v29 + 12) = 2082;
        v38 = [v26 v30[106]];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 description];

          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v43 = 0xE300000000000000;
          v41 = 7104878;
        }

        v44 = sub_10000668C(v41, v43, &v47);

        *(v29 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v27, v28, "Saved reminder is marked for deletion but saved attachment is not {savedAttachmentID: %{public}s, savedReminderID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();
      }

      [v25 markForDeletion];
    }

    [v46 forcePushToCloud];
  }
}

uint64_t _s7remindd20REMCDSavedAttachmentC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100936660 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094DC40);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A48, &qword_1007A9358);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s7remindd20REMCDSavedAttachmentC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100936660 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094DC40);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A48, &qword_1007A9358);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_1005BDBEC(void *a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v38 - v6;
  v39 = _swiftEmptyArrayStorage;
  v8 = a2 >> 5;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        sub_1000F5104(&unk_10094EC90, &unk_1007B38E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100791340;
        KeyPath = swift_getKeyPath();
        v11 = sub_100392308(KeyPath, 1701603686, 0xE400000000000000);

        *(inited + 32) = v11;
        v12 = swift_getKeyPath();
        v13 = sub_100392308(v12, 0x6567616D69, 0xE500000000000000);

        *(inited + 40) = v13;
        sub_100025060(inited);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v39[2] >= v39[3] >> 1)
        {
          v36 = v39[2];
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = swift_getKeyPath();
        v15 = [a1 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = type metadata accessor for UUID();
        (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
        sub_10039231C(v14, v7);
      }

      else
      {
        sub_1000F5104(&unk_10094EC90, &unk_1007B38E0);
        v20 = swift_initStackObject();
        *(v20 + 16) = xmmword_100791340;
        v21 = swift_getKeyPath();
        v22 = sub_100392308(v21, 1701603686, 0xE400000000000000);

        *(v20 + 32) = v22;
        v23 = swift_getKeyPath();
        v24 = sub_100392308(v23, 0x6567616D69, 0xE500000000000000);

        *(v20 + 40) = v24;
        sub_100025060(v20);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v39[2] >= v39[3] >> 1)
        {
          v37 = v39[2];
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v25 = swift_getKeyPath();
        v26 = sub_10004FAEC(a1);
        sub_1003EF6C8(v25, v26);
      }

      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (a2 >> 5)
  {
LABEL_14:
    v27 = a2 & 0x1F;
    v28 = swift_getKeyPath();
    v29 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = type metadata accessor for UUID();
    (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
    sub_10039231C(v28, v7);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v39[2] >= v39[3] >> 1)
    {
      v35 = v39[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v31 = swift_getKeyPath();
    sub_100392308(v31, qword_1007B3AB0[v27], (v27 << 56) - 0x1D00000000000000);
    goto LABEL_17;
  }

  v17 = swift_getKeyPath();
  v18 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  sub_10039231C(v17, v7);
LABEL_17:

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v39[2] >= v39[3] >> 1)
  {
    v34 = v39[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10001035C(0);
LABEL_20:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v39[2] >= v39[3] >> 1)
  {
    v33 = v39[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0(v39);
}

void sub_1005BE168(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

void sub_1005BE2A4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 attachmentTypeRawValue];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1005BE30C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setAttachmentTypeRawValue:?];
}

uint64_t sub_1005BE37C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_10012DF40();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100975298 = v0;
  return result;
}

void sub_1005BE3F4(uint64_t a1, void **a2)
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

  [v8 setLastModifiedDate:isa];
}

void *sub_1005BE53C()
{
  sub_100026EF4(0, 5, 0);
  result = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 0xD000000000000016;
  v4[5] = 0x80000001007B38D0;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_100026EF4((v5 > 1), v6, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = 0x656D614E656C6966;
  v7[5] = 0xE800000000000000;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100026EF4((v8 > 1), v9 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v10;
  v11 = &_swiftEmptyArrayStorage[2 * v9];
  v11[4] = 0x696669746E656469;
  v11[5] = 0xEA00000000007265;
  v12 = _swiftEmptyArrayStorage[3];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v13;
  v14 = &_swiftEmptyArrayStorage[2 * v10];
  v14[4] = 0x617461646174656DLL;
  v14[5] = 0xE800000000000000;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_100026EF4((v15 > 1), v16 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = 6911093;
  v17[5] = 0xE300000000000000;
  return result;
}

uint64_t sub_1005BE9A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DC58);
  v1 = sub_100006654(v0, qword_10094DC58);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005BEA68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v19 - v9;
  v11 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.list.getter();
  REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.completedBeforeDate.getter();
  v16 = sub_1005BEC40(a2, v10);
  if (v4)
  {
    sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    v18 = v16;
    sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
    (*(v12 + 8))(v15, v11);
    sub_1005C2B64(v18, a4);

    return REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.init(deletedReminderIDs:accounts:)();
  }
}

uint64_t sub_1005BEC40(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s10PredicatesOMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005C1778(v9, a1, a2);
  if (v2)
  {
    return v3;
  }

  v11 = v10;
  v48 = 0;
  v12 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v47[2] = qword_100974E30;
    v13 = sub_100043AA8();
    v14 = [objc_allocWithZone(NSFetchRequest) init];
    v47[3] = v12;
    v15 = [swift_getObjCClassFromMetadata() entity];
    [v14 setEntity:v15];

    [v14 setAffectedStores:0];
    [v14 setPredicate:v13];

    [v14 setFetchLimit:0];
    [v14 setFetchOffset:0];
    v57 = v11;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v17 = Predicate;
    v18 = _swiftEmptyArrayStorage;
    v60 = _swiftEmptyArrayStorage;
    v19 = *(v11 + 16);
    v51 = v9;
    v52 = v14;
    v49 = v11;
    v50 = a1;
    if (!v19)
    {
      v28 = _swiftEmptyArrayStorage;
      if (!_swiftEmptyArrayStorage[2])
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v20 = sub_100235F88(Predicate);
    v21 = sub_100277CC0(v20);

    v47[0] = v17;

    v12 = *(v21 + 16);
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_7:
    v59 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_52;
    }

    v9 = 0;
    v22 = v59;
    v53 = v12;
    v54 = v21 & 0xC000000000000001;
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v54)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v21 + 16))
        {
          goto LABEL_22;
        }

        v18 = *(v21 + 8 * v9 + 32);
      }

      v23 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v24)
      {
        goto LABEL_53;
      }

      v12 = v23;
      a1 = v24;

      v59 = v22;
      v26 = v22[2];
      v25 = v22[3];
      if (v26 >= v25 >> 1)
      {
        sub_100026EF4((v25 > 1), v26 + 1, 1);
        v22 = v59;
      }

      v22[2] = v26 + 1;
      v27 = &v22[2 * v26];
      v27[4] = v12;
      v27[5] = a1;
      ++v9;
      if (v11 == v53)
      {

        v9 = v51;
        v11 = v49;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_25:

  v22 = _swiftEmptyArrayStorage;
LABEL_26:
  sub_100271EA8(v22);
  v28 = v60;
  v14 = v52;
  v18 = _swiftEmptyArrayStorage;
  v17 = v47[0];
  if (v60[2])
  {
LABEL_27:
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    v28 = v60;
    sub_10003450C(v60);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setPropertiesToFetch:isa];
  }

LABEL_28:
  v47[1] = v28;
  v55 = sub_1003EBAD0();
  sub_100271EA8(&off_1008DD4D8);
  v30 = sub_100235FA0(v17);

  v31 = sub_100277CC0(v30);

  if ((v31 & 0x8000000000000000) != 0 || (v31 & 0x4000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v32 = *(v31 + 16);
  if (!v32)
  {
LABEL_46:

    v33 = _swiftEmptyArrayStorage;
LABEL_47:
    sub_100271EA8(v33);
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    v41 = Array._bridgeToObjectiveC()().super.isa;

    v42 = v52;
    [v52 setRelationshipKeyPathsForPrefetching:v41];

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v3 = Array._bridgeToObjectiveC()().super.isa;
    [v42 setSortDescriptors:v3];

    v43 = v48;
    v44 = NSManagedObjectContext.fetch<A>(_:)();
    if (!v43)
    {
      v3 = sub_100155C54(v11, _swiftEmptySetSingleton, v44);
    }

    sub_1004258C8(v9, _s10PredicatesOMa);
    return v3;
  }

  while (1)
  {
    v59 = v18;
    sub_100026EF4(0, v32 & ~(v32 >> 63), 0);
    if (v32 < 0)
    {
      break;
    }

    v9 = 0;
    v33 = v59;
    v53 = v32;
    v54 = v31 & 0xC000000000000001;
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v54)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v31 + 16))
        {
          goto LABEL_44;
        }

        v18 = *(v31 + 8 * v9 + 32);
      }

      v34 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v35)
      {
        goto LABEL_53;
      }

      v36 = v34;
      v37 = v35;

      v59 = v33;
      v39 = v33[2];
      v38 = v33[3];
      v18 = (v39 + 1);
      if (v39 >= v38 >> 1)
      {
        sub_100026EF4((v38 > 1), v39 + 1, 1);
        v33 = v59;
      }

      v33[2] = v18;
      v40 = &v33[2 * v39];
      v40[4] = v36;
      v40[5] = v37;
      ++v9;
      if (v11 == v53)
      {

        v9 = v51;
        v11 = v49;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (!v32)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v46._object = 0x80000001007EC120;
  v46._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v46);
  v56 = v18;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005BF3E4(uint64_t a1)
{
  result = sub_1005C04F0(&qword_10094DC90, &type metadata accessor for REMRemindersListBatchDeleteInvocation.CountInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005BF43C@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v36 = a2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.list.getter();
  REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.completedBeforeDate.getter();
  v15 = sub_1005BEC40(a1, v9);
  if (v3)
  {
    sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
    return (*(v11 + 8))(v14, v10);
  }

  v17 = v15;
  v35 = a3;
  sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
  (*(v11 + 8))(v14, v10);
  v18 = sub_1005C2B64(v17, v36);
  v36 = v19;
  type metadata accessor for ReminderIDsMergeableOrderingHelper();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  *(inited + 24) = _swiftEmptyArrayStorage;
  v34 = inited;
  sub_1005C3014(v17, v18, inited, v21);
  v22 = [objc_allocWithZone(NSMutableDictionary) init];
  v33 = a1;
  if (v17 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (v23)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_5:
      if (v23 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v23; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(v17 + 8 * i + 32);
        }

        v26 = v25;
        [v25 updateDeletedFlagAccordingToOrphanState:{v22, v33}];
      }
    }
  }

  sub_100393DD8(v18);
  v27 = v34;
  sub_1005BF7F8(v28);

  sub_1005BFAC0();
  v37 = 0;
  if ([v33 save:&v37])
  {
    v29 = v37;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.init(deletedReminderIDs:accounts:)();
  }

  else
  {
    v30 = v37;

    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_setDeallocating();
  v31 = *(v27 + 16);

  v32 = *(v27 + 24);
}

uint64_t sub_1005BF7F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a1 & 0xC000000000000001;
  v10 = *(v1 + 16);

  v12 = 0;
  v31 = a1 & 0xC000000000000001;
  while (v7)
  {
LABEL_12:
    v15 = *(v3 + 56);
    v16 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v17 = *(v15 + v16);
    if (v9)
    {
      v18 = *(v15 + v16);

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *(a1 + 16);
      v20 = *(v15 + v16);

      if (!v19)
      {
        goto LABEL_6;
      }
    }

    v21 = sub_1005C27D8();
    if (v21)
    {
      v22 = v21;
      v30 = [v21 count];
      sub_100395080(a1);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v22 minusSet:isa];

      if (qword_100936670 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_10094DC58);
      v25 = v22;
      v13 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v26))
      {
        v29 = v3;
        v27 = a1;
        v28 = swift_slowAlloc();
        *v28 = 134218240;
        *(v28 + 4) = v30;
        *(v28 + 12) = 2048;
        *(v28 + 14) = [v25 count];

        _os_log_impl(&_mh_execute_header, v13, v26, "ReminderIDsMergeableOrderingHelper orderedSet count: %ld -> %ld", v28, 0x16u);
        a1 = v27;
        v3 = v29;
      }

      else
      {

        v13 = v25;
      }

      v9 = v31;

      *(v17 + 16) = 1;
    }

LABEL_6:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v8)
    {
    }

    v7 = *(v4 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005BFAC0()
{
  v2 = v1;
  v31 = type metadata accessor for UUID();
  v3 = *(v31 - 8);
  v4 = v3[8];
  __chkstk_darwin(v31);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  result = swift_beginAccess();
  v29 = v0;
  v10 = *(v0 + 24);
  if (v10 >> 62)
  {
    goto LABEL_23;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    do
    {
      v30 = v10 & 0xC000000000000001;
      v25 = v10 & 0xFFFFFFFFFFFFFF8;
      v26 = v2;
      v12 = (v3 + 4);
      v27 = (v3 + 1);

      for (i = 0; ; ++i)
      {
        if (v30)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v25 + 16))
          {
            goto LABEL_22;
          }

          v14 = *(v10 + 8 * i + 32);
        }

        v3 = v14;
        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v15 = [v14 identifier];
        if (v15)
        {
          v16 = v11;
          v17 = v28;
          v18 = v15;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v12)(v8, v17, v31);
          v19 = v29;
          swift_beginAccess();
          v20 = *(v19 + 16);
          if (*(v20 + 16) && (v21 = sub_100363F20(v8), (v22 & 1) != 0))
          {
            v23 = *(*(v20 + 56) + 8 * v21);
            swift_endAccess();

            v24 = v26;
            sub_1005C3B30(v3, v23);
            v26 = v24;
            if (v24)
            {
              (*v27)(v8, v31);
            }

            (*v27)(v8, v31);
          }

          else
          {
            swift_endAccess();

            (*v27)(v8, v31);
          }

          v11 = v16;
        }

        else
        {
        }

        if (v2 == v11)
        {
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = _CocoaArrayWrapper.endIndex.getter();
      v11 = result;
    }

    while (result);
  }

  return result;
}

id sub_1005BFDC4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v26 - v11;
  result = [a1 identifier];
  if (result)
  {
    v14 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v12, v8, v4);
    swift_beginAccess();
    if (*(*(v2 + 16) + 16) && (sub_100363F20(v12), (v15 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v16 = [a1 reminderIDsMergeableOrdering];
      if (v16)
      {
        v17 = v16;
        v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xF000000000000000;
      }

      type metadata accessor for ReminderIDsMergeableOrdering();
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 32) = v20;
      *(v21 + 40) = 1;
      *(v21 + 24) = v18;
      swift_beginAccess();

      v22 = *(v2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v2 + 16);
      *(v2 + 16) = 0x8000000000000000;
      sub_1002C7B28(v21, v12, isUniquelyReferenced_nonNull_native);
      *(v2 + 16) = v26;
      swift_endAccess();
      swift_beginAccess();
      v24 = a1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    return (*(v5 + 8))(v12, v4);
  }

  return result;
}

uint64_t sub_1005C007C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v19 - v10;
  v12 = [a1 identifier];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(v11, v7, v3);
  swift_beginAccess();
  v14 = *(v1 + 16);
  if (*(v14 + 16) && (v15 = sub_100363F20(v11), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
  }

  else
  {
    v17 = 0;
  }

  swift_endAccess();
  (*(v4 + 8))(v11, v3);
  return v17;
}

void sub_1005C0208(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  v12 = sub_1005C27D8();
  if (!v12)
  {
    return;
  }

  v26 = v12;
  v13 = [v12 indexOfObject:a2];
  if (v13 != NSNotFound.getter())
  {
    v25 = v7;
    IndexSet.init()();
    if (v11 < 1)
    {
      __break(1u);
    }

    else
    {
      v24 = v13;
      for (i = 0; i != v11; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v16 = *(a1 + 8 * i + 32);
        }

        v17 = v16;
        v18 = [v26 indexOfObject:v16];
        if (v18 != NSNotFound.getter())
        {
          IndexSet.insert(_:)(v18);
        }
      }

      if (IndexSet.isEmpty.getter())
      {
        (*(v25 + 8))(v10, v6);

        return;
      }

      IndexSet._bridgeToObjectiveC()(v19);
      v21 = v25;
      if (!__OFADD__(v24, 1))
      {
        v22 = v20;
        [v26 moveObjectsAtIndexes:v20 toIndex:v24 + 1];

        (*(v21 + 8))(v10, v6);
        *(v3 + 16) = 257;
        return;
      }
    }

    __break(1u);
    return;
  }

  v14 = v26;
}

uint64_t sub_1005C0498(uint64_t a1)
{
  result = sub_1005C04F0(&qword_10094DCB8, &type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005C04F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005C0538(unsigned int (**a1)(uint64_t, uint64_t, id)@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  *&v145 = a2;
  v134 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v137 = v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v132 = v127 - v9;
  __chkstk_darwin(v10);
  v139 = v127 - v11;
  v12 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v140 = (v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v138 = v127 - v16;
  __chkstk_darwin(v17);
  v133 = v127 - v18;
  __chkstk_darwin(v19);
  v21 = (v127 - v20);
  __chkstk_darwin(v22);
  v24 = v127 - v23;
  __chkstk_darwin(v25);
  v27 = v127 - v26;
  v28 = _s10PredicatesOMa(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = (v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = v5;
  v35 = v5[7];
  v34 = v5 + 7;
  v33 = v35;
  v35(v27, 1, 1, v4, v30);
  v36 = v146;
  sub_1005C1778(v32, a1, v27);
  if (v36)
  {
    sub_1000050A4(v27, &unk_100938850, qword_100795AE0);
    return;
  }

  v144 = v21;
  *&v145 = v34;
  v146 = v33;
  v136 = a1;
  v128 = v24;
  v142 = v4;
  v131 = 0;
  v38 = v37;
  sub_1000050A4(v27, &unk_100938850, qword_100795AE0);
  if (!v38[2])
  {

    v61 = sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
    swift_getKeyPath();
    v62 = NSExpression.init<A, B>(forKeyPath:)();
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v63 = swift_allocObject();
    v145 = xmmword_100791300;
    *(v63 + 16) = xmmword_100791300;
    *(v63 + 56) = v61;
    *(v63 + 32) = v62;
    v146 = v62;
    v64 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v66 = [objc_opt_self() expressionForFunction:v64 arguments:isa];

    v67 = [objc_allocWithZone(NSExpressionDescription) init];
    v143 = 0x80000001007FD910;
    v68 = String._bridgeToObjectiveC()();
    [v67 setName:v68];

    [v67 setExpression:v66];
    [v67 setExpressionResultType:900];
    v69 = v32;
    v70 = sub_100043AA8();
    v71 = [objc_allocWithZone(NSFetchRequest) init];
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v72 = [swift_getObjCClassFromMetadata() entity];
    [v71 setEntity:v72];

    [v71 setAffectedStores:0];
    [v71 setPredicate:v70];
    [v71 setResultType:2];

    v73 = swift_allocObject();
    *(v73 + 16) = v145;
    *(v73 + 56) = sub_1000060C8(0, &qword_100939F48, NSExpressionDescription_ptr);
    *(v73 + 32) = v67;
    v74 = v67;
    v75 = Array._bridgeToObjectiveC()().super.isa;

    [v71 setPropertiesToFetch:v75];

    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v76 = v131;
    v77 = NSManagedObjectContext.fetch<A>(_:)();
    if (v76)
    {
      sub_1004258C8(v69, _s10PredicatesOMa);
    }

    else
    {
      v89 = v77;
      *&v145 = v66;
      v129 = v69;
      v149 = sub_1000F5104(&qword_10094DE48, &qword_1007B3C18);
      *&v148 = v89;
      sub_1000F5104(&qword_10094DE50, &unk_1007B3C20);
      throwingCast<A>(_:as:failureMessage:)();
      v90 = sub_10000607C(&v148);
      v141 = v127;
      *&v148 = v151;
      __chkstk_darwin(v90);
      sub_10000CB90(&qword_10094DE58, &qword_10094DE50, &unk_1007B3C20);
      v91 = v128;
      Sequence.firstMap<A>(_:)();

      sub_10012F78C(v91, v144);
      REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result.init(oldestCompletionDate:)();

      sub_1000050A4(v91, &unk_100938850, qword_100795AE0);
      sub_1004258C8(v129, _s10PredicatesOMa);
    }

    return;
  }

  v129 = v32;
  v39 = v38;
  v40 = sub_100043AA8();
  v41 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v42 = [objc_allocWithZone(NSFetchRequest) init];
  v127[2] = v41;
  v43 = [swift_getObjCClassFromMetadata() entity];
  [v42 setEntity:v43];

  [v42 setAffectedStores:0];
  v130 = v42;
  [v42 setPredicate:v40];

  v135 = v39;
  *&v148 = v39;
  sub_1000F5104(&qword_100949370, &unk_100797770);
  sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
  Predicate = Sequence<>.postFetchPredicateTypes.getter();
  v151 = sub_100235F88(Predicate);
  KeyPath = swift_getKeyPath();
  sub_100378ACC(&v148, KeyPath);

  v127[1] = v151;
  v46 = sub_100277CC0(v151);
  v47 = v46;
  if ((v46 & 0x8000000000000000) != 0 || (v46 & 0x4000000000000000) != 0)
  {
    goto LABEL_43;
  }

  for (i = *(v46 + 16); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v49 = v142;
    v50 = v146;
    if (!i)
    {
      break;
    }

    v144 = Predicate;
    v150 = _swiftEmptyArrayStorage;
    sub_100010D04(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_69;
    }

    v51 = 0;
    v52 = v150;
    Predicate = v47 & 0xC000000000000001;
    while (1)
    {
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (Predicate)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v51 >= *(v47 + 16))
        {
          goto LABEL_41;
        }

        v54 = *(v47 + 8 * v51 + 32);
      }

      v55 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v56)
      {
        goto LABEL_85;
      }

      v57 = v55;
      v58 = v56;
      v149 = &type metadata for String;

      *&v148 = v57;
      *(&v148 + 1) = v58;
      v150 = v52;
      v60 = v52[2];
      v59 = v52[3];
      if (v60 >= v59 >> 1)
      {
        sub_100010D04((v59 > 1), v60 + 1, 1);
        v52 = v150;
      }

      v52[2] = v60 + 1;
      sub_100005EE0(&v148, &v52[4 * v60 + 4]);
      ++v51;
      v50 = v146;
      if (v53 == i)
      {

        v49 = v142;
        Predicate = v144;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_23:
  v78 = Array._bridgeToObjectiveC()().super.isa;

  i = v130;
  [v130 setPropertiesToFetch:v78];

  v79 = sub_100235FA0(Predicate);

  v80 = sub_100277CC0(v79);

  if ((v80 & 0x8000000000000000) != 0 || (v80 & 0x4000000000000000) != 0)
  {
    Predicate = _CocoaArrayWrapper.endIndex.getter();
    if (Predicate)
    {
LABEL_26:
      v150 = _swiftEmptyArrayStorage;
      sub_100026EF4(0, Predicate & ~(Predicate >> 63), 0);
      if (Predicate < 0)
      {
        goto LABEL_70;
      }

      v81 = 0;
      v47 = v150;
      v143 = Predicate;
      v144 = (v80 & 0xC000000000000001);
      do
      {
        v82 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_40;
        }

        if (v144)
        {
          v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v81 >= *(v80 + 16))
          {
            goto LABEL_42;
          }

          v54 = *(v80 + 8 * v81 + 32);
        }

        v83 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v84)
        {
          goto LABEL_85;
        }

        v85 = v83;
        Predicate = v84;

        v150 = v47;
        v87 = *(v47 + 16);
        v86 = *(v47 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_100026EF4((v86 > 1), v87 + 1, 1);
          v47 = v150;
        }

        *(v47 + 16) = v87 + 1;
        v88 = (v47 + 16 * v87);
        v88[4] = v85;
        v88[5] = Predicate;
        ++v81;
        v50 = v146;
      }

      while (v82 != v143);

      v49 = v142;
      i = v130;
      goto LABEL_46;
    }
  }

  else
  {
    Predicate = *(v80 + 16);
    if (Predicate)
    {
      goto LABEL_26;
    }
  }

LABEL_46:
  v92 = Array._bridgeToObjectiveC()().super.isa;

  [i setRelationshipKeyPathsForPrefetching:v92];

  v93 = v131;
  v94 = NSManagedObjectContext.fetch<A>(_:)();
  if (v93)
  {
    sub_1004258C8(v129, _s10PredicatesOMa);

    return;
  }

  v131 = 0;
  i = sub_100155C54(v135, _swiftEmptySetSingleton, v94);

  if (i >> 62)
  {
    goto LABEL_71;
  }

  v95 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  v96 = v141;
  if (v95)
  {
LABEL_50:
    v97 = 0;
    v143 = i & 0xFFFFFFFFFFFFFF8;
    v144 = (i & 0xC000000000000001);
    v136 = (v96 + 6);
    v98 = _swiftEmptyArrayStorage;
    v135 = (v96 + 4);
    while (1)
    {
      if (v144)
      {
        v99 = i;
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v50 = v140;
        v100 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_67;
        }
      }

      else
      {
        v50 = v140;
        if (v97 >= *(v143 + 16))
        {
          goto LABEL_68;
        }

        v99 = i;
        v49 = *(i + 8 * v97 + 32);
        v100 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v95 = _CocoaArrayWrapper.endIndex.getter();
          v96 = v141;
          if (!v95)
          {
            break;
          }

          goto LABEL_50;
        }
      }

      v101 = v95;
      v102 = [v49 completionDate];
      v103 = v50;
      if (v102)
      {
        v104 = v102;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v105 = 0;
      }

      else
      {
        v105 = 1;
      }

      v106 = v105;
      v49 = v142;
      v50 = v146;
      (v146)(v103, v106, 1, v142);
      v107 = v103;
      v108 = v138;
      sub_10012F7FC(v107, v138);
      if ((*v136)(v108, 1, v49) == 1)
      {
        sub_1000050A4(v108, &unk_100938850, qword_100795AE0);
        v95 = v101;
      }

      else
      {
        v109 = *v135;
        (*v135)(v139, v108, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_100365C9C(0, v98[2] + 1, 1, v98);
        }

        v95 = v101;
        v111 = v98[2];
        v110 = v98[3];
        if (v111 >= v110 >> 1)
        {
          v98 = sub_100365C9C(v110 > 1, v111 + 1, 1, v98);
        }

        v98[2] = v111 + 1;
        v112 = v98 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + v141[9] * v111;
        v49 = v142;
        v109(v112, v139, v142);
        v50 = v146;
      }

      ++v97;
      i = v99;
      if (v100 == v95)
      {
        goto LABEL_73;
      }
    }
  }

  v98 = _swiftEmptyArrayStorage;
LABEL_73:

  v113 = v98[2];
  if (!v113)
  {

    v118 = v133;
    v50(v133, 1, 1, v49);
    goto LABEL_77;
  }

  v114 = v141[2];
  v115 = v132;
  v143 = v98 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
  v144 = v114;
  (v114)(v132);
  v116 = v137;
  if (v113 == 1)
  {
LABEL_75:

    v117 = v142;
    v118 = v133;
    (v141[4])(v133, v115, v142);
    (v146)(v118, 0, 1, v117);
LABEL_77:
    sub_10012F78C(v118, v128);
    REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result.init(oldestCompletionDate:)();

    sub_1000050A4(v118, &unk_100938850, qword_100795AE0);
    sub_1004258C8(v129, _s10PredicatesOMa);
    return;
  }

  v54 = v142;
  v140 = (v141 + 1);
  v119 = (v141 + 4);
  v120 = 1;
  while (v120 < v98[2])
  {
    v121 = v113;
    v122 = v115;
    v123 = v141;
    v144(v116, v143 + v141[9] * v120, v54);
    v124 = static Date.< infix(_:_:)();
    v125 = v123[1];
    if (v124)
    {
      v125(v122, v54);
      (*v119)(v122, v116, v54);
    }

    else
    {
      v125(v116, v54);
    }

    v115 = v122;
    ++v120;
    v113 = v121;
    v116 = v137;
    if (v121 == v120)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_85:
  *&v148 = 0;
  *(&v148 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v126._countAndFlagsBits = 0xD00000000000002CLL;
  v126._object = 0x80000001007EC120;
  String.append(_:)(v126);
  v147 = v54;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005C1778(uint64_t *a1, void *a2, uint64_t a3)
{
  v82 = a2;
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v80 = *(v6 - 1);
  v81 = v6;
  v7 = v80[8];
  __chkstk_darwin(v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s10PredicatesOMa_1();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = (&v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v19, v3, v14, v17);
  v20 = (*(v15 + 88))(v19, v14);
  if (v20 == enum case for REMRemindersListBatchDeleteInvocation.ListType.list(_:))
  {
    (*(v15 + 96))(v19, v14);
    v21 = *v19;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1007953F0;
    *(v22 + 32) = v21;
    v23 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
    *a1 = v22;
    sub_10012F78C(a3, a1 + v23);
    _s10PredicatesOMa(0);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    return;
  }

  v78 = a1;
  v79 = a3;
  if (v20 == enum case for REMRemindersListBatchDeleteInvocation.ListType.customSmartList(_:))
  {
    (*(v15 + 96))(v19, v14);
    v24 = *v19;
    v25 = REMSmartListTypeCustom;
    v26 = qword_1009367E0;
    v10 = *v19;
    v27 = v79;
    if (v26 != -1)
    {
LABEL_65:
      swift_once();
    }

    v28 = v83;
    v29 = sub_100717244(v25, v24, v82, qword_1009752F0);

    if (v28)
    {

      return;
    }

    v42 = [v29 parentAccount];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 remObjectID];

      if (v44)
      {
        v45 = [v29 filterData];
        if (v45)
        {
          v46 = v45;
          static Data._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for REMCustomSmartListFilterDescriptor();
          [v29 minimumSupportedVersion];
          v47 = REMCustomSmartListFilterDescriptor.__allocating_init(data:minimumSupportedVersion:)();
        }

        else
        {
          type metadata accessor for REMCustomSmartListFilterDescriptor();
          v47 = REMCustomSmartListFilterDescriptor.__allocating_init()();
        }

        v57 = v47;
        v58 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
        v59 = v78;
        *v78 = v57;
        v59[1] = v44;
        sub_10012F78C(v27, v59 + v58);
        _s10PredicatesOMa(0);
        swift_storeEnumTagMultiPayload();
        v60 = v57;
        v61 = v44;
        REMCustomSmartListFilterDescriptor.operation.getter();
        v62 = (v80[11])(v9, v81);
        if (v62 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
        {
          v63 = static Set<>.typesSupportedByCustomSmartList.getter();
          v64 = static Set<>.typesIndescribableByNSPredicate.getter();
          sub_1001A2030(v64, v63);

LABEL_29:
          v85 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
          v86 = sub_10012DEEC();
          v84[0] = v82;
          v65 = v82;
          REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

          sub_10000607C(v84);
          return;
        }

        if (v62 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
        {
          static Set<>.typesSupportedByCustomSmartList.getter();
          goto LABEL_29;
        }

        goto LABEL_69;
      }
    }

    v53 = objc_opt_self();
    v54 = String._bridgeToObjectiveC()();
    [v53 internalErrorWithDebugDescription:v54];

    swift_willThrow();
LABEL_21:

    return;
  }

  v30 = v79;
  if (v20 == enum case for REMRemindersListBatchDeleteInvocation.ListType.reminders(_:))
  {
    (*(v15 + 96))(v19, v14);
    v31 = *v19;
    v32 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
    v33 = sub_100277EBC(v31);

    v34 = v78;
    *v78 = v33;
    sub_10012F78C(v30, v34 + v32);
    _s10PredicatesOMa(0);
    goto LABEL_3;
  }

  if (v20 == enum case for REMRemindersListBatchDeleteInvocation.ListType.group(_:))
  {
    (*(v15 + 96))(v19, v14);
    v35 = *v19;
    *v13 = *v19;
    v13[8] = 0;
    swift_storeEnumTagMultiPayload();
    v36 = v35;
    v37 = sub_10001F6F4();
    sub_1004258C8(v13, _s10PredicatesOMa_1);
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v29 = [objc_allocWithZone(NSFetchRequest) init];
    v38 = [swift_getObjCClassFromMetadata() entity];
    [v29 setEntity:v38];

    [v29 setAffectedStores:0];
    [v29 setPredicate:v37];
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v25 = swift_allocObject();
    *(v25 + 1) = xmmword_100791300;
    *(v25 + 7) = &type metadata for String;
    *(v25 + 4) = 0x696669746E656469;
    *(v25 + 5) = 0xEA00000000007265;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 setPropertiesToFetch:isa];

    v40 = v83;
    v41 = NSManagedObjectContext.fetch<A>(_:)();
    if (!v40)
    {
      v55 = v41;
      v85 = sub_1000F5104(&qword_10093F6F0, qword_10079A300);
      v84[0] = v55;
      sub_1000F5104(&qword_10094AEF0, &qword_1007B3C30);
      throwingCast<A>(_:as:failureMessage:)();
      v81 = v36;
      v83 = 0;
      sub_10000607C(v84);
      v66 = v87;
      v84[0] = _swiftEmptyArrayStorage;
      v80 = v37;
      v9 = (v87 & 0xFFFFFFFFFFFFFF8);
      if (v87 >> 62)
      {
        v67 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v67 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = 0;
      v27 = (v66 & 0xC000000000000001);
      v82 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v67 == v24)
        {

          goto LABEL_60;
        }

        if (v27)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v68 = (v24 + 1);
          if (__OFADD__(v24, 1))
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v24 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_63;
          }

          v10 = *(v66 + 8 * v24 + 32);
          swift_unknownObjectRetain();
          v68 = (v24 + 1);
          if (__OFADD__(v24, 1))
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        v25 = [v10 remObjectID];
        swift_unknownObjectRelease();
        ++v24;
        if (v25)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v82 = v84[0];
          v24 = v68;
        }
      }
    }

    goto LABEL_21;
  }

  if (v20 != enum case for REMRemindersListBatchDeleteInvocation.ListType.all(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_69:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  swift_storeEnumTagMultiPayload();
  v48 = sub_10001F6F4();
  sub_1004258C8(v13, _s10PredicatesOMa_1);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v27 = [objc_allocWithZone(NSFetchRequest) init];
  v49 = [swift_getObjCClassFromMetadata() entity];
  [v27 setEntity:v49];

  [v27 setAffectedStores:0];
  [v27 setPredicate:v48];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v25 = swift_allocObject();
  *(v25 + 1) = xmmword_100791300;
  *(v25 + 7) = &type metadata for String;
  *(v25 + 4) = 0x696669746E656469;
  *(v25 + 5) = 0xEA00000000007265;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v27 setPropertiesToFetch:v50];

  v51 = v83;
  v52 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v51)
  {
    v56 = v52;
    v85 = sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    v84[0] = v56;
    sub_1000F5104(&qword_10094AEF0, &qword_1007B3C30);
    throwingCast<A>(_:as:failureMessage:)();
    v83 = 0;
    sub_10000607C(v84);
    v69 = v87;
    v84[0] = _swiftEmptyArrayStorage;
    v81 = v48;
    v9 = (v87 & 0xFFFFFFFFFFFFFF8);
    if (v87 >> 62)
    {
      v70 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v70 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = 0;
    v10 = (v69 & 0xC000000000000001);
    v82 = _swiftEmptyArrayStorage;
    while (v70 != v24)
    {
      if (v10)
      {
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v72 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v24 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v71 = *(v69 + 8 * v24 + 32);
        swift_unknownObjectRetain();
        v72 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      v25 = [v71 remObjectID];
      swift_unknownObjectRelease();
      ++v24;
      if (v25)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v73 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v82 = v84[0];
        v24 = v72;
      }
    }

LABEL_60:
    v74 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
    v76 = v78;
    v75 = v79;
    *v78 = v82;
    sub_10012F78C(v75, v76 + v74);
    _s10PredicatesOMa(0);
    goto LABEL_3;
  }
}

uint64_t sub_1005C24CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_100005F4C(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    return (*(v11 + 56))(a4, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for Date();
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_1005C2624(uint64_t a1)
{
  result = sub_1005C04F0(&qword_10094DCE0, &type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1005C267C()
{
  v0 = sub_1005C27D8();
  if (v0)
  {
    v1 = v0;
    v5 = 0;
    v2 = [objc_opt_self() reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:v0 error:&v5];
    v3 = v5;
    if (v2)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v4 = v3;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1005C2774()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_1005C27D8()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1005C2838(v0);
    v3 = *(v0 + 40);
    *(v0 + 40) = v2;
    v4 = v2;
    sub_1005C2B38(v3);
  }

  sub_1005C3E98(v1);
  return v2;
}

id sub_1005C2838(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = objc_opt_self();
  sub_100029344(v3, v1);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18 = 0;
  v6 = [v4 reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:isa error:&v18];

  if (!v6)
  {
    v9 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100936670 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_10094DC58);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.rem_errorDescription.getter();
      v17 = sub_10000668C(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to decode reminderIDsMergeableOrdering {error: %s}", v13, 0xCu);
      sub_10000607C(v14);

      sub_100031A14(v3, v1);
    }

    else
    {
      sub_100031A14(v3, v1);
    }

    return 0;
  }

  v7 = v18;
  v8 = [v6 mutableCopy];
  sub_100031A14(v3, v1);

  return v8;
}

uint64_t sub_1005C2AD4()
{
  sub_100031A14(*(v0 + 24), *(v0 + 32));
  sub_1005C2B38(*(v0 + 40));

  return swift_deallocClassInstance();
}

void sub_1005C2B38(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1005C2B64(unint64_t a1, uint64_t a2)
{
  v42 = a2;
  v2 = a1;
  v51 = _swiftEmptySetSingleton;
  isUniquelyReferenced_nonNull_native = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_54:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000F5104(&qword_100944F78, qword_1007AABF0);
  Set.reserveCapacity(_:)(v4);
  if (isUniquelyReferenced_nonNull_native)
  {
    isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_5:
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v48 = v2 & 0xFFFFFFFFFFFFFF8;
      v46 = v2 & 0xC000000000000001;
      v47 = _swiftEmptyDictionarySingleton;
      v7 = &selRef_persistentStoreForIdentifier_;
      v44 = v2;
      v45 = isUniquelyReferenced_nonNull_native;
      do
      {
        if (v6)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v48 + 16))
          {
            goto LABEL_50;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v11 = [v8 v7[106]];
        if (v11)
        {
          v12 = v11;
          v13 = REMObjectID.codable.getter();
          sub_100379240(&v50, v13);

          v14 = [v9 list];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 account];

            if (v16)
            {
              v49 = [v16 remObjectID];
              if (!v49)
              {

                goto LABEL_44;
              }

              v17 = v47;
              if ((v47 & 0xC000000000000001) != 0)
              {
                if (v47 >= 0)
                {
                  v17 = (v47 & 0xFFFFFFFFFFFFFF8);
                }

                v18 = v49;
                isUniquelyReferenced_nonNull_native = __CocoaDictionary.lookup(_:)();

                v6 = v46;
                if (!isUniquelyReferenced_nonNull_native || (sub_1000060C8(0, &qword_1009399F0, off_1008D4120), swift_dynamicCast(), (isUniquelyReferenced_nonNull_native = v50) == 0))
                {
                  v19 = v16;
                  v20 = __CocoaDictionary.count.getter();
                  if (__OFADD__(v20, 1))
                  {
                    goto LABEL_52;
                  }

                  v17 = sub_10021C924(v17, v20 + 1);
LABEL_33:
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v50 = v17;
                  v27 = sub_10002B924(v49);
                  v28 = v17[2];
                  v29 = (v26 & 1) == 0;
                  v30 = v28 + v29;
                  if (__OFADD__(v28, v29))
                  {
                    goto LABEL_51;
                  }

                  v2 = v26;
                  if (v17[3] >= v30)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_100373F88();
                    }
                  }

                  else
                  {
                    sub_10036BAEC(v30, isUniquelyReferenced_nonNull_native);
                    v31 = sub_10002B924(v49);
                    if ((v2 & 1) != (v32 & 1))
                    {
                      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
                      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                      __break(1u);
                      return result;
                    }

                    v27 = v31;
                  }

                  isUniquelyReferenced_nonNull_native = v45;
                  v33 = v50;
                  v47 = v50;
                  if (v2)
                  {
                    v34 = *(v50 + 7);
                    v35 = *(v34 + 8 * v27);
                    *(v34 + 8 * v27) = v16;
                  }

                  else
                  {
                    *(v50 + (v27 >> 6) + 8) |= 1 << v27;
                    *(v33[6] + 8 * v27) = v49;
                    *(v33[7] + 8 * v27) = v16;

                    v36 = v33[2];
                    v37 = __OFADD__(v36, 1);
                    v38 = v36 + 1;
                    if (v37)
                    {
                      goto LABEL_53;
                    }

                    v33[2] = v38;
                  }

                  v2 = v44;
                  v6 = v46;
LABEL_44:
                  v7 = &selRef_persistentStoreForIdentifier_;
                  goto LABEL_7;
                }
              }

              else
              {
                if (!*(v47 + 16) || (v21 = sub_10002B924(v49), (v22 & 1) == 0) || (v23 = *(*(v47 + 56) + 8 * v21), v24 = v23, !v23))
                {
                  v25 = v16;
                  goto LABEL_33;
                }

                isUniquelyReferenced_nonNull_native = v24;
              }

              isUniquelyReferenced_nonNull_native = v45;
              goto LABEL_44;
            }

            goto LABEL_44;
          }
        }

        else
        {
        }

LABEL_7:
        ++v5;
      }

      while (v10 != isUniquelyReferenced_nonNull_native);
    }
  }

  v40 = sub_100277D70(v39);

  sub_100019514(v40, v42);

  if (v43)
  {
  }

  else
  {
    return v51;
  }
}

void sub_1005C3014(unint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = a1;
  if (a1 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v84 = v5 + 32;
    v85 = v5 & 0xFFFFFFFFFFFFFF8;
    v98 = a2 + 56;
    a4.n128_u64[0] = 136315394;
    v79 = a4;
    v86 = i;
    v87 = v5;
    v88 = a3;
    v89 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v85 + 16))
        {
          goto LABEL_77;
        }

        v9 = *(v84 + 8 * v7);
      }

      v10 = v9;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v12 = [v9 list];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
        sub_1005BFDC4(v14);
        [v10 setList:0];
        v15 = [v10 createResolutionTokenMapIfNecessary];
        v16 = String._bridgeToObjectiveC()();
        [v15 updateForKey:v16];
      }

      v17 = [v10 parentReminder];
      if (v17)
      {

        [v10 setParentReminder:0];
        v18 = [v10 createResolutionTokenMapIfNecessary];
        v19 = String._bridgeToObjectiveC()();
        [v18 updateForKey:v19];
      }

      v20 = [v10 children];
      if (!v20)
      {
        goto LABEL_5;
      }

      v21 = v20;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      sub_1002F1430();
      v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v22 & 0xC000000000000001) != 0)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_4;
        }
      }

      else if (!*(v22 + 16))
      {
LABEL_4:

LABEL_5:

LABEL_6:
        goto LABEL_7;
      }

      v23 = [v10 remObjectID];
      v101 = _swiftEmptyArrayStorage;
      v90 = v10;
      v91 = v7;
      if ((v22 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v22 = v102;
        v24 = v103;
        v25 = v104;
        v5 = v105;
        v26 = v106;
      }

      else
      {
        v5 = 0;
        v27 = -1 << *(v22 + 32);
        v24 = v22 + 56;
        v25 = ~v27;
        v28 = -v27;
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        v26 = v29 & *(v22 + 56);
      }

      v92 = v23;
      v30 = (v25 + 64) >> 6;
      v93 = _swiftEmptyArrayStorage;
      v95 = v22;
      v96 = v13;
      a3 = v26;
      while (1)
      {
        if (v22 < 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            break;
          }

          swift_dynamicCast();
          v35 = v100[0];
          if (!v100[0])
          {
            break;
          }

          goto LABEL_41;
        }

        v33 = v5;
        v34 = a3;
        if (!a3)
        {
          while (1)
          {
            v5 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v5 >= v30)
            {
              goto LABEL_59;
            }

            v34 = *(v24 + 8 * v5);
            ++v33;
            if (v34)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
          goto LABEL_76;
        }

LABEL_37:
        a3 = (v34 - 1) & v34;
        v35 = *(*(v22 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v34)))));
        if (!v35)
        {
          break;
        }

LABEL_41:
        v36 = [v35 remObjectID];
        if (v36)
        {
          v37 = v36;
          v97 = a3;
          v38 = REMObjectID.codable.getter();

          if ((a2 & 0xC000000000000001) != 0)
          {
            v31 = v38;
            v32 = __CocoaSet.contains(_:)();

            if (v32)
            {
              goto LABEL_30;
            }
          }

          else if (*(a2 + 16))
          {
            type metadata accessor for REMObjectID_Codable();
            v39 = NSObject._rawHashValue(seed:)(*(a2 + 40));
            v40 = -1 << *(a2 + 32);
            v41 = v39 & ~v40;
            if ((*(v98 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
            {
              v42 = ~v40;
              while (1)
              {
                v43 = *(*(a2 + 48) + 8 * v41);
                v44 = static NSObject.== infix(_:_:)();

                if (v44)
                {
                  break;
                }

                v41 = (v41 + 1) & v42;
                if (((*(v98 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

LABEL_30:

              v22 = v95;
              v13 = v96;
              a3 = v97;
              goto LABEL_31;
            }
          }

LABEL_48:
          if (qword_100936670 != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          sub_100006654(v45, qword_10094DC58);
          v46 = v38;
          v47 = v92;
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v48, v49))
          {
            v82 = v49;
            log = v48;
            v50 = v46;
            v51 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v100[0] = v81;
            *v51 = 138412546;
            *(v51 + 4) = v50;
            *v80 = v50;
            *(v51 + 12) = 2080;
            v94 = v50;
            v52 = v50;
            if (v92)
            {
              v53 = [v47 description];
              v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v55;
            }

            else
            {
              v56 = 0xE300000000000000;
              v54 = 7104878;
            }

            v22 = v95;
            a3 = v97;
            v57 = sub_10000668C(v54, v56, v100);

            *(v51 + 14) = v57;
            _os_log_impl(&_mh_execute_header, log, v82, "Found subtasks not to be deleted; make them top level instead. {subtaskID: %@, parentID: %s}", v51, 0x16u);
            sub_1000050A4(v80, &unk_100938E70, &unk_100797230);

            sub_10000607C(v81);

            v46 = v94;
          }

          else
          {

            v22 = v95;
            a3 = v97;
          }

          [v35 setParentReminder:0];
          v58 = [v35 createResolutionTokenMapIfNecessary];
          v59 = String._bridgeToObjectiveC()();
          [v58 updateForKey:v59];

          [v35 updateChangeCount];
          swift_beginAccess();
          v60 = v46;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v13 = v96;
          if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v61 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            a3 = v97;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v93 = v101;
          swift_endAccess();
        }

        else
        {
LABEL_31:
        }
      }

LABEL_59:
      sub_10002CF84();
      if (v93 >> 62)
      {
        v62 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v62 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v87;
      a3 = v88;
      i = v86;
      v10 = v90;
      v7 = v91;
      v8 = v89;
      if (!v62)
      {

        goto LABEL_6;
      }

      if (!v92)
      {
        goto LABEL_4;
      }

      if (v13)
      {
        if (sub_1005C007C(v13))
        {
          if (qword_100936670 != -1)
          {
            swift_once();
          }

          v63 = type metadata accessor for Logger();
          sub_100006654(v63, qword_10094DC58);
          v64 = v92;
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v100[0] = swift_slowAlloc();
            *v67 = v79.n128_u32[0];
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

            v68 = Array.description.getter();
            v70 = v69;

            v71 = sub_10000668C(v68, v70, v100);

            *(v67 + 4) = v71;
            *(v67 + 12) = 2080;
            v72 = [v64 description];
            v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;

            v76 = v73;
            v8 = v89;
            v77 = sub_10000668C(v76, v75, v100);
            v7 = v91;

            *(v67 + 14) = v77;
            v13 = v96;
            _os_log_impl(&_mh_execute_header, v65, v66, "Moving subtask IDs to reflect top level ordering. {subtaskIDs: %s, parentID: %s}", v67, 0x16u);
            swift_arrayDestroy();

            v10 = v90;
          }

          sub_1005C0208(v78, v64);

          swift_bridgeObjectRelease_n();
        }

        else
        {
        }
      }

      else
      {
      }

LABEL_7:
      if (v7 == i)
      {
        return;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }
}

void sub_1005C3B30(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100936670 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094DC58);

  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v31 = v9;
    v10 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v10 = 136315650;
    v11 = [v7 remObjectID];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 description];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_10000668C(v14, v16, &v32);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    if (*(a2 + 16))
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (*(a2 + 16))
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = sub_10000668C(v18, v19, &v32);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2080;
    if (*(a2 + 17))
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (*(a2 + 17))
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = sub_10000668C(v21, v22, &v32);

    *(v10 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v8, v31, "REMRemindersListBatchDeleteInvocation: updating REMCDList ordering {listID: %s, orderingChanged: %s, needsSortReminders: %s}", v10, 0x20u);
    swift_arrayDestroy();

    v3 = v2;
  }

  else
  {
  }

  if (*(a2 + 16) == 1)
  {
    sub_1005C267C();
    if (v3)
    {
      return;
    }

    if (v25 >> 60 != 15)
    {
      v26 = v24;
      v27 = v25;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v7 setReminderIDsMergeableOrdering:isa];

      v29 = [v7 createResolutionTokenMapIfNecessary];
      v30 = String._bridgeToObjectiveC()();
      [v29 updateForKey:v30];

      [v7 updateChangeCount];
      sub_100031A14(v26, v27);
    }
  }

  if (*(a2 + 17) == 1)
  {
    sub_100357E44();
  }
}

id sub_1005C3E98(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1005C3EA8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DE60);
  v1 = sub_100006654(v0, qword_10094DE60);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005C3F88()
{
  v0 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s9UtilitiesO12SortingStyleOMa();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10PredicatesOMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v13 = sub_100043AA8();
  sub_1001A4F3C(v12, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v13];

  v16 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v17 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v17 - 8) + 104))(v8, v16, v17);
  swift_storeEnumTagMultiPayload();
  (*(v1 + 104))(v4, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v0);
  sub_10053CE0C(v8, v4, 0);
  (*(v1 + 8))(v4, v0);
  sub_1001A4F3C(v8, _s9UtilitiesO12SortingStyleOMa);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setSortDescriptors:isa];

  return v14;
}

void sub_1005C42B0(uint64_t a1)
{
  v3 = sub_1005C3F88();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v4 = NSManagedObjectContext.fetch<A>(_:)();
  v5 = v1;

  if (!v1)
  {
    v6 = [objc_opt_self() defaultFetchOptions];
    sub_1003EBF14(v4, v6, a1);

    type metadata accessor for REMReminderStorageCDIngestor();
    swift_initStackObject();
    if (qword_100936678 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v7 = type metadata accessor for Logger();
      v8 = sub_100006654(v7, qword_10094DE60);
      __chkstk_darwin(v8);
      sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
      sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
      sub_10055B9E4();
      v9 = Sequence.map<A>(skippingError:_:)();
      if (v5)
      {

        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        v10 = v9;
      }

      if (v10 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (!v11)
        {
LABEL_25:

          v18 = objc_allocWithZone(type metadata accessor for REMComplicationDataView.FetchModelInvocation.Result());
          REMComplicationDataView.FetchModelInvocation.Result.init(accountStorages:listStorages:reminderStorages:)();
          return;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      v12 = 0;
      v5 = v10 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = [v13 displayDate];
        if (v16)
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v17 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v12;
        if (v15 == v11)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
    }
  }
}

uint64_t sub_1005C4608(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a3;
  v49 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v37 - v10;
  v11 = _swiftEmptyDictionarySingleton;
  v51 = _swiftEmptyDictionarySingleton;
  v43 = *(a1 + 16);
  if (v43)
  {
    v12 = 0;
    v42 = v6 + 16;
    v47 = (v6 + 32);
    v37 = xmmword_100791300;
    v40 = v6;
    v41 = a1;
    while (v12 < *(a1 + 16))
    {
      v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v15 = *(v6 + 72);
      v16 = v48;
      (*(v6 + 16))(v48, a1 + v14 + v15 * v12, v49);
      v45(&v50, v16);
      if (v4)
      {
        (*(v6 + 8))(v48, v49);

        goto LABEL_19;
      }

      v17 = v50;
      v19 = sub_100364118(v50);
      v20 = v11[2];
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_21;
      }

      v23 = v18;
      if (v11[3] < v22)
      {
        sub_10036AF70(v22, 1);
        v11 = v51;
        v24 = sub_100364118(v17);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_23;
        }

        v19 = v24;
      }

      if (v23)
      {
        v39 = 0;
        v26 = v11[7];
        v27 = *v47;
        (*v47)(v44, v48, v49);
        v28 = *(v26 + 8 * v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v26 + 8 * v19) = v28;
        v38 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = sub_100365A24(0, *(v28 + 2) + 1, 1, v28);
          *(v26 + 8 * v19) = v28;
        }

        v31 = *(v28 + 2);
        v30 = *(v28 + 3);
        if (v31 >= v30 >> 1)
        {
          v28 = sub_100365A24(v30 > 1, v31 + 1, 1, v28);
          *(v26 + 8 * v19) = v28;
        }

        v13 = v38;
        v4 = v39;
        *(v28 + 2) = v31 + 1;
        v13(&v28[v14 + v31 * v15], v44, v49);
      }

      else
      {
        sub_1000F5104(&unk_1009430D0, &qword_10079D4F0);
        v32 = swift_allocObject();
        *(v32 + 16) = v37;
        (*v47)((v32 + v14), v48, v49);
        v11[(v19 >> 6) + 8] |= 1 << v19;
        *(v11[6] + v19) = v17;
        *(v11[7] + 8 * v19) = v32;
        v33 = v11[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_22;
        }

        v11[2] = v35;
      }

      ++v12;
      v6 = v40;
      a1 = v41;
      if (v43 == v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_19:

    return v11;
  }

  return result;
}

uint64_t sub_1005C49A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(Swift::UInt *__return_ptr, id *))
{
  v6 = _swiftEmptyDictionarySingleton;
  v35 = _swiftEmptyDictionarySingleton;
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
LABEL_2:
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    if (a3 > v7)
    {
      v7 = a3;
    }

    v9 = v7 - a3;
    v10 = (a2 + 8 * a3);
    while (v9)
    {
      v34 = *v10;
      v12 = v34;
      a5(&v32, &v34);
      if (v5)
      {

        swift_unknownObjectRelease();

        return v6;
      }

      v31 = v8;
      v13 = v32;
      v14 = v33;
      v15 = sub_1003642E4(v32, v33);
      v17 = v6[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_21;
      }

      v21 = v16;
      if (v6[3] < v20)
      {
        sub_10036BDCC(v20, 1);
        v6 = v35;
        v15 = sub_1003642E4(v13, v14);
        if ((v21 & 1) != (v22 & 1))
        {
          goto LABEL_23;
        }
      }

      if (v21)
      {
        v11 = (v6[7] + 8 * v15);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v23 = v15;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1007953F0;
        *(v24 + 32) = v12;
        v6[(v23 >> 6) + 8] |= 1 << v23;
        v25 = (v6[6] + 16 * v23);
        *v25 = v13;
        v25[1] = v14;
        *(v6[7] + 8 * v23) = v24;
        v26 = v6[2];
        v19 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v19)
        {
          goto LABEL_22;
        }

        v6[2] = v27;
      }

      --v9;
      ++v10;
      v8 = v31 - 1;
      if (v31 == 1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005C4BEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, id *))
{
  v6 = _swiftEmptyDictionarySingleton;
  v31 = _swiftEmptyDictionarySingleton;
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
LABEL_2:
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    if (a3 > v7)
    {
      v7 = a3;
    }

    v9 = v7 - a3;
    v10 = (a2 + 8 * a3);
    while (v9)
    {
      v30 = *v10;
      v12 = v30;
      a5(&v29, &v30);
      if (v5)
      {

        swift_unknownObjectRelease();

        return v6;
      }

      v13 = v29;
      v14 = sub_100364364(v29);
      v16 = v6[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_21;
      }

      v20 = v15;
      if (v6[3] < v19)
      {
        sub_10036C06C(v19, 1);
        v6 = v31;
        v14 = sub_100364364(v13);
        if ((v20 & 1) != (v21 & 1))
        {
          goto LABEL_23;
        }
      }

      if (v20)
      {
        v11 = (v6[7] + 8 * v14);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v22 = v14;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1007953F0;
        *(v23 + 32) = v12;
        v6[(v22 >> 6) + 8] |= 1 << v22;
        *(v6[6] + 8 * v22) = v13;
        *(v6[7] + 8 * v22) = v23;
        v24 = v6[2];
        v18 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v18)
        {
          goto LABEL_22;
        }

        v6[2] = v25;
      }

      --v9;
      ++v10;
      if (!--v8)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

Swift::Int sub_1005C4E20(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100436450(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
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
      sub_1000F5104(&qword_10093ED90, &unk_10079D510);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1005C7678(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1005C4F74(unint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v225 = a4;
  v219 = a3;
  v214 = a2;
  v206 = a5;
  v207 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel();
  v221 = *(v207 - 8);
  v6 = *(v221 + 64);
  __chkstk_darwin(v207);
  v230 = &v186[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v205 = &v186[-v9];
  v10 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v203 = &v186[-v12];
  v229 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day();
  v217 = *(v229 - 8);
  v13 = *(v217 + 64);
  __chkstk_darwin(v229);
  v227 = &v186[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v228 = &v186[-v16];
  __chkstk_darwin(v17);
  v209 = &v186[-v18];
  v224 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket();
  v216 = *(v224 - 8);
  v19 = *(v216 + 64);
  __chkstk_darwin(v224);
  v204 = &v186[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v215 = &v186[-v22];
  __chkstk_darwin(v23);
  v218 = &v186[-v24];
  __chkstk_darwin(v25);
  v223 = &v186[-v26];
  v27 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v212 = *(v27 - 8);
  v213 = v27;
  v28 = *(v212 + 64);
  __chkstk_darwin(v27);
  v210 = &v186[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v211 = &v186[-v31];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v208 = *(Configuration - 8);
  v33 = *(v208 + 64);
  __chkstk_darwin(Configuration);
  v35 = &v186[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for REMRemindersListDataView.Diff();
  v220 = *(v36 - 8);
  v37 = *(v220 + 64);
  __chkstk_darwin(v36);
  v39 = &v186[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40);
  v42 = &v186[-v41];
  v43 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v46 = &v186[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v47);
  v49 = &v186[-v48];
  v50 = a1;
  v51 = v226;
  v52 = sub_1005C9018(a1, v225);
  if (v51)
  {
    return;
  }

  v201 = v46;
  v202 = v39;
  v199 = v42;
  v198 = v36;
  v53 = v52;
  v54 = v222;
  sub_1005C669C(v50, v52, v49);
  v200 = v53;
  v55 = [v54 fetchResultTokenToDiffAgainst];
  sub_100534D44(v55, v199);
  v196 = 0;
  v194 = v49;
  v193 = v50;

  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v56 = v211;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v208 + 8))(v35, Configuration);
  v57 = v212;
  v58 = v210;
  v59 = v56;
  v60 = v213;
  (*(v212 + 16))(v210, v59, v213);
  v61 = (*(v57 + 88))(v58, v60);
  if (v61 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
LABEL_47:
    v63 = v220;
    v64 = v221;
    v65 = v230;
    v118 = v219;
    v67 = v202;
    v68 = v201;
    v119 = v216;
    if (v61 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      v121 = v212;
      v120 = v213;
      v122 = v210;
      (*(v212 + 96))(v210, v213);
      sub_10053E698(*v122, v199, v193, v118, 0);
      (*(v121 + 8))(v211, v120);
      goto LABEL_98;
    }

    if (v61 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
    {
      if (v61 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        goto LABEL_122;
      }

      (*(v212 + 8))(v211, v213);
      goto LABEL_98;
    }

    v123 = v210;
    (*(v212 + 96))(v210, v213);
    v188 = *v123;
    v124 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100226AD8(v123 + *(v124 + 48), v203);
    v125 = v200;
    v218 = *(v200 + 16);
    if (!v218)
    {
      v225 = _swiftEmptyArrayStorage;
LABEL_103:
      v182 = v225;
      v183 = v193;
      sub_10053DB98(v188, v225, v193, v118, 0);
      v184 = v203;
      v185 = v183;
      v63 = v220;
      sub_10053EBE4(v203, v182, v185, v118, 0);

      sub_1000050A4(v184, &qword_10094B8E0, &unk_1007AABD0);
      (*(v212 + 8))(v211, v213);
      v64 = v221;
      goto LABEL_98;
    }

    v126 = 0;
    v214 = (v119 + 16);
    v210 = (v119 + 88);
    LODWORD(v208) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.pastDue(_:);
    v192 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.nextFiveDays(_:);
    v191 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.day(_:);
    LODWORD(v190) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.month(_:);
    v187 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.year(_:);
    v197 = (v119 + 96);
    v189 = (v217 + 32);
    v228 = (v217 + 8);
    v195 = (v119 + 8);
    v225 = _swiftEmptyArrayStorage;
    v226 = v217 + 16;
    v127 = v204;
    while (1)
    {
      if (v126 >= *(v125 + 16))
      {
        goto LABEL_117;
      }

      v128 = v125 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
      v129 = *(v119 + 72);
      v223 = v126;
      v130 = *(v119 + 16);
      v131 = v215;
      v132 = v224;
      v130(v215, v128 + v129 * v126, v224);
      v130(v127, v131, v132);
      v133 = (*(v119 + 88))(v127, v132);
      if (v133 == v208)
      {
        break;
      }

      if (v133 == v192)
      {
        (*v197)(v127, v132);
        goto LABEL_59;
      }

      v158 = v229;
      v159 = v209;
      if (v133 != v191)
      {
        if (v133 == v190)
        {
          v132 = v224;
          (*v197)(v127, v224);
LABEL_59:
          v134 = *(v127 + *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48));
          v135 = type metadata accessor for Date();
          (*(*(v135 - 8) + 8))(v127, v135);
LABEL_60:
          v136 = v217;
          v137 = *(v134 + 2);
          if (v137)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v136 = v217;
          v132 = v224;
          if (v133 != v187)
          {
            goto LABEL_46;
          }

          (*v197)(v127, v224);
          v134 = *(v127 + *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48));
          v162 = type metadata accessor for Date();
          (*(*(v162 - 8) + 8))(v127, v162);
          v137 = *(v134 + 2);
          if (v137)
          {
LABEL_61:
            v138 = *(v136 + 80);
            v222 = v134;
            v139 = &v134[(v138 + 32) & ~v138];
            v140 = *(v136 + 72);
            v141 = *(v136 + 16);
            v142 = _swiftEmptyArrayStorage;
            v143 = v227;
            do
            {
              v144 = v229;
              v145 = v143;
              v141();
              v146 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
              (*v228)(v145, v144);
              v147 = *(v146 + 16);
              v148 = v142[2];
              v149 = v148 + v147;
              if (__OFADD__(v148, v147))
              {
                goto LABEL_108;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v149 > v142[3] >> 1)
              {
                if (v148 <= v149)
                {
                  v151 = v148 + v147;
                }

                else
                {
                  v151 = v148;
                }

                v142 = sub_100365A24(isUniquelyReferenced_nonNull_native, v151, 1, v142);
              }

              v65 = v230;
              if (*(v146 + 16))
              {
                v152 = (v142[3] >> 1) - v142[2];
                v153 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
                if (v152 < v147)
                {
                  goto LABEL_110;
                }

                v154 = (*(v153 + 80) + 32) & ~*(v153 + 80);
                v155 = *(v153 + 72);
                swift_arrayInitWithCopy();

                v65 = v230;
                v143 = v227;
                if (v147)
                {
                  v156 = v142[2];
                  v99 = __OFADD__(v156, v147);
                  v157 = v156 + v147;
                  if (v99)
                  {
                    goto LABEL_111;
                  }

                  v142[2] = v157;
                }
              }

              else
              {

                v143 = v227;
                if (v147)
                {
                  goto LABEL_109;
                }
              }

              v139 += v140;
              --v137;
            }

            while (v137);

            v68 = v201;
            v132 = v224;
            v119 = v216;
            v127 = v204;
            goto LABEL_84;
          }
        }

        v142 = _swiftEmptyArrayStorage;
        goto LABEL_84;
      }

      v160 = v224;
      (*v197)(v127, v224);
      (*v189)(v159, v127, v158);
      v142 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
      v161 = v159;
      v132 = v160;
      (*v228)(v161, v158);
LABEL_84:
      (*v195)(v215, v132);
      v163 = v142[2];
      v164 = v225[2];
      v165 = v164 + v163;
      if (__OFADD__(v164, v163))
      {
        goto LABEL_118;
      }

      v166 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v225;
      if (!v166 || v165 > v225[3] >> 1)
      {
        if (v164 <= v165)
        {
          v168 = v164 + v163;
        }

        else
        {
          v168 = v164;
        }

        v167 = sub_100365A24(v166, v168, 1, v225);
      }

      v118 = v219;
      v169 = v142[2];
      v225 = v167;
      if (v169)
      {
        v170 = (v167[3] >> 1) - v167[2];
        v171 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
        if (v170 < v163)
        {
          goto LABEL_120;
        }

        v172 = (*(v171 + 80) + 32) & ~*(v171 + 80);
        v173 = *(v171 + 72);
        swift_arrayInitWithCopy();

        v118 = v219;
        v67 = v202;
        v125 = v200;
        if (v163)
        {
          v174 = v225[2];
          v99 = __OFADD__(v174, v163);
          v175 = v174 + v163;
          if (v99)
          {
            goto LABEL_121;
          }

          v225[2] = v175;
        }
      }

      else
      {

        v67 = v202;
        v125 = v200;
        if (v163)
        {
          goto LABEL_119;
        }
      }

      v126 = (v223 + 1);
      if (v223 + 1 == v218)
      {
        goto LABEL_103;
      }
    }

    (*v197)(v127, v132);
    v134 = *v127;
    goto LABEL_60;
  }

  (*(v57 + 96))(v58, v60);
  v189 = *v58;
  v62 = v200;
  v63 = v220;
  v64 = v221;
  v65 = v230;
  v66 = v219;
  v67 = v202;
  v68 = v201;
  v69 = v216;
  v214 = *(v200 + 16);
  if (!v214)
  {
    v225 = _swiftEmptyArrayStorage;
LABEL_97:
    sub_10053DB98(v189, v225, v193, v66, 0);

    (*(v212 + 8))(v211, v213);
LABEL_98:
    sub_100010364(v194, v68, &qword_100938A70, &qword_1007ACC60);
    v176 = v205;
    REMRemindersListDataView.ScheduledDateBucketsModel.init(buckets:remindersCount:prefetchedReminders:prefetchedDueReminders:)();
    v177 = v65;
    v178 = v207;
    (*(v64 + 16))(v177, v176, v207);
    v179 = v67;
    v180 = v199;
    v181 = v198;
    (*(v63 + 16))(v179, v199, v198);
    sub_1005CC954(&qword_10094DEC0, &type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel);
    sub_1005CC954(&qword_10094DEC8, &type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v64 + 8))(v176, v178);
    (*(v63 + 8))(v180, v181);
    sub_1000050A4(v194, &qword_100938A70, &qword_1007ACC60);
    return;
  }

  v70 = 0;
  v210 = (v216 + 16);
  v208 = v216 + 88;
  LODWORD(v204) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.pastDue(_:);
  LODWORD(v195) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.nextFiveDays(_:);
  v192 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.day(_:);
  v191 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.month(_:);
  LODWORD(v188) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.year(_:);
  v203 = (v216 + 96);
  v190 = (v217 + 32);
  v227 = (v217 + 8);
  v197 = (v216 + 8);
  v225 = _swiftEmptyArrayStorage;
  v226 = v217 + 16;
  v71 = v228;
  while (1)
  {
    if (v70 >= *(v62 + 16))
    {
      goto LABEL_112;
    }

    v73 = v62 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v74 = *(v69 + 72);
    v222 = v70;
    v75 = *(v69 + 16);
    v77 = v223;
    v76 = v224;
    v75(v223, v73 + v74 * v70, v224);
    v78 = v218;
    v75(v218, v77, v76);
    v79 = (*(v69 + 88))(v78, v76);
    if (v79 == v204)
    {
      (*v203)(v78, v76);
      v80 = *v78;
      v81 = *(*v78 + 16);
      if (v81)
      {
        break;
      }

      goto LABEL_29;
    }

    if (v79 != v195)
    {
      if (v79 == v192)
      {
        (*v203)(v78, v76);
        v102 = v209;
        v103 = v229;
        (*v190)(v209, v78, v229);
        v86 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
        v104 = v102;
        v76 = v224;
        (*v227)(v104, v103);
        goto LABEL_32;
      }

      if (v79 != v191 && v79 != v188)
      {
LABEL_46:
        v61 = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_47;
      }
    }

    (*v203)(v78, v76);
    v80 = *&v78[*(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48)];
    v101 = type metadata accessor for Date();
    (*(*(v101 - 8) + 8))(v78, v101);
    v81 = *(v80 + 16);
    if (v81)
    {
      break;
    }

LABEL_29:

    v86 = _swiftEmptyArrayStorage;
LABEL_32:
    (*v197)(v77, v76);
    v105 = v86[2];
    v106 = v225;
    v107 = v225[2];
    v108 = v107 + v105;
    if (__OFADD__(v107, v105))
    {
      goto LABEL_113;
    }

    v109 = swift_isUniquelyReferenced_nonNull_native();
    if (!v109 || v108 > v106[3] >> 1)
    {
      if (v107 <= v108)
      {
        v110 = v107 + v105;
      }

      else
      {
        v110 = v107;
      }

      v106 = sub_100365A24(v109, v110, 1, v106);
    }

    v67 = v202;
    v111 = v86[2];
    v225 = v106;
    if (v111)
    {
      v112 = (v106[3] >> 1) - v106[2];
      v113 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
      if (v112 < v105)
      {
        goto LABEL_115;
      }

      v114 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v115 = *(v113 + 72);
      swift_arrayInitWithCopy();

      v64 = v221;
      v72 = v222;
      v67 = v202;
      v68 = v201;
      v62 = v200;
      if (v105)
      {
        v116 = v225[2];
        v99 = __OFADD__(v116, v105);
        v117 = v116 + v105;
        if (v99)
        {
          goto LABEL_116;
        }

        v225[2] = v117;
      }
    }

    else
    {

      v64 = v221;
      v72 = v222;
      v68 = v201;
      v62 = v200;
      if (v105)
      {
        goto LABEL_114;
      }
    }

    v70 = (v72 + 1);
    v63 = v220;
    if (v70 == v214)
    {
      goto LABEL_97;
    }
  }

  v82 = *(v217 + 80);
  v215 = v80;
  v83 = v80 + ((v82 + 32) & ~v82);
  v84 = *(v217 + 72);
  v85 = *(v217 + 16);
  v86 = _swiftEmptyArrayStorage;
  while (1)
  {
    v87 = v229;
    v85(v71, v83, v229);
    v88 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
    (*v227)(v71, v87);
    v89 = *(v88 + 16);
    v90 = v86[2];
    v91 = v90 + v89;
    if (__OFADD__(v90, v89))
    {
      break;
    }

    v92 = swift_isUniquelyReferenced_nonNull_native();
    if (v92 && v91 <= v86[3] >> 1)
    {
      if (*(v88 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v90 <= v91)
      {
        v93 = v90 + v89;
      }

      else
      {
        v93 = v90;
      }

      v86 = sub_100365A24(v92, v93, 1, v86);
      if (*(v88 + 16))
      {
LABEL_22:
        v94 = (v86[3] >> 1) - v86[2];
        v95 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
        if (v94 < v89)
        {
          goto LABEL_106;
        }

        v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v97 = *(v95 + 72);
        swift_arrayInitWithCopy();

        v65 = v230;
        v71 = v228;
        if (v89)
        {
          v98 = v86[2];
          v99 = __OFADD__(v98, v89);
          v100 = v98 + v89;
          if (v99)
          {
            goto LABEL_107;
          }

          v86[2] = v100;
        }

        goto LABEL_12;
      }
    }

    v65 = v230;
    v71 = v228;
    if (v89)
    {
      goto LABEL_105;
    }

LABEL_12:
    v83 += v84;
    if (!--v81)
    {

      v66 = v219;
      v77 = v223;
      v76 = v224;
      v69 = v216;
      goto LABEL_32;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_1005C669C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v108 = a2;
  v78 = a1;
  v79 = a3;
  v3 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v97 = *(v3 - 8);
  v4 = *(v97 + 64);
  __chkstk_darwin(v3);
  v94 = &v70[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v70[-v7];
  v9 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day();
  v104 = *(v9 - 8);
  v10 = *(v104 + 64);
  __chkstk_darwin(v9);
  v12 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v96 = &v70[-v14];
  v77 = _s10PredicatesOMa(0);
  v15 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v76 = &v70[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket();
  v17 = *(v93 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v93);
  v91 = &v70[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v95 = &v70[-v21];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v23 = *(Configuration - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(Configuration);
  v26 = &v70[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v27 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v23 + 8))(v26, Configuration);
  if ((v27 & 1) == 0)
  {
LABEL_41:
    v62 = 1;
    v63 = v79;
    goto LABEL_42;
  }

  v83 = *(v108 + 16);
  if (!v83)
  {
LABEL_43:
    v65 = v76;
    swift_storeEnumTagMultiPayload();
    v66 = sub_100043AA8();
    sub_1000513B4(v65);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v67 = [objc_allocWithZone(NSFetchRequest) init];
    v68 = [swift_getObjCClassFromMetadata() entity];
    [v67 setEntity:v68];

    [v67 setAffectedStores:0];
    [v67 setPredicate:v66];
    v69 = v81;
    NSManagedObjectContext.count<A>(for:)();
    if (v69)
    {

      return;
    }

    v63 = v79;
    REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();

    v62 = 0;
LABEL_42:
    v64 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v64 - 8) + 56))(v63, v62, 1, v64);
    return;
  }

  v74 = v12;
  v28 = 0;
  v29 = 0;
  v31 = *(v17 + 16);
  v30 = v17 + 16;
  v89 = v31;
  v88 = v108 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
  v87 = *(v30 + 56);
  v86 = (v30 + 72);
  v85 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.pastDue(_:);
  v80 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.nextFiveDays(_:);
  v75 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.day(_:);
  v73 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.month(_:);
  v84 = (v30 + 80);
  v72 = (v104 + 32);
  v108 = v97 + 16;
  v71 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.year(_:);
  v32 = (v97 + 8);
  v100 = (v104 + 8);
  v90 = v30;
  v82 = (v30 - 8);
  v98 = v9;
  v99 = v104 + 16;
  v33 = v96;
  while (1)
  {
    v92 = v29;
    v34 = v93;
    v35 = v89;
    v89(v95, v88 + v87 * v29, v93);
    v36 = v91;
    v35(v91, v95, v34);
    v37 = (*v86)(v36, v34);
    if (v37 != v85)
    {
      break;
    }

    (*v84)(v36, v34);
    v38 = *v36;
    v39 = v98;
LABEL_18:
    v103 = *(v38 + 16);
    if (v103)
    {
      v52 = 0;
      v53 = *(v104 + 80);
      v101 = v38;
      v102 = v38 + ((v53 + 32) & ~v53);
      while (v52 < *(v38 + 16))
      {
        v54 = *(v104 + 72);
        v107 = v52;
        (*(v104 + 16))(v33, v102 + v54 * v52, v39);
        v55 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
        v56 = *(v55 + 16);
        if (v56)
        {
          v105 = v55;
          v106 = v28;
          v57 = 0;
          v58 = v55 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
          v59 = *(v97 + 72);
          v60 = *(v97 + 16);
          v60(v8, v58, v3);
          while (1)
          {
            v61 = REMRemindersListDataView.ReminderLite.isCompleted.getter();
            (*v32)(v8, v3);
            if ((v61 & 1) == 0)
            {
              v49 = __OFADD__(v57++, 1);
              if (v49)
              {
                __break(1u);
                goto LABEL_43;
              }
            }

            v58 += v59;
            if (!--v56)
            {
              break;
            }

            v60(v8, v58, v3);
          }

          v39 = v98;
          v28 = v106;
          v33 = v96;
        }

        else
        {

          v57 = 0;
        }

        (*v100)(v33, v39);
        v49 = __OFADD__(v28, v57);
        v28 += v57;
        if (v49)
        {
          goto LABEL_47;
        }

        v52 = v107 + 1;
        v38 = v101;
        if (v107 + 1 == v103)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_33:

    (*v82)(v95, v93);
LABEL_34:
    v29 = v92 + 1;
    if (v92 + 1 == v83)
    {
      goto LABEL_43;
    }
  }

  v39 = v98;
  if (v37 == v80)
  {
LABEL_17:
    v50 = v91;
    (*v84)(v91, v93);
    v38 = *(v50 + *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48));
    v51 = type metadata accessor for Date();
    (*(*(v51 - 8) + 8))(v50, v51);
    goto LABEL_18;
  }

  if (v37 != v75)
  {
    if (v37 != v73 && v37 != v71)
    {
      goto LABEL_49;
    }

    goto LABEL_17;
  }

  v106 = v28;
  v40 = v91;
  (*v84)(v91, v93);
  (*v72)(v74, v40, v39);
  v41 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
  v42 = *(v41 + 16);
  if (!v42)
  {

    v43 = 0;
LABEL_38:
    (*v100)(v74, v39);
    (*v82)(v95, v93);
    v49 = __OFADD__(v106, v43);
    v28 = v106 + v43;
    if (v49)
    {
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  v43 = 0;
  v44 = *(v97 + 80);
  v105 = v41;
  v45 = v41 + ((v44 + 32) & ~v44);
  v107 = *(v97 + 72);
  v46 = *(v97 + 16);
  while (1)
  {
    v47 = v94;
    v46(v94, v45, v3);
    v48 = REMRemindersListDataView.ReminderLite.isCompleted.getter();
    (*v32)(v47, v3);
    if ((v48 & 1) == 0)
    {
      v49 = __OFADD__(v43++, 1);
      if (v49)
      {
        break;
      }
    }

    v45 += v107;
    if (!--v42)
    {

      v39 = v98;
      v33 = v96;
      goto LABEL_38;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1005C70DC()
{
  v0 = _s9UtilitiesO12SortingStyleOMa();
  sub_1000EECAC(v0, qword_10094DE78);
  v1 = sub_100006654(v0, qword_10094DE78);
  v2 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v3 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1005C7190@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a3;
  v28 = a2;
  v29 = a4;
  v5 = type metadata accessor for Calendar.Component();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v26 - v20;
  v22 = [*a1 displayDateDate];
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 32))(v21, v17, v10);
    (*(v6 + 104))(v9, enum case for Calendar.Component.year(_:), v5);
    v24 = Calendar.component(_:from:)();
    (*(v6 + 8))(v9, v5);
    result = (*(v11 + 8))(v21, v10);
  }

  else
  {
    (*(v6 + 104))(v9, enum case for Calendar.Component.year(_:), v5);
    (*(v11 + 16))(v14, v27, v10);
    v24 = Calendar.component(_:from:)();
    (*(v11 + 8))(v14, v10);
    result = (*(v6 + 8))(v9, v5);
  }

  *v29 = v24;
  return result;
}

uint64_t sub_1005C7468(id *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = v16 - v9;
  v11 = [*a1 displayDateDate];
  if (v11)
  {
    v12 = v11;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v10, v6, v2);
    sub_1005CC954(&qword_1009464D0, &type metadata accessor for Date);
    v13 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v3 + 8))(v10, v2);
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1005C7620(uint64_t a1)
{
  result = sub_1005CC954(&qword_10094DEB0, &type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005C7678(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v90;
    if (!*v90)
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

    v82 = v8 + 2;
    v83 = v8[2];
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1005C7C00((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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
    v36 = v8[3];
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1003658B8((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v37;
    v38 = v8 + 4;
    v39 = &v8[2 * v5 + 4];
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = v8[4];
          v41 = v8[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[2 * v37];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[2 * v5];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[2 * v37];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[2 * v5];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = &v38[2 * v5 - 2];
        v78 = *v77;
        v79 = &v38[2 * v5];
        v80 = v79[1];
        sub_1005C7C00((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v8[2];
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove(&v38[2 * v5], v79 + 2, 16 * (v81 - 1 - v5));
        v8[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[2 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[2 * v37];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[2 * v5];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_1005C7C00(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
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

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void sub_1005C7E04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9[2] = a5;
  sub_100260DE4(sub_1005CC99C, v9, a2, a3, a4);
  if (v8)
  {
    goto LABEL_6;
  }

  if (v7 > a3)
  {
    if ((a4 >> 1) < a3)
    {
      __break(1u);
    }

    else if ((a4 >> 1) >= v7)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_6:
        swift_unknownObjectRetain();
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_1005C7ED8(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t, void), uint64_t a5, uint64_t a6)
{
  v157 = a6;
  v169 = a4;
  v135 = a2;
  v129 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day();
  v8 = *(v129 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v129);
  v124 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v126 = &v123 - v12;
  v13 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v147 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v141 = &v123 - v17;
  v166 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v18 = *(v166 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v166);
  v150 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v140 = &v123 - v22;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v133 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v127 = &v123 - v28;
  __chkstk_darwin(v29);
  v146 = &v123 - v30;
  __chkstk_darwin(v31);
  v156 = &v123 - v32;
  __chkstk_darwin(v33);
  v158 = &v123 - v34;
  v35 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v130 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v155 = &v123 - v39;
  __chkstk_darwin(v40);
  v42 = &v123 - v41;
  __chkstk_darwin(v43);
  v45 = &v123 - v44;
  v46 = type metadata accessor for Calendar();
  v136 = *(v46 - 8);
  v47 = *(v136 + 64);
  __chkstk_darwin(v46);
  v149 = &v123 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v49 = *(v24 + 56);
  v159 = v45;
  v142 = v23;
  v145 = v24 + 56;
  v144 = v49;
  v49(v45, 1, 1, v23);
  v50 = v169 >> 1;
  swift_unknownObjectRetain();
  v167 = v50;
  v148 = v18;
  v128 = v8;
  if (v50 == a3)
  {
    v137 = _swiftEmptyArrayStorage;
    v51 = a3;
    v52 = v142;
LABEL_48:
    swift_unknownObjectRelease();
    v55 = (v167 - v51);
    if (v167 <= v51)
    {
      sub_1000050A4(v159, &unk_100938850, qword_100795AE0);
      (*(v136 + 8))(v149, v46);
      return v137;
    }

    v165 = v51;
    v100 = v159;
    v101 = v130;
    sub_100010364(v159, v130, &unk_100938850, qword_100795AE0);
    if ((*(v24 + 48))(v101, 1, v52) == 1)
    {
      sub_1000050A4(v100, &unk_100938850, qword_100795AE0);
      (*(v136 + 8))(v149, v46);
      sub_1000050A4(v101, &unk_100938850, qword_100795AE0);
      return v137;
    }

    (*(v24 + 32))(v133, v101, v52);
    v102 = v165;
    if (v165 < a3)
    {
LABEL_76:
      __break(1u);
    }

    else
    {
      v132 = v46;
      v131 = v24;
      v103 = (v18 + 48);
      v104 = (v18 + 32);
      v134 = a1;
      swift_unknownObjectRetain();
      v105 = _swiftEmptyArrayStorage;
      v106 = (v135 + 8 * v102);
      v107 = v147;
      do
      {
        v108 = *v106;
        v109 = [v108 objectID];
        v110 = v109;
        v111 = v157;
        if (*(v157 + 16))
        {
          v112 = sub_100363FF4(v109);
          if (v113)
          {
            v114 = *(*(v111 + 56) + 8 * v112);
          }

          else
          {
            v114 = 0;
          }

          v107 = v147;
        }

        else
        {
          v114 = 0;
        }

        sub_1005384A4(v108, v114, 0, v107);
        v115 = v166;
        if ((*v103)(v107, 1, v166) == 1)
        {
          sub_1000050A4(v107, &qword_100940628, &unk_1007A6A20);
        }

        else
        {
          v116 = *v104;
          (*v104)(v150, v107, v115);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_100365A24(0, *(v105 + 2) + 1, 1, v105);
          }

          v118 = *(v105 + 2);
          v117 = *(v105 + 3);
          if (v118 >= v117 >> 1)
          {
            v105 = sub_100365A24(v117 > 1, v118 + 1, 1, v105);
          }

          *(v105 + 2) = v118 + 1;
          v116(&v105[((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v118], v150, v166);
        }

        ++v106;
        --v55;
      }

      while (v55);
      v24 = v131;
      (*(v131 + 16))(v127, v133, v142);
      v55 = v124;
      REMRemindersListDataView.ScheduledDateBucketsModel.Day.init(date:reminders:)();
      a1 = v137;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_70;
      }
    }

    a1 = sub_100365C28(0, a1[2] + 1, 1, a1);
LABEL_70:
    v119 = v132;
    v120 = v159;
    v122 = a1[2];
    v121 = a1[3];
    if (v122 >= v121 >> 1)
    {
      a1 = sub_100365C28(v121 > 1, v122 + 1, 1, a1);
    }

    swift_unknownObjectRelease();
    (*(v24 + 8))(v133, v142);
    sub_1000050A4(v120, &unk_100938850, qword_100795AE0);
    (*(v136 + 8))(v149, v119);
    a1[2] = v122 + 1;
    (*(v128 + 32))(a1 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v122, v55, v129);
    return a1;
  }

  v53 = 0;
  v161 = (v24 + 32);
  v169 = v24 + 48;
  v143 = (v24 + 16);
  v151 = (v24 + 8);
  v139 = (v18 + 48);
  v138 = (v18 + 32);
  v123 = v8 + 32;
  v137 = _swiftEmptyArrayStorage;
  v54 = a3;
  v51 = a3;
  v52 = v142;
  v134 = a1;
  v131 = v24;
  v132 = v46;
  v154 = a3;
  v152 = v42;
  while (2)
  {
    v24 = 0;
    v163 = v167 - v54;
    v164 = v135 + 8 * v54;
    v125 = v51;
    v55 = (a3 + v53 - v51);
    v56 = v158;
    v57 = &unk_100938850;
    a1 = qword_100795AE0;
    v58 = v54;
    v153 = v54;
    v165 = v53;
    while (1)
    {
      if (v58 < a3 || v58 + v24 >= v167)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (__OFADD__(v53 + v24, 1))
      {
        goto LABEL_75;
      }

      v162 = v53 + v24 + 1;
      v59 = *(v164 + 8 * v24);
      v60 = [v59 displayDateDate];
      if (v60)
      {
        break;
      }

LABEL_6:
      ++v24;
      ++v55;
      v53 = v165;
      if (v163 == v24)
      {
        v51 = v125;
        a1 = v134;
        v24 = v131;
        v18 = v148;
        v46 = v132;
        goto LABEL_48;
      }
    }

    v168 = v59;
    v61 = v56;
    v62 = v156;
    v63 = v60;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v160 = *v161;
    v160(v61, v62, v52);
    v64 = v159;
    v65 = v52;
    v66 = a1;
    v67 = v57;
    v68 = v152;
    sub_100010364(v159, v152, v67, v66);
    v69 = *v169;
    if ((*v169)(v68, 1, v65) == 1)
    {
      sub_1000050A4(v64, v67, v66);
      sub_1000050A4(v68, v67, v66);
      (*v143)(v64, v61, v65);
      v144(v64, 0, 1, v65);
    }

    else
    {
      sub_1000050A4(v68, v67, v66);
    }

    v57 = v67;
    v70 = v155;
    sub_100010364(v64, v155, v67, v66);
    a1 = v66;
    if (v69(v70, 1, v65) == 1)
    {
      v56 = v158;
      (*v151)(v158, v65);

      sub_1000050A4(v70, v57, v66);
      v58 = v153;
      a3 = v154;
      v52 = v65;
      goto LABEL_6;
    }

    v71 = v146;
    v160(v146, v70, v65);
    v72 = v158;
    result = Calendar.isDate(_:inSameDayAs:)();
    v52 = v65;
    if (result)
    {

      v74 = *v151;
      (*v151)(v71, v65);
      v74(v72, v65);
      v56 = v72;
      v58 = v153;
      a3 = v154;
      goto LABEL_6;
    }

    v75 = v154 + v165 + v24;
    if (__OFADD__(v154, v165 + v24))
    {
      __break(1u);
      goto LABEL_79;
    }

    v76 = v125;
    if (v75 < v125)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v167 < v125)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v125 < v154)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v167 < v75)
    {
LABEL_82:
      __break(1u);
      break;
    }

    if ((v75 & 0x8000000000000000) == 0)
    {
      swift_unknownObjectRetain();
      v77 = _swiftEmptyArrayStorage;
      v165 = v75;
      if (v76 != v75)
      {
        v87 = (v135 + 8 * v76);
        do
        {
          v88 = *v87;
          v89 = [v88 objectID];
          v90 = v89;
          v91 = v157;
          if (*(v157 + 16))
          {
            v92 = sub_100363FF4(v89);
            if (v93)
            {
              v94 = *(*(v91 + 56) + 8 * v92);
            }

            else
            {
              v94 = 0;
            }

            v52 = v142;
          }

          else
          {
            v94 = 0;
          }

          v95 = v141;
          sub_1005384A4(v88, v94, 0, v141);
          v96 = v166;
          if ((*v139)(v95, 1, v166) == 1)
          {
            sub_1000050A4(v95, &qword_100940628, &unk_1007A6A20);
          }

          else
          {
            v97 = *v138;
            (*v138)(v140, v95, v96);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_100365A24(0, *(v77 + 2) + 1, 1, v77);
            }

            v99 = *(v77 + 2);
            v98 = *(v77 + 3);
            if (v99 >= v98 >> 1)
            {
              v77 = sub_100365A24(v98 > 1, v99 + 1, 1, v77);
            }

            *(v77 + 2) = v99 + 1;
            v97(&v77[((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v99], v140, v166);
          }

          ++v87;
          --v55;
        }

        while (v55);
      }

      (*v143)(v127, v146, v52);
      REMRemindersListDataView.ScheduledDateBucketsModel.Day.init(date:reminders:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_100365C28(0, v137[2] + 1, 1, v137);
      }

      v78 = v153;
      v80 = v137[2];
      v79 = v137[3];
      if (v80 >= v79 >> 1)
      {
        v137 = sub_100365C28(v79 > 1, v80 + 1, 1, v137);
      }

      v81 = v78 + v24 + 1;
      v82 = ~v78 + v167;
      v83 = v134;
      swift_unknownObjectRelease();

      (*v151)(v146, v52);
      v84 = v159;
      sub_1000050A4(v159, &unk_100938850, a1);
      v85 = v137;
      v137[2] = v80 + 1;
      (*(v128 + 32))(v85 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v80, v126, v129);
      v160(v84, v158, v52);
      v144(v84, 0, 1, v52);
      v54 = v81;
      v53 = v162;
      v86 = v82 == v24;
      a1 = v83;
      v24 = v131;
      v18 = v148;
      v46 = v132;
      a3 = v154;
      v51 = v165;
      if (v86)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

size_t sub_1005C9018(unint64_t a1, uint64_t a2)
{
  v442 = a1;
  v404 = type metadata accessor for Calendar.SearchDirection();
  v380 = *(v404 - 8);
  v3 = *(v380 + 64);
  __chkstk_darwin(v404);
  v403 = &v366 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v379 = *(v402 - 8);
  v5 = *(v379 + 64);
  __chkstk_darwin(v402);
  v401 = &v366 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = type metadata accessor for Calendar.MatchingPolicy();
  v378 = *(v400 - 8);
  v7 = *(v378 + 64);
  __chkstk_darwin(v400);
  v399 = &v366 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v407 = &v366 - v11;
  v12 = sub_1000F5104(&qword_100946078, &qword_1007ACC30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v406 = &v366 - v14;
  v405 = type metadata accessor for DateComponents();
  v377 = *(v405 - 8);
  v15 = *(v377 + 64);
  __chkstk_darwin(v405);
  v382 = &v366 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v398 = &v366 - v18;
  v390 = type metadata accessor for Calendar.Component();
  v376 = *(v390 - 8);
  v19 = *(v376 + 64);
  __chkstk_darwin(v390);
  v389 = &v366 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v381 = &v366 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v397 = &v366 - v25;
  __chkstk_darwin(v26);
  v374 = (&v366 - v27);
  v28 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v450 = (&v366 - v30);
  v452 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v446 = *(v452 - 1);
  v31 = *(v446 + 64);
  __chkstk_darwin(v452);
  v449 = &v366 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v440 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket();
  v425 = *(v440 - 8);
  v33 = *(v425 + 64);
  __chkstk_darwin(v440);
  v391 = &v366 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v414 = &v366 - v36;
  __chkstk_darwin(v37);
  v371 = (&v366 - v38);
  __chkstk_darwin(v39);
  v431 = (&v366 - v40);
  __chkstk_darwin(v41);
  v396 = (&v366 - v42);
  v417 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsStyle();
  v416 = *(v417 - 1);
  v43 = *(v416 + 64);
  __chkstk_darwin(v417);
  v412 = &v366 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = type metadata accessor for Date();
  v392 = *(v438 - 8);
  v45 = v392[8];
  __chkstk_darwin(v438);
  v393 = &v366 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v420 = &v366 - v48;
  __chkstk_darwin(v49);
  v375 = &v366 - v50;
  __chkstk_darwin(v51);
  v430 = &v366 - v52;
  __chkstk_darwin(v53);
  v419 = &v366 - v54;
  __chkstk_darwin(v55);
  v444 = &v366 - v56;
  v409 = type metadata accessor for Calendar();
  v386 = *(v409 - 8);
  v57 = *(v386 + 64);
  __chkstk_darwin(v409);
  v432 = &v366 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v427 = *(v426 - 8);
  v59 = *(v427 + 64);
  __chkstk_darwin(v426);
  v385 = &v366 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v395 = &v366 - v62;
  __chkstk_darwin(v63);
  v373 = (&v366 - v64);
  __chkstk_darwin(v65);
  v428 = (&v366 - v66);
  __chkstk_darwin(v67);
  v411 = &v366 - v68;
  __chkstk_darwin(v69);
  v424 = &v366 - v70;
  __chkstk_darwin(v71);
  v441 = (&v366 - v72);
  v436 = _s10PredicatesOMa(0);
  v73 = *(*(v436 - 8) + 64);
  __chkstk_darwin(v436);
  v433 = &v366 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v451 = *(Subtasks - 1);
  v75 = *(v451 + 64);
  __chkstk_darwin(Subtasks);
  v423 = &v366 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v429 = &v366 - v78;
  __chkstk_darwin(v79);
  v447 = &v366 - v80;
  __chkstk_darwin(v81);
  v445 = &v366 - v82;
  v83 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v84 = *(v83 - 8);
  v85 = v84[8];
  __chkstk_darwin(v83);
  v87 = &v366 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v90 = &v366 - v89;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v92 = *(Configuration - 8);
  v93 = *(v92 + 64);
  __chkstk_darwin(Configuration);
  v384 = &v366 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v95);
  v394 = &v366 - v96;
  __chkstk_darwin(v97);
  v372 = (&v366 - v98);
  __chkstk_darwin(v99);
  v415 = &v366 - v100;
  __chkstk_darwin(v101);
  v410 = &v366 - v102;
  __chkstk_darwin(v103);
  v422 = (&v366 - v104);
  __chkstk_darwin(v105);
  v421 = &v366 - v106;
  __chkstk_darwin(v107);
  v109 = &v366 - v108;
  v437 = a2;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v110 = *(v92 + 8);
  v439 = Configuration;
  v434 = v110;
  v435 = v92 + 8;
  v110(v109, Configuration);
  v111 = v84[13];
  v111(v87, enum case for REMRemindersListDataView.SortingStyle.default(_:), v83);
  LOBYTE(a2) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v112 = v84[1];
  v112(v87, v83);
  v112(v90, v83);
  if ((a2 & 1) == 0)
  {
    REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
    v434(v109, v439);
    v113 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
    v114 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v114 - 8) + 104))(v87, v113, v114);
    v111(v87, enum case for REMRemindersListDataView.SortingStyle.displayDate(_:), v83);
    LOBYTE(v113) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v112(v87, v83);
    v112(v90, v83);
    if ((v113 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v87 = v445;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v115 = v434;
  v434(v109, v439);
  v116 = v451;
  v117 = *(v451 + 104);
  v118 = v447;
  LODWORD(v413) = enum case for REMRemindersListDataView.FetchSubtasks.on(_:);
  v119 = Subtasks;
  v117(v447);
  sub_1005CC954(&qword_100940630, &type metadata accessor for REMRemindersListDataView.FetchSubtasks);
  v120 = dispatch thunk of static Equatable.== infix(_:_:)();
  v121 = *(v116 + 8);
  v121(v118, v119);
  v445 = v116 + 8;
  v121(v87, v119);
  v122 = v121;
  v123 = v439;
  if (v120)
  {
LABEL_11:
    v144 = objc_opt_self();
    v145 = String._bridgeToObjectiveC()();
    [v144 internalErrorWithDebugDescription:v145];

    swift_willThrow();
    return v87;
  }

  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v124 = v433;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v115(v109, v123);
  swift_storeEnumTagMultiPayload();
  v383 = sub_100043AA8();
  sub_1000513B4(v124);
  if (qword_1009363F8 != -1)
  {
    goto LABEL_238;
  }

LABEL_5:
  v436 = v122;
  v125 = qword_100974F68;
  v126 = qword_100936400;

  v127 = v438;
  if (v126 != -1)
  {
    swift_once();
  }

  v453 = v125;

  sub_100271A80(v128);
  v129 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v130 = [objc_allocWithZone(NSFetchRequest) init];
  v131 = [swift_getObjCClassFromMetadata() entity];
  [v130 setEntity:v131];

  [v130 setAffectedStores:0];
  [v130 setPredicate:v383];
  v453 = _swiftEmptySetSingleton;

  sub_100050AD0(v132);

  v133 = v443;
  sub_1003FE014(v453);
  v122 = v133;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v130 setPropertiesToFetch:isa];

  if (qword_100936680 != -1)
  {
    swift_once();
  }

  v135 = _s9UtilitiesO12SortingStyleOMa();
  v136 = sub_100006654(v135, qword_10094DE78);
  v137 = v427;
  v138 = v441;
  v139 = v426;
  (*(v427 + 104))(v441, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v426);
  sub_10053CE0C(v136, v138, 0);
  v141 = *(v137 + 8);
  v87 = v137 + 8;
  v140 = v141;
  (v141)(v138, v139);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v142 = Array._bridgeToObjectiveC()().super.isa;

  [v130 setSortDescriptors:v142];

  v143 = NSManagedObjectContext.fetch<A>(_:)();
  v443 = v133;
  if (v133)
  {

    return v87;
  }

  v447 = v143;
  v418 = v140;
  v408 = v129;
  v367 = v130;
  v427 = v87;
  v147 = v421;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v148 = v429;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v149 = v147;
  v150 = v439;
  v151 = v434;
  v434(v149, v439);
  v152 = v422;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v153 = v424;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v151(v152, v150);
  v154 = v451;
  v155 = v423;
  v156 = Subtasks;
  (*(v451 + 16))(v423, v148, Subtasks);
  v157 = (*(v154 + 88))(v155, v156);
  if (v157 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:) || v157 == v413)
  {
    v451 = sub_10038E654(_swiftEmptyArrayStorage);
    v158 = v444;
    v159 = v418;
  }

  else
  {
    v158 = v444;
    v159 = v418;
    if (v157 != enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
      goto LABEL_261;
    }

    v87 = v447;
    v160 = v443;
    sub_100539C70(v447, v153, v442, 0);
    v162 = v367;
    v443 = v160;
    if (v160)
    {

      (v159)(v153, v426);
      (v436)(v429, Subtasks);
      return v87;
    }

    v451 = v161;
  }

  (v159)(v153, v426);
  (v436)(v429, Subtasks);
  static Calendar.current.getter();
  v87 = v419;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.today.getter();
  Calendar.startOfDay(for:)();
  v163 = v392[1];
  v369 = v392 + 1;
  v368 = v163;
  v163(v87, v127);
  v164 = v447;
  v433 = (v447 >> 62);
  if (v447 >> 62)
  {
    goto LABEL_245;
  }

  v436 = *((v447 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v165 = v443;
LABEL_22:
  v413 = v164 & 0xC000000000000001;
  if ((v164 & 0xC000000000000001) != 0)
  {

    if (v436)
    {
      v166 = 0;
      v167 = v436;
      do
      {
        v168 = v166 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v166);
        v166 = v168;
      }

      while (v167 != v168);
    }

    if (!v433)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (!v433)
    {
LABEL_27:
      v169 = 0;
      v442 = v447 & 0xFFFFFFFFFFFFFF8;
      v159 = ((v447 & 0xFFFFFFFFFFFFFF8) + 32);
      v170 = ((2 * v436) | 1);
      goto LABEL_30;
    }
  }

  v442 = _CocoaArrayWrapper.subscript.getter();
  v159 = v171;
  v169 = v172;
  v170 = v173;
LABEL_30:
  v174 = v412;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.style.getter();
  v175 = (*(v416 + 88))(v174, v417);
  LODWORD(v423) = enum case for REMRemindersListDataView.ScheduledByDateBucketsStyle.regular(_:);
  LODWORD(v424) = v175;
  if (v175 != enum case for REMRemindersListDataView.ScheduledByDateBucketsStyle.regular(_:) && v175 != enum case for REMRemindersListDataView.ScheduledByDateBucketsStyle.compact(_:))
  {
    goto LABEL_260;
  }

  sub_1005C7E04(v442, v159, v169, v170, v158);
  if (v177)
  {
    v181 = v177;
    if (v179 != v180 >> 1)
    {
      Subtasks = (v180 >> 1);
      v238 = v410;
      v239 = v178;
      v240 = v179;
      v87 = v180;
      REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
      v241 = v411;
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v434(v238, v439);
      v242 = sub_1005C7ED8(v181, v239, v240, v87, v241, v451);
      if (v165)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        (v418)(v241, v426);
        v368(v444, v438);
        goto LABEL_195;
      }

      v256 = v242;
      (v418)(v241, v426);
      v257 = v396;
      *v396 = v256;
      (*(v425 + 104))(v257, enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.pastDue(_:), v440);
      v258 = sub_100365C50(0, 1, 1, _swiftEmptyArrayStorage);
      v260 = v258[2];
      v259 = v258[3];
      v261 = v258;
      if (v260 >= v259 >> 1)
      {
        v261 = sub_100365C50(v259 > 1, v260 + 1, 1, v258);
      }

      *(v261 + 16) = v260 + 1;
      (*(v425 + 32))(v261 + ((*(v425 + 80) + 32) & ~*(v425 + 80)) + *(v425 + 72) * v260, v257, v440);
      v262 = Subtasks;
      if (v436 < Subtasks)
      {
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
LABEL_261:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
LABEL_262:

        __break(1u);
        goto LABEL_263;
      }

      if (v433)
      {
        v263 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v263 = *((v447 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v263 < v262)
      {
        goto LABEL_251;
      }

      if (!v413 || v262 == v436)
      {
        v267 = v447;
      }

      else
      {
        if (v262 >= v436)
        {
          goto LABEL_254;
        }

        v267 = v447;

        v268 = Subtasks;
        v269 = v436;
        do
        {
          v270 = v268 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v268);
          v268 = v270;
        }

        while (v269 != v270);
      }

      v443 = 0;
      if (v433)
      {

        v271 = _CocoaArrayWrapper.subscript.getter();
        v159 = v272;
        v169 = v273;
        v445 = v274;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v442 = v271;
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v159 = ((v267 & 0xFFFFFFFFFFFFFF8) + 32);
        v445 = (2 * v436) | 1;
        v442 = v267 & 0xFFFFFFFFFFFFFF8;
        v169 = Subtasks;
      }

      v87 = v261;
      v127 = v438;
      goto LABEL_40;
    }

    v445 = v170;
    v443 = v165;
    swift_unknownObjectRelease();
  }

  else
  {
    v445 = v170;
    v443 = v165;
  }

  v87 = _swiftEmptyArrayStorage;
LABEL_40:
  v182 = v430;
  v183 = 2;
  if (v424 == v423)
  {
    v183 = 7;
  }

  v410 = v183;
  v122 = v447;
  v184 = (v446 + 48);
  Subtasks = (v446 + 32);
  if (v447 < 0)
  {
    v185 = v447;
  }

  else
  {
    v185 = v447 & 0xFFFFFFFFFFFFFF8;
  }

  v411 = v185;
  v412 = (v447 & 0xFFFFFFFFFFFFFF8);
  v388 = (v447 & 0xFFFFFFFFFFFFFF8) + 32;
  v186 = 1;
  v387 = ((2 * v436) | 1);
  v422 = (v392 + 2);
  LODWORD(v396) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.day(_:);
  v417 = (v425 + 104);
  v416 = v425 + 32;
  v421 = (v392 + 5);
  v187 = v444;
  do
  {
    v429 = v186;
    v189 = Calendar.beginningOfNextDay(_:)();
    __chkstk_darwin(v189);
    v364 = v182;
    v190 = v443;
    sub_100260DE4(sub_1005CC918, &v362, v159, v169, v445);
    v443 = v190;
    v441 = v87;
    if (v192)
    {
      v193 = v159;
      v194 = v445;
      goto LABEL_55;
    }

    if (v169 < v191)
    {
      if ((v445 >> 1) < v169)
      {
        goto LABEL_235;
      }

      if ((v445 >> 1) < v191)
      {
        goto LABEL_236;
      }

      if (v191 < 0)
      {
        goto LABEL_237;
      }

      v193 = v159;
      v194 = 2 * v191;
LABEL_55:
      swift_unknownObjectRetain();
      v195 = v415;
      REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v434(v195, v439);
      v196 = (v194 >> 1);
      v197 = _swiftEmptyArrayStorage;
      v445 = v196;
      v159 = (v196 - v169);
      if (v196 != v169)
      {
        v200 = v445;
        if (v169 > v445)
        {
          v200 = v169;
        }

        v201 = v200 - v169;
        v202 = &v193[v169];
        while (v201)
        {
          v203 = *v202;
          v204 = [v203 objectID];
          v205 = v204;
          v206 = v451;
          if (*(v451 + 16))
          {
            v207 = sub_100363FF4(v204);
            if (v208)
            {
              v209 = *(*(v206 + 56) + 8 * v207);
            }

            else
            {
              v209 = 0;
            }

            v122 = v447;
          }

          else
          {
            v209 = 0;
          }

          v210 = v450;
          sub_1005384A4(v203, v209, 0, v450);
          v211 = v452;
          if ((*v184)(v210, 1, v452) == 1)
          {
            sub_1000050A4(v210, &qword_100940628, &unk_1007A6A20);
          }

          else
          {
            v212 = *Subtasks;
            (*Subtasks)(v449, v210, v211);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v197 = sub_100365A24(0, *(v197 + 2) + 1, 1, v197);
            }

            v214 = *(v197 + 2);
            v213 = *(v197 + 3);
            if (v214 >= v213 >> 1)
            {
              v197 = sub_100365A24(v213 > 1, v214 + 1, 1, v197);
            }

            *(v197 + 2) = v214 + 1;
            v212(&v197[((*(v446 + 80) + 32) & ~*(v446 + 80)) + *(v446 + 72) * v214], v449, v452);
          }

          --v201;
          ++v202;
          v159 = (v159 - 1);
          if (!v159)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_111:
        v255 = _swiftEmptyArrayStorage;
        v87 = v438;
        goto LABEL_145;
      }

LABEL_56:
      (v418)(v428, v426);
      v198 = v445;
      if (v436 < v445)
      {
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        swift_once();
        goto LABEL_5;
      }

      if (v433)
      {
        v199 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v199 = *(v412 + 2);
      }

      v127 = v438;
      v187 = v444;
      if (v199 < v198)
      {
        goto LABEL_231;
      }

      if (!v413 || v198 == v436)
      {

        if (!v433)
        {
LABEL_85:
          swift_unknownObjectRelease_n();
          v442 = v412;
          v159 = v388;
          v169 = v445;
          v445 = v387;
LABEL_88:
          v182 = v430;
          goto LABEL_90;
        }
      }

      else
      {
        if (v198 >= v436)
        {
          goto LABEL_232;
        }

        v215 = v198;
        v216 = v436;
        do
        {
          v217 = v215 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v215);
          v215 = v217;
        }

        while (v216 != v217);
        if (!v433)
        {
          goto LABEL_85;
        }
      }

      v218 = _CocoaArrayWrapper.subscript.getter();
      v159 = v219;
      v169 = v220;
      v445 = v221;
      swift_unknownObjectRelease_n();
      v442 = v218;
      goto LABEL_88;
    }

    v197 = _swiftEmptyArrayStorage;
LABEL_90:
    if (v424 == v423)
    {
    }

    else
    {
      v222 = *(v197 + 2);

      if (!v222)
      {

        v87 = v441;
        goto LABEL_47;
      }
    }

    (*v422)(v419, v187);
    v223 = v431;
    REMRemindersListDataView.ScheduledDateBucketsModel.Day.init(date:reminders:)();
    (*v417)(v223, v396, v440);
    v87 = v441;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_100365C50(0, *(v87 + 16) + 1, 1, v87);
    }

    v225 = *(v87 + 16);
    v224 = *(v87 + 24);
    if (v225 >= v224 >> 1)
    {
      v87 = sub_100365C50(v224 > 1, v225 + 1, 1, v87);
    }

    *(v87 + 16) = v225 + 1;
    (*(v425 + 32))(v87 + ((*(v425 + 80) + 32) & ~*(v425 + 80)) + *(v425 + 72) * v225, v431, v440);
    v187 = v444;
    v182 = v430;
LABEL_47:
    v188 = *v421;
    (*v421)(v187, v182, v127);
    v186 = (v429 + 1);
  }

  while (v429 != v410);
  v370 = v188;
  if (v424 == v423)
  {
    v127 = v443;
    v226 = v380;
    v227 = v379;
    v228 = v378;
    v229 = v377;
    goto LABEL_152;
  }

  v450 = v169;
  v441 = v87;
  v230 = v376;
  v231 = v389;
  v232 = v390;
  (*(v376 + 104))(v389, enum case for Calendar.Component.day(_:), v390);
  v233 = v374;
  v234 = v444;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v230 + 8))(v231, v232);
  v235 = v392;
  v236 = v392[6];
  v237 = v236(v233, 1, v127);
  if (v237 == 1)
  {
    v122 = v375;
    (*v422)(v375, v234, v127);
    if (v236(v233, 1, v127) != 1)
    {
      sub_1000050A4(v233, &unk_100938850, qword_100795AE0);
    }
  }

  else
  {
    v122 = v375;
    (v235[4])(v375, v233, v127);
  }

  sub_1005C7E04(v442, v159, v450, v445, v122);
  v247 = v373;
  if (!v243)
  {
    goto LABEL_111;
  }

  v248 = v243;
  v249 = v244;
  v250 = v245;
  v87 = v246;
  v251 = v372;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v434(v251, v439);
  v252 = v443;
  v253 = sub_1005C7ED8(v248, v249, v250, v87, v247, v451);
  if (v252)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (v418)(v247, v426);
    v254 = v122;
    goto LABEL_194;
  }

  v255 = v253;
  (v418)(v247, v426);
  v264 = v436;
  v450 = (v87 >> 1);
  v265 = v436 < (v87 >> 1);
  v87 = v438;
  if (v265)
  {
    goto LABEL_252;
  }

  if (v433)
  {
    v266 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v266 = *(v412 + 2);
  }

  if (v266 < v450)
  {
    goto LABEL_253;
  }

  v443 = 0;
  if (!v413 || v450 == v264)
  {
  }

  else
  {
    if (v450 >= v264)
    {
      goto LABEL_255;
    }

    v275 = v450;
    do
    {
      v276 = (v275 + 1);
      _ArrayBuffer._typeCheckSlowPath(_:)(v275);
      v275 = v276;
    }

    while (v264 != v276);
  }

  if (v433)
  {

    v277 = _CocoaArrayWrapper.subscript.getter();
    v159 = v278;
    v450 = v279;
    v445 = v280;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v442 = v277;
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v442 = v412;
    v159 = v388;
    v445 = v387;
  }

LABEL_145:
  v127 = v371;
  v281 = v255[2];

  v158 = v444;
  if (v281)
  {
    v282 = *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48);
    (*v422)(v127, v158, v87);
    *&v127[v282] = v255;
    (*v417)(v127, enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.nextFiveDays(_:), v440);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_147;
  }

  while (2)
  {
    v370(v158, v122, v87);
    v226 = v380;
    v227 = v379;
    v228 = v378;
    v229 = v377;
    v87 = v441;
    v169 = v450;
    v127 = v443;
LABEL_152:
    v446 = *(v386 + 56);
    Subtasks = (v386 + 56);
    LODWORD(v396) = enum case for Calendar.MatchingPolicy.nextTime(_:);
    v380 = v228 + 104;
    LODWORD(v379) = enum case for Calendar.RepeatedTimePolicy.first(_:);
    v378 = v227 + 104;
    LODWORD(v377) = enum case for Calendar.SearchDirection.forward(_:);
    v375 = (v226 + 104);
    v374 = (v226 + 8);
    v373 = (v227 + 8);
    v372 = (v228 + 8);
    v431 = (v229 + 8);
    v430 = (v392 + 6);
    v371 = (v392 + 4);
    LODWORD(v392) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.month(_:);
    v287 = 1;
LABEL_155:
    v449 = v287;
    v450 = v169;
    v452 = v159;
    v441 = v87;
    v443 = v127;
    (v446)(v406, 1, 1, v409);
    v288 = type metadata accessor for TimeZone();
    v289 = *(v288 - 8);
    v290 = *(v289 + 56);
    v429 = v288;
    v428 = v290;
    v419 = (v289 + 56);
    (v290)(v407, 1, 1);
    LOBYTE(v365) = 1;
    v364 = 0;
    v363 = 1;
    v362 = 0;
    v291 = v398;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v292 = v399;
    v293 = v400;
    (*v380)(v399, v396, v400);
    v294 = v401;
    v295 = v402;
    (*v378)(v401, v379, v402);
    v296 = v403;
    v297 = v404;
    (*v375)(v403, v377, v404);
    v298 = v397;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*v374)(v296, v297);
    v299 = v298;
    (*v373)(v294, v295);
    v300 = v438;
    (*v372)(v292, v293);
    v415 = *v431;
    (v415)(v291, v405);
    v301 = *v430;
    v302 = (*v430)(v298, 1, v300);
    v410 = v301;
    if (v302 == 1)
    {
      v303 = v420;
      (*v422)(v420, v444, v300);
      v304 = (v301)(v298, 1, v300);
      v158 = v439;
      v159 = v434;
      v87 = v435;
      v305 = v443;
      v169 = v450;
      if (v304 != 1)
      {
        v304 = sub_1000050A4(v299, &unk_100938850, qword_100795AE0);
      }
    }

    else
    {
      v303 = v420;
      v304 = (*v371)(v420, v298, v300);
      v158 = v439;
      v159 = v434;
      v87 = v435;
      v305 = v443;
      v169 = v450;
    }

    __chkstk_darwin(v304);
    v364 = v303;
    sub_100260DE4(sub_1005CC99C, &v362, v452, v169, v445);
    v127 = v305;
    if (v307)
    {
      v308 = v395;
      goto LABEL_166;
    }

    v122 = v447;
    if (v169 >= v306)
    {
      v313 = _swiftEmptyArrayStorage;
      v87 = v441;
      v159 = v452;
      goto LABEL_182;
    }

    v308 = v395;
    if ((v445 >> 1) < v169)
    {
      goto LABEL_240;
    }

    if ((v445 >> 1) < v306)
    {
      goto LABEL_241;
    }

    if (v306 < 0)
    {
      goto LABEL_242;
    }

    v445 = v445 & 1 | (2 * v306);
LABEL_166:
    v309 = v442;
    swift_unknownObjectRetain();
    v310 = v394;
    REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
    (v159)(v310, v158);
    v311 = v445;
    v312 = sub_1005C7ED8(v309, v452, v450, v445, v308, v451);
    if (!v305)
    {
      v313 = v312;
      (v418)(v308, v426);
      v169 = v311 >> 1;
      v158 = v436;
      v87 = v441;
      v122 = v447;
      if (v436 < v169)
      {
        goto LABEL_233;
      }

      if (v433)
      {
        v314 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v314 = *(v412 + 2);
      }

      if (v314 < v169)
      {
        goto LABEL_234;
      }

      if (!v413 || v169 == v158)
      {

        if (!v433)
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v169 >= v158)
        {
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          v436 = _CocoaArrayWrapper.endIndex.getter();
          if (v436 < 0)
          {
            goto LABEL_258;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < 0)
          {
            goto LABEL_259;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < v436)
          {
            __break(1u);
LABEL_249:
            v441 = sub_100365C50(0, v441[2] + 1, 1, v441);
LABEL_147:
            v284 = v441[2];
            v283 = v441[3];
            if (v284 >= v283 >> 1)
            {
              v441 = sub_100365C50(v283 > 1, v284 + 1, 1, v441);
            }

            v285 = v440;
            v286 = v441;
            v441[2] = v284 + 1;
            (*(v425 + 32))(v286 + ((*(v425 + 80) + 32) & ~*(v425 + 80)) + *(v425 + 72) * v284, v127, v285);
            continue;
          }

LABEL_263:
          v127 = v438;
          v165 = v443;
          v158 = v444;
          v164 = v447;
          goto LABEL_22;
        }

        v315 = v169;
        do
        {
          v316 = (v315 + 1);
          _ArrayBuffer._typeCheckSlowPath(_:)(v315);
          v315 = v316;
        }

        while (v158 != v316);
        if (!v433)
        {
LABEL_178:
          swift_unknownObjectRelease_n();
          v442 = v412;
          v159 = v388;
          v445 = v387;
          goto LABEL_182;
        }
      }

      v317 = _CocoaArrayWrapper.subscript.getter();
      v159 = v318;
      v169 = v319;
      v445 = v320;
      swift_unknownObjectRelease_n();
      v442 = v317;
LABEL_182:
      if (v424 == v423)
      {

        goto LABEL_185;
      }

      v321 = v313[2];

      if (v321)
      {
LABEL_185:
        v322 = *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48);
        v323 = v414;
        (*v422)(v414, v444, v438);
        *&v323[v322] = v313;
        (*v417)(v323, v392, v440);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_100365C50(0, *(v87 + 16) + 1, 1, v87);
        }

        v325 = *(v87 + 16);
        v324 = *(v87 + 24);
        if (v325 >= v324 >> 1)
        {
          v87 = sub_100365C50(v324 > 1, v325 + 1, 1, v87);
        }

        *(v87 + 16) = v325 + 1;
        (*(v425 + 32))(v87 + ((*(v425 + 80) + 32) & ~*(v425 + 80)) + *(v425 + 72) * v325, v414, v440);
      }

      else
      {
      }

      v370(v444, v420, v438);
      v287 = (v449 + 1);
      if (v449 != 12)
      {
        goto LABEL_155;
      }

      v327 = v445;
      if (v169 == v445 >> 1)
      {
        swift_unknownObjectRelease();

        v127 = v438;
        v328 = v432;
        v329 = v444;
LABEL_228:

        v368(v329, v127);
        (*(v386 + 8))(v328, v409);
        return v87;
      }

      v441 = v87;
      __chkstk_darwin(v326);
      v364 = v432;
      v365 = v444;
      v333 = swift_unknownObjectRetain();
      v334 = sub_1005C4BEC(v333, v159, v169, v327, sub_1005CC938);
      v453 = sub_100277DC4(v334);
      sub_1005C4E20(&v453);
      v127 = v438;
      v122 = v305;
      if (v305)
      {
        goto LABEL_262;
      }

      v158 = v453;
      v452 = v453[2];
      if (!v452)
      {
LABEL_227:
        swift_unknownObjectRelease();

        v328 = v432;
        v329 = v444;
        v87 = v441;
        goto LABEL_228;
      }

      v87 = 0;
      v450 = v453 + 4;
      LODWORD(v449) = enum case for Calendar.Component.year(_:);
      v447 = v376 + 104;
      v445 = v376 + 8;
      LODWORD(v433) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.year(_:);
      v436 = v453;
      while (2)
      {
        v443 = v122;
        if (v87 >= v158[2])
        {
          goto LABEL_243;
        }

        v335 = &v450[2 * v87];
        v159 = *v335;
        v336 = v335[1];
        v337 = v389;
        v122 = v390;
        (*v447)(v389, v449, v390);

        v338 = v444;
        v339 = Calendar.component(_:from:)();
        (*v445)(v337, v122);
        if (v159 == v339)
        {
          (*v422)(v393, v338, v127);
          goto LABEL_206;
        }

        (v446)(v406, 1, 1, v409);
        v428(v407, 1, 1, v429);
        LOBYTE(v365) = 1;
        v364 = 0;
        v363 = 1;
        v362 = 0;
        v122 = v382;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v340 = v381;
        Calendar.date(from:)();
        (v415)(v122, v405);
        if ((v410)(v340, 1, v127) == 1)
        {

          sub_1000050A4(v340, &unk_100938850, qword_100795AE0);
          v122 = v443;
          v158 = v436;
        }

        else
        {
          (*v371)(v393, v340, v127);
LABEL_206:
          v158 = v426;
          v127 = (v336 >> 62);
          if (v336 >> 62)
          {
            v361 = _CocoaArrayWrapper.endIndex.getter();
            if (v361 < 0)
            {
              goto LABEL_256;
            }

            v341 = v361;
            if (_CocoaArrayWrapper.endIndex.getter() < 0)
            {
              goto LABEL_257;
            }

            if (_CocoaArrayWrapper.endIndex.getter() < v341)
            {
              goto LABEL_244;
            }

            v158 = v426;
          }

          else
          {
            v341 = *((v336 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if ((v336 & 0xC000000000000001) != 0)
          {

            if (v341)
            {
              v342 = 0;
              do
              {
                v343 = v342 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v342);
                v342 = v343;
              }

              while (v341 != v343);
            }
          }

          else
          {
          }

          if (v127)
          {
            v159 = _CocoaArrayWrapper.subscript.getter();
            v345 = v347;
            v344 = v348;
            v346 = v349;
          }

          else
          {
            v344 = 0;
            v159 = (v336 & 0xFFFFFFFFFFFFFF8);
            v345 = (v336 & 0xFFFFFFFFFFFFFF8) + 32;
            v346 = ((2 * v341) | 1);
          }

          v350 = v384;
          REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
          v351 = v385;
          REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
          v434(v350, v439);
          v352 = v443;
          v353 = sub_1005C7ED8(v159, v345, v344, v346, v351, v451);
          if (v352)
          {
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();

            (v418)(v351, v158);
            v330 = &v425;
            goto LABEL_193;
          }

          v354 = v353;
          v122 = 0;
          (v418)(v351, v158);
          swift_unknownObjectRelease();
          v355 = *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48);
          v356 = v391;
          v127 = v438;
          (*v422)(v391, v393, v438);
          *&v356[v355] = v354;
          (*v417)(v356, v433, v440);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v441 = sub_100365C50(0, v441[2] + 1, 1, v441);
          }

          v158 = v436;
          v358 = v441[2];
          v357 = v441[3];
          if (v358 >= v357 >> 1)
          {
            v441 = sub_100365C50(v357 > 1, v358 + 1, 1, v441);
          }

          v368(v393, v127);
          v359 = v440;
          v360 = v441;
          v441[2] = v358 + 1;
          (*(v425 + 32))(v360 + ((*(v425 + 80) + 32) & ~*(v425 + 80)) + *(v425 + 72) * v358, v391, v359);
        }

        if (++v87 == v452)
        {
          goto LABEL_227;
        }

        continue;
      }
    }

    break;
  }

  swift_unknownObjectRelease_n();

  (v418)(v308, v426);
  v330 = &v452;
LABEL_193:
  v254 = *(v330 - 32);
LABEL_194:
  v331 = v438;
  v332 = v368;
  v368(v254, v438);

  v332(v444, v331);
LABEL_195:
  (*(v386 + 8))(v432, v409);
  return v87;
}