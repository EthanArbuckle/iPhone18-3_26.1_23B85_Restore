uint64_t sub_1002A767C()
{
  v1 = [v0 metadata];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = type metadata accessor for JSONDecoder();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for RDSavedReminder();
    sub_100029F90(&qword_100940528, type metadata accessor for RDSavedReminder);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return sub_10001BBA0(v3, v5);
  }

  else
  {
    v10 = objc_opt_self();
    type metadata accessor for REMCDSavedReminder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = String._bridgeToObjectiveC()();
    [v10 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v12];

    return swift_willThrow();
  }
}

void sub_1002A77E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v34[-v11];
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v34[-v18];
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v34[-v22];
  v37 = v2;
  v24 = [v2 parentSavedReminderIdentifier];
  v38 = v5;
  if (v24)
  {
    v25 = v24;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v38;
    (*(v38 + 56))(v23, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v23, 1, 1, v4);
  }

  v26 = *(v9 + 48);
  sub_10018E470(v23, v12);
  v36 = a1;
  sub_10018E470(a1, &v12[v26]);
  v27 = *(v5 + 48);
  if (v27(v12, 1, v4) == 1)
  {
    sub_1000050A4(v23, &unk_100939D90, "8\n\r");
    if (v27(&v12[v26], 1, v4) == 1)
    {
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      return;
    }
  }

  else
  {
    sub_10018E470(v12, v19);
    if (v27(&v12[v26], 1, v4) != 1)
    {
      v32 = v38;
      (*(v38 + 32))(v8, &v12[v26], v4);
      sub_100029F90(&qword_10093A3E0, &type metadata accessor for UUID);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v32 + 8);
      v33(v8, v4);
      sub_1000050A4(v23, &unk_100939D90, "8\n\r");
      v33(v19, v4);
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      if (v35)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_1000050A4(v23, &unk_100939D90, "8\n\r");
    (*(v38 + 8))(v19, v4);
  }

  sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
LABEL_10:
  sub_10018E470(v36, v16);
  if (v27(v16, 1, v4) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v16, v4);
  }

  v29 = v37;
  [v37 setParentSavedReminderIdentifier:isa];

  v30 = [v29 createResolutionTokenMapIfNecessary];
  v31 = String._bridgeToObjectiveC()();
  [v30 updateForKey:v31];
}

id REMCDSavedReminder.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDSavedReminder();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDSavedReminder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDSavedReminder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002A7DB4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v32 = a3;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v28 - v9;
  v10 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  v36 = a1;
  v22 = v38;
  sub_1002A81EC(a1);
  if (!v22)
  {
    v30 = v4;
    v31 = v14;
    v38 = v15;
    v29 = v7;
    v23 = v33;
    v24 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v25 = [v34 fetchResultTokenToDiffAgainst];
    sub_100534D44(v25, v37);

    v26 = v38;
    v27 = v31;
    (*(v38 + 16))(v18, v21, v31);
    (*(v23 + 16))(v29, v37, v30);
    sub_1002A8588(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
    sub_1002A8588(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v23 + 8))(v37, v30);
    (*(v26 + 8))(v21, v27);
  }
}

uint64_t sub_1002A8194(uint64_t a1)
{
  result = sub_1002A8588(&qword_100940550, &type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002A81EC(uint64_t a1)
{
  v34 = a1;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v2 = *(Subtasks - 8);
  v32 = Subtasks;
  v33 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(Subtasks);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v35 = *(v36 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v36);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s9UtilitiesO12SortingStyleOMa();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  v20 = _s10PredicatesOMa(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v24 = sub_100043AA8();
  sub_1001A4F3C(v23, _s10PredicatesOMa);
  REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters.sortingStyle.getter();
  v25 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v26 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v26 - 8) + 104))(v16, v25, v26);
  v27 = v32;
  swift_storeEnumTagMultiPayload();
  sub_1005368D8(v12, v16, v19);
  v28 = v33;
  REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters.showCompleted.getter();
  (*(v28 + 104))(v5, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), v27);
  v29 = sub_100536D54(v34, v24, v19, v8, v5, _swiftEmptyArrayStorage, 0);

  (*(v28 + 8))(v5, v27);
  (*(v35 + 8))(v8, v36);
  sub_1001A4F3C(v19, _s9UtilitiesO12SortingStyleOMa);
  return v29;
}

uint64_t sub_1002A8588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002A85D0(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController) newBackgroundContextWithAuthor:REMNSPersistentHistoryTrackingAuthor];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1002A8A80;
  *(v7 + 24) = v6;
  v11[4] = sub_1000529DC;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F160;
  v11[3] = &unk_1008ECED8;
  v8 = _Block_copy(v11);

  v9 = v5;

  [v9 performBlockAndWait:v8];

  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

id sub_1002A8A04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMNSPersistentHistoryTracking();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002A8AB0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940588);
  v1 = sub_100006654(v0, qword_100940588);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1002A8B78(uint64_t a1)
{
  v3 = [*v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1002A8D28(a1, v4, 0x40u, 0);

  return v5;
}

id sub_1002A8C1C(uint64_t a1)
{
  v3 = [*v1 smartListObjectID];
  if (qword_100935D60 != -1)
  {
    swift_once();
  }

  v4 = sub_1002A8D28(a1, v3, 1u, qword_100974CE0);

  return v4;
}

NSString sub_1002A8CC4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for REMSmartListSectionStorageCDIngestor();
  swift_initStackObject();
  result = sub_1004FF6DC(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1002A8D28(uint64_t a1, unint64_t a2, unsigned __int8 a3, Class a4)
{
  v5 = v4;
  type metadata accessor for REMCDSmartListSection();
  v9 = sub_10024C42C();
  sub_10024C888();
  v10 = sub_10024B964(a2, a3);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];

  sub_10003450C(v9);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setPropertiesToFetch:isa];

  v14 = Array._bridgeToObjectiveC()().super.isa;
  [v11 setRelationshipKeyPathsForPrefetching:v14];

  if (a4)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    a4 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v11 setSortDescriptors:a4];

  v15 = NSManagedObjectContext.fetch<A>(_:)();
  v16 = v4;

  if (!v4)
  {
    if (qword_100935E08 != -1)
    {
LABEL_27:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = sub_100006654(v17, qword_100940588);
    __chkstk_darwin(v18);
    sub_1000F5104(&qword_10094F210, &unk_1007A0140);
    sub_1000060C8(0, &qword_1009405A0, REMSmartListSectionStorage_ptr);
    sub_10000CB48(&qword_1009405A8, &qword_10094F210, &unk_1007A0140);
    Sequence.map<A>(skippingError:_:)();
    if (v16)
    {
    }

    if (v15 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = 0;
    v16 = &selRef_setPublicLinkLastModifiedDate_;
    while (v19 != v20)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v21 = *(v15 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v24 = [v21 smartList];

      ++v20;
      if (v24)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v20 = v23;
      }
    }

    sub_1000F5104(&qword_1009405B0, &unk_1007B4EC0);
    sub_10000CB48(&qword_1009405B8, &qword_1009405B0, &unk_1007B4EC0);
    sub_10000CE28(&qword_1009405C0, &unk_10093F770, off_1008D41E8);
    Sequence<>.unique()();

    v27 = sub_100516DE8();

    v28 = [v27 accountStorages];
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000F5104(&qword_1009405C8, &qword_1007A0150);
    sub_10000CB48(&qword_1009405D0, &qword_1009405C8, &qword_1007A0150);
    sub_10000CE28(&qword_10093A910, &unk_10093F580, REMAccountStorage_ptr);
    v29 = Sequence<>.unique()();

    sub_1005302C0(v29);
    v30 = [v27 smartListStorages];
    if (!v30)
    {
      sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = Array._bridgeToObjectiveC()().super.isa;
    }

    v31 = [v27 parentListStorages];
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000F5104(&qword_1009405D8, &qword_1007A0158);
    v37 = v27;
    sub_10000CB48(&qword_1009405E0, &qword_1009405D8, &qword_1007A0158);
    sub_10000CE28(&unk_100939BF0, &unk_10094F0C0, REMListStorage_ptr);
    v32 = Sequence<>.unique()();

    sub_1005302EC(v32);
    v33 = objc_allocWithZone(REMSmartListSectionsDataViewInvocationResult);
    v34 = Array._bridgeToObjectiveC()().super.isa;

    v35 = Array._bridgeToObjectiveC()().super.isa;

    v36 = Array._bridgeToObjectiveC()().super.isa;

    v5 = [v33 initWithAccountStorages:v34 smartListStorages:v30 groupStorages:v35 smartListSectionStorages:v36];
  }

  return v5;
}

