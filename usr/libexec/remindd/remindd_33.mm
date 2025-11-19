uint64_t sub_1003413E4()
{
  v1 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine___debug_fetchedJournalEntries;
  v2 = sub_1000F5104(&qword_1009423F0, &qword_1007A29D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine___debug_processedJournalEntries;
  v4 = sub_1000F5104(&qword_1009423F8, &qword_1007A29D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine___debug_staleObjectIDs;
  v6 = sub_1000F5104(&qword_100942400, &qword_1007A29E0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(v0 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userNotificationCenter);
  swift_unknownObjectRelease();
  v8 = *(v0 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults);
  swift_unknownObjectRelease();
  v9 = *(v0 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_cancellables);

  v10 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine__started;
  v11 = sub_1000F5104(&qword_100942408, &qword_1007A29E8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(v0 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_journalUpdatesSubscriptionTransactionRegistrar);

  v13 = *(v0 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_accountSignInOrOutSubscriptionTransactionRegistrar);

  return v0;
}

uint64_t sub_1003415A4()
{
  sub_1003413E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10034163C()
{
  sub_100341808(319, &qword_100942258, &qword_100937018, &unk_100791C00);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_100341808(319, &qword_100942260, &qword_100937020, &unk_1007A2840);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_100341808(319, &qword_100942268, &qword_100937028, &qword_100791C10);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10034185C();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100341808(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000F514C(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10034185C()
{
  if (!qword_100942270)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100942270);
    }
  }
}

uint64_t getEnumTagSinglePayload for RDSharedListActivityNotificationsEngine.EngineConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSharedListActivityNotificationsEngine.EngineConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t *sub_100341958(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
    v12 = a3[7];
    v13 = *(a2 + v12);
    *(a1 + v12) = v13;

    v14 = v13;
  }

  return a1;
}

void sub_100341A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 24) + 8);

  v6 = *(a1 + *(a2 + 28));
}

uint64_t sub_100341AC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v11 = a3[7];
  v12 = *(a2 + v11);
  *(a1 + v11) = v12;

  v13 = v12;
  return a1;
}

uint64_t sub_100341B68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7 = a3[6];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  v11 = a3[7];
  v12 = *(a2 + v11);
  v13 = *(a1 + v11);
  *(a1 + v11) = v12;
  v14 = v12;

  return a1;
}

uint64_t sub_100341C28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_100341CB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;

  v13 = a3[7];
  v14 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);

  return a1;
}

uint64_t sub_100341DA8()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_100341E5C()
{
  result = qword_1009423E0;
  if (!qword_1009423E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009423E0);
  }

  return result;
}

uint64_t sub_100341EB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100341F2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100341FA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

id sub_100342024()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1003EF734(KeyPath, &off_1008E2BD8);

  type metadata accessor for REMCKSharedEntitySyncActivity();
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v1];
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  v4 = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  v5 = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100796900;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = v4;
  v8 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setSortDescriptors:isa];

  return v2;
}

void sub_1003421D0(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for RDUserNotificationAction();
  v7 = *(v6 - 8);
  v70 = v6;
  v71 = v7;
  v8 = v7[8];
  __chkstk_darwin(v6);
  v69 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = type metadata accessor for RDUserNotificationType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v72 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = (&v68 - v22);
  v24 = *(v14 + 16);
  (v24)(&v68 - v22, a2, v13, v21);
  v25 = (*(v14 + 88))(v23, v13);
  if (v25 == enum case for RDUserNotificationType.reminderAlarm(_:) || v25 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:) || v25 == enum case for RDUserNotificationType.caldavSharedList(_:) || v25 == enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    goto LABEL_12;
  }

  if (v25 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
  {
    (*(v14 + 96))(v23, v13);
    v40 = *v23;
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = sub_100006654(v41, qword_1009421A8);
    v43 = a1;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    v13 = a3;
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v46 = 136315394;
      v47 = [v43 actionIdentifier];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v42;
      v49 = v48;
      v51 = v50;

      v52 = sub_10000668C(v49, v51, &v73);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v53 = Array.description.getter();
      v55 = sub_10000668C(v53, v54, &v73);

      *(v46 + 14) = v55;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v44, v45, "📔 RDSyncActivityEngine: Processing shared list update notification {actionIdentifier:%s, reminderIDs: %s", v46, 0x16u);
      swift_arrayDestroy();
    }

    a3 = v70;
    v24 = v71;
    a1 = v71[2];
    (a1)(v12, v13, v70);
    v56 = (v24[11])(v12, a3);
    if (v56 != enum case for RDUserNotificationAction.defaultDismiss(_:) && v56 != enum case for RDUserNotificationAction.debugDismiss(_:) && v56 != enum case for RDUserNotificationAction.markAsCompleted(_:) && v56 != enum case for RDUserNotificationAction.snoozeForOneHour(_:) && v56 != enum case for RDUserNotificationAction.snoozeForOneDay(_:) && v56 != enum case for RDUserNotificationAction.snoozeToNextThirds(_:) && v56 != enum case for RDUserNotificationAction.snoozeToNextWeekend(_:) && v56 != enum case for RDUserNotificationAction.addToReminders(_:) && v56 != enum case for RDUserNotificationAction.viewAssignmentInList(_:) && v56 != enum case for RDUserNotificationAction.declineAssignment(_:))
    {
      if (v56 == enum case for RDUserNotificationAction.viewRemindersInList(_:))
      {
      }

      else
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }

      return;
    }

    goto LABEL_44;
  }

  if (v25 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
LABEL_12:
    (*(v14 + 8))(v23, v13);
  }

  else if (v25 != enum case for RDUserNotificationType.todayNotification(_:) && v25 != enum case for RDUserNotificationType.todayNotificationBadge(_:) && v25 != enum case for RDUserNotificationType.beforeFirstUnlock(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_44:

    v59 = v69;
    (a1)(v69, v13, a3);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v73 = v63;
      *v62 = 136315138;
      v64 = RDUserNotificationAction.rawValue.getter();
      v66 = v65;
      (v24[1])(v59, a3);
      v67 = sub_10000668C(v64, v66, &v73);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "📔 RDSyncActivityEngine: Unexpected action %s for notification type .sharedListAddedReminderNotification", v62, 0xCu);
      sub_10000607C(v63);
    }

    else
    {

      (v24[1])(v59, a3);
    }

    return;
  }

  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_1009421A8);
  (v24)(v19, a2, v13);
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v73 = v71;
    *v33 = 136315394;
    (v24)(v72, v19, v13);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    (*(v14 + 8))(v19, v13);
    v37 = sub_10000668C(v34, v36, &v73);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2112;
    *(v33 + 14) = v30;
    v38 = v70;
    *v70 = v30;
    v39 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "📔 RDSyncActivityEngine: Unexpected notification type {type: %s, response: %@}", v33, 0x16u);
    sub_1000050A4(v38, &unk_100938E70, &unk_100797230);

    sub_10000607C(v71);
  }

  else
  {

    (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_100342B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_1009424F0, &qword_1007A2AB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100342BE0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_100342C48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100342D08()
{
  result = sub_10026E25C();
  v1 = result;
  v2 = 0;
  v3 = result[2];
LABEL_2:
  v4 = v2;
  while (1)
  {
    if (v3 == v4)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v4 >= v1[2])
    {
      break;
    }

    v2 = v4 + 1;
    result = sub_10034454C(*(v1 + v4 + 32));
    v4 = v2;
    if (result)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v5 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *sub_100342E04()
{
  v1 = v0;
  if ((sub_100345070() & 1) == 0)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_1009475D0);
    v14 = v0;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_36;
    }

    v17 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10000668C(0xD000000000000023, 0x80000001007F5580, &v49);
    *(v17 + 12) = 2082;
    v18 = [v14 remObjectID];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 description];

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 7104878;
      v23 = 0xE300000000000000;
    }

    v43 = sub_10000668C(v21, v23, &v49);

    *(v17 + 14) = v43;
    v44 = "📓 %s: Object is not eligible for journaling {remObjectID: %{public}s}";
    goto LABEL_35;
  }

  if (qword_100936168 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_1009475D0);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v6 = 136315394;
      *(v6 + 4) = sub_10000668C(0xD000000000000023, 0x80000001007F5580, &v49);
      *(v6 + 12) = 2082;
      v7 = [v3 remObjectID];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 description];

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v10 = 7104878;
        v12 = 0xE300000000000000;
      }

      v24 = sub_10000668C(v10, v12, &v49);

      *(v6 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v4, v5, "📓 %s: Considering reminder activity {remObjectID: %{public}s}", v6, 0x16u);
      swift_arrayDestroy();
    }

    v48 = [v3 storeControllerManagedObjectContext];
    if (!v48)
    {
      break;
    }

    v25 = sub_100342D08();
    v26 = v25;
    v49 = _swiftEmptyArrayStorage;
    v47 = v3;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = 0;
    v1 = (v26 & 0xC000000000000001);
    v30 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v28 == v29)
      {

        return v30;
      }

      if (v1)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *(v27 + 16))
        {
          goto LABEL_39;
        }

        v31 = *(v26 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v34 = sub_1003456A4(v31, v48, v47);

      ++v29;
      if (v34)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v30 = v49;
        v29 = v33;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v36 = v3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10000668C(0xD000000000000023, 0x80000001007F5580, &v49);
    *(v17 + 12) = 2082;
    v37 = [v36 remObjectID];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 description];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;
    }

    else
    {
      v40 = 7104878;
      v42 = 0xE300000000000000;
    }

    v45 = sub_10000668C(v40, v42, &v49);

    *(v17 + 14) = v45;
    v44 = "📓 %s: Unable to unwrap optional storeControllerManagedObjectContext {remObjectID: %{public}s}";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v15, v16, v44, v17, 0x16u);
    swift_arrayDestroy();
  }

LABEL_36:

  return _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall REMCDReminder.willSave_Swift()()
{
  if (([v0 willSave_hasProcessedDueDateDeltaAlertsDataChanges] & 1) == 0)
  {
    [v0 setWillSave_hasProcessedDueDateDeltaAlertsDataChanges:1];
    v1 = [v0 changedValues];
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = sub_1001A6DC0(v2);
    LOBYTE(v2) = sub_100240BDC(0xD000000000000016, 0x80000001007E8FD0, v3);

    if (v2)
    {

      [v0 processDueDateDeltaAlertsDataChanges];
    }
  }
}

BOOL sub_100343618()
{
  v1 = v0;
  v2 = [v0 currentUserShareParticipantID];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_1009475D0);
    v8 = v0;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37[0] = v12;
      *v11 = 136446210;
      v13 = [v8 remObjectID];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 description];

        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 7104878;
        v18 = 0xE300000000000000;
      }

      v19 = sub_10000668C(v16, v18, v37);

      *(v11 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "📓 REMSharedActivityJournaling: Unable to get currentUserShareParticipantID from reminder. Assuming unit testing and returning CKCurrentUserDefaultName {reminderObjectID: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v20;
  }

  sub_1003439F4();
  if (v21)
  {
    v37[0] = v4;
    v37[1] = v6;
    sub_10013BCF4();
    v22 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    return v22 == 0;
  }

  else
  {

    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_1009475D0);
    v25 = v1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37[0] = v29;
      *v28 = 136446210;
      v30 = [v25 remObjectID];
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

      v36 = sub_10000668C(v33, v35, v37);

      *(v28 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "📓: Unable to get authorUserID for reminder {reminderObjectID: %{public}s}", v28, 0xCu);
      sub_10000607C(v29);
    }

    return 1;
  }
}

uint64_t sub_1003439F4()
{
  v1 = v0;
  v2 = [v0 list];
  if (!v2)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_1009475D0);
    v20 = v0;
    v5 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v21))
    {
      v22 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v22 = 136446466;
      v23 = [v20 remObjectID];
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

      v68 = sub_10000668C(v26, v28, &v98);

      *(v22 + 4) = v68;
      *(v22 + 12) = 2080;
      [v20 isConcealed];
      v69 = Bool.yesno.getter();
      v71 = sub_10000668C(v69, v70, &v98);

      *(v22 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v5, v21, "📓 REMSharedActivityJournaling: Unable to get list from reminder {reminderObjectID: %{public}s, isConcealed: %s}", v22, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_63;
  }

  v3 = v2;
  v4 = [v0 ckServerRecord];
  if (!v4)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_1009475D0);
    v30 = v0;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v98 = v34;
      *v33 = 136446210;
      v35 = [v30 remObjectID];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 description];

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v38 = 7104878;
        v40 = 0xE300000000000000;
      }

      v84 = sub_10000668C(v38, v40, &v98);

      *(v33 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v31, v32, "📓 REMSharedActivityJournaling: Unable to get ckServerRecord for reminder {reminderObjectID: %{public}s}", v33, 0xCu);
      sub_10000607C(v34);
    }

    return 0;
  }

  v5 = v4;
  if (([v0 isInserted] & 1) == 0)
  {
    v6 = [v5 lastModifiedUserRecordID];
    if (!v6)
    {
      if (qword_100936168 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_100006654(v60, qword_1009475D0);
      v61 = v0;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_58;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v98 = v12;
      *v11 = 136446210;
      v62 = [v61 remObjectID];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 description];

        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
      }

      else
      {
        v65 = 7104878;
        v67 = 0xE300000000000000;
      }

      v96 = sub_10000668C(v65, v67, &v98);

      *(v11 + 4) = v96;
      v95 = "📓 REMSharedActivityJournaling: Unable to get lastModifiedUserRecordID from reminder {reminderObjectID: %{public}s}";
      goto LABEL_57;
    }

LABEL_21:
    v41 = v6;
    v42 = [v6 recordName];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = [v3 ckServerShare];
    if (v46)
    {
      v47 = v46;
      v48 = sub_100446EB8(v43, v45);
      if (!v48)
      {
        if (qword_100936168 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        sub_100006654(v72, qword_1009475D0);
        v73 = v1;

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *v76 = 136446466;
          v77 = sub_10000668C(v43, v45, &v98);

          *(v76 + 4) = v77;
          *(v76 + 12) = 2082;
          v78 = [v73 remObjectID];
          if (v78)
          {
            v79 = v78;
            v80 = [v78 description];

            v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v82;
          }

          else
          {
            v81 = 7104878;
            v83 = 0xE300000000000000;
          }

          v97 = sub_10000668C(v81, v83, &v98);

          *(v76 + 14) = v97;
          _os_log_impl(&_mh_execute_header, v74, v75, "📓 REMSharedActivityJournaling: Unable to get a participant for the reminder's author {authorID: %{public}s, reminderObjectID: %{public}s}", v76, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_62;
      }

      v49 = v48;

      v43 = CKShareParticipant.participantID.getter();
    }

    else
    {
      if (qword_100936168 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100006654(v50, qword_1009475D0);
      v51 = v1;
      v3 = v3;
      v49 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v49, v52))
      {

LABEL_52:
        return v43;
      }

      v53 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v53 = 136446466;
      v54 = [v51 remObjectID];
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

      v85 = sub_10000668C(v57, v59, &v98);

      *(v53 + 4) = v85;
      *(v53 + 12) = 2082;
      v86 = [v3 remObjectID];
      if (v86)
      {
        v87 = v86;
        v88 = [v86 description];

        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;
      }

      else
      {
        v91 = 0xE300000000000000;
        v89 = 7104878;
      }

      v92 = sub_10000668C(v89, v91, &v98);

      *(v53 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v49, v52, "📓 REMSharedActivityJournaling: Unable to get ckServerShare from reminder's list. Assuming unit testing and returning userRecordID {reminderObjectID: %{public}s, listObjectID: %{public}s}", v53, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_52;
  }

  v6 = [v5 creatorUserRecordID];
  if (v6)
  {
    goto LABEL_21;
  }

  if (qword_100936168 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_1009475D0);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_58;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v98 = v12;
  *v11 = 136446210;
  v13 = [v8 remObjectID];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 description];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 7104878;
    v18 = 0xE300000000000000;
  }

  v94 = sub_10000668C(v16, v18, &v98);

  *(v11 + 4) = v94;
  v95 = "📓 REMSharedActivityJournaling: Unable to get creatorUserRecordID from reminder {reminderObjectID: %{public}s}";
