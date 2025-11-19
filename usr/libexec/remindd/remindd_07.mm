char *sub_1000FA268(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v60 = a5;
  v61 = a3;
  v62 = a2;
  v9 = *a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  __chkstk_darwin(v10);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = *(v65 + 64);
  __chkstk_darwin(v13);
  v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75[3] = v9;
  v75[4] = &protocol witness table for RDSynchronizedKeyValueStore;
  v75[0] = a6;
  v16 = qword_100935D78;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093EF38);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting RDTodayNotificationAssembly", v20, 2u);
  }

  v21 = *(a1 + 16);
  v22 = type metadata accessor for RDXPCActivityTimeEventStream();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken;
  v27 = type metadata accessor for RDXPCEventStream.Token(0);
  (*(*(v27 - 8) + 56))(&v25[v26], 1, 1, v27);
  v28 = &v25[OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v25 + 2) = v21;
  *(v25 + 3) = 0xD000000000000024;
  *(v25 + 4) = 0x80000001007EB3B0;
  *(v25 + 5) = a1;
  type metadata accessor for RDNotifydEventStream();
  swift_allocObject();
  v29 = v21;

  v30 = sub_10028F604(v29, 0);
  v31 = *(a4 + 16);
  v71 = &type metadata for RDDynamicSignificantTimeNotificationEngine.XPCEventSetter;
  v72 = &off_1008F5130;
  type metadata accessor for RDDynamicSignificantTimeNotificationEngine();
  v32 = swift_allocObject();
  sub_10000C9DC(aBlock, &type metadata for RDDynamicSignificantTimeNotificationEngine.XPCEventSetter);
  *(v32 + 56) = &type metadata for RDDynamicSignificantTimeNotificationEngine.XPCEventSetter;
  *(v32 + 64) = &off_1008F5130;
  *(v32 + 72) = 2;
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  v33 = v29;
  v57 = v33;
  v34 = v31;
  sub_10000607C(aBlock);
  sub_10000A87C(v75, aBlock);
  v35 = type metadata accessor for RDTodayNotificationEngine();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v39 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_storeControllerObservationToken;
  v40 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v40 - 8) + 56))(&v38[v39], 1, 1, v40);
  v38[OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_started] = 0;
  *&v38[OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_todayNotificationTimeObserver] = 0;
  *&v38[OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_badgeCountCriteriaObserver] = 0;
  *&v38[OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_lastDismissedDateDidChangeExternally] = 0;
  v41 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  v42 = type metadata accessor for Date();
  (*(*(v42 - 8) + 56))(&v38[v41], 1, 1, v42);
  *(v38 + 2) = v33;
  *(v38 + 3) = v25;
  v58 = v25;
  *(v38 + 4) = &off_1008E86D8;
  *(v38 + 5) = v30;
  v59 = v30;
  v43 = v60;
  *(v38 + 6) = &off_1008EC760;
  *(v38 + 7) = v43;
  *(v38 + 8) = &off_1008F5BC0;
  *(v38 + 9) = a4;
  sub_10000A87C(aBlock, (v38 + 80));
  v44 = type metadata accessor for RDDaemonController();
  v45 = objc_allocWithZone(v44);
  v46 = &v45[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  v47 = v61;
  *v46 = v62;
  *(v46 + 1) = v47;
  v48 = &v45[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v48 = 0xD000000000000017;
  *(v48 + 1) = 0x80000001007EB3E0;
  *(v48 + 38) = 0;
  *(v48 + 3) = 0;
  *(v48 + 4) = 0;
  *(v48 + 2) = 0;
  *&v45[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  v74.receiver = v45;
  v74.super_class = v44;
  v61 = v57;

  v49 = v43;
  swift_unknownObjectRetain();
  v50 = objc_msgSendSuper2(&v74, "init");
  sub_10000607C(aBlock);
  *(v38 + 15) = v50;
  *(v38 + 16) = v32;
  *&v49[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate + 8] = &off_1008FD6D0;
  swift_unknownObjectWeakAssign();
  v72 = sub_1000FC4E0;
  v73 = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  v71 = &unk_1008E4E48;
  v51 = _Block_copy(aBlock);

  v52 = v63;
  static DispatchQoS.unspecified.getter();
  v69 = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v53 = v64;
  v54 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v51);

  (*(v67 + 8))(v53, v54);
  (*(v65 + 8))(v52, v66);

  sub_10000607C(v75);
  return v38;
}

uint64_t sub_1000FA9DC(uint64_t a1, char *a2, void *a3, uint64_t a4, void *a5, void *a6, int a7)
{
  v63 = a7;
  v62 = a3;
  v59 = a2;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  __chkstk_darwin(v11);
  v74 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  v73 = *(v75 - 8);
  v14 = *(v73 + 64);
  __chkstk_darwin(v75);
  v72 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v71 = &v58 - v18;
  v65 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v64 = *(v65 - 8);
  v19 = *(v64 + 64);
  __chkstk_darwin(v65);
  v60 = &v58 - v20;
  v21 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v67 = *(v21 - 8);
  v68 = v21;
  v22 = *(v67 + 64);
  __chkstk_darwin(v21);
  v61 = &v58 - v23;
  v24 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v69 = *(v24 - 8);
  v70 = v24;
  v25 = *(v69 + 64);
  __chkstk_darwin(v24);
  v66 = &v58 - v26;
  if (qword_100935B78 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_10093B990);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Starting RDAssignmentNotificationEngineAssembly", v30, 2u);
  }

  v31 = type metadata accessor for RDAssignmentNotificationEngine();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  *(v34 + 16) = 0xD000000000000017;
  *(v34 + 24) = 0x80000001007EB2C0;
  *(v34 + 32) = 0xD00000000000001FLL;
  *(v34 + 40) = 0x80000001007EB2E0;
  *(v34 + 48) = 0xD00000000000003CLL;
  *(v34 + 56) = 0x80000001007EB4A0;
  *(v34 + 64) = [objc_allocWithZone(type metadata accessor for RDAssignmentNotificationEngine.BabysitTarget()) init];
  v35 = OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_storeControllerObservationToken;
  v36 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
  *(v34 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_started) = 0;
  *(v34 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_currentUserShareParticipantIDsOverrideByListID) = 0;
  *(v34 + 72) = a6;
  *(v34 + 80) = a5;
  *(v34 + 88) = &off_1008F5BC0;
  *(v34 + 96) = a4;
  v37 = type metadata accessor for RDDaemonController();
  v38 = objc_allocWithZone(v37);
  v39 = &v38[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  v40 = v59;
  *v39 = a1;
  *(v39 + 1) = v40;
  v41 = &v38[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v41 = 0xD00000000000001CLL;
  *(v41 + 1) = 0x80000001007EB4E0;
  *(v41 + 38) = 0;
  *(v41 + 3) = 0;
  *(v41 + 4) = 0;
  *(v41 + 2) = 0;
  *&v38[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  v80.receiver = v38;
  v80.super_class = v37;
  v58 = a6;

  v59 = a5;
  swift_unknownObjectRetain();
  v42 = objc_msgSendSuper2(&v80, "init");
  v43 = v62;
  *(v34 + 104) = v42;
  *(v34 + 112) = v43;
  *(v34 + 120) = v63 & 1;
  *(v34 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_cloudKitAccountsDidChangeSubscriptions) = _swiftEmptyArrayStorage;
  v44 = v43;
  aBlock[0] = sub_100441A9C(0xD00000000000001CLL, 0x80000001007EB4E0, 0);
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
  v45 = v60;
  Publisher.map<A>(_:)();
  sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40);
  v46 = v61;
  v47 = v65;
  Publisher.filter(_:)();

  (*(v64 + 8))(v45, v47);
  aBlock[0] = v58;
  v48 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v49 = v71;
  (*(*(v48 - 8) + 56))(v71, 1, 1, v48);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0);
  sub_100006CA4();
  v50 = v66;
  v51 = v68;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v49, &qword_100939980, &unk_10079ADA0);
  (*(v67 + 8))(v46, v51);
  sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50);
  v52 = v70;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v69 + 8))(v50, v52);
  swift_beginAccess();
  sub_1000F5104(&unk_10093D1B0, &unk_10079ADC0);
  sub_10000CB48(&qword_100936FA0, &unk_10093D1B0, &unk_10079ADC0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  *&v59[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_assignmentNotificationDelegate + 8] = &off_1008E6140;
  swift_unknownObjectWeakAssign();
  aBlock[4] = sub_1000FC570;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E4F88;
  v53 = _Block_copy(aBlock);

  v54 = v72;
  static DispatchQoS.unspecified.getter();
  v78 = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v55 = v74;
  v56 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v53);
  (*(v76 + 8))(v55, v56);
  (*(v73 + 8))(v54, v75);

  return v34;
}

uint64_t sub_1000FB4B8(void *a1, void *a2, void *a3, void *a4, unsigned __int8 *a5)
{
  v60 = a3;
  v61 = a4;
  v58 = a1;
  v59 = a2;
  v5 = *a5;
  v6 = *(a5 + 1);
  v7 = a5[16];
  v8 = *(a5 + 3);
  v9 = a5[32];
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  __chkstk_darwin(v10);
  v65 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  __chkstk_darwin(v13);
  v62 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UnfairLock.Options();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v57 = v9;
  if ((v9 & 1) != 0 || (sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr), v18 = [swift_getObjCClassFromMetadata() daemonUserDefaults], v19 = objc_msgSend(v18, "sharedListActivityNotifications_demoMode"), v18, (v19 & 1) == 0))
  {
    v53 = v7;
    v54 = v6;
    v55 = v8;
    v56 = v5;
  }

  else
  {
    if (qword_100936188 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_100947718);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "📔 RDSyncActivityEngine: Starting in demo mode", v23, 2u);
    }

    v56 = 1;
    v55 = 10;
    v54 = 5;
    v53 = 1;
  }

  v24 = type metadata accessor for RDSharedListActivityNotificationsEngine(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000F5104(&qword_100937018, &unk_100791C00);
  Published.init(initialValue:)();
  aBlock[0] = &_swiftEmptyDictionarySingleton;
  sub_1000F5104(&qword_100937020, &unk_1007A2840);
  Published.init(initialValue:)();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000F5104(&qword_100937028, &qword_100791C10);
  Published.init(initialValue:)();
  *(v27 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_cancellables) = &_swiftEmptySetSingleton;
  LOBYTE(aBlock[0]) = 0;
  Published.init(initialValue:)();
  v28 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_journalUpdatesSubscriptionTransactionRegistrar;
  v52[0] = type metadata accessor for RDTransactionRegistrar();
  v29 = swift_allocObject();
  v29[4] = 0;
  v29[5] = 0;
  v29[2] = 0xD000000000000041;
  v29[3] = 0x80000001007EB600;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E60, &type metadata accessor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  v52[1] = &protocol conformance descriptor for [A];
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = type metadata accessor for UnfairLock();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v29[6] = UnfairLock.init(options:)();
  *(v27 + v28) = v29;
  v33 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_accountSignInOrOutSubscriptionTransactionRegistrar;
  v34 = swift_allocObject();
  v34[4] = 0;
  v34[5] = 0;
  v34[2] = 0xD000000000000045;
  v34[3] = 0x80000001007EB650;
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = *(v30 + 48);
  v36 = *(v30 + 52);
  swift_allocObject();
  v34[6] = UnfairLock.init(options:)();
  *(v27 + v33) = v34;
  v37 = v58;
  v38 = v59;
  *(v27 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_scheduler) = v58;
  *(v27 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_storeController) = v38;
  v39 = (v27 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userNotificationCenter);
  v41 = v60;
  v40 = v61;
  *v39 = v60;
  v39[1] = &off_1008F5BC0;
  v42 = (v27 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults);
  *v42 = v40;
  v42[1] = &off_1008EE510;
  v43 = v27 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration;
  *v43 = v56 & 1;
  *(v43 + 8) = v54;
  *(v43 + 16) = v53 & 1;
  *(v43 + 24) = v55;
  *(v43 + 32) = v57 & 1;
  aBlock[4] = sub_1000FCE94;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E52A8;
  v44 = _Block_copy(aBlock);
  v37;
  v45 = v38;
  v46 = v41;
  v47 = v40;

  v48 = v62;
  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v49 = v65;
  v50 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  (*(v66 + 8))(v49, v50);
  (*(v63 + 8))(v48, v64);

  return v27;
}

void sub_1000FBC64(char a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  sub_100006654(v4, &unk_1009359A0);
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "remindd is now exiting in response to first unlock", v7, 2u);
      }

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Notifying stores must refresh due to relaunching upon first unlock notification", v10, 2u);
      }

      v11 = notify_post(_REMStoreMustRefreshNotificationName);
      a2(v11);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "first unlock handler should not be called before first unlock happens", v13, 2u);
    }
  }
}

uint64_t sub_1000FBE54(uint64_t a1)
{
  v2 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000FBEB0(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for RDAlarmProducerDataSource();
  *&a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_connectedToken] = -1;
  *&a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_disconnectedToken] = -1;
  v13[4] = &off_1008F0830;
  v13[3] = v8;
  v13[0] = a2;
  a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_started] = 0;
  *&a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue] = a1;
  sub_10000A87C(v13, &a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource]);
  *&a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_delegate + 8] = &off_1008FDFD0;
  swift_unknownObjectUnownedInit();
  v9 = a1;

  v12.receiver = a4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_10000607C(v13);
  return v10;
}

id sub_1000FBFCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v7 = type metadata accessor for RDUserInteractionSessionManager();
  v42[3] = v7;
  v42[4] = &off_1008EC870;
  v42[0] = a3;
  v8 = type metadata accessor for RDAlarmProducerDataSource();
  v40 = v8;
  v41 = &off_1008F0810;
  v39[0] = a4;
  v9 = type metadata accessor for RDContactInteractionAlarmProducer();
  v10 = objc_allocWithZone(v9);
  v11 = sub_10000C9DC(v42, v7);
  v12 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v40;
  v17 = sub_10000C9DC(v39, v40);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v14;
  v23 = *v20;
  v38[3] = v7;
  v38[4] = &off_1008EC870;
  v37[4] = &off_1008F0810;
  v38[0] = v22;
  v37[3] = v8;
  v37[0] = v23;
  *&v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_queue] = a1;
  sub_10000A87C(v37, &v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource]);
  *&v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_delegate + 8] = &off_1008FDFD0;
  swift_unknownObjectUnownedInit();
  v24 = a1;

  sub_10000A87C(v38, &v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_userInteractionSessionManager]);
  out_token = 0;
  v25 = notify_register_check(_REMStoreShouldNotifyOfInteractionWithPeopleNotificationName, &out_token);
  if (v25)
  {
    v26 = v25;
    if (qword_100935DC8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_10093FE40);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to register notify token for _REMStoreShouldNotifyOfInteractionWithPeopleNotificationName {status: %u}", v30, 8u);
    }

    v31 = -1;
  }

  else
  {
    v31 = out_token;
  }

  *&v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken] = v31;
  v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople] = 0;
  v35.receiver = v10;
  v35.super_class = v9;
  v32 = objc_msgSendSuper2(&v35, "init", v34);
  sub_1000EC890(v32, v24, sub_100290534, 0);

  sub_10000607C(v37);
  sub_10000607C(v38);
  sub_10000607C(v39);
  sub_10000607C(v42);
  return v32;
}

uint64_t sub_1000FC434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100939ED0, &qword_100791B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000FC4A4()
{
  sub_1000ED658();

  sub_1000ED9E8();
}