uint64_t sub_1002A9558@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v132 = a2;
  v135 = a4;
  v120 = a3;
  v123 = a5;
  v6 = type metadata accessor for REMRemindersListDataView.DatesModel();
  v124 = *(v6 - 8);
  v125 = v6;
  v7 = *(v124 + 64);
  __chkstk_darwin(v6);
  v121 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v122 = v109 - v10;
  v11 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v118 = v109 - v13;
  v134 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v119 = *(v134 - 8);
  v14 = *(v119 + 64);
  __chkstk_darwin(v134);
  v130 = v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v133 = v109 - v17;
  v18 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v128 = *(v18 - 8);
  v129 = v18;
  v19 = *(v128 + 64);
  __chkstk_darwin(v18);
  v127 = (v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = v109 - v22;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v126 = *(Configuration - 8);
  v25 = *(v126 + 64);
  __chkstk_darwin(Configuration);
  v27 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for REMRemindersListDataView.Diff();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v109 - v34;
  v36 = v136;
  result = sub_1002AA40C(a1, v135);
  if (v36)
  {
    return result;
  }

  v111 = v27;
  v112 = Configuration;
  v136 = result;
  v115 = v23;
  v113 = v32;
  v117 = v35;
  v114 = v29;
  v116 = v28;
  sub_1002AC9DC();
  v38 = a1;
  v40 = v39;
  v42 = v41;
  v43 = [v131 fetchResultTokenToDiffAgainst];
  v44 = v117;
  sub_100534D44(v43, v117);

  v131 = 0;
  v110 = v42;
  v45 = v111;
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v46 = v115;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v126 + 8))(v45, v112);
  v48 = v127;
  v47 = v128;
  v49 = v129;
  (*(v128 + 16))(v127, v46, v129);
  v50 = (*(v47 + 88))(v48, v49);
  v109[1] = v40;
  if (v50 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v73 = v113;
    if (v50 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      (*(v47 + 96))(v48, v49);
      sub_10053E698(*v48, v44, v38, v120, 0);
      (*(v47 + 8))(v46, v49);
      v75 = v124;
      v74 = v125;
      v76 = v121;
      v77 = v122;
      v78 = v116;
      v79 = v114;
LABEL_43:
      REMRemindersListDataView.DatesModel.init(groups:completedRemindersCount:prefetchedReminders:prefetchedDueReminders:)();
      (*(v75 + 16))(v76, v77, v74);
      v102 = v117;
      (*(v79 + 16))(v73, v117, v78);
      sub_1002ACC1C(&qword_100940638, &type metadata accessor for REMRemindersListDataView.DatesModel);
      sub_1002ACC1C(&qword_100940640, &type metadata accessor for REMRemindersListDataView.DatesModel);
      REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
      (*(v75 + 8))(v77, v74);
      return (*(v79 + 8))(v102, v116);
    }

    v79 = v114;
    if (v50 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
    {
      v75 = v124;
      v103 = v121;
      v104 = v122;
      v105 = v116;
      if (v50 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        goto LABEL_57;
      }

      (*(v47 + 8))(v115, v49);
      v78 = v105;
      v76 = v103;
      v74 = v125;
      v77 = v104;
      goto LABEL_43;
    }

    v126 = v38;
    (*(v47 + 96))(v48, v49);
    v132 = *v48;
    v80 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100226AD8(v48 + *(v80 + 48), v118);
    v81 = *(v136 + 16);
    if (!v81)
    {
      v85 = _swiftEmptyArrayStorage;
LABEL_48:
      v106 = v126;
      v107 = v120;
      sub_10053DB98(v132, v85, v126, v120, 0);
      v108 = v118;
      sub_10053EBE4(v118, v85, v106, v107, 0);

      sub_1000050A4(v108, &qword_10094B8E0, &unk_1007AABD0);
      (*(v128 + 8))(v115, v129);
      goto LABEL_42;
    }

    v82 = v119 + 16;
    v135 = *(v119 + 16);
    v83 = v136 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v133 = *(v119 + 72);
    v84 = (v119 + 8);
    v85 = _swiftEmptyArrayStorage;
    v86 = v134;
    v87 = v130;
    while (1)
    {
      v88 = v87;
      v89 = v82;
      (v135)(v87, v83, v86);
      v90 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
      (*v84)(v88, v86);
      v91 = *(v90 + 16);
      v92 = v85[2];
      v93 = v92 + v91;
      if (__OFADD__(v92, v91))
      {
        goto LABEL_53;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v93 <= v85[3] >> 1)
      {
        if (*(v90 + 16))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v92 <= v93)
        {
          v95 = v92 + v91;
        }

        else
        {
          v95 = v92;
        }

        v85 = sub_100365A24(isUniquelyReferenced_nonNull_native, v95, 1, v85);
        if (*(v90 + 16))
        {
LABEL_36:
          v96 = (v85[3] >> 1) - v85[2];
          v97 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
          if (v96 < v91)
          {
            goto LABEL_55;
          }

          v98 = (*(v97 + 80) + 32) & ~*(v97 + 80);
          v99 = *(v97 + 72);
          swift_arrayInitWithCopy();

          v86 = v134;
          v87 = v130;
          if (v91)
          {
            v100 = v85[2];
            v71 = __OFADD__(v100, v91);
            v101 = v100 + v91;
            if (v71)
            {
              goto LABEL_56;
            }

            v85[2] = v101;
          }

          goto LABEL_26;
        }
      }

      v86 = v134;
      v87 = v130;
      if (v91)
      {
        goto LABEL_54;
      }

LABEL_26:
      v83 += v133;
      --v81;
      v82 = v89;
      if (!v81)
      {
        goto LABEL_48;
      }
    }
  }

  v126 = a1;
  (*(v47 + 96))(v48, v49);
  v130 = *v48;
  v51 = *(v136 + 16);
  if (!v51)
  {
    v55 = _swiftEmptyArrayStorage;
LABEL_41:
    sub_10053DB98(v130, v55, v126, v120, 0);

    (*(v128 + 8))(v115, v129);
LABEL_42:
    v75 = v124;
    v74 = v125;
    v76 = v121;
    v77 = v122;
    v78 = v116;
    v79 = v114;
    v73 = v113;
    goto LABEL_43;
  }

  v52 = v119 + 16;
  v135 = *(v119 + 16);
  v53 = v136 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
  v132 = *(v119 + 72);
  v54 = (v119 + 8);
  v55 = _swiftEmptyArrayStorage;
  v56 = v133;
  while (1)
  {
    v57 = v56;
    v58 = v134;
    v59 = v52;
    (v135)(v56, v53, v134);
    v60 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
    (*v54)(v57, v58);
    v61 = *(v60 + 16);
    v62 = v55[2];
    v63 = v62 + v61;
    if (__OFADD__(v62, v61))
    {
      break;
    }

    v64 = swift_isUniquelyReferenced_nonNull_native();
    if (v64 && v63 <= v55[3] >> 1)
    {
      if (*(v60 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v62 <= v63)
      {
        v65 = v62 + v61;
      }

      else
      {
        v65 = v62;
      }

      v55 = sub_100365A24(v64, v65, 1, v55);
      if (*(v60 + 16))
      {
LABEL_16:
        v66 = (v55[3] >> 1) - v55[2];
        v67 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
        if (v66 < v61)
        {
          goto LABEL_51;
        }

        v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v69 = *(v67 + 72);
        swift_arrayInitWithCopy();

        v56 = v133;
        if (v61)
        {
          v70 = v55[2];
          v71 = __OFADD__(v70, v61);
          v72 = v70 + v61;
          if (v71)
          {
            goto LABEL_52;
          }

          v55[2] = v72;
        }

        goto LABEL_6;
      }
    }

    v56 = v133;
    if (v61)
    {
      goto LABEL_50;
    }

LABEL_6:
    v53 += v132;
    --v51;
    v52 = v59;
    if (!v51)
    {
      goto LABEL_41;
    }
  }

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
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002AA138()
{
  v0 = _s9UtilitiesO12SortingStyleOMa();
  sub_1000EECAC(v0, qword_1009405E8);
  v1 = sub_100006654(v0, qword_1009405E8);
  v2 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v3 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1002AA204(uint64_t a1)
{
  result = sub_1002ACC1C(&qword_100940620, &type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1002AA25C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = v4;
  while (v3 < v5)
  {
    if (__OFSUB__(v5, v3))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v6 = v3 + (v5 - v3) / 2;
    if (__OFADD__(v3, (v5 - v3) / 2))
    {
      goto LABEL_15;
    }

    v7 = type metadata accessor for Date();
    if (v6 >= v4)
    {
      goto LABEL_16;
    }

    v8 = a2 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6;
    sub_1002ACC1C(&qword_100938DB0, &type metadata accessor for Date);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return;
    }

    sub_1002ACC1C(&qword_1009464D0, &type metadata accessor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v3 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v5 = v3 + (v5 - v3) / 2;
    }
  }
}

uint64_t sub_1002AA40C(unint64_t a1, void *a2)
{
  v283 = a1;
  v3 = sub_1000F5104(&qword_10093F2B0, &qword_10079DBD8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v257 = &v252 - v5;
  v6 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v295 = &v252 - v8;
  v307 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v288 = *(v307 - 8);
  v9 = *(v288 + 64);
  __chkstk_darwin(v307);
  v298 = &v252 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v297 = &v252 - v12;
  v302 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v282 = *(v302 - 8);
  v13 = *(v282 + 64);
  __chkstk_darwin(v302);
  v262 = &v252 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v289 = &v252 - v16;
  __chkstk_darwin(v17);
  v261 = &v252 - v18;
  __chkstk_darwin(v19);
  v260 = &v252 - v20;
  __chkstk_darwin(v21);
  v285 = &v252 - v22;
  __chkstk_darwin(v23);
  v284 = &v252 - v24;
  v25 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v264 = &v252 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v296 = &v252 - v29;
  __chkstk_darwin(v30);
  v308 = &v252 - v31;
  __chkstk_darwin(v32);
  v310 = &v252 - v33;
  __chkstk_darwin(v34);
  v299 = (&v252 - v35);
  __chkstk_darwin(v36);
  v305 = &v252 - v37;
  v270 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup();
  v269 = *(v270 - 8);
  v38 = *(v269 + 64);
  __chkstk_darwin(v270);
  v268 = &v252 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for Date();
  v292 = *(v312 - 8);
  v40 = *(v292 + 8);
  __chkstk_darwin(v312);
  v258 = &v252 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v263 = &v252 - v43;
  __chkstk_darwin(v44);
  v259 = &v252 - v45;
  __chkstk_darwin(v46);
  v290 = &v252 - v47;
  __chkstk_darwin(v48);
  v303 = &v252 - v49;
  __chkstk_darwin(v50);
  v293 = &v252 - v51;
  __chkstk_darwin(v52);
  v286 = &v252 - v53;
  v267 = type metadata accessor for Calendar.Identifier();
  v266 = *(v267 - 8);
  v54 = *(v266 + 64);
  __chkstk_darwin(v267);
  v265 = &v252 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = type metadata accessor for Calendar();
  v271 = *(v313 - 8);
  v56 = *(v271 + 64);
  __chkstk_darwin(v313);
  v309 = &v252 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v304 = &v252 - v59;
  v287 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v280 = *(v287 - 1);
  v60 = *(v280 + 64);
  __chkstk_darwin(v287);
  v276 = (&v252 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v62);
  v279 = &v252 - v63;
  v278 = _s10PredicatesOMa(0);
  v64 = *(*(v278 - 8) + 64);
  __chkstk_darwin(v278);
  v277 = (&v252 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v300 = *(Subtasks - 8);
  v301 = Subtasks;
  v67 = *(v300 + 8);
  __chkstk_darwin(Subtasks);
  v274 = &v252 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v275 = &v252 - v70;
  __chkstk_darwin(v71);
  v294 = &v252 - v72;
  __chkstk_darwin(v73);
  v291 = &v252 - v74;
  v75 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v76 = *(v75 - 8);
  v77 = v76[8];
  __chkstk_darwin(v75);
  v79 = &v252 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v82 = &v252 - v81;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v84 = *(Configuration - 8);
  v85 = *(v84 + 64);
  __chkstk_darwin(Configuration);
  v273 = (&v252 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v87);
  v272 = &v252 - v88;
  __chkstk_darwin(v89);
  v91 = &v252 - v90;
  v315 = a2;
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v92 = *(v84 + 8);
  v314 = Configuration;
  v311 = (v84 + 8);
  v306 = v92;
  v92(v91, Configuration);
  v93 = v76[13];
  v93(v79, enum case for REMRemindersListDataView.SortingStyle.default(_:), v75);
  LOBYTE(a2) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v96 = v76[1];
  v94 = (v76 + 1);
  v95 = v96;
  v96(v79, v75);
  v96(v82, v75);
  if ((a2 & 1) == 0)
  {
    REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
    v306(v91, v314);
    v97 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
    v98 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v98 - 8) + 104))(v79, v97, v98);
    v93(v79, enum case for REMRemindersListDataView.SortingStyle.displayDate(_:), v75);
    LOBYTE(v97) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v95(v79, v75);
    v95(v82, v75);
    if ((v97 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v99 = v291;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v100 = v306;
  v306(v91, v314);
  v101 = v300;
  v102 = *(v300 + 13);
  v94 = v294;
  v256 = enum case for REMRemindersListDataView.FetchSubtasks.on(_:);
  v103 = v301;
  v102(v294);
  sub_1002ACC1C(&qword_100940630, &type metadata accessor for REMRemindersListDataView.FetchSubtasks);
  v104 = dispatch thunk of static Equatable.== infix(_:_:)();
  v105 = *(v101 + 1);
  (v105)(v94, v103);
  v294 = v101 + 8;
  (v105)(v99, v103);
  v106 = v105;
  v107 = v314;
  if (v104)
  {
LABEL_11:
    v126 = objc_opt_self();
    v127 = String._bridgeToObjectiveC()();
    [v126 internalErrorWithDebugDescription:v127];

    swift_willThrow();
    return v94;
  }

  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v108 = v277;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v100(v91, v107);
  swift_storeEnumTagMultiPayload();
  v109 = sub_100043AA8();
  sub_1000513B4(v108);
  if (qword_1009363F8 != -1)
  {
LABEL_65:
    swift_once();
  }

  v110 = qword_100974F68;
  v111 = qword_100936400;

  if (v111 != -1)
  {
    swift_once();
  }

  v291 = v106;
  v317 = v110;

  sub_100271A80(v112);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v113 = [objc_allocWithZone(NSFetchRequest) init];
  v114 = [swift_getObjCClassFromMetadata() entity];
  [v113 setEntity:v114];

  [v113 setAffectedStores:0];
  v255 = v109;
  [v113 setPredicate:v109];
  v317 = _swiftEmptySetSingleton;

  sub_100050AD0(v115);

  v116 = v281;
  sub_1003FE014(v317);
  v94 = v116;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v113 setPropertiesToFetch:isa];

  if (qword_100935E10 != -1)
  {
    swift_once();
  }

  v118 = _s9UtilitiesO12SortingStyleOMa();
  v119 = sub_100006654(v118, qword_1009405E8);
  v120 = v280;
  v121 = v279;
  v122 = v287;
  (*(v280 + 104))(v279, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v287);
  sub_10053CE0C(v119, v121, 0);
  v123 = *(v120 + 8);
  v123(v121, v122);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v124 = Array._bridgeToObjectiveC()().super.isa;

  [v113 setSortDescriptors:v124];

  v125 = NSManagedObjectContext.fetch<A>(_:)();
  if (v116)
  {

    return v94;
  }

  v281 = v125;
  v254 = 0;
  v253 = v113;
  v129 = v272;
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v130 = v275;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v131 = v129;
  v132 = v314;
  v133 = v306;
  v306(v131, v314);
  v134 = v273;
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v133(v134, v132);
  v136 = v300;
  v135 = v301;
  v137 = v274;
  (*(v300 + 2))(v274, v130, v301);
  v138 = (*(v136 + 11))(v137, v135);
  if (v138 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:) || v138 == v256)
  {
    v283 = sub_10038E654(_swiftEmptyArrayStorage);
    v94 = v310;
    v142 = v287;
    v109 = v312;
  }

  else
  {
    v94 = v310;
    v109 = v312;
    if (v138 != enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
LABEL_98:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_99;
    }

    v139 = v276;
    v140 = v254;
    sub_100539C70(v281, v276, v283, 0);
    v254 = v140;
    if (v140)
    {

      v123(v139, v287);
      (v291)(v275, v301);
      return v94;
    }

    v283 = v141;
    v142 = v287;
    v130 = v275;
  }

  v123(v276, v142);
  (v291)(v130, v301);
  v143 = v266;
  v144 = v265;
  v145 = v267;
  (*(v266 + 104))(v265, enum case for Calendar.Identifier.gregorian(_:), v267);
  Calendar.init(identifier:)();
  (*(v143 + 8))(v144, v145);
  v146 = v268;
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.includeTodayGroup.getter();
  v147 = v269;
  v148 = v270;
  v149 = (*(v269 + 88))(v146, v270);
  LODWORD(v265) = enum case for REMRemindersListDataView.ScheduledTodayGroup.always(_:);
  LODWORD(v266) = v149;
  if (v149 == enum case for REMRemindersListDataView.ScheduledTodayGroup.always(_:))
  {
    (*(v147 + 96))(v146, v148);
    v150 = v292;
    v151 = v293;
    (*(v292 + 4))(v293, v146, v109);
    v152 = v305;
    v153 = v299;
    v106 = v309;
LABEL_24:
    Calendar.startOfDay(for:)();
    v154 = v150[1];
    v300 = (v150 + 1);
    v301 = v154;
    (v154)(v151, v109);
    v155 = v150[7];
    v314 = (v150 + 7);
    v311 = v155;
    (v155)(v152, 1, 1, v109);
    v156 = v281;
    if (v281 >> 62)
    {
      goto LABEL_67;
    }

    v157 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v157)
    {
      do
      {
        v158 = 0;
        v280 = v156 & 0xC000000000000001;
        v270 = v156 & 0xFFFFFFFFFFFFFF8;
        v279 = (v271 + 16);
        v159 = (v150 + 6);
        v151 = (v150 + 4);
        v287 = (v271 + 8);
        v277 = (v150 + 2);
        v269 = v282 + 16;
        v268 = (v282 + 32);
        v267 = v282 + 8;
        v276 = (v288 + 48);
        v275 = (v288 + 32);
        v273 = (v288 + 16);
        v272 = (v288 + 8);
        v306 = _swiftEmptyArrayStorage;
        v274 = _swiftEmptyArrayStorage;
        v150 = v153;
        v153 = v159;
        v278 = v157;
        v291 = v151;
        while (1)
        {
          if (v280)
          {
            v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v161 = (v158 + 1);
            if (__OFADD__(v158, 1))
            {
              goto LABEL_64;
            }

            goto LABEL_35;
          }

          if (v158 >= *(v270 + 16))
          {
            break;
          }

          v160 = *(v156 + 8 * v158 + 32);
          v161 = (v158 + 1);
          if (__OFADD__(v158, 1))
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

LABEL_35:
          v162 = v153;
          v315 = v160;
          v163 = [v160 displayDateDate];
          v294 = v161;
          v164 = v150;
          if (v163)
          {
            v165 = v163;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v166 = 0;
          }

          else
          {
            v166 = 1;
          }

          v167 = 1;
          (v311)(v94, v166, 1, v109);
          (*v279)(v106, v304, v313);
          v168 = v308;
          sub_10012F78C(v94, v308);
          v169 = *v162;
          v170 = (*v162)(v168, 1, v109);
          v171 = v164;
          if (v170 != 1)
          {
            v172 = v293;
            (*v291)(v293, v308, v109);
            Calendar.startOfDay(for:)();
            v173 = v172;
            v94 = v310;
            v301(v173, v109);
            v167 = 0;
          }

          sub_1000050A4(v94, &unk_100938850, qword_100795AE0);
          (v311)(v164, v167, 1, v109);
          v94 = v109;
          v174 = *v287;
          (*v287)(v106, v313);
          v175 = v164;
          v153 = v162;
          v176 = v169(v175, 1, v94);
          v177 = v303;
          if (v176 == 1)
          {

            sub_1000050A4(v171, &unk_100938850, qword_100795AE0);
            v213 = objc_opt_self();
            v214 = String._bridgeToObjectiveC()();
            [v213 internalErrorWithDebugDescription:v214];

            swift_willThrow();
            sub_1000050A4(v305, &unk_100938850, qword_100795AE0);
            v301(v286, v94);
            v174(v304, v313);
            return v94;
          }

          v151 = v291;
          v178 = *v291;
          (*v291)(v303, v171, v94);
          v179 = v305;
          v180 = v296;
          sub_10012F78C(v305, v296);
          if (v169(v180, 1, v94) == 1)
          {
            sub_1000050A4(v179, &unk_100938850, qword_100795AE0);
            sub_1000050A4(v180, &unk_100938850, qword_100795AE0);
            (*v277)(v179, v177, v94);
            (v311)(v179, 0, 1, v94);
            v181 = v295;
            v182 = v177;
          }

          else
          {
            v183 = v290;
            v178(v290, v180, v94);
            sub_1002ACC1C(&qword_100938DB0, &type metadata accessor for Date);
            if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
            {
              v184 = v183;
              v185 = *v277;
              (*v277)(v293, v184, v94);
              static Date.== infix(_:_:)();
              v186 = v284;
              REMRemindersListDataView.DatesModel.Group.init(date:reminders:isToday:)();
              (*v269)(v285, v186, v302);
              v187 = v274;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v106 = v309;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v187 = sub_100365BB0(0, *(v187 + 2) + 1, 1, v187);
              }

              v190 = *(v187 + 2);
              v189 = *(v187 + 3);
              v182 = v303;
              if (v190 >= v189 >> 1)
              {
                v187 = sub_100365BB0(v189 > 1, v190 + 1, 1, v187);
              }

              *(v187 + 2) = v190 + 1;
              v191 = v187;
              v192 = v282;
              v193 = (*(v192 + 80) + 32) & ~*(v192 + 80);
              v274 = v191;
              v194 = v302;
              (*(v282 + 32))(&v191[v193 + *(v282 + 72) * v190], v285, v302);
              (*(v192 + 8))(v284, v194);
              v195 = v312;
              v301(v290, v312);
              v196 = v305;
              sub_1000050A4(v305, &unk_100938850, qword_100795AE0);
              v185(v196, v182, v195);
              (v311)(v196, 0, 1, v195);
              v306 = _swiftEmptyArrayStorage;
              v181 = v295;
              goto LABEL_51;
            }

            v182 = v177;
            v301(v183, v94);
            v181 = v295;
          }

          v106 = v309;
LABEL_51:
          v197 = v283;
          v198 = [v315 objectID];
          v199 = v198;
          if (*(v197 + 16) && (v200 = sub_100363FF4(v198), (v201 & 1) != 0))
          {
            v202 = *(*(v197 + 56) + 8 * v200);
          }

          else
          {
            v202 = 0;
          }

          v203 = v315;
          sub_1005384A4(v203, v202, 0, v181);
          v152 = v307;
          if ((*v276)(v181, 1, v307) == 1)
          {
            v109 = v312;
            v301(v182, v312);

            sub_1000050A4(v181, &qword_100940628, &unk_1007A6A20);
            v150 = v299;
          }

          else
          {
            v151 = *v275;
            v204 = v297;
            (*v275)(v297, v181, v152);
            (*v273)(v298, v204, v152);
            v205 = v306;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v205 = sub_100365A24(0, *(v205 + 2) + 1, 1, v205);
            }

            v207 = *(v205 + 2);
            v206 = *(v205 + 3);
            v152 = v207 + 1;
            if (v207 >= v206 >> 1)
            {
              v306 = sub_100365A24(v206 > 1, v207 + 1, 1, v205);
            }

            else
            {
              v306 = v205;
            }

            v208 = v288;
            v209 = v307;
            (*(v288 + 8))(v297, v307);
            v210 = v312;
            v301(v182, v312);
            v211 = v306;
            *(v306 + 2) = v152;
            v212 = v211 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v207;
            v109 = v210;
            (v151)(v212, v298, v209);
            v150 = v299;
            v106 = v309;
          }

          ++v158;
          v94 = v310;
          v156 = v281;
          if (v294 == v278)
          {

            v152 = v305;
            v215 = v306;
            v151 = v293;
            v150 = v292;
            v216 = v264;
            v94 = v274;
            goto LABEL_69;
          }
        }

        __break(1u);
LABEL_67:
        v217 = v156;
        v218 = _CocoaArrayWrapper.endIndex.getter();
        v156 = v217;
        v157 = v218;
      }

      while (v218);
    }

    v215 = _swiftEmptyArrayStorage;
    v94 = _swiftEmptyArrayStorage;
    v216 = v264;
LABEL_69:

    v306 = v215;
    if (*(v215 + 2))
    {
      sub_10012F78C(v152, v216);
      if (v150[6](v216, 1, v109) == 1)
      {
        sub_1000050A4(v216, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v219 = v259;
        v150[4](v259, v216, v109);
        v150[2](v151, v219, v109);

        static Date.== infix(_:_:)();
        v220 = v260;
        REMRemindersListDataView.DatesModel.Group.init(date:reminders:isToday:)();
        (*(v282 + 16))(v261, v220, v302);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_100365BB0(0, *(v94 + 2) + 1, 1, v94);
        }

        v222 = *(v94 + 2);
        v221 = *(v94 + 3);
        if (v222 >= v221 >> 1)
        {
          v223 = sub_100365BB0(v221 > 1, v222 + 1, 1, v94);
        }

        else
        {
          v223 = v94;
        }

        v224 = v282;
        v225 = v302;
        (*(v282 + 8))(v260, v302);
        v301(v259, v109);
        *(v223 + 16) = v222 + 1;
        v226 = v224;
        v94 = v223;
        (*(v226 + 32))(v223 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v222, v261, v225);
        v150 = v292;
      }
    }

    if (v266 != v265)
    {

      sub_1000050A4(v152, &unk_100938850, qword_100795AE0);
      v301(v286, v109);
      (*(v271 + 8))(v304, v313);

      return v94;
    }

    v227 = (v150 + 2);
    v310 = v150[2];
    (v310)(v263, v286, v109);
    v228 = v150;
    v229 = *(v94 + 2);
    v274 = v94;
    if (v229)
    {
      v309 = v227;
      v316 = _swiftEmptyArrayStorage;
      sub_100253574(0, v229, 0);
      v230 = v316;
      v231 = *(v282 + 16);
      v232 = &v94[(*(v282 + 80) + 32) & ~*(v282 + 80)];
      v314 = *(v282 + 72);
      v315 = v231;
      v233 = (v282 + 8);
      v311 = (v228 + 4);
      v234 = v258;
      do
      {
        v235 = v289;
        v236 = v302;
        (v315)(v289, v232, v302);
        REMRemindersListDataView.DatesModel.Group.date.getter();
        (*v233)(v235, v236);
        v316 = v230;
        v238 = v230[2];
        v237 = v230[3];
        if (v238 >= v237 >> 1)
        {
          sub_100253574(v237 > 1, v238 + 1, 1);
          v230 = v316;
        }

        v230[2] = v238 + 1;
        (*(v292 + 4))(v230 + ((v292[80] + 32) & ~v292[80]) + *(v292 + 9) * v238, v234, v312);
        v232 += v314;
        --v229;
      }

      while (v229);

      v152 = v305;
      v109 = v312;
      v151 = v293;
    }

    else
    {

      v230 = _swiftEmptyArrayStorage;
    }

    v239 = v263;
    sub_1002AA25C(v263, v230);
    v241 = v240;
    v243 = v242;

    v244 = v301;
    v301(v239, v109);
    if (v243)
    {

      sub_1000050A4(v152, &unk_100938850, qword_100795AE0);
      v244(v286, v109);
      (*(v271 + 8))(v304, v313);
      return v274;
    }

    (v310)(v151, v286, v109);
    REMRemindersListDataView.DatesModel.Group.init(date:reminders:isToday:)();
    v245 = v274;
    v246 = *(v274 + 2);
    if (v246 < v241)
    {
      __break(1u);
    }

    else
    {
      v247 = v257;
      if ((v241 & 0x8000000000000000) == 0)
      {
        (*(v282 + 16))(v257, v262, v302);
        v248 = swift_isUniquelyReferenced_nonNull_native();
        v317 = v245;
        v249 = v245;
        v250 = v255;
        if (v248 && v246 < *(v249 + 3) >> 1)
        {
          v251 = v249;
        }

        else
        {
          v251 = sub_100365BB0(v248, v246 + 1, 1, v249);
          v317 = v251;
        }

        sub_100260874(v241, v241, 1, v247);

        (*(v282 + 8))(v262, v302);
        sub_1000050A4(v152, &unk_100938850, qword_100795AE0);
        v301(v286, v109);
        (*(v271 + 8))(v304, v313);
        return v251;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  v152 = v305;
  v151 = v293;
  v153 = v299;
  v106 = v309;
  v150 = v292;
  if (v149 == enum case for REMRemindersListDataView.ScheduledTodayGroup.asNeeded(_:))
  {
    Date.init()();
    goto LABEL_24;
  }

LABEL_99:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1002AC9DC()
{
  v0 = _s10PredicatesOMa(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v5 = *(Configuration - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(Configuration);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v9 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v5 + 8))(v8, Configuration);
  if (v9)
  {
    swift_storeEnumTagMultiPayload();
    v10 = sub_100043AA8();
    sub_1000513B4(v3);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v11 = [objc_allocWithZone(NSFetchRequest) init];
    v12 = [swift_getObjCClassFromMetadata() entity];
    [v11 setEntity:v12];

    [v11 setAffectedStores:0];
    [v11 setPredicate:v10];
    NSManagedObjectContext.count<A>(for:)();
  }
}

uint64_t sub_1002ACC1C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_1002ACC64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002ACD78()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002ACE88()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002ACFA8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002AD0B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002AD1BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002AD304()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002AD41C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002AD52C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002AD648()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void *sub_1002AD784(uint64_t a1, uint64_t (*a2)(void *, uint64_t, void, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v5)
    {
      return result;
    }

    v36 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v33 = result;
    v34 = v7;
    v35 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return result;
  }

  v36 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v8 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v9 = *(a1 + 36);
  v33 = result;
  v34 = v9;
  v35 = 0;
LABEL_7:
  v10 = 0;
  while (v10 < v5)
  {
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_31;
    }

    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = a2(v33, v34, v35, a1);
    v17 = [v16 objectID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v18 = v36[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v30)
    {
      if (!v15)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000F5104(a3, a4);
      v11 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v11(v32, 0);
      if (v10 == v5)
      {
LABEL_28:
        sub_100010E34(v33, v34, v35);
        return v36;
      }
    }

    else
    {
      if (v15)
      {
        goto LABEL_36;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v19 = 1 << *(a1 + 32);
      if (v13 >= v19)
      {
        goto LABEL_32;
      }

      v20 = v13 >> 6;
      v21 = *(a1 + 56 + 8 * (v13 >> 6));
      if (((v21 >> v13) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v14)
      {
        goto LABEL_34;
      }

      v22 = v21 & (-2 << (v13 & 0x3F));
      if (v22)
      {
        v19 = __clz(__rbit64(v22)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v20 << 6;
        v24 = v20 + 1;
        v25 = (a1 + 64 + 8 * v20);
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_100010E34(v13, v14, 0);
            v19 = __clz(__rbit64(v26)) + v23;
            goto LABEL_27;
          }
        }

        result = sub_100010E34(v13, v14, 0);
      }

LABEL_27:
      v33 = v19;
      v34 = v14;
      v35 = 0;
      if (v10 == v5)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1002ADA98(uint64_t a1)
{
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v33);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v31[1] = v1;
  v42 = _swiftEmptyArrayStorage;
  sub_100253258(0, v7, 0);
  v8 = v42;
  v9 = -1 << *(a1 + 32);
  v41 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v36 = v3 + 32;
  v37 = v3 + 16;
  v32 = a1 + 64;
  v13 = v33;
  v34 = v7;
  v35 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v41 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v38 = v12;
    v40 = *(a1 + 36);
    v16 = *(v3 + 72);
    (*(v3 + 16))(v6, *(a1 + 48) + v16 * v11, v13);
    v42 = v8;
    v17 = v13;
    v19 = v8[2];
    v18 = v8[3];
    v20 = (v19 + 1);
    if (v19 >= v18 >> 1)
    {
      v39 = (v19 + 1);
      sub_100253258(v18 > 1, v19 + 1, 1);
      v20 = v39;
      v8 = v42;
    }

    v8[2] = v20;
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v39 = v8;
    v22 = v8 + v21 + v19 * v16;
    v23 = v3;
    result = (*(v3 + 32))(v22, v6, v17);
    v14 = 1 << *(v35 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v24 = *(v41 + 8 * v15);
    if ((v24 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    v13 = v17;
    a1 = v35;
    if (v40 != *(v35 + 36))
    {
      goto LABEL_25;
    }

    v25 = v24 & (-2 << (v11 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v15 << 6;
      v27 = v15 + 1;
      v28 = (v32 + 8 * v15);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_100010E34(v11, v40, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_19;
        }
      }

      result = sub_100010E34(v11, v40, 0);
LABEL_19:
      v13 = v33;
    }

    v12 = v38 + 1;
    v11 = v14;
    v3 = v23;
    v8 = v39;
    if (v38 + 1 == v34)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1002ADDBC(char a1)
{
  result = 0x44497463656A626FLL;
  switch(a1)
  {
    case 1:
      return 0xD00000000000001ELL;
    case 2:
      return 0xD000000000000012;
    case 3:
    case 6:
      return 0xD000000000000017;
    case 4:
      return 0x6F54636E79536164;
    case 5:
      return 0x654B687375506164;
    case 7:
      return 0xD000000000000011;
    case 8:
      v4 = 0x44656C746974;
      return v4 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
    case 9:
      return 0x6574656C706D6F63;
    case 10:
      return 0x6974656C706D6F63;
    case 11:
      return 0x797469726F697270;
    case 12:
      return 0x64656767616C66;
    case 13:
      return 0x6E6F697461657263;
    case 14:
      return 0xD000000000000010;
    case 15:
      return 0x6E65727275636572;
    case 16:
    case 36:
      return 0xD000000000000013;
    case 17:
      return 0xD000000000000011;
    case 18:
      return 0x656E6F5A656D6974;
    case 19:
      return 0x7961446C6C61;
    case 20:
      return 0xD000000000000011;
    case 21:
      v4 = 0x447365746F6ELL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
    case 22:
      v3 = 0x686361747461;
      goto LABEL_33;
    case 23:
      return 0x736D72616C61;
    case 24:
      v3 = 0x6E6769737361;
LABEL_33:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 25:
      result = 0x7367617468736168;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 27:
    case 37:
      result = 0xD00000000000001ALL;
      break;
    case 28:
      result = 0xD000000000000024;
      break;
    case 29:
      result = 0x48746361746E6F63;
      break;
    case 30:
      result = 0x6C70736944736369;
      break;
    case 31:
      result = 0x6C7255736369;
      break;
    case 32:
      result = 0x646574726F706D69;
      break;
    case 33:
      result = 0xD00000000000002BLL;
      break;
    case 34:
      result = 0x6974634172657375;
      break;
    case 35:
      result = 0x6572436863746162;
      break;
    case 38:
      result = 0xD000000000000029;
      break;
    case 39:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002AE228(uint64_t a1, unint64_t a2, unint64_t a3)
{
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v39 = *(isUniquelyReferenced_nonNull_native - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v49 = a1;
  if (a2 >> 62)
  {
LABEL_29:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }

    return v43;
  }

  v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return v43;
  }

LABEL_3:
  v11 = 0;
  v45 = a2 & 0xFFFFFFFFFFFFFF8;
  v46 = a2 & 0xC000000000000001;
  v38[1] = v39 + 16;
  v44 = (v39 + 8);
  v41 = a2;
  v42 = isUniquelyReferenced_nonNull_native;
  v40 = v10;
  while (1)
  {
    if (v46)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v45 + 16))
      {
        goto LABEL_26;
      }

      v15 = *(a2 + 8 * v11 + 32);
    }

    v14 = v15;
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v17 = [v15 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(*a3 + 16))
    {
      break;
    }

    sub_100363F20(v9);
    if ((v18 & 1) == 0)
    {
      break;
    }

LABEL_6:
    (*v44)(v9, isUniquelyReferenced_nonNull_native);

    ++v11;
    if (v16 == v10)
    {
      return v43;
    }
  }

  v47 = v14;
  v19 = v14;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v35 = v9;
    v36 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = v35;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v43 = v49;
  a2 = v19;
  v20 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *a3;
  v21 = v48;
  v22 = a3;
  *a3 = 0x8000000000000000;
  v23 = v9;
  a3 = sub_100363F20(v9);
  v25 = v21[2];
  v26 = (v24 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_27;
  }

  v28 = v24;
  if (v21[3] >= v27)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100375548();
    }

    goto LABEL_21;
  }

  sub_10036E09C(v27, isUniquelyReferenced_nonNull_native);
  v29 = sub_100363F20(v23);
  if ((v28 & 1) == (v30 & 1))
  {
    a3 = v29;
LABEL_21:
    isUniquelyReferenced_nonNull_native = v42;
    v31 = v48;
    if (v28)
    {
      v12 = v48[7];
      v13 = *(v12 + 8 * a3);
      *(v12 + 8 * a3) = a2;

      a3 = v22;
      *v22 = v31;
      a2 = v41;
      v9 = v23;
    }

    else
    {
      v48[(a3 >> 6) + 8] |= 1 << a3;
      v9 = v23;
      (*(v39 + 16))(v31[6] + *(v39 + 72) * a3, v23, isUniquelyReferenced_nonNull_native);
      *(v31[7] + 8 * a3) = a2;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_28;
      }

      v31[2] = v34;
      a3 = v22;
      *v22 = v31;
      a2 = v41;
    }

    v10 = v40;
    v14 = v47;
    goto LABEL_6;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002AE628(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1002ADDBC(*a1);
  v5 = v4;
  if (v3 == sub_1002ADDBC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002AE6B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1002ADDBC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002AE714()
{
  sub_1002ADDBC(*v0);
  String.hash(into:)();
}

Swift::Int sub_1002AE768()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1002ADDBC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002AE7C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1002B3014();
  *a2 = result;
  return result;
}

uint64_t sub_1002AE7F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002ADDBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002AE824@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002B3014();
  *a1 = result;
  return result;
}

uint64_t sub_1002AE878()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1002AE97C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B3068(*a1);
  *a2 = result;
  return result;
}

void sub_1002AE9AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0x49746E756F636361;
  v5 = 0xD000000000000014;
  v6 = 0x80000001007EA4F0;
  v7 = 0x80000001007EA510;
  v8 = 0xD00000000000001FLL;
  if (v2 == 4)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v7 = 0x80000001007EA530;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0xD000000000000010;
  if (v2 == 1)
  {
    v10 = 0x44497473696CLL;
  }

  else
  {
    v9 = 0x80000001007EA4D0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1002AEA78@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B3068(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1002AEAA0()
{
  v1 = *v0;
  v2 = 0x49746E756F636361;
  v3 = 0xD000000000000014;
  v4 = 0xD00000000000001FLL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 == 1)
  {
    v5 = 0x44497473696CLL;
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

void *sub_1002AEB78()
{
  result = sub_1002AEB98();
  qword_100974D20 = result;
  return result;
}

void *sub_1002AEB98()
{
  v0 = 0;
  while (1)
  {
    v4 = *(&off_1008DD570 + v0 + 32);
    if (v4 <= 0x27)
    {
      if (((1 << v4) & 0xFFFF7C0000) != 0)
      {
        goto LABEL_11;
      }

      if (v4 == 17)
      {
        v5 = 0xE700000000000000;
        v6 = 0x65746144657564;
        goto LABEL_12;
      }

      if (v4 == 23)
      {
        v6 = 0x6F74536D72616C61;
        v5 = 0xEC00000065676172;
        goto LABEL_12;
      }
    }

    if (v4 < 0x10)
    {
LABEL_11:
      v6 = sub_1002ADDBC(*(&off_1008DD570 + v0 + 32));
      v5 = v7;
      goto LABEL_12;
    }

    v5 = 0xE900000000000065;
    v6 = 0x7461447472617473;
LABEL_12:
    v8 = sub_1002ADDBC(v4);
    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_100005F4C(v8, v10);
    v14 = *(&_swiftEmptyDictionarySingleton + 2);
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (*(&_swiftEmptyDictionarySingleton + 3) < v17)
    {
      sub_10036A8F0(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_100005F4C(v8, v10);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_70;
      }

LABEL_17:
      if ((v18 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_2;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v24 = v12;
    sub_100373664();
    v12 = v24;
    if ((v18 & 1) == 0)
    {
LABEL_18:
      *(&_swiftEmptyDictionarySingleton + (v12 >> 6) + 8) |= 1 << v12;
      v20 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v12);
      *v20 = v8;
      v20[1] = v10;
      v21 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v12);
      *v21 = v6;
      v21[1] = v5;
      v22 = *(&_swiftEmptyDictionarySingleton + 2);
      v16 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v16)
      {
        goto LABEL_68;
      }

      *(&_swiftEmptyDictionarySingleton + 2) = v23;
      goto LABEL_3;
    }

LABEL_2:
    v1 = v12;

    v2 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v1);
    v3 = v2[1];
    *v2 = v6;
    v2[1] = v5;

LABEL_3:
    if (++v0 == 40)
    {
      v25 = 0;
      while (1)
      {
        v29 = &off_1008DD5B8 + v25++;
        v30 = v29[32];
        v31 = 0xD00000000000001FLL;
        if (v30 == 4)
        {
          v31 = 0xD000000000000014;
        }

        v32 = 0x80000001007EA530;
        if (v30 == 4)
        {
          v32 = 0x80000001007EA510;
        }

        if (v30 == 3)
        {
          v31 = 0xD000000000000014;
        }

        v33 = 0x80000001007EA4D0;
        if (v30 == 3)
        {
          v32 = 0x80000001007EA4F0;
        }

        v34 = 0x44497473696CLL;
        if (v30 == 1)
        {
          v33 = 0xE600000000000000;
        }

        else
        {
          v34 = 0xD000000000000010;
        }

        v35 = 1953720684;
        if (v30 != 1)
        {
          v35 = 0x6552746E65726170;
        }

        v36 = 0xE400000000000000;
        if (v30 != 1)
        {
          v36 = 0xEE007265646E696DLL;
        }

        if (!v30)
        {
          v34 = 0x49746E756F636361;
          v33 = 0xE900000000000044;
          v35 = 0x49746E756F636361;
          v36 = 0xE900000000000044;
        }

        if (v30 <= 2)
        {
          v37 = v34;
        }

        else
        {
          v37 = v31;
        }

        if (v30 <= 2)
        {
          v38 = v33;
        }

        else
        {
          v38 = v32;
        }

        if (v30 <= 2)
        {
          v39 = v35;
        }

        else
        {
          v39 = v31;
        }

        if (v30 <= 2)
        {
          v40 = v36;
        }

        else
        {
          v40 = v32;
        }

        v41 = swift_isUniquelyReferenced_nonNull_native();
        v42 = sub_100005F4C(v37, v38);
        v44 = *(&_swiftEmptyDictionarySingleton + 2);
        v45 = (v43 & 1) == 0;
        v16 = __OFADD__(v44, v45);
        v46 = v44 + v45;
        if (v16)
        {
          goto LABEL_67;
        }

        v47 = v43;
        if (*(&_swiftEmptyDictionarySingleton + 3) >= v46)
        {
          if (v41)
          {
            goto LABEL_59;
          }

          v53 = v42;
          sub_100373664();
          v42 = v53;
          if ((v47 & 1) == 0)
          {
            goto LABEL_60;
          }

LABEL_24:
          v26 = v42;

          v27 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v26);
          v28 = v27[1];
          *v27 = v39;
          v27[1] = v40;

          if (v25 == 6)
          {
            return &_swiftEmptyDictionarySingleton;
          }
        }

        else
        {
          sub_10036A8F0(v46, v41);
          v42 = sub_100005F4C(v37, v38);
          if ((v47 & 1) != (v48 & 1))
          {
            goto LABEL_70;
          }

LABEL_59:
          if (v47)
          {
            goto LABEL_24;
          }

LABEL_60:
          *(&_swiftEmptyDictionarySingleton + (v42 >> 6) + 8) |= 1 << v42;
          v49 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v42);
          *v49 = v37;
          v49[1] = v38;
          v50 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v42);
          *v50 = v39;
          v50[1] = v40;
          v51 = *(&_swiftEmptyDictionarySingleton + 2);
          v16 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v16)
          {
            goto LABEL_69;
          }

          *(&_swiftEmptyDictionarySingleton + 2) = v52;
          if (v25 == 6)
          {
            return &_swiftEmptyDictionarySingleton;
          }
        }
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_1002AF01C@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  result = sub_1003BE0EC(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002AF04C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_10000F61C(a1, v4);
  result = (*(v5 + 8))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002AF0B8(void **a1)
{
  v1 = *a1;
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 domain];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

LABEL_8:
    if ([v2 code] != -3005)
    {
      goto LABEL_17;
    }

    v10 = [v2 userInfo];
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v11 + 16))
    {
      v14 = sub_100005F4C(v12, v13);
      v16 = v15;

      if (v16)
      {
        sub_100005EF0(*(v11 + 56) + 32 * v14, v76);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_17;
        }

        if (v74 == 0x65656E6769737361 && v75 == 0xE800000000000000)
        {
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v31 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (qword_100935E18 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100006654(v32, qword_100940648);
        v33 = v1;
        v18 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v18, v34))
        {
          goto LABEL_22;
        }

        v73 = v34;
        v35 = swift_slowAlloc();
        v76[0] = swift_slowAlloc();
        *v35 = 136315906;
        v36 = [v33 remObjectID];
        if (v36)
        {
          v37 = v36;
          v38 = [v36 description];

          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;
        }

        else
        {
          v41 = 0xE300000000000000;
          v39 = 7104878;
        }

        v42 = sub_10000668C(v39, v41, v76);

        *(v35 + 4) = v42;
        *(v35 + 12) = 2080;
        v43 = [v33 originator];
        if (v43)
        {
          v44 = v43;
          v45 = [v43 remObjectID];
          if (v45)
          {
            v46 = v45;
            v47 = [v45 description];

            v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;

            v51 = v48;
            goto LABEL_35;
          }
        }

        v50 = 0xE300000000000000;
        v51 = 7104878;
LABEL_35:
        v52 = sub_10000668C(v51, v50, v76);

        *(v35 + 14) = v52;
        *(v35 + 22) = 2080;
        v53 = [v33 assignee];
        if (v53)
        {
          v54 = v53;
          v55 = [v53 remObjectID];
          if (v55)
          {
            v56 = v55;
            v57 = [v55 description];

            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            v61 = v58;
LABEL_40:
            v62 = sub_10000668C(v61, v60, v76);

            *(v35 + 24) = v62;
            *(v35 + 32) = 2080;
            v63 = [v33 reminder];
            if (v63)
            {
              v64 = v63;
              v65 = [v63 remObjectID];
              if (v65)
              {
                v66 = v65;
                v67 = [v65 description];

                v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v70 = v69;

                v71 = v68;
              }

              else
              {

                v70 = 0xE300000000000000;
                v71 = 7104878;
              }
            }

            else
            {
              v70 = 0xEF3E44497265646ELL;
              v71 = 0x696D65725F6F6E3CLL;
            }

            v72 = sub_10000668C(v71, v70, v76);

            *(v35 + 34) = v72;
            _os_log_impl(&_mh_execute_header, v18, v73, "Found a dangling assignment with nullified assignee, we will skip it from the reminder.assignments {objectID: %s, originator: %s, assignee: %s, reminderID: %s}", v35, 0x2Au);
            swift_arrayDestroy();

            goto LABEL_21;
          }
        }

        v60 = 0xE300000000000000;
        v61 = 7104878;
        goto LABEL_40;
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_17:
  if (qword_100935E18 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100940648);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v20 = 136315650;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v21 = String.init<A>(describing:)();
    v23 = sub_10000668C(v21, v22, v76);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
    sub_1000F5104(&qword_100940990, &qword_1007A0290);
    v24 = String.init<A>(describing:)();
    v26 = sub_10000668C(v24, v25, v76);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v27 = String.init<A>(describing:)();
    v29 = sub_10000668C(v27, v28, v76);

    *(v20 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Error occured when mapping object from %s to %s {error: %s}", v20, 0x20u);
    swift_arrayDestroy();

LABEL_21:
  }

LABEL_22:

  return 1;
}

uint64_t sub_1002AF880(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = [v6 createResolutionTokenMapIfNecessary];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 mergeWithMap:a4 forKey:v13];

  if (a5)
  {
    if (v14 && a1)
    {
      v15 = a1;
      v16 = [v15 serializedData];
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = [v15 attributedString];
      v19 = [v18 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v17;
    }

    goto LABEL_13;
  }

  v21 = [v6 remObjectID];
  if (!v21)
  {
    if (qword_100935E18 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100940648);
    v26 = v6;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v41[0] = v31;
      *v29 = 138412546;
      v32 = [v26 objectID];
      *(v29 + 4) = v32;
      *v30 = v32;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_10000668C(a2, a3, v41);
      _os_log_impl(&_mh_execute_header, v27, v28, "Can't merge documents for reminder because remObjectID is nil {reminder.objectID: %@, key: %s}", v29, 0x16u);
      sub_1000050A4(v30, &unk_100938E70, &unk_100797230);

      sub_10000607C(v31);
    }

LABEL_13:
    return 0;
  }

  v22 = v21;
  v23 = String._bridgeToObjectiveC()();
  v24 = [v6 valueForKey:v23];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (*(&v40 + 1))
  {
    v33 = swift_dynamicCast();
    if (v33)
    {
      v34 = v37;
    }

    else
    {
      v34 = 0;
    }

    if (v33)
    {
      v35 = v38;
    }

    else
    {
      v35 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1000050A4(v41, &qword_100939ED0, &qword_100791B10);
    v34 = 0;
    v35 = 0xF000000000000000;
  }

  v36 = sub_1002B6180(a1, v34, v35, a2, a3, v22);
  sub_100031A14(v34, v35);

  return v36;
}

uint64_t sub_1002AFC90(_OWORD *a1)
{
  if (qword_100936738 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_1006E32E8(a1);
}

void *sub_1002AFCFC()
{
  v2 = [v0 cachedDeserializedDueDateDeltaAlerts];
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects];
    v4 = v2;
  }

  else
  {
    v6 = [v0 dueDateDeltaAlertsData];
    if (v6)
    {
      v7 = v6;
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = objc_autoreleasePoolPush();
      v3 = type metadata accessor for RDDueDateDeltaAlerts();
      sub_1002BB840(&qword_10093B7B8, type metadata accessor for RDDueDateDeltaAlerts);
      static REMJSONRepresentable.fromJSONData(_:)();
      if (!v1)
      {
        v3 = *&v12[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects];
      }

      objc_autoreleasePoolPop(v11);
      sub_10001BBA0(v8, v10);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_1002AFE68(unint64_t a1)
{
  v3 = v1;
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:
    [v3 setDueDateDeltaAlertsData:0];
    [v3 setCachedDeserializedDueDateDeltaAlerts:0];
    return;
  }

  v11 = a1;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v11;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_4:
  v4 = sub_10012E8E4(a1);
  if (!v2)
  {
    v5 = v4;
    type metadata accessor for RDDueDateDeltaAlerts();
    sub_1002BB840(&qword_10093B7B8, type metadata accessor for RDDueDateDeltaAlerts);
    v6 = REMJSONRepresentable.toJSONData()();
    v8 = v6;
    v9 = v7;
    sub_100029344(v6, v7);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v8, v9);
    [v3 setDueDateDeltaAlertsData:isa];

    [v3 setCachedDeserializedDueDateDeltaAlerts:v5];
    sub_10001BBA0(v8, v9);
  }
}

id sub_1002AFFF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminderID];
  *a2 = result;
  return result;
}

uint64_t sub_1002B003C(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = __chkstk_darwin(v4).n128_u64[0];
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [v10 dueDateDelta];
  v12 = [v11 isEmpty];

  if (v12)
  {
    if (qword_100935E18 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100940648);
    v14 = v10;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v17 = 136315394;
      v18 = [v14 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1002BB840(&qword_10093F2A0, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v16;
      v21 = v20;
      (*(v5 + 8))(v9, v4);
      v22 = sub_10000668C(v19, v21, &v33);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      v23 = [v14 reminderID];
      *(v17 + 14) = v23;
      v24 = v31;
      *v31 = v23;
      _os_log_impl(&_mh_execute_header, v15, v30, "REMReminderStorageCDIngestor:applyDueDateDeltaAlertChanges: Found existing invalid empty early alert %s, dropping it from reminder %@", v17, 0x16u);
      sub_1000050A4(v24, &unk_100938E70, &unk_100797230);

      sub_10000607C(v32);
    }

    v25 = 0;
  }

  else
  {
    v26 = [v10 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = sub_100240CD4(v9, a2);
    (*(v5 + 8))(v9, v4);
    v25 = v27 ^ 1;
  }

  return v25 & 1;
}

void sub_1002B03BC(void *a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = *(v12 + 8);
  v17(v15, v11);
  [v2 setIdentifier:isa];

  v18 = [a1 identifier];
  if (v18)
  {
    v19 = v18;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v12 + 56))(v7, v20, 1, v11);
  sub_100031B58(v7, v10, &unk_100939D90, "8\n\r");
  if ((*(v12 + 48))(v10, 1, v11))
  {
    sub_1000050A4(v10, &unk_100939D90, "8\n\r");
    v21 = 0;
  }

  else
  {
    (*(v12 + 16))(v15, v10, v11);
    sub_1000050A4(v10, &unk_100939D90, "8\n\r");
    UUID.uuidString.getter();
    v17(v15, v11);
    v21 = String._bridgeToObjectiveC()();
  }

  [v2 setReminderIdentifier:v21];

  v22 = [a1 account];
  [v2 setAccount:v22];
}

void sub_1002B06A0(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  sub_1002B03BC(a2);
  v18 = [a3 externalIdentifier];
  [a1 setOldExternalIdentifier:v18];

  v19 = [a3 identifier];
  if (v19)
  {
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 56))(v14, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v14, 1, 1, v6);
  }

  sub_100031B58(v14, v17, &unk_100939D90, "8\n\r");
  if ((*(v7 + 48))(v17, 1, v6))
  {
    sub_1000050A4(v17, &unk_100939D90, "8\n\r");
    v21 = 0;
  }

  else
  {
    (*(v7 + 16))(v10, v17, v6);
    sub_1000050A4(v17, &unk_100939D90, "8\n\r");
    UUID.uuidString.getter();
    (*(v7 + 8))(v10, v6);
    v21 = String._bridgeToObjectiveC()();
  }

  [a1 setOldListIdentifier:v21];
}

Swift::Void __swiftcall REMCDReminder.willChange(_:to:)(REMCDList_optional *_, REMCDList_optional *to)
{
  if (_)
  {
    v4 = _;
    v5 = [v2 managedObjectContext];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (to)
        {
          if (qword_100935E18 != -1)
          {
            swift_once();
          }

          v7 = type metadata accessor for Logger();
          sub_100006654(v7, qword_100940648);
          v8 = to;
          v9 = v2;
          v10 = v4;
          v11 = v9;
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            *v14 = 136446978;
            v15 = [v11 remObjectID];
            sub_1000F5104(&unk_10093AF40, &unk_100795790);
            v72 = v13;
            v16 = Optional.descriptionOrNil.getter();
            v18 = v17;

            v19 = sub_10000668C(v16, v18, &v76);

            *(v14 + 4) = v19;
            *(v14 + 12) = 2082;
            v20 = [(REMCDList_optional *)v10 remObjectID];
            v21 = Optional.descriptionOrNil.getter();
            v23 = v22;

            v24 = sub_10000668C(v21, v23, &v76);

            *(v14 + 14) = v24;
            *(v14 + 22) = 2082;
            v74 = [(REMCDList_optional *)v8 remObjectID];
            v25 = Optional.descriptionOrNil.getter();
            v27 = v26;

            v28 = sub_10000668C(v25, v27, &v76);

            *(v14 + 24) = v28;
            *(v14 + 32) = 1026;
            LODWORD(v28) = [v11 isDeleted];

            *(v14 + 34) = v28;
            _os_log_impl(&_mh_execute_header, v12, v72, "Adding an auxiliary reminder change MOVE info {reminder: %{public}s, oldList: %{public}s, newList: %{public}s, isDeleted: %{BOOL,public}d}", v14, 0x26u);
            swift_arrayDestroy();

LABEL_25:
            v31 = v10;
            v62 = v11;
            sub_1002B13DC();

LABEL_31:
            return;
          }
        }

        else
        {
          if (qword_100935E18 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_100006654(v44, qword_100940648);
          v45 = v2;
          v10 = v4;
          v11 = v45;
          v12 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v12, v46))
          {
            v47 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            *v47 = 136446978;
            v48 = [v11 remObjectID];
            sub_1000F5104(&unk_10093AF40, &unk_100795790);
            v49 = Optional.descriptionOrNil.getter();
            v51 = v50;

            v52 = sub_10000668C(v49, v51, &v76);

            *(v47 + 4) = v52;
            *(v47 + 12) = 2082;
            v53 = [(REMCDList_optional *)v10 remObjectID];
            v54 = Optional.descriptionOrNil.getter();
            v56 = v55;

            v57 = sub_10000668C(v54, v56, &v76);

            *(v47 + 14) = v57;
            *(v47 + 22) = 2080;
            v58 = Optional.descriptionOrNil.getter();
            v60 = sub_10000668C(v58, v59, &v76);

            *(v47 + 24) = v60;
            *(v47 + 32) = 1026;
            v61 = [v11 isDeleted];

            *(v47 + 34) = v61;
            _os_log_impl(&_mh_execute_header, v12, v46, "Adding an auxiliary reminder change DELETE info {reminder: %{public}s, oldList: %{public}s, newList: %s, isDeleted: %{BOOL,public}d}", v47, 0x26u);
            swift_arrayDestroy();

            goto LABEL_25;
          }
        }

        goto LABEL_25;
      }
    }

    v42 = objc_opt_self();
    v43 = String._bridgeToObjectiveC()();
    [v42 internalErrorWithDebugDescription:v43];

    swift_willThrow();
    if (qword_100935E18 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100006654(v63, qword_100940648);
    v64 = v2;
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v31, v65))
    {

      return;
    }

    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v76 = v67;
    *v66 = 136446466;
    swift_getErrorValue();
    v68 = Error.rem_errorDescription.getter();
    v70 = sub_10000668C(v68, v69, &v76);

    *(v66 + 4) = v70;
    *(v66 + 12) = 1026;
    v71 = [v64 isDeleted];

    *(v66 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v31, v65, "Failed to add auxiliary reminder change info due to error: %{public}s, isDeleted: %{BOOL,public}d", v66, 0x12u);
    sub_10000607C(v67);

    goto LABEL_31;
  }

  if (qword_100935E18 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_100940648);
  v30 = to;
  v73 = v2;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v33 = 67240962;
    *(v33 + 4) = [v73 isInserted];
    *(v33 + 8) = 2082;
    v75 = [v73 remObjectID];
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v34 = Optional.descriptionOrNil.getter();
    v36 = v35;

    v37 = sub_10000668C(v34, v36, &v76);

    *(v33 + 10) = v37;
    *(v33 + 18) = 2082;
    if (to)
    {
      to = [(REMCDList_optional *)v30 remObjectID];
    }

    v38 = Optional.descriptionOrNil.getter();
    v40 = v39;

    v41 = sub_10000668C(v38, v40, &v76);

    *(v33 + 20) = v41;
    *(v33 + 28) = 1026;
    LODWORD(v41) = [v73 isDeleted];

    *(v33 + 30) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "Reminder has no oldList, no auxiliary reminder change info is needed {reminder.isInserted: %{BOOL,public}d, reminder: %{public}s, newList: %{public}s, isDeleted: %{BOOL,public}d}", v33, 0x22u);
    swift_arrayDestroy();

    goto LABEL_31;
  }
}