LABEL_57:
  _os_log_impl(&_mh_execute_header, v9, v10, v95, v11, 0xCu);
  sub_10000607C(v12);

LABEL_58:

LABEL_62:
LABEL_63:

  return 0;
}

uint64_t sub_10034454C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v81 - v6;
  v8 = type metadata accessor for Date();
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = *(v92 + 64);
  __chkstk_darwin(v8);
  v94 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v81 - v22;
  __chkstk_darwin(v21);
  v25 = v81 - v24;
  v26 = [v2 account];
  if (!v26)
  {
    goto LABEL_7;
  }

  v27 = v26;
  v91 = a1;
  v28 = [v26 identifier];

  if (v28)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v12 + 56);
    v29(v23, 0, 1, v11);
  }

  else
  {
    v29 = *(v12 + 56);
    v29(v23, 1, 1, v11);
  }

  sub_100031B58(v23, v25, &unk_100939D90, "8\n\r");
  v30 = *(v12 + 48);
  if (!v30(v25, 1, v11))
  {
    v86 = v29;
    (*(v12 + 16))(v15, v25, v11);
    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    v85 = UUID.uuidString.getter();
    isa = v46;
    v81[0] = *(v12 + 8);
    (v81[0])(v15, v11);
    sub_100345AEC(v7);
    v48 = v92;
    v47 = v93;
    if ((*(v92 + 48))(v7, 1, v93) == 1)
    {

      v77 = sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
      __chkstk_darwin(v77);
      sub_100345DB0();
    }

    else
    {
      v81[1] = v12 + 8;
      v87 = v30;
      (*(v48 + 32))(v94, v7, v47);
      v49 = sub_1003439F4();
      if (v50)
      {
        v84 = v49;
        v51 = [v2 parentCloudObject];
        if (v51)
        {
          v52 = v51;
          v53 = [swift_getObjCClassFromObject() cdEntityName];
          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = v54;

          v55 = [v52 ckIdentifier];
          if (v55)
          {
            v56 = v55;
            v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v88 = v57;
          }

          else
          {

            v82 = 0;
            v88 = 0;
          }
        }

        else
        {
          v82 = 0;
          v83 = 0;
          v88 = 0;
          v89 = 0;
        }

        v62 = v91;
        sub_100345DB0();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v64 = [ObjCClassFromMetadata cdEntityName];
        if (!v64)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = String._bridgeToObjectiveC()();
          v62 = v91;
        }

        v65 = [v2 ckIdentifier];
        if (!v65)
        {

          v70 = objc_opt_self();
          v71 = String._bridgeToObjectiveC()();
          [v70 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v71];

          swift_willThrow();
          (*(v92 + 8))(v94, v93);
          goto LABEL_8;
        }

        v66 = v65;
        v91 = qword_1007A2DB8[v62];
        v86(v20, 1, 1, v11);
        v86 = String._bridgeToObjectiveC()();

        isa = Date._bridgeToObjectiveC()().super.isa;
        v67 = String._bridgeToObjectiveC()();

        if (v89)
        {
          v68 = String._bridgeToObjectiveC()();

          if (v88)
          {
LABEL_28:
            v69 = String._bridgeToObjectiveC()();

LABEL_32:
            if (v87(v20, 1, v11) == 1)
            {
              v72 = 0;
            }

            else
            {
              v72 = UUID._bridgeToObjectiveC()().super.isa;
              (v81[0])(v20, v11);
            }

            v73 = objc_allocWithZone(REMSharedEntitySyncActivity);
            v74 = v86;
            v75 = isa;
            v76 = [v73 initWithAccountIdentifier:v86 activityDate:isa activityType:v91 authorUserRecordIDString:v67 ckParentCloudObjectEntityName:v68 ckParentCloudObjectIdentifier:v69 ckIdentifier:v66 sharedEntityName:v64 uuidForChangeTracking:v72];

            (*(v92 + 8))(v94, v93);
            return v76;
          }
        }

        else
        {
          v68 = 0;
          if (v88)
          {
            goto LABEL_28;
          }
        }

        v69 = 0;
        goto LABEL_32;
      }

      __chkstk_darwin(v78);
      sub_100345DB0();
    }

    KeyPath = swift_getKeyPath();
    v96[0] = 0;
    v96[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v80._object = 0x80000001007EC120;
    v80._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v80);
    v95 = KeyPath;
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  sub_1000050A4(v25, &unk_100939D90, "8\n\r");
LABEL_7:
  v31 = objc_opt_self();
  sub_100345DB0();
  v32 = swift_getObjCClassFromMetadata();
  v33 = String._bridgeToObjectiveC()();
  [v31 unexpectedNilPropertyWithClass:v32 property:v33];

  swift_willThrow();
LABEL_8:
  if (qword_100936168 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_1009475D0);
  v35 = v2;
  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v38 = 136315650;
    *(v38 + 4) = sub_10000668C(0xD000000000000010, 0x80000001007F55B0, v96);
    *(v38 + 12) = 2082;
    v39 = [v35 remObjectID];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 description];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
    }

    else
    {
      v44 = 0xE300000000000000;
      v42 = 7104878;
    }

    v58 = sub_10000668C(v42, v44, v96);

    *(v38 + 14) = v58;
    *(v38 + 22) = 2082;
    swift_getErrorValue();
    v59 = Error.rem_errorDescription.getter();
    v61 = sub_10000668C(v59, v60, v96);

    *(v38 + 24) = v61;
    _os_log_impl(&_mh_execute_header, v36, v37, "📓 %s: An unexpected error occurred {remObjectID: %{public}s, description: %{public}s}", v38, 0x20u);
    swift_arrayDestroy();

    return 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100345070()
{
  if (![v0 isSharedViaICloud])
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_1009475D0);
    v11 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007F55D0, &v37);
    *(v5 + 12) = 2080;
    [v11 isSharedViaICloud];
    v12 = Bool.yesno.getter();
    v14 = sub_10000668C(v12, v13, &v37);

    *(v5 + 14) = v14;
    v9 = "📓 %s: Object is not eligible for journaling {isSharedViaICloud: %s}";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, v4, v9, v5, 0x16u);
    swift_arrayDestroy();

LABEL_12:

LABEL_13:

    return 0;
  }

  if ([v0 isConcealed])
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_1009475D0);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007F55D0, &v37);
    *(v5 + 12) = 2080;
    [v2 isConcealed];
    v6 = Bool.yesno.getter();
    v8 = sub_10000668C(v6, v7, &v37);

    *(v5 + 14) = v8;
    v9 = "📓 %s: Object is not eligible for journaling {isConcealed: %s}";
    goto LABEL_11;
  }

  if (sub_100343618())
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_1009475D0);
    v17 = v0;
    v3 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v18))
    {
      goto LABEL_13;
    }

    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007F55D0, &v37);
    *(v19 + 12) = 2080;
    sub_100343618();
    v20 = Bool.yesno.getter();
    v22 = sub_10000668C(v20, v21, &v37);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v3, v18, "📓 %s: Object is not eligible for journaling {isAuthoredByCurrentUser: %s}", v19, 0x16u);
    swift_arrayDestroy();

    goto LABEL_12;
  }

  v23 = [v0 managedObjectContext];
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v23 transactionAuthor];

  if (!v25 || (static String._unconditionallyBridgeFromObjectiveC(_:)(), v25, v26._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), v27 = String.hasPrefix(_:)(v26), , , !v27))
  {
LABEL_23:
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_1009475D0);
    v29 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v30 = 7104878;
    v5 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007F55D0, &v37);
    *(v5 + 12) = 2082;
    v31 = [v29 managedObjectContext];
    if (v31 && (v32 = v31, v33 = [v31 transactionAuthor], v32, v33))
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    v36 = sub_10000668C(v30, v35, &v37);

    *(v5 + 14) = v36;
    v9 = "📓 %s: Object is not eligible for journaling - transactionAuthor: %{public}s";
    goto LABEL_11;
  }

  return 1;
}

uint64_t *sub_1003456A4(void *a1, void *a2, void *a3)
{
  v5 = sub_1002A0A50(a1, a2);
  if (v5)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_1009475D0);
    v7 = a1;
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v11 = 136315650;
      *(v11 + 4) = sub_10000668C(0xD000000000000023, 0x80000001007F5580, &v41);
      *(v11 + 12) = 2082;
      v12 = [v7 activityTypeDescription];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v41);

      *(v11 + 14) = v16;
      *(v11 + 22) = 2082;
      v17 = [v8 remObjectID];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 description];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v20 = 7104878;
        v22 = 0xE300000000000000;
      }

      v37 = sub_10000668C(v20, v22, &v41);

      *(v11 + 24) = v37;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v9, v10, v38, v11, 0x20u);
      swift_arrayDestroy();

      return v5;
    }
  }

  else
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_1009475D0);
    v24 = a1;
    v25 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v11 = 136315650;
      *(v11 + 4) = sub_10000668C(0xD000000000000023, 0x80000001007F5580, &v41);
      *(v11 + 12) = 2082;
      v26 = [v24 activityTypeDescription];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10000668C(v27, v29, &v41);

      *(v11 + 14) = v30;
      *(v11 + 22) = 2082;
      v31 = [v25 remObjectID];
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

      v39 = sub_10000668C(v34, v36, &v41);

      *(v11 + 24) = v39;
      goto LABEL_17;
    }
  }

  return v5;
}

uint64_t sub_100345AEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = [v2 isInserted];
  v12 = [v2 ckServerRecord];
  if (v11)
  {
    if (v12)
    {
      v13 = v12;
      v14 = [v12 creationDate];

      if (v14)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = type metadata accessor for Date();
        (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
      }

      else
      {
        v22 = type metadata accessor for Date();
        (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
      }

      v23 = v10;
      return sub_100031B58(v23, a1, &unk_100938850, qword_100795AE0);
    }
  }

  else if (v12)
  {
    v16 = v12;
    v17 = [v12 modificationDate];

    if (v17)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = type metadata accessor for Date();
      (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    }

    else
    {
      v24 = type metadata accessor for Date();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    }

    v23 = v8;
    return sub_100031B58(v23, a1, &unk_100938850, qword_100795AE0);
  }

  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);

  return v20(a1, 1, 1, v19);
}

unint64_t sub_100345DB0()
{
  result = qword_100939EE0;
  if (!qword_100939EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100939EE0);
  }

  return result;
}

uint64_t sub_100345E1C@<X0>(unint64_t *a1@<X8>)
{
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  *(inited + 32) = 0x7265646E696D6572;
  *(inited + 40) = 0xEA00000000004449;
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x44646574656C6564;
  *(inited + 88) = 0xEB00000000657461;
  v5 = v1 + *(type metadata accessor for RDPermanentlyHiddenReminder() + 20);
  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 96) = v6;
  *(inited + 120) = &type metadata for Double;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 168) = &type metadata for Int;
  v7 = kREMSupportedVersionFor2024;
  *(inited + 136) = 0x80000001007E8C60;
  *(inited + 144) = v7;
  v8 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  *a1 = v8;
  v9 = enum case for REMJSONType.jsonObject(_:);
  v10 = type metadata accessor for REMJSONType();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t sub_100345FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1000F5104(&unk_100942600, &qword_1007A2E18);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v49 = &v44 - v5;
  v50 = type metadata accessor for Date();
  v45 = *(v50 - 8);
  v6 = *(v45 + 64);
  __chkstk_darwin(v50);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&qword_100938AF0, &qword_1007B6620);
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v54 = type metadata accessor for UUID();
  v47 = *(v54 - 8);
  v12 = *(v47 + 64);
  __chkstk_darwin(v54);
  v55 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&qword_100938AE0, qword_1007B6560);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v19 = type metadata accessor for REMJSONType();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v24, a1, v19, v22);
  v25 = (*(v20 + 88))(v24, v19);
  if (v25 == enum case for REMJSONType.jsonObject(_:))
  {
    (*(v20 + 96))(v24, v19);
    v26 = *v24;
    (*(v15 + 104))(v18, enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:), v14);
    v57 = kREMSupportedVersionFor2024;
    v27 = v56;
    Dictionary<>.deserializeOptional<A>(key:valueType:defaultValue:)();
    (*(v15 + 8))(v18, v14);
    if (v27)
    {
    }

    v33 = v58;
    if (rem_isUnsupportedVersionByRuntime())
    {

      v29 = type metadata accessor for REMJSONDeserializationError();
      sub_1003466D4();
      swift_allocError();
      v31 = v34;
      *v34 = v33;
      v32 = &enum case for REMJSONDeserializationError.notSupported(_:);
      goto LABEL_6;
    }

    v35 = v53;
    (*(v53 + 104))(v11, enum case for Dictionary<>.DeserializableValueType.uuid<A, B><A1>(_:), v8);
    v36 = v54;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    (*(v35 + 8))(v11, v8);
    v38 = v51;
    v37 = v52;
    v39 = v49;
    (*(v51 + 104))(v49, enum case for Dictionary<>.DeserializableValueType.date<A, B><A1>(_:), v52);
    v40 = v48;
    v41 = v50;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    (*(v38 + 8))(v39, v37);

    v42 = v46;
    (*(v47 + 32))(v46, v55, v36);
    v43 = type metadata accessor for RDPermanentlyHiddenReminder();
    return (*(v45 + 32))(v42 + *(v43 + 20), v40, v41);
  }

  else
  {
    if (v25 == enum case for REMJSONType.jsonArray(_:))
    {
      (*(v20 + 8))(v24, v19);
      v29 = type metadata accessor for REMJSONDeserializationError();
      sub_1003466D4();
      swift_allocError();
      v31 = v30;
      v32 = &enum case for REMJSONDeserializationError.invalidData(_:);
LABEL_6:
      (*(*(v29 - 8) + 104))(v31, *v32, v29);
      return swift_willThrow();
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1003466D4()
{
  result = qword_100938AF8;
  if (!qword_100938AF8)
  {
    type metadata accessor for REMJSONDeserializationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938AF8);
  }

  return result;
}

uint64_t sub_10034672C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002955CC(a1, &v23);
  if (v24)
  {
    sub_100054B6C(&v23, v25);
    sub_10000A87C(v25, &v23);
    v3 = v24;
    v4 = sub_10000C9DC(&v23, v24);
    v5 = *(*(v3 - 8) + 64);
    __chkstk_darwin(v4);
    v7 = (&v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for _MobileKeybagStateProvider._MKBEventsControllerImplementation();
    v22[3] = v10;
    v22[4] = &off_1008EE8C0;
    v22[0] = v9;
    v11 = type metadata accessor for _MobileKeybagStateProvider();
    v12 = swift_allocObject();
    v13 = sub_10000C9DC(v22, v10);
    v14 = *(*(v10 - 8) + 64);
    __chkstk_darwin(v13);
    v16 = (&v22[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = sub_100347AE8(*v16, v12);
    sub_10000607C(v22);
    sub_10000607C(&v23);
    a2[3] = v11;
    a2[4] = &off_1008EE8E8;
    *a2 = v18;
    return sub_10000607C(v25);
  }

  else
  {
    sub_1000050A4(&v23, &qword_100936E80, qword_10079F000);
    if (qword_100935EF0 != -1)
    {
      swift_once();
    }

    v20 = qword_100942628;
    a2[3] = type metadata accessor for _MobileKeybagStateProvider();
    a2[4] = &off_1008EE8E8;
    *a2 = v20;
  }
}

uint64_t sub_1003469B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100942610);
  v1 = sub_100006654(v0, qword_100942610);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100346A80(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0x64656B636F6CLL;
    if (a1 != 2)
    {
      v6 = 0x676E696B636F6CLL;
    }

    if (a1)
    {
      v5 = 0x64656B636F6C6E75;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5065636172476E69;
    v2 = 0x7472657373416E69;
    if (a1 != 7)
    {
      v2 = 0x6C6E556F69426E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x64656C6261736964;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100346BE8()
{
  v0 = type metadata accessor for _MobileKeybagStateProvider._MKBEventsControllerImplementation();
  v10[3] = v0;
  v10[4] = &off_1008EE8C0;
  v10[0] = swift_initStaticObject();
  type metadata accessor for _MobileKeybagStateProvider();
  v1 = swift_allocObject();
  v2 = sub_10000C9DC(v10, v0);
  v3 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = sub_100347AE8(*v5, v1);
  result = sub_10000607C(v10);
  qword_100942628 = v7;
  return result;
}

uint64_t sub_100346D08()
{
  if (*(v0 + 72))
  {
    MKBEventsUnregister();
  }

  sub_10000607C((v0 + 16));

  v1 = *(v0 + 80);

  v2 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_100346D90()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = os_transaction_create();
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100942610);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: com.apple.remindd._MobileKeybagStateProvider.eventQueue_hasUnlockedSinceBoot.didSet}", v18, 2u);
  }

  v19 = *(v0 + 56);
  *v14 = v19;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v19)
  {
    v22 = *(v0 + 97);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "_MobileKeybagStateProvider: Has unlocked since boot: %{BOOL}d", v25, 8u);
    }

    v26 = *(v1 + 64);
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = v22;
    *(v27 + 32) = v31;
    aBlock[4] = sub_100347FB4;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008EEA10;
    v28 = _Block_copy(aBlock);
    v29 = v26;

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_10005464C(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v30 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    swift_unknownObjectRelease();

    (*(v34 + 8))(v5, v30);
    (*(v32 + 8))(v9, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10034729C(uint64_t a1)
{
  v1 = *(a1 + 88);

  CurrentValueSubject.send(_:)();

  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100942610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "os_transaction RELEASE {name: com.apple.remindd._MobileKeybagStateProvider.eventQueue_hasUnlockedSinceBoot.didSet}", v5, 2u);
  }
}

uint64_t sub_10034739C()
{
  v1 = v0;
  v2 = os_transaction_create();
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100942610);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "os_transaction INIT {name: com.apple.remindd._MobileKeybagStateProvider.updateInternalStates}", v6, 2u);
  }

  v7 = *(v1 + 56);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100347920;
  *(v9 + 24) = v8;
  v14[4] = sub_1000529DC;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10000F160;
  v14[3] = &unk_1008EE970;
  v10 = _Block_copy(v14);
  v11 = v7;

  swift_unknownObjectRetain();

  dispatch_sync(v11, v10);

  swift_unknownObjectRelease();
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1003475D8(uint64_t a1)
{
  if (sub_100347EB4() != *(a1 + 97))
  {
    *(a1 + 97) = sub_100347EB4();
    sub_100346D90();
  }

  if (*(a1 + 96) != sub_100053D2C())
  {
    v2 = sub_100053D2C();
    v3 = *(a1 + 96);
    *(a1 + 96) = v2;
    sub_100053D84(v3);
  }

  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100942610);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "os_transaction RELEASE {name: com.apple.remindd._MobileKeybagStateProvider.updateInternalStates}", v6, 2u);
  }
}