uint64_t sub_1000FC508()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000FC580(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000FDA74;

  return sub_1000F21FC(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1000FC6BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000FDA74;

  return sub_1000F36C8(v2, v3, v4);
}

void sub_1000FC788(void *a1, uint64_t a2)
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

uint64_t sub_1000FC9E8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000FCAC0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000FCBFC;

  return sub_1000F1330(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1000FCBFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000FCCF0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000FCD30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000FCBFC;

  return sub_1000F2DF8(v2, v3, v4);
}

id sub_1000FCE1C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_10034CBCC(*(v2 + 16), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RDSavedDayOfWeek(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RDSavedDayOfWeek(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RDSavedDayOfWeek(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1000FD81C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1000FD8B4()
{
  result = qword_1009371D8;
  if (!qword_1009371D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009371D8);
  }

  return result;
}

void sub_1000FDB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v61 = a2;
  v62 = a3;
  v76 = type metadata accessor for TimeZone();
  v5 = *(v76 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v76);
  v75 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Calendar.Identifier();
  v8 = *(v74 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v74);
  v73 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Calendar();
  v65 = *(v72 - 8);
  v11 = *(v65 + 64);
  __chkstk_darwin(v72);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DateComponents();
  v14 = *(v71 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v71);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Date();
  v18 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = v8;
    v24 = (a1 + 32);
    v69 = enum case for Calendar.Identifier.gregorian(_:);
    v67 = (v23 + 8);
    v68 = (v23 + 104);
    v65 += 8;
    v66 = (v5 + 8);
    v64 = (v14 + 8);
    v25 = (v19 + 8);
    do
    {
      v26 = *v24++;
      Date.init(timeIntervalSinceReferenceDate:)();
      v28 = v73;
      v27 = v74;
      (*v68)(v73, v69, v74);
      Calendar.init(identifier:)();
      (*v67)(v28, v27);
      v29 = v75;
      static TimeZone.current.getter();
      Calendar.dateComponents(in:from:)();
      (*v66)(v29, v76);
      (*v65)(v13, v72);
      v30 = objc_allocWithZone(REMAlarmDateTrigger);
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v32 = [v30 initWithDateComponents:isa];

      (*v64)(v17, v71);
      (*v25)(v21, v70);

      --v22;
    }

    while (v22);
  }

  v33 = *(v61 + 16);
  v34 = v77;
  if (v33)
  {
    v35 = (v61 + 32);
    do
    {
      v75 = v33;
      v42 = v35[8];
      v86 = v35[7];
      v87 = v42;
      v43 = v35[6];
      v44 = v35[3];
      v81 = v35[2];
      v82 = v44;
      v45 = v35[4];
      v84 = v35[5];
      v85 = v43;
      v83 = v45;
      v46 = v35[1];
      v79 = *v35;
      v80 = v46;
      v76 = v84;
      if (*(&v87 + 1))
      {
        sub_1000FE280(&v79, v78);
        sub_1000FE280(&v79, v78);
        v47 = String._bridgeToObjectiveC()();
        if (v82)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1000FE280(&v79, v78);
        sub_1000FE280(&v79, v78);
        v47 = 0;
        if (v82)
        {
LABEL_10:
          v48 = String._bridgeToObjectiveC()();
          if (*(&v79 + 1))
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      v48 = 0;
      if (*(&v79 + 1))
      {
LABEL_11:
        v49 = String._bridgeToObjectiveC()();
        if (*(&v86 + 1))
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }

LABEL_17:
      v49 = 0;
      if (*(&v86 + 1))
      {
LABEL_12:
        v50 = String._bridgeToObjectiveC()();
        if (*(&v85 + 1))
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }

LABEL_18:
      v50 = 0;
      if (*(&v85 + 1))
      {
LABEL_13:
        v51 = String._bridgeToObjectiveC()();
        if (!*(&v80 + 1))
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

LABEL_19:
      v51 = 0;
      if (!*(&v80 + 1))
      {
LABEL_20:
        v52 = 0;
        goto LABEL_21;
      }

LABEL_14:
      v52 = String._bridgeToObjectiveC()();
LABEL_21:
      if (*(&v83 + 1) >> 60 == 15)
      {
        v36 = 0;
      }

      else
      {
        v36 = Data._bridgeToObjectiveC()().super.isa;
      }

      v37 = [objc_allocWithZone(REMStructuredLocation) initWithTitle:v47 locationUID:v48 latitude:v49 longitude:v50 radius:v51 address:v52 routing:*&v81 referenceFrameString:*(&v82 + 1) contactLabel:*(&v84 + 1) mapKitHandle:v36];
      v38 = v47;
      v39 = v37;

      v40 = objc_allocWithZone(REMAlarmLocationTrigger);
      v41 = [v40 initWithStructuredLocation:v39 proximity:v76];

      sub_1000FE2DC(&v79);
      v34 = v77;

      sub_1000FE2DC(&v79);
      v35 += 9;
      v33 = v75 - 1;
    }

    while (v75 != 1);
  }

  v53 = *(v62 + 16);
  if (v53)
  {
    v54 = (v62 + 32);
    do
    {
      v55 = *v54++;
      v56 = [objc_allocWithZone(REMAlarmTimeIntervalTrigger) initWithTimeInterval:v55];

      --v53;
    }

    while (v53);
  }

  v57 = *(v63 + 16);
  if (v57)
  {
    v58 = (v63 + 32);
    do
    {
      v59 = *v58++;
      v60 = [objc_allocWithZone(REMAlarmVehicleTrigger) initWithEvent:v59];

      --v57;
    }

    while (v57);
  }
}

id sub_1000FE330(double *a1)
{
  v19 = *(a1 + 10);
  if (*(a1 + 17))
  {
    v2 = *(a1 + 16);
    v3 = String._bridgeToObjectiveC()();
    if (*(a1 + 6))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*(a1 + 6))
    {
LABEL_3:
      v4 = *(a1 + 5);
      v5 = String._bridgeToObjectiveC()();
      if (*(a1 + 1))
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v5 = 0;
  if (*(a1 + 1))
  {
LABEL_4:
    v6 = *a1;
    v7 = String._bridgeToObjectiveC()();
    if (*(a1 + 15))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
  if (*(a1 + 15))
  {
LABEL_5:
    v8 = *(a1 + 14);
    v9 = String._bridgeToObjectiveC()();
    if (*(a1 + 13))
    {
      goto LABEL_6;
    }

LABEL_12:
    v11 = 0;
    if (*(a1 + 3))
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v9 = 0;
  if (!*(a1 + 13))
  {
    goto LABEL_12;
  }

LABEL_6:
  v10 = *(a1 + 12);
  v11 = String._bridgeToObjectiveC()();
  if (*(a1 + 3))
  {
LABEL_7:
    v12 = *(a1 + 2);
    v13 = String._bridgeToObjectiveC()();
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  if (*(a1 + 9) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v15 = *(a1 + 8);
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v16 = [objc_allocWithZone(REMStructuredLocation) initWithTitle:v3 locationUID:v5 latitude:v7 longitude:v9 radius:v11 address:v13 routing:a1[4] referenceFrameString:a1[7] contactLabel:a1[11] mapKitHandle:isa];

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStructuredLocation:v16 proximity:v19];
  return v17;
}

void sub_1000FE510(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = a3;
  v47 = a2;
  v44 = type metadata accessor for UUID();
  v6 = *(v44 - 8);
  v7 = v6[8];
  __chkstk_darwin(v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_34:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v41 = a1 & 0xFFFFFFFFFFFFFF8;
      v42 = a1 & 0xC000000000000001;
      v11 = v45;
      v40 = v45 - v47;
      if (v45 <= v47)
      {
        v11 = v47;
      }

      v38 = (v6 + 1);
      v39 = v11 - v47;
      v36 = v9;
      v37 = a1;
      do
      {
        if (v42)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v10 >= *(v41 + 16))
          {
            goto LABEL_29;
          }

          v12 = *(a1 + 8 * v10 + 32);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        if (v40 == v10)
        {

          return;
        }

        if (v45 < v47)
        {
          goto LABEL_30;
        }

        if (v39 == v10)
        {
          goto LABEL_31;
        }

        v46 = v13;
        v14 = v12;
        v15 = [v14 uuid];
        v16 = v43;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = UUID.uuidString.getter();
        v19 = v18;
        (*v38)(v16, v44);
        v20 = *a4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = *a4;
        v6 = v48;
        a1 = a4;
        *a4 = 0x8000000000000000;
        v23 = sub_100005F4C(v17, v19);
        v24 = v6[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_32;
        }

        a4 = v22;
        if (v6[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v6 = &v48;
            sub_100372EDC();
          }
        }

        else
        {
          sub_100369CB8(v26, isUniquelyReferenced_nonNull_native);
          v6 = v48;
          v27 = sub_100005F4C(v17, v19);
          if ((a4 & 1) != (v28 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v23 = v27;
        }

        v29 = v47 + v10;
        v30 = v48;
        if (a4)
        {
          *(v48[7] + 4 * v23) = v29;
        }

        else
        {
          v48[(v23 >> 6) + 8] |= 1 << v23;
          v31 = (v30[6] + 16 * v23);
          *v31 = v17;
          v31[1] = v19;
          *(v30[7] + 4 * v23) = v29;
          v32 = v30[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_33;
          }

          v30[2] = v34;
        }

        a4 = a1;
        v6 = *a1;
        *a1 = v30;

        ++v10;
        a1 = v37;
      }

      while (v46 != v36);
    }
  }
}

uint64_t sub_1000FE874()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009374B0);
  v1 = sub_100006654(v0, qword_1009374B0);
  if (qword_1009364F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975218);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1000FE93C(void *a1, char a2)
{
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
  sub_100101058(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
  result = Sequence.elements<A>(ofType:)();
  if (result >> 62)
  {
    v6 = result;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    result = v6;
    if (!v5)
    {
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
    }
  }

  v7 = _swiftEmptyDictionarySingleton;
  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_1000FE510(result, 0, v5, &v7);

    sub_1000FEA70(a1, v7, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FEA70(void *a1, uint64_t isUniquelyReferenced_nonNull_native, char a3)
{
  v81 = _swiftEmptyDictionarySingleton;
  aBlock[0] = a1;
  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
  sub_100101058(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr);
  v4 = Sequence.elements<A>(ofType:)();
  v5 = v4;
  v6 = (v4 >> 62);
  if (v4 >> 62)
  {
LABEL_87:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 != *(isUniquelyReferenced_nonNull_native + 16))
  {
    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_1009374B0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      if (v6)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 4) = v12;

      *(v11 + 12) = 2048;
      *(v11 + 14) = *(isUniquelyReferenced_nonNull_native + 16);

      _os_log_impl(&_mh_execute_header, v9, v10, "[implSort] Count of CD objects is not same as that of the Ordering Map {allCDObjects#: %ld, orderingIndexMap#: %ld}", v11, 0x16u);
    }

    else
    {
    }
  }

  v70 = v6;
  if (v6)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
LABEL_66:

      if (qword_1009359B8 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_100006654(v57, qword_1009374B0);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        v56 = "[implSort] Objects are already in correct order. Will skip sorting";
LABEL_70:
        _os_log_impl(&_mh_execute_header, v53, v54, v56, v55, 2u);
      }

      goto LABEL_71;
    }
  }

  v14 = 0;
  v15 = 0;
  v75 = v5 & 0xC000000000000001;
  v72 = v5 & 0xFFFFFFFFFFFFFF8;
  v76 = isUniquelyReferenced_nonNull_native;
  v73 = v13;
  v74 = v5;
  v71 = 0;
  do
  {
    while (1)
    {
      if (v75)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v72 + 16))
        {
          goto LABEL_86;
        }

        v16 = *(v5 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_83;
      }

      v78 = v15 + 1;
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      v77 = v14;
      if (v18 || (objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) != 0))
      {
        v19 = [v18 parentList];
        goto LABEL_27;
      }

      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v19 = [v20 parentReminder];
LABEL_27:
        v21 = v19;
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v17;
        }

        goto LABEL_30;
      }

      if (qword_1009359B8 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100006654(v38, qword_1009374B0);
      v23 = v17;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        aBlock[0] = v67;
        *v41 = 136315138;
        v23 = v23;
        v42 = [v23 description];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = v43;
        isUniquelyReferenced_nonNull_native = v76;
        v47 = sub_10000668C(v46, v45, aBlock);

        *(v41 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v39, v40, "[implSort] Unexpected CD object in ordered set {object: %s}", v41, 0xCu);
        sub_10000607C(v67);
      }

      v22 = 0;
LABEL_30:
      v24 = v23;
      v25 = sub_1000FFFF4(v24, isUniquelyReferenced_nonNull_native);

      if (v22)
      {
        v5 = sub_1000FFFF4(v17, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v5 = 0;
      }

      v6 = [v17 objectID];
      v26 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v26;
      v81 = 0x8000000000000000;
      v28 = sub_100363FF4(v6);
      v29 = *(v26 + 16);
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_84;
      }

      v32 = v27;
      if (*(v26 + 24) >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100372EC8();
        }
      }

      else
      {
        sub_100369CA4(v31, isUniquelyReferenced_nonNull_native);
        v33 = sub_100363FF4(v6);
        if ((v32 & 1) != (v34 & 1))
        {
          sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v28 = v33;
      }

      isUniquelyReferenced_nonNull_native = v76;
      v14 = v5 | (v25 << 32);
      v5 = aBlock[0];
      if (v32)
      {
        *(*(aBlock[0] + 56) + 8 * v28) = v14;
      }

      else
      {
        *(aBlock[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
        *(*(v5 + 48) + 8 * v28) = v6;
        *(*(v5 + 56) + 8 * v28) = v14;

        v35 = *(v5 + 16);
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_85;
        }

        *(v5 + 16) = v37;
      }

      v81 = v5;

      if (v14 >= v77)
      {
        break;
      }

      ++v15;
      v5 = v74;
      if (v78 == v73)
      {
        goto LABEL_54;
      }

      v71 = 1;
    }

    ++v15;
    v5 = v74;
  }

  while (v78 != v73);
  if ((v71 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_54:
  if (a3 != 2 && (a3 & 1) != 0)
  {
    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_1009374B0);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "[implSort] LOOKATME: Pre-sorted but full CD mutableOrderedSet.sort still needed.", v51, 2u);
    }
  }

  if ([objc_opt_self() _forceDisableFullRemindersSorting])
  {

    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_1009374B0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "[implSort] _forceDisableFullRemindersSorting = YES so we will abort from running mutableOrderedSet.sort now.";
      goto LABEL_70;
    }

LABEL_71:

    v58 = 0;
  }

  else
  {
    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_1009374B0);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134217984;
      if (v70)
      {
        v64 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v64 = *(v72 + 16);
      }

      *(v63 + 4) = v64;

      _os_log_impl(&_mh_execute_header, v61, v62, "[implSort] Performing full CD mutableOrderedSet.sort {total.count: %ld}", v63, 0xCu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v65 = swift_allocObject();
    *(v65 + 16) = &v81;
    v6 = swift_allocObject();
    v58 = sub_1001010A8;
    v6[2] = sub_1001010A8;
    v6[3] = v65;
    aBlock[4] = sub_1001010B0;
    v80 = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005E2238;
    aBlock[3] = &unk_1008E5758;
    v66 = _Block_copy(aBlock);
    v5 = v80;

    [a1 sortWithOptions:16 usingComparator:v66];
    _Block_release(v66);
    LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

    if (v66)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }
  }

  return sub_10003E114(v58);
}

uint64_t sub_1000FF574(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  sub_100005EF0(a1, v38);
  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v22 = v37;
  v23 = [v37 identifier];
  if (v23)
  {
    v24 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v8 + 56))(v18, v25, 1, v7);
  sub_100100FB4(v18, v21);
  if (!(*(v8 + 48))(v21, 1, v7))
  {
    (*(v8 + 16))(v14, v21, v7);
    sub_1000050A4(v21, &unk_100939D90, "8\n\r");
    v27 = UUID.uuidString.getter();
    v29 = v28;
    v30 = *(v8 + 8);
    v30(v14, v7);
    v31 = [a4 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = UUID.uuidString.getter();
    v34 = v33;
    v30(v11, v7);
    if (v27 == v32 && v29 == v34)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {

        return 0;
      }
    }

    *a3 = 1;

    return 1;
  }

  sub_1000050A4(v21, &unk_100939D90, "8\n\r");
  return 0;
}

uint64_t sub_1000FF8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  swift_unknownObjectRetain();
  LOBYTE(a4) = v8(v10, a3, a4);
  sub_10000607C(v10);
  return a4 & 1;
}

uint64_t sub_1000FF958(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  swift_beginAccess();
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1002C6D64(a2, v6, v8, isUniquelyReferenced_nonNull_native);

  *(a4 + 16) = v12;
  return swift_endAccess();
}

id sub_1000FF9FC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v46 = a1;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NSFastEnumerationIterator();
  v40 = *(v41 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v41);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = [objc_allocWithZone(NSMutableOrderedSet) init];
  v42 = v2;
  v14 = [v2 orderedSet];
  NSOrderedSet.makeIterator()();

  NSFastEnumerationIterator.next()();
  if (v57)
  {
    v51 = (v8 + 48);
    v44 = (v8 + 32);
    v43 = (v8 + 8);
    v16 = &unk_10093F610;
    v17 = NSString_ptr;
    *&v15 = 138412290;
    v49 = v15;
    v50 = v6;
    do
    {
      sub_100005EE0(&v56, v55);
      sub_100005EF0(v55, v54);
      sub_1000060C8(0, v16, v17);
      if (swift_dynamicCast())
      {
        v18 = v53;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        UUID.init(uuidString:)();

        if ((*v51)(v6, 1, v7) != 1)
        {
          v29 = v45;
          (*v44)(v45, v6, v7);
          v30 = objc_allocWithZone(REMObjectID);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v32 = String._bridgeToObjectiveC()();
          v33 = [v30 initWithUUID:isa entityName:v32];

          [v48 addObject:v33];
          (*v43)(v29, v7);
          goto LABEL_4;
        }

        sub_1000050A4(v6, &unk_100939D90, "8\n\r");
      }

      if (qword_1009359B8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006654(v19, qword_1009374B0);
      sub_100005EF0(v55, v54);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = v13;
        v23 = v17;
        v24 = v7;
        v25 = v16;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = v49;
        sub_100005EF0(v54, &v53);
        if (swift_dynamicCast())
        {
          v28 = v52;
        }

        else
        {
          v28 = NSString.init(stringLiteral:)();
        }

        sub_10000607C(v54);
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&_mh_execute_header, v20, v21, "Invalid UUID found in REMCRMergeableOrderedSet<NSString> when converting it to REMCRMergeableOrderedSet<REMObjectID> {uuidString: %@}", v26, 0xCu);
        sub_1000050A4(v27, &unk_100938E70, &unk_100797230);

        sub_10000607C(v55);
        v16 = v25;
        v7 = v24;
        v17 = v23;
        v13 = v22;
        v6 = v50;
        goto LABEL_5;
      }

      sub_10000607C(v54);
LABEL_4:
      sub_10000607C(v55);
LABEL_5:
      NSFastEnumerationIterator.next()();
    }

    while (v57);
  }

  (*(v40 + 8))(v13, v41);
  v34 = [v42 replicaIDSource];
  v35 = objc_allocWithZone(REMCRMergeableOrderedSet);
  v36 = v48;
  v37 = [v35 initWithReplicaIDSource:v34 orderedSet:v48];

  return v37;
}