void *sub_1002B1C5C(unint64_t a1, void *a2)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v16 = a1;
  v3 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v16;
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = a1 + 32;
  while (!__OFSUB__(v3--, 1))
  {
    if (v4)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_17;
      }

      if (v3 >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      v9 = *(v6 + 8 * v3);
    }

    v10 = v9;
    v11 = [v9 dueDateDelta];
    v12 = [v11 isEmpty];

    if (v12)
    {
      v13 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (!v3)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!v3)
      {
        return _swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return _swiftEmptyArrayStorage;
}

void *sub_1002B1E24(unint64_t a1, uint64_t *a2)
{
  v22 = a2;
  v21 = type metadata accessor for UUID();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v21);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v20[0] = v2;
  v20[1] = a1;
  v9 = a1 & 0xC000000000000001;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = a1 + 32;
  v12 = (v4 + 8);
  while (!__OFSUB__(v8--, 1))
  {
    if (v9)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }

      if (v8 >= *(v10 + 16))
      {
        goto LABEL_16;
      }

      v14 = *(v11 + 8 * v8);
    }

    v15 = v14;
    v16 = *v22;

    v17 = [v15 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v17) = sub_100240CD4(v7, v16);

    (*v12)(v7, v21);
    if (v17)
    {

      if (!v8)
      {
        return v23;
      }
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = v23[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!v8)
      {
        return v23;
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return v23;
}

uint64_t sub_1002B203C(void *a1, uint64_t *a2, uint64_t a3)
{
  v135 = a3;
  v128 = a2;
  v5 = type metadata accessor for UUID();
  v139 = *(v5 - 8);
  v6 = *(v139 + 64);
  __chkstk_darwin(v5);
  v8 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v133 = &v126 - v10;
  __chkstk_darwin(v11);
  v132 = &v126 - v12;
  __chkstk_darwin(v13);
  v134 = &v126 - v14;
  __chkstk_darwin(v15);
  v17 = &v126 - v16;
  v147 = _swiftEmptyArrayStorage;
  v145 = _swiftEmptyArrayStorage;
  v146 = _swiftEmptyDictionarySingleton;
  if (a1)
  {
    v18 = a1;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = sub_1002B1C5C(v18, &v145);

  v20 = sub_1002AE228(_swiftEmptyArrayStorage, v19, &v146);
  v130 = v3;

  v21 = v145;
  v22 = v145 >> 62;
  if (v145 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v141 = v5;
  v138 = v21;
  v136 = v8;
  v129 = v20;
  if (v23)
  {
    v144 = v21;

    sub_1000F5104(&qword_10093F5E0, &unk_1007B5240);
    v5 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CB48(&qword_100950F30, &qword_10093F5E0, &unk_1007B5240);
    v24 = sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v19 = &v144;
    v140 = v5;
    v25 = v130;
    v26 = Sequence.mapToSet<A>(_:)();
    v130 = v25;

    if (v22)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = _swiftEmptyArrayStorage;
    if (v27)
    {
      v144 = _swiftEmptyArrayStorage;
      sub_100253258(0, v27 & ~(v27 >> 63), 0);
      if (v27 < 0)
      {
        __break(1u);
        goto LABEL_101;
      }

      v131 = v26;
      v137 = v24;
      v29 = 0;
      v21 = v144;
      v30 = v138 & 0xC000000000000001;
      do
      {
        if (v30)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v31 = *(v138 + 8 * v29 + 32);
        }

        v32 = v31;
        v33 = [v31 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v144 = v21;
        v5 = *(v21 + 16);
        v34 = *(v21 + 24);
        if (v5 >= v34 >> 1)
        {
          sub_100253258(v34 > 1, v5 + 1, 1);
          v21 = v144;
        }

        ++v29;
        *(v21 + 16) = v5 + 1;
        (*(v139 + 32))(v21 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v5, v17, v141);
      }

      while (v27 != v29);
    }

    if (qword_100935E18 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_100940648);

    v19 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v19, v36))
    {
      v37 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      *v37 = 136446466;
      v38 = Set.description.getter();
      v40 = v39;

      v41 = sub_10000668C(v38, v40, &v144);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      v42 = Array.description.getter();
      v44 = v43;

      v45 = sub_10000668C(v42, v44, &v144);

      *(v37 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v19, v36, "REMReminderStorageCDIngestor:applyDueDateDeltaAlertChanges: Detected attempts to insert/update invalid empty early alert with 0 delta {reminderIDs: %{public}s, ids: %{public}s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v28 = v135;
    v20 = v129;
  }

  else
  {
    v28 = v135;
  }

  v144 = _swiftEmptySetSingleton;
  v27 = v134;
  if (!(v20 >> 62))
  {
    v24 = v141;
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_46:
    v67 = v28;

    sub_1002723A0(v67);
    goto LABEL_47;
  }

  v65 = v28;
  v66 = _CocoaArrayWrapper.endIndex.getter();
  v28 = v65;
  v24 = v141;
  if (!v66)
  {
    goto LABEL_46;
  }

LABEL_28:
  if (v28 >> 62)
  {
    v96 = v28;
    v97 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v96;
    v22 = v97;
    if (!v97)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v22 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_47;
    }
  }

  if (v22 < 1)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v46 = 0;
  v47 = v146;
  v137 = v28 & 0xC000000000000001;
  v48 = (v139 + 8);
  v131 = v22;
  v140 = v146;
  do
  {
    v50 = v28;
    if (v137)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v51 = *(v28 + 8 * v46 + 32);
    }

    v52 = v51;
    v53 = [v51 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (v47[2] && (v54 = sub_100363F20(v27), (v55 & 1) != 0))
    {
      v56 = *v48;
      v57 = *(v140[7] + 8 * v54);
      v56(v27, v24);
      v58 = v24;
      v59 = v57;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v64 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v60 = [v52 identifier];
      v61 = v133;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = v132;
      sub_1003794C4(v132, v61);

      v56(v62, v58);
      v24 = v58;
      v27 = v134;
      v28 = v135;
      v22 = v131;
    }

    else
    {
      (*v48)(v27, v24);
      v49 = v52;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v63 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v131;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v28 = v50;
    }

    ++v46;
    v47 = v140;
  }

  while (v22 != v46);
LABEL_47:
  v68 = v130;
  v27 = sub_1002B1E24(v129, &v144);
  v69 = v68;

  sub_1002723A0(v70);
  if (v128)
  {
    v22 = v128;
  }

  else
  {
    v22 = _swiftEmptySetSingleton;
  }

  v143 = _swiftEmptyArrayStorage;
  v137 = v147;
  if (v147 >> 62)
  {
    goto LABEL_87;
  }

  for (i = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v19 = v69;
    v140 = v22;
    if (!i)
    {
      break;
    }

    v135 = v27;
    v72 = 0;
    v27 = v137;
    v73 = v137 & 0xC000000000000001;
    v69 = v137 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v73)
      {
        v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v72 >= *(v69 + 16))
        {
          goto LABEL_86;
        }

        v75 = *(v27 + 8 * v72 + 32);
      }

      v76 = v75;
      v24 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      v142 = v75;
      v77 = sub_1002B003C(&v142, v22);
      if (v19)
      {
        goto LABEL_105;
      }

      if (v77)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v78 = v143[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v22 = v140;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v19 = 0;
        v27 = v137;
      }

      else
      {
      }

      ++v72;
      v74 = v24 == i;
      v24 = v141;
      if (v74)
      {
        v5 = v143;
        v27 = v135;
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_66:

  v21 = v144;
  if (v144[2])
  {
    goto LABEL_69;
  }

  if (v27 >> 62)
  {
LABEL_102:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_69;
    }

    goto LABEL_103;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_69:
    v79 = 1;
    goto LABEL_70;
  }

LABEL_103:
  v79 = *(v22 + 16) != 0;
LABEL_70:
  LODWORD(v133) = v79;
  v135 = v19;
  v80 = qword_100935E18;

  if (v80 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  v82 = sub_100006654(v81, qword_100940648);

  v83 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();

  v84 = os_log_type_enabled(v83, v76);
  v134 = v5;
  if (!v84)
  {

LABEL_93:

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v131 = v82;
      v107 = v106;
      v143 = v106;
      *v105 = 136315138;

      v109 = v135;
      sub_1002ADA98(v108);
      v135 = v109;
      v110 = v21;

      v111 = Array.description.getter();
      v113 = v112;

      v114 = v111;
      v22 = v140;
      v115 = sub_10000668C(v114, v113, &v143);

      *(v105 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v103, v104, "REMReminderStorageCDIngestor:applyDueDateDeltaAlertChanges:  UPDATED = %s", v105, 0xCu);
      sub_10000607C(v107);
    }

    else
    {
      v110 = v21;
    }

    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v143 = v119;
      *v118 = 136315138;
      sub_1002ADA98(v22);
      v132 = v110;

      v120 = Array.description.getter();
      v122 = v121;

      v123 = sub_10000668C(v120, v122, &v143);

      *(v118 + 4) = v123;

      _os_log_impl(&_mh_execute_header, v116, v117, "REMReminderStorageCDIngestor:applyDueDateDeltaAlertChanges:  DELETED = %s", v118, 0xCu);
      sub_10000607C(v119);
    }

    else
    {
    }

    v124 = v133;

    return v124;
  }

  v85 = swift_slowAlloc();
  v128 = swift_slowAlloc();
  v143 = v128;
  v129 = v85;
  *v85 = 136315138;
  if (!(v27 >> 62))
  {
    v86 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    LODWORD(v130) = v76;
    if (v86)
    {
      goto LABEL_75;
    }

LABEL_91:

LABEL_92:
    v98 = Array.description.getter();
    v100 = v99;

    v101 = sub_10000668C(v98, v100, &v143);

    v102 = v129;
    *(v129 + 1) = v101;
    _os_log_impl(&_mh_execute_header, v83, v130, "REMReminderStorageCDIngestor:applyDueDateDeltaAlertChanges: INSERTED = %s", v102, 0xCu);
    sub_10000607C(v128);

    goto LABEL_93;
  }

  v86 = _CocoaArrayWrapper.endIndex.getter();
  LODWORD(v130) = v76;
  if (!v86)
  {
    goto LABEL_91;
  }

LABEL_75:
  v141 = v86;
  v142 = _swiftEmptyArrayStorage;
  sub_100253258(0, v86 & ~(v86 >> 63), 0);
  if ((v141 & 0x8000000000000000) == 0)
  {
    v127 = v83;
    v131 = v82;
    v132 = v21;
    v87 = 0;
    v88 = v142;
    v89 = v27;
    v137 = v27 & 0xC000000000000001;
    do
    {
      if (v137)
      {
        v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v90 = *(v89 + 8 * v87 + 32);
      }

      v91 = v90;
      v92 = [v90 identifier];
      v93 = v136;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v142 = v88;
      v95 = v88[2];
      v94 = v88[3];
      if (v95 >= v94 >> 1)
      {
        sub_100253258(v94 > 1, v95 + 1, 1);
        v88 = v142;
      }

      ++v87;
      v88[2] = v95 + 1;
      (*(v139 + 32))(v88 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v95, v93, v24);
      v22 = v140;
    }

    while (v141 != v87);

    v82 = v131;
    v21 = v132;
    v83 = v127;
    goto LABEL_92;
  }

  __break(1u);
LABEL_105:

  __break(1u);
  return result;
}