uint64_t sub_10034770C()
{
  sub_10039013C(&off_1008E2C00);
  sub_1000050A4(&unk_1008E2C20, &unk_100942948, &qword_1007A2FE0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  qword_100942630 = isa;
  return result;
}

unint64_t sub_1003477C0()
{
  result = qword_100942928;
  if (!qword_100942928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942928);
  }

  return result;
}

uint64_t sub_100347814()
{
  v2 = *(*v0 + 88);
  sub_1000F5104(&qword_100942930, &qword_1007A2FD8);
  sub_10000CB48(&unk_100942938, &qword_100942930, &qword_1007A2FD8);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_1003478A4()
{
  v1 = *(*v0 + 56);
  OS_dispatch_queue.sync<A>(execute:)();

  return v3;
}

uint64_t sub_100347928(uint64_t a1, uint64_t a2)
{
  v14[3] = type metadata accessor for _MobileKeybagStateProvider._MKBEventsControllerImplementation();
  v14[4] = &off_1008EE8C0;
  v14[0] = a2;

  sub_10034739C();
  v4 = *(a1 + 56);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_10000A87C(v14, v13);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_100054B6C(v13, v6 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100053D20;
  *(v7 + 24) = v6;
  v12[4] = sub_100053A94;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100053A1C;
  v12[3] = &unk_1008EEAB0;
  v8 = _Block_copy(v12);
  v9 = v4;

  v10 = MKBEventsRegister();
  _Block_release(v8);

  *(a1 + 72) = v10;
  return sub_10000607C(v14);
}

uint64_t sub_100347AE8(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v26);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v29 = type metadata accessor for _MobileKeybagStateProvider._MKBEventsControllerImplementation();
  v30 = &off_1008EE8C0;
  v28[0] = a1;
  v24[0] = sub_100007F54();
  v24[3] = "kedSinceBoot.didSet";
  static DispatchQoS.userInteractive.getter();
  v27 = _swiftEmptyArrayStorage;
  v24[2] = sub_10005464C(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v12 = v3 + 104;
  v13 = *(v3 + 104);
  v24[1] = v12;
  v13(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *(v25 + 56) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.userInteractive.getter();
  v27 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v13(v6, v11, v26);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v25;
  *(v25 + 64) = v14;
  *(v15 + 72) = 0;
  v16 = sub_1000F5104(&qword_100942958, qword_1007A2FE8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v15 + 80) = PassthroughSubject.init()();
  LOBYTE(v27) = 0;
  v19 = sub_1000F5104(&qword_100942930, &qword_1007A2FD8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v15 + 88) = CurrentValueSubject.init(_:)();
  *(v15 + 96) = 4;
  sub_10000A87C(v28, v15 + 16);
  v22 = sub_10000F61C(v28, v29);
  sub_100347928(v15, *v22);
  sub_10000607C(v28);
  return v15;
}

BOOL sub_100347EB4()
{
  v0 = MKBDeviceUnlockedSinceBoot();
  if ((v0 & 0x80000000) == 0)
  {
    return v0 == 1;
  }

  v2 = v0;
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100942610);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "_MobileKeybagStateProvider: MKBDeviceUnlockedSinceBoot() unexpectedly returned %d. Assuming device is before first unlock.", v6, 8u);
  }

  return 0;
}

void sub_100347FB4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_10034729C(*(v0 + 16));
}

void sub_100347FD4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sharedToMeReminderCKIdentifier];
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

void sub_10034803C(uint64_t *a1, void **a2)
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
  [v2 setSharedToMeReminderCKIdentifier:?];
}