uint64_t sub_1000FFFF4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v41 - v20;
  v22 = [a1 identifier];
  if (v22)
  {
    v42 = v4;
    v23 = v5;
    v24 = v13;
    v25 = v8;
    v26 = v10;
    v27 = a1;
    v28 = v9;
    v29 = a2;
    v30 = v22;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    a2 = v29;
    v9 = v28;
    a1 = v27;
    v10 = v26;
    v8 = v25;
    v13 = v24;
    v5 = v23;
    v4 = v42;
    (*(v5 + 56))(v17, 0, 1, v42);
  }

  else
  {
    (*(v5 + 56))(v17, 1, 1, v4);
  }

  sub_100100FB4(v17, v21);
  if ((*(v5 + 48))(v21, 1, v4))
  {
    sub_1000050A4(v21, &unk_100939D90, "8\n\r");
    v31 = [a1 objectID];
    v32 = [v31 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = URL.hashValue.getter();
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v5 + 16))(v8, v21, v4);
    sub_1000050A4(v21, &unk_100939D90, "8\n\r");
    v34 = UUID.uuidString.getter();
    v36 = v35;
    (*(v5 + 8))(v8, v4);
    if (*(a2 + 16) && (v37 = sub_100005F4C(v34, v36), (v38 & 1) != 0))
    {
      v39 = v37;

      return *(*(a2 + 56) + 4 * v39);
    }

    else
    {
      v33 = String.hashValue.getter();
    }
  }

  return v33;
}

uint64_t sub_1001003AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100005EF0(a1, v26);
  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = v25;
  sub_100005EF0(a2, v26);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_12:
    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_1009374B0);
    v5 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v5, v19, "relationship contains non-REMCDObject objects", v20, 2u);
    }

    goto LABEL_21;
  }

  v6 = [v25 objectID];
  v7 = v6;
  v8 = *a3;
  if (!*(*a3 + 16) || (v9 = sub_100363FF4(v6), (v10 & 1) == 0) || (v11 = *(*(v8 + 56) + 8 * v9), v7, v12 = [v25 objectID], v7 = v12, v13 = *a3, !*(*a3 + 16)) || (v14 = sub_100363FF4(v12), (v15 & 1) == 0))
  {

    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_1009374B0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "could not get a sorting order from object", v24, 2u);
    }

LABEL_21:
    return 0;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  if (v11 == v16)
  {
    return 0;
  }

  if (v11 < v16)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_1001006A4(void *a1, uint64_t a2)
{
  v71 = a2;
  v3 = type metadata accessor for IndexSet();
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v66 - v13;
  v15 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v22 = &v66 - v21;
  if ([a1 lastObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
  }

  aBlock = v77;
  v73 = v78;
  if (*(&v78 + 1))
  {
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v69 = v76;
    v23 = [v76 identifier];
    if (v23)
    {
      v24 = v23;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    (*(v8 + 56))(v18, v25, 1, v7);
    sub_100100FB4(v18, v22);
    if ((*(v8 + 48))(v22, 1, v7))
    {

      v26 = &unk_100939D90;
      v27 = "8\n\r";
      p_aBlock = v22;
      goto LABEL_12;
    }

    (*(v8 + 16))(v14, v22, v7);
    sub_1000050A4(v22, &unk_100939D90, "8\n\r");
    v67 = UUID.uuidString.getter();
    v68 = v29;
    v66 = *(v8 + 8);
    v66(v14, v7);
    isEscapingClosureAtFileLocation = v71;
    if (*(v71 + 16) < 2uLL)
    {
    }

    else
    {
      v31 = qword_1009359B8;

      if (v31 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100006654(v32, qword_1009374B0);

      v33 = Logger.logObject.getter();
      v34 = isEscapingClosureAtFileLocation;
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = *(v34 + 16);

        _os_log_impl(&_mh_execute_header, v33, v35, "[implSort] pre-sort: we have more than 1 sorting hints but we currently only support to accomate 1 {count: %ld}", v36, 0xCu);
      }

      else
      {
      }

      isEscapingClosureAtFileLocation = v34;
    }

    v37 = sub_10031E854(isEscapingClosureAtFileLocation);
    if (!v37)
    {

      return;
    }

    v38 = v37;
    v39 = [v37 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = UUID.uuidString.getter();
    v42 = v41;
    v66(v11, v7);
    if (v67 == v40 && v68 == v42)
    {
    }

    else
    {
      isEscapingClosureAtFileLocation = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v48 = swift_allocObject();
        *(v48 + 16) = v38;
        v49 = swift_allocObject();
        v68 = sub_100101024;
        *(v49 + 16) = sub_100101024;
        *(v49 + 24) = v48;
        v74 = sub_10010102C;
        v75 = v49;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v73 = sub_1000FF8D8;
        *(&v73 + 1) = &unk_1008E56E0;
        v50 = _Block_copy(&aBlock);
        v40 = v75;
        v43 = v38;
        v51 = v38;

        v45 = [a1 indexOfObjectPassingTest:v50];
        _Block_release(v50);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v47 = v71;
          v46 = v68;
          goto LABEL_32;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    v43 = v38;
    v44 = [a1 count];
    v45 = v44 - 1;
    if (!__OFSUB__(v44, 1))
    {
      v46 = 0;
      v47 = v71;
LABEL_32:
      if (v45 == NSNotFound.getter() || v45 < 0 || v45 >= [a1 count])
      {
      }

      else
      {
        if (*(v47 + 16))
        {
          isEscapingClosureAtFileLocation = v43;
          v52 = sub_10002B924(v43);
          if (v53)
          {
            v43 = v46;
            v40 = *(*(v47 + 56) + 8 * v52);
            if (v40 < 0 || v40 >= [a1 count] || v45 == v40)
            {

LABEL_46:

              v54 = v43;
              goto LABEL_43;
            }

            IndexSet.init(integer:)();
            IndexSet._bridgeToObjectiveC()(v55);
            v57 = v56;
            (*(v70 + 8))(v6, v3);
            [a1 moveObjectsAtIndexes:v57 toIndex:v40];

            if (qword_1009359B8 == -1)
            {
LABEL_48:
              v58 = type metadata accessor for Logger();
              sub_100006654(v58, qword_1009374B0);
              v59 = isEscapingClosureAtFileLocation;
              v60 = isEscapingClosureAtFileLocation;
              v61 = Logger.logObject.getter();
              v62 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                *v63 = 138412802;
                *(v63 + 4) = v60;
                *v64 = v59;
                *(v63 + 12) = 2048;
                *(v63 + 14) = v45;
                *(v63 + 22) = 2048;
                *(v63 + 24) = v40;
                v65 = v60;
                _os_log_impl(&_mh_execute_header, v61, v62, "[implSort] pre-sort: moved object {objectID: %@, from: %ld, to: %ld}", v63, 0x20u);
                sub_1000050A4(v64, &unk_100938E70, &unk_100797230);
              }

              else
              {
              }

              goto LABEL_46;
            }

LABEL_53:
            swift_once();
            goto LABEL_48;
          }
        }
      }

      v54 = v46;
LABEL_43:
      sub_10003E114(v54);
      return;
    }

    __break(1u);
    goto LABEL_52;
  }

  v26 = &qword_100939ED0;
  v27 = &qword_100791B10;
  p_aBlock = &aBlock;
LABEL_12:
  sub_1000050A4(p_aBlock, v26, v27);
}

uint64_t sub_100100FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010102C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_100101058(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000060C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001010B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t StartMigrationRequest.archivePath.getter()
{
  v1 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v8 - v3);
  sub_100010364(v0, &v8 - v3, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if ((*(*(started - 8) + 48))(v4, 1, started) == 1)
  {
    sub_1000050A4(v4, &qword_1009374E0, &unk_1007A6940);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      result = *v4;
      v7 = v4[1];
      return result;
    }

    sub_100101968(v4, type metadata accessor for StartMigrationRequest.OneOf_Source);
  }

  return 0;
}

void (*StartMigrationRequest.archivePath.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_1000F5104(&qword_1009374E0, &unk_1007A6940) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_100010364(v2, v7, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v5[4] = started;
  v10 = *(started - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, started) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E0, &unk_1007A6940);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v8;
      v12 = v8[1];
      goto LABEL_12;
    }

    sub_100101968(v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_12:
  *v5 = v11;
  v5[1] = v12;
  return sub_100101444;
}

uint64_t StartMigrationRequest.credential.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  sub_100010364(v2, &v11 - v6, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if ((*(*(started - 8) + 48))(v7, 1, started) == 1)
  {
    sub_1000050A4(v7, &qword_1009374E0, &unk_1007A6940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1001158E8(v7, a1, type metadata accessor for StartMigrationRequest.Credential);
    }

    sub_100101968(v7, type metadata accessor for StartMigrationRequest.OneOf_Source);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  v10 = a1 + *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
  return UnknownStorage.init()();
}

uint64_t StartMigrationRequest.Credential.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  v1 = a1 + *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
  return UnknownStorage.init()();
}

uint64_t StartMigrationRequest.credential.setter(uint64_t a1)
{
  sub_1000050A4(v1, &qword_1009374E0, &unk_1007A6940);
  sub_1001158E8(a1, v1, type metadata accessor for StartMigrationRequest.Credential);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(started - 8) + 56);

  return v4(v1, 0, 1, started);
}

void (*StartMigrationRequest.credential.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1000F5104(&qword_1009374E0, &unk_1007A6940) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  started = type metadata accessor for StartMigrationRequest.Credential(0);
  v10 = *(*(started - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(started - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_100010364(v2, v8, &qword_1009374E0, &unk_1007A6940);
  v13 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E0, &unk_1007A6940);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 0xE000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xE000000000000000;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0xE000000000000000;
    *(v12 + 64) = 0;
    v15 = v12 + *(started + 36);
    UnknownStorage.init()();
    return sub_10010192C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
    goto LABEL_15;
  }

  sub_1001158E8(v8, v12, type metadata accessor for StartMigrationRequest.Credential);
  return sub_10010192C;
}

uint64_t sub_100101968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100101A0C(uint64_t a1, uint64_t a2)
{
  sub_1000050A4(v2, &qword_1009374E0, &unk_1007A6940);
  *v2 = a1;
  v2[1] = a2;
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(started - 8) + 56);

  return v6(v2, 0, 1, started);
}

void (*StartMigrationRequest.embeddedTestData.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_1000F5104(&qword_1009374E0, &unk_1007A6940) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_100010364(v2, v7, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v5[4] = started;
  v10 = *(started - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, started) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E0, &unk_1007A6940);
LABEL_12:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100101968(v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
    goto LABEL_12;
  }

  v11 = *v8;
  v12 = v8[1];
LABEL_13:
  *v5 = v11;
  v5[1] = v12;
  return sub_100101C4C;
}

void sub_100101C54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[1];

    sub_1000050A4(v8, &qword_1009374E0, &unk_1007A6940);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
    v10 = v2[1];
  }

  else
  {
    sub_1000050A4((*a1)[2], &qword_1009374E0, &unk_1007A6940);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t StartMigrationRequest.disableCache.setter(char a1)
{
  result = type metadata accessor for StartMigrationRequest(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t StartMigrationRequest.Credential.baseURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t StartMigrationRequest.Credential.baseURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t StartMigrationRequest.Credential.hostname.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t StartMigrationRequest.Credential.hostname.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t StartMigrationRequest.Credential.mmeAuthToken.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t StartMigrationRequest.Credential.mmeAuthToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t StartMigrationRequest.init()@<X0>(uint64_t a1@<X8>)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  (*(*(started - 8) + 56))(a1, 1, 1, started);
  v3 = type metadata accessor for StartMigrationRequest(0);
  *(a1 + *(v3 + 20)) = 0;
  v4 = a1 + *(v3 + 24);
  return UnknownStorage.init()();
}

uint64_t StartMigrationResponse.success.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  started = type metadata accessor for StartMigrationResponse(0);
  sub_100010364(v1 + *(started + 20), v6, &qword_1009374E8, &unk_100792DE0);
  v8 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000050A4(v6, &qword_1009374E8, &unk_100792DE0);
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    v9 = a1 + *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100101968(v6, type metadata accessor for StartMigrationResponse.OneOf_Result);
    goto LABEL_5;
  }

  return sub_1001158E8(v6, a1, type metadata accessor for StartMigrationResponse.Details);
}

void (*StartMigrationResponse.success.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_1009374E8, &unk_100792DE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  started = type metadata accessor for StartMigrationResponse.Details(0);
  v9 = *(*(started - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(started - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for StartMigrationResponse(0) + 20);
  *(v4 + 12) = v12;
  sub_100010364(v1 + v12, v7, &qword_1009374E8, &unk_100792DE0);
  v13 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1000050A4(v7, &qword_1009374E8, &unk_100792DE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(v7, v11, type metadata accessor for StartMigrationResponse.Details);
      return sub_1001025E4;
    }

    sub_100101968(v7, type metadata accessor for StartMigrationResponse.OneOf_Result);
  }

  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 12) = 0;
  *(v11 + 16) = 0;
  v15 = v11 + *(started + 32);
  UnknownStorage.init()();
  return sub_1001025E4;
}

uint64_t StartMigrationResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  started = type metadata accessor for StartMigrationResponse(0);
  sub_100010364(v1 + *(started + 20), v6, &qword_1009374E8, &unk_100792DE0);
  v8 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000050A4(v6, &qword_1009374E8, &unk_100792DE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1001158E8(v6, a1, type metadata accessor for StartMigrationResponse.Error);
    }

    sub_100101968(v6, type metadata accessor for StartMigrationResponse.OneOf_Result);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v10 = a1 + *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
  return UnknownStorage.init()();
}

uint64_t sub_1001027C8(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for StartMigrationResponse(0) + 20);
  sub_1000050A4(v2 + v5, &qword_1009374E8, &unk_100792DE0);
  sub_1001158E8(a1, v2 + v5, a2);
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(started - 8) + 56);

  return v7(v2 + v5, 0, 1, started);
}

void (*StartMigrationResponse.error.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_1009374E8, &unk_100792DE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  started = type metadata accessor for StartMigrationResponse.Error(0);
  v9 = *(*(started - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(started - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for StartMigrationResponse(0) + 20);
  *(v4 + 12) = v12;
  sub_100010364(v1 + v12, v7, &qword_1009374E8, &unk_100792DE0);
  v13 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1000050A4(v7, &qword_1009374E8, &unk_100792DE0);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    *(v11 + 16) = 0;
    v15 = v11 + *(started + 24);
    UnknownStorage.init()();
    return sub_100102ACC;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v7, type metadata accessor for StartMigrationResponse.OneOf_Result);
    goto LABEL_15;
  }

  sub_1001158E8(v7, v11, type metadata accessor for StartMigrationResponse.Error);
  return sub_100102ACC;
}

void sub_100102AFC(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_100115950(v11, v10, a3);
    sub_1000050A4(v12 + v9, &qword_1009374E8, &unk_100792DE0);
    sub_1001158E8(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    sub_100101968(v11, a5);
  }

  else
  {
    sub_1000050A4(v12 + v9, &qword_1009374E8, &unk_100792DE0);
    sub_1001158E8(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

uint64_t sub_100102E88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100102F24(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t StartMigrationResponse.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  started = type metadata accessor for StartMigrationResponse(0);
  v3 = started[5];
  v4 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[started[6]];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &a1[started[7]];
  return UnknownStorage.init()();
}

uint64_t MigrateRequest.user.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  sub_100010364(v2, &v11 - v6, &qword_1009374F0, &qword_1007A2380);
  v8 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &qword_1009374F0, &qword_1007A2380);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1001158E8(v7, a1, type metadata accessor for MigrateRequest.User);
    }

    sub_100101968(v7, type metadata accessor for MigrateRequest.OneOf_Source);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v9 = a1 + *(type metadata accessor for MigrateRequest.User(0) + 24);
  return UnknownStorage.init()();
}