uint64_t sub_1002B3014()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1002B3068(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1738, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

id sub_1002B30B4()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() userActivityWithDictionaryData:isa error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

char *sub_1002B3180(void *a1)
{
  v2 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v353 = &v344 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v356 = &v344 - v6;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v354 = &v344 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v352 = &v344 - v13;
  v14 = __chkstk_darwin(v12);
  v357 = &v344 - v15;
  __chkstk_darwin(v14);
  v371 = &v344 - v16;
  v364 = type metadata accessor for UUID();
  v363 = *(v364 - 1);
  isa = v363[8].isa;
  __chkstk_darwin(v364);
  v362 = &v344 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = type metadata accessor for URL();
  v369 = *(v370 - 8);
  v19 = *(v369 + 8);
  __chkstk_darwin(v370);
  v368 = &v344 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DateComponents();
  v376 = *(v21 - 8);
  v22 = v376[8];
  v23 = __chkstk_darwin(v21);
  v367 = &v344 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v366 = &v344 - v25;
  v26 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v360 = &v344 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v344 - v31;
  v33 = __chkstk_darwin(v30);
  v375 = &v344 - v34;
  v35 = __chkstk_darwin(v33);
  v359 = &v344 - v36;
  v37 = __chkstk_darwin(v35);
  v372 = &v344 - v38;
  __chkstk_darwin(v37);
  v40 = &v344 - v39;
  v380 = type metadata accessor for Date();
  v378 = *(v380 - 8);
  v41 = *(v378 + 64);
  v42 = __chkstk_darwin(v380);
  v365 = &v344 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v355 = &v344 - v45;
  v46 = __chkstk_darwin(v44);
  v48 = &v344 - v47;
  v49 = __chkstk_darwin(v46);
  v361 = &v344 - v50;
  v51 = __chkstk_darwin(v49);
  v374 = &v344 - v52;
  v53 = __chkstk_darwin(v51);
  v377 = &v344 - v54;
  v55 = __chkstk_darwin(v53);
  v373 = &v344 - v56;
  __chkstk_darwin(v55);
  v58 = &v344 - v57;
  v383 = 0;
  v381 = [a1 remObjectIDWithError:&v383];
  if (!v381)
  {
    v77 = v383;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v40;
  }

  v358 = v21;
  v349 = v8;
  v59 = v383;
  v60 = [a1 account];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 remObjectID];

    v351 = v62;
    if (v62)
    {
      v63 = [a1 list];
      v345 = v7;
      if (v63)
      {
        v64 = v63;
        v65 = [v63 remObjectID];
      }

      else
      {
        v65 = 0;
      }

      v78 = v32;
      v79 = objc_allocWithZone(REMReminderStorage);
      v348 = v65;
      v382 = [v79 initWithObjectID:v381 listID:v65 accountID:v351];
      v80 = [a1 parentReminder];
      v81 = v378;
      if (v80)
      {
        v82 = v80;
        v83 = [v80 remObjectID];
      }

      else
      {
        v83 = 0;
      }

      v84 = v382;
      [v382 setParentReminderID:v83];

      v85 = [a1 daCalendarItemUniqueIdentifier];
      [v84 setDaCalendarItemUniqueIdentifier:v85];

      v86 = [a1 externalIdentifier];
      [v84 setExternalIdentifier:v86];

      v87 = [a1 externalModificationTag];
      [v84 setExternalModificationTag:v87];

      v88 = [a1 daSyncToken];
      [v84 setDaSyncToken:v88];

      v89 = [a1 daPushKey];
      [v84 setDaPushKey:v89];

      [v84 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
      [v84 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];
      v90 = [a1 titleDocument];
      if (v90)
      {
        v91 = v90;
        v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;

        v95.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v92, v94);
      }

      else
      {
        v95.super.isa = 0;
      }

      v96 = v382;
      [v382 setTitleDocumentData:v95.super.isa];

      v97 = [a1 title];
      [v96 setTitleAsStringByCDIngestor:v97];

      [v96 setCompleted:{objc_msgSend(a1, "completed")}];
      v98 = [a1 completionDate];
      v346 = v48;
      v347 = v78;
      if (v98)
      {
        v99 = v98;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v100.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v81 + 8))(v58, v380);
      }

      else
      {
        v100.super.isa = 0;
      }

      v101 = v382;
      [v382 setCompletionDate:v100.super.isa];

      [v101 setPrefersUrgentPresentationStyleForDateAlarms:{objc_msgSend(a1, "prefersUrgentPresentationStyleForDateAlarms")}];
      v102 = [a1 priority];
      [v101 setPriority:v102 & ~(v102 >> 63)];
      [v101 setFlagged:{objc_msgSend(a1, "flagged")}];
      v103 = [a1 creationDate];
      v350 = a1;
      if (v103)
      {
        v104 = v377;
        v105 = v103;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v106 = *(v81 + 32);
        v107 = v372;
        v108 = v104;
        v109 = v380;
        v106(v372, v108, v380);
        v110 = *(v81 + 56);
        v110(v107, 0, 1, v109);
        v106(v40, v107, v109);
        v111 = v109;
        v110(v40, 0, 1, v109);
        v112 = *(v81 + 48);
        v113 = v373;
        v114 = v347;
        v115 = v112(v40, 1, v109);
      }

      else
      {
        v110 = *(v81 + 56);
        v116 = 1;
        v117 = v372;
        v111 = v380;
        v110(v372, 1, 1, v380);
        v118 = [v101 lastModifiedDate];
        v119 = v359;
        if (v118)
        {
          v120 = v118;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v111 = v380;
          v116 = 0;
        }

        v110(v119, v116, 1, v111);
        sub_100031B58(v119, v40, &unk_100938850, qword_100795AE0);
        v112 = *(v81 + 48);
        v121 = v112(v117, 1, v111);
        v114 = v347;
        if (v121 != 1)
        {
          sub_1000050A4(v117, &unk_100938850, qword_100795AE0);
        }

        v113 = v373;
        v115 = v112(v40, 1, v111);
      }

      if (v115 == 1)
      {
        Date.init()();
        v122 = v111;
        if (v112(v40, 1, v111) != 1)
        {
          sub_1000050A4(v40, &unk_100938850, qword_100795AE0);
        }
      }

      else
      {
        (*(v81 + 32))(v113, v40, v111);
        v122 = v111;
      }

      v123 = Date._bridgeToObjectiveC()().super.isa;
      v124 = *(v81 + 8);
      v372 = (v81 + 8);
      v373 = v124;
      (v124)(v113, v122);
      v40 = v382;
      [v382 setCreationDate:v123];

      v125 = v350;
      v126 = [v350 lastModifiedDate];
      if (v126)
      {
        v127 = v81;
        v128 = v377;
        v129 = v126;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v130 = *(v127 + 32);
        v130(v114, v128, v122);
        v110(v114, 0, 1, v122);
        v131 = v114;
        v132 = v375;
        v130(v375, v131, v122);
        v133 = v132;
        v110(v132, 0, 1, v122);
      }

      else
      {
        v134 = 1;
        v110(v114, 1, 1, v122);
        v135 = [v125 creationDate];
        if (v135)
        {
          v136 = v360;
          v137 = v135;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v138 = v136;
          v122 = v380;
          v134 = 0;
        }

        else
        {
          v138 = v360;
        }

        v110(v138, v134, 1, v122);
        v139 = v138;
        v133 = v375;
        sub_100031B58(v139, v375, &unk_100938850, qword_100795AE0);
        if (v112(v114, 1, v122) != 1)
        {
          sub_1000050A4(v114, &unk_100938850, qword_100795AE0);
        }
      }

      v140 = v112(v133, 1, v122);
      v141 = v373;
      v142 = v374;
      v143 = v358;
      if (v140 == 1)
      {
        Date.init()();
        v144 = v112(v133, 1, v122);
        v145 = v379;
        if (v144 != 1)
        {
          sub_1000050A4(v133, &unk_100938850, qword_100795AE0);
        }
      }

      else
      {
        (*(v378 + 32))(v374, v133, v122);
        v145 = v379;
      }

      v146 = Date._bridgeToObjectiveC()().super.isa;
      v141(v142, v122);
      [v40 setLastModifiedDate:v146];

      v147 = v350;
      v148 = [v350 recurrenceRules];
      if (v148)
      {
        v383 = v148;
        v149 = v148;
        sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
        sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
        v150 = Sequence.elements<A>(ofType:)();

        if (qword_100935E20 != -1)
        {
          swift_once();
        }

        v151 = type metadata accessor for Logger();
        v152 = sub_100006654(v151, qword_100940660);
        v383 = v150;
        *(&v344 - 2) = __chkstk_darwin(v152);
        sub_1000F5104(&qword_100940948, &qword_1007A0258);
        sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
        sub_10000CB48(&qword_100940950, &qword_100940948, &qword_1007A0258);
        v153 = v379;
        Sequence.map<A>(skippingError:_:)();
        v145 = v153;
        if (v153)
        {

          v145 = 0;
        }

        else
        {
        }

        v154 = Array._bridgeToObjectiveC()().super.isa;

        v143 = v358;
      }

      else
      {
        v154 = 0;
      }

      [v40 setRecurrenceRules:v154];

      v155 = [v147 startDateComponents];
      v156 = v376;
      if (v155)
      {
        v157 = v366;
        v158 = v155;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v159.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
        (v156[1])(v157, v143);
      }

      else
      {
        v159.super.isa = 0;
      }

      [v40 setStartDateComponents:v159.super.isa];

      v160 = [v147 dueDateComponents];
      if (v160)
      {
        v161 = v367;
        v162 = v160;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v163.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
        (v156[1])(v161, v143);
      }

      else
      {
        v163.super.isa = 0;
      }

      [v40 setDueDateComponents:v163.super.isa];

      v164 = [v147 timeZone];
      [v40 setTimeZone:v164];

      [v40 setAllDay:{objc_msgSend(v147, "allDay")}];
      v165 = [v147 dueDateDeltaAlertsData];
      if (v165)
      {
        v166 = v165;
        v167 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v169 = v168;

        v170.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v167, v169);
      }

      else
      {
        v170.super.isa = 0;
      }

      [v40 setDueDateDeltaAlertsData:v170.super.isa];

      v171 = [v147 notesDocument];
      if (v171)
      {
        v172 = v171;
        v173 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v175 = v174;

        v176.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v173, v175);
      }

      else
      {
        v176.super.isa = 0;
      }

      [v40 setNotesDocumentData:v176.super.isa];

      v177 = [v147 notes];
      [v40 setNotesAsStringByCDIngestor:v177];

      v178 = [v147 attachments];
      if (v178)
      {
        v383 = v178;
        v179 = v178;
        sub_1000F5104(&qword_100940958, &qword_1007A0260);
        sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
        v180 = Sequence.elements<A>(ofType:)();

        if (qword_100935E20 != -1)
        {
          swift_once();
        }

        v181 = type metadata accessor for Logger();
        v182 = sub_100006654(v181, qword_100940660);
        v383 = v180;
        *(&v344 - 2) = __chkstk_darwin(v182);
        sub_1000F5104(&qword_100940960, &qword_1007A0268);
        sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
        sub_10000CB48(&qword_100940968, &qword_100940960, &qword_1007A0268);
        Sequence.map<A>(skippingError:_:)();
        if (v145)
        {

          v145 = 0;
        }

        else
        {
        }

        v40 = v382;
        v183 = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v183 = 0;
      }

      [v40 setAttachments:v183];

      type metadata accessor for REMAlarmCDIngestor();
      inited = swift_initStackObject();
      v185 = v351;
      v378 = inited;
      v186 = v381;
      *(inited + 16) = v351;
      *(inited + 24) = v186;
      v187 = v185;
      v188 = v186;
      v189 = [v147 alarmStorage];
      if (v189)
      {
        v381 = v187;
        v379 = v145;
        v383 = v189;
        v190 = v189;
        sub_1000060C8(0, &unk_100938870, off_1008D4128);
        sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
        v191 = Sequence.elements<A>(ofType:)();

        if (qword_100935E20 != -1)
        {
          swift_once();
        }

        v192 = type metadata accessor for Logger();
        v193 = sub_100006654(v192, qword_100940660);
        v383 = v191;
        *(&v344 - 2) = __chkstk_darwin(v193);
        sub_1000F5104(&qword_10094F450, &unk_1007A0270);
        sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
        sub_10000CB48(&qword_100940970, &qword_10094F450, &unk_1007A0270);
        v194 = v379;
        Sequence.map<A>(skippingError:_:)();
        v145 = v194;
        if (v194)
        {

          v145 = 0;
        }

        else
        {
        }

        v40 = v382;
        v195 = Array._bridgeToObjectiveC()().super.isa;

        v187 = v381;
      }

      else
      {
        v195 = 0;
      }

      [v40 setAlarms:v195];

      type metadata accessor for REMAssignmentCDIngestor();
      v196 = swift_initStackObject();
      v196[2] = v187;
      v196[3] = v188;
      v381 = v196;
      v197 = v187;
      v198 = v188;
      v199 = [v147 assignments];
      if (!v199)
      {
LABEL_89:
        type metadata accessor for REMHashtagCDIngestor();
        v206 = swift_initStackObject();
        *(v206 + 16) = v197;
        *(v206 + 24) = v198;
        v376 = v197;
        v379 = v198;
        v207 = [v147 hashtags];
        if (!v207)
        {
          goto LABEL_100;
        }

        v208 = v207;
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
        v209 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v383 = v209;
        sub_1000F5104(&qword_10093B298, &qword_100798898);
        sub_10000CB48(&qword_10093B2A0, &qword_10093B298, &qword_100798898);
        v210 = Sequence.elements<A>(ofType:)();

        if (v210 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_92;
          }
        }

        else if (*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_92:
          v375 = v206;
          if (qword_100935E20 != -1)
          {
            swift_once();
          }

          v211 = type metadata accessor for Logger();
          v212 = sub_100006654(v211, qword_100940660);
          v383 = v210;
          *(&v344 - 2) = __chkstk_darwin(v212);
          sub_1000F5104(&qword_10094F560, &qword_1007AC6A0);
          sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
          sub_10000CB48(&unk_10093D0C0, &qword_10094F560, &qword_1007AC6A0);
          v213 = Sequence.map<A>(skippingError:_:)();
          if (v145)
          {

            v145 = 0;
            v214 = _swiftEmptyArrayStorage;
          }

          else
          {
            v214 = v213;
          }

          v40 = v382;
          sub_1001A606C(v214);

          sub_10000CDE4(&qword_10093AA28, &unk_10093F600, REMHashtag_ptr);
          v215 = Set._bridgeToObjectiveC()().super.isa;

          [v40 setHashtags:v215];

          v206 = v375;
LABEL_100:
          [v40 setResolutionTokenMap:0];
          v216 = [v147 resolutionTokenMapData];
          if (v216)
          {
            v217 = v216;
            v218 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v220 = v219;

            v221.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v218, v220);
          }

          else
          {
            v221.super.isa = 0;
          }

          [v40 setResolutionTokenMapData:v221.super.isa];

          v222 = [v147 contactHandles];
          if (v222)
          {
            v223 = v222;
            v224 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v226 = v225;

            sub_100029344(v224, v226);
            v227 = Data._bridgeToObjectiveC()().super.isa;
            v228 = [objc_opt_self() representationFromData:v227];

            sub_10001BBA0(v224, v226);
            [v40 setContactHandles:v228];

            sub_10001BBA0(v224, v226);
          }

          v229 = [v147 icsDisplayOrder];
          [v40 setIcsDisplayOrder:v229 & ~(v229 >> 63)];
          v230 = [v147 icsUrl];
          if (v230)
          {
            v231 = v368;
            v232 = v230;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            URL._bridgeToObjectiveC()(v233);
            v235 = v234;
            (*(v369 + 1))(v231, v370);
          }

          else
          {
            v235 = 0;
          }

          [v40 setIcsUrl:v235];

          v236 = [v147 importedICSData];
          if (v236)
          {
            v237 = v236;
            v238 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v240 = v239;

            v241.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v238, v240);
          }

          else
          {
            v241.super.isa = 0;
          }

          [v40 setImportedICSData:v241.super.isa];

          v242 = [v147 userActivity];
          if (v242)
          {
            v243 = v242;
            v244 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v246 = v245;

            sub_1000060C8(0, &qword_100940988, REMUserActivity_ptr);
            sub_100029344(v244, v246);
            v247 = sub_1002B30B4();
            if (v145)
            {
              sub_10001BBA0(v244, v246);

              v248 = v378;
              swift_setDeallocating();

              v249 = v381;
              swift_setDeallocating();

              v250 = v249[3];
              sub_10001BBA0(v244, v246);
              swift_setDeallocating();

              return v40;
            }

            v252 = v247;
            sub_10001BBA0(v244, v246);
            [v40 setUserActivity:v252];

            sub_10001BBA0(v244, v246);
          }

          v253 = [v147 batchCreationID];
          if (v253)
          {
            v254 = v362;
            v255 = v253;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v256.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            (v363[1].isa)(v254, v364);
          }

          else
          {
            v256.super.isa = 0;
          }

          [v40 setBatchCreationID:v256.super.isa];

          v257 = [v147 siriFoundInAppsData];
          if (v257)
          {
            v258 = v257;
            v259 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v261 = v260;

            v262.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v259, v261);
          }

          else
          {
            v262.super.isa = 0;
          }

          v263 = v371;
          [v40 setSiriFoundInAppsData:v262.super.isa];

          v264 = [v147 lastBannerPresentationDate];
          if (v264)
          {
            v265 = v361;
            v266 = v264;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v267.super.isa = Date._bridgeToObjectiveC()().super.isa;
            (v373)(v265, v380);
          }

          else
          {
            v267.super.isa = 0;
          }

          [v40 setLastBannerPresentationDate:v267.super.isa];

          v268 = [v147 displayDate];
          if (!v268)
          {
            goto LABEL_141;
          }

          v269 = v268;
          v270 = [v147 dueDate];
          if (!v270)
          {

LABEL_141:
            v290 = [v147 displayDate];
            [v40 setDisplayDate:v290];

            v291 = v380;
LABEL_142:
            v292 = [v147 alternativeDisplayDateDate_forCalendar];
            v293 = v348;
            if (v292)
            {
              v294 = v365;
              v295 = v291;
              v296 = v292;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v297.super.isa = Date._bridgeToObjectiveC()().super.isa;
              (v373)(v294, v295);
            }

            else
            {
              v297.super.isa = 0;
            }

            [v40 setAlternativeDisplayDateDate_forCalendar:v297.super.isa];

            v298 = v378;
            swift_setDeallocating();

            v299 = v381;
            swift_setDeallocating();

            swift_setDeallocating();
            v300 = *(v206 + 24);

            return v40;
          }

          v375 = v206;
          v271 = v346;
          v272 = v270;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v273 = [v269 date];
          v274 = v377;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v273) = static Date.== infix(_:_:)();
          v275 = v274;
          v276 = v380;
          v277 = v373;
          (v373)(v275, v380);
          if ((v273 & 1) == 0)
          {
            v277(v271, v276);

            v147 = v350;
            v40 = v382;
LABEL_140:
            v206 = v375;
            goto LABEL_141;
          }

          v278 = [v269 timeZone];
          if (v278)
          {
            v279 = v278;
            static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

            v147 = v350;
            v280 = [v350 timeZone];
            if (v280)
            {
              v281 = v280;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v282 = v356;
              TimeZone.init(identifier:)();

              v283 = v349;
              v284 = (v349 + 6);
              v285 = v345;
              v377 = v349[6];
              if ((v377)(v282, 1, v345) == 1)
              {

                (v283[1])(v371, v285);
                (v373)(v271, v380);
                sub_1000050A4(v282, &qword_10093F970, &unk_1007A7670);
LABEL_139:
                v40 = v382;
                goto LABEL_140;
              }

              v374 = v284;
              v287 = v357;
              (v283[4])(v357, v282, v285);
              sub_1002BB840(&qword_100940978, &type metadata accessor for TimeZone);
              v288 = v371;
              if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
              {
                if (qword_100935E18 != -1)
                {
                  swift_once();
                }

                v301 = type metadata accessor for Logger();
                sub_100006654(v301, qword_100940648);
                v302 = v349;
                v304 = v349 + 2;
                v303 = v349[2];
                v305 = v352;
                v303(v352, v371, v285);
                v370 = v304;
                v368 = v303;
                v303(v354, v357, v285);
                v306 = v147;
                v307 = Logger.logObject.getter();
                v308 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v307, v308))
                {
                  v309 = swift_slowAlloc();
                  v367 = v309;
                  v364 = swift_slowAlloc();
                  v366 = swift_slowAlloc();
                  v383 = v366;
                  *v309 = 136315650;
                  sub_1002BB840(&qword_100940980, &type metadata accessor for TimeZone);
                  v363 = v307;
                  v310 = dispatch thunk of CustomStringConvertible.description.getter();
                  v311 = v285;
                  v313 = v312;
                  v361 = v306;
                  LODWORD(v362) = v308;
                  v314 = v349[1];
                  v315 = v305;
                  v316 = v311;
                  v314(v315, v311);
                  v317 = sub_10000668C(v310, v313, &v383);

                  v318 = v367;
                  *(v367 + 4) = v317;
                  *(v318 + 6) = 2080;
                  v319 = v354;
                  v320 = dispatch thunk of CustomStringConvertible.description.getter();
                  v322 = v321;
                  v369 = v314;
                  v314(v319, v316);
                  v323 = sub_10000668C(v320, v322, &v383);
                  v302 = v349;

                  v324 = v367;
                  *(v367 + 14) = v323;
                  *(v324 + 11) = 2112;
                  v325 = v324;
                  v326 = [v361 objectID];
                  *(v325 + 3) = v326;
                  v327 = v364;
                  *v364 = v326;
                  v328 = v363;
                  _os_log_impl(&_mh_execute_header, v363, v362, "REMReminderStorageCDIngestor: Replacing displayDate.timeZone (%s) with cdReminder.timeZone (%s) for cdReminder %@", v325, 0x20u);
                  sub_1000050A4(v327, &unk_100938E70, &unk_100797230);

                  swift_arrayDestroy();
                }

                else
                {

                  v329 = v302[1];
                  v329(v354, v285);
                  v369 = v329;
                  v329(v305, v285);
                  v316 = v285;
                }

                v330 = [v269 date];
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                LODWORD(v367) = [v269 isAllDay];
                v331 = [v269 floatingDateSecondsFromGMT];
                v332 = v353;
                (v368)(v353, v357, v316);
                (v302[7])(v332, 0, 1, v316);
                v333 = v332;
                v334.super.isa = Date._bridgeToObjectiveC()().super.isa;
                if ((v377)(v332, 1, v316) == 1)
                {
                  v335 = 0;
                  v336 = v316;
                  v337 = v369;
                }

                else
                {
                  v335 = TimeZone._bridgeToObjectiveC()().super.isa;
                  v338 = v316;
                  v336 = v316;
                  v337 = v369;
                  v369(v333, v338);
                }

                v339 = objc_allocWithZone(REMDisplayDate);
                v340 = [v339 initWithDate:v334.super.isa allDay:v367 timeZone:v335 floatingDateSecondsFromGMT:v331];

                v341 = v382;
                [v382 setDisplayDate:v340];

                v342 = v380;
                v343 = v373;
                (v373)(v355, v380);
                v337(v357, v336);
                v337(v371, v336);
                v291 = v342;
                v343(v346, v342);
                v40 = v341;
                v206 = v375;
                goto LABEL_142;
              }

              v289 = v283[1];
              v289(v287, v285);
              v289(v288, v285);
              v286 = v346;
            }

            else
            {

              (v349[1])(v263, v345);
              v286 = v271;
            }

            (v373)(v286, v380);
            goto LABEL_139;
          }

          (v373)(v271, v380);

          v147 = v350;
          goto LABEL_139;
        }

        v40 = v382;
        goto LABEL_100;
      }

      v200 = v199;
      sub_1000060C8(0, &unk_10093F790, off_1008D4158);
      sub_10000CDE4(&qword_10093CC38, &unk_10093F790, off_1008D4158);
      v201 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v383 = v201;
      sub_1000F5104(&qword_100940908, &qword_1007A0230);
      sub_10000CB48(&qword_100940910, &qword_100940908, &qword_1007A0230);
      v202 = Sequence.elements<A>(ofType:)();

      if (v202 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_83;
        }
      }

      else if (*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_83:
        v383 = v202;
        sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
        sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
        sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280);
        v203 = Sequence.map<A>(skippingError:_:)();
        if (v145)
        {

          v145 = 0;
          v204 = _swiftEmptyArrayStorage;
        }

        else
        {
          v204 = v203;
        }

        v40 = v382;
        sub_1001A603C(v204);

        sub_10000CDE4(&qword_100939230, &unk_10093F5F0, REMAssignment_ptr);
        v205 = Set._bridgeToObjectiveC()().super.isa;

        [v40 setAssignments:v205];

        goto LABEL_89;
      }

      v40 = v382;
      goto LABEL_89;
    }
  }

  if (qword_100935E20 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_100006654(v66, qword_100940660);
  v67 = v381;
  v68 = v381;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138412290;
    *(v71 + 4) = v68;
    *v72 = v67;
    v73 = v68;
    _os_log_impl(&_mh_execute_header, v69, v70, "REMReminderStorageCDIngestor: cdReminder.account is nil {cdReminder.remObjectID: %@}", v71, 0xCu);
    sub_1000050A4(v72, &unk_100938E70, &unk_100797230);
  }

  v74 = objc_opt_self();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v76 = String._bridgeToObjectiveC()();
  [v74 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v76];

  swift_willThrow();
  return v40;
}