uint64_t sub_1003480AC(void *a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  v31 = _swiftEmptyArrayStorage;
  if (a2 <= 1u)
  {
    if (!a2)
    {
      sub_1000F5104(&qword_10093D0F8, &unk_1007A30A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      KeyPath = swift_getKeyPath();
      v10 = sub_10004FAEC(a1);
      v11 = sub_1003E9F6C(KeyPath, v10);

      *(inited + 32) = v11;
      sub_10027230C(inited);
LABEL_14:
      sub_10001035C(0);
      goto LABEL_15;
    }

    v13 = swift_getKeyPath();
    sub_1003925F4(v13, 1);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v31[2] >= v31[3] >> 1)
    {
      v30 = v31[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    goto LABEL_10;
  }

  if (a2 == 2)
  {
    v12 = swift_getKeyPath();
    sub_1003925F4(v12, 0);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v31[2] >= v31[3] >> 1)
    {
      v30 = v31[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

LABEL_10:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14 = swift_getKeyPath();
    v15 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    sub_100392608(v14, v7);
LABEL_11:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v31[2] >= v31[3] >> 1)
    {
      v27 = v31[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_14;
  }

  if (!a1)
  {
    v25 = swift_getKeyPath();
    sub_1003F7200(v25);
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_14;
  }

  v18 = swift_getKeyPath();
  sub_1003EF184(v18);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v31[2] >= v31[3] >> 1)
  {
    v28 = v31[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000F5104(&qword_10093D0F8, &unk_1007A30A0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_100791340;
  v20 = swift_getKeyPath();
  v21 = sub_1003F7200(v20);

  *(v19 + 32) = v21;
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = sub_100348E50(v22, v23, &unk_10093D020, qword_1007A3230);

  *(v19 + 40) = v24;
  sub_100025060(v19);
LABEL_15:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v31[2] >= v31[3] >> 1)
  {
    v26 = v31[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0(v31);
}

void *sub_10034851C(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - v5;
  v41 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_30:
    v30 = v4;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v30;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v32 = v4;
      v8 = 0;
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      v37 = a1 & 0xC000000000000001;
      v35 = &unk_1007A3090;
      v9 = _swiftEmptyDictionarySingleton;
      v33 = xmmword_1007953F0;
      while (1)
      {
        if (v37)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v36 + 16))
          {
            goto LABEL_27;
          }

          v4 = *(a1 + 8 * v8 + 32);
        }

        v11 = v4;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v13 = String._bridgeToObjectiveC()();
        v14 = [v11 valueForKey:{v13, v32}];

        if (v14)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v38 = 0u;
          v39 = 0u;
        }

        v40[0] = v38;
        v40[1] = v39;
        if (*(&v39 + 1))
        {
          v15 = type metadata accessor for UUID();
          v16 = swift_dynamicCast();
          (*(*(v15 - 8) + 56))(v6, v16 ^ 1u, 1, v15);
        }

        else
        {
          sub_1000050A4(v40, &qword_100939ED0, &qword_100791B10);
          v17 = type metadata accessor for UUID();
          (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
        }

        v19 = sub_1003645D8(v6);
        v20 = v9[2];
        v21 = (v18 & 1) == 0;
        v4 = (v20 + v21);
        if (__OFADD__(v20, v21))
        {
          goto LABEL_28;
        }

        v22 = v18;
        if (v9[3] < v4)
        {
          sub_10036E0B0(v4, 1);
          v9 = v41;
          v23 = sub_1003645D8(v6);
          if ((v22 & 1) != (v24 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v19 = v23;
        }

        if (v22)
        {
          sub_1000050A4(v6, &unk_100939D90, "8\n\r");
          v10 = (v9[7] + 8 * v19);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v4 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v25 = swift_allocObject();
          *(v25 + 16) = v33;
          *(v25 + 32) = v11;
          v9[(v19 >> 6) + 8] |= 1 << v19;
          v4 = sub_100100FB4(v6, v9[6] + *(v34 + 72) * v19);
          *(v9[7] + 8 * v19) = v25;
          v26 = v9[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_29;
          }

          v9[2] = v28;
        }

        ++v8;
        if (v12 == v7)
        {
          return v9;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_100348948(uint64_t a1, void *a2)
{
  *&v35 = _swiftEmptyArrayStorage;
  sub_1000F5104(&qword_10093D0F8, &unk_1007A30A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  KeyPath = swift_getKeyPath();
  v5 = sub_10004FAEC(a1);
  v6 = sub_1003E9F6C(KeyPath, v5);

  *(inited + 32) = v6;
  sub_10027230C(inited);
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v35 + 16) >= *(v35 + 24) >> 1)
  {
    v31 = *(v35 + 16);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = sub_10000C2B0(v35);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  [v8 setAffectedStores:0];
  [v8 setPredicate:v7];
  [v8 setResultType:2];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_100796900;
  *(v10 + 32) = swift_getKeyPath();
  *(v10 + 40) = swift_getKeyPath();
  v37 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 2, 0);
  v11 = _swiftEmptyArrayStorage;
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v12 = *(v10 + 32);
  }

  v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v14)
  {
LABEL_22:
    _StringGuts.grow(_:)(46);
    v32._object = 0x80000001007EC120;
    v32._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v32);
    sub_1000F5104(&unk_10093D020, qword_1007A3230);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = v13;
  v16 = v14;
  v36 = &type metadata for String;

  *&v35 = v15;
  *(&v35 + 1) = v16;
  v18 = _swiftEmptyArrayStorage[2];
  v17 = _swiftEmptyArrayStorage[3];
  if (v18 >= v17 >> 1)
  {
    sub_100010D04((v17 > 1), v18 + 1, 1);
    v11 = v37;
  }

  v11[2] = v18 + 1;
  sub_100005EE0(&v35, &v11[4 * v18 + 4]);
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = *(v10 + 40);

LABEL_14:
  v20 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = v20;
  v23 = v21;
  v36 = &type metadata for String;

  *&v35 = v22;
  *(&v35 + 1) = v23;
  v37 = v11;
  v25 = v11[2];
  v24 = v11[3];
  if (v25 >= v24 >> 1)
  {
    sub_100010D04((v24 > 1), v25 + 1, 1);
    v11 = v37;
  }

  v11[2] = v25 + 1;
  sub_100005EE0(&v35, &v11[4 * v25 + 4]);
  swift_setDeallocating();
  v26 = *(v10 + 16);
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v28 = a2;
  v29 = NSManagedObjectContext.fetch<A>(_:)();
  if (v34)
  {
  }

  else
  {
    v28 = sub_10034851C(v29);
  }

  return v28;
}

uint64_t sub_100348E50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100791340;

  v7 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v7;
  v10 = v8;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;

  v11 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v12)
  {
    v13 = v11;
    v14 = v12;

    *(v6 + 88) = &type metadata for String;
    *(v6 + 64) = v13;
    *(v6 + 72) = v14;
    v15 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = [objc_opt_self() predicateWithFormat:v15 argumentArray:isa];

    return v17;
  }

  else
  {
LABEL_4:
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(a3, a4);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100349144(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong *a4];
  }
}

uint64_t sub_1003491B8(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940F50, &qword_1007A0930);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = *(a1 + 16);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v8 = *(updated - 8);
  v9 = v8;
  if (v6)
  {
    sub_1002CDE74(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5);
    (*(v9 + 56))(v5, 0, 1, updated);
  }

  else
  {
    (*(v8 + 56))(v5, 1, 1, updated);
  }

  Optional.tryUnwrap(_:file:line:)();
  return sub_1002CE63C(v5);
}

void sub_100349330(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v87 = a1;
  v5 = type metadata accessor for RDUserNotificationCategory();
  v6 = *(v5 - 1);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v10 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v84 = v72 - v14;
  __chkstk_darwin(v15);
  v17 = v72 - v16;
  __chkstk_darwin(v18);
  v20 = v72 - v19;
  if (a2 >> 62)
  {
    v83 = _CocoaArrayWrapper.endIndex.getter();
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v83 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v83;
  }

  v80 = v9;
  v81 = v6;
  v82 = v12;
  v85 = v21;
  if (v21)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v22 = *(a2 + 32);
    }

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v88 = v23;
  sub_1000F5104(&unk_100943E10, &qword_1007A0928);
  Optional.tryUnwrap(_:file:line:)();
  if (v2)
  {

    return;
  }

  v78 = v5;

  v79 = v90;
  v24 = [v90 title];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v88 = v26;
  v89 = v28;
  v29 = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  Optional.tryUnwrap(_:file:line:)();
  v77 = v29;

  v31 = v90;
  v30 = v91;
  v32 = v87;
  sub_1003491B8(v87);
  v75 = v31;
  v76 = v30;
  sub_100349FB4(v20);
  v3 = 0;
  v34 = v33;
  sub_1002CDED8(v20);
  if (v34)
  {
    v35 = [v34 shortName];

    if (v35)
    {
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v32 = v87;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  sub_1003491B8(v32);
  v73 = v36;
  v74 = v38;
  v39 = [*&v17[*(updated + 28)] list];
  v92 = v39;
  v40 = sub_1000F5104(&unk_100943240, &qword_10079A3B8);
  Optional.tryUnwrap(_:file:line:)();
  v72[0] = "tle from reminder";
  v72[1] = v40;

  v41 = v88;
  sub_1002CDED8(v17);
  v42 = [v41 name];

  if (v42)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = v73;
  v88 = v43;
  v89 = v45;
  Optional.tryUnwrap(_:file:line:)();
  v12 = v46;

  v5 = v90;
  v17 = v91;
  v9 = v84;
  sub_1003491B8(v87);
  v6 = [*&v9[*(updated + 28)] list];
  v88 = v6;
  Optional.tryUnwrap(_:file:line:)();
LABEL_27:

  v47 = v90;
  sub_1002CDED8(v9);
  v48 = [v47 shouldCategorizeGroceryItems];

  v49 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_10034A228(v12, v74, v75, v76, v83, v5, v17, v48);
  if (v3)
  {
  }

  else
  {
    v73 = v5;
    v75 = v17;

    v50 = String._bridgeToObjectiveC()();

    [v49 setBody:v50];

    v52 = 0;
    v77 = _swiftEmptyArrayStorage;
    v90 = _swiftEmptyArrayStorage;
    v84 = (a2 & 0xC000000000000001);
    while (v85 != v52)
    {
      if (v84)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v52 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v53 = *(a2 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v56 = [v53 remObjectID];

      ++v52;
      if (v56)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v77 = v90;
        v52 = v55;
      }
    }

    v51.value._rawValue = v77;
    UNMutableNotificationContent.setReminderIDs(_:)(v51);

    sub_1003491B8(v87);
    v57 = [*&v82[*(updated + 28)] list];
    v88 = v57;
    Optional.tryUnwrap(_:file:line:)();

    v58 = v90;
    sub_1002CDED8(v82);
    v59 = [v58 remObjectID];

    UNMutableNotificationContent.setListID(_:)();
    v61 = v80;
    v60 = v81;
    v62 = &enum case for RDUserNotificationCategory.sharedListSingleReminderCompletedNotification(_:);
    if (v83 != 1)
    {
      v62 = &enum case for RDUserNotificationCategory.sharedListMultipleRemindersCompletedNotification(_:);
    }

    v63 = v78;
    (v81[13])(v80, *v62, v78);
    v64 = RDUserNotificationCategory.rawValue.getter();
    v66 = v65;
    (v60[1])(v61, v63);
    v67 = String._bridgeToObjectiveC()();
    [v49 setCategoryIdentifier:v67];

    v90 = v64;
    v91 = v66;

    v68._countAndFlagsBits = 45;
    v68._object = 0xE100000000000000;
    String.append(_:)(v68);

    v69._countAndFlagsBits = v73;
    v69._object = v75;
    String.append(_:)(v69);

    v70 = String._bridgeToObjectiveC()();

    [v49 setThreadIdentifier:v70];

    v71 = [objc_opt_self() soundWithAlertType:11];
    [v49 setSound:v71];
  }
}

void *sub_100349E00(void *a1)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v3 = *(updated - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(updated);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;

  sub_1002CC8F4(&v15);
  v7 = v15;
  v8 = v15[2];
  if (v8)
  {
    v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1002CDE74(v9, v6);
      v11 = *&v6[*(updated + 28)];
      sub_1002CDED8(v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = v15[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return a1;
}

void sub_100349FB4(uint64_t a1)
{
  sub_100337974();
  if (v3)
  {
    v4 = v3;
    sub_100337E80();
    if (v1)
    {
    }

    else
    {
      v6 = v5;
      v7 = [v5 remObjectID];

      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      Optional.tryUnwrap(_:file:line:)();

      v8 = [*(a1 + *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) + 28)) list];
      sub_1000F5104(&unk_100943240, &qword_10079A3B8);
      Optional.tryUnwrap(_:file:line:)();

      v9 = [v7 remObjectID];
      Optional.tryUnwrap(_:file:line:)();

      v10 = v12;
      v11 = v12;
      sub_10047B110(v4);
    }
  }
}

uint64_t sub_10034A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a5 == 1)
    {

      v14 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100791320;
      *(v15 + 56) = &type metadata for String;
      v16 = sub_100006600();
      *(v15 + 32) = a1;
      *(v15 + 40) = a2;
      *(v15 + 96) = &type metadata for String;
      *(v15 + 104) = v16;
      *(v15 + 64) = v16;
      *(v15 + 72) = a3;
      *(v15 + 80) = a4;
      *(v15 + 136) = &type metadata for String;
      *(v15 + 144) = v16;
      *(v15 + 112) = a6;
      *(v15 + 120) = a7;

      v17 = static String.localizedStringWithFormat(_:_:)();

      return v17;
    }

    if (a8)
    {
      if (a5 >= 2)
      {
        goto LABEL_13;
      }
    }

    else if (a5 >= 2)
    {
LABEL_13:

      v24 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100791320;
      *(v25 + 56) = &type metadata for String;
      v26 = sub_100006600();
      *(v25 + 32) = a1;
      *(v25 + 40) = a2;
      *(v25 + 96) = &type metadata for Int;
      *(v25 + 104) = &protocol witness table for Int;
      *(v25 + 64) = v26;
      *(v25 + 72) = a5;
      *(v25 + 136) = &type metadata for String;
      *(v25 + 144) = v26;
      *(v25 + 112) = a6;
      *(v25 + 120) = a7;

      v22 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_16;
    }

LABEL_15:
    v27 = objc_opt_self();
    _StringGuts.grow(_:)(84);
    v28._object = 0x80000001007F3BC0;
    v28._countAndFlagsBits = 0xD000000000000052;
    String.append(_:)(v28);
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30 = String._bridgeToObjectiveC()();

    [v27 internalErrorWithDebugDescription:v30];

    return swift_willThrow();
  }

  if (a5 == 1)
  {
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
    *(v20 + 72) = a6;
    *(v20 + 80) = a7;

    v22 = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    if (a8)
    {
      if (a5 < 2)
      {
        goto LABEL_15;
      }
    }

    else if (a5 < 2)
    {
      goto LABEL_15;
    }

    v31 = _REMGetLocalizedString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100791340;
    *(v32 + 56) = &type metadata for Int;
    *(v32 + 64) = &protocol witness table for Int;
    *(v32 + 32) = a5;
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = sub_100006600();
    *(v32 + 72) = a6;
    *(v32 + 80) = a7;

    v22 = static String.localizedStringWithFormat(_:_:)();
  }

LABEL_16:

  return v22;
}

uint64_t sub_10034A6CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100942990);
  v1 = sub_100006654(v0, qword_100942990);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

size_t sub_10034A794(unint64_t a1, int a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v33 = _swiftEmptyArrayStorage;
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      KeyPath = swift_getKeyPath();
      v13 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
      sub_1003912E4(KeyPath, v9);
    }

    else
    {
      v26 = swift_getKeyPath();
      sub_1003EB734(v26);
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v33[2] >= v33[3] >> 1)
    {
      v28 = v33[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_20:
    sub_10001035C(0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v33[2] >= v33[3] >> 1)
    {
      v27 = v33[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return sub_10000C2B0(v33);
  }

  v15 = swift_getKeyPath();
  if (a1 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = _swiftEmptyArrayStorage;
  if (!v16)
  {
LABEL_24:
    sub_1003EB710(v15, v17);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v33[2] >= v33[3] >> 1)
    {
      v29 = v33[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((a2 & 1) == 0)
    {
      return sub_10000C2B0(v33);
    }

    goto LABEL_20;
  }

  v30 = v15;
  v31 = a2;
  v32 = _swiftEmptyArrayStorage;
  result = sub_100253218(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v17 = v32;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = [v20 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
      v32 = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_100253218(v24 > 1, v25 + 1, 1);
        v17 = v32;
      }

      ++v19;
      v17[2] = v25 + 1;
      sub_100100FB4(v11, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25);
    }

    while (v16 != v19);
    LOBYTE(a2) = v31;
    v15 = v30;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_10034ABB4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 sourceListIDURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10034AC58(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  sub_1001E0978(a1, &v14 - v6);
  v8 = *a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setSourceListIDURL:v12];
}

uint64_t sub_10034AD84()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100974D58 = v0;
  return result;
}

unint64_t sub_10034AE0C(void *a1, uint64_t a2, Class isa, Class a4)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007953F0;
  *(v8 + 32) = a1;
  v24 = a1;
  v9 = sub_10034A794(v8, 1);
  type metadata accessor for REMCDTemplate();
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  if (isa)
  {
    sub_10003450C(isa);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v10 setPropertiesToFetch:isa];

  if (a4)
  {
    a4 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v10 setRelationshipKeyPathsForPrefetching:a4];

  v12 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v4)
  {
    v14 = v12 >> 62;
    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v15 = *(v12 + 32);
        }

        v8 = v15;
        if (v14)
        {
          if (_CocoaArrayWrapper.endIndex.getter() < 2)
          {
            goto LABEL_14;
          }
        }

        else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
        {
LABEL_14:

          return v8;
        }

        if (qword_100935F00 == -1)
        {
LABEL_17:
          v16 = type metadata accessor for Logger();
          sub_100006654(v16, qword_100942990);
          v17 = v24;

          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            *v20 = 138412546;
            *(v20 + 4) = v17;
            *v21 = v17;
            *(v20 + 12) = 2048;
            if (v14)
            {
              v22 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v23 = v17;

            *(v20 + 14) = v22;

            _os_log_impl(&_mh_execute_header, v18, v19, "Found multiple instances of REMCDTemplate with identical objectID {objectID: %@, matches: %ld}", v20, 0x16u);
            sub_100039860(v21);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          return v8;
        }

LABEL_27:
        swift_once();
        goto LABEL_17;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    [objc_opt_self() noSuchObjectErrorWithObjectID:v24];
    swift_willThrow();
  }

  return v8;
}

void *sub_10034B1FC(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v24 = v2;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 account];
      if (!v10)
      {
        v15 = objc_opt_self();
        _StringGuts.grow(_:)(36);

        v16 = [v9 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20._countAndFlagsBits = v17;
        v20._object = v19;
        String.append(_:)(v20);

        v21._countAndFlagsBits = 125;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);
        v22 = String._bridgeToObjectiveC()();

        [v15 internalErrorWithDebugDescription:v22];

        swift_willThrow();
      }

      v2 = v10;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v6;
      if (v7 == i)
      {
        v2 = v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_14:
  if (qword_100935F00 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100006654(v12, qword_100942990);
  __chkstk_darwin(v13);
  sub_1000F5104(&qword_10094F630, qword_1007A3430);
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  sub_100308CDC();
  v14 = Sequence.map<A>(skippingError:_:)();
  if (v2)
  {

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v23 = v14;

    return v23;
  }
}

void *sub_10034B568()
{
  sub_100026EF4(0, 5, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  v2 = 0x80000001007EC560;
  v3 = 0x80000001007E8BF0;
  v4 = 0x80000001007E8E00;
  v5 = 0x80000001007E8DE0;
  v6 = 0x80000001007E8DC0;
  v7 = 0x80000001007E8BC0;
  v8 = 0x80000001007E8D90;
  v9 = 0x80000001007EA730;
  v10 = 0x80000001007E8D70;
  v11 = 0x80000001007F2430;
  do
  {
    v12 = 0xEB000000006D656CLL;
    v13 = 0x626D456567646162;
    switch(*(&off_1008DD850 + v0 + 32))
    {
      case 1:
        v12 = 0xE500000000000000;
        v13 = 0x726F6C6F63;
        break;
      case 2:
        v13 = 0xD000000000000023;
        v12 = v11;
        break;
      case 3:
        v12 = 0xEA00000000007265;
        v13 = 0x696669746E656469;
        break;
      case 4:
        v13 = 0xD000000000000010;
        v12 = v10;
        break;
      case 5:
        v13 = 0xD00000000000001ALL;
        v12 = v9;
        break;
      case 6:
        v13 = 0xD000000000000025;
        v12 = v8;
        break;
      case 7:
        v12 = 0xE400000000000000;
        v13 = 1701667182;
        break;
      case 8:
        v13 = 0xD000000000000011;
        v12 = v7;
        break;
      case 9:
        v13 = 0xD00000000000001BLL;
        v12 = v6;
        break;
      case 0xA:
        v13 = 0xD000000000000016;
        v12 = v5;
        break;
      case 0xB:
        v13 = 0xD00000000000001ALL;
        v12 = v4;
        break;
      case 0xC:
        v13 = 0xD000000000000018;
        v12 = v3;
        break;
      case 0xD:
        v13 = 0xD00000000000001ELL;
        v12 = v2;
        break;
      case 0xE:
        v13 = 0x53676E6974726F73;
        v12 = 0xEC000000656C7974;
        break;
      default:
        break;
    }

    v27 = result;
    v15 = result[2];
    v14 = result[3];
    if (v15 >= v14 >> 1)
    {
      v18 = v10;
      v19 = v9;
      v25 = v3;
      v26 = v2;
      v23 = v5;
      v24 = v4;
      v21 = v7;
      v22 = v6;
      v20 = v8;
      v17 = v11;
      sub_100026EF4((v14 > 1), v15 + 1, 1);
      v11 = v17;
      v10 = v18;
      v9 = v19;
      v8 = v20;
      v7 = v21;
      v6 = v22;
      v5 = v23;
      v4 = v24;
      v3 = v25;
      v2 = v26;
      result = v27;
    }

    ++v0;
    result[2] = v15 + 1;
    v16 = &result[2 * v15];
    v16[4] = v13;
    v16[5] = v12;
  }

  while (v0 != 5);
  return result;
}

void *sub_10034B870()
{
  sub_100026EF4(0, 15, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  v2 = 0x80000001007EC560;
  v3 = 0x80000001007E8BF0;
  v4 = 0x80000001007E8E00;
  v5 = 0x80000001007E8DE0;
  v6 = 0x80000001007E8DC0;
  v7 = 0x80000001007E8BC0;
  v8 = 0x80000001007E8D90;
  v9 = 0x80000001007EA730;
  v10 = 0x80000001007E8D70;
  v11 = 0x80000001007F2430;
  do
  {
    v12 = 0xEB000000006D656CLL;
    v13 = 0x626D456567646162;
    switch(*(&off_1008E2C38 + v0 + 32))
    {
      case 1:
        v12 = 0xE500000000000000;
        v13 = 0x726F6C6F63;
        break;
      case 2:
        v13 = 0xD000000000000023;
        v12 = v11;
        break;
      case 3:
        v12 = 0xEA00000000007265;
        v13 = 0x696669746E656469;
        break;
      case 4:
        v13 = 0xD000000000000010;
        v12 = v10;
        break;
      case 5:
        v13 = 0xD00000000000001ALL;
        v12 = v9;
        break;
      case 6:
        v13 = 0xD000000000000025;
        v12 = v8;
        break;
      case 7:
        v12 = 0xE400000000000000;
        v13 = 1701667182;
        break;
      case 8:
        v13 = 0xD000000000000011;
        v12 = v7;
        break;
      case 9:
        v13 = 0xD00000000000001BLL;
        v12 = v6;
        break;
      case 0xA:
        v13 = 0xD000000000000016;
        v12 = v5;
        break;
      case 0xB:
        v13 = 0xD00000000000001ALL;
        v12 = v4;
        break;
      case 0xC:
        v13 = 0xD000000000000018;
        v12 = v3;
        break;
      case 0xD:
        v13 = 0xD00000000000001ELL;
        v12 = v2;
        break;
      case 0xE:
        v13 = 0x53676E6974726F73;
        v12 = 0xEC000000656C7974;
        break;
      default:
        break;
    }

    v27 = result;
    v15 = result[2];
    v14 = result[3];
    if (v15 >= v14 >> 1)
    {
      v18 = v10;
      v19 = v9;
      v25 = v3;
      v26 = v2;
      v23 = v5;
      v24 = v4;
      v21 = v7;
      v22 = v6;
      v20 = v8;
      v17 = v11;
      sub_100026EF4((v14 > 1), v15 + 1, 1);
      v11 = v17;
      v10 = v18;
      v9 = v19;
      v8 = v20;
      v7 = v21;
      v6 = v22;
      v5 = v23;
      v4 = v24;
      v3 = v25;
      v2 = v26;
      result = v27;
    }

    ++v0;
    result[2] = v15 + 1;
    v16 = &result[2 * v15];
    v16[4] = v13;
    v16[5] = v12;
  }

  while (v0 != 15);
  return result;
}

uint64_t sub_10034BB78(void *a1, void *a2)
{
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = (&v32 - v17);
  v19 = &v32 + *(v16 + 36) - v17;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  *v18 = a1;
  v18[1] = a2;
  v18[2] = 0x4024000000000000;
  type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  sub_10034BF34(v18, v15);
  v21 = type metadata accessor for RDSharedInlineTagAutoConvertEngine(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_cancellables) = &_swiftEmptySetSingleton;
  v25 = OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_babysitTarget;
  v26 = objc_allocWithZone(type metadata accessor for RDSharedInlineTagAutoConvertEngine.BabysitTarget());
  v27 = a1;
  a2;

  *(v24 + v25) = [v26 init];
  sub_10034BF98(v15, v24 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration);
  v28 = (v24 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_handler);
  *v28 = v20;
  v28[1] = &off_1008E8780;
  aBlock[4] = sub_10034BFFC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EEBE8;
  v29 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v30 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v36 + 8))(v6, v30);
  (*(v34 + 8))(v10, v35);
  sub_10023D420(v18);

  return v24;
}

uint64_t sub_10034BF34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034BF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10034C000()
{
  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  result = [v1 metadata];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v7 + 16))
  {

    goto LABEL_9;
  }

  v8 = sub_100005F4C(v2, v4);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  sub_100005EF0(*(v7 + 56) + 32 * v8, v12);

  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

void sub_10034C130(uint64_t a1, void **a2)
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

  [v8 setEntityIdentifier:isa];
}

id sub_10034C26C(id a1, unint64_t a2)
{
  v5 = [swift_getObjCClassFromMetadata() entity];
  v6 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v5];

  v7 = sub_100016788(0, a2, 128);
  [v6 setPredicate:v7];

  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *&v27 = 0x656C706D6F437369;
  *(&v27 + 1) = 0xEB00000000646574;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 setPropertiesToUpdate:isa];

  [v6 setResultType:1];
  v25 = 0;
  v10 = [a1 executeRequest:v6 error:&v25];
  v11 = v25;
  if (v10)
  {
    v12 = v10;
    *(&v28 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
    *&v27 = v12;
    sub_1000060C8(0, &qword_1009465A0, NSBatchUpdateResult_ptr);
    v13 = v11;
    throwingCast<A>(_:as:failureMessage:)();
    if (v2)
    {

      sub_10000607C(&v27);
    }

    else
    {
      sub_10000607C(&v27);
      v14 = v26;
      if ([v26 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v26, &v27);
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v15 = sub_1000F5104(&qword_100937028, &qword_100791C10);
      throwingCast<A>(_:as:failureMessage:)();
      sub_1000050A4(&v27, &qword_100939ED0, &qword_100791B10);
      v17 = v25;
      v18 = objc_opt_self();
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_100791300;
      *&v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v27 + 1) = v20;
      AnyHashable.init<A>(_:)();
      *(v19 + 96) = v15;
      *(v19 + 72) = v17;

      sub_10038ED74(v19);
      swift_setDeallocating();
      sub_1000050A4(v19 + 32, &unk_100946590, &qword_100796FF0);
      v21 = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1007953F0;
      *(v22 + 32) = a1;
      sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
      v23 = a1;
      v24 = Array._bridgeToObjectiveC()().super.isa;

      [v18 mergeChangesFromRemoteContextSave:v21 intoContexts:v24];

      if (v17 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }
  }

  else
  {
    a1 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_10034C798()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v0 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 40) = result;
  qword_1009429A8 = v0;
  return result;
}

void sub_10034C844(uint64_t a1, void **a2)
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

  [v8 setCreationDate:isa];
}