uint64_t MigrateRequest.User.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for MigrateRequest.User(0) + 24);
  return UnknownStorage.init()();
}

uint64_t MigrateRequest.user.setter(uint64_t a1)
{
  sub_1000050A4(v1, &qword_1009374F0, &qword_1007A2380);
  sub_1001158E8(a1, v1, type metadata accessor for MigrateRequest.User);
  v3 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*MigrateRequest.user.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_1009374F0, &qword_1007A2380) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for MigrateRequest.User(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_100010364(v1, v7, &qword_1009374F0, &qword_1007A2380);
  v12 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_1000050A4(v7, &qword_1009374F0, &qword_1007A2380);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1001158E8(v7, v11, type metadata accessor for MigrateRequest.User);
      return sub_100103564;
    }

    sub_100101968(v7, type metadata accessor for MigrateRequest.OneOf_Source);
  }

  *v11 = 0;
  *(v11 + 8) = 0;
  v14 = v11 + *(v8 + 24);
  UnknownStorage.init()();
  return sub_100103564;
}

void sub_1001035A0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v15 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_100115950((*a1)[3], v12, a5);
    sub_1000050A4(v15, a3, a4);
    sub_1001158E8(v12, v15, a5);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v15, 0, 1, v10);
    sub_100101968(v13, a6);
  }

  else
  {
    sub_1000050A4(**a1, a3, a4);
    sub_1001158E8(v13, v15, a5);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v15, 0, 1, v10);
  }

  free(v13);
  free(v12);
  free(v14);

  free(v9);
}

uint64_t MigrateRequest.archivePath.getter()
{
  v1 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v8 - v3);
  sub_100010364(v0, &v8 - v3, &qword_1009374F0, &qword_1007A2380);
  v5 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1000050A4(v4, &qword_1009374F0, &qword_1007A2380);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = *v4;
      v7 = v4[1];
      return result;
    }

    sub_100101968(v4, type metadata accessor for MigrateRequest.OneOf_Source);
  }

  return 0;
}

void (*MigrateRequest.archivePath.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_1000F5104(&qword_1009374F0, &qword_1007A2380) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_100010364(v2, v7, &qword_1009374F0, &qword_1007A2380);
  v9 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000050A4(v8, &qword_1009374F0, &qword_1007A2380);
LABEL_12:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v8, type metadata accessor for MigrateRequest.OneOf_Source);
    goto LABEL_12;
  }

  v11 = *v8;
  v12 = v8[1];
LABEL_13:
  *v5 = v11;
  v5[1] = v12;
  return sub_1001039C4;
}

uint64_t sub_100103A08(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = v4;
  v10 = sub_1000F5104(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v17 - v12);
  sub_100010364(v9, &v17 - v12, a1, a2);
  v14 = a3(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_1000050A4(v13, a1, a2);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      result = *v13;
      v16 = v13[1];
      return result;
    }

    sub_100101968(v13, a4);
  }

  return 0;
}

uint64_t sub_100103B34(uint64_t a1, uint64_t a2)
{
  sub_1000050A4(v2, &qword_1009374F0, &qword_1007A2380);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*MigrateRequest.embeddedTestData.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_1000F5104(&qword_1009374F0, &qword_1007A2380) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_100010364(v2, v7, &qword_1009374F0, &qword_1007A2380);
  v9 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000050A4(v8, &qword_1009374F0, &qword_1007A2380);
LABEL_12:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100101968(v8, type metadata accessor for MigrateRequest.OneOf_Source);
    goto LABEL_12;
  }

  v11 = *v8;
  v12 = v8[1];
LABEL_13:
  *v5 = v11;
  v5[1] = v12;
  return sub_100103D74;
}

void sub_100103D7C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[1];

    sub_1000050A4(v8, &qword_1009374F0, &qword_1007A2380);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
    v10 = v2[1];
  }

  else
  {
    sub_1000050A4((*a1)[2], &qword_1009374F0, &qword_1007A2380);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t MigrateRequest.options.setter(int a1)
{
  result = type metadata accessor for MigrateRequest(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t MigrateRequest.userInitiated.setter(char a1)
{
  result = type metadata accessor for MigrateRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t MigrateRequest.simulatedError.setter(int a1)
{
  result = type metadata accessor for MigrateRequest(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10010407C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100104118(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static MigrateRequest.User.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(type metadata accessor for MigrateRequest.User(0) + 24);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t MigrateRequest.Option.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_100794E00[result];
  }

  return result;
}

uint64_t sub_1001042E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10011790C(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_100104314()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_100794E00[result];
  }

  return result;
}

uint64_t sub_100104334@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10011790C(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

void sub_10010436C(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_100794E00[v2];
  }

  *a1 = v2;
}

uint64_t sub_100104390(uint64_t a1, uint64_t a2)
{
  v4 = sub_100123B74();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1001043DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_100794E00[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_100794E00[v3];
  }

  return v2 == v3;
}

uint64_t MigrateRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for MigrateRequest(0);
  *(a1 + v3[5]) = 0;
  *(a1 + v3[6]) = 0;
  *(a1 + v3[7]) = 0;
  v4 = a1 + v3[8];
  return UnknownStorage.init()();
}

uint64_t MigrateResponse.success.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for MigrateResponse(0);
  sub_100010364(v1 + *(v7 + 20), v6, &qword_100937500, &qword_100792DF0);
  v8 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000050A4(v6, &qword_100937500, &qword_100792DF0);
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    v9 = a1 + *(type metadata accessor for MigrateResponse.Details(0) + 32);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100101968(v6, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_5;
  }

  return sub_1001158E8(v6, a1, type metadata accessor for MigrateResponse.Details);
}

uint64_t sub_1001048DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1(0) + 32);
  return UnknownStorage.init()();
}

uint64_t sub_100104940(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for MigrateResponse(0) + 20);
  sub_1000050A4(v2 + v5, &qword_100937500, &qword_100792DF0);
  sub_1001158E8(a1, v2 + v5, a2);
  v6 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

void (*MigrateResponse.success.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_100937500, &qword_100792DF0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for MigrateResponse.Details(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for MigrateResponse(0) + 20);
  *(v4 + 12) = v12;
  sub_100010364(v1 + v12, v7, &qword_100937500, &qword_100792DF0);
  v13 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1000050A4(v7, &qword_100937500, &qword_100792DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(v7, v11, type metadata accessor for MigrateResponse.Details);
      return sub_100104C44;
    }

    sub_100101968(v7, type metadata accessor for MigrateResponse.OneOf_Result);
  }

  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 12) = 0;
  *(v11 + 16) = 0;
  v15 = v11 + *(v8 + 32);
  UnknownStorage.init()();
  return sub_100104C44;
}

void sub_100104C74(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_100115950(v11, v10, a3);
    sub_1000050A4(v12 + v9, &qword_100937500, &qword_100792DF0);
    sub_1001158E8(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    sub_100101968(v11, a5);
  }

  else
  {
    sub_1000050A4(v12 + v9, &qword_100937500, &qword_100792DF0);
    sub_1001158E8(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

uint64_t MigrateResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for MigrateResponse(0);
  sub_100010364(v1 + *(v7 + 20), v6, &qword_100937500, &qword_100792DF0);
  v8 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000050A4(v6, &qword_100937500, &qword_100792DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1001158E8(v6, a1, type metadata accessor for MigrateResponse.Error);
    }

    sub_100101968(v6, type metadata accessor for MigrateResponse.OneOf_Result);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v10 = a1 + *(type metadata accessor for MigrateResponse.Error(0) + 24);
  return UnknownStorage.init()();
}

uint64_t sub_100104F74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1(0) + 24);
  return UnknownStorage.init()();
}

void (*MigrateResponse.error.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_100937500, &qword_100792DF0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for MigrateResponse.Error(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for MigrateResponse(0) + 20);
  *(v4 + 12) = v12;
  sub_100010364(v1 + v12, v7, &qword_100937500, &qword_100792DF0);
  v13 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1000050A4(v7, &qword_100937500, &qword_100792DF0);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    *(v11 + 16) = 0;
    v15 = v11 + *(v8 + 24);
    UnknownStorage.init()();
    return sub_100105210;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v7, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_15;
  }

  sub_1001158E8(v7, v11, type metadata accessor for MigrateResponse.Error);
  return sub_100105210;
}

uint64_t MigrateResponse.nextStep.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for MigrateResponse(0);
  sub_100010364(v1 + *(v7 + 32), v6, &qword_100937508, &qword_100792DF8);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v9 = *(*(Step - 8) + 48);
  if (v9(v6, 1, Step) != 1)
  {
    return sub_1001158E8(v6, a1, type metadata accessor for MigrateResponse.NextStep);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 4) = 0;
  v10 = a1 + *(Step + 36);
  UnknownStorage.init()();
  result = (v9)(v6, 1, Step);
  if (result != 1)
  {
    return sub_1000050A4(v6, &qword_100937508, &qword_100792DF8);
  }

  return result;
}

uint64_t MigrateResponse.NextStep.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 4) = 0;
  v1 = a1 + *(type metadata accessor for MigrateResponse.NextStep(0) + 36);
  return UnknownStorage.init()();
}

uint64_t MigrateResponse.nextStep.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MigrateResponse(0) + 32);
  sub_1000050A4(v1 + v3, &qword_100937508, &qword_100792DF8);
  sub_1001158E8(a1, v1 + v3, type metadata accessor for MigrateResponse.NextStep);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v5 = *(*(Step - 8) + 56);

  return v5(v1 + v3, 0, 1, Step);
}

void (*MigrateResponse.nextStep.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_100937508, &qword_100792DF8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v4[2] = Step;
  v9 = *(Step - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for MigrateResponse(0) + 32);
  *(v4 + 12) = v14;
  sub_100010364(v1 + v14, v7, &qword_100937508, &qword_100792DF8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, Step) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 4) = 0;
    v16 = v13 + *(Step + 36);
    UnknownStorage.init()();
    if (v15(v7, 1, Step) != 1)
    {
      sub_1000050A4(v7, &qword_100937508, &qword_100792DF8);
    }
  }

  else
  {
    sub_1001158E8(v7, v13, type metadata accessor for MigrateResponse.NextStep);
  }

  return sub_1001056B8;
}

void sub_1001056B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_100115950((*a1)[5], v4, type metadata accessor for MigrateResponse.NextStep);
    sub_1000050A4(v9 + v3, &qword_100937508, &qword_100792DF8);
    sub_1001158E8(v4, v9 + v3, type metadata accessor for MigrateResponse.NextStep);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_100101968(v5, type metadata accessor for MigrateResponse.NextStep);
  }

  else
  {
    sub_1000050A4(v9 + v3, &qword_100937508, &qword_100792DF8);
    sub_1001158E8(v5, v9 + v3, type metadata accessor for MigrateResponse.NextStep);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL MigrateResponse.hasNextStep.getter()
{
  v1 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for MigrateResponse(0);
  sub_100010364(v0 + *(v5 + 32), v4, &qword_100937508, &qword_100792DF8);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v7 = (*(*(Step - 8) + 48))(v4, 1, Step) != 1;
  sub_1000050A4(v4, &qword_100937508, &qword_100792DF8);
  return v7;
}

Swift::Void __swiftcall MigrateResponse.clearNextStep()()
{
  v1 = *(type metadata accessor for MigrateResponse(0) + 32);
  sub_1000050A4(v0 + v1, &qword_100937508, &qword_100792DF8);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v3 = *(*(Step - 8) + 56);

  v3(v0 + v1, 1, 1, Step);
}

uint64_t sub_1001059B4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_100105A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_100105AC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100105B5C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100105E40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100105EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t MigrateResponse.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for MigrateResponse(0);
  v3 = v2[5];
  v4 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &a1[v2[7]];
  UnknownStorage.init()();
  v7 = v2[8];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v9 = *(*(Step - 8) + 56);

  return v9(&a1[v7], 1, 1, Step);
}

uint64_t UnmigrateRequest.Option.rawValue.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100106134@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_10010614C()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_100106164@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_100106180(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

Swift::Int sub_10010619C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100106208(uint64_t a1, uint64_t a2)
{
  v4 = sub_100123B20();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100106254()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_1001062BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

uint64_t UnmigrateRequest.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for UnmigrateRequest(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_100106384(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a2;
  *a2 = a1;
}

uint64_t sub_100106434@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

uint64_t UnmigrateResponse.success.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  sub_100010364(v2, &v11 - v6, &qword_100937510, &qword_100792E00);
  v8 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &qword_100937510, &qword_100792E00);
LABEL_5:
    *a1 = 0;
    v9 = a1 + *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100101968(v7, type metadata accessor for UnmigrateResponse.OneOf_Result);
    goto LABEL_5;
  }

  return sub_1001158E8(v7, a1, type metadata accessor for UnmigrateResponse.Details);
}

uint64_t UnmigrateResponse.Details.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
  return UnknownStorage.init()();
}

uint64_t UnmigrateResponse.success.setter(uint64_t a1)
{
  sub_1000050A4(v1, &qword_100937510, &qword_100792E00);
  sub_1001158E8(a1, v1, type metadata accessor for UnmigrateResponse.Details);
  v3 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*UnmigrateResponse.success.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_100937510, &qword_100792E00) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for UnmigrateResponse.Details(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_100010364(v1, v7, &qword_100937510, &qword_100792E00);
  v12 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_1000050A4(v7, &qword_100937510, &qword_100792E00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(v7, v11, type metadata accessor for UnmigrateResponse.Details);
      return sub_10010695C;
    }

    sub_100101968(v7, type metadata accessor for UnmigrateResponse.OneOf_Result);
  }

  *v11 = 0;
  v14 = v11 + *(v8 + 20);
  UnknownStorage.init()();
  return sub_10010695C;
}

uint64_t UnmigrateResponse.error.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  sub_100010364(v2, &v11 - v6, &qword_100937510, &qword_100792E00);
  v8 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &qword_100937510, &qword_100792E00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1001158E8(v7, a1, type metadata accessor for UnmigrateResponse.Error);
    }

    sub_100101968(v7, type metadata accessor for UnmigrateResponse.OneOf_Result);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v10 = a1 + *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
  return UnknownStorage.init()();
}

uint64_t UnmigrateResponse.error.setter(uint64_t a1)
{
  sub_1000050A4(v1, &qword_100937510, &qword_100792E00);
  sub_1001158E8(a1, v1, type metadata accessor for UnmigrateResponse.Error);
  v3 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*UnmigrateResponse.error.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_100937510, &qword_100792E00) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for UnmigrateResponse.Error(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_100010364(v1, v7, &qword_100937510, &qword_100792E00);
  v12 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_1000050A4(v7, &qword_100937510, &qword_100792E00);
LABEL_15:
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v14 = v11 + *(v8 + 20);
    UnknownStorage.init()();
    return sub_100106E00;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v7, type metadata accessor for UnmigrateResponse.OneOf_Result);
    goto LABEL_15;
  }

  sub_1001158E8(v7, v11, type metadata accessor for UnmigrateResponse.Error);
  return sub_100106E00;
}

void sub_100106E3C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v15 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_100115950((*a1)[3], v12, a5);
    sub_1000050A4(v15, a3, a4);
    sub_1001158E8(v12, v15, a5);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v15, 0, 1, v10);
    sub_100101968(v13, a6);
  }

  else
  {
    sub_1000050A4(**a1, a3, a4);
    sub_1001158E8(v13, v15, a5);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v15, 0, 1, v10);
  }

  free(v13);
  free(v12);
  free(v14);

  free(v9);
}