uint64_t sub_1002B6180(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v7 = a2;
  if (a1)
  {
    v10 = a1;
    v11 = v10;
    if (a3 >> 60 == 15)
    {
      v12 = [v10 serializedData];
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = [v11 attributedString];
      v14 = [v13 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_1001CB4B8(v7, a3);
      v15 = [v11 replicaIDSource];
      v16 = objc_allocWithZone(REMCRMergeableStringDocument);
      sub_100029344(v7, a3);
      v27 = sub_1002F937C(v15);
      sub_100031A14(v7, a3);

      v38 = 0;
      v28 = [v27 mergedWithDocument:v11 error:&v38];
      if (v28)
      {
        v29 = v28;
        v30 = v38;
        v31 = [v29 serializedData];
        v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = [v29 attributedString];
        v34 = [v33 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100031A14(v7, a3);

        return v32;
      }

      else
      {
        v36 = v38;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100935E18 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100006654(v17, qword_100940648);
        v18 = a6;

        swift_errorRetain();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v21 = 138412802;
          *(v21 + 4) = v18;
          *v22 = v18;
          *(v21 + 12) = 2080;
          v23 = v18;
          *(v21 + 14) = sub_10000668C(a4, a5, &v38);
          *(v21 + 22) = 2080;
          swift_getErrorValue();
          v24 = Error.localizedDescription.getter();
          v26 = sub_10000668C(v24, v25, &v38);

          *(v21 + 24) = v26;
          _os_log_impl(&_mh_execute_header, v19, v20, "Failed to merge documents for reminder {reminder.objectID: %@, key: %s}: %s", v21, 0x20u);
          sub_1000050A4(v22, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          sub_100031A14(v7, a3);
        }

        else
        {
          sub_100031A14(v7, a3);
        }

        return 0;
      }
    }
  }

  else
  {
    sub_1001CB4B8(a2, a3);
  }

  return v7;
}

void sub_1002B6654(void *a1, unint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v85 = a5;
  v86 = a6;
  v80 = a4;
  v84 = type metadata accessor for DateComponents();
  v8 = *(v84 - 8);
  v9 = v8[8];
  *&v10 = __chkstk_darwin(v84).n128_u64[0];
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 alarms];
  v81 = a1;
  if (!v12)
  {
    v25 = _swiftEmptySetSingleton;
    goto LABEL_32;
  }

  v13 = v12;
  *&v78 = a2;
  sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [a1 accountID];
  v15 = [a1 objectID];
  type metadata accessor for REMAlarmCDIngestor();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  sub_1005FC6A4(a2, v16);

  v17 = (a2 >> 62);
  if (a2 >> 62)
  {
    goto LABEL_64;
  }

  v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v88 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v18 < 0)
    {
      __break(1u);
      goto LABEL_69;
    }

    v20 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(a2 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      v23 = [v21 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = v88[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v18 != v20);
    v19 = v88;
  }

  v25 = sub_1001A577C(v19);

  if (v17)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
LABEL_14:
      if (v26 >= 1)
      {
        v79 = v25;
        v27 = 0;
        v87 = a2 & 0xC000000000000001;
        v82 = v8 + 1;
        v28 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        do
        {
          if (v87)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(a2 + 8 * v27 + 32);
          }

          v30 = v29;
          v8 = [v29 v28[268]];
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (v31)
          {
            v32 = a2;
            v33 = v26;
            v34 = v28;
            *v85 = 1;
            v35 = [v31 dateComponents];
            v36 = v83;
            static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v37 = DateComponents.fifteenMinuteBin.getter();
            v39 = v38;

            (*v82)(v36, v84);
            v40 = v86;
            if (v39)
            {
              *v86 = -1;
            }

            else
            {
              *v86 = v37;
            }

            *(v40 + 8) = 0;
            v28 = v34;
            v26 = v33;
            a2 = v32;
          }

          else
          {

            v41 = [v30 v28[268]];
            objc_opt_self();
            v42 = swift_dynamicCastObjCClass();

            if (v42)
            {
              *v80 = 1;
            }
          }

          ++v27;
        }

        while (v26 != v27);

        v25 = v79;
        goto LABEL_31;
      }

LABEL_69:
      __break(1u);
    }
  }

  else
  {
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_14;
    }
  }