unint64_t sub_10034C9A4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = sub_100016788(0, a2, 128);
  type metadata accessor for REMCDOperationQueueItem();
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];

  [v5 setFetchLimit:1];
  if (qword_100935F10 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v5 setSortDescriptors:isa];

  [v5 setReturnsObjectsAsFaults:0];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  v10 = result;
  v11 = _CocoaArrayWrapper.endIndex.getter();
  result = v10;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(result + 32);
LABEL_10:
    v3 = v9;

    return v3;
  }

  __break(1u);
  return result;
}

id sub_10034CBCC(id a1, unint64_t a2)
{
  v4 = sub_100016788(1, a2, 128);
  type metadata accessor for REMCDOperationQueueItem();
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];
  *(&v28 + 1) = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
  *&v27 = v5;
  v7 = v5;
  throwingCast<A>(_:as:failureMessage:)();
  if (v2)
  {

    sub_10000607C(&v27);
  }

  else
  {

    sub_10000607C(&v27);
    v9 = v26;
    v10 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v26];
    [v10 setResultType:1];
    v25 = 0;
    v11 = [a1 executeRequest:v10 error:&v25];
    v12 = v25;
    if (v11)
    {
      v13 = v11;
      *(&v28 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
      *&v27 = v13;
      sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
      v14 = v12;
      throwingCast<A>(_:as:failureMessage:)();
      sub_10000607C(&v27);
      v15 = v26;
      if ([v26 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v26, &v27);
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v16 = sub_1000F5104(&qword_100937028, &qword_100791C10);
      throwingCast<A>(_:as:failureMessage:)();
      sub_1000050A4(&v27, &qword_100939ED0, &qword_100791B10);
      v17 = v25;
      v24 = objc_opt_self();
      sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *&v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v27 + 1) = v19;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = v16;
      *(inited + 72) = v17;

      sub_10038ED74(inited);
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007953F0;
      *(v21 + 32) = a1;
      sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
      v22 = a1;
      v23 = Array._bridgeToObjectiveC()().super.isa;

      [v24 mergeChangesFromRemoteContextSave:isa intoContexts:v23];

      if (v17 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      a1 = v25;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return a1;
}

uint64_t sub_10034D0CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009429B0);
  v1 = sub_100006654(v0, qword_1009429B0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10034D194(uint64_t a1)
{
  v3 = [*v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10034D3BC(a1, v4, 128, 0);

  return v5;
}

id sub_10034D238(uint64_t a1)
{
  v3 = [*v1 templateObjectID];
  if (qword_1009360E0 != -1)
  {
    swift_once();
  }

  v4 = sub_10034D3BC(a1, v3, 1, qword_100974E58);

  return v4;
}

NSString sub_10034D2E0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for REMTemplateSectionStorageCDIngestor();
  swift_initStackObject();
  result = sub_1004A5B2C(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

NSString sub_10034D344@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [objc_opt_self() sharedConfiguration];
  [v5 templatePublicLinkTTL];

  result = sub_1001D9968(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_10034D3BC(uint64_t a1, unint64_t a2, char a3, Class a4)
{
  v5 = v4;
  type metadata accessor for REMCDTemplateSection();
  v9 = sub_1004263A0();
  sub_1004267FC();
  v10 = sub_100425A50(a2, a3);
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
    if (qword_100935F18 != -1)
    {
LABEL_24:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = sub_100006654(v17, qword_1009429B0);
    __chkstk_darwin(v18);
    sub_1000F5104(&qword_10094F1D0, &qword_1007A3678);
    sub_1000060C8(0, &qword_1009429C8, REMTemplateSectionStorage_ptr);
    sub_10000CB90(&qword_1009429D0, &qword_10094F1D0, &qword_1007A3678);
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
    v16 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
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
          goto LABEL_23;
        }

        v21 = *(v15 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v24 = [v21 template];

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

    sub_1000F5104(&qword_10093F3B8, &unk_10079DDE0);
    sub_10000CB90(&qword_10093F3C0, &qword_10093F3B8, &unk_10079DDE0);
    sub_10034D990();
    Sequence<>.unique()();

    __chkstk_darwin(v26);
    sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
    Sequence.map<A>(skippingError:_:)();

    v27 = objc_allocWithZone(REMTemplateSectionsDataViewInvocationResult);
    v28 = Array._bridgeToObjectiveC()().super.isa;

    v29 = Array._bridgeToObjectiveC()().super.isa;

    v5 = [v27 initWithTemplateStorages:v28 templateSectionStorages:v29];
  }

  return v5;
}

unint64_t sub_10034D990()
{
  result = qword_10093A968;
  if (!qword_10093A968)
  {
    type metadata accessor for REMCDTemplate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A968);
  }

  return result;
}

char *sub_10034D9F4(uint64_t a1)
{
  v44 = _s9UtilitiesO12SortingStyleOMa();
  v4 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v39 - v8;
  v46 = _s10PredicatesOMa(0);
  v9 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v51);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v53 = &v39 - v16;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v49 = *(Subtasks - 8);
  v50 = Subtasks;
  v18 = *(v49 + 64);
  __chkstk_darwin(Subtasks);
  v52 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v48 = *(v20 - 8);
  v21 = *(v48 + 64);
  __chkstk_darwin(v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_10034DF5C(*(v1 + 24), a1);
  if (!v2)
  {
    v26 = v25;
    v27 = [*(v1 + 40) shouldSaveCompleted];
    v41 = v6;
    v28 = v48;
    v29 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
    if (!v27)
    {
      v29 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
    }

    (*(v48 + 104))(v23, *v29, v20);
    (*(v49 + 104))(v52, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v50);
    v30 = *(v12 + 104);
    v40 = v24;
    v31 = v51;
    v30(v53, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v51);
    v32 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
    v42 = v26;
    *v11 = [v26 objectID];
    v33 = *(v28 + 16);
    v43 = v20;
    v33(&v11[v32], v23, v20);
    swift_storeEnumTagMultiPayload();
    v34 = sub_100043AA8();
    sub_100025314(v11, _s10PredicatesOMa);
    v46 = v12;
    v35 = v45;
    (*(v12 + 16))(v45, v53, v31);
    v36 = v41;
    swift_storeEnumTagMultiPayload();
    v37 = v47;
    sub_1005368D8(v35, v36, v47);
    v11 = sub_100536D54(v40, v34, v37, v23, v52, _swiftEmptyArrayStorage, 0);

    sub_100025314(v37, _s9UtilitiesO12SortingStyleOMa);
    (*(v46 + 8))(v53, v51);
    (*(v49 + 8))(v52, v50);
    (*(v48 + 8))(v23, v43);
  }

  return v11;
}

void sub_10034DF5C(void *a1, uint64_t a2)
{
  v4 = v2;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  v8 = *(v4 + 24);
  *(v7 + 32) = v8;
  v9 = objc_allocWithZone(REMListsDataViewInvocation_fetchByObjectIDs);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v10 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithObjectIDs:isa];

  v13 = sub_1001DE1FC(a2);
  if (!v3)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    v15 = v13;
    v34 = v13;
    if (v14)
    {
      v16 = v14;
      v32 = v15;
      v17 = [v16 accountStorages];
      if (!v17)
      {
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = Array._bridgeToObjectiveC()().super.isa;
      }

      v18 = [v16 listStorages];
      if (!v18)
      {
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = Array._bridgeToObjectiveC()().super.isa;
      }

      v19 = objc_opt_self();
      v20 = *(v4 + 48);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007953F0;
      *(v21 + 32) = a1;
      v33 = a1;
      v22 = Array._bridgeToObjectiveC()().super.isa;

      v23 = [v19 listsFromAccountStorages:v17 listStorages:v18 store:v20 requestedListIDs:v22];

      if (v23)
      {
        sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v24 >> 62)
        {
          goto LABEL_23;
        }

        for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v26 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v27 = *(v24 + 8 * v26 + 32);
            }

            v28 = v27;
            v29 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
            v30 = [v28 objectID];
            v31 = static NSObject.== infix(_:_:)();

            if (v31)
            {

              REMList.codable.getter();
              return;
            }

            ++v26;
            if (v29 == i)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          ;
        }

LABEL_24:
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v33];
      swift_willThrow();
    }

    else
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:a1];
      swift_willThrow();
    }
  }
}

uint64_t sub_10034E3A4(uint64_t a1)
{
  v4 = sub_1001BE2C0(a1, *(v2 + 24));
  if (!v3)
  {
    if (v4 >> 62)
    {
      type metadata accessor for REMCDBaseSection();

      v1 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      v1 = v4;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for REMCDBaseSection();
    }
  }

  return v1;
}

void sub_10034E44C()
{
  v2 = _s10PredicatesOMa_1();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v6 = swift_allocObject();
  v24 = xmmword_1007953F0;
  *(v6 + 16) = xmmword_1007953F0;
  v7 = *(v0 + 24);
  *(v6 + 32) = v7;
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  inited = swift_initStackObject();
  *(inited + 16) = v24;
  *(inited + 32) = swift_getKeyPath();
  v9 = swift_initStackObject();
  *(v9 + 16) = v24;
  *(v9 + 32) = swift_getKeyPath();
  v10 = v7;
  v11 = sub_10001F6F4();
  v12 = sub_100405438(inited, v9, 0, v11);

  swift_setDeallocating();
  v13 = *(v9 + 16);
  swift_arrayDestroy();
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v12 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    sub_100025314(v5, _s10PredicatesOMa_1);

    return;
  }

  v25 = v15;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_100155610();
  v16 = Sequence.elements<A>(ofType:)();

  sub_100025314(v5, _s10PredicatesOMa_1);

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_14:

    [objc_opt_self() noSuchObjectErrorWithObjectID:v10];
    swift_willThrow();
    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  v19 = [v18 membershipsOfRemindersInSectionsAsData];
  if (v19)
  {
    v20 = v19;
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
    static REMJSONRepresentable.fromJSONData(_:)();

    sub_10001BBA0(v21, v23);
  }

  else
  {
  }
}