uint64_t UnmigrateResponse.logs.getter()
{
  v1 = (v0 + *(type metadata accessor for UnmigrateResponse(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UnmigrateResponse.logs.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UnmigrateResponse(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t static UnmigrateResponse.Details.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001071B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100107254(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t UnmigrateResponse.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for UnmigrateResponse(0);
  v4 = (a1 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = a1 + *(v3 + 24);
  return UnknownStorage.init()();
}

uint64_t EmptyRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EmptyRequest.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BasicResponse.result.getter()
{
  v1 = *v0;
  sub_100117B24(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t BasicResponse.result.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_100117B44(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t BasicResponse.success.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *v0;
  v4 = v0[1];
  sub_100117B3C();
  return v3;
}

void (*BasicResponse.success.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = v1[1];
  *(v3 + 32) = v6;
  v7 = *(v1 + 16);
  *(v3 + 40) = v7;
  if (v7 == 255 || (v7 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    sub_100117B3C();
  }

  *v4 = v5;
  v4[1] = v6;
  return sub_10010768C;
}

uint64_t BasicResponse.error.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *v0;
  v3 = v0[1];
  sub_100117B3C();
  return v2;
}

void (*BasicResponse.error.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = v1[1];
  *(v3 + 32) = v6;
  v7 = *(v1 + 16);
  *(v3 + 40) = v7;
  if (v7 == 255 || (v7 & 1) == 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    sub_100117B3C();
  }

  *v4 = v5;
  v4[1] = v6;
  return sub_1001077AC;
}

void sub_1001077B4(uint64_t **a1, char a2, char a3)
{
  v4 = *a1;
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = *(*a1 + 40);
  v9 = (*a1)[3];
  v8 = (*a1)[4];
  v10 = (*a1)[2];
  if (a2)
  {
    v11 = (*a1)[1];

    sub_100117B44(v9, v8, v7);
    *v10 = v6;
    *(v10 + 8) = v5;
    *(v10 + 16) = a3;
    v12 = v4[1];
  }

  else
  {
    sub_100117B44((*a1)[3], v8, v7);
    *v10 = v6;
    *(v10 + 8) = v5;
    *(v10 + 16) = a3;
  }

  free(v4);
}

uint64_t BasicResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v1 = a1 + *(type metadata accessor for BasicResponse(0) + 20);
  return UnknownStorage.init()();
}

uint64_t PingRequest.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PingRequest.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_100107A34@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_100107B30()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static StartMigrationRequest._protobuf_nameMap);
  sub_100006654(v0, static StartMigrationRequest._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "archivePath";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "credential";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "embeddedTestData";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "disableCache";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t StartMigrationRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_100108488(a1, v5, a2, a3, 2);
      }

      else if (result == 4)
      {
        v11 = *(type metadata accessor for StartMigrationRequest(0) + 20);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      sub_100108488(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      sub_100107ECC(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_100107ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  started = type metadata accessor for StartMigrationRequest.Credential(0);
  v6 = *(started - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(started);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = sub_1000F5104(&qword_1009387A0, &qword_100794DC8);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = started;
  v30 = started;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_100010364(a1, v14, &qword_1009374E0, &unk_1007A6940);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1000050A4(v14, &qword_1009374E0, &unk_1007A6940);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1001158E8(v14, v22, type metadata accessor for StartMigrationRequest.OneOf_Source);
    sub_1001158E8(v22, v20, type metadata accessor for StartMigrationRequest.OneOf_Source);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000050A4(v28, &qword_1009387A0, &qword_100794DC8);
      v35 = v44;
      sub_1001158E8(v20, v44, type metadata accessor for StartMigrationRequest.Credential);
      sub_1001158E8(v35, v28, type metadata accessor for StartMigrationRequest.Credential);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_100101968(v20, type metadata accessor for StartMigrationRequest.OneOf_Source);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_100117BC4(&qword_100937620, type metadata accessor for StartMigrationRequest.Credential);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return sub_1000050A4(v28, &qword_1009387A0, &qword_100794DC8);
  }

  sub_100010364(v28, v36, &qword_1009387A0, &qword_100794DC8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1000050A4(v28, &qword_1009387A0, &qword_100794DC8);
    return sub_1000050A4(v36, &qword_1009387A0, &qword_100794DC8);
  }

  else
  {
    v39 = v43;
    sub_1001158E8(v36, v43, type metadata accessor for StartMigrationRequest.Credential);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v28, &qword_1009387A0, &qword_100794DC8);
    v40 = v42;
    sub_1000050A4(v42, &qword_1009374E0, &unk_1007A6940);
    sub_1001158E8(v39, v40, type metadata accessor for StartMigrationRequest.Credential);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_100108488(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v19 = 0;
  v20 = 0;
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v5)
  {
  }

  if (v20)
  {
    v21 = v20;
    v18 = a5;
    v17 = v19;
    sub_100010364(a2, v11, &qword_1009374E0, &unk_1007A6940);
    started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
    v14 = *(started - 8);
    v15 = (*(v14 + 48))(v11, 1, started);
    sub_1000050A4(v11, &qword_1009374E0, &unk_1007A6940);
    if (v15 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(a2, &qword_1009374E0, &unk_1007A6940);
    v16 = v21;
    *a2 = v17;
    a2[1] = v16;
    swift_storeEnumTagMultiPayload();
    return (*(v14 + 56))(a2, 0, 1, started);
  }

  return result;
}

uint64_t StartMigrationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  sub_100010364(v6, &v20 - v12, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if ((*(*(started - 8) + 48))(v13, 1, started) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100108A54(v6, a1, a2, a3);
        result = sub_100101968(v13, type metadata accessor for StartMigrationRequest.OneOf_Source);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        sub_100101968(v13, type metadata accessor for StartMigrationRequest.OneOf_Source);
        result = sub_10010C950(v6, a1, a2, a3, &qword_1009374E0, &unk_1007A6940, type metadata accessor for StartMigrationRequest.OneOf_Source, type metadata accessor for StartMigrationRequest.OneOf_Source);
        if (v4)
        {
          return result;
        }
      }
    }

    else
    {
      sub_100101968(v13, type metadata accessor for StartMigrationRequest.OneOf_Source);
      result = sub_1001088E0(v6);
      if (v4)
      {
        return result;
      }
    }

    v5 = v4;
  }

  v17 = type metadata accessor for StartMigrationRequest(0);
  if (*(v6 + *(v17 + 20)) == 1)
  {
    v18 = v17;
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v17 = v18;
  }

  v19 = v6 + *(v17 + 24);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001088E0(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v10 - v4);
  sub_100010364(a1, &v10 - v4, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if ((*(*(started - 8) + 48))(v5, 1, started) == 1)
  {
    sub_1000050A4(v5, &qword_1009374E0, &unk_1007A6940);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v5;
    v8 = v5[1];
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  result = sub_100101968(v5, type metadata accessor for StartMigrationRequest.OneOf_Source);
  __break(1u);
  return result;
}

uint64_t sub_100108A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  started = type metadata accessor for StartMigrationRequest.Credential(0);
  v10 = *(*(started - 8) + 64);
  __chkstk_darwin(started);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010364(a1, v8, &qword_1009374E0, &unk_1007A6940);
  v13 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E0, &unk_1007A6940);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for StartMigrationRequest.Credential);
    sub_100117BC4(&qword_100937620, type metadata accessor for StartMigrationRequest.Credential);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for StartMigrationRequest.Credential);
  }

  result = sub_100101968(v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
  __break(1u);
  return result;
}

uint64_t sub_100108CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  (*(*(started - 8) + 56))(a2, 1, 1, started);
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 0;
  return UnknownStorage.init()();
}

Swift::Void (__swiftcall *sub_100108D4C(uint64_t a1, uint64_t a2))()
{
  result = REMCDList.cleanUpAfterLocalObjectMerge();
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_100108DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938710, type metadata accessor for StartMigrationRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100108E40(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937608, type metadata accessor for StartMigrationRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100108EAC()
{
  sub_100117BC4(&qword_100937608, type metadata accessor for StartMigrationRequest);

  return Message.hash(into:)();
}

uint64_t sub_100108F50()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static StartMigrationRequest.Credential._protobuf_nameMap);
  sub_100006654(v0, static StartMigrationRequest.Credential._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dsID";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "baseURL";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "hostname";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mmeAuthToken";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "partition";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t StartMigrationRequest.Credential.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else
    {
      if (result == 3 || result == 4)
      {
        goto LABEL_2;
      }

      if (result == 5)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }
  }
}

uint64_t StartMigrationRequest.Credential.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v10 = v0[7];
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
        {
          if (!*(v0 + 16) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
          {
            v12 = v0 + *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100109480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  v2 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

Swift::Void (__swiftcall *sub_1001094B8(uint64_t a1, uint64_t a2))()
{
  result = REMCDList.cleanUpAfterLocalObjectMerge();
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_10010950C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938708, type metadata accessor for StartMigrationRequest.Credential);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001095AC(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937620, type metadata accessor for StartMigrationRequest.Credential);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100109618()
{
  sub_100117BC4(&qword_100937620, type metadata accessor for StartMigrationRequest.Credential);

  return Message.hash(into:)();
}

uint64_t sub_1001096BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static StartMigrationResponse._protobuf_nameMap);
  sub_100006654(v0, static StartMigrationResponse._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "state";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "success";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "error";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "log";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t StartMigrationResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_10010A008(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        v11 = v5 + *(type metadata accessor for StartMigrationResponse(0) + 24);
LABEL_12:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_12;
      }

      if (result == 2)
      {
        sub_100109A3C(v5, a1, a2, a3);
      }
    }
  }
}

uint64_t sub_100109A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  started = type metadata accessor for StartMigrationResponse.Details(0);
  v6 = *(started - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(started);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_1000F5104(&qword_100938788, &qword_100794DB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = started;
  v30 = started;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for StartMigrationResponse(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_100010364(a1 + v32, v14, &qword_1009374E8, &unk_100792DE0);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1000050A4(v14, &qword_1009374E8, &unk_100792DE0);
    v34 = v15;
    v35 = v53;
  }

  else
  {
    sub_1001158E8(v14, v22, type metadata accessor for StartMigrationResponse.OneOf_Result);
    sub_1001158E8(v22, v20, type metadata accessor for StartMigrationResponse.OneOf_Result);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100101968(v20, type metadata accessor for StartMigrationResponse.OneOf_Result);
      v35 = v53;
    }

    else
    {
      sub_1000050A4(v28, &qword_100938788, &qword_100794DB0);
      v36 = v20;
      v37 = v49;
      sub_1001158E8(v36, v49, type metadata accessor for StartMigrationResponse.Details);
      sub_1001158E8(v37, v28, type metadata accessor for StartMigrationResponse.Details);
      v35 = v53;
      v31(v28, 0, 1, v53);
    }
  }

  v38 = v51;
  sub_100117BC4(&qword_100937650, type metadata accessor for StartMigrationResponse.Details);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return sub_1000050A4(v28, &qword_100938788, &qword_100794DB0);
  }

  sub_100010364(v28, v38, &qword_100938788, &qword_100794DB0);
  if ((*(v50 + 48))(v38, 1, v35) == 1)
  {
    sub_1000050A4(v28, &qword_100938788, &qword_100794DB0);
    return sub_1000050A4(v38, &qword_100938788, &qword_100794DB0);
  }

  else
  {
    v41 = v48;
    sub_1001158E8(v38, v48, type metadata accessor for StartMigrationResponse.Details);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v28, &qword_100938788, &qword_100794DB0);
    v42 = v47;
    v43 = v45;
    sub_1000050A4(v47 + v45, &qword_1009374E8, &unk_100792DE0);
    sub_1001158E8(v41, v42 + v43, type metadata accessor for StartMigrationResponse.Details);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10010A008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  started = type metadata accessor for StartMigrationResponse.Error(0);
  v6 = *(started - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(started);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_1000F5104(&qword_100938790, &qword_100794DB8);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = started;
  v30 = started;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for StartMigrationResponse(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_100010364(a1 + v32, v14, &qword_1009374E8, &unk_100792DE0);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1000050A4(v14, &qword_1009374E8, &unk_100792DE0);
    v34 = v15;
  }

  else
  {
    sub_1001158E8(v14, v22, type metadata accessor for StartMigrationResponse.OneOf_Result);
    sub_1001158E8(v22, v20, type metadata accessor for StartMigrationResponse.OneOf_Result);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000050A4(v28, &qword_100938790, &qword_100794DB8);
      v35 = v20;
      v36 = v49;
      sub_1001158E8(v35, v49, type metadata accessor for StartMigrationResponse.Error);
      sub_1001158E8(v36, v28, type metadata accessor for StartMigrationResponse.Error);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_100101968(v20, type metadata accessor for StartMigrationResponse.OneOf_Result);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_100117BC4(&qword_100937668, type metadata accessor for StartMigrationResponse.Error);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return sub_1000050A4(v28, &qword_100938790, &qword_100794DB8);
  }

  sub_100010364(v28, v38, &qword_100938790, &qword_100794DB8);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_1000050A4(v28, &qword_100938790, &qword_100794DB8);
    return sub_1000050A4(v38, &qword_100938790, &qword_100794DB8);
  }

  else
  {
    v41 = v48;
    sub_1001158E8(v38, v48, type metadata accessor for StartMigrationResponse.Error);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v28, &qword_100938790, &qword_100794DB8);
    v42 = v47;
    v43 = v45;
    sub_1000050A4(v47 + v45, &qword_1009374E8, &unk_100792DE0);
    sub_1001158E8(v41, v42 + v43, type metadata accessor for StartMigrationResponse.Error);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t StartMigrationResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = *v3;
  v14 = v3[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  started = type metadata accessor for StartMigrationResponse(0);
  sub_100010364(v3 + started[5], v12, &qword_1009374E8, &unk_100792DE0);
  v18 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
  {
    v19 = v5;
  }

  else
  {
    v19 = v5;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10010AA20(v3, a1, a2, a3);
    }

    else
    {
      sub_10010A7DC(v3, a1, a2, a3);
    }

    result = sub_100101968(v12, type metadata accessor for StartMigrationResponse.OneOf_Result);
    if (v5)
    {
      return result;
    }
  }

  v20 = (v3 + started[6]);
  v21 = *v20;
  v22 = v20[1];
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v19))
  {
    v24 = v3 + started[7];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10010A7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  started = type metadata accessor for StartMigrationResponse.Details(0);
  v10 = *(*(started - 8) + 64);
  __chkstk_darwin(started);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StartMigrationResponse(0);
  sub_100010364(a1 + *(v13 + 20), v8, &qword_1009374E8, &unk_100792DE0);
  v14 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E8, &unk_100792DE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for StartMigrationResponse.Details);
    sub_100117BC4(&qword_100937650, type metadata accessor for StartMigrationResponse.Details);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for StartMigrationResponse.Details);
  }

  result = sub_100101968(v8, type metadata accessor for StartMigrationResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_10010AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  started = type metadata accessor for StartMigrationResponse.Error(0);
  v10 = *(*(started - 8) + 64);
  __chkstk_darwin(started);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StartMigrationResponse(0);
  sub_100010364(a1 + *(v13 + 20), v8, &qword_1009374E8, &unk_100792DE0);
  v14 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E8, &unk_100792DE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for StartMigrationResponse.Error);
    sub_100117BC4(&qword_100937668, type metadata accessor for StartMigrationResponse.Error);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for StartMigrationResponse.Error);
  }

  result = sub_100101968(v8, type metadata accessor for StartMigrationResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_10010ACB0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = a1[5];
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  (*(*(started - 8) + 56))(&a2[v4], 1, 1, started);
  v6 = a1[7];
  v7 = &a2[a1[6]];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  return UnknownStorage.init()();
}