LABEL_31:
  a2 = v78;
LABEL_32:
  v43 = [a2 alarmStorage];
  if (v43)
  {
    v75 = v43;
    v88 = v43;
    v17 = sub_1000060C8(0, &unk_100938870, off_1008D4128);
    sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
    v44 = Sequence.elements<A>(ofType:)();
    v76 = v44;
    if (v44 >> 62)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
      if (v46)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
LABEL_35:
        v47 = 0;
        v85 = v76 & 0xFFFFFFFFFFFFFF8;
        v86 = (v76 & 0xC000000000000001);
        v84 = v76 + 32;
        v82 = (v25 & 0xC000000000000001);
        v48 = v25 & 0xFFFFFFFFFFFFFF8;
        if (v25 < 0)
        {
          v48 = v25;
        }

        v80 = v48;
        v87 = v25 + 56;
        *&v45 = 138412546;
        v78 = v45;
        v83 = v46;
        v79 = v25;
        while (1)
        {
          if (v86)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v47 >= *(v85 + 16))
            {
              goto LABEL_63;
            }

            v49 = *(v84 + 8 * v47);
          }

          v8 = v49;
          if (__OFADD__(v47++, 1))
          {
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            v18 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v88 = 0;
          v51 = [v49 remObjectIDWithError:&v88];
          v52 = v88;
          if (!v51)
          {
            v72 = v88;

            v73 = _convertNSErrorToError(_:)();

            v77 = v73;
            swift_willThrow();

            return;
          }

          a2 = v51;
          if (!v82)
          {
            break;
          }

          v53 = v88;
          v17 = a2;
          v54 = __CocoaSet.contains(_:)();

          if ((v54 & 1) == 0)
          {
            goto LABEL_55;
          }

LABEL_39:

          if (v47 == v83)
          {
            goto LABEL_66;
          }
        }

        if (*(v25 + 16))
        {
          v17 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v55 = *(v25 + 40);
          v56 = v52;
          v57 = NSObject._rawHashValue(seed:)(v55);
          v58 = -1 << *(v25 + 32);
          v59 = v57 & ~v58;
          if ((*(v87 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
          {
            v60 = ~v58;
            do
            {
              v61 = *(*(v25 + 48) + 8 * v59);
              v62 = static NSObject.== infix(_:_:)();

              if (v62)
              {
                goto LABEL_39;
              }

              v59 = (v59 + 1) & v60;
            }

            while (((*(v87 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) != 0);
          }
        }

        else
        {
          v63 = v88;
        }

LABEL_55:
        if (qword_100935E18 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_100006654(v64, qword_100940648);
        v65 = a2;
        v66 = v81;
        v67 = Logger.logObject.getter();
        v17 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v67, v17))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = v78;
          v70 = [v66 objectID];
          *(v68 + 4) = v70;
          *(v68 + 12) = 2112;
          *(v68 + 14) = v65;
          *v69 = v70;
          v69[1] = a2;
          v71 = v65;
          _os_log_impl(&_mh_execute_header, v67, v17, "Removing alarm from reminder {reminder.objectID: %@, alarm.objectID: %@}", v68, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          v25 = v79;
        }

        [v8 setReminder:0];
        goto LABEL_39;
      }
    }

LABEL_66:
  }
}