uint64_t sub_10034E890()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100942B00);
  v1 = sub_100006654(v0, qword_100942B00);
  if (qword_100936488 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10034E958()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27[-v4];
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_storeControllerObservationToken;
  swift_beginAccess();
  sub_10014D7CC(v1 + v11, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10034EE48(v5);
  }

  else
  {
    sub_10035083C(v5, v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    if (qword_100935F20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100942B00);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Removing RDDataStoreApplicationShortcutListProvider observer on store controller", v15, 2u);
    }

    v16 = *(v1 + 48);
    v17 = *(v16 + 40);

    os_unfair_lock_lock(v17);
    __chkstk_darwin(v18);
    *&v27[-16] = v10;
    swift_beginAccess();
    v19 = sub_1002601AC(sub_10014D8A4, &v27[-32]);
    v20 = *(*(v16 + 48) + 16);
    if (v20 < v19)
    {
      __break(1u);
      result = swift_endAccess();
      __break(1u);
      return result;
    }

    sub_100260C60(v19, v20);
    swift_endAccess();
    os_unfair_lock_unlock(v17);

    sub_1003508A4(v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  }

  v21 = OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_preferredDefaultListIDObservationToken;
  v22 = *(v1 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_preferredDefaultListIDObservationToken);
  if (v22)
  {
    [v22 stopObserving];
  }

  v23 = *(v1 + 16);

  sub_1000536E0(v1 + 24);

  v24 = *(v1 + 48);

  sub_10034EE48(v1 + v11);
  v25 = *(v1 + v21);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_10034ECC4()
{
  sub_10034E958();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDDataStoreApplicationShortcutListProvider()
{
  result = qword_100942B60;
  if (!qword_100942B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034ED70()
{
  sub_1001490E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10034EE48(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10034EEB0()
{
  v1 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v51 - v6;
  v8 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v0 + 40);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v0 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_isStarted))
  {
    if (qword_100935F20 == -1)
    {
LABEL_4:
      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_100942B00);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "RDDataStoreApplicationShortcutListProvider must be started at most once", v23, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  *(v0 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_isStarted) = 1;
  v52 = *(v0 + 48);
  v53 = v2;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v24 = v11;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v26 = [swift_getObjCClassFromMetadata() cdEntityName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v18;
  v30 = v29;

  *(inited + 32) = v27;
  v31 = inited + 32;
  *(inited + 40) = v30;
  v32 = sub_10038D894(inited);
  v33 = v24;
  swift_setDeallocating();
  sub_100034610(v31);
  v34 = swift_allocObject();
  swift_weakInit();

  UUID.init()();
  sub_100026CD8(v24, v7, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  *&v7[v1[5]] = v32;
  *&v7[v1[6]] = v28;
  v35 = &v7[v1[7]];
  *v35 = sub_100350834;
  v35[1] = v34;
  v36 = v52;
  v37 = *(v52 + 40);
  v38 = v28;
  v39 = v36;

  os_unfair_lock_lock(v37);
  sub_100026CD8(v7, v54, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v40 = *(v36 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v36 + 48) = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_100365714(0, v40[2] + 1, 1, v40);
    *(v36 + 48) = v40;
  }

  v43 = v40[2];
  v42 = v40[3];
  if (v43 >= v42 >> 1)
  {
    v40 = sub_100365714(v42 > 1, v43 + 1, 1, v40);
  }

  v40[2] = v43 + 1;
  sub_10035083C(v54, v40 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v43, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  *(v39 + 48) = v40;
  swift_endAccess();
  os_unfair_lock_unlock(v37);

  sub_1003508A4(v7, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

  v44 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v44 - 8) + 56))(v33, 0, 1, v44);
  v45 = OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_storeControllerObservationToken;
  swift_beginAccess();
  sub_10014D740(v33, v0 + v45);
  swift_endAccess();
  v46 = [objc_opt_self() daemonUserDefaults];
  v47 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100350904;
  aBlock[5] = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10031B6FC;
  aBlock[3] = &unk_1008EECA0;
  v48 = _Block_copy(aBlock);

  v49 = [v46 observePreferredDefaultListIDWithBlock:v48];
  _Block_release(v48);

  v50 = *(v0 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_preferredDefaultListIDObservationToken);
  *(v0 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_preferredDefaultListIDObservationToken) = v49;
  swift_unknownObjectRelease();
  sub_10034F66C();
}

void sub_10034F554()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10034F66C();
  }

  else
  {
    if (qword_100935F20 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_100006654(v0, qword_100942B00);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Received store controller change notification after RDDataStoreApplicationShortcutListProvider was deallocated", v3, 2u);
    }
  }
}

void sub_10034F66C()
{
  v1 = v0;
  v138 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v2 = *(v138 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v138);
  v129 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v124 = &v114 - v6;
  v123 = type metadata accessor for REMAccountsListDataView.Model.Group();
  v7 = *(v123 - 8);
  v8 = v7[8];
  __chkstk_darwin(v123);
  v122 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  v136 = *(v10 - 8);
  v11 = *(v136 + 64);
  v12 = __chkstk_darwin(v10);
  v135 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v137 = &v114 - v14;
  v134 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v15 = *(v134 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v134);
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v1 + 40);
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if ((v24 & 1) == 0)
  {
    goto LABEL_84;
  }

  v26 = *(v1 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_store);
  v140 = 0;
  v27 = [v26 fetchDefaultListWithError:&v140];
  v28 = v27;
  if (v140)
  {
    v7 = v140;

    swift_willThrow();
    if (qword_100935F20 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_6;
  }

  v127 = v7;
  v119 = v27;
  type metadata accessor for REMAccountsListDataView();
  v29 = static REMAccountsListDataView.fetchAccounts(store:diffingAgainst:)();
  v114 = v1;
  v38 = *(v29 + 16);
  v133 = v2;
  if (!v38)
  {

    v7 = _swiftEmptyArrayStorage;
LABEL_28:
    v56 = v135;
    v134 = v7[2];
    if (v134)
    {
      v57 = 0;
      v132 = v136 + 16;
      v131 = (v136 + 88);
      LODWORD(v130) = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
      v121 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
      v118 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
      v128 = (v136 + 96);
      v117 = (v127 + 4);
      v116 = v127 + 1;
      v127 = (v136 + 8);
      v115 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
      v126 = v2 + 104;
      v58 = _swiftEmptyArrayStorage;
      v120 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
      v125 = xmmword_100791300;
      while (v57 < v7[2])
      {
        v59 = v136;
        v60 = v137;
        v61 = *(v136 + 16);
        v61(v137, v7 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v136 + 72) * v57, v10);
        v61(v56, v60, v10);
        v62 = (*(v59 + 88))(v56, v10);
        if (v62 == v130)
        {
          (*v128)(v56, v10);
          v63 = *v56;
          sub_1000F5104(&unk_10093F800, &qword_1007A48D0);
          v64 = *(v2 + 72);
          v65 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v66 = swift_allocObject();
          *(v66 + 16) = v125;
          *(v66 + v65) = v63;
          (*(v2 + 104))(v66 + v65, v120, v138);
        }

        else if (v62 == v121)
        {
          (*v128)(v56, v10);
          v67 = *v56;
          sub_1000F5104(&unk_10093F800, &qword_1007A48D0);
          v68 = *(v2 + 72);
          v69 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v66 = swift_allocObject();
          *(v66 + 16) = v125;
          *(v66 + v69) = v67;
          (*(v2 + 104))(v66 + v69, v115, v138);
        }

        else
        {
          if (v62 != v118)
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return;
          }

          (*v128)(v56, v10);
          v70 = v56;
          v71 = v122;
          v72 = v123;
          (*v117)(v122, v70, v123);
          v66 = REMAccountsListDataView.Model.Group.lists.getter();
          (*v116)(v71, v72);
        }

        (*v127)(v137, v10);
        v73 = *(v66 + 16);
        v74 = *(v58 + 2);
        v75 = v74 + v73;
        if (__OFADD__(v74, v73))
        {
          goto LABEL_78;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v75 > *(v58 + 3) >> 1)
        {
          if (v74 <= v75)
          {
            v77 = v74 + v73;
          }

          else
          {
            v77 = v74;
          }

          v58 = sub_100365DF8(isUniquelyReferenced_nonNull_native, v77, 1, v58);
        }

        v2 = v133;
        if (*(v66 + 16))
        {
          if ((*(v58 + 3) >> 1) - *(v58 + 2) < v73)
          {
            goto LABEL_81;
          }

          v78 = (*(v133 + 80) + 32) & ~*(v133 + 80);
          v79 = *(v133 + 72);
          swift_arrayInitWithCopy();

          if (v73)
          {
            v80 = *(v58 + 2);
            v54 = __OFADD__(v80, v73);
            v81 = v80 + v73;
            if (v54)
            {
              goto LABEL_83;
            }

            *(v58 + 2) = v81;
          }
        }

        else
        {

          if (v73)
          {
            goto LABEL_79;
          }
        }

        ++v57;
        v56 = v135;
        if (v134 == v57)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_77;
    }

    v58 = _swiftEmptyArrayStorage;
LABEL_52:

    v140 = v58;
    if (v119)
    {
      v82 = *(v58 + 2);
      v137 = v119;
      v134 = v82;
      if (v82)
      {
        v83 = 0;
        v132 = v2 + 16;
        v135 = (v2 + 8);
        while (1)
        {
          if (v83 >= *(v58 + 2))
          {
            __break(1u);
          }

          v136 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v84 = *(v2 + 72);
          v85 = v124;
          v86 = v138;
          (*(v2 + 16))(v124, &v58[v136 + v84 * v83], v138);
          sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
          v87 = REMAccountsListDataView.Model.GroupChild.objectID.getter();
          v88 = [v137 objectID];
          v89 = static NSObject.== infix(_:_:)();

          v2 = v133;
          v90 = *(v133 + 8);
          v90(v85, v86);
          if (v89)
          {
            break;
          }

          ++v83;
          v91 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
          if (v134 == v83)
          {
            goto LABEL_62;
          }
        }

        v92 = v124;
        sub_10042C868(v83, v124);
        v90(v92, v138);
      }

      else
      {
        v84 = *(v2 + 72);
        v136 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      }

      v91 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
LABEL_62:
      sub_1000F5104(&unk_10093F800, &qword_1007A48D0);
      v93 = v136;
      v94 = swift_allocObject();
      v95 = *&v91[96].entrysize;
      v96 = v93;
      *(v94 + 16) = v95;
      *(v94 + v93) = REMList.codable.getter();
      v97 = v138;
      (*(v2 + 104))(v94 + v93, enum case for REMAccountsListDataView.Model.GroupChild.list(_:), v138);
      v98 = v140;
      v139 = v94;

      sub_10027214C(v99);
      v100 = v139;
      v101 = v139[2];
      if (v101)
      {
        v135 = v98;
        v58 = sub_100365DF8(0, 1, 1, _swiftEmptyArrayStorage);
        v134 = v100;
        v102 = v100 + v96;
        v103 = v2 + 16;
        v104 = *(v2 + 16);
        v105 = v129;
        do
        {
          v104(v105, v102, v97);
          v107 = *(v58 + 2);
          v106 = *(v58 + 3);
          if (v107 >= v106 >> 1)
          {
            v58 = sub_100365DF8(v106 > 1, v107 + 1, 1, v58);
          }

          *(v58 + 2) = v107 + 1;
          v108 = &v58[v96 + v107 * v84];
          v105 = v129;
          v97 = v138;
          (*(v103 + 16))(v108, v129, v138);
          v102 += v84;
          --v101;
        }

        while (v101);

        v2 = v133;
      }

      else
      {

        v58 = _swiftEmptyArrayStorage;
      }
    }

    v109 = v114;
    if (*(v58 + 2) >= 5uLL)
    {
      sub_100277F84(v58, &v58[(*(v2 + 80) + 32) & ~*(v2 + 80)], 0, 9uLL);
      v111 = v110;

      v58 = v111;
    }

    v112 = *(v109 + 16);
    *(v109 + 16) = v58;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_100350A04(Strong);
      swift_unknownObjectRelease();
    }

    return;
  }

  v40 = *(v15 + 16);
  v39 = v15 + 16;
  v41 = *(v39 + 64);
  v128 = v29;
  v42 = v29 + ((v41 + 32) & ~v41);
  v130 = *(v39 + 56);
  v131 = v40;
  v132 = v39;
  v43 = (v39 - 8);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v44 = v134;
    v131(v18, v42, v134);
    v45 = REMAccountsListDataView.Model.Account.children.getter();
    (*v43)(v18, v44);
    v46 = *(v45 + 16);
    v47 = v7[2];
    v48 = v47 + v46;
    if (__OFADD__(v47, v46))
    {
      break;
    }

    v49 = swift_isUniquelyReferenced_nonNull_native();
    if (v49 && v48 <= (v7[3] >> 1))
    {
      if (*(v45 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v47 <= v48)
      {
        v50 = v47 + v46;
      }

      else
      {
        v50 = v47;
      }

      v7 = sub_100365E20(v49, v50, 1, v7);
      if (*(v45 + 16))
      {
LABEL_22:
        if (((v7[3] >> 1) - v7[2]) < v46)
        {
          goto LABEL_80;
        }

        v51 = (*(v136 + 80) + 32) & ~*(v136 + 80);
        v52 = *(v136 + 72);
        swift_arrayInitWithCopy();

        if (v46)
        {
          v53 = v7[2];
          v54 = __OFADD__(v53, v46);
          v55 = (v53 + v46);
          if (v54)
          {
            goto LABEL_82;
          }

          v7[2] = v55;
        }

        goto LABEL_12;
      }
    }

    if (v46)
    {
      goto LABEL_76;
    }

LABEL_12:
    v42 += v130;
    if (!--v38)
    {

      v2 = v133;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  swift_once();
LABEL_6:
  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_100942B00);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v140 = v34;
    *v33 = 136315138;
    v139 = v7;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v35 = String.init<A>(describing:)();
    v37 = sub_10000668C(v35, v36, &v140);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Unable to fetch lists to use as application shortcuts {error: %s}", v33, 0xCu);
    sub_10000607C(v34);
  }

  else
  {
  }
}

uint64_t sub_1003504C8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12[1] = *(result + 40);
    aBlock[4] = sub_100350C5C;
    aBlock[5] = result;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008EECF0;
    v11 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v12[2] = _swiftEmptyArrayStorage;
    sub_10000AB38();
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_100350750()
{
  if (qword_100935F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100942B00);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received preferred default list ID changed after RDDataStoreApplicationShortcutListProvider was deallocated", v3, 2u);
  }

  sub_10034F66C();
}

uint64_t sub_10035083C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003508A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10035090C(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 4) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_storeControllerObservationToken;
  v8 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_preferredDefaultListIDObservationToken] = 0;
  v3[OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_isStarted] = 0;
  *(v3 + 5) = a1;
  *(v3 + 6) = a2;
  v9 = objc_allocWithZone(REMStore);
  v10 = a1;

  v11 = [v9 initWithDaemonController:a3];
  *&v3[OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_store] = v11;
  *(v3 + 2) = _swiftEmptyArrayStorage;
  return v3;
}

uint64_t sub_100350A04(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  aBlock[4] = sub_10013B7E8;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EECC8;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15[1] = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_100350C6C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100942CA8);
  v1 = sub_100006654(v0, qword_100942CA8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100350D34@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a2;
  v32 = a3;
  v4 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for REMRemindersListDataView.Diff();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v38 = &v29 - v16;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v18 = *(Configuration - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(Configuration);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters.configuration.getter();
  v37 = a1;
  v22 = v39;
  sub_100352264(a1);
  if (v22)
  {
    return (*(v18 + 8))(v21, Configuration);
  }

  v29 = v14;
  v30 = v7;
  v39 = v11;
  v24 = v34;
  (*(v18 + 8))(v21, Configuration);
  v25 = [v35 fetchResultTokenToDiffAgainst];
  sub_100534D44(v25, v38);

  REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
  v26 = v33;
  v27 = v24;
  (*(v33 + 16))(v30, v10, v24);
  v28 = v31;
  (*(v31 + 16))(v29, v38, v39);
  sub_100353368(&qword_100942E10, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel);
  sub_100353368(&qword_100942E18, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel);
  REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
  (*(v26 + 8))(v10, v27);
  return (*(v28 + 8))(v38, v39);
}

unint64_t sub_100351114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v5 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  __chkstk_darwin(v5);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v9 = *(v8 - 8);
  v79 = v8;
  v80 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v82 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  __chkstk_darwin(v12);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v73 = &v66 - v17;
  v76 = *(v2 + 16);
  v18 = [v76 entityName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v22 = [swift_getObjCClassFromMetadata() cdEntityName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v23 == v19 && v25 == v21)
  {

    goto LABEL_5;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
LABEL_5:

    result = sub_1001BE2C0(v81, v76);
    if (!v3)
    {
      v81 = 0;
      v67 = v2;
      if (!(result >> 62))
      {
        v28 = result;

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for REMCDBaseSection();
        v29 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:);
LABEL_8:
        v30 = v28;
        goto LABEL_9;
      }

      type metadata accessor for REMCDBaseSection();

      v30 = _bridgeCocoaArray<A>(_:)();

      v29 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:);
LABEL_9:

      (*(v74 + 104))(v73, *v29, v75);
      if (v30 >> 62)
      {
        while (1)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
          if (!v31)
          {
            break;
          }

LABEL_11:
          v66 = a2;
          v83 = _swiftEmptyArrayStorage;
          sub_1002532DC(0, v31 & ~(v31 >> 63), 0);
          if (v31 < 0)
          {
            __break(1u);
LABEL_49:
            type metadata accessor for REMCDBaseSection();

            v30 = _bridgeCocoaArray<A>(_:)();

            v29 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.customSmartList(_:);
            goto LABEL_9;
          }

          v32 = 0;
          v33 = v83;
          v72 = v30 & 0xFFFFFFFFFFFFFF8;
          v77 = v80 + 32;
          v78 = v30 & 0xC000000000000001;
          while (1)
          {
            a2 = v31;
            v34 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v78)
            {
              v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v36 = v81;
            }

            else
            {
              if (v32 >= *(v72 + 16))
              {
                goto LABEL_38;
              }

              v36 = v81;
              v35 = *(v30 + 8 * v32 + 32);
            }

            sub_100351A84();
            if (v36)
            {
              (*(v74 + 8))(v73, v75);
            }

            v81 = 0;

            v83 = v33;
            v38 = v33[2];
            v37 = v33[3];
            if (v38 >= v37 >> 1)
            {
              sub_1002532DC(v37 > 1, v38 + 1, 1);
              v33 = v83;
            }

            v33[2] = v38 + 1;
            (*(v80 + 32))(v33 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v38, v82, v79);
            ++v32;
            v39 = v34 == a2;
            v31 = a2;
            if (v39)
            {

              a2 = v66;
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
        }
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
          goto LABEL_11;
        }
      }

      v53 = *(v80 + 72);
      v54 = *(v80 + 80);
      v33 = _swiftEmptyArrayStorage;
LABEL_41:
      v84 = v33;
      sub_1000F5104(&qword_10093B448, &qword_10079D400);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_100791300;
      (*(v69 + 104))(v68, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v70);
      REMRemindersListDataView.SectionLite.init(type:reminders:)();
      sub_1002720B0(v55);
      v82 = REMObjectID.codable.getter();
      v56 = *(v67 + 24);
      v57 = [v56 name];
      if (v57)
      {
        v58 = a2;
        v59 = v57;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        a2 = v58;
      }

      v60 = [v56 color];
      if (v60)
      {
        v61 = v60;
        REMColor.codable.getter();
      }

      v63 = v73;
      v62 = v74;
      v64 = v75;
      (*(v74 + 16))(v71, v73, v75);
      REMRemindersListDataView.ListsSectionsModel.List.init(listID:listName:listColor:listType:sections:)();
      (*(v62 + 8))(v63, v64);
      v65 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
      return (*(*(v65 - 8) + 56))(a2, 0, 1, v65);
    }

    return result;
  }

  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v40 = [swift_getObjCClassFromMetadata() cdEntityName];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v41 == v19 && v43 == v21)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      v45 = v76;
      if (qword_100935F28 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100006654(v46, qword_100942CA8);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v45;
        *v50 = v45;
        v51 = v45;
        _os_log_impl(&_mh_execute_header, v47, v48, "[AppIntentsSectionsInvocation] Unexpected list type to fetch sections: %@", v49, 0xCu);
        sub_1000050A4(v50, &unk_100938E70, &unk_100797230);
      }

      v52 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
      return (*(*(v52 - 8) + 56))(a2, 1, 1, v52);
    }
  }

  result = sub_1001BE4D4(v81, v76);
  if (!v3)
  {
    v81 = 0;
    v67 = v2;
    if (result >> 62)
    {
      goto LABEL_49;
    }

    v28 = result;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for REMCDBaseSection();
    v29 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.customSmartList(_:);
    goto LABEL_8;
  }

  return result;
}