Swift::Void (__swiftcall *sub_10010AD3C(uint64_t a1, uint64_t a2))()
{
  result = REMCDList.cleanUpAfterLocalObjectMerge();
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_10010AD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938700, type metadata accessor for StartMigrationResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010AE30(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937638, type metadata accessor for StartMigrationResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010AE9C()
{
  sub_100117BC4(&qword_100937638, type metadata accessor for StartMigrationResponse);

  return Message.hash(into:)();
}

uint64_t sub_10010AF40()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static StartMigrationResponse.Details._protobuf_nameMap);
  sub_100006654(v0, static StartMigrationResponse.Details._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "time_elapsed";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_observer";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "lists_migrated";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "reminders_migrated";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

Swift::Void (__swiftcall *sub_10010B244(uint64_t a1, uint64_t a2))()
{
  result = REMCDList.cleanUpAfterLocalObjectMerge();
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_10010B280(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386F8, type metadata accessor for StartMigrationResponse.Details);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010B320(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937650, type metadata accessor for StartMigrationResponse.Details);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010B38C()
{
  sub_100117BC4(&qword_100937650, type metadata accessor for StartMigrationResponse.Details);

  return Message.hash(into:)();
}

uint64_t sub_10010B514(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386F0, type metadata accessor for StartMigrationResponse.Error);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010B5B4(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937668, type metadata accessor for StartMigrationResponse.Error);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010B620()
{
  sub_100117BC4(&qword_100937668, type metadata accessor for StartMigrationResponse.Error);

  return Message.hash(into:)();
}

uint64_t sub_10010B6CC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateRequest._protobuf_nameMap);
  sub_100006654(v0, static MigrateRequest._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007912F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "user";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "archivePath";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "embeddedTestData";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "options";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "user_initiated";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "simulated_error";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t MigrateRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v12 = *(type metadata accessor for MigrateRequest(0) + 20);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          v13 = *(type metadata accessor for MigrateRequest(0) + 24);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 6:
          v11 = *(type metadata accessor for MigrateRequest(0) + 28);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_10010BB58(v5, a1, a2, a3);
          break;
        case 2:
          sub_10010C108(a1, v5, a2, a3, 1);
          break;
        case 3:
          sub_10010C108(a1, v5, a2, a3, 2);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_10010BB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for MigrateRequest.User(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v41 - v10;
  v11 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = sub_1000F5104(&qword_100938778, &qword_100794DA0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_100010364(a1, v14, &qword_1009374F0, &qword_1007A2380);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1000050A4(v14, &qword_1009374F0, &qword_1007A2380);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1001158E8(v14, v22, type metadata accessor for MigrateRequest.OneOf_Source);
    sub_1001158E8(v22, v20, type metadata accessor for MigrateRequest.OneOf_Source);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100101968(v20, type metadata accessor for MigrateRequest.OneOf_Source);
      v33 = v48;
    }

    else
    {
      sub_1000050A4(v28, &qword_100938778, &qword_100794DA0);
      v35 = v43;
      sub_1001158E8(v20, v43, type metadata accessor for MigrateRequest.User);
      sub_1001158E8(v35, v28, type metadata accessor for MigrateRequest.User);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_100117BC4(&qword_100937698, type metadata accessor for MigrateRequest.User);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return sub_1000050A4(v28, &qword_100938778, &qword_100794DA0);
  }

  sub_100010364(v28, v36, &qword_100938778, &qword_100794DA0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1000050A4(v28, &qword_100938778, &qword_100794DA0);
    return sub_1000050A4(v36, &qword_100938778, &qword_100794DA0);
  }

  else
  {
    v39 = v44;
    sub_1001158E8(v36, v44, type metadata accessor for MigrateRequest.User);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v28, &qword_100938778, &qword_100794DA0);
    v40 = v42;
    sub_1000050A4(v42, &qword_1009374F0, &qword_1007A2380);
    sub_1001158E8(v39, v40, type metadata accessor for MigrateRequest.User);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_10010C108(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v19 = 0;
  v20 = 0;
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v5)
  {
  }

  if (v20)
  {
    v21 = v20;
    v18 = a5;
    v17 = v19;
    sub_100010364(a2, v11, &qword_1009374F0, &qword_1007A2380);
    v13 = type metadata accessor for MigrateRequest.OneOf_Source(0);
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v11, 1, v13);
    sub_1000050A4(v11, &qword_1009374F0, &qword_1007A2380);
    if (v15 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(a2, &qword_1009374F0, &qword_1007A2380);
    v16 = v21;
    *a2 = v17;
    a2[1] = v16;
    swift_storeEnumTagMultiPayload();
    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  return result;
}

uint64_t MigrateRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  sub_100010364(v6, &v20 - v12, &qword_1009374F0, &qword_1007A2380);
  v14 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100101968(v13, type metadata accessor for MigrateRequest.OneOf_Source);
        result = sub_10010C7D8(v6);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        sub_100101968(v13, type metadata accessor for MigrateRequest.OneOf_Source);
        result = sub_10010C950(v6, a1, a2, a3, &qword_1009374F0, &qword_1007A2380, type metadata accessor for MigrateRequest.OneOf_Source, type metadata accessor for MigrateRequest.OneOf_Source);
        if (v4)
        {
          return result;
        }
      }
    }

    else
    {
      sub_10010C5A4(v6, a1, a2, a3);
      result = sub_100101968(v13, type metadata accessor for MigrateRequest.OneOf_Source);
      if (v4)
      {
        return result;
      }
    }

    v5 = v4;
  }

  v17 = type metadata accessor for MigrateRequest(0);
  if (*(v6 + v17[5]))
  {
    v18 = v5;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v18 = v5;
  }

  if (*(v6 + v17[6]) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v18))
  {
    if (!*(v6 + v17[7]) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v18))
    {
      v19 = v6 + v17[8];
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_10010C5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for MigrateRequest.User(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010364(a1, v8, &qword_1009374F0, &qword_1007A2380);
  v13 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000050A4(v8, &qword_1009374F0, &qword_1007A2380);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1001158E8(v8, v12, type metadata accessor for MigrateRequest.User);
    sub_100117BC4(&qword_100937698, type metadata accessor for MigrateRequest.User);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for MigrateRequest.User);
  }

  result = sub_100101968(v8, type metadata accessor for MigrateRequest.OneOf_Source);
  __break(1u);
  return result;
}

uint64_t sub_10010C7D8(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v10 - v4);
  sub_100010364(a1, &v10 - v4, &qword_1009374F0, &qword_1007A2380);
  v6 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_1000050A4(v5, &qword_1009374F0, &qword_1007A2380);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v5;
    v8 = v5[1];
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  result = sub_100101968(v5, type metadata accessor for MigrateRequest.OneOf_Source);
  __break(1u);
  return result;
}