void sub_1002B6F1C(void *a1, void *a2)
{
  v4 = &selRef_accountStatusWithCompletionHandler_;
  v5 = [a1 assignments];
  v50 = a1;
  if (v5)
  {
    v6 = v5;
    sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
    sub_10000CDE4(&qword_100939230, &unk_10093F5F0, REMAssignment_ptr);
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_100278534(v7);
    v9 = [a1 accountID];
    v10 = [a1 objectID];
    type metadata accessor for REMAssignmentCDIngestor();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    sub_1005FCEAC(v8, v11);

    v12 = sub_1002AD784(v7, sub_100411DA8, &qword_100940918, &qword_1007A0238);
    v4 = &selRef_accountStatusWithCompletionHandler_;

    v13 = sub_1001A577C(v12);
  }

  else
  {
    v13 = _swiftEmptySetSingleton;
  }

  v14 = [a2 v4[91]];
  if (v14)
  {
    v15 = v14;
    v56 = v13;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_10000CDE4(&qword_10093CC38, &unk_10093F790, off_1008D4158);
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = v16;
    sub_1000F5104(&qword_100940908, &qword_1007A0230);
    sub_10000CB48(&qword_100940910, &qword_100940908, &qword_1007A0230);
    v17 = Sequence.elements<A>(ofType:)();

    v49 = v17;
    if (v17 >> 62)
    {
      goto LABEL_36;
    }

    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v19 = v50;
    if (v18)
    {
      v20 = 0;
      v53 = v17 & 0xFFFFFFFFFFFFFF8;
      v54 = v17 & 0xC000000000000001;
      v52 = v17 + 32;
      v55 = (v56 + 56);
      v51 = v18;
      while (1)
      {
        if (v54)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v53 + 16))
          {
            goto LABEL_35;
          }

          v21 = *(v52 + 8 * v20);
        }

        v22 = v21;
        if (__OFADD__(v20++, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v17 = v49;
          v18 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_7;
        }

        v57 = 0;
        v24 = [v21 remObjectIDWithError:&v57];
        v25 = v57;
        if (!v24)
        {
          v48 = v57;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }

        v26 = v24;
        if ((v56 & 0xC000000000000001) == 0)
        {
          break;
        }

        v27 = v57;
        v28 = v26;
        v29 = __CocoaSet.contains(_:)();

        if ((v29 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_10:

        if (v20 == v51)
        {
          goto LABEL_31;
        }
      }

      if (*(v56 + 16))
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v30 = *(v56 + 40);
        v31 = v25;
        v32 = NSObject._rawHashValue(seed:)(v30);
        v33 = -1 << *(v56 + 32);
        v34 = v32 & ~v33;
        if ((*(v55 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
        {
          v35 = ~v33;
          do
          {
            v36 = *(*(v56 + 48) + 8 * v34);
            v37 = static NSObject.== infix(_:_:)();

            if (v37)
            {
              goto LABEL_10;
            }

            v34 = (v34 + 1) & v35;
          }

          while (((*(v55 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
        }
      }

      else
      {
        v38 = v57;
      }

LABEL_26:
      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_100940648);
      v40 = v26;
      v41 = v19;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412546;
        v46 = [v41 objectID];
        *(v44 + 4) = v46;
        *(v44 + 12) = 2112;
        *(v44 + 14) = v40;
        *v45 = v46;
        v45[1] = v26;
        v47 = v40;
        _os_log_impl(&_mh_execute_header, v42, v43, "Removing assignment from reminder {reminder.objectID: %@, assignment.objectID: %@}", v44, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        v19 = v50;
      }

      [v22 setReminder:0];
      [v22 setAssignee:0];
      [v22 setOriginator:0];
      goto LABEL_10;
    }

LABEL_31:
  }

  else
  {
  }
}

uint64_t sub_1002B75F0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v60 = a2;
  v8 = type metadata accessor for NSFastEnumerationIterator();
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v13 = [a1 attachments];
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v15 = v13;
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v68 = v14;
    sub_1000060C8(0, &qword_100940920, REMFileAttachment_ptr);
    sub_1000F5104(&qword_100940928, &unk_1007A0240);
    sub_10000CB48(&qword_100940930, &qword_100940928, &unk_1007A0240);
    v5 = Sequence.elements<A>(ofExactType:)();
    *&v68 = v14;
    sub_1000060C8(0, &qword_100940938, REMImageAttachment_ptr);
    v16 = Sequence.elements<A>(ofExactType:)();
    v4 = v16;
    if (v16 >> 62)
    {
      goto LABEL_61;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    *a4 = v17 != 0;
    *&v68 = v14;
    sub_1000060C8(0, &qword_100940940, REMURLAttachment_ptr);
    v18 = Sequence.elements<A>(ofExactType:)();
    type metadata accessor for REMFileAttachmentCDIngestor();
    v19 = swift_allocObject();
    sub_1005FD6B4(v5, v19);

    type metadata accessor for REMImageAttachmentCDIngestor();
    a4 = swift_allocObject();
    sub_1005FDEBC(v4, a4);

    type metadata accessor for REMURLAttachmentCDIngestor();
    v4 = swift_allocObject();
    sub_1005FE6C4(v18, v4);

    if (v14 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20)
    {
      *&v68 = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v20 < 0)
      {
        __break(1u);
        return result;
      }

      v4 = 0;
      v5 = v14 & 0xC000000000000001;
      do
      {
        if (v5)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(v14 + 8 * v4 + 32);
        }

        v23 = v22;
        ++v4;
        a4 = [v22 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = *(v68 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v20 != v4);

      v25 = v68;
      v14 = _swiftEmptyArrayStorage;
    }

    else
    {

      v25 = _swiftEmptyArrayStorage;
      v14 = _swiftEmptyArrayStorage;
    }

    v65 = sub_1001A577C(v25);
  }

  else
  {
    v65 = _swiftEmptySetSingleton;
  }

  v26 = [v60 attachments];
  if (v26)
  {
    v70 = _swiftEmptyArrayStorage;
    v53 = v26;
    NSOrderedSet.makeIterator()();
    sub_1002BB840(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v69)
    {
      v14 = _swiftEmptyArrayStorage;
      v4 = &unk_100939E30;
      v5 = &type metadata for Any;
      do
      {
        sub_100005EE0(&v68, &v66);
        sub_1000060C8(0, &unk_100939E30, off_1008D4160);
        if (swift_dynamicCast())
        {
          a4 = v67;
          if (v67)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v27 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v14 = v70;
          }
        }

        dispatch thunk of IteratorProtocol.next()();
      }

      while (v69);
    }

    (*(v64 + 8))(v12, v8);
    if (v14 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v8 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_29:
        v12 = 0;
        v63 = v14 & 0xC000000000000001;
        v56 = v14 & 0xFFFFFFFFFFFFFF8;
        v55 = v14 + 32;
        v61 = v65 & 0xC000000000000001;
        v29 = v65 & 0xFFFFFFFFFFFFFF8;
        if (v65 < 0)
        {
          v29 = v65;
        }

        v58 = v29;
        v64 = v65 + 56;
        *&v28 = 138412546;
        v57 = v28;
        v54 = v14;
        v62 = v8;
        while (1)
        {
          if (v63)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *(v56 + 16))
            {
              goto LABEL_60;
            }

            v30 = *(v55 + 8 * v12);
          }

          v4 = v30;
          if (__OFADD__(v12++, 1))
          {
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            v17 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v32 = [v30 remObjectID];
          if (!v32)
          {
            if (qword_100935E18 != -1)
            {
              swift_once();
            }

            v36 = type metadata accessor for Logger();
            sub_100006654(v36, qword_100940648);
            v5 = v60;
            v4 = v4;
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              a4 = swift_slowAlloc();
              *v39 = v57;
              v40 = [v5 objectID];
              *(v39 + 4) = v40;
              *a4 = v40;
              *(v39 + 12) = 2112;
              v41 = [v4 objectID];
              *(v39 + 14) = v41;
              a4[1] = v41;
              _os_log_impl(&_mh_execute_header, v37, v38, "Can't merge attachment for reminder because cdAttachment.remObjectID is nil {cdReminder.objectID: %@, cdAttachment.objectID: %@}", v39, 0x16u);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              v34 = v37;
            }

            else
            {
              v34 = v4;
              v4 = v37;
            }

            goto LABEL_34;
          }

          v33 = v32;
          if (!v61)
          {
            break;
          }

          v34 = v32;
          v35 = __CocoaSet.contains(_:)();

          if ((v35 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_33:
          v8 = v62;
LABEL_34:

          if (v12 == v8)
          {
            goto LABEL_64;
          }
        }

        if (*(v65 + 16))
        {
          sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v42 = v65;
          v43 = NSObject._rawHashValue(seed:)(*(v65 + 40));
          v44 = -1 << *(v42 + 32);
          v45 = v43 & ~v44;
          if ((*(v64 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
          {
            v5 = ~v44;
            while (1)
            {
              a4 = *(*(v65 + 48) + 8 * v45);
              v46 = static NSObject.== infix(_:_:)();

              if (v46)
              {
                break;
              }

              v45 = (v45 + 1) & v5;
              if (((*(v64 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            v34 = v33;
            goto LABEL_33;
          }
        }

LABEL_53:
        if (qword_100935E18 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_100006654(v47, qword_100940648);
        v34 = v33;
        a4 = v59;
        v48 = Logger.logObject.getter();
        v5 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v48, v5))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v49 = v57;
          v51 = [a4 objectID];
          *(v49 + 4) = v51;
          *(v49 + 12) = 2112;
          *(v49 + 14) = v34;
          *v50 = v51;
          v50[1] = v33;
          v52 = v34;
          _os_log_impl(&_mh_execute_header, v48, v5, "Removing attachment from reminder {reminder.objectID: %@, attachment.objectID: %@}", v49, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          v14 = v54;
        }

        [v4 setReminder:0];
        goto LABEL_33;
      }
    }

LABEL_64:
  }
}

void sub_1002B8044(void *a1, void *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v8 = a1;
  v9 = [a1 hashtags];
  v69 = v8;
  if (!v9)
  {
    v81 = _swiftEmptySetSingleton;
    goto LABEL_30;
  }

  v10 = v9;
  v70 = a4;
  v71 = a5;
  v73 = a2;
  v11 = sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
  sub_10000CDE4(&qword_10093AA28, &unk_10093F600, REMHashtag_ptr);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_1002785FC(v12);
  v14 = [v8 accountID];
  v15 = [v8 objectID];
  type metadata accessor for REMHashtagCDIngestor();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  sub_1005F9680(v13, v16);

  v17 = sub_1002AD784(v12, sub_100411D6C, &qword_10093B7C0, &qword_1007A0250);
  v81 = sub_1001A577C(v17);

  if ((v12 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    v18 = v11;
    Set.Iterator.init(_cocoa:)();
    v12 = v82[1];
    v19 = v82[2];
    v20 = v82[3];
    v21 = v82[4];
    v22 = v82[5];
  }

  else
  {
    v21 = 0;
    v23 = -1 << *(v12 + 32);
    v19 = v12 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = (v25 & *(v12 + 56));
    v18 = v11;
  }

  v75 = 0;
  v77 = 0;
  v68 = 0;
  v26 = (v20 + 64) >> 6;
  v79 = v19;
LABEL_10:
  while (2)
  {
    v27 = v21;
    v28 = v22;
    while (1)
    {
      if (v12 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          v8 = v69;
          goto LABEL_29;
        }

        swift_dynamicCast();
        v32 = v82[0];
        v21 = v27;
        v31 = v28;
        if (!v82[0])
        {
LABEL_60:
          v8 = v69;
          goto LABEL_29;
        }
      }

      else
      {
        v29 = v27;
        v30 = v28;
        v21 = v27;
        v8 = v69;
        if (!v28)
        {
          while (1)
          {
            v21 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if (v21 >= v26)
            {
              goto LABEL_29;
            }

            v30 = *(v19 + 8 * v21);
            ++v29;
            if (v30)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_16:
        v31 = (v30 - 1) & v30;
        v32 = *(*(v12 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v30)))));
        if (!v32)
        {
          goto LABEL_60;
        }
      }

      v8 = v12;
      v33 = v18;
      v34 = [v32 type];

      if (!v34)
      {
        break;
      }

      v27 = v21;
      v22 = v31;
      v28 = v31;
      v35 = v34 == 1;
      v18 = v33;
      v12 = v8;
      v19 = v79;
      if (v35)
      {
        v36 = __OFADD__(v77++, 1);
        if (v36)
        {
          __break(1u);
        }

        goto LABEL_10;
      }
    }

    v36 = __OFADD__(v68, 1);
    v75 = ++v68;
    v18 = v33;
    v12 = v8;
    v22 = v31;
    v19 = v79;
    if (!v36)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_29:
  sub_10001B860();
  *v70 = v75;
  *v71 = v77;
  a2 = v73;
LABEL_30:
  v37 = [a2 hashtags];
  if (v37)
  {
    v38 = v37;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
    v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v82[0] = v39;
    sub_1000F5104(&qword_10093B298, &qword_100798898);
    sub_10000CB48(&qword_10093B2A0, &qword_10093B298, &qword_100798898);
    v19 = Sequence.elements<A>(ofType:)();

    if (!(v19 >> 62))
    {
      v40 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_33;
    }

LABEL_65:
    v40 = _CocoaArrayWrapper.endIndex.getter();
LABEL_33:
    if (v40)
    {
      v41 = 0;
      v76 = v19 & 0xFFFFFFFFFFFFFF8;
      v78 = v19 & 0xC000000000000001;
      v74 = v19 + 32;
      v80 = v81 + 56;
      v72 = v40;
      while (1)
      {
        if (v78)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v41 >= *(v76 + 16))
          {
            goto LABEL_64;
          }

          v42 = *(v74 + 8 * v41);
        }

        v19 = v42;
        v36 = __OFADD__(v41++, 1);
        if (v36)
        {
          goto LABEL_63;
        }

        v82[0] = 0;
        v43 = [v42 remObjectIDWithError:v82];
        v44 = v82[0];
        if (!v43)
        {
          v67 = v82[0];

          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }

        v45 = v43;
        if ((v81 & 0xC000000000000001) == 0)
        {
          break;
        }

        v46 = v82[0];
        v47 = v45;
        v48 = __CocoaSet.contains(_:)();

        if ((v48 & 1) == 0)
        {
          goto LABEL_52;
        }

LABEL_36:

        if (v41 == v72)
        {
          goto LABEL_57;
        }
      }

      if (*(v81 + 16))
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v49 = *(v81 + 40);
        v50 = v44;
        v51 = NSObject._rawHashValue(seed:)(v49);
        v52 = -1 << *(v81 + 32);
        v53 = v51 & ~v52;
        if ((*(v80 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
        {
          v54 = ~v52;
          do
          {
            v55 = *(*(v81 + 48) + 8 * v53);
            v56 = static NSObject.== infix(_:_:)();

            if (v56)
            {
              goto LABEL_36;
            }

            v53 = (v53 + 1) & v54;
          }

          while (((*(v80 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0);
        }
      }

      else
      {
        v57 = v82[0];
      }

LABEL_52:
      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_100006654(v58, qword_100940648);
      v59 = v45;
      v60 = v8;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412546;
        v65 = [v60 objectID];
        *(v63 + 4) = v65;
        *(v63 + 12) = 2112;
        *(v63 + 14) = v59;
        *v64 = v65;
        v64[1] = v45;
        v66 = v59;
        _os_log_impl(&_mh_execute_header, v61, v62, "Removing hashtag from reminder {reminder.objectID: %@, hashtag.objectID: %@}", v63, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        v8 = v69;
      }

      [v19 setReminder:0];
      goto LABEL_36;
    }

LABEL_57:
  }
}

uint64_t sub_1002B88D8(void *a1, void *a2)
{
  v67 = a2;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &selRef_setPublicLinkLastModifiedDate_;
  v66 = a1;
  v10 = [a1 recurrenceRules];
  if (!v10)
  {
    v71 = _swiftEmptySetSingleton;
    goto LABEL_15;
  }

  v11 = v10;
  sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for REMRecurrenceRuleCDIngestor();
  v13 = swift_allocObject();
  sub_1005FEECC(v12, v13);

  if (v12 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_4:
      *&v74 = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v14 < 0)
      {
        __break(1u);
        return result;
      }

      v71 = v4;
      v16 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v17 = *(v12 + 8 * v16 + 32);
        }

        v18 = v17;
        ++v16;
        v19 = [v17 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v20 = *(v74 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v14 != v16);

      v21 = v74;
      v4 = v71;
      v9 = &selRef_setPublicLinkLastModifiedDate_;
      goto LABEL_14;
    }
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_14:
  v71 = sub_1001A577C(v21);

LABEL_15:
  v22 = [v67 v9[270]];
  if (v22)
  {
    v76 = _swiftEmptyArrayStorage;
    v60 = v22;
    NSOrderedSet.makeIterator()();
    sub_1002BB840(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v75)
    {
      v61 = _swiftEmptyArrayStorage;
      do
      {
        sub_100005EE0(&v74, &v72);
        sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
        if ((swift_dynamicCast() & 1) != 0 && v73)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v59 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v61 = v76;
        }

        dispatch thunk of IteratorProtocol.next()();
      }

      while (v75);
    }

    else
    {
      v61 = _swiftEmptyArrayStorage;
    }

    (*(v4 + 8))(v8, v3);
    v24 = v61;
    if (v61 >> 62)
    {
      goto LABEL_62;
    }

    for (i = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v26 = 0;
      v62 = v24 + 32;
      v63 = v24 & 0xFFFFFFFFFFFFFF8;
      v68 = v71 & 0xC000000000000001;
      v69 = v24 & 0xC000000000000001;
      v27 = v71 & 0xFFFFFFFFFFFFFF8;
      if (v71 < 0)
      {
        v27 = v71;
      }

      v65 = v27;
      v70 = v71 + 56;
      *&v23 = 138412546;
      v64 = v23;
      while (1)
      {
        if (v69)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v63 + 16))
          {
            goto LABEL_61;
          }

          v28 = *(v62 + 8 * v26);
        }

        v29 = v28;
        if (__OFADD__(v26++, 1))
        {
          break;
        }

        v31 = [v28 remObjectID];
        if (!v31)
        {
          if (qword_100935E18 != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          sub_100006654(v36, qword_100940648);
          v37 = v67;
          v29 = v29;
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            *v40 = v64;
            v42 = [v37 objectID];
            *(v40 + 4) = v42;
            *v41 = v42;
            *(v40 + 12) = 2112;
            v43 = [v29 objectID];
            *(v40 + 14) = v43;
            v41[1] = v43;
            _os_log_impl(&_mh_execute_header, v38, v39, "Can't merge recurrence rule for reminder because cdRecurrenceRule.remObjectID is nil {cdReminder.objectID: %@, cdRecurrenceRule.objectID: %@}", v40, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v34 = v38;
          }

          else
          {
            v34 = v29;
            v29 = v38;
          }

          goto LABEL_29;
        }

        v32 = v31;
        v33 = i;
        if (!v68)
        {
          if (*(v71 + 16))
          {
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v44 = v71;
            v45 = NSObject._rawHashValue(seed:)(*(v71 + 40));
            v46 = -1 << *(v44 + 32);
            v47 = v45 & ~v46;
            if ((*(v70 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
            {
              v48 = ~v46;
              while (1)
              {
                v49 = *(*(v71 + 48) + 8 * v47);
                v50 = static NSObject.== infix(_:_:)();

                if (v50)
                {
                  break;
                }

                v47 = (v47 + 1) & v48;
                if (((*(v70 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

              v34 = v32;
              goto LABEL_28;
            }
          }

LABEL_48:
          if (qword_100935E18 != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          sub_100006654(v51, qword_100940648);
          v34 = v32;
          v52 = v66;
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *v55 = v64;
            v57 = [v52 objectID];
            *(v55 + 4) = v57;
            *(v55 + 12) = 2112;
            *(v55 + 14) = v34;
            *v56 = v57;
            v56[1] = v32;
            v58 = v34;
            _os_log_impl(&_mh_execute_header, v53, v54, "Removing recurrenceRule from reminder {reminder.objectID: %@, recurrenceRule.objectID: %@}", v55, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v24 = v61;
          }

          [v29 setReminder:0];
          goto LABEL_28;
        }

        v34 = v31;
        v35 = __CocoaSet.contains(_:)();

        if ((v35 & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_28:
        i = v33;
LABEL_29:

        if (v26 == i)
        {
          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      ;
    }

LABEL_63:
  }

  else
  {
  }
}

void sub_1002B91C0(void *a1, void *a2)
{
  v5 = sub_1002AFCFC();
  if (!v2)
  {
    v6 = v5;
    v7 = [a1 dueDateDeltaAlertsToUpsert];
    if (v7)
    {
      v8 = v7;
      sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    v10 = [a1 dueDateDeltaAlertIdentifiersToDelete];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for UUID();
      sub_1002BB840(&qword_10093B410, &type metadata accessor for UUID);
      v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1002B203C(v9, v12, v6);

    if (v13)
    {
      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_100940648);
      v15 = a2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v41 = v17;
        v18 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v42 = v40;
        *v18 = 136446210;
        v19 = [v15 remObjectID];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 description];

          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
        }

        else
        {
          v22 = 7104878;
          v24 = 0xE300000000000000;
        }

        v37 = sub_10000668C(v22, v24, &v42);

        *(v18 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v16, v41, "REMReminderStorageCDIngestor.mergeDueDateDeltaAlerts: Setting 'cdReminder.dueDateDeltaAlertsData' {reminderID: %{public}s}", v18, 0xCu);
        sub_10000607C(v40);
      }

      sub_1002AFE68(v38);

      sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [a1 setFetchedDueDateDeltaAlerts:isa];
    }

    else
    {

      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006654(v25, qword_100940648);
      v26 = a2;
      isa = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(isa, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42 = v30;
        *v29 = 136315138;
        v31 = [v26 remObjectID];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 description];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;
        }

        else
        {
          v34 = 7104878;
          v36 = 0xE300000000000000;
        }

        v39 = sub_10000668C(v34, v36, &v42);

        *(v29 + 4) = v39;
        _os_log_impl(&_mh_execute_header, isa, v28, "REMReminderStorageCDIngestor.mergeDueDateDeltaAlerts: Noop to 'cdReminder.dueDateDeltaAlertsData' {reminderID: %s}", v29, 0xCu);
        sub_10000607C(v30);
      }
    }
  }
}

void sub_1002B96C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v289 = a4;
  v8 = type metadata accessor for Calendar();
  v276 = *(v8 - 8);
  v9 = *(v276 + 64);
  __chkstk_darwin(v8);
  v275 = &v247 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for URL();
  v11 = *(v264 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v264);
  v263 = &v247 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for DateComponents();
  v282 = *(v277 - 8);
  v14 = *(v282 + 64);
  __chkstk_darwin(v277);
  v274 = &v247 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v262 = &v247 - v17;
  __chkstk_darwin(v18);
  v261 = &v247 - v19;
  v267 = type metadata accessor for CharacterSet();
  v20 = *(v267 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v267);
  v266 = &v247 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for Date();
  v281 = *(v280 - 8);
  v23 = *(v281 + 64);
  __chkstk_darwin(v280);
  v273 = &v247 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v260 = &v247 - v26;
  __chkstk_darwin(v27);
  v259 = &v247 - v28;
  __chkstk_darwin(v29);
  v258 = &v247 - v30;
  __chkstk_darwin(v31);
  v257 = &v247 - v32;
  __chkstk_darwin(v33);
  v270 = &v247 - v34;
  v279 = type metadata accessor for UUID();
  v35 = *(v279 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v279);
  v256 = &v247 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v39 = __chkstk_darwin(v38).n128_u64[0];
  v272 = &v247 - v40;
  v285 = a2;
  v284 = [a2 createResolutionTokenMapIfNecessary];
  v287 = a1;
  v41 = [a1 resolutionTokenMap];
  if (!v41)
  {
    if (qword_100935E18 == -1)
    {
LABEL_153:
      v199 = type metadata accessor for Logger();
      sub_100006654(v199, qword_100940648);
      v200 = v287;

      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        v290[0] = v205;
        *v203 = 138543618;
        v206 = [v200 objectID];
        *(v203 + 4) = v206;
        *v204 = v206;
        *(v203 + 12) = 2082;
        v207 = *(a3 + 16);
        if (v207)
        {
          v288 = v204;
          v289 = v205;
          v293 = _swiftEmptyArrayStorage;
          sub_100026EF4(0, v207, 0);
          v208 = v293;
          v209 = (a3 + 32);
          v210 = v293[2];
          v211 = 2 * v210;
          do
          {
            v212 = *v209++;
            v213 = sub_1002ADDBC(v212);
            v293 = v208;
            v215 = v208[3];
            v216 = v210 + 1;
            if (v210 >= v215 >> 1)
            {
              v287 = v213;
              v218 = v214;
              sub_100026EF4((v215 > 1), v216, 1);
              v214 = v218;
              v213 = v287;
              v208 = v293;
            }

            v208[2] = v216;
            v217 = &v208[v211];
            v217[4] = v213;
            v217[5] = v214;
            v211 += 2;
            v210 = v216;
            --v207;
          }

          while (v207);
          v204 = v288;
          v205 = v289;
        }

        v240 = Array.description.getter();
        v242 = v241;

        v243 = sub_10000668C(v240, v242, v290);

        *(v203 + 14) = v243;
        _os_log_impl(&_mh_execute_header, v201, v202, "REMReminderStorageCDIngestor: merge(storage:into cdReminder:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v203, 0x16u);
        sub_1000050A4(v204, &unk_100938E70, &unk_100797230);

        sub_10000607C(v205);
      }

      v244 = objc_opt_self();
      sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v246 = String._bridgeToObjectiveC()();
      [v244 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v246];

      swift_willThrow();
      v223 = &v309;
LABEL_170:

      return;
    }

LABEL_174:
    swift_once();
    goto LABEL_153;
  }

  v265 = v8;
  v288 = v4;
  v269 = v41;
  v286 = sub_1006954B4(v41, a3);
  *(&v308 + 1) = 0;
  v292 = 0;
  v293 = 0;
  v294 = 1;
  LOBYTE(v308) = 0;
  v43 = *(a3 + 16);
  if (!v43)
  {
    v255 = 0;
    v271 = 0xE000000000000000;
    goto LABEL_165;
  }

  v44 = 0;
  v255 = 0;
  v45 = 0;
  v251 = (v20 + 8);
  v252 = (v281 + 8);
  v268 = 0x80000001007E8C60;
  v254 = (v35 + 8);
  v46 = (v11 + 8);
  v47 = a3 + 32;
  v248 = v46;
  v249 = (v282 + 8);
  v271 = 0xE000000000000000;
  *&v42 = 136315138;
  v253 = v42;
  v48 = v287;
  v49 = v285;
  v278 = v43;
  v283 = a3 + 32;
  while (2)
  {
    v307 = v44;
    v50 = v45;
LABEL_8:
    if (v50 >= v43)
    {
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v45 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_173;
    }

    a3 = *(v47 + v50);
    switch(*(v47 + v50))
    {
      case 0:
        v52 = [v48 objectID];
        v53 = [v52 uuid];

        a3 = v48;
        v54 = v272;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        v55 = v54;
        v48 = a3;
        v47 = v283;
        (*v254)(v55, v279);
        [v49 setIdentifier:isa];
        goto LABEL_6;
      case 1:
        isa = [v48 daCalendarItemUniqueIdentifier];
        [v49 setDaCalendarItemUniqueIdentifier:isa];
        goto LABEL_6;
      case 2:
        isa = [v48 externalIdentifier];
        [v49 setExternalIdentifier:isa];
        goto LABEL_6;
      case 3:
        isa = [v48 externalModificationTag];
        [v49 setExternalModificationTag:isa];
        goto LABEL_6;
      case 4:
        isa = [v48 daSyncToken];
        [v49 setDaSyncToken:isa];
        goto LABEL_6;
      case 5:
        isa = [v48 daPushKey];
        [v49 setDaPushKey:isa];
        goto LABEL_6;
      case 6:
        if (qword_100935E28 != -1)
        {
          swift_once();
        }

        v87 = qword_100974D20;
        if (*(qword_100974D20 + 16))
        {
          v250 = sub_100005F4C(0xD000000000000017, v268);
          a3 = v88;

          if (a3)
          {
            v89 = (*(v87 + 56) + 16 * v250);
            v91 = *v89;
            v90 = v89[1];

            goto LABEL_73;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v123 = type metadata accessor for Logger();
        sub_100006654(v123, qword_100946C50);
        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v124, v125))
        {
          a3 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v290[0] = v126;
          *a3 = v253;
          v127 = sub_10000668C(0xD000000000000017, v268, v290);

          *(a3 + 4) = v127;
          _os_log_impl(&_mh_execute_header, v124, v125, "Unknown ingestable key {key: %s}", a3, 0xCu);
          sub_10000607C(v126);
          v49 = v285;

          v48 = v287;
        }

        else
        {
        }

LABEL_73:
        v128 = String._bridgeToObjectiveC()();

        v129 = [v284 mergeWithMap:v286 forKey:v128];

        if (v129)
        {
          [v49 setMinimumSupportedVersion:{objc_msgSend(v48, "minimumSupportedVersion")}];
        }

LABEL_85:
        v47 = v283;
        goto LABEL_7;
      case 7:
      case 0x14:
      case 0x1A:
        goto LABEL_7;
      case 8:
        v98 = [v48 titleDocument];
        v99 = sub_1006936C4(8);
        v101 = sub_1002AF880(v98, v99, v100, v286, *(v289 + 16));
        v103 = v102;
        a3 = v104;
        v106 = v105;

        if (v106 == 1)
        {
          goto LABEL_45;
        }

        if (v103 >> 60 == 15)
        {
          v112 = 0;
        }

        else
        {
          sub_100029344(v101, v103);
          v112 = Data._bridgeToObjectiveC()().super.isa;
          sub_100031A14(v101, v103);
        }

        v132 = v285;
        [v285 setTitleDocument:v112];

        if (v106)
        {
          v133 = String._bridgeToObjectiveC()();
          [v132 setTitle:v133];

          v290[0] = a3;
          v290[1] = v106;
          v134 = v266;
          static CharacterSet.whitespacesAndNewlines.getter();
          sub_10013BCF4();
          v135 = StringProtocol.trimmingCharacters(in:)();
          v137 = v136;
          sub_100031A14(v101, v103);
          (*v251)(v134, v267);

          v138 = HIBYTE(v137) & 0xF;
          if ((v137 & 0x2000000000000000) == 0)
          {
            v138 = v135 & 0xFFFFFFFFFFFFLL;
          }

          if (v138)
          {

            v255 = a3;
            v271 = v106;
          }

          else
          {
          }

          v49 = v285;
        }

        else
        {
          sub_100031A14(v101, v103);
          v49 = v132;
        }

        v43 = v278;
        v47 = v283;
        v48 = v287;
        goto LABEL_7;
      case 0xF:
        sub_1002B88D8(v48, v49);
        goto LABEL_7;
      case 0x15:
        v71 = [v48 notesDocument];
        v72 = sub_1006936C4(21);
        v74 = sub_1002AF880(v71, v72, v73, v286, *(v289 + 16));
        v76 = v75;
        v78 = v77;
        a3 = v79;

        if (a3 == 1)
        {
LABEL_45:
          v48 = v287;
          v49 = v285;
          v43 = v278;
        }

        else
        {
          v250 = v78;
          if (v76 >> 60 == 15)
          {
            v80 = 0;
          }

          else
          {
            sub_100029344(v74, v76);
            v80 = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v74, v76);
          }

          v48 = v287;
          v43 = v278;
          v49 = v285;
          [v285 setNotesDocument:v80];

          if (a3)
          {
            v130 = v48;
            v131 = String._bridgeToObjectiveC()();

            [v49 setNotes:v131];
            sub_100031A14(v74, v76);

            v48 = v130;
          }

          else
          {
            sub_100031A14(v74, v76);
          }
        }

        goto LABEL_85;
      case 0x16:
        sub_1002B75F0(v48, v49, v289, &v308);
        goto LABEL_7;
      case 0x17:
        v92 = v288;
        sub_1002B6654(v48, v49, v289, &v308 + 2, &v308 + 1, &v293);
        v288 = v92;
        if (v92)
        {
          goto LABEL_166;
        }

        goto LABEL_7;
      case 0x18:
        v93 = v288;
        sub_1002B6F1C(v48, v49);
        v288 = v93;
        if (v93)
        {
          goto LABEL_166;
        }

        goto LABEL_7;
      case 0x19:
        v107 = v288;
        sub_1002B8044(v48, v49, v289, &v291, &v292);
        v288 = v107;
        if (v107)
        {
          goto LABEL_166;
        }

        goto LABEL_7;
      case 0x1B:
        v94 = [v48 dueDateDeltaAlertsToUpsert];
        if (!v94)
        {
          goto LABEL_7;
        }

        v95 = v94;
        a3 = v47;
        sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
        v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v97 = v96 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);

        v47 = a3;
        if (!v97)
        {
          goto LABEL_7;
        }

        v44 = 1;
        if (v45 == v43)
        {
          goto LABEL_161;
        }

        continue;
      case 0x1C:
        v56 = [v48 dueDateDeltaAlertIdentifiersToDelete];
        if (!v56)
        {
          goto LABEL_7;
        }

        v57 = v56;
        a3 = v47;
        sub_1002BB840(&qword_10093B410, &type metadata accessor for UUID);
        v58 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v59 = *(v58 + 16);

        if (v59)
        {
          v44 = 1;
          v47 = a3;
          if (v45 == v43)
          {
LABEL_161:
            sub_1006936C4(26);
            v219 = String._bridgeToObjectiveC()();

            v220 = [v284 mergeWithMap:v286 forKey:v219];

            if (!v220)
            {
              goto LABEL_165;
            }

            v221 = objc_autoreleasePoolPush();
            v222 = v288;
            sub_1002B91C0(v48, v49);
            if (!v222)
            {
              v288 = 0;
              objc_autoreleasePoolPop(v221);
              goto LABEL_165;
            }

            objc_autoreleasePoolPop(v221);

            v223 = &v310;
            goto LABEL_170;
          }

          continue;
        }

        v47 = a3;
LABEL_7:
        ++v50;
        if (v45 != v43)
        {
          goto LABEL_8;
        }

        if (v307)
        {
          goto LABEL_161;
        }

LABEL_165:
        v224 = v275;
        static Calendar.current.getter();
        sub_1000F5104(&qword_100940900, &unk_1007A0220);
        v225 = type metadata accessor for Calendar.Component();
        v226 = *(v225 - 8);
        v227 = *(v226 + 72);
        v228 = (*(v226 + 80) + 32) & ~*(v226 + 80);
        v229 = swift_allocObject();
        *(v229 + 16) = xmmword_100791340;
        v230 = v229 + v228;
        v231 = *(v226 + 104);
        v231(v230, enum case for Calendar.Component.hour(_:), v225);
        v231(v230 + v227, enum case for Calendar.Component.minute(_:), v225);
        sub_1001A653C(v229);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v232 = v273;
        Date.init()();
        v233 = v274;
        Calendar.dateComponents(_:from:)();

        (*(v281 + 8))(v232, v280);
        (*(v276 + 8))(v224, v265);
        v234 = DateComponents.fifteenMinuteBin.getter();
        LOBYTE(v229) = v235;
        (*(v282 + 8))(v233, v277);
        if (v229)
        {
LABEL_166:
        }

        else
        {
          v236 = v287;
          v237 = [v287 isRecurrent];
          v238 = [v236 flagged];
          v239 = [v236 priority];
          LOBYTE(v290[0]) = v294;
          v295[0] = v255;
          v295[1] = v271;
          v296 = v237;
          v297 = v238;
          v298 = v239;
          v299 = BYTE2(v308);
          v300 = v234;
          v301 = BYTE1(v308);
          v302 = v293;
          v303 = v294;
          v304 = v308;
          v305 = v292;
          v306 = v292;
          __chkstk_darwin(v239);
          *(&v247 - 2) = v295;
          static os_log_type_t.info.getter();
          measureTimeElapsed(_:level:block:)();
        }

        return;
      case 0x24:
        v81 = [v48 siriFoundInAppsData];
        if (v81)
        {
          v82 = v81;
          v83 = v47;
          v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          a3 = v85;

          isa = Data._bridgeToObjectiveC()().super.isa;
          v86 = v84;
          v47 = v83;
          sub_10001BBA0(v86, a3);
        }

        else
        {
          isa = 0;
        }

        [v49 setSiriFoundInAppsData:isa];
        goto LABEL_6;
      case 0x25:
        v108 = [v48 lastBannerPresentationDate];
        if (v108)
        {
          a3 = v47;
          v109 = v270;
          v110 = v108;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          isa = Date._bridgeToObjectiveC()().super.isa;
          v111 = v109;
          v47 = a3;
          (*v252)(v111, v280);
        }

        else
        {
          isa = 0;
        }

        [v49 setLastBannerPresentationDate:isa];
LABEL_6:

        goto LABEL_7;
      default:
        if (qword_100935E28 != -1)
        {
          swift_once();
        }

        v60 = qword_100974D20;
        v61 = sub_1002ADDBC(a3);
        v63 = v61;
        v64 = v62;
        if (*(v60 + 16))
        {
          v65 = sub_100005F4C(v61, v62);
          v67 = v66;

          if (v67)
          {
            v68 = (*(v60 + 56) + 16 * v65);
            v69 = *v68;
            v70 = v68[1];

            goto LABEL_59;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        sub_100006654(v113, qword_100946C50);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v290[0] = v117;
          *v116 = v253;
          v118 = sub_10000668C(v63, v64, v290);
          v250 = v63;
          v119 = v118;

          *(v116 + 4) = v119;
          _os_log_impl(&_mh_execute_header, v114, v115, "Unknown ingestable key {key: %s}", v116, 0xCu);
          sub_10000607C(v117);
          v43 = v278;
        }

LABEL_59:
        v120 = v283;
        v121 = String._bridgeToObjectiveC()();

        v122 = [v284 mergeWithMap:v286 forKey:v121];

        if (v122)
        {
          v49 = v285;
          v48 = v287;
          v47 = v120;
          switch(a3)
          {
            case 9:
              [v285 setCompleted:{objc_msgSend(v287, "isCompleted")}];
              break;
            case 10:
              v160 = [v287 completionDate];
              if (v160)
              {
                v161 = v257;
                v162 = v160;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                v163 = v161;
                v47 = v120;
                (*v252)(v163, v280);
              }

              else
              {
                isa = 0;
              }

              [v49 setCompletionDate:isa];
              goto LABEL_6;
            case 11:
              v172 = [v287 priority];
              if (v172 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v173 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v173 = v172;
              }

              [v49 setPriority:v173];
              break;
            case 12:
              [v285 setFlagged:{objc_msgSend(v287, "flagged")}];
              break;
            case 13:
              v164 = [v287 creationDate];
              if (v164)
              {
                v165 = v258;
                v166 = v164;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                v167 = v165;
                v47 = v120;
                (*v252)(v167, v280);
              }

              else
              {
                isa = 0;
              }

              [v49 setCreationDate:isa];
              goto LABEL_6;
            case 14:
              v168 = [v287 lastModifiedDate];
              if (v168)
              {
                v169 = v259;
                v170 = v168;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                v171 = v169;
                v47 = v120;
                (*v252)(v171, v280);
              }

              else
              {
                isa = 0;
              }

              [v49 setLastModifiedDate:isa];
              goto LABEL_6;
            case 16:
              v178 = [v287 startDateComponents];
              if (v178)
              {
                v179 = v261;
                v180 = v178;
                static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

                isa = DateComponents._bridgeToObjectiveC()().super.isa;
                v181 = v179;
                v47 = v120;
                (*v249)(v181, v277);
              }

              else
              {
                isa = 0;
              }

              [v49 setStartDateComponents:isa];
              goto LABEL_6;
            case 17:
              v182 = [v287 dueDateComponents];
              if (v182)
              {
                v183 = v262;
                v184 = v182;
                static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

                isa = DateComponents._bridgeToObjectiveC()().super.isa;
                v185 = v183;
                v47 = v120;
                (*v249)(v185, v277);
              }

              else
              {
                isa = 0;
              }

              [v49 setDueDateComponents:isa];
              goto LABEL_6;
            case 29:
              v148 = [v287 contactHandles];
              if (v148)
              {
                v149 = v148;
                v150 = [v148 archivedData];

                v151 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v153 = v152;

                isa = Data._bridgeToObjectiveC()().super.isa;
                v154 = v151;
                v47 = v283;
                v155 = v153;
                v43 = v278;
                v48 = v287;
                sub_10001BBA0(v154, v155);
              }

              else
              {
                isa = 0;
              }

              [v49 setContactHandles:isa];
              goto LABEL_6;
            case 30:
              v146 = [v287 icsDisplayOrder];
              if (v146 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v147 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v147 = v146;
              }

              [v49 setIcsDisplayOrder:v147];
              break;
            case 31:
              v193 = [v287 icsUrl];
              if (v193)
              {
                v194 = v263;
                v195 = v193;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                URL._bridgeToObjectiveC()(v196);
                isa = v197;
                v198 = v194;
                v47 = v120;
                (*v248)(v198, v264);
              }

              else
              {
                isa = 0;
              }

              [v49 setIcsUrl:isa];
              goto LABEL_6;
            case 32:
              v139 = [v287 importedICSData];
              if (v139)
              {
                v140 = v139;
                v141 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v143 = v142;

                isa = Data._bridgeToObjectiveC()().super.isa;
                v144 = v141;
                v145 = v143;
                v48 = v287;
                v47 = v283;
                sub_10001BBA0(v144, v145);
              }

              else
              {
                isa = 0;
              }

              [v49 setImportedICSData:isa];
              goto LABEL_6;
            case 33:
              [v285 setPrefersUrgentPresentationStyleForDateAlarms:{objc_msgSend(v287, "prefersUrgentPresentationStyleForDateAlarms")}];
              break;
            case 34:
              v186 = [v287 userActivity];
              if (v186)
              {
                v187 = v186;
                isa = [v186 archivedDictionaryData];

                if (isa)
                {
                  v188 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v190 = v189;

                  isa = Data._bridgeToObjectiveC()().super.isa;
                  v191 = v188;
                  v192 = v190;
                  v48 = v287;
                  v47 = v283;
                  sub_10001BBA0(v191, v192);
                }

                else
                {
                  v47 = v120;
                }
              }

              else
              {
                isa = 0;
              }

              [v49 setUserActivity:isa];
              goto LABEL_6;
            case 35:
              v174 = [v287 batchCreationID];
              if (v174)
              {
                v175 = v256;
                v176 = v174;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                isa = UUID._bridgeToObjectiveC()().super.isa;
                v177 = v175;
                v47 = v120;
                (*v254)(v177, v279);
              }

              else
              {
                isa = 0;
              }

              [v49 setBatchCreationID:isa];
              goto LABEL_6;
            case 39:
              v156 = [v287 alternativeDisplayDateDate_forCalendar];
              if (v156)
              {
                v157 = v260;
                v158 = v156;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                v159 = v157;
                v47 = v120;
                (*v252)(v159, v280);
              }

              else
              {
                isa = 0;
              }

              [v49 setAlternativeDisplayDateDate_forCalendar:isa];
              goto LABEL_6;
            default:
              goto LABEL_7;
          }
        }

        else
        {
          v49 = v285;
          v48 = v287;
          v47 = v120;
        }

        goto LABEL_7;
    }
  }
}

void *sub_1002BB620(void *a1, unsigned __int8 a2)
{
  v2 = _swiftEmptyArrayStorage;
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v5 = [a1 subtaskIDsToUndelete];
    }

    else
    {
      if (a2 != 4)
      {
        return v2;
      }

      v5 = [a1 hashtagIDsToUndelete];
    }

    v7 = v5;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = sub_100277EBC(v8);

    return v2;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = &v12;
      v4 = [a1 listID];
      v13 = v4;
      v14 = _swiftEmptyArrayStorage;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = &v15;
      v4 = [a1 parentReminderID];
      v16 = v4;
      v14 = _swiftEmptyArrayStorage;
      if (!v4)
      {
LABEL_16:
        sub_1000050A4((v3 + 32), &unk_10093AF40, &unk_100795790);
        return v2;
      }
    }

    v9 = v4;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v14;
    goto LABEL_16;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v2 = swift_allocObject();
  *(v2 + 1) = xmmword_1007953F0;
  v2[4] = [a1 accountID];
  return v2;
}

uint64_t sub_1002BB840(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002BB888(uint64_t *a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v211 = a4;
  LOBYTE(v6) = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v14 = *(*(v205 - 8) + 64);
  __chkstk_darwin(v205);
  v16 = &v183 - v15;
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v206 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v207 = &v183 - v21;
  *&v23 = __chkstk_darwin(v22).n128_u64[0];
  v209 = &v183 - v24;
  v210 = a2;
  v212 = [a2 createResolutionTokenMapIfNecessary];
  v25 = [a1 resolutionTokenMap];
  if (!v25)
  {
    if (qword_100935E18 != -1)
    {
      goto LABEL_126;
    }

    goto LABEL_10;
  }

  v26 = v25;
  v204 = v9;
  sub_1000F5104(&qword_1009408F8, &qword_1007A0218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v6;
  v208 = sub_100695654(v26, inited);
  swift_setDeallocating();
  if (v6 <= 2u)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        sub_1006936FC(1u);
        v28 = String._bridgeToObjectiveC()();

        v29 = [v212 mergeWithMap:v208 forKey:v28];

        if (v29)
        {
          v30 = [a1 listID];
          if (!v30)
          {
            v33 = 0;
            goto LABEL_101;
          }

          v31 = v30;
          sub_100688390(1, v31, v211);
          if (!v4)
          {
            v33 = v32;

LABEL_101:
            [v210 setList:v33];
            goto LABEL_102;
          }

LABEL_46:

          return;
        }

LABEL_119:

        v56 = v208;
        goto LABEL_120;
      }

      sub_1006936FC(2u);
      v90 = String._bridgeToObjectiveC()();

      v91 = [v212 mergeWithMap:v208 forKey:v90];

      if (!v91)
      {
        goto LABEL_119;
      }

      v92 = [a1 parentReminderID];
      if (v92)
      {
        v31 = v92;
        sub_100687AD8(2, v31, v211);
        if (v4)
        {
          goto LABEL_46;
        }

        v163 = v93;
      }

      else
      {
        v163 = 0;
      }

      v213 = v4;
      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v164 = type metadata accessor for Logger();
      sub_100006654(v164, qword_100940648);
      v84 = v163;
      v165 = v210;
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v166, v167))
      {
        LODWORD(v211) = v167;
        v201 = v26;
        v168 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v225 = v210;
        *v168 = 136446466;
        v169 = [v165 remObjectID];
        v214 = v169;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v170 = Optional.descriptionOrNil.getter();
        v172 = v171;

        v173 = sub_10000668C(v170, v172, &v225);

        *(v168 + 4) = v173;
        *(v168 + 12) = 2082;
        if (v163)
        {
          v174 = [v84 remObjectID];
        }

        else
        {
          v174 = 0;
        }

        v214 = v174;
        v175 = Optional.descriptionOrNil.getter();
        v177 = v176;

        v178 = sub_10000668C(v175, v177, &v225);

        *(v168 + 14) = v178;
        _os_log_impl(&_mh_execute_header, v166, v211, "Updating reminder.list {reminder: %{public}s, list: %{public}s}", v168, 0x16u);
        swift_arrayDestroy();

        v26 = v201;
      }

      else
      {
      }

      [v165 setParentReminder:v84];
    }

    else
    {
      v33 = [a1 accountID];
      sub_100687AB0(0, v33, v211);
      if (v4)
      {
LABEL_102:

        goto LABEL_119;
      }

      v66 = v65;

      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_100006654(v67, qword_100940648);
      v68 = v66;
      v69 = v210;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v201 = v26;
        v73 = v72;
        v211 = swift_slowAlloc();
        v225 = v211;
        *v73 = 136446466;
        v74 = [v69 remObjectID];
        v214 = v74;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v75 = Optional.descriptionOrNil.getter();
        v213 = 0;
        v77 = v76;

        v78 = sub_10000668C(v75, v77, &v225);

        *(v73 + 4) = v78;
        *(v73 + 12) = 2082;
        v79 = [v68 remObjectID];
        v214 = v79;
        v80 = Optional.descriptionOrNil.getter();
        v82 = v81;

        v83 = sub_10000668C(v80, v82, &v225);

        *(v73 + 14) = v83;
        _os_log_impl(&_mh_execute_header, v70, v71, "Updating reminder.account {reminder: %{public}s, account: %{public}s}", v73, 0x16u);
        swift_arrayDestroy();

        v26 = v201;
      }

      v84 = v68;
      [v69 setAccount:v84];
    }

    goto LABEL_119;
  }

  if (v6 == 3)
  {
    v213 = v4;
    v85 = [a1 subtaskIDsToUndelete];
    v86 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v87 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v201 = v26;
    v207 = v86;
    if ((v87 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v87 = v215;
      v6 = v216;
      v88 = v217;
      a1 = v218;
      v89 = v219;
    }

    else
    {
      a1 = 0;
      v94 = -1 << *(v87 + 32);
      v6 = v87 + 56;
      v88 = ~v94;
      v95 = -v94;
      if (v95 < 64)
      {
        v96 = ~(-1 << v95);
      }

      else
      {
        v96 = -1;
      }

      v89 = v96 & *(v87 + 56);
    }

    v206 = v88;
    v97 = (v88 + 64) >> 6;
    if ((v87 & 0x8000000000000000) == 0)
    {
      goto LABEL_55;
    }

LABEL_52:
    v98 = __CocoaSet.Iterator.next()();
    if (v98)
    {
      v214 = v98;
      swift_dynamicCast();
      v99 = v225;
      v100 = a1;
      v101 = v89;
      if (v225)
      {
        while (1)
        {
          v104 = v213;
          sub_100687AD8(3, v99, v211);
          v213 = v104;
          if (v104)
          {
            sub_10001B860();

            return;
          }

          v106 = v105;
          [v106 setParentReminder:v210];
          v107 = [v106 createResolutionTokenMapIfNecessary];
          v209 = v101;
          v108 = v97;
          v109 = v6;
          v110 = v87;
          v111 = v107;
          sub_1006936FC(2u);
          v112 = String._bridgeToObjectiveC()();

          [v111 updateForKey:v112];

          v87 = v110;
          v6 = v109;
          v97 = v108;

          a1 = v100;
          v89 = v209;
          if (v87 < 0)
          {
            goto LABEL_52;
          }

LABEL_55:
          v102 = a1;
          v103 = v89;
          v100 = a1;
          if (!v89)
          {
            break;
          }

LABEL_59:
          v101 = (v103 - 1) & v103;
          v99 = *(*(v87 + 48) + ((v100 << 9) | (8 * __clz(__rbit64(v103)))));
          if (!v99)
          {
            goto LABEL_63;
          }
        }

        while (1)
        {
          v100 = (v102 + 1);
          if (__OFADD__(v102, 1))
          {
            __break(1u);
            goto LABEL_125;
          }

          if (v100 >= v97)
          {
            break;
          }

          v103 = *(v6 + 8 * v100);
          v102 = (v102 + 1);
          if (v103)
          {
            goto LABEL_59;
          }
        }
      }
    }

LABEL_63:
    sub_10001B860();
    v26 = v201;
    goto LABEL_119;
  }

  if (v6 != 4)
  {
    goto LABEL_119;
  }

  v184 = a1;
  a1 = [a1 hashtagIDsToUndelete];
  v57 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
  v58 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v58;
  v200 = v57;
  if ((v58 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v62 = v220;
    v61 = v221;
    v63 = v222;
    v6 = v223;
    v64 = v224;
  }

  else
  {
    v6 = 0;
    v113 = -1 << *(v60 + 32);
    v61 = v60 + 56;
    v114 = ~v113;
    v115 = -v113;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    else
    {
      v116 = -1;
    }

    v64 = v116 & *(v60 + 56);
    v63 = v114;
    v62 = v60;
  }

  v187 = v63;
  v193 = (v63 + 64) >> 6;
  v196 = (v10 + 56);
  v189 = (v10 + 48);
  v185 = (v10 + 32);
  v188 = (v10 + 8);
  *&v59 = 138543618;
  v191 = v59;
  v190 = v16;
  v186 = v13;
  v197 = v62;
  v198 = v61;
  v117 = v64;
  v118 = v200;
  v201 = v26;
  while (1)
  {
    v199 = v6;
    if ((v62 & 0x8000000000000000) == 0)
    {
      break;
    }

    v124 = __CocoaSet.Iterator.next()();
    if (!v124 || (v214 = v124, swift_dynamicCast(), v123 = v225, v122 = v117, !v225))
    {
LABEL_99:
      sub_10001B860();
      goto LABEL_119;
    }

LABEL_80:
    a1 = v62;
    v125 = v118;
    v126 = v26;
    v203 = v122;
    v195 = v117;
    v213 = v5;
    if (qword_100935E18 != -1)
    {
      swift_once();
    }

    v127 = type metadata accessor for Logger();
    sub_100006654(v127, qword_100940648);
    v128 = v210;
    v129 = v123;
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.info.getter();

    v132 = os_log_type_enabled(v130, v131);
    v202 = v128;
    if (v132)
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v225 = v194;
      *v133 = v191;
      *(v133 + 4) = v129;
      *v134 = v123;
      *(v133 + 12) = 2082;
      v135 = v129;
      v136 = [v128 remObjectID];
      v214 = v136;
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v137 = v129;
      v138 = Optional.descriptionOrNil.getter();
      v140 = v139;

      v141 = sub_10000668C(v138, v140, &v225);
      v62 = v197;

      *(v133 + 14) = v141;
      v129 = v137;
      _os_log_impl(&_mh_execute_header, v130, v131, "Undeleting hashtag {hashtagID: %{public}@, reminder: %{public}s}", v133, 0x16u);
      sub_1000050A4(v134, &unk_100938E70, &unk_100797230);

      a1 = v194;
      sub_10000607C(v194);

      v118 = v200;
      v26 = v201;
    }

    else
    {

      v26 = v126;
      v118 = v125;
      v62 = a1;
    }

    v142 = v213;
    sub_100688368(4, v129, v211);
    v5 = v142;
    if (v142)
    {
      sub_10001B860();

      return;
    }

    v144 = v143;
    if ([v144 markedForDeletion])
    {
      v194 = v129;
      v145 = [v144 reminderIdentifier];
      if (v145)
      {
        v146 = v209;
        v147 = v145;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v148 = 0;
      }

      else
      {
        v148 = 1;
        v146 = v209;
      }

      v149 = v202;
      v192 = v144;
      v150 = *v196;
      v151 = 1;
      (*v196)(v146, v148, 1, v204);
      v152 = [v149 remObjectID];
      v213 = 0;
      if (v152)
      {
        v153 = v152;
        v154 = [v152 uuid];

        v155 = v207;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v151 = 0;
      }

      else
      {
        v155 = v207;
      }

      v156 = v204;
      v150(v155, v151, 1, v204);
      v157 = *(v205 + 48);
      v158 = v209;
      v159 = v190;
      sub_10018E470(v209, v190);
      sub_10018E470(v155, v159 + v157);
      a1 = *v189;
      if ((*v189)(v159, 1, v156) == 1)
      {
        sub_1000050A4(v155, &unk_100939D90, "8\n\r");
        sub_1000050A4(v158, &unk_100939D90, "8\n\r");
        if ((a1)(v159 + v157, 1, v156) != 1)
        {
          goto LABEL_122;
        }

        sub_1000050A4(v159, &unk_100939D90, "8\n\r");
        v26 = v201;
        v62 = v197;
        v119 = v194;
      }

      else
      {
        v160 = v206;
        sub_10018E470(v159, v206);
        if ((a1)(v159 + v157, 1, v156) == 1)
        {
          sub_1000050A4(v207, &unk_100939D90, "8\n\r");
          sub_1000050A4(v209, &unk_100939D90, "8\n\r");
          (*v188)(v160, v156);
LABEL_122:
          sub_1000050A4(v159, &unk_10093A3D0, &qword_100795770);
          v26 = v201;
          v119 = v194;
LABEL_123:
          v179 = objc_opt_self();
          v180 = v192;
          v181 = [v192 remObjectID];

          v182 = [v184 objectID];
          [v179 validationErrorUndeleteHashtagFromAnotherReminder:v181 expectedReminderID:v182];

          swift_willThrow();
          sub_10001B860();
          return;
        }

        v161 = v186;
        (*v185)(v186, v159 + v157, v156);
        sub_1002BB840(&qword_10093A3E0, &type metadata accessor for UUID);
        v162 = dispatch thunk of static Equatable.== infix(_:_:)();
        a1 = *v188;
        (*v188)(v161, v156);
        sub_1000050A4(v207, &unk_100939D90, "8\n\r");
        sub_1000050A4(v209, &unk_100939D90, "8\n\r");
        (a1)(v206, v156);
        sub_1000050A4(v159, &unk_100939D90, "8\n\r");
        v26 = v201;
        v62 = v197;
        v119 = v194;
        if ((v162 & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      v144 = v192;

      [v144 setReminder:v202];
      v118 = v200;
      v5 = v213;
    }

    else
    {

      v119 = v144;
    }

    v117 = v203;
    v61 = v198;
  }

  v120 = v6;
  v121 = v117;
  if (v117)
  {
LABEL_76:
    v122 = (v121 - 1) & v121;
    v123 = *(*(v62 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v121)))));
    if (!v123)
    {
      goto LABEL_99;
    }

    goto LABEL_80;
  }

  while (1)
  {
    v6 = v120 + 1;
    if (__OFADD__(v120, 1))
    {
      break;
    }

    if (v6 >= v193)
    {
      goto LABEL_99;
    }

    v121 = *(v61 + 8 * v6);
    ++v120;
    if (v121)
    {
      goto LABEL_76;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  swift_once();
LABEL_10:
  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_100940648);
  v35 = a1;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v225 = v40;
    *v38 = 138543618;
    v41 = [v35 objectID];
    *(v38 + 4) = v41;
    v42 = 0xE900000000000044;
    *v39 = v41;
    *(v38 + 12) = 2082;
    v43 = 0x49746E756F636361;
    v44 = 0x80000001007EA4F0;
    v45 = 0x80000001007EA510;
    v46 = 0xD00000000000001FLL;
    if (v6 == 4)
    {
      v46 = 0xD000000000000014;
    }

    else
    {
      v45 = 0x80000001007EA530;
    }

    if (v6 == 3)
    {
      v47 = 0xD000000000000014;
    }

    else
    {
      v47 = v46;
    }

    if (v6 != 3)
    {
      v44 = v45;
    }

    v48 = 0xE600000000000000;
    v49 = 0x44497473696CLL;
    if (v6 != 1)
    {
      v49 = 0xD000000000000010;
      v48 = 0x80000001007EA4D0;
    }

    if (v6)
    {
      v43 = v49;
      v42 = v48;
    }

    if (v6 <= 2u)
    {
      v50 = v43;
    }

    else
    {
      v50 = v47;
    }

    if (v6 <= 2u)
    {
      v51 = v42;
    }

    else
    {
      v51 = v44;
    }

    v52 = sub_10000668C(v50, v51, &v225);

    *(v38 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v36, v37, "REMReminderStorageCDIngestor:establishRelationship(onStorage:into cdReminder:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v38, 0x16u);
    sub_1000050A4(v39, &unk_100938E70, &unk_100797230);

    sub_10000607C(v40);
  }

  v53 = objc_opt_self();
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = String._bridgeToObjectiveC()();
  [v53 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v55];

  swift_willThrow();
  v56 = v212;
LABEL_120:
}

id sub_1002BD11C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_100212194(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_1002BD158@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  result = sub_1003AC4B8(*a1, 0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

NSObject *sub_1002BD198@<X0>(void **a1@<X0>, NSObject **a2@<X8>)
{
  result = sub_10030ED04(*a1, 0, 0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1002BD1D0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v19 - v13;
  result = [a1 account];
  if (result)
  {
    v16 = result;
    v17 = [result identifier];

    if (v17)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 56))(v10, 0, 1, v2);
    }

    else
    {
      (*(v3 + 56))(v10, 1, 1, v2);
    }

    sub_100031B58(v10, v14, &unk_100939D90, "8\n\r");
    if ((*(v3 + 48))(v14, 1, v2))
    {
      sub_1000050A4(v14, &unk_100939D90, "8\n\r");
      return 0;
    }

    else
    {
      (*(v3 + 16))(v6, v14, v2);
      sub_1000050A4(v14, &unk_100939D90, "8\n\r");
      v18 = UUID.uuidString.getter();
      (*(v3 + 8))(v6, v2);
      return v18;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMReminderStorageCDIngestor.ValueKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}