void sub_100351A84()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = __chkstk_darwin(v2).n128_u64[0];
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = 0;
  v8 = [v0 remObjectIDWithError:{&v20, v5}];
  if (v8)
  {
    v9 = v8;
    v10 = v20;
    v11 = [v1 displayName];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      *v7 = REMObjectID.codable.getter();
      v7[1] = v13;
      v7[3] = 0;
      v7[4] = 0;
      v7[2] = v15;
      (*(v3 + 104))(v7, enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:), v2);
      REMRemindersListDataView.SectionLite.init(type:reminders:)();
    }

    else
    {
      v17 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = String._bridgeToObjectiveC()();
      [v17 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v19];

      swift_willThrow();
    }
  }

  else
  {
    v16 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100351CE4(uint64_t a1)
{
  result = sub_100353368(&qword_100942CE0, &type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

void *sub_100351D60(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_24:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v7 = [*(v5 + 24) account];
    v9 = sub_10036422C(v7);
    v10 = _swiftEmptyDictionarySingleton[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_22;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      break;
    }

LABEL_15:
    if (v13)
    {

      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v9);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1007953F0;
      *(v16 + 32) = v5;
      _swiftEmptyDictionarySingleton[(v9 >> 6) + 8] |= 1 << v9;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v9) = v7;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v9) = v16;
      v17 = _swiftEmptyDictionarySingleton[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v19;
    }

    if (v6 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  sub_10036BB00(v12, 1);
  v14 = sub_10036422C(v7);
  if ((v13 & 1) == (v15 & 1))
  {
    v9 = v14;
    goto LABEL_15;
  }

  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100351FDC(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_10002B924(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v8[3] < v16)
  {
    sub_10036BAEC(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_10002B924(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v20 = *a3;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20[(v11 >> 6) + 8] |= 1 << v11;
    *(v20[6] + 8 * v11) = v9;
    *(v20[7] + 8 * v11) = v10;
    v26 = v20[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v15)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v20[2] = v27;
    v17 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v25 = v11;
  sub_100373F88();
  v11 = v25;
  v20 = *a3;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = v11;
  v22 = *(v20[7] + 8 * v11);

  v23 = v20[7];
  v24 = *(v23 + 8 * v21);
  *(v23 + 8 * v21) = v22;

  v17 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = v6 + 7;
    v3 = 1;
    while (1)
    {
      v32 = *v5;
      v33 = *a3;
      v10 = *(v5 - 1);
      v6 = v32;
      v34 = sub_10002B924(v10);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v15 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v15)
      {
        goto LABEL_23;
      }

      v9 = v35;
      if (v33[3] < v38)
      {
        sub_10036BAEC(v38, 1);
        v39 = *a3;
        v34 = sub_10002B924(v10);
        if ((v9 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      v41 = *a3;
      if (v9)
      {
        v28 = v34;
        v29 = *(v41[7] + 8 * v34);

        v30 = v41[7];
        v31 = *(v30 + 8 * v28);
        *(v30 + 8 * v28) = v29;
      }

      else
      {
        v41[(v34 >> 6) + 8] |= 1 << v34;
        *(v41[6] + 8 * v34) = v10;
        *(v41[7] + 8 * v34) = v6;
        v42 = v41[2];
        v15 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v15)
        {
          goto LABEL_24;
        }

        v41[2] = v43;
      }

      v5 += 2;
      if (!--v17)
      {
        return;
      }
    }
  }
}

uint64_t sub_100352264(void *a1)
{
  v4 = sub_1000F5104(&qword_100942E08, &qword_1007A3868);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v145 - v6;
  v8 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v145 - v14;
  v16 = sub_1001A3FA8(a1);
  if (v1)
  {
    return v2;
  }

  v2 = v16;
  v162 = v15;
  v163 = v12;
  v165 = v7;
  sub_10002D468(0, a1, 0);
  v159 = a1;
  v160 = v8;
  v161 = v9;
  if (v2 >> 62)
  {
    goto LABEL_33;
  }

  v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v164 = 0;
    v167 = v17;
    if (v18)
    {
      v170 = _swiftEmptyArrayStorage;
      v17 = specialized ContiguousArray.reserveCapacity(_:)();
      if (v18 < 0)
      {
        goto LABEL_119;
      }

      v19 = 0;
      v168 = v2 & 0xC000000000000001;
      v166 = v2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v168)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v166 + 16))
          {
            goto LABEL_31;
          }

          v21 = *(v2 + 8 * v19 + 32);
        }

        v22 = v21;
        _s8BaseListCMa();
        v15 = swift_allocObject();
        *(v15 + 24) = v22;
        v169 = 0;
        v23 = v22;
        v24 = [v23 remObjectIDWithError:&v169];
        v25 = v169;
        if (!v24)
        {
LABEL_28:
          v42 = v25;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_deallocPartialClassInstance();

          return v2;
        }

        v26 = v24;
        v27 = v169;

        *(v15 + 16) = v26;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v7 = *(v170 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = specialized ContiguousArray._endMutation()();
        ++v19;
        if (v20 == v18)
        {

          v28 = v170;
          v29 = v167;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v30 = v17;

    v29 = v30;
    v28 = _swiftEmptyArrayStorage;
LABEL_16:
    if (!(v29 >> 62))
    {
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        break;
      }

      goto LABEL_18;
    }

    v44 = v29;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v44;
    if (!v31)
    {
      break;
    }

LABEL_18:
    v166 = v28;
    v32 = v29;
    v170 = _swiftEmptyArrayStorage;
    v17 = specialized ContiguousArray.reserveCapacity(_:)();
    if (v31 < 0)
    {
      goto LABEL_161;
    }

    v33 = 0;
    v34 = v32;
    v35 = v32 & 0xC000000000000001;
    v168 = v34 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v2 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v168 + 16))
        {
          goto LABEL_32;
        }

        v36 = *(v34 + 8 * v33 + 32);
      }

      v37 = v36;
      _s8BaseListCMa();
      v15 = swift_allocObject();
      *(v15 + 24) = v37;
      v169 = 0;
      v23 = v37;
      v38 = [v23 remObjectIDWithError:&v169];
      v25 = v169;
      if (!v38)
      {
        goto LABEL_28;
      }

      v39 = v38;
      v40 = v169;

      *(v15 + 16) = v39;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *(v170 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = specialized ContiguousArray._endMutation()();
      ++v33;
      v34 = v167;
      if (v2 == v31)
      {

        v41 = v170;
        v28 = v166;
        goto LABEL_36;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v43 = v17;
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v43;
  }

  v41 = _swiftEmptyArrayStorage;
LABEL_36:
  v170 = v28;
  sub_100272120(v41);
  v2 = v170;

  v46 = v164;
  v47 = sub_100351D60(v45);
  v164 = v46;

  v7 = (v47 + 8);
  v48 = 1 << *(v47 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v47[8];
  v51 = (v48 + 63) >> 6;
  v166 = v161 + 32;
  v167 = v161 + 48;

  v15 = 0;
  v52 = _swiftEmptyDictionarySingleton;
LABEL_39:
  v168 = v52;
  if (v50)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v53 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (v53 >= v51)
    {
      break;
    }

    v50 = *(v7 + 8 * v53);
    ++v15;
    if (v50)
    {
      v15 = v53;
LABEL_44:
      v54 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v55 = (v15 << 9) | (8 * v54);
      v56 = *(v47[6] + v55);
      if (v56)
      {
        v57 = *(v47[7] + v55);
        v58 = v56;

        v59 = [v58 remObjectID];
        if (!v59)
        {

          goto LABEL_39;
        }

        v60 = v59;
        v147 = v58;
        v150 = v57;
        if (v57 >> 62)
        {
          v95 = v59;
          v61 = _CocoaArrayWrapper.endIndex.getter();
          v60 = v95;
          v57 = v150;
        }

        else
        {
          v61 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v148 = v47;
        v149 = v60;
        if (v61 <= 1)
        {

          v146 = 0;
          goto LABEL_54;
        }

        v62 = v60;
        v63 = v164;
        v64 = sub_100012370(v62, v159);
        if (v63)
        {

          v164 = 0;
          goto LABEL_52;
        }

        v164 = 0;
        if (!v64)
        {
LABEL_52:

          v65 = v150;

          v66 = v65;
          v146 = 0;
          goto LABEL_55;
        }

        v91 = v64;
        _s8BaseListCMa();
        v92 = v91;
        v93 = v164;
        v94 = REMOrderedIdentifierMap.reorder<A>(objects:)();
        v164 = v93;
        if (!v93)
        {
          v57 = v94;

          v146 = v92;
          v52 = v168;
LABEL_54:
          v66 = v57;
LABEL_55:
          if (v66 >> 62)
          {
            v67 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v68 = v164;
          v168 = v52;
          if (!v67)
          {
            v157 = _swiftEmptyArrayStorage;
LABEL_74:
            v164 = v68;

            v82 = v168;
            if (*(v168 + 16) && (v83 = sub_10002B924(v149), (v84 & 1) != 0))
            {
              v85 = *(v82[7] + 8 * v83);
            }

            else
            {
              v86 = _swiftEmptyArrayStorage;
            }

            v170 = v86;
            sub_1002720F4(v157);
            v87 = v170;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v170 = v82;
            v89 = v149;
            sub_1002C77EC(v87, v149, isUniquelyReferenced_nonNull_native);

            v90 = v147;

            v52 = v170;
            v47 = v148;
            goto LABEL_39;
          }

          v69 = 0;
          v155 = v66 & 0xFFFFFFFFFFFFFF8;
          v156 = v66 & 0xC000000000000001;
          v157 = _swiftEmptyArrayStorage;
          v151 = v66;
          v154 = v67;
          while (1)
          {
            if (v156)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              v66 = v151;
            }

            else
            {
              if (v69 >= *(v155 + 16))
              {
                goto LABEL_162;
              }

              v71 = *(v66 + 8 * v69 + 32);
            }

            v158 = v69 + 1;
            v72 = v165;
            if (__OFADD__(v69, 1))
            {
              break;
            }

            sub_100351114(v159, v165);
            v164 = v68;
            if (v68)
            {

              v114 = v147;

              return v2;
            }

            v73 = v160;
            if ((*v167)(v72, 1, v160) == 1)
            {
              sub_1000050A4(v72, &qword_100942E08, &qword_1007A3868);
              v70 = v154;
            }

            else
            {
              v152 = v69;
              v74 = *v166;
              v75 = v162;
              (*v166)();
              v153 = v74;
              (v74)(v163, v75, v73);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v157 = sub_100365B88(0, v157[2] + 1, 1, v157);
              }

              v70 = v154;
              v77 = v157[2];
              v76 = v157[3];
              v78 = v77 + 1;
              v79 = v163;
              v66 = v151;
              v69 = v152;
              if (v77 >= v76 >> 1)
              {
                v145 = v77 + 1;
                v81 = sub_100365B88(v76 > 1, v78, 1, v157);
                v78 = v145;
                v79 = v163;
                v157 = v81;
              }

              v80 = v157;
              v157[2] = v78;
              (v153)(v80 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v77, v79, v160);
            }

            ++v69;
            v68 = v164;
            if (v158 == v70)
            {
              goto LABEL_74;
            }
          }

LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        v144 = v147;

        return v2;
      }

      goto LABEL_39;
    }
  }

  v170 = _swiftEmptyArrayStorage;
  v15 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_120;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v97 = 0;
    v167 = _swiftEmptyArrayStorage;
    while (i != v97)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v99 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (v97 >= *(v15 + 16))
        {
          goto LABEL_116;
        }

        v98 = *(v2 + 8 * v97 + 32);

        v99 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_115;
        }
      }

      v100 = [*(v98 + 24) account];

      ++v97;
      if (v100)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v101 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v167 = v170;
        v97 = v99;
      }
    }

    v102 = v167;
    if (v167 >> 62)
    {
      break;
    }

    v103 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v103)
    {
      goto LABEL_122;
    }

LABEL_100:
    v170 = _swiftEmptyArrayStorage;
    sub_1002535B8(0, v103 & ~(v103 >> 63), 0);
    if (v103 < 0)
    {
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    v104 = 0;
    v2 = v170;
    v165 = v103;
    v166 = v102 & 0xC000000000000001;
    v163 = v102 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v105 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v166)
      {
        v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v104 >= *(v163 + 16))
        {
          goto LABEL_118;
        }

        v106 = *(v102 + 8 * v104 + 32);
      }

      v107 = v106;
      v169 = 0;
      v108 = [v106 remObjectIDWithError:&v169];
      if (!v108)
      {
        v113 = v169;

        _convertNSErrorToError(_:)();

        swift_willThrow();

        return v2;
      }

      v15 = v108;
      v170 = v2;
      v109 = *(v2 + 16);
      v110 = *(v2 + 24);
      v111 = v169;
      if (v109 >= v110 >> 1)
      {
        sub_1002535B8((v110 > 1), v109 + 1, 1);
        v2 = v170;
      }

      *(v2 + 16) = v109 + 1;
      v112 = v2 + 16 * v109;
      *(v112 + 32) = v15;
      *(v112 + 40) = v107;
      ++v104;
      v102 = v167;
      if (v105 == v165)
      {

        goto LABEL_123;
      }
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    ;
  }

  v103 = _CocoaArrayWrapper.endIndex.getter();
  if (v103)
  {
    goto LABEL_100;
  }

LABEL_122:

  v2 = _swiftEmptyArrayStorage;