uint64_t sub_10010C950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v21 = a8;
  v12 = sub_1000F5104(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (&v20 - v14);
  sub_100010364(a1, &v20 - v14, a5, a6);
  v16 = a7(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_1000050A4(v15, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = *v15;
    v18 = v15[1];
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  result = sub_100101968(v15, v21);
  __break(1u);
  return result;
}

uint64_t sub_10010CB08@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[6];
  *(a2 + a1[5]) = 0;
  *(a2 + v5) = 0;
  v6 = a1[8];
  *(a2 + a1[7]) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_10010CBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386E8, type metadata accessor for MigrateRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010CC58(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937680, type metadata accessor for MigrateRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010CCC4()
{
  sub_100117BC4(&qword_100937680, type metadata accessor for MigrateRequest);

  return Message.hash(into:)();
}

uint64_t sub_10010CD40()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateRequest.Option._protobuf_nameMap);
  sub_100006654(v0, static MigrateRequest.Option._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007912F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DRY_RUN";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DISABLE_SHARING";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SAVE_ORIGINAL_JSON";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "USER_INITIATED";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "NO_CLEANUP";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10010D09C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateRequest.User._protobuf_nameMap);
  sub_100006654(v0, static MigrateRequest.User._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100791340;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dsID";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "partition";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t MigrateRequest.User.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t MigrateRequest.User.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for MigrateRequest.User(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_10010D424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t sub_10010D47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386E0, type metadata accessor for MigrateRequest.User);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010D51C(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937698, type metadata accessor for MigrateRequest.User);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010D588()
{
  sub_100117BC4(&qword_100937698, type metadata accessor for MigrateRequest.User);

  return Message.hash(into:)();
}

uint64_t sub_10010D604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10010D6E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateResponse._protobuf_nameMap);
  sub_100006654(v0, static MigrateResponse._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "state";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "success";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "error";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "next_step";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "logs";
  *(v15 + 8) = 4;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t MigrateResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
LABEL_14:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        sub_10010DAD0(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_10010E09C(v5, a1, a2, a3);
          break;
        case 4:
          sub_10010E664();
          break;
        case 5:
          v11 = v5 + *(type metadata accessor for MigrateResponse(0) + 24);
          goto LABEL_14;
      }
    }
  }
}

uint64_t sub_10010DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for MigrateResponse.Details(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_1000F5104(&qword_100938760, &qword_100794D88);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for MigrateResponse(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_100010364(a1 + v32, v14, &qword_100937500, &qword_100792DF0);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1000050A4(v14, &qword_100937500, &qword_100792DF0);
    v34 = v15;
    v35 = v53;
  }

  else
  {
    sub_1001158E8(v14, v22, type metadata accessor for MigrateResponse.OneOf_Result);
    sub_1001158E8(v22, v20, type metadata accessor for MigrateResponse.OneOf_Result);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100101968(v20, type metadata accessor for MigrateResponse.OneOf_Result);
      v35 = v53;
    }

    else
    {
      sub_1000050A4(v28, &qword_100938760, &qword_100794D88);
      v36 = v20;
      v37 = v49;
      sub_1001158E8(v36, v49, type metadata accessor for MigrateResponse.Details);
      sub_1001158E8(v37, v28, type metadata accessor for MigrateResponse.Details);
      v35 = v53;
      v31(v28, 0, 1, v53);
    }
  }

  v38 = v51;
  sub_100117BC4(&qword_1009376C8, type metadata accessor for MigrateResponse.Details);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return sub_1000050A4(v28, &qword_100938760, &qword_100794D88);
  }

  sub_100010364(v28, v38, &qword_100938760, &qword_100794D88);
  if ((*(v50 + 48))(v38, 1, v35) == 1)
  {
    sub_1000050A4(v28, &qword_100938760, &qword_100794D88);
    return sub_1000050A4(v38, &qword_100938760, &qword_100794D88);
  }

  else
  {
    v41 = v48;
    sub_1001158E8(v38, v48, type metadata accessor for MigrateResponse.Details);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v28, &qword_100938760, &qword_100794D88);
    v42 = v47;
    v43 = v45;
    sub_1000050A4(v47 + v45, &qword_100937500, &qword_100792DF0);
    sub_1001158E8(v41, v42 + v43, type metadata accessor for MigrateResponse.Details);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10010E09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for MigrateResponse.Error(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_1000F5104(&qword_100938768, &qword_100794D90);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for MigrateResponse(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_100010364(a1 + v32, v14, &qword_100937500, &qword_100792DF0);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1000050A4(v14, &qword_100937500, &qword_100792DF0);
    v34 = v15;
  }

  else
  {
    sub_1001158E8(v14, v22, type metadata accessor for MigrateResponse.OneOf_Result);
    sub_1001158E8(v22, v20, type metadata accessor for MigrateResponse.OneOf_Result);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000050A4(v28, &qword_100938768, &qword_100794D90);
      v35 = v20;
      v36 = v49;
      sub_1001158E8(v35, v49, type metadata accessor for MigrateResponse.Error);
      sub_1001158E8(v36, v28, type metadata accessor for MigrateResponse.Error);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_100101968(v20, type metadata accessor for MigrateResponse.OneOf_Result);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_100117BC4(&qword_1009376E0, type metadata accessor for MigrateResponse.Error);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return sub_1000050A4(v28, &qword_100938768, &qword_100794D90);
  }

  sub_100010364(v28, v38, &qword_100938768, &qword_100794D90);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_1000050A4(v28, &qword_100938768, &qword_100794D90);
    return sub_1000050A4(v38, &qword_100938768, &qword_100794D90);
  }

  else
  {
    v41 = v48;
    sub_1001158E8(v38, v48, type metadata accessor for MigrateResponse.Error);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v28, &qword_100938768, &qword_100794D90);
    v42 = v47;
    v43 = v45;
    sub_1000050A4(v47 + v45, &qword_100937500, &qword_100792DF0);
    sub_1001158E8(v41, v42 + v43, type metadata accessor for MigrateResponse.Error);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10010E664()
{
  v0 = *(type metadata accessor for MigrateResponse(0) + 32);
  type metadata accessor for MigrateResponse.NextStep(0);
  sub_100117BC4(&qword_1009376F8, type metadata accessor for MigrateResponse.NextStep);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t MigrateResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = *v3;
  v14 = v3[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v17 = type metadata accessor for MigrateResponse(0);
  sub_100010364(v3 + v17[5], v12, &qword_100937500, &qword_100792DF0);
  v18 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
  {
    v19 = v5;
  }

  else
  {
    v19 = v5;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10010EB80(v3, a1, a2, a3);
    }

    else
    {
      sub_10010E93C(v3, a1, a2, a3);
    }

    result = sub_100101968(v12, type metadata accessor for MigrateResponse.OneOf_Result);
    if (v5)
    {
      return result;
    }
  }

  result = sub_10010EDC4(v3, a1, a2, a3);
  if (!v19)
  {
    v20 = (v3 + v17[6]);
    v21 = *v20;
    v22 = v20[1];
    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v24 = v3 + v17[7];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10010E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for MigrateResponse.Details(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MigrateResponse(0);
  sub_100010364(a1 + *(v13 + 20), v8, &qword_100937500, &qword_100792DF0);
  v14 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000050A4(v8, &qword_100937500, &qword_100792DF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for MigrateResponse.Details);
    sub_100117BC4(&qword_1009376C8, type metadata accessor for MigrateResponse.Details);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for MigrateResponse.Details);
  }

  result = sub_100101968(v8, type metadata accessor for MigrateResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_10010EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for MigrateResponse.Error(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MigrateResponse(0);
  sub_100010364(a1 + *(v13 + 20), v8, &qword_100937500, &qword_100792DF0);
  v14 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000050A4(v8, &qword_100937500, &qword_100792DF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for MigrateResponse.Error);
    sub_100117BC4(&qword_1009376E0, type metadata accessor for MigrateResponse.Error);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for MigrateResponse.Error);
  }

  result = sub_100101968(v8, type metadata accessor for MigrateResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_10010EDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v10 = *(Step - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(Step);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MigrateResponse(0);
  sub_100010364(a1 + *(v14 + 32), v8, &qword_100937508, &qword_100792DF8);
  if ((*(v10 + 48))(v8, 1, Step) == 1)
  {
    return sub_1000050A4(v8, &qword_100937508, &qword_100792DF8);
  }

  sub_1001158E8(v8, v13, type metadata accessor for MigrateResponse.NextStep);
  sub_100117BC4(&qword_1009376F8, type metadata accessor for MigrateResponse.NextStep);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100101968(v13, type metadata accessor for MigrateResponse.NextStep);
}

uint64_t sub_10010F02C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = a1[5];
  v5 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = &a2[a1[6]];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v8 = a1[8];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v10 = *(*(Step - 8) + 56);

  return v10(&a2[v8], 1, 1, Step);
}

uint64_t sub_10010F108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10010F17C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10010F220(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386D8, type metadata accessor for MigrateResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010F2C0(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009376B0, type metadata accessor for MigrateResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010F32C()
{
  sub_100117BC4(&qword_1009376B0, type metadata accessor for MigrateResponse);

  return Message.hash(into:)();
}

uint64_t sub_10010F3D0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateResponse.Details._protobuf_nameMap);
  sub_100006654(v0, static MigrateResponse.Details._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "time_elapsed";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_observer";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "lists_migrated";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "reminders_migrated";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10010F678()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t sub_10010F768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*v4 == 0.0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v5))
  {
    if (*(v4 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
    {
      if (!*(v4 + 12) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
      {
        if (!*(v4 + 16) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
        {
          v8 = v4 + *(a4(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10010F8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t sub_10010F8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10010F954(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10010F9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386D0, type metadata accessor for MigrateResponse.Details);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010FA80(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009376C8, type metadata accessor for MigrateResponse.Details);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010FAEC()
{
  sub_100117BC4(&qword_1009376C8, type metadata accessor for MigrateResponse.Details);

  return Message.hash(into:)();
}

uint64_t sub_10010FBA0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  sub_1000EECAC(v3, a2);
  sub_100006654(v3, a2);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v4 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 1;
  *v9 = "message";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v10 = enum case for _NameMap.NameDescription.same(_:);
  v11 = type metadata accessor for _NameMap.NameDescription();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v13 = "retry_count";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v12();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10010FDCC()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t sub_10010FE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    if (!*(v4 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
    {
      v11 = v4 + *(a4(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_10010FF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t sub_10010FFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386C8, type metadata accessor for MigrateResponse.Error);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100110074(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009376E0, type metadata accessor for MigrateResponse.Error);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001100E0()
{
  sub_100117BC4(&qword_1009376E0, type metadata accessor for MigrateResponse.Error);

  return Message.hash(into:)();
}

uint64_t sub_100110184()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateResponse.NextStep._protobuf_nameMap);
  sub_100006654(v0, static MigrateResponse.NextStep._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "defined";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_terminated";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "next_invocation_in_seconds";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "invocation_count";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "failure_count";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t MigrateResponse.NextStep.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t MigrateResponse.NextStep.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 1) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
        {
          if (!*(v0 + 12) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
          {
            v3 = v0 + *(type metadata accessor for MigrateResponse.NextStep(0) + 36);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100110690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 4) = 0;
  v2 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t sub_1001106BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100110730(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1001107D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386C0, type metadata accessor for MigrateResponse.NextStep);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100110874(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009376F8, type metadata accessor for MigrateResponse.NextStep);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001108E0()
{
  sub_100117BC4(&qword_1009376F8, type metadata accessor for MigrateResponse.NextStep);

  return Message.hash(into:)();
}

uint64_t UnmigrateRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t UnmigrateRequest.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for UnmigrateRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static UnmigrateRequest.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for UnmigrateRequest(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100110BD4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

Swift::Void (__swiftcall *sub_100110BF8(uint64_t a1, uint64_t a2))()
{
  result = REMCDList.cleanUpAfterLocalObjectMerge();
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_100110C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386B8, type metadata accessor for UnmigrateRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100110CEC(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937710, type metadata accessor for UnmigrateRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100110D58()
{
  sub_100117BC4(&qword_100937710, type metadata accessor for UnmigrateRequest);

  return Message.hash(into:)();
}

uint64_t sub_100110DD4(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100110E78()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static UnmigrateRequest.Option._protobuf_nameMap);
  sub_100006654(v0, static UnmigrateRequest.Option._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100791300;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v5 = "NONE";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100111074()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static UnmigrateResponse._protobuf_nameMap);
  sub_100006654(v0, static UnmigrateResponse._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100791320;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "logs";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t UnmigrateResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v11 = *(type metadata accessor for UnmigrateResponse(0) + 20);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 2:
        sub_10011195C(v5, a1, a2, a3);
        break;
      case 1:
        sub_1001113A0(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1001113A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for UnmigrateResponse.Details(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = sub_1000F5104(&qword_100938740, &qword_100794D68);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_100010364(a1, v14, &qword_100937510, &qword_100792E00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1000050A4(v14, &qword_100937510, &qword_100792E00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1001158E8(v14, v22, type metadata accessor for UnmigrateResponse.OneOf_Result);
    sub_1001158E8(v22, v20, type metadata accessor for UnmigrateResponse.OneOf_Result);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100101968(v20, type metadata accessor for UnmigrateResponse.OneOf_Result);
      v33 = v48;
    }

    else
    {
      sub_1000050A4(v28, &qword_100938740, &qword_100794D68);
      v35 = v44;
      sub_1001158E8(v20, v44, type metadata accessor for UnmigrateResponse.Details);
      sub_1001158E8(v35, v28, type metadata accessor for UnmigrateResponse.Details);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_100117BC4(&qword_100937740, type metadata accessor for UnmigrateResponse.Details);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return sub_1000050A4(v28, &qword_100938740, &qword_100794D68);
  }

  sub_100010364(v28, v36, &qword_100938740, &qword_100794D68);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1000050A4(v28, &qword_100938740, &qword_100794D68);
    return sub_1000050A4(v36, &qword_100938740, &qword_100794D68);
  }

  else
  {
    v39 = v43;
    sub_1001158E8(v36, v43, type metadata accessor for UnmigrateResponse.Details);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v28, &qword_100938740, &qword_100794D68);
    v40 = v42;
    sub_1000050A4(v42, &qword_100937510, &qword_100792E00);
    sub_1001158E8(v39, v40, type metadata accessor for UnmigrateResponse.Details);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_10011195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for UnmigrateResponse.Error(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = sub_1000F5104(&qword_100938748, &qword_100794D70);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_100010364(a1, v14, &qword_100937510, &qword_100792E00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1000050A4(v14, &qword_100937510, &qword_100792E00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1001158E8(v14, v22, type metadata accessor for UnmigrateResponse.OneOf_Result);
    sub_1001158E8(v22, v20, type metadata accessor for UnmigrateResponse.OneOf_Result);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000050A4(v28, &qword_100938748, &qword_100794D70);
      v35 = v44;
      sub_1001158E8(v20, v44, type metadata accessor for UnmigrateResponse.Error);
      sub_1001158E8(v35, v28, type metadata accessor for UnmigrateResponse.Error);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_100101968(v20, type metadata accessor for UnmigrateResponse.OneOf_Result);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_100117BC4(&qword_100937758, type metadata accessor for UnmigrateResponse.Error);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return sub_1000050A4(v28, &qword_100938748, &qword_100794D70);
  }

  sub_100010364(v28, v36, &qword_100938748, &qword_100794D70);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1000050A4(v28, &qword_100938748, &qword_100794D70);
    return sub_1000050A4(v36, &qword_100938748, &qword_100794D70);
  }

  else
  {
    v39 = v43;
    sub_1001158E8(v36, v43, type metadata accessor for UnmigrateResponse.Error);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v28, &qword_100938748, &qword_100794D70);
    v40 = v42;
    sub_1000050A4(v42, &qword_100937510, &qword_100792E00);
    sub_1001158E8(v39, v40, type metadata accessor for UnmigrateResponse.Error);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t UnmigrateResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  sub_100010364(v6, &v22 - v12, &qword_100937510, &qword_100792E00);
  v14 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100112328(v6, a1, a2, a3);
    }

    else
    {
      sub_1001120F0(v6, a1, a2, a3);
    }

    result = sub_100101968(v13, type metadata accessor for UnmigrateResponse.OneOf_Result);
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v16 = type metadata accessor for UnmigrateResponse(0);
  v17 = (v6 + *(v16 + 20));
  v18 = *v17;
  v19 = v17[1];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    v21 = v6 + *(v16 + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001120F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for UnmigrateResponse.Details(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010364(a1, v8, &qword_100937510, &qword_100792E00);
  v13 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000050A4(v8, &qword_100937510, &qword_100792E00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for UnmigrateResponse.Details);
    sub_100117BC4(&qword_100937740, type metadata accessor for UnmigrateResponse.Details);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for UnmigrateResponse.Details);
  }

  result = sub_100101968(v8, type metadata accessor for UnmigrateResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_100112328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for UnmigrateResponse.Error(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010364(a1, v8, &qword_100937510, &qword_100792E00);
  v13 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000050A4(v8, &qword_100937510, &qword_100792E00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for UnmigrateResponse.Error);
    sub_100117BC4(&qword_100937758, type metadata accessor for UnmigrateResponse.Error);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for UnmigrateResponse.Error);
  }

  result = sub_100101968(v8, type metadata accessor for UnmigrateResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_1001125AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t sub_100112628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10011269C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100112740(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386B0, type metadata accessor for UnmigrateResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001127E0(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937728, type metadata accessor for UnmigrateResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011284C()
{
  sub_100117BC4(&qword_100937728, type metadata accessor for UnmigrateResponse);

  return Message.hash(into:)();
}

uint64_t UnmigrateResponse.Details.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t UnmigrateResponse.Details.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    v2 = v0 + *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100112AA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t sub_100112AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386A8, type metadata accessor for UnmigrateResponse.Details);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100112B9C(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937740, type metadata accessor for UnmigrateResponse.Details);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100112C08()
{
  sub_100117BC4(&qword_100937740, type metadata accessor for UnmigrateResponse.Details);

  return Message.hash(into:)();
}

uint64_t sub_100112C84(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100112E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386A0, type metadata accessor for UnmigrateResponse.Error);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100112EE4(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937758, type metadata accessor for UnmigrateResponse.Error);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100112F50()
{
  sub_100117BC4(&qword_100937758, type metadata accessor for UnmigrateResponse.Error);

  return Message.hash(into:)();
}

uint64_t sub_100112FF8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static EmptyRequest._protobuf_nameMap);
  sub_100006654(v0, static EmptyRequest._protobuf_nameMap);
  return _NameMap.init()();
}

uint64_t EmptyRequest.decodeMessage<A>(decoder:)()
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static EmptyRequest.== infix(_:_:)()
{
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001131E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938698, type metadata accessor for EmptyRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100113288(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937770, type metadata accessor for EmptyRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001132F4()
{
  sub_100117BC4(&qword_100937770, type metadata accessor for EmptyRequest);

  return Message.hash(into:)();
}

uint64_t sub_1001133A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static BasicResponse._protobuf_nameMap);
  sub_100006654(v0, static BasicResponse._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100791340;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t BasicResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100113654(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      sub_100113654(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t sub_100113654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v5)
  {
  }

  if (v12)
  {
    if (*(a2 + 16) == 255)
    {
      v9 = -1;
    }

    else
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
      v9 = *(a2 + 16);
    }

    v10 = *a2;
    v11 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = v12;
    *(a2 + 16) = a5;
    return sub_100117B44(v10, v11, v9);
  }

  return result;
}

uint64_t BasicResponse.traverse<A>(visitor:)()
{
  v2 = *(v0 + 16);
  if (v2 == 255)
  {
    goto LABEL_4;
  }

  if (v2)
  {
    result = sub_100113808(v0);
    if (v1)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = sub_1001137BC(v0);
  if (!v1)
  {
LABEL_4:
    v4 = v0 + *(type metadata accessor for BasicResponse(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001137BC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100113808(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001138A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t sub_1001138FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938690, type metadata accessor for BasicResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011399C(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937788, type metadata accessor for BasicResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100113A08()
{
  sub_100117BC4(&qword_100937788, type metadata accessor for BasicResponse);

  return Message.hash(into:)();
}

uint64_t sub_100113B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    v11 = v4 + *(a4(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100113C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938688, type metadata accessor for PingRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100113D18(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009377A0, type metadata accessor for PingRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100113D84()
{
  sub_100117BC4(&qword_1009377A0, type metadata accessor for PingRequest);

  return Message.hash(into:)();
}

uint64_t sub_100113E4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = type metadata accessor for _NameMap();
  sub_1000EECAC(v9, a2);
  sub_100006654(v9, a2);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v10 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100791300;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100113FE0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for _NameMap();

  return sub_100006654(v3, a2);
}

uint64_t sub_100114058@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_100006654(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1001140F0()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t sub_1001141A4(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int sub_1001142B4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100117BC4(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011433C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001143B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10011443C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938680, type metadata accessor for PingResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001144DC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_100006654(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100114578(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009377B8, type metadata accessor for PingResponse);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001145E4()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011463C()
{
  sub_100117BC4(&qword_1009377B8, type metadata accessor for PingResponse);

  return Message.hash(into:)();
}

Swift::Int sub_1001146B8()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011470C(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001147C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t _s7remindd22StartMigrationResponseV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v5 = *(started - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(started);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_1000F5104(&qword_100938780, &qword_100794DA8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = v8;
  v31 = type metadata accessor for StartMigrationResponse(0);
  v17 = *(v31 + 20);
  v18 = *(v13 + 48);
  sub_100010364(a1 + v17, v16, &qword_1009374E8, &unk_100792DE0);
  sub_100010364(a2 + v17, &v16[v18], &qword_1009374E8, &unk_100792DE0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, started) != 1)
  {
    sub_100010364(v16, v12, &qword_1009374E8, &unk_100792DE0);
    if (v19(&v16[v18], 1, started) != 1)
    {
      v21 = v30;
      sub_1001158E8(&v16[v18], v30, type metadata accessor for StartMigrationResponse.OneOf_Result);
      v22 = _s7remindd22StartMigrationResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v21);
      sub_100101968(v21, type metadata accessor for StartMigrationResponse.OneOf_Result);
      sub_100101968(v12, type metadata accessor for StartMigrationResponse.OneOf_Result);
      sub_1000050A4(v16, &qword_1009374E8, &unk_100792DE0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    sub_100101968(v12, type metadata accessor for StartMigrationResponse.OneOf_Result);
LABEL_9:
    sub_1000050A4(v16, &qword_100938780, &qword_100794DA8);
    goto LABEL_10;
  }

  if (v19(&v16[v18], 1, started) != 1)
  {
    goto LABEL_9;
  }

  sub_1000050A4(v16, &qword_1009374E8, &unk_100792DE0);
LABEL_12:
  v23 = v31;
  v24 = *(v31 + 24);
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if (v25 == *v27 && v26 == v27[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v28 = *(v23 + 28);
    type metadata accessor for UnknownStorage();
    sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s7remindd22StartMigrationResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartMigrationResponse.Error(0);
  v4 = *(*(started - 8) + 64);
  __chkstk_darwin(started);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StartMigrationResponse.Details(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = sub_1000F5104(&qword_1009387C0, &qword_100794DE8);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - v21;
  v23 = *(v20 + 56);
  sub_100115950(a1, &v30 - v21, type metadata accessor for StartMigrationResponse.OneOf_Result);
  sub_100115950(a2, &v22[v23], type metadata accessor for StartMigrationResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100115950(v22, v17, type metadata accessor for StartMigrationResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(&v22[v23], v10, type metadata accessor for StartMigrationResponse.Details);
      v26 = sub_100116AEC(v17, v10, type metadata accessor for StartMigrationResponse.Details);
      sub_100101968(v10, type metadata accessor for StartMigrationResponse.Details);
      sub_100101968(v17, type metadata accessor for StartMigrationResponse.Details);
      sub_100101968(v22, type metadata accessor for StartMigrationResponse.OneOf_Result);
      return v26 & 1;
    }

    v27 = type metadata accessor for StartMigrationResponse.Details;
    v28 = v17;
    goto LABEL_14;
  }

  sub_100115950(v22, v15, type metadata accessor for StartMigrationResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for StartMigrationResponse.Error;
    v28 = v15;
LABEL_14:
    sub_100101968(v28, v27);
    sub_1000050A4(v22, &qword_1009387C0, &qword_100794DE8);
LABEL_17:
    v26 = 0;
    return v26 & 1;
  }

  sub_1001158E8(&v22[v23], v6, type metadata accessor for StartMigrationResponse.Error);
  v24 = *v15 == *v6 && *(v15 + 1) == *(v6 + 1);
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v15 + 4) != *(v6 + 4) || (v25 = *(started + 24), type metadata accessor for UnknownStorage(), sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    sub_100101968(v6, type metadata accessor for StartMigrationResponse.Error);
    sub_100101968(v15, type metadata accessor for StartMigrationResponse.Error);
    sub_100101968(v22, type metadata accessor for StartMigrationResponse.OneOf_Result);
    goto LABEL_17;
  }

  sub_100101968(v6, type metadata accessor for StartMigrationResponse.Error);
  sub_100101968(v15, type metadata accessor for StartMigrationResponse.Error);
  sub_100101968(v22, type metadata accessor for StartMigrationResponse.OneOf_Result);
  v26 = 1;
  return v26 & 1;
}

uint64_t _s7remindd21StartMigrationRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v5 = *(started - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(started);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_1000F5104(&qword_100938798, &qword_100794DC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_100010364(a1, &v25 - v16, &qword_1009374E0, &unk_1007A6940);
  sub_100010364(a2, &v17[v18], &qword_1009374E0, &unk_1007A6940);
  v19 = *(v5 + 48);
  if (v19(v17, 1, started) != 1)
  {
    sub_100010364(v17, v12, &qword_1009374E0, &unk_1007A6940);
    if (v19(&v17[v18], 1, started) != 1)
    {
      sub_1001158E8(&v17[v18], v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
      v20 = _s7remindd21StartMigrationRequestV12OneOf_SourceO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v8);
      sub_100101968(v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
      sub_100101968(v12, type metadata accessor for StartMigrationRequest.OneOf_Source);
      sub_1000050A4(v17, &qword_1009374E0, &unk_1007A6940);
      if ((v20 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_100101968(v12, type metadata accessor for StartMigrationRequest.OneOf_Source);
LABEL_6:
    sub_1000050A4(v17, &qword_100938798, &qword_100794DC0);
    goto LABEL_9;
  }

  if (v19(&v17[v18], 1, started) != 1)
  {
    goto LABEL_6;
  }

  sub_1000050A4(v17, &qword_1009374E0, &unk_1007A6940);
LABEL_8:
  v21 = type metadata accessor for StartMigrationRequest(0);
  if (*(a1 + *(v21 + 20)) == *(a2 + *(v21 + 20)))
  {
    v24 = *(v21 + 24);
    type metadata accessor for UnknownStorage();
    sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v22 & 1;
  }

LABEL_9:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s7remindd21StartMigrationRequestV12OneOf_SourceO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartMigrationRequest.Credential(0);
  v5 = *(*(started - 8) + 64);
  __chkstk_darwin(started - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - v14;
  __chkstk_darwin(v13);
  v17 = (&v33 - v16);
  v18 = sub_1000F5104(&qword_1009387C8, &unk_100794DF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v33 - v21;
  v23 = (&v33 + *(v20 + 56) - v21);
  sub_100115950(a1, &v33 - v21, type metadata accessor for StartMigrationRequest.OneOf_Source);
  sub_100115950(a2, v23, type metadata accessor for StartMigrationRequest.OneOf_Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100115950(v22, v17, type metadata accessor for StartMigrationRequest.OneOf_Source);
    v27 = *v17;
    v26 = v17[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100115950(v22, v12, type metadata accessor for StartMigrationRequest.OneOf_Source);
    v27 = *v12;
    v26 = v12[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_8:
      if (v27 == *v23 && v26 == v23[1])
      {
        v31 = v23[1];
      }

      else
      {
        v29 = v23[1];
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          sub_100101968(v22, type metadata accessor for StartMigrationRequest.OneOf_Source);
LABEL_16:
          v25 = 0;
          return v25 & 1;
        }
      }

      sub_100101968(v22, type metadata accessor for StartMigrationRequest.OneOf_Source);
      v25 = 1;
      return v25 & 1;
    }

LABEL_6:

LABEL_15:
    sub_1000050A4(v22, &qword_1009387C8, &unk_100794DF0);
    goto LABEL_16;
  }

  sub_100115950(v22, v15, type metadata accessor for StartMigrationRequest.OneOf_Source);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v15, type metadata accessor for StartMigrationRequest.Credential);
    goto LABEL_15;
  }

  sub_1001158E8(v23, v7, type metadata accessor for StartMigrationRequest.Credential);
  v25 = _s7remindd21StartMigrationRequestV10CredentialV2eeoiySbAE_AEtFZ_0(v15, v7);
  sub_100101968(v7, type metadata accessor for StartMigrationRequest.Credential);
  sub_100101968(v15, type metadata accessor for StartMigrationRequest.Credential);
  sub_100101968(v22, type metadata accessor for StartMigrationRequest.OneOf_Source);
  return v25 & 1;
}

uint64_t _s7remindd21StartMigrationRequestV10CredentialV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v6 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001158E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100115950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7remindd17UnmigrateResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = sub_1000F5104(&qword_100938738, &qword_100794D60);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v29 - v16;
  v18 = *(v15 + 56);
  sub_100010364(a1, &v29 - v16, &qword_100937510, &qword_100792E00);
  sub_100010364(a2, &v17[v18], &qword_100937510, &qword_100792E00);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_100010364(v17, v12, &qword_100937510, &qword_100792E00);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1001158E8(&v17[v18], v8, type metadata accessor for UnmigrateResponse.OneOf_Result);
      v21 = _s7remindd17UnmigrateResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v8);
      sub_100101968(v8, type metadata accessor for UnmigrateResponse.OneOf_Result);
      sub_100101968(v12, type metadata accessor for UnmigrateResponse.OneOf_Result);
      sub_1000050A4(v17, &qword_100937510, &qword_100792E00);
      if ((v21 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_100101968(v12, type metadata accessor for UnmigrateResponse.OneOf_Result);
LABEL_6:
    sub_1000050A4(v17, &qword_100938738, &qword_100794D60);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000050A4(v17, &qword_100937510, &qword_100792E00);
LABEL_9:
  v22 = type metadata accessor for UnmigrateResponse(0);
  v23 = *(v22 + 20);
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if (v24 == *v26 && v25 == v26[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v27 = *(v22 + 24);
    type metadata accessor for UnknownStorage();
    sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s7remindd17UnmigrateResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for UnmigrateResponse.Error(0);
  v4 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for UnmigrateResponse.Details(0);
  v7 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = (&v34 - v15);
  v17 = sub_1000F5104(&qword_1009387A8, &qword_100794DD0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v34 - v20;
  v22 = *(v19 + 56);
  sub_100115950(a1, &v34 - v20, type metadata accessor for UnmigrateResponse.OneOf_Result);
  sub_100115950(a2, &v21[v22], type metadata accessor for UnmigrateResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100115950(v21, v14, type metadata accessor for UnmigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001158E8(&v21[v22], v6, type metadata accessor for UnmigrateResponse.Error);
      v23 = *v14 == *v6 && v14[1] == v6[1];
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v24 = *(v35 + 20);
        type metadata accessor for UnknownStorage();
        sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          sub_100101968(v6, type metadata accessor for UnmigrateResponse.Error);
          v25 = v14;
          v26 = type metadata accessor for UnmigrateResponse.Error;
LABEL_17:
          sub_100101968(v25, v26);
          sub_100101968(v21, type metadata accessor for UnmigrateResponse.OneOf_Result);
          return 1;
        }
      }

      sub_100101968(v6, type metadata accessor for UnmigrateResponse.Error);
      v32 = v14;
      v33 = type metadata accessor for UnmigrateResponse.Error;
LABEL_21:
      sub_100101968(v32, v33);
      sub_100101968(v21, type metadata accessor for UnmigrateResponse.OneOf_Result);
      return 0;
    }

    v27 = type metadata accessor for UnmigrateResponse.Error;
    v28 = v14;
  }

  else
  {
    sub_100115950(v21, v16, type metadata accessor for UnmigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(&v21[v22], v9, type metadata accessor for UnmigrateResponse.Details);
      if (*v16 == *v9)
      {
        v29 = *(v34 + 20);
        type metadata accessor for UnknownStorage();
        sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100101968(v9, type metadata accessor for UnmigrateResponse.Details);
        if (v30)
        {
          v26 = type metadata accessor for UnmigrateResponse.Details;
          v25 = v16;
          goto LABEL_17;
        }
      }

      else
      {
        sub_100101968(v9, type metadata accessor for UnmigrateResponse.Details);
      }

      v33 = type metadata accessor for UnmigrateResponse.Details;
      v32 = v16;
      goto LABEL_21;
    }

    v27 = type metadata accessor for UnmigrateResponse.Details;
    v28 = v16;
  }

  sub_100101968(v28, v27);
  sub_1000050A4(v21, &qword_1009387A8, &qword_100794DD0);
  return 0;
}

uint64_t _s7remindd15MigrateResponseV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v61 = *(Step - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(Step);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v59 = &v56 - v10;
  v60 = sub_1000F5104(&qword_100938750, &qword_100794D78);
  v11 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v62 = &v56 - v12;
  v13 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v56 - v20;
  v22 = sub_1000F5104(&qword_100938758, &qword_100794D80);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v56 - v24;
  v26 = *a1;
  v27 = a1[1];
  v63 = a1;
  if ((v26 != *a2 || v27 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v58 = Step;
  v56 = v7;
  v28 = a2;
  v57 = type metadata accessor for MigrateResponse(0);
  v29 = *(v57 + 20);
  v30 = *(v22 + 48);
  sub_100010364(v63 + v29, v25, &qword_100937500, &qword_100792DF0);
  sub_100010364(v28 + v29, &v25[v30], &qword_100937500, &qword_100792DF0);
  v31 = *(v14 + 48);
  if (v31(v25, 1, v13) == 1)
  {
    if (v31(&v25[v30], 1, v13) == 1)
    {
      sub_1000050A4(v25, &qword_100937500, &qword_100792DF0);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_100938758;
    v33 = &qword_100794D80;
    v34 = v25;
LABEL_17:
    sub_1000050A4(v34, v32, v33);
    goto LABEL_18;
  }

  sub_100010364(v25, v21, &qword_100937500, &qword_100792DF0);
  if (v31(&v25[v30], 1, v13) == 1)
  {
    sub_100101968(v21, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_9;
  }

  sub_1001158E8(&v25[v30], v17, type metadata accessor for MigrateResponse.OneOf_Result);
  v35 = _s7remindd15MigrateResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(v21, v17);
  sub_100101968(v17, type metadata accessor for MigrateResponse.OneOf_Result);
  sub_100101968(v21, type metadata accessor for MigrateResponse.OneOf_Result);
  sub_1000050A4(v25, &qword_100937500, &qword_100792DF0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v36 = v57;
  v37 = *(v57 + 32);
  v38 = *(v60 + 48);
  v39 = v62;
  sub_100010364(v63 + v37, v62, &qword_100937508, &qword_100792DF8);
  v40 = v28 + v37;
  v41 = v28;
  sub_100010364(v40, v39 + v38, &qword_100937508, &qword_100792DF8);
  v42 = *(v61 + 48);
  v43 = v58;
  if (v42(v39, 1, v58) != 1)
  {
    v44 = v59;
    sub_100010364(v39, v59, &qword_100937508, &qword_100792DF8);
    if (v42(v39 + v38, 1, v43) != 1)
    {
      v47 = v39 + v38;
      v48 = v56;
      sub_1001158E8(v47, v56, type metadata accessor for MigrateResponse.NextStep);
      StepV2eeoiySbAE_AEtFZ_0 = _s7remindd15MigrateResponseV8NextStepV2eeoiySbAE_AEtFZ_0(v44, v48);
      sub_100101968(v48, type metadata accessor for MigrateResponse.NextStep);
      sub_100101968(v44, type metadata accessor for MigrateResponse.NextStep);
      sub_1000050A4(v39, &qword_100937508, &qword_100792DF8);
      if ((StepV2eeoiySbAE_AEtFZ_0 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    sub_100101968(v44, type metadata accessor for MigrateResponse.NextStep);
    goto LABEL_16;
  }

  if (v42(v39 + v38, 1, v43) != 1)
  {
LABEL_16:
    v32 = &qword_100938750;
    v33 = &qword_100794D78;
    v34 = v39;
    goto LABEL_17;
  }

  sub_1000050A4(v39, &qword_100937508, &qword_100792DF8);
LABEL_21:
  v50 = *(v36 + 24);
  v51 = (v63 + v50);
  v52 = *(v63 + v50);
  v53 = *(v63 + v50 + 8);
  v54 = (v41 + v50);
  if (*v51 == *v54 && v53 == v54[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v55 = *(v36 + 28);
    type metadata accessor for UnknownStorage();
    sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v45 & 1;
  }

LABEL_18:
  v45 = 0;
  return v45 & 1;
}

uint64_t _s7remindd15MigrateResponseV8NextStepV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v2 = *(type metadata accessor for MigrateResponse.NextStep(0) + 36);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100116A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a3(0) + 24);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100116AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, double))
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = *(a3(0, *a1) + 32);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s7remindd15MigrateResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for MigrateResponse.Error(0);
  v4 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MigrateResponse.Details(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = sub_1000F5104(&qword_1009387B0, &qword_100794DD8);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - v21;
  v23 = *(v20 + 56);
  sub_100115950(a1, &v30 - v21, type metadata accessor for MigrateResponse.OneOf_Result);
  sub_100115950(a2, &v22[v23], type metadata accessor for MigrateResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100115950(v22, v17, type metadata accessor for MigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(&v22[v23], v10, type metadata accessor for MigrateResponse.Details);
      v26 = sub_100116AEC(v17, v10, type metadata accessor for MigrateResponse.Details);
      sub_100101968(v10, type metadata accessor for MigrateResponse.Details);
      sub_100101968(v17, type metadata accessor for MigrateResponse.Details);
      sub_100101968(v22, type metadata accessor for MigrateResponse.OneOf_Result);
      return v26 & 1;
    }

    v27 = type metadata accessor for MigrateResponse.Details;
    v28 = v17;
    goto LABEL_14;
  }

  sub_100115950(v22, v15, type metadata accessor for MigrateResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for MigrateResponse.Error;
    v28 = v15;
LABEL_14:
    sub_100101968(v28, v27);
    sub_1000050A4(v22, &qword_1009387B0, &qword_100794DD8);
LABEL_17:
    v26 = 0;
    return v26 & 1;
  }

  sub_1001158E8(&v22[v23], v6, type metadata accessor for MigrateResponse.Error);
  v24 = *v15 == *v6 && *(v15 + 1) == *(v6 + 1);
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v15 + 4) != *(v6 + 4) || (v25 = *(v31 + 24), type metadata accessor for UnknownStorage(), sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    sub_100101968(v6, type metadata accessor for MigrateResponse.Error);
    sub_100101968(v15, type metadata accessor for MigrateResponse.Error);
    sub_100101968(v22, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_17;
  }

  sub_100101968(v6, type metadata accessor for MigrateResponse.Error);
  sub_100101968(v15, type metadata accessor for MigrateResponse.Error);
  sub_100101968(v22, type metadata accessor for MigrateResponse.OneOf_Result);
  v26 = 1;
  return v26 & 1;
}

uint64_t _s7remindd14MigrateRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_1000F5104(&qword_100938770, &qword_100794D98);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_100010364(a1, &v25 - v16, &qword_1009374F0, &qword_1007A2380);
  sub_100010364(a2, &v17[v18], &qword_1009374F0, &qword_1007A2380);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_100010364(v17, v12, &qword_1009374F0, &qword_1007A2380);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1001158E8(&v17[v18], v8, type metadata accessor for MigrateRequest.OneOf_Source);
      v20 = _s7remindd14MigrateRequestV12OneOf_SourceO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v8);
      sub_100101968(v8, type metadata accessor for MigrateRequest.OneOf_Source);
      sub_100101968(v12, type metadata accessor for MigrateRequest.OneOf_Source);
      sub_1000050A4(v17, &qword_1009374F0, &qword_1007A2380);
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_12:
      v23 = 0;
      return v23 & 1;
    }

    sub_100101968(v12, type metadata accessor for MigrateRequest.OneOf_Source);
LABEL_6:
    sub_1000050A4(v17, &qword_100938770, &qword_100794D98);
    goto LABEL_12;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000050A4(v17, &qword_1009374F0, &qword_1007A2380);
LABEL_8:
  v21 = type metadata accessor for MigrateRequest(0);
  if (*(a1 + v21[5]) != *(a2 + v21[5]) || *(a1 + v21[6]) != *(a2 + v21[6]) || *(a1 + v21[7]) != *(a2 + v21[7]))
  {
    goto LABEL_12;
  }

  v22 = v21[8];
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t _s7remindd14MigrateRequestV12OneOf_SourceO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for MigrateRequest.User(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = (&v33 - v13);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = sub_1000F5104(&qword_1009387B8, &qword_100794DE0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v33 - v20;
  v22 = (&v33 + *(v19 + 56) - v20);
  sub_100115950(a1, &v33 - v20, type metadata accessor for MigrateRequest.OneOf_Source);
  sub_100115950(v34, v22, type metadata accessor for MigrateRequest.OneOf_Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100115950(v21, v14, type metadata accessor for MigrateRequest.OneOf_Source);
      v25 = *v14;
      v24 = v14[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_100115950(v21, v11, type metadata accessor for MigrateRequest.OneOf_Source);
      v25 = *v11;
      v24 = v11[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_4:
        if (v25 == *v22 && v24 == v22[1])
        {
          v29 = v22[1];
        }

        else
        {
          v27 = v22[1];
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v28 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

LABEL_16:
        sub_100101968(v21, type metadata accessor for MigrateRequest.OneOf_Source);
        return 1;
      }
    }
  }

  else
  {
    sub_100115950(v21, v16, type metadata accessor for MigrateRequest.OneOf_Source);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1001158E8(v22, v6, type metadata accessor for MigrateRequest.User);
      if (*v16 == *v6 && *(v16 + 2) == *(v6 + 2))
      {
        v31 = *(v3 + 24);
        type metadata accessor for UnknownStorage();
        sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100101968(v6, type metadata accessor for MigrateRequest.User);
        if (v32)
        {
          sub_100101968(v16, type metadata accessor for MigrateRequest.User);
          goto LABEL_16;
        }
      }

      else
      {
        sub_100101968(v6, type metadata accessor for MigrateRequest.User);
      }

      sub_100101968(v16, type metadata accessor for MigrateRequest.User);
LABEL_23:
      sub_100101968(v21, type metadata accessor for MigrateRequest.OneOf_Source);
      return 0;
    }

    sub_100101968(v16, type metadata accessor for MigrateRequest.User);
  }

  sub_1000050A4(v21, &qword_1009387B8, &qword_100794DE0);
  return 0;
}

uint64_t _s7remindd13BasicResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v3 == 255)
  {
    if (v4 == 255)
    {
      goto LABEL_12;
    }
  }

  else if (v4 != 255)
  {
    v5 = *a1;
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if ((v4 & 1) == 0)
    {
LABEL_9:
      if ((v5 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

LABEL_12:
      v6 = *(type metadata accessor for BasicResponse(0) + 20);
      type metadata accessor for UnknownStorage();
      sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t sub_10011790C(uint64_t result)
{
  if (result > 3)
  {
    switch(result)
    {
      case 16:
        return 5;
      case 8:
        return 4;
      case 4:
        return 3;
    }
  }

  return result;
}

uint64_t sub_100117A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000F5104(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100117B24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100117B3C();
  }

  return result;
}

uint64_t sub_100117B44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100117B5C();
  }

  return result;
}

uint64_t sub_100117BC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100117C30()
{
  result = qword_1009375B0;
  if (!qword_1009375B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375B0);
  }

  return result;
}

unint64_t sub_100117C88()
{
  result = qword_1009375B8;
  if (!qword_1009375B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375B8);
  }

  return result;
}

unint64_t sub_100117CE0()
{
  result = qword_1009375C0;
  if (!qword_1009375C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375C0);
  }

  return result;
}

unint64_t sub_100117D68()
{
  result = qword_1009375D8;
  if (!qword_1009375D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375D8);
  }

  return result;
}

unint64_t sub_100117DC0()
{
  result = qword_1009375E0;
  if (!qword_1009375E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375E0);
  }

  return result;
}

unint64_t sub_100117E18()
{
  result = qword_1009375E8;
  if (!qword_1009375E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375E8);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for StartMigrationRequest(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
    v8 = *(started - 8);
    if ((*(v8 + 48))(a2, 1, started))
    {
      v9 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      if (EnumCaseMultiPayload == 1)
      {
        v13 = a2[3];
        a1[2] = a2[2];
        a1[3] = v13;
        v14 = a2[5];
        a1[4] = a2[4];
        a1[5] = v14;
        v15 = a2[7];
        a1[6] = a2[6];
        a1[7] = v15;
        *(a1 + 16) = *(a2 + 16);
        v16 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
        v17 = type metadata accessor for UnknownStorage();
        v22 = *(*(v17 - 8) + 16);

        v22(a1 + v16, a2 + v16, v17);
      }

      else
      {
      }

      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(a1, 0, 1, started);
    }

    v18 = *(a3 + 20);
    v19 = *(a3 + 24);
    *(a1 + v18) = *(a2 + v18);
    v20 = type metadata accessor for UnknownStorage();
    (*(*(v20 - 8) + 16))(a1 + v19, a2 + v19, v20);
  }

  return a1;
}