LABEL_123:
  if (*(v2 + 16))
  {
    sub_1000F5104(&unk_100943090, &unk_1007A3B10);
    v115 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v115 = _swiftEmptyDictionarySingleton;
  }

  v170 = v115;
  v116 = v164;
  sub_100351FDC(v2, 1, &v170);
  if (!v116)
  {

    sub_100277D70(v170);

    v170 = sub_10000EEFC(v117);
    sub_100011170(&v170);
    v164 = 0;

    v7 = v170;
    if ((v170 & 0x8000000000000000) == 0 && (v170 & 0x4000000000000000) == 0)
    {
      v118 = *(v170 + 16);
      if (v118)
      {
LABEL_130:
        v119 = 0;
        v167 = v7 & 0xC000000000000001;
        v2 = _swiftEmptyArrayStorage;
        while (1)
        {
          v166 = v2;
          v120 = v119;
          while (1)
          {
            if (v167)
            {
              v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v120 >= *(v7 + 16))
              {
                goto LABEL_160;
              }

              v121 = *(v7 + 8 * v120 + 32);
            }

            v122 = v121;
            v119 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
              goto LABEL_163;
            }

            v170 = 0;
            v123 = [v121 remObjectIDWithError:&v170];
            if (!v123)
            {
              v142 = v170;

              _convertNSErrorToError(_:)();

              swift_willThrow();
              return v2;
            }

            v124 = v123;
            v125 = v118;
            v126 = v168;
            v2 = *(v168 + 16);
            v127 = v170;
            if (v2)
            {
              v128 = sub_10002B924(v124);
              if (v129)
              {
                break;
              }
            }

            ++v120;
            v118 = v125;
            if (v119 == v125)
            {
              v2 = v166;
              goto LABEL_166;
            }
          }

          v130 = *(*(v126 + 56) + 8 * v128);

          v2 = v166;
          v131 = *(v166 + 16);
          v165 = *(v130 + 16);
          v132 = v131 + v165;
          if (__OFADD__(v131, v165))
          {
            goto LABEL_170;
          }

          v133 = swift_isUniquelyReferenced_nonNull_native();
          if (!v133 || (v134 = *(v2 + 24) >> 1, v134 < v132))
          {
            if (v131 <= v132)
            {
              v135 = v132;
            }

            else
            {
              v135 = v131;
            }

            v2 = sub_100365B88(v133, v135, 1, v2);
            v134 = *(v2 + 24) >> 1;
          }

          v118 = v125;
          v136 = v165;
          if (*(v130 + 16))
          {
            v137 = *(v2 + 16);
            if (v134 - v137 >= v165)
            {
              v138 = v2 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v137;
              swift_arrayInitWithCopy();

              if (!v136)
              {
                goto LABEL_155;
              }

              v139 = *(v2 + 16);
              v140 = __OFADD__(v139, v136);
              v141 = v139 + v136;
              if (!v140)
              {
                *(v2 + 16) = v141;
                goto LABEL_155;
              }

LABEL_173:
              __break(1u);
            }

LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          if (v136)
          {
            goto LABEL_171;
          }

LABEL_155:

          if (v119 == v118)
          {
LABEL_166:

            return v2;
          }
        }
      }

LABEL_165:
      v2 = _swiftEmptyArrayStorage;
      goto LABEL_166;
    }

LABEL_164:
    v118 = _CocoaArrayWrapper.endIndex.getter();
    if (v118)
    {
      goto LABEL_130;
    }

    goto LABEL_165;
  }

  __break(1u);
  return result;
}

uint64_t sub_100353368(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1003533B0()
{
  v1 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v19 - v3;
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100791340;
  v6 = [v0 URL];
  if (v6)
  {
    v7 = v6;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v5 + 56) = &type metadata for String;
  v13 = sub_100006600();
  *(v5 + 64) = v13;
  *(v5 + 32) = v10;
  *(v5 + 40) = v12;
  result = [v0 identifier];
  if (result)
  {
    v15 = result;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v13;
    *(v5 + 72) = v16;
    *(v5 + 80) = v18;
    return String.init(format:_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003535B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005F4C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];

  return v8;
}

void *sub_10035363C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for REMList_Codable();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100364044(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_100353730(void *a1, uint64_t a2, void (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = __CocoaDictionary.lookup(_:)();

    if (v6)
    {
      a3(0);
      swift_dynamicCast();
      return v11;
    }
  }

  else if (*(a2 + 16))
  {
    v8 = sub_10002B924(a1);
    if (v9)
    {
      v10 = *(*(a2 + 56) + 8 * v8);
    }
  }

  return 0;
}

void *sub_1003537F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005F4C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_100353894(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      type metadata accessor for RDManualSortIDCache();
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_100364908(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

uint64_t sub_1003539C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xEC00000065746144;
  v5 = 0x4E79616C70736964;
  if (a1 == 2)
  {
    v5 = 0x6E6F697461657263;
  }

  else
  {
    v4 = 0xEB00000000656D61;
  }

  v6 = 0xD000000000000017;
  if (a1)
  {
    v3 = 0x80000001007E8C60;
  }

  else
  {
    v6 = 0x44497463656A626FLL;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6E6F697461657263;
    }

    else
    {
      v11 = 0x4E79616C70736964;
    }

    if (a2 == 2)
    {
      v10 = 0xEC00000065746144;
    }

    else
    {
      v10 = 0xEB00000000656D61;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000017;
    }

    else
    {
      v9 = 0x44497463656A626FLL;
    }

    if (a2)
    {
      v10 = 0x80000001007E8C60;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_100353B28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0x44497463656A626FLL;
    }

    if (v2)
    {
      v4 = 0x80000001007E8C60;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6E6F697461657263;
    v4 = 0xEC00000065746144;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x4E79616C70736964;
    }

    else
    {
      v3 = 0x6163696E6F6E6163;
    }

    if (v2 == 3)
    {
      v4 = 0xEB00000000656D61;
    }

    else
    {
      v4 = 0xED0000656D614E6CLL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x44497463656A626FLL;
    }

    if (a2)
    {
      v5 = 0x80000001007E8C60;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEC00000065746144;
    if (v3 != 0x6E6F697461657263)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000656D61;
    if (v3 != 0x4E79616C70736964)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xED0000656D614E6CLL;
    if (v3 != 0x6163696E6F6E6163)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_100353D04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0x6972745364697575;
    v10 = 0xEA0000000000676ELL;
    if (a1 != 1)
    {
      v9 = 0x4C525574736F68;
      v10 = 0xE700000000000000;
    }

    if (a1)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0x44497463656A626FLL;
    }

    if (v2)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0xE800000000000000;
    }
  }

  else
  {
    v3 = 0x6F54636E79536164;
    v4 = 0xEB000000006E656BLL;
    if (a1 != 5)
    {
      v3 = 0x654B687375506164;
      v4 = 0xE900000000000079;
    }

    v5 = 0xD000000000000012;
    v6 = 0x80000001007EA030;
    if (a1 != 3)
    {
      v5 = 0xD000000000000017;
      v6 = 0x80000001007EA050;
    }

    if (a1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (v2 <= 4)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xEA0000000000676ELL;
        if (v7 != 0x6972745364697575)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v11 = 0xE700000000000000;
        if (v7 != 0x4C525574736F68)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v7 != 0x44497463656A626FLL)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xEB000000006E656BLL;
      if (v7 != 0x6F54636E79536164)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v11 = 0xE900000000000079;
      if (v7 != 0x654B687375506164)
      {
LABEL_41:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0x80000001007EA030;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v11 = 0x80000001007EA050;
    if (v7 != 0xD000000000000017)
    {
      goto LABEL_41;
    }
  }

  if (v8 != v11)
  {
    goto LABEL_41;
  }

  v12 = 1;
LABEL_42:

  return v12 & 1;
}

uint64_t sub_100353F6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xEC00000065746144;
  v5 = 0x80000001007E9F10;
  v6 = 0xD00000000000001ALL;
  if (a1 == 4)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x80000001007EA730;
  }

  if (a1 == 3)
  {
    v7 = 0x6E6F697461657263;
  }

  else
  {
    v7 = v6;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v8 = 0x80000001007EA710;
  v9 = 0xD000000000000012;
  if (a1 != 1)
  {
    v9 = 0x4465746144657564;
    v8 = 0xEC00000061746C65;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x44497463656A626FLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x44497463656A626FLL)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (a2 == 1)
    {
      v12 = 0x80000001007EA710;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v13 = 0x4465746144657564;
    v14 = 1635019877;
LABEL_33:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v10 != v13)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (a2 == 3)
  {
    v13 = 0x6E6F697461657263;
    v14 = 1702125892;
    goto LABEL_33;
  }

  if (a2 == 4)
  {
    v12 = 0x80000001007E9F10;
    if (v10 != 0xD000000000000010)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v12 = 0x80000001007EA730;
    if (v10 != 0xD00000000000001ALL)
    {
LABEL_38:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v11 != v12)
  {
    goto LABEL_38;
  }

  v15 = 1;
LABEL_39:

  return v15 & 1;
}

uint64_t sub_100354164(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x49746E756F636361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x694C746E65726170;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4 == 2)
    {
      v6 = 0xEC00000044497473;
    }

    else
    {
      v6 = 0x80000001007E9FD0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6341746E65726170;
    }

    else
    {
      v5 = 0x49746E756F636361;
    }

    if (v4)
    {
      v6 = 0xEF4449746E756F63;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  v7 = 0x694C746E65726170;
  v8 = 0x80000001007E9FD0;
  if (a2 == 2)
  {
    v8 = 0xEC00000044497473;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v3 = 0x6341746E65726170;
    v2 = 0xEF4449746E756F63;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1003542D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x49746E756F636361;
  v4 = a1;
  v5 = 0x80000001007EA510;
  v6 = 0xD00000000000001FLL;
  if (a1 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x80000001007EA530;
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = v6;
  }

  if (a1 == 3)
  {
    v8 = 0x80000001007EA4F0;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0xE600000000000000;
  v10 = 0x44497473696CLL;
  if (v4 != 1)
  {
    v10 = 0xD000000000000010;
    v9 = 0x80000001007EA4D0;
  }

  if (!v4)
  {
    v10 = 0x49746E756F636361;
    v9 = 0xE900000000000044;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v10 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001007EA4F0;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0x80000001007EA530;
        if (v10 != 0xD00000000000001FLL)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v2 = 0x80000001007EA510;
    }

    if (v10 != 0xD000000000000014)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xE600000000000000;
      if (v10 != 0x44497473696CLL)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v2 = 0x80000001007EA4D0;
    v3 = 0xD000000000000010;
  }

  if (v10 != v3)
  {
LABEL_33:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

LABEL_30:
  if (v11 != v2)
  {
    goto LABEL_33;
  }

  v12 = 1;
LABEL_34:

  return v12 & 1;
}

uint64_t sub_100354468(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x6874646977;
  v5 = 0xE600000000000000;
  if (a1 == 5)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x746867696568;
  }

  v6 = 0xE700000000000000;
  v7 = 0x4C5255656C6966;
  if (a1 != 3)
  {
    v7 = 0xD000000000000012;
    v6 = 0x80000001007EA7D0;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 6911093;
  if (a1 != 1)
  {
    v9 = 0x657A6953656C6966;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x44497463656A626FLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE300000000000000;
        if (v10 != 6911093)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x657A6953656C6966)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x44497463656A626FLL)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6874646977)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x746867696568)
      {
LABEL_40:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x4C5255656C6966)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0x80000001007EA7D0;
    if (v10 != 0xD000000000000012)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_100354674(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 6911093;
    }

    else
    {
      v5 = 0x44497463656A626FLL;
    }

    if (v2)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x4C5255656C6966;
    if (a1 != 3)
    {
      v4 = 0xD000000000000012;
      v3 = 0x80000001007EA7D0;
    }

    if (a1 == 2)
    {
      v5 = 0x657A6953656C6966;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 6911093;
    }

    else
    {
      v11 = 0x44497463656A626FLL;
    }

    if (a2)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x4C5255656C6966;
    v8 = 0x80000001007EA7D0;
    if (a2 == 3)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 0x657A6953656C6966;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1003547EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x44497463656A626FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 7107189;
    }

    else
    {
      v4 = 0x617461646174656DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 6911093;
    }

    else
    {
      v4 = 0x44497463656A626FLL;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (a2 != 2)
  {
    v8 = 0x617461646174656DLL;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 6911093;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100354910(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x49746E756F636361;
  v4 = a1;
  v5 = 0x80000001007E9FB0;
  if (a1 == 5)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (a1 != 5)
  {
    v5 = 0x80000001007E9FD0;
  }

  v7 = 0x6341746E65726170;
  v8 = 0xEF4449746E756F63;
  if (a1 != 3)
  {
    v7 = 0x694C746E65726170;
    v8 = 0xEC00000044497473;
  }

  if (a1 > 4u)
  {
    v8 = v5;
  }

  else
  {
    v6 = v7;
  }

  v9 = 0x80000001007E9F50;
  v10 = 0xD000000000000016;
  if (a1 != 1)
  {
    v10 = 0xD00000000000001BLL;
    v9 = 0x80000001007E9F70;
  }

  if (!a1)
  {
    v10 = 0x49746E756F636361;
    v9 = 0xE900000000000044;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001007E9F50;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x80000001007E9F70;
        if (v11 != 0xD00000000000001BLL)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001007E9FB0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x80000001007E9FD0;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v2 = 0xEF4449746E756F63;
      if (v11 != 0x6341746E65726170)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v3 = 0x694C746E65726170;
    v2 = 0xEC00000044497473;
  }

  if (v11 != v3)
  {
LABEL_40:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_41;
  }

LABEL_37:
  if (v12 != v2)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_100354B2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xD000000000000014;
  v5 = 0x80000001007E8B20;
  v6 = 0x80000001007E8B40;
  v7 = 0xD000000000000016;
  if (a1 != 4)
  {
    v7 = 0xD000000000000018;
    v6 = 0x80000001007E8B60;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x64656E6769737361;
  v9 = 0xEC00000065746144;
  if (a1 != 1)
  {
    v8 = 0x737574617473;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x44497463656A626FLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000001007E8B20;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x80000001007E8B40;
      if (v10 != 0xD000000000000016)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x80000001007E8B60;
      if (v10 != 0xD000000000000018)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEC00000065746144;
      if (v10 != 0x64656E6769737361)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x737574617473)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x44497463656A626FLL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100354D10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x49746E756F636361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x65656E6769737361;
    }

    else
    {
      v5 = 0x74616E696769726FLL;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000004449;
    }

    else
    {
      v6 = 0xEC0000004449726FLL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7265646E696D6572;
    }

    else
    {
      v5 = 0x49746E756F636361;
    }

    if (v4)
    {
      v6 = 0xEA00000000004449;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  v7 = 0x65656E6769737361;
  v8 = 0xEA00000000004449;
  if (a2 != 2)
  {
    v7 = 0x74616E696769726FLL;
    v8 = 0xEC0000004449726FLL;
  }

  if (a2)
  {
    v3 = 0x7265646E696D6572;
    v2 = 0xEA00000000004449;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100354E74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x44497463656A626FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1701667182;
    }

    else
    {
      v4 = 1701869940;
    }

    v5 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F697461657263;
    }

    else
    {
      v4 = 0x44497463656A626FLL;
    }

    if (v3)
    {
      v5 = 0xEC00000065746144;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 1701667182;
  if (a2 != 2)
  {
    v7 = 1701869940;
  }

  if (a2)
  {
    v2 = 0x6E6F697461657263;
    v6 = 0xEC00000065746144;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100354FA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6574656C706D6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6B726F576F6ELL;
    }

    else
    {
      v4 = 0x726F727265;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x57676E69646E6570;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
    }

    if (v3)
    {
      v5 = 0xEB000000006B726FLL;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6B726F576F6ELL;
  if (a2 != 2)
  {
    v8 = 0x726F727265;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x57676E69646E6570;
    v6 = 0xEB000000006B726FLